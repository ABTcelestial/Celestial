-- ============================================================
-- Migration : Licences & Applications (2026-06-12)
--
-- 1. admin_users + is_admin()  → sépare enfin les comptes admin
--    des comptes clients (plateforme + applications licenciées)
-- 2. applications              → les apps Celestial (Chantiers, Food…)
-- 3. licenses                  → un compte auth = une licence par app
-- 4. Bucket storage "apks"     → APK téléchargeables publiquement
-- 5. Resserrage des policies existantes : les écritures CMS ne sont
--    plus ouvertes à tout utilisateur connecté, mais aux admins seuls
--
-- ⚠️ IMPORTANT : la dernière section ajoute votre compte admin dans
-- admin_users. Vérifiez l'email avant d'exécuter, sinon vous perdrez
-- l'accès en écriture au CMS.
-- ============================================================

-- ---------- 1. Admins ----------
create table if not exists admin_users (
  user_id    uuid primary key references auth.users(id) on delete cascade,
  created_at timestamptz not null default now()
);

alter table admin_users enable row level security;

-- Chacun peut vérifier s'il est admin (utilisé par le proxy du site)
drop policy if exists "admin_users_read_own" on admin_users;
create policy "admin_users_read_own" on admin_users
  for select to authenticated using (user_id = auth.uid());

-- security definer : utilisable dans les policies des autres tables
create or replace function is_admin() returns boolean
language sql stable security definer set search_path = public as
$$ select exists (select 1 from admin_users where user_id = auth.uid()) $$;

-- ---------- 2. Applications ----------
create table if not exists applications (
  id          uuid primary key default gen_random_uuid(),
  nom         text not null,
  slug        text unique not null,
  description text,
  apk_path    text,
  apk_version text,
  apk_size    bigint,
  actif       boolean not null default true,
  created_at  timestamptz not null default now()
);

alter table applications enable row level security;

drop policy if exists "admin_all_applications" on applications;
create policy "admin_all_applications" on applications
  for all to authenticated using (is_admin()) with check (is_admin());

-- Le site public (téléchargement APK) et les apps mobiles (vérif licence)
drop policy if exists "anon_read_applications" on applications;
create policy "anon_read_applications" on applications
  for select to anon using (actif = true);

drop policy if exists "auth_read_applications" on applications;
create policy "auth_read_applications" on applications
  for select to authenticated using (actif = true);

-- Lien produit (page Offres) → application (téléchargement APK)
alter table produits add column if not exists
  application_id uuid references applications(id) on delete set null;

-- ---------- 3. Licences ----------
create table if not exists licenses (
  id             uuid primary key default gen_random_uuid(),
  application_id uuid not null references applications(id) on delete cascade,
  user_id        uuid not null references auth.users(id) on delete cascade,
  email          text not null,
  client_name    text,
  note           text,
  status         text not null default 'active' check (status in ('active', 'revoked')),
  created_at     timestamptz not null default now(),
  unique (application_id, user_id)
);

alter table licenses enable row level security;

drop policy if exists "admin_all_licenses" on licenses;
create policy "admin_all_licenses" on licenses
  for all to authenticated using (is_admin()) with check (is_admin());

-- Une app mobile connectée lit sa propre licence (jamais celle des autres)
drop policy if exists "licenses_read_own" on licenses;
create policy "licenses_read_own" on licenses
  for select to authenticated using (user_id = auth.uid());

-- ---------- 4. Bucket APKs (lecture publique, upload via URLs signées) ----------
insert into storage.buckets (id, name, public)
values ('apks', 'apks', true)
on conflict (id) do nothing;

drop policy if exists "public_read_apks" on storage.objects;
create policy "public_read_apks" on storage.objects
  for select using (bucket_id = 'apks');
-- Pas de policy d'écriture : les uploads passent par des URLs signées
-- créées côté serveur (service role) dans l'admin.

-- ---------- 5. Resserrage des policies CMS existantes ----------
-- Avant : "for all to authenticated using (true)" = n'importe quel compte
-- connecté (client plateforme, client app mobile) pouvait écrire.
-- Après : admins seulement. Les policies anon_read_* restent inchangées.

