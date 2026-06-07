import { createPlatformClient } from '@/lib/supabase/platform-server';
import { notFound } from 'next/navigation';
import { DataTable } from '@/components/platform/DataTable';
import { ExportButton } from '@/components/platform/ExportButton';
import type { ErpColumnDef } from '@/lib/supabase/types';

const PAGE_SIZE = 50;

export default async function TableViewPage({
  params,
  searchParams,
}: {
  params: Promise<{ workspaceId: string; tableName: string }>;
  searchParams: Promise<{ page?: string; q?: string }>;
}) {
  const { workspaceId, tableName } = await params;
  const { page: pageParam, q } = await searchParams;
  const page = Math.max(1, parseInt(pageParam ?? '1'));

  const supabase = await createPlatformClient();

  const { data: tableDef } = await supabase
    .from('erp_table_definitions')
    .select('id, label, columns, description')
    .eq('name', tableName)
    .single();

  if (!tableDef) notFound();

  const { data: access } = await supabase
    .from('workspace_table_access')
    .select('can_export')
    .eq('workspace_id', workspaceId)
    .eq('table_id', tableDef.id)
    .single();

  if (!access) notFound();

  const from = (page - 1) * PAGE_SIZE;
  const to = from + PAGE_SIZE - 1;

  let query = supabase
    .from('erp_data')
    .select('record_id, data, synced_at', { count: 'exact' })
    .eq('workspace_id', workspaceId)
    .eq('table_name', tableName)
    .range(from, to);

  const { data: rows, count } = await query;

  const totalPages = Math.ceil((count ?? 0) / PAGE_SIZE);
  const columns = (tableDef.columns ?? []) as ErpColumnDef[];
  const tableRows = (rows ?? []).map((r) => r.data as Record<string, unknown>);

  return (
    <main style={{ maxWidth: 1200, margin: '0 auto', padding: '3rem 1.5rem' }}>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '1.5rem', flexWrap: 'wrap', gap: '1rem' }}>
        <div>
          <h1 style={{ color: 'var(--text-primary)', fontSize: '1.5rem', fontWeight: 700 }}>{tableDef.label}</h1>
          {tableDef.description && (
            <p style={{ color: 'var(--text-muted)', fontSize: '0.85rem', marginTop: '0.25rem' }}>{tableDef.description}</p>
          )}
        </div>
        {access.can_export && tableRows.length > 0 && (
          <ExportButton rows={tableRows} columns={columns} filename={tableName} />
        )}
      </div>

      <div style={{ color: 'var(--text-muted)', fontSize: '0.85rem', marginBottom: '1rem' }}>
        {(count ?? 0).toLocaleString('fr')} enregistrement{(count ?? 0) > 1 ? 's' : ''}
        {' · '} Page {page} / {totalPages || 1}
      </div>

      <DataTable columns={columns} rows={tableRows} />

      {totalPages > 1 && (
        <div style={{ display: 'flex', gap: '0.5rem', marginTop: '1.5rem', justifyContent: 'center' }}>
          {page > 1 && (
            <a
              href={`?page=${page - 1}`}
              style={{ padding: '0.4rem 0.9rem', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', color: 'var(--text-secondary)', textDecoration: 'none', fontSize: '0.85rem' }}
            >
              ← Précédent
            </a>
          )}
          {page < totalPages && (
            <a
              href={`?page=${page + 1}`}
              style={{ padding: '0.4rem 0.9rem', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', color: 'var(--text-secondary)', textDecoration: 'none', fontSize: '0.85rem' }}
            >
              Suivant →
            </a>
          )}
        </div>
      )}
    </main>
  );
}
