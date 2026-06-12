'use server';

import { createClient as createSupabaseClient } from '@supabase/supabase-js';
import { revalidatePath } from 'next/cache';
import { createClient as createServerClient } from '@/lib/supabase/server';
import type { Database } from '@/lib/supabase/types';

function getAdminClient() {
  return createSupabaseClient<Database>(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY!,
    { auth: { autoRefreshToken: false, persistSession: false } }
  );
}

// Les server actions sont des endpoints publics : on vérifie que l'appelant
// est bien un admin avant toute opération en service role.
async function requireAdmin() {
  const supabase = await createServerClient();
  const { data: { user } } = await supabase.auth.getUser();
  if (!user) throw new Error('Non authentifié.');
  const admin = getAdminClient();
  const { data } = await admin.from('admin_users').select('user_id').eq('user_id', user.id).maybeSingle();
  if (!data) throw new Error('Accès réservé aux administrateurs.');
  return admin;
}

const LICENCES_PATH = '/celestial-admin-rtabt/licences';

/* ----------------------------- Applications ----------------------------- */

export async function createApplication(nom: string, slug: string, description: string, hasLicenses: boolean) {
  const admin = await requireAdmin();
  const cleanSlug = slug.trim().toLowerCase().replace(/[^a-z0-9-]+/g, '-').replace(/^-+|-+$/g, '');
  if (!nom.trim() || !cleanSlug) throw new Error('Nom et slug requis.');
  const { error } = await admin.from('applications').insert({
    nom: nom.trim(),
    slug: cleanSlug,
    description: description.trim() || null,
    has_licenses: hasLicenses,
  });
  if (error) throw new Error(error.message);
  revalidatePath(LICENCES_PATH);
}

export async function updateApplication(
  id: string,
  fields: { nom?: string; description?: string | null; actif?: boolean }
) {
  const admin = await requireAdmin();
  const { error } = await admin.from('applications').update(fields).eq('id', id);
  if (error) throw new Error(error.message);
  revalidatePath(LICENCES_PATH);
}

export async function deleteApplication(id: string) {
  const admin = await requireAdmin();
  const { data: app } = await admin.from('applications').select('apk_path').eq('id', id).single();
  if (app?.apk_path) await admin.storage.from('apks').remove([app.apk_path]);
  const { error } = await admin.from('applications').delete().eq('id', id);
  if (error) throw new Error(error.message);
  revalidatePath(LICENCES_PATH);
}

/* ------------------------------- Licences ------------------------------- */

export async function createLicenseAccount(
  applicationId: string,
  email: string,
  password: string,
  clientName: string,
  company: string,
  note: string
) {
  const admin = await requireAdmin();
  const cleanEmail = email.trim().toLowerCase();
  if (!cleanEmail || password.length < 8) {
    throw new Error('Email requis et mot de passe d\'au moins 8 caractères.');
  }

  // Crée le compte ; s'il existe déjà, on le retrouve et on lui ajoute la licence.
  let userId: string | undefined;
  const { data: created, error: createError } = await admin.auth.admin.createUser({
    email: cleanEmail,
    password,
    email_confirm: true,
  });
  if (created?.user) {
    userId = created.user.id;
  } else {
    const { data: usersPage } = await admin.auth.admin.listUsers({ perPage: 1000 });
    userId = usersPage?.users.find((u) => u.email === cleanEmail)?.id;
    if (!userId) throw new Error(createError?.message ?? 'Impossible de créer le compte.');
  }

  const { error } = await admin.from('licenses').insert({
    application_id: applicationId,
    user_id: userId,
    email: cleanEmail,
    client_name: clientName.trim() || null,
    company: company.trim() || null,
    note: note.trim() || null,
  });
  if (error) {
    throw new Error(
      error.code === '23505' ? 'Ce compte a déjà une licence pour cette application.' : error.message
    );
  }
  revalidatePath(LICENCES_PATH);
}

export async function disconnectDevice(licenseId: string) {
  const admin = await requireAdmin();
  const { error } = await admin.from('licenses').update({
    device_id: null,
    device_model: null,
    device_os: null,
    locked: false,
    status: 'revoked',
  }).eq('id', licenseId);
  if (error) throw new Error(error.message);
  revalidatePath(LICENCES_PATH);
}

export async function setLicenseStatus(licenseId: string, status: 'active' | 'revoked') {
  const admin = await requireAdmin();
  const { error } = await admin.from('licenses').update({ status }).eq('id', licenseId);
  if (error) throw new Error(error.message);
  revalidatePath(LICENCES_PATH);
}

export async function deleteLicense(licenseId: string) {
  const admin = await requireAdmin();

  // Récupère le user_id avant suppression
  const { data: license } = await admin
    .from('licenses')
    .select('user_id')
    .eq('id', licenseId)
    .single();

  const { error } = await admin.from('licenses').delete().eq('id', licenseId);
  if (error) throw new Error(error.message);

  // Supprime le compte auth seulement si c'est sa seule licence
  if (license?.user_id) {
    const { count } = await admin
      .from('licenses')
      .select('id', { count: 'exact', head: true })
      .eq('user_id', license.user_id);
    if ((count ?? 0) === 0) {
      await admin.auth.admin.deleteUser(license.user_id);
    }
  }

  revalidatePath(LICENCES_PATH);
}

export async function resetLicensePassword(userId: string, newPassword: string) {
  if (newPassword.length < 8) throw new Error('Mot de passe d\'au moins 8 caractères.');
  const admin = await requireAdmin();
  const { error } = await admin.auth.admin.updateUserById(userId, { password: newPassword });
  if (error) throw new Error(error.message);
}

/* ------------------------------ Upload APK ------------------------------ */

// L'upload se fait directement navigateur → storage via une URL signée
// (pas de limite de taille des server actions). Le client appelle ensuite
// finalizeApkUpload pour enregistrer le fichier sur l'application.
export async function createApkUploadUrl(applicationId: string, fileName: string) {
  const admin = await requireAdmin();
  const safeName = fileName.replace(/[^a-zA-Z0-9._-]+/g, '_');
  const path = `${applicationId}/${Date.now()}-${safeName}`;
  const { data, error } = await admin.storage.from('apks').createSignedUploadUrl(path);
  if (error) throw new Error(error.message);
  return { path, token: data.token };
}

export async function finalizeApkUpload(
  applicationId: string,
  path: string,
  version: string,
  size: number
) {
  const admin = await requireAdmin();
  const { data: app } = await admin
    .from('applications')
    .select('apk_path')
    .eq('id', applicationId)
    .single();
  const { error } = await admin
    .from('applications')
    .update({ apk_path: path, apk_version: version.trim() || null, apk_size: size })
    .eq('id', applicationId);
  if (error) throw new Error(error.message);
  // Remove the previous APK only after the new one is in place.
  if (app?.apk_path && app.apk_path !== path) {
    await admin.storage.from('apks').remove([app.apk_path]);
  }
  revalidatePath(LICENCES_PATH);
  revalidatePath('/offres');
}

export async function removeApk(applicationId: string) {
  const admin = await requireAdmin();
  const { data: app } = await admin
    .from('applications')
    .select('apk_path')
    .eq('id', applicationId)
    .single();
  if (app?.apk_path) await admin.storage.from('apks').remove([app.apk_path]);
  const { error } = await admin
    .from('applications')
    .update({ apk_path: null, apk_version: null, apk_size: null })
    .eq('id', applicationId);
  if (error) throw new Error(error.message);
  revalidatePath(LICENCES_PATH);
  revalidatePath('/offres');
}
