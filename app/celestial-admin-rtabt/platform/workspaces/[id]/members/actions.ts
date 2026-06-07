'use server';

import { createClient as createSupabaseAdmin } from '@supabase/supabase-js';
import type { Database } from '@/lib/supabase/types';

function getAdminClient() {
  return createSupabaseAdmin<Database>(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY!,
    { auth: { autoRefreshToken: false, persistSession: false } }
  );
}

export async function addMember(workspaceId: string, email: string, clerkUserId: string, role: 'owner' | 'viewer') {
  const supabase = getAdminClient();
  const { error } = await supabase.from('platform_members').insert({
    workspace_id: workspaceId,
    clerk_user_id: clerkUserId,
    email,
    role,
  });
  if (error) throw new Error(error.message);
}

export async function removeMember(workspaceId: string, clerkUserId: string) {
  const supabase = getAdminClient();
  const { error } = await supabase
    .from('platform_members')
    .delete()
    .eq('workspace_id', workspaceId)
    .eq('clerk_user_id', clerkUserId);
  if (error) throw new Error(error.message);
}
