import Link from 'next/link';
import { createClient } from '@/lib/supabase/server';

export const dynamic = 'force-dynamic';

export default async function WorkspacesListPage() {
  const supabase = await createClient();

  const { data: workspaces } = await supabase
    .from('platform_workspaces')
    .select('id, name, slug, active, created_at')
    .order('created_at', { ascending: false });

  const memberCounts: Record<string, number> = {};
  if (workspaces?.length) {
    await Promise.all(
      workspaces.map(async (ws) => {
        const { count } = await supabase
          .from('platform_members')
          .select('*', { count: 'exact', head: true })
          .eq('workspace_id', ws.id);
        memberCounts[ws.id] = count ?? 0;
      })
    );
  }

  return (
    <div style={{ maxWidth: 900, margin: '0 auto', padding: '2.5rem 1.5rem' }}>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.5rem' }}>
        <h1 style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--text-primary)' }}>Workspaces</h1>
        <Link href="/celestial-admin-rtabt/platform/workspaces/new" className="btn btn-primary btn-sm">
          + Nouveau
        </Link>
      </div>

      {(workspaces ?? []).length === 0 ? (
        <div style={{ textAlign: 'center', color: 'var(--text-muted)', padding: '3rem' }}>
          Aucun workspace. <Link href="/celestial-admin-rtabt/platform/workspaces/new" style={{ color: 'var(--gold)' }}>Créer le premier →</Link>
        </div>
      ) : (
        <div style={{ display: 'flex', flexDirection: 'column', gap: '0.75rem' }}>
          {(workspaces ?? []).map((ws) => (
            <div
              key={ws.id}
              style={{
                background: 'var(--glass)', border: '1px solid var(--glass-border)',
                borderRadius: 'var(--r-sm)', padding: '1rem 1.25rem',
                display: 'flex', alignItems: 'center', justifyContent: 'space-between', gap: '1rem',
              }}
            >
              <div style={{ display: 'flex', alignItems: 'center', gap: '1rem' }}>
                <div style={{ width: 8, height: 8, borderRadius: '50%', background: ws.active ? 'var(--gold)' : 'var(--text-faint)', flexShrink: 0 }} />
                <div>
                  <div style={{ color: 'var(--text-primary)', fontWeight: 600 }}>{ws.name}</div>
                  <div style={{ color: 'var(--text-muted)', fontSize: '0.8rem' }}>{ws.slug} · {memberCounts[ws.id] ?? 0} membre(s)</div>
                </div>
              </div>
              <div style={{ display: 'flex', gap: '0.5rem' }}>
                <Link href={`/celestial-admin-rtabt/platform/workspaces/${ws.id}`} style={{ padding: '0.35rem 0.75rem', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', color: 'var(--text-secondary)', textDecoration: 'none', fontSize: '0.8rem' }}>
                  Détail
                </Link>
                <Link href={`/celestial-admin-rtabt/platform/workspaces/${ws.id}/members`} style={{ padding: '0.35rem 0.75rem', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', color: 'var(--text-secondary)', textDecoration: 'none', fontSize: '0.8rem' }}>
                  Membres
                </Link>
                <Link href={`/celestial-admin-rtabt/platform/workspaces/${ws.id}/tables`} style={{ padding: '0.35rem 0.75rem', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', color: 'var(--text-secondary)', textDecoration: 'none', fontSize: '0.8rem' }}>
                  Tables
                </Link>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
