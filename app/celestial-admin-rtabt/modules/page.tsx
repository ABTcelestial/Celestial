import { createClient } from '@/lib/supabase/server';
import Link from 'next/link';
import { ModuleDeleteBtn } from '@/components/admin/ModuleDeleteBtn';

export default async function ModulesPage() {
  const supabase = await createClient();
  const { data: modules } = await supabase.from('modules').select('*').order('ordre');
  const list = modules ?? [];

  return (
    <main className="wrap" style={{ paddingTop: 'calc(var(--nav-h) + 40px)', paddingBottom: 80 }}>
      <div className="flex items-center justify-between" style={{ marginBottom: 32 }}>
        <div>
          <h1 style={{ fontSize: 28 }}>Modules</h1>
          <p style={{ color: 'var(--text-muted)', fontSize: 14, marginTop: 4 }}>
            {list.length} module{list.length > 1 ? 's' : ''} — assignables aux logiciels
          </p>
        </div>
        <Link href="/celestial-admin-rtabt/modules/new" className="btn btn-gold">+ Nouveau module</Link>
      </div>

      {list.length === 0 ? (
        <p style={{ color: 'var(--text-muted)', textAlign: 'center', padding: 64 }}>
          Aucun module. <Link href="/celestial-admin-rtabt/modules/new" style={{ color: 'var(--gold)' }}>Créer le premier →</Link>
        </p>
      ) : (
        <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
          {list.map(m => (
            <div key={m.id} className="card" style={{ display: 'grid', gridTemplateColumns: '44px 1fr auto', gap: 16, alignItems: 'center', padding: '16px 20px' }}>
              <div style={{ fontSize: 26, textAlign: 'center' }}>{m.icone}</div>
              <div>
                <div className="flex items-center gap-2">
                  <span style={{ fontWeight: 600, fontSize: 15, color: m.actif ? 'var(--text-primary)' : 'var(--text-muted)' }}>{m.nom}</span>
                  {!m.actif && <span style={{ fontSize: 11, color: 'var(--text-faint)', background: 'rgba(255,255,255,0.06)', padding: '2px 8px', borderRadius: 'var(--r-pill)' }}>Inactif</span>}
                </div>
                {m.description && <p style={{ fontSize: 13, color: 'var(--text-muted)', marginTop: 2 }}>{m.description}</p>}
              </div>
              <div style={{ display: 'flex', alignItems: 'center', gap: 16 }}>
                <span style={{ fontFamily: 'var(--font-display)', fontSize: 18, color: 'var(--gold-bright)', whiteSpace: 'nowrap' }}>
                  {m.prix.toLocaleString('fr-DZ')} DA
                </span>
                <div className="flex gap-2">
                  <Link href={`/celestial-admin-rtabt/modules/${m.id}/edit`} className="btn btn-glass btn-sm">Modifier</Link>
                  <ModuleDeleteBtn id={m.id} />
                </div>
              </div>
            </div>
          ))}
        </div>
      )}
    </main>
  );
}
