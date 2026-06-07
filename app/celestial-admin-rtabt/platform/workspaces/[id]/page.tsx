import Link from 'next/link';
import { createClient } from '@/lib/supabase/server';
import { notFound } from 'next/navigation';

export const dynamic = 'force-dynamic';

export default async function WorkspaceDetailPage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const supabase = await createClient();

  const { data: ws } = await supabase
    .from('platform_workspaces')
    .select('*')
    .eq('id', id)
    .single();

  if (!ws) notFound();

  const { data: members } = await supabase
    .from('platform_members')
    .select('email, role, created_at')
    .eq('workspace_id', id);

  const { data: tableAccess } = await supabase
    .from('workspace_table_access')
    .select('table_id, can_export')
    .eq('workspace_id', id);

  const tableIds = (tableAccess ?? []).map((a) => a.table_id);
  const tableLabels: Record<string, string> = {};
  if (tableIds.length > 0) {
    const { data: defs } = await supabase
      .from('erp_table_definitions')
      .select('id, label')
      .in('id', tableIds);
    (defs ?? []).forEach((d) => { tableLabels[d.id] = d.label; });
  }

  return (
    <div style={{ maxWidth: 800, margin: '0 auto', padding: '2.5rem 1.5rem' }}>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '2rem' }}>
        <div>
          <h1 style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--text-primary)' }}>{ws.name}</h1>
          <div style={{ color: 'var(--text-muted)', fontSize: '0.85rem', marginTop: '0.2rem' }}>
            Slug: <code style={{ fontFamily: 'monospace' }}>{ws.slug}</code>
            {' · '}
            <span style={{ color: ws.active ? 'var(--gold)' : 'var(--text-faint)' }}>{ws.active ? 'Actif' : 'Inactif'}</span>
          </div>
        </div>
        <div style={{ display: 'flex', gap: '0.5rem' }}>
          <Link href={`/celestial-admin-rtabt/platform/workspaces/${id}/members`} style={{ padding: '0.5rem 1rem', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', color: 'var(--text-secondary)', textDecoration: 'none', fontSize: '0.85rem' }}>
            Membres
          </Link>
          <Link href={`/celestial-admin-rtabt/platform/workspaces/${id}/tables`} style={{ padding: '0.5rem 1rem', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', color: 'var(--text-secondary)', textDecoration: 'none', fontSize: '0.85rem' }}>
            Tables
          </Link>
        </div>
      </div>

      <section style={{ marginBottom: '2rem' }}>
        <h2 style={{ color: 'var(--text-secondary)', fontSize: '0.8rem', fontWeight: 600, textTransform: 'uppercase', letterSpacing: '0.05em', marginBottom: '0.75rem' }}>
          Clé de licence (sync-agent)
        </h2>
        <div style={{ fontFamily: 'monospace', background: 'color-mix(in srgb, var(--bg-void) 70%, transparent)', border: '1px solid var(--gold-soft)', borderRadius: 'var(--r-xs)', padding: '0.75rem 1rem', color: 'var(--gold)', wordBreak: 'break-all', fontSize: '0.85rem' }}>
          {ws.licence_key}
        </div>
      </section>

      <section style={{ marginBottom: '2rem' }}>
        <h2 style={{ color: 'var(--text-secondary)', fontSize: '0.8rem', fontWeight: 600, textTransform: 'uppercase', letterSpacing: '0.05em', marginBottom: '0.75rem' }}>
          Membres ({(members ?? []).length})
        </h2>
        <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
          {(members ?? []).map((m) => (
            <div key={m.email} style={{ display: 'flex', justifyContent: 'space-between', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', padding: '0.6rem 1rem' }}>
              <span style={{ color: 'var(--text-primary)', fontSize: '0.85rem' }}>{m.email}</span>
              <span style={{ color: 'var(--text-muted)', fontSize: '0.8rem' }}>{m.role === 'owner' ? 'Propriétaire' : 'Lecteur'}</span>
            </div>
          ))}
        </div>
      </section>

      <section>
        <h2 style={{ color: 'var(--text-secondary)', fontSize: '0.8rem', fontWeight: 600, textTransform: 'uppercase', letterSpacing: '0.05em', marginBottom: '0.75rem' }}>
          Tables accessibles ({(tableAccess ?? []).length})
        </h2>
        <div style={{ display: 'flex', flexWrap: 'wrap', gap: '0.5rem' }}>
          {(tableAccess ?? []).map((t) => (
            <span key={t.table_id} style={{ padding: '0.3rem 0.75rem', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', color: 'var(--text-secondary)', fontSize: '0.8rem' }}>
              {tableLabels[t.table_id] ?? t.table_id}
              {t.can_export && ' ↓'}
            </span>
          ))}
        </div>
      </section>
    </div>
  );
}