-- Tables CMS (les deux générations de noms sont couvertes)
drop policy if exists "admins_all_devis"        on devis;
drop policy if exists "admin_all_devis"         on devis;
create policy "admin_all_devis" on devis
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admins_all_changelogs"   on changelogs;
drop policy if exists "admin_all_changelogs"    on changelogs;
create policy "admin_all_changelogs" on changelogs
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admins_all_produits"     on produits;
drop policy if exists "admin_all_produits"      on produits;
create policy "admin_all_produits" on produits
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admins_all_contact"      on contact_info;
drop policy if exists "admin_all_contact"       on contact_info;
create policy "admin_all_contact" on contact_info
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admins_all_doc_pages"    on doc_pages;
drop policy if exists "admin_all_doc_pages"     on doc_pages;
create policy "admin_all_doc_pages" on doc_pages
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admins_all_modules"      on modules;
drop policy if exists "admin_all_modules"       on modules;
create policy "admin_all_modules" on modules
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admins_all_produit_modules" on produit_modules;
drop policy if exists "admin_all_produit_modules"  on produit_modules;
create policy "admin_all_produit_modules" on produit_modules
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admins_all_bundles"      on bundles;
drop policy if exists "admin_all_bundles"       on bundles;
create policy "admin_all_bundles" on bundles
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admins_all_suite"        on suite_config;
create policy "admin_all_suite_config" on suite_config
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admins_all_comparatif"   on comparatif_modules;
create policy "admin_all_comparatif_modules" on comparatif_modules
  for all to authenticated using (is_admin()) with check (is_admin());

-- Tables plateforme : l'admin passe par is_admin(), les clients gardent
-- leurs policies platform_* (read_own / insert_own) inchangées.
drop policy if exists "admin_all_platform_workspaces" on platform_workspaces;
create policy "admin_all_platform_workspaces" on platform_workspaces
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admin_all_platform_members" on platform_members;
create policy "admin_all_platform_members" on platform_members
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admin_all_erp_table_definitions" on erp_table_definitions;
create policy "admin_all_erp_table_definitions" on erp_table_definitions
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admin_all_workspace_table_access" on workspace_table_access;
create policy "admin_all_workspace_table_access" on workspace_table_access
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admin_all_erp_data" on erp_data;
create policy "admin_all_erp_data" on erp_data
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admin_all_platform_notifications" on platform_notifications;
create policy "admin_all_platform_notifications" on platform_notifications
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admin_all_platform_messages" on platform_messages;
create policy "admin_all_platform_messages" on platform_messages
  for all to authenticated using (is_admin()) with check (is_admin());

drop policy if exists "admin_all_erp_sync_logs" on erp_sync_logs;
create policy "admin_all_erp_sync_logs" on erp_sync_logs
  for all to authenticated using (is_admin()) with check (is_admin());

-- Storage images : écriture admin seulement (lecture publique inchangée)
drop policy if exists "admin_upload_images" on storage.objects;
create policy "admin_upload_images" on storage.objects
  for insert to authenticated with check (bucket_id = 'images' and is_admin());
drop policy if exists "admin_update_images" on storage.objects;
create policy "admin_update_images" on storage.objects
  for update to authenticated using (bucket_id = 'images' and is_admin());
drop policy if exists "admin_delete_images" on storage.objects;
create policy "admin_delete_images" on storage.objects
  for delete to authenticated using (bucket_id = 'images' and is_admin());

-- ---------- 6. Données de départ ----------
-- ⚠️ Adapter l'email si votre compte admin CMS est différent.
insert into admin_users (user_id)
select id from auth.users where email = 'abtcelestial@gmail.com'
on conflict (user_id) do nothing;

insert into applications (nom, slug, description)
values (
  'Celestial Chantiers',
  'celestial-chantiers',
  'Application Android de gestion BTP : chantiers, stock central, pointage des ouvriers.'
)
on conflict (slug) do nothing;
