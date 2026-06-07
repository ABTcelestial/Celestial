import { createClient } from '@/lib/supabase/server';
import { redirect } from 'next/navigation';

export default async function WorkspaceSettingsPage({
  params,
}: {
  params: Promise<{ workspaceId: string }>;
}) {
  const supabase = await createClient();
  const { data: { user } } = await supabase.auth.getUser();
  if (!user) redirect('/platforme-BusinessProcess/login');

  const { workspaceId } = await params;

  const { data: members } = await supabase
    .from('platform_members')
    .select('email, role, created_at')
    .eq('workspace_id', workspaceId)
    .order('created_at');

  const { data: syncLogs } = await supabase
    .from('erp_sync_logs')
    .select('table_name, records_synced, status, error_message, synced_at')
    .eq('workspace_id', workspaceId)
    .order('synced_at', { ascending: false })
    .limit(20);

  return (
    <main style={{ maxWidth: 800, margin: '0 auto', padding: '3rem 1.5rem' }}>
      <h1 style={{ color: 'var(--text-primary)', fontSize: '1.5rem', fontWeight: 700, marginBottom: '2rem' }}>
        Paramètres du workspace
      </h1>

      <section style={{ marginBottom: '2.5rem' }}>
        <h2 style={{ color: 'var(--text-secondary)', fontSize: '0.85rem', fontWeight: 600, textTransform: 'uppercase', letterSpacing: '0.05em', marginBottom: '1rem' }}>
          Membres
        </h2>
        <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
          {(members ?? []).map((m) => (
            <div
              key={m.email}
              style={{
                display: 'flex', justifyContent: 'space-between', alignItems: 'center',
                background: 'var(--glass)', border: '1px solid var(--glass-border)',
                borderRadius: 'var(--r-xs)', padding: '0.75rem 1rem',
              }}
            >
              <span style={{ color: 'var(--text-primary)', fontSize: '0.9rem' }}>{m.email}</span>
              <span style={{ color: 'var(--text-muted)', fontSize: '0.8rem' }}>
                {m.role === 'owner' ? 'Propriétaire' : 'Lecteur'}
              </span>
            </div>
          ))}
        </div>
      </section>

      <section>
        <h2 style={{ color: 'var(--text-secondary)', fontSize: '0.85rem', fontWeight: 600, textTransform: 'uppercase', letterSpacing: '0.05em', marginBottom: '1rem' }}>
          Historique des synchronisations
        </h2>
        <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
          {(syncLogs ?? []).length === 0 ? (
            <div style={{ color: 'var(--text-muted)', fontSize: '0.85rem' }}>Aucune synchronisation enregistrée.</div>
          ) : (
            (syncLogs ?? []).map((log, i) => (
              <div
                key={i}
                style={{
                  display: 'grid', gridTemplateColumns: '1fr auto auto',
                  gap: '1rem', alignItems: 'center',
                  background: 'var(--glass)', border: '1px solid var(--glass-border)',
                  borderRadius: 'var(--r-xs)', padding: '0.75rem 1rem',
                }}
              >
                <div>
                  <span style={{ color: 'var(--text-primary)', fontSize: '0.85rem', fontWeight: 500 }}>{log.table_name}</span>
                  {log.error_message && (
                    <div style={{ color: '#f87171', fontSize: '0.75rem', marginTop: '0.1rem' }}>{log.error_message}</div>
                  )}
                </div>
                <span style={{ color: log.status === 'success' ? 'var(--gold)' : '#f87171', fontSize: '0.8rem' }}>
                  {log.status === 'success' ? `${log.records_synced ?? 0} enreg.` : 'Erreur'}
                </span>
                <span style={{ color: 'var(--text-faint)', fontSize: '0.75rem' }}>
                  {new Date(log.synced_at).toLocaleString('fr-DZ')}
                </span>
              </div>
            ))
          )}
        </div>
      </section>
    </main>
  );
}
