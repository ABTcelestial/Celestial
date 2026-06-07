import { auth } from '@clerk/nextjs/server';
import { redirect } from 'next/navigation';
import Link from 'next/link';
import { createPlatformClient } from '@/lib/supabase/platform-server';

export default async function PlatformDashboardPage() {
  const { userId } = await auth();
  if (!userId) redirect('/platforme-BusinessProcess/login');

  const supabase = await createPlatformClient();
  const { data: memberships } = await supabase
    .from('platform_members')
    .select('role, workspace_id')
    .eq('clerk_user_id', userId);

  const wsIds = (memberships ?? []).map((m) => m.workspace_id);
  const roles: Record<string, string> = {};
  (memberships ?? []).forEach((m) => { roles[m.workspace_id] = m.role; });

  type Workspace = { id: string; name: string; slug: string; active: boolean };
  let workspaces: (Workspace & { role: string })[] = [];
  if (wsIds.length > 0) {
    const { data: wsList } = await supabase
      .from('platform_workspaces')
      .select('id, name, slug, active')
      .in('id', wsIds);
    workspaces = (wsList ?? []).map((ws) => ({ ...ws, role: roles[ws.id] ?? 'viewer' }));
  }

  if (workspaces.length === 1) {
    redirect(`/platform/workspace/${workspaces[0].id}`);
  }

  return (
    <main style={{ maxWidth: 800, margin: '0 auto', padding: '3rem 1.5rem' }}>
      <h1 style={{ color: 'var(--text-primary)', fontSize: '1.5rem', fontWeight: 700, marginBottom: '0.5rem' }}>
        Vos espaces de travail
      </h1>
      <p style={{ color: 'var(--text-muted)', marginBottom: '2rem' }}>
        Sélectionnez un workspace pour accéder à vos données ERP.
      </p>

      {workspaces.length === 0 ? (
        <div style={{
          background: 'var(--glass)', border: '1px solid var(--glass-border)',
          borderRadius: 'var(--r-sm)', padding: '2rem', textAlign: 'center', color: 'var(--text-muted)',
        }}>
          Aucun workspace associé à votre compte.<br />
          Contactez l'équipe Celestial pour obtenir l'accès.
        </div>
      ) : (
        <div style={{ display: 'grid', gap: '1rem' }}>
          {workspaces.map((ws) => (
            <Link
              key={ws.id}
              href={`/platform/workspace/${ws.id}`}
              style={{
                display: 'block', background: 'var(--glass)', border: '1px solid var(--glass-border)',
                borderRadius: 'var(--r-sm)', padding: '1.25rem 1.5rem', textDecoration: 'none',
              }}
            >
              <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
                <div>
                  <div style={{ color: 'var(--text-primary)', fontWeight: 600, fontSize: '1rem' }}>{ws.name}</div>
                  <div style={{ color: 'var(--text-muted)', fontSize: '0.8rem', marginTop: '0.2rem' }}>
                    Rôle : {ws.role === 'owner' ? 'Propriétaire' : 'Lecteur'}
                  </div>
                </div>
                <div style={{ width: 8, height: 8, borderRadius: '50%', background: ws.active ? 'var(--gold)' : 'var(--text-faint)' }} />
              </div>
            </Link>
          ))}
        </div>
      )}
    </main>
  );
}
