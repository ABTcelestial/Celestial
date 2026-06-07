import Link from 'next/link';
import { createClient } from '@/lib/supabase/server';

export const dynamic = 'force-dynamic';

export default async function PlatformAdminDashboard() {
  const supabase = await createClient();

  const { count: workspacesCount } = await supabase
    .from('platform_workspaces')
    .select('*', { count: 'exact', head: true });

  const { count: membersCount } = await supabase
    .from('platform_members')
    .select('*', { count: 'exact', head: true });

  const { data: recentLogsRaw } = await supabase
    .from('erp_sync_logs')
    .select('workspace_id, table_name, status, records_synced, synced_at')
    .order('synced_at', { ascending: false })
    .limit(8);

  const { data: unreadMessagesRaw } = await supabase
    .from('platform_messages')
    .select('workspace_id, content, created_at')
    .eq('sender_type', 'client')
    .order('created_at', { ascending: false })
    .limit(5);

  // Enrich with workspace names
  const wsIds = [...new Set([
    ...(recentLogsRaw ?? []).map((l) => l.workspace_id),
    ...(unreadMessagesRaw ?? []).map((m) => m.workspace_id),
  ])];

  const wsNames: Record<string, string> = {};
  if (wsIds.length > 0) {
    const { data: wsList } = await supabase
      .from('platform_workspaces')
      .select('id, name')
      .in('id', wsIds);
    (wsList ?? []).forEach((ws) => { wsNames[ws.id] = ws.name; });
  }

  const recentLogs = (recentLogsRaw ?? []).map((l) => ({ ...l, wsName: wsNames[l.workspace_id] ?? '—' }));
  const unreadMessages = (unreadMessagesRaw ?? []).map((m) => ({ ...m, wsName: wsNames[m.workspace_id] ?? '—' }));

  return (
    <div style={{ maxWidth: 1100, margin: '0 auto', padding: '2.5rem 1.5rem' }}>
      <h1 style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--text-primary)', marginBottom: '0.5rem' }}>
        Plateforme clients
      </h1>
      <p style={{ color: 'var(--text-muted)', marginBottom: '2rem' }}>
        Gestion des workspaces, tables ERP et accès clients.
      </p>

      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(180px, 1fr))', gap: '1rem', marginBottom: '2.5rem' }}>
        {[
          { label: 'Workspaces', value: workspacesCount ?? 0, href: '/celestial-admin-rtabt/platform/workspaces' },
          { label: 'Membres', value: membersCount ?? 0, href: '/celestial-admin-rtabt/platform/workspaces' },
        ].map((stat) => (
          <Link key={stat.label} href={stat.href} style={{ textDecoration: 'none' }}>
            <div style={{ background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)', padding: '1.25rem 1.5rem' }}>
              <div style={{ color: 'var(--text-muted)', fontSize: '0.8rem', textTransform: 'uppercase', letterSpacing: '0.05em' }}>{stat.label}</div>
              <div style={{ color: 'var(--gold)', fontSize: '2rem', fontWeight: 700, marginTop: '0.25rem' }}>{stat.value}</div>
            </div>
          </Link>
        ))}
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '1.5rem' }}>
        <section>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1rem' }}>
            <h2 style={{ color: 'var(--text-secondary)', fontSize: '0.85rem', fontWeight: 600, textTransform: 'uppercase', letterSpacing: '0.05em' }}>
              Dernières syncs
            </h2>
            <Link href="/celestial-admin-rtabt/platform/sync-logs" style={{ color: 'var(--gold)', fontSize: '0.8rem', textDecoration: 'none' }}>Voir tout →</Link>
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
            {recentLogs.map((log, i) => (
              <div key={i} style={{ background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', padding: '0.7rem 1rem', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                <span style={{ color: 'var(--text-primary)', fontSize: '0.85rem' }}>
                  {log.wsName} · {log.table_name}
                </span>
                <span style={{ color: log.status === 'success' ? 'var(--gold)' : '#f87171', fontSize: '0.8rem' }}>
                  {log.status === 'success' ? `${log.records_synced ?? 0} enreg.` : 'Erreur'}
                </span>
              </div>
            ))}
            {recentLogs.length === 0 && <div style={{ color: 'var(--text-muted)', fontSize: '0.85rem' }}>Aucune synchronisation.</div>}
          </div>
        </section>

        <section>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1rem' }}>
            <h2 style={{ color: 'var(--text-secondary)', fontSize: '0.85rem', fontWeight: 600, textTransform: 'uppercase', letterSpacing: '0.05em' }}>
              Messages récents
            </h2>
            <Link href="/celestial-admin-rtabt/platform/messages" style={{ color: 'var(--gold)', fontSize: '0.8rem', textDecoration: 'none' }}>Voir tout →</Link>
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
            {unreadMessages.map((msg, i) => (
              <div key={i} style={{ background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', padding: '0.7rem 1rem' }}>
                <div style={{ color: 'var(--text-muted)', fontSize: '0.75rem', marginBottom: '0.2rem' }}>{msg.wsName}</div>
                <div style={{ color: 'var(--text-primary)', fontSize: '0.85rem', overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }}>
                  {msg.content}
                </div>
              </div>
            ))}
            {unreadMessages.length === 0 && <div style={{ color: 'var(--text-muted)', fontSize: '0.85rem' }}>Aucun message.</div>}
          </div>
        </section>
      </div>

      <div style={{ display: 'flex', gap: '1rem', marginTop: '2rem', flexWrap: 'wrap' }}>
        {[
          { href: '/celestial-admin-rtabt/platform/workspaces/new', label: '+ Nouveau workspace' },
          { href: '/celestial-admin-rtabt/platform/table-definitions/new', label: '+ Définir une table ERP' },
          { href: '/celestial-admin-rtabt/platform/notifications/new', label: '+ Envoyer une notification' },
        ].map((btn) => (
          <Link
            key={btn.href}
            href={btn.href}
            style={{
              padding: '0.6rem 1.1rem',
              background: 'var(--glass)',
              border: '1px solid var(--glass-border)',
              borderRadius: 'var(--r-xs)',
              color: 'var(--text-secondary)',
              textDecoration: 'none',
              fontSize: '0.875rem',
            }}
          >
            {btn.label}
          </Link>
        ))}
      </div>
    </div>
  );
}
