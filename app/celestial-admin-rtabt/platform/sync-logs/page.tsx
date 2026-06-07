import { createClient } from '@/lib/supabase/server';

export const dynamic = 'force-dynamic';

export default async function SyncLogsPage() {
  const supabase = await createClient();

  const { data: logs } = await supabase
    .from('erp_sync_logs')
    .select('id, workspace_id, table_name, records_synced, status, error_message, synced_at')
    .order('synced_at', { ascending: false })
    .limit(100);

  const wsIds = [...new Set((logs ?? []).map((l) => l.workspace_id))];
  const wsNames: Record<string, string> = {};
  if (wsIds.length > 0) {
    const { data: wsList } = await supabase
      .from('platform_workspaces')
      .select('id, name')
      .in('id', wsIds);
    (wsList ?? []).forEach((ws) => { wsNames[ws.id] = ws.name; });
  }

  return (
    <div style={{ maxWidth: 1000, margin: '0 auto', padding: '2.5rem 1.5rem' }}>
      <h1 style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--text-primary)', marginBottom: '1.5rem' }}>
        Logs de synchronisation
      </h1>
      <div style={{ overflowX: 'auto', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)' }}>
        <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '0.85rem' }}>
          <thead>
            <tr style={{ background: 'color-mix(in srgb, var(--glass) 60%, var(--bg-void))' }}>
              {['Workspace', 'Table', 'Enregistrements', 'Statut', 'Erreur', 'Date'].map((h) => (
                <th key={h} style={{ padding: '0.75rem 1rem', textAlign: 'left', color: 'var(--text-secondary)', fontWeight: 600, fontSize: '0.78rem', textTransform: 'uppercase', letterSpacing: '0.04em', borderBottom: '1px solid var(--glass-border)' }}>{h}</th>
              ))}
            </tr>
          </thead>
          <tbody>
            {(logs ?? []).length === 0 ? (
              <tr><td colSpan={6} style={{ padding: '2rem', textAlign: 'center', color: 'var(--text-muted)' }}>Aucun log.</td></tr>
            ) : (
              (logs ?? []).map((log) => (
                <tr key={log.id} style={{ borderBottom: '1px solid var(--hairline)' }}>
                  <td style={{ padding: '0.65rem 1rem', color: 'var(--text-primary)' }}>
                    {wsNames[log.workspace_id] ?? '—'}
                  </td>
                  <td style={{ padding: '0.65rem 1rem', color: 'var(--text-secondary)', fontFamily: 'monospace' }}>{log.table_name}</td>
                  <td style={{ padding: '0.65rem 1rem', color: 'var(--text-secondary)' }}>{log.records_synced ?? '—'}</td>
                  <td style={{ padding: '0.65rem 1rem' }}>
                    <span style={{ color: log.status === 'success' ? 'var(--gold)' : '#f87171', fontWeight: 600 }}>
                      {log.status === 'success' ? 'Succès' : 'Erreur'}
                    </span>
                  </td>
                  <td style={{ padding: '0.65rem 1rem', color: '#f87171', fontSize: '0.8rem', maxWidth: 200, overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }}>
                    {log.error_message ?? '—'}
                  </td>
                  <td style={{ padding: '0.65rem 1rem', color: 'var(--text-muted)', whiteSpace: 'nowrap' }}>
                    {new Date(log.synced_at).toLocaleString('fr-DZ')}
                  </td>
                </tr>
              ))
            )}
          </tbody>
        </table>
      </div>
    </div>
  );
}
