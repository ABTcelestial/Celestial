import { createPlatformClient } from '@/lib/supabase/platform-server';
import { KpiCard } from '@/components/platform/KpiCard';

export default async function WorkspacePage({
  params,
}: {
  params: Promise<{ workspaceId: string }>;
}) {
  const { workspaceId } = await params;
  const supabase = await createPlatformClient();

  const [{ data: syncLogs }, { data: notifications }, { count: unreadCount }] = await Promise.all([
    supabase
      .from('erp_sync_logs')
      .select('table_name, records_synced, status, synced_at')
      .eq('workspace_id', workspaceId)
      .order('synced_at', { ascending: false })
      .limit(5),
    supabase
      .from('platform_notifications')
      .select('id, title, message, read, created_at')
      .eq('workspace_id', workspaceId)
      .order('created_at', { ascending: false })
      .limit(3),
    supabase
      .from('platform_notifications')
      .select('*', { count: 'exact', head: true })
      .eq('workspace_id', workspaceId)
      .eq('read', false),
  ]);

  const lastSync = syncLogs?.[0];
  const totalSynced = syncLogs?.reduce((acc, l) => acc + (l.records_synced ?? 0), 0) ?? 0;

  return (
    <main style={{ maxWidth: 1100, margin: '0 auto', padding: '3rem 1.5rem' }}>
      <h1 style={{ color: 'var(--text-primary)', fontSize: '1.5rem', fontWeight: 700, marginBottom: '2rem' }}>
        Tableau de bord
      </h1>

      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(220px, 1fr))', gap: '1rem', marginBottom: '2.5rem' }}>
        <KpiCard
          label="Dernière synchronisation"
          value={lastSync ? new Date(lastSync.synced_at).toLocaleString('fr-DZ') : '—'}
          sub={lastSync ? (lastSync.status === 'success' ? 'Réussie' : 'Erreur') : 'Aucune sync'}
          accent={lastSync?.status === 'error' ? 'error' : 'gold'}
        />
        <KpiCard
          label="Enregistrements synchronisés"
          value={totalSynced.toLocaleString('fr')}
          sub="Toutes tables confondues"
        />
        <KpiCard
          label="Notifications non lues"
          value={String(unreadCount ?? 0)}
          sub="En attente de lecture"
          accent={unreadCount ? 'gold' : 'default'}
        />
      </div>

      {notifications && notifications.length > 0 && (
        <section>
          <h2 style={{ color: 'var(--text-secondary)', fontSize: '0.9rem', fontWeight: 600, textTransform: 'uppercase', letterSpacing: '0.05em', marginBottom: '1rem' }}>
            Dernières notifications
          </h2>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '0.75rem' }}>
            {notifications.map((n) => (
              <div
                key={n.id}
                style={{
                  background: 'var(--glass)',
                  border: `1px solid ${n.read ? 'var(--glass-border)' : 'var(--gold-soft)'}`,
                  borderRadius: 'var(--r-xs)',
                  padding: '1rem 1.25rem',
                  display: 'flex',
                  gap: '1rem',
                  alignItems: 'flex-start',
                }}
              >
                {!n.read && (
                  <div style={{ width: 8, height: 8, borderRadius: '50%', background: 'var(--gold)', marginTop: 5, flexShrink: 0 }} />
                )}
                <div>
                  <div style={{ color: 'var(--text-primary)', fontWeight: 600, fontSize: '0.9rem' }}>{n.title}</div>
                  <div style={{ color: 'var(--text-muted)', fontSize: '0.85rem', marginTop: '0.2rem' }}>{n.message}</div>
                </div>
              </div>
            ))}
          </div>
        </section>
      )}
    </main>
  );
}
