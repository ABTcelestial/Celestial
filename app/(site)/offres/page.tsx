import { createClient } from '@/lib/supabase/server';
import { FaqAccordion } from '@/components/offres/FaqAccordion';
import { RevealWrapper } from '@/components/shared/RevealWrapper';
import Link from 'next/link';

export const metadata = { title: 'Celestial — Offres & Logiciels' };
export const revalidate = 60;

type ModuleRow = { id: string; nom: string; description: string; prix: number; icone: string; ordre: number };
type ProduitRow = {
  id: string; nom: string; icone: string; description: string;
  prix: number; featured: boolean; ordre: number; actif: boolean;
  produit_modules: { modules: ModuleRow }[];
};

export default async function OffresPage() {
  const supabase = await createClient();
  const [
    { data: produitsRaw },
    { data: suite },
    { data: bundlesRaw },
  ] = await Promise.all([
    supabase.from('produits').select(`
      id, nom, icone, description, prix, featured, ordre, actif,
      produit_modules ( modules ( id, nom, description, prix, icone, ordre ) )
    `).eq('actif', true).order('ordre'),
    supabase.from('suite_config').select('*').eq('id', 1).single(),
    supabase.from('bundles').select('*').eq('actif', true).order('ordre'),
  ]);

  const list    = (produitsRaw as ProduitRow[] | null) ?? [];
  const bundles = bundlesRaw ?? [];

  // Suite totals
  const totalBase  = list.reduce((s, p) => s + p.prix, 0);
  const remise     = suite?.remise_pct ?? 20;
  const bundlePrice = Math.round(totalBase * (1 - remise / 100));
  const showBundle = (suite?.actif ?? true) && list.length >= 2;

  // Comparatif dynamique : tous les modules distincts assignés à au moins un produit
  const modulesMap = new Map<string, ModuleRow>();
  list.forEach(p => p.produit_modules.forEach(pm => {
    if (!modulesMap.has(pm.modules.id)) modulesMap.set(pm.modules.id, pm.modules);
  }));
  const allModules = Array.from(modulesMap.values()).sort((a, b) => a.ordre - b.ordre);

  return (
    <main className="wrap">
      <header style={{ paddingTop: 'calc(var(--nav-h) + 80px)', textAlign: 'center' }}>
        <div className="eyebrow" style={{ justifyContent: 'center' }}>Nos logiciels</div>
        <h1 style={{ fontSize: 'clamp(38px,5vw,62px)', marginTop: 18 }}>
          {list.length} suite{list.length > 1 ? 's' : ''} ERP. <span className="text-grad">Une seule licence.</span>
        </h1>
        <p className="lead" style={{ maxWidth: 600, margin: '20px auto 0' }}>
          Des progiciels modulaires, déployés chez vous, pensés pour la réglementation algérienne. Achat perpétuel, sans abonnement.
        </p>
      </header>

      {/* ── Produit cards ── */}
      <section style={{ display: 'grid', gridTemplateColumns: `repeat(${Math.min(list.length || 3, 3)},1fr)`, gap: 24, marginTop: 60 }}>
        {list.map((p, i) => {
          const mods = p.produit_modules.map(pm => pm.modules).filter(Boolean).sort((a, b) => a.ordre - b.ordre);
          return (
            <RevealWrapper key={p.id} delay={i * 120}>
              <div className="card card-hover flex flex-col" style={{ ...(p.featured ? { borderColor: 'rgba(201,168,76,0.4)', boxShadow: '0 0 50px rgba(201,168,76,0.10)' } : {}), position: 'relative', height: '100%' }}>
                {p.featured && <div style={{ position: 'absolute', top: 18, right: 18, fontFamily: 'var(--font-display)', fontSize: 11, letterSpacing: '0.08em', color: 'var(--gold-bright)', background: 'var(--gold-soft)', border: '1px solid rgba(201,168,76,0.35)', padding: '4px 10px', borderRadius: 'var(--r-pill)' }}>Le plus choisi</div>}
                {!p.featured && <span className="badge badge-gold" style={{ position: 'absolute', top: 18, right: 18 }}>★ Made for Algeria</span>}
                <div style={{ width: 52, height: 52, borderRadius: 'var(--r-sm)', display: 'grid', placeItems: 'center', fontSize: 26, border: '1px solid var(--glass-border)', marginBottom: 20, background: p.featured ? 'var(--grad-gold)' : 'linear-gradient(150deg,rgba(139,63,224,0.2),rgba(26,35,126,0.18))' }}>{p.icone}</div>
                <h3 style={{ fontSize: 24 }}>{p.nom}</h3>
                <p style={{ color: 'var(--text-secondary)', fontSize: 14.5, marginTop: 10, minHeight: 44 }}>{p.description}</p>
                {mods.length > 0 && (
                  <ul style={{ listStyle: 'none', display: 'flex', flexDirection: 'column', gap: 9, margin: '22px 0', padding: '22px 0', borderTop: '1px solid var(--hairline)', borderBottom: '1px solid var(--hairline)' }}>
                    {mods.map(m => (
                      <li key={m.id} style={{ display: 'grid', gridTemplateColumns: '1fr auto', gap: 8, alignItems: 'center', fontSize: 13.5 }}>
                        <span className="flex gap-2 items-center" style={{ color: 'var(--text-secondary)' }}>
                          <span style={{ color: 'var(--cel-success)', flexShrink: 0 }}>✓</span>
                          <span>{m.icone} {m.nom}</span>
                        </span>
                        <span style={{ fontSize: 12, color: 'var(--text-faint)', fontFamily: 'var(--font-display)', whiteSpace: 'nowrap' }}>
                          {m.prix.toLocaleString('fr-DZ')} DA
                        </span>
                      </li>
                    ))}
                  </ul>
                )}
                <div style={{ marginTop: 'auto' }}>
                  <div><span style={{ fontFamily: 'var(--font-display)', fontSize: 34, fontWeight: 600 }}>{p.prix.toLocaleString('fr-DZ')}</span> <span style={{ fontSize: 15, color: 'var(--text-muted)' }}>DZD</span></div>
                  <div style={{ fontSize: 13, color: 'var(--text-muted)', marginTop: 2 }}>Licence perpétuelle · 1ʳᵉ année de support incluse</div>
                  <Link href="/commander" className={`btn ${p.featured ? 'btn-gold' : 'btn-glass'} btn-block`} style={{ marginTop: 18 }}>Configurer & commander →</Link>
                </div>
              </div>
            </RevealWrapper>
          );
        })}
      </section>

      {/* ── Suite ── */}
      {showBundle && (
        <section style={{ marginTop: 24 }}>
          <RevealWrapper>
            <div className="card flex items-center justify-between flex-wrap gap-6" style={{ background: 'linear-gradient(120deg,rgba(106,13,173,0.18),rgba(26,35,126,0.14))' }}>
              <div>
                <div className="flex items-center gap-2.5 mb-2"><span className="badge badge-gold">Suite complète</span></div>
                <h3 style={{ fontSize: 24 }}>{suite?.label ?? 'Celestial Suite'} — les {list.length} logiciels</h3>
                <p style={{ color: 'var(--text-secondary)', marginTop: 6, fontSize: 14.5 }}>{suite?.description}</p>
              </div>
              <div style={{ textAlign: 'right' }}>
                <div style={{ fontFamily: 'var(--font-display)', fontSize: 14, color: 'var(--text-muted)', textDecoration: 'line-through' }}>{totalBase.toLocaleString('fr-DZ')} DZD</div>
                <div><span className="stat-num text-gold" style={{ fontSize: 38 }}>{bundlePrice.toLocaleString('fr-DZ')}</span> <span style={{ fontSize: 15, color: 'var(--text-muted)' }}>DZD</span></div>
                <div style={{ fontSize: 12, color: 'var(--text-muted)', marginTop: 2 }}>Économisez {remise}%</div>
                <Link href="/commander" className="btn btn-gold" style={{ marginTop: 12 }}>Voir tous les bundles →</Link>
              </div>
            </div>
          </RevealWrapper>
        </section>
      )}

      {/* ── Bundles ── */}
      {bundles.length > 0 && (
        <section style={{ marginTop: 16 }}>
          <RevealWrapper>
            <div style={{ display: 'grid', gridTemplateColumns: `repeat(${Math.min(bundles.length, 3)},1fr)`, gap: 14 }}>
              {bundles.map(b => {
                const bProds   = list.filter(p => b.produits.includes(p.nom));
                const base     = bProds.reduce((s, p) => s + p.prix, 0);
                const prix     = Math.round(base * (1 - b.remise_pct / 100));
                const savings  = base - prix;
                return (
                  <div key={b.id} className="card" style={{ background: 'rgba(255,255,255,0.025)', display: 'flex', flexDirection: 'column', gap: 12 }}>
                    <div className="flex items-center gap-2">
                      <span style={{ fontWeight: 600, fontSize: 15 }}>{b.nom}</span>
                      {b.badge && <span className="badge badge-gold" style={{ fontSize: 11 }}>{b.badge}</span>}
                    </div>
                    {b.description && <p style={{ fontSize: 13, color: 'var(--text-secondary)', lineHeight: 1.5 }}>{b.description}</p>}
                    <div className="flex gap-1.5 flex-wrap">
                      {b.produits.map(pn => (
                        <span key={pn} style={{ fontSize: 11.5, padding: '3px 9px', background: 'rgba(201,168,76,0.08)', border: '1px solid rgba(201,168,76,0.2)', borderRadius: 'var(--r-pill)', color: 'var(--gold)' }}>{pn}</span>
                      ))}
                    </div>
                    <div style={{ marginTop: 'auto', paddingTop: 10, borderTop: '1px solid var(--hairline)', display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
                      <div>
                        {b.remise_pct > 0 && (
                          <>
                            <div style={{ fontSize: 11, color: 'var(--text-faint)', textDecoration: 'line-through' }}>{base.toLocaleString('fr-DZ')} DA</div>
                            <div style={{ fontFamily: 'var(--font-display)', fontSize: 20, color: 'var(--gold-bright)' }}>{prix.toLocaleString('fr-DZ')} DA</div>
                            <div style={{ fontSize: 11, color: 'var(--cel-success)' }}>−{b.remise_pct}% · Écon. {savings.toLocaleString('fr-DZ')} DA</div>
                          </>
                        )}
                        {b.remise_pct === 0 && (
                          <div style={{ fontFamily: 'var(--font-display)', fontSize: 20, color: 'var(--text-primary)' }}>{prix.toLocaleString('fr-DZ')} DA</div>
                        )}
                      </div>
                      <Link href="/commander" className="btn btn-glass btn-sm">Choisir →</Link>
                    </div>
                  </div>
                );
              })}
            </div>
          </RevealWrapper>
        </section>
      )}

      {/* ── FAQ ── */}
      <section className="section">
        <div className="text-center" style={{ marginBottom: 44 }}>
          <div className="eyebrow" style={{ justifyContent: 'center' }}>Licences &amp; abonnements</div>
          <h2 style={{ fontSize: 'clamp(28px,3.2vw,40px)', marginTop: 14 }}>Questions fréquentes</h2>
        </div>
        <FaqAccordion />
      </section>
    </main>
  );
}
