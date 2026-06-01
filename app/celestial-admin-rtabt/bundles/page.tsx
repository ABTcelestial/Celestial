import { createClient } from '@/lib/supabase/server';
import Link from 'next/link';
import { BundleDeleteBtn } from '@/components/admin/BundleDeleteBtn';

export default async function BundlesPage() {
  const supabase = await createClient();
  const { data: bundles } = await supabase.from('bundles').select('*').order('ordre');
  const { data: produits } = await supabase.from('produits').select('id,nom,prix').eq('actif', true).order('ordre');
  const list = bundles ?? [];
  const prods = produits ?? [];

  return (
    <main className="wrap" style={{ paddingTop: 'calc(var(--nav-h) + 40px)', paddingBottom: 80 }}>
      <div className="flex items-center justify-between" style={{ marginBottom: 32 }}>
        <div>
          <h1 style={{ fontSize: 28 }}>Bundles</h1>
          <p style={{ color: 'var(--text-muted)', fontSize: 14, marginTop: 4 }}>Combinaisons de logiciels avec remise</p>
        </div>
        <Link href="/celestial-admin-rtabt/bundles/new" className="btn btn-gold">+ Nouveau bundle</Link>
      </div>

      {list.length === 0 ? (
        <p style={{ color: 'var(--text-muted)', textAlign: 'center', padding: 64 }}>
          Aucun bundle. <Link href="/celestial-admin-rtabt/bundles/new" style={{ color: 'var(--gold)' }}>Créer le premier →</Link>
        </p>
      ) : (
        <div style={{ display: 'flex', flexDirection: 'column', gap: 14 }}>
          {list.map(b => {
            const bundleProds = prods.filter(p => b.produits.includes(p.nom));
            const base = bundleProds.reduce((s, p) => s + p.prix, 0);
            const prix = Math.round(base * (1 - b.remise_pct / 100));
            return (
              <div key={b.id} className="card" style={{ display: 'grid', gridTemplateColumns: '1fr auto', gap: 16, alignItems: 'center' }}>
                <div>
                  <div className="flex items-center gap-2.5 mb-1">
                    <span style={{ fontSize: 16, fontWeight: 600, color: b.actif ? 'var(--text-primary)' : 'var(--text-muted)' }}>{b.nom}</span>
                    {b.badge && <span className="badge badge-gold" style={{ fontSize: 11 }}>{b.badge}</span>}
                    {!b.actif && <span style={{ fontSize: 11, color: 'var(--text-faint)', background: 'rgba(255,255,255,0.06)', padding: '2px 8px', borderRadius: 'var(--r-pill)' }}>Masqué</span>}
                  </div>
                  <div style={{ fontSize: 13.5, color: 'var(--text-secondary)', marginBottom: 8 }}>{b.description}</div>
                  <div className="flex items-center gap-2 flex-wrap">
                    {b.produits.map(p => (
                      <span key={p} style={{ fontSize: 12, padding: '3px 10px', background: 'rgba(255,255,255,0.05)', border: '1px solid var(--hairline)', borderRadius: 'var(--r-pill)', color: 'var(--text-muted)' }}>{p}</span>
                    ))}
                  </div>
                </div>
                <div style={{ textAlign: 'right', display: 'flex', flexDirection: 'column', gap: 10, alignItems: 'flex-end' }}>
                  <div>
                    {b.remise_pct > 0 && <div style={{ fontSize: 12, color: 'var(--text-faint)', textDecoration: 'line-through' }}>{base.toLocaleString('fr-DZ')} DA</div>}
                    <div style={{ fontFamily: 'var(--font-display)', fontSize: 22, color: 'var(--gold-bright)' }}>{prix.toLocaleString('fr-DZ')} DA</div>
                    {b.remise_pct > 0 && <div style={{ fontSize: 11, color: 'var(--cel-success)' }}>−{b.remise_pct}%</div>}
                  </div>
                  <div className="flex gap-2">
                    <Link href={`/celestial-admin-rtabt/bundles/${b.id}/edit`} className="btn btn-glass btn-sm">Modifier</Link>
                    <BundleDeleteBtn id={b.id} />
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      )}
    </main>
  );
}
