import Link from 'next/link';
import { createClient } from '@/lib/supabase/server';

export const dynamic = 'force-dynamic';

export default async function TableDefinitionsPage() {
  const supabase = await createClient();
  const { data: defs } = await supabase
    .from('erp_table_definitions')
    .select('*')
    .order('label');

  return (
    <div style={{ maxWidth: 900, margin: '0 auto', padding: '2.5rem 1.5rem' }}>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.5rem' }}>
        <h1 style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--text-primary)' }}>Tables ERP</h1>
        <Link href="/celestial-admin-rtabt/platform/table-definitions/new" className="btn btn-primary btn-sm">
          + Nouvelle table
        </Link>
      </div>

      {(defs ?? []).length === 0 ? (
        <div style={{ textAlign: 'center', color: 'var(--text-muted)', padding: '3rem' }}>
          Aucune table définie. Ces tables représentent les données exportées depuis le logiciel Delphi.
        </div>
      ) : (
        <div style={{ display: 'flex', flexDirection: 'column', gap: '0.75rem' }}>
          {(defs ?? []).map((t) => (
            <div key={t.id} style={{ background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)', padding: '1rem 1.25rem', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
              <div>
                <div style={{ color: 'var(--text-primary)', fontWeight: 600 }}>{t.label}</div>
                <div style={{ color: 'var(--text-muted)', fontSize: '0.8rem', fontFamily: 'monospace', marginTop: '0.1rem' }}>{t.name}</div>
                <div style={{ color: 'var(--text-faint)', fontSize: '0.78rem', marginTop: '0.2rem' }}>
                  {Array.isArray(t.columns) ? t.columns.length : 0} colonne(s)
                  {t.description && ` · ${t.description}`}
                </div>
              </div>
              <Link
                href={`/celestial-admin-rtabt/platform/table-definitions/${t.id}/edit`}
                style={{ padding: '0.35rem 0.75rem', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', color: 'var(--text-secondary)', textDecoration: 'none', fontSize: '0.8rem' }}
              >
                Modifier
              </Link>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
