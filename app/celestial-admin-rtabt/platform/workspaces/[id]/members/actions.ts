'use server';

import { createClient } from '@supabase/supabase-js';
import type { Database } from '@/lib/supabase/types';

function getAdminClient() {
  return createClient<Database>(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY!,
    { auth: { autoRefreshToken: false, persistSession: false } }
  );
}

export async function addMember(workspaceId: string, email: string, role: 'owner' | 'viewer') {
  const supabase = getAdminClient();

  // Invite user — creates account if new, sends magic link email
  const { data: inviteData, error: inviteError } = await supabase.auth.admin.inviteUserByEmail(email);

  let userId: string | undefined = inviteData?.user?.id;

  // If already registered, find by listing users
  if (!userId) {
    const { data: usersPage } = await supabase.auth.admin.listUsers({ perPage: 1000 });
    const found = usersPage?.users.find((u) => u.email === email);
    if (!found) throw new Error(inviteError?.message ?? 'Utilisateur introuvable.');
    userId = found.id;
  }

  const { error } = await supabase.from('platform_members').upsert(
    { workspace_id: workspaceId, user_id: userId, email, role },
    { onConflict: 'workspace_id,user_id' }
  );
  if (error) throw new Error(error.message);
}

export async function removeMember(workspaceId: string, userId: string) {
  const supabase = getAdminClient();
  const { error } = await supabase
    .from('platform_members')
    .delete()
    .eq('workspace_id', workspaceId)
    .eq('user_id', userId);
  if (error) throw new Error(error.message);
}
