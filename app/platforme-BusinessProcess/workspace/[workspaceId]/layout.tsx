import { createClient } from '@/lib/supabase/server';
import { redirect, notFound } from 'next/navigation';
import { WorkspaceProvider } from '@/components/platform/WorkspaceProvider';
import type { ErpColumnDef } from '@/lib/supabase/types';

export const dynamic = 'force-dynamic';

export default async function WorkspaceLayout({
  children,
  params,
}: {
  children: React.ReactNode;
  params: Promise<{ workspaceId: string }>;
}) {
  const supabase = await createClient();
  const { data: { user } } = await supabase.auth.getUser();
  if (!user) redirect('/platforme-BusinessProcess/login');

  const { workspaceId } = await params;

  const { data: membership } = await supabase
    .from('platform_members')
    .select('role, workspace_id')
    .eq('workspace_id', workspaceId)
    .eq('user_id', user.id)
    .single();

  if (!membership) notFound();

  const { data: wsData } = await supabase
    .from('platform_workspaces')
    .select('id, name, slug, active')
    .eq('id', workspaceId)
    .single();

  if (!wsData) notFound();

  const { data: tableAccess } = await supabase
    .from('workspace_table_access')
    .select('table_id, can_export')
    .eq('workspace_id', workspaceId);

  const tableIds = (tableAccess ?? []).map((a) => a.table_id);
  const exportMap: Record<string, boolean> = {};
  (tableAccess ?? []).forEach((a) => { exportMap[a.table_id] = a.can_export; });

  type TableWithAccess = {
    id: string; name: string; label: string;
    columns: ErpColumnDef[]; description: string | null; can_export: boolean;
  };
  let tables: TableWithAccess[] = [];
  if (tableIds.length > 0) {
    const { data: defs } = await supabase
      .from('erp_table_definitions')
      .select('id, name, label, columns, description')
      .in('id', tableIds);
    tables = (defs ?? []).map((d) => ({
      ...d,
      columns: d.columns as ErpColumnDef[],
      can_export: exportMap[d.id] ?? false,
    }));
  }

  return (
    <WorkspaceProvider
      workspace={wsData}
      role={membership.role as 'owner' | 'viewer'}
      tables={tables}
    >
      {children}
    </WorkspaceProvider>
  );
}
