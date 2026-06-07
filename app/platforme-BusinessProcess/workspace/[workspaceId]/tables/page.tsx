import Link from 'next/link';
import { createPlatformClient } from '@/lib/supabase/platform-server';

export default async function TablesPage({
  params,
}: {
  params: Promise<{ workspaceId: string }>;
}) {
  const { workspaceId } = await params;
  const supabase = await createPlatformClient();

  const { data: access } = await supabase
    .from('workspace_table_access')
    .select('table_id, can_export')
    .eq('workspace_id', workspaceId);

  const tableIds = (access ?? []).map((a) => a.table_id);
  const exportMap: Record<string, boolean> = {};
  (access ?? []).forEach((a) => { exportMap[a.table_id] = a.can_export; });

  type TableInfo = { id: string; name: string; label: string; description: string | null; can_export: boolean };
  let tables: TableInfo[] = [];
  if (tableIds.length > 0) {
    const { data: defs } = await supabase
      .from('erp_table_definitions')
      .select('id, name, label, description')
      .in('id', tableIds);
    tables = (defs ?? []).map((d) => ({ ...d, can_export: exportMap[d.id] ?? false }));
  }

  const counts: Record<string, number> = {};
  await Promise.all(
    tables.map(async (t) => {
      const { count } = await supabase
        .from('erp_data')
        .select('*', { count: 'exact', head: true })
        .eq('workspace_id', workspaceId)
        .eq('table_name', t.name);
      counts[t.name] = count ?? 0;
    })
  );

  return (
    <main style={{ maxWidth: 1100, margin: '0 auto', padding: '3rem 1.5rem' }}>
      <h1 style={{ color: 'var(--text-primary)', fontSize: '1.5rem', fontWeight: 700, marginBottom: '0.5rem' }}>
        Tables de données
      </h1>
      <p style={{ color: 'var(--text-muted)', marginBottom: '2rem' }}>
        Données ERP synchronisées depuis votre installation locale.
      </p>

      {tables.length === 0 ? (
        <div style={{ background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)', padding: '2rem', textAlign: 'center', color: 'var(--text-muted)' }}>
          Aucune table accessible. Contactez l'équipe Celestial.
        </div>
      ) : (
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(260px, 1fr))', gap: '1rem' }}>
          {tables.map((t) => (
            <Link
              key={t.id}
              href={`/platform/workspace/${workspaceId}/tables/${t.name}`}
              style={{ display: 'block', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)', padding: '1.25rem 1.5rem', textDecoration: 'none' }}
            >
              <div style={{ color: 'var(--text-primary)', fontWeight: 600, fontSize: '1rem' }}>{t.label}</div>
              {t.description && (
                <div style={{ color: 'var(--text-muted)', fontSize: '0.8rem', marginTop: '0.25rem' }}>{t.description}</div>
              )}
              <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginTop: '1rem' }}>
                <span style={{ color: 'var(--gold)', fontSize: '0.85rem', fontWeight: 600 }}>
                  {(counts[t.name] ?? 0).toLocaleString('fr')} enreg.
                </span>
                {t.can_export && (
                  <span style={{ color: 'var(--text-faint)', fontSize: '0.75rem' }}>Export activé</span>
                )}
              </div>
            </Link>
          ))}
        </div>
      )}
    </main>
  );
}
