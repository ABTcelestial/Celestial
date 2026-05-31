import { createClient } from '@/lib/supabase/server';
import { FaqAccordion } from '@/components/offres/FaqAccordion';
import { RevealWrapper } from '@/components/shared/RevealWrapper';
import Link from 'next/link';

export const metadata = { title: 'Celestial — Offres & Logiciels' };
export const revalidate = 60;

export default async function OffresPage() {
  const supabase = await createClient();
  const [
    { data: produits },
    { data: suite },
    { data: comparatif },
  ] = await Promise.all([
    supabase.from('produits').select('*').eq('actif', true).order('ordre'),
    supabase.from('suite_config').select('*').eq('id', 1).single(),
    supabase.from('comparatif_modules').select('*').order('ordre'),
  ]);

  const list = produits ?? [];
  const totalBase = list.reduce((sum, p) => sum + p.prix, 0);
  const remise = suite?.remise_pct ?? 20;
  const bundlePrice = Math.round(totalBase * (1 - remise / 100));
  const showBundle = (suite?.actif ?? true) && list.length >= 2;
  const rows = comparatif ?? [];

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

      {/* Product cards */}
      <section style={{ display: 'grid', gridTemplateColumns: `repeat(${Math.min(list.length || 3, 3)},1fr)`, gap: 24, marginTop: 60 }}>
        {list.map((p, i) => (
          <RevealWrapper key={p.id} delay={i * 120}>
            <div className="card card-hover flex flex-col" style={{ ...(p.featured ? { borderColor: 'rgba(201,168,76,0.4)', boxShadow: '0 0 50px rgba(201,168,76,0.10)' } : {}), position: 'relative', height: '100%' }}>
              {p.featured && <div style={{ position: 'absolute', top: 18, right: 18, fontFamily: 'var(--font-display)', fontSize: 11, letterSpacing: '0.08em', color: 'var(--gold-bright)', background: 'var(--gold-soft)', border: '1px solid rgba(201,168,76,0.35)', padding: '4px 10px', borderRadius: 'var(--r-pill)' }}>Le plus choisi</div>}
              {!p.featured && <span className="badge badge-gold" style={{ position: 'absolute', top: 18, right: 18 }}>★ Made for Algeria</span>}
              <div style={{ width: 52, height: 52, borderRadius: 'var(--r-sm)', display: 'grid', placeItems: 'center', fontSize: 26, border: '1px solid var(--glass-border)', marginBottom: 20, background: p.featured ? 'var(--grad-gold)' : 'linear-gradient(150deg,rgba(139,63,224,0.2),rgba(26,35,126,0.18))' }}>{p.icone}</div>
              <h3 style={{ fontSize: 24 }}>{p.nom}</h3>
              <p style={{ color: 'var(--text-secondary)', fontSize: 14.5, marginTop: 10, minHeight: 44 }}>{p.description}</p>
              <ul style={{ listStyle: 'none', display: 'flex', flexDirection: 'column', gap: 11, margin: '22px 0', padding: '22px 0', borderTop: '1px solid var(--hairline)', borderBottom: '1px solid var(--hairline)' }}>
                {(p.modules as string[]).map((m, j) => (
                  <li key={j} className="flex gap-2.5 items-center" style={{ fontSize: 14, color: 'var(--text-secondary)' }}>
                    <span style={{ color: 'var(--cel-success)', flexShrink: 0 }}>✓</span> {m}
                  </li>
                ))}
              </ul>
              <div style={{ marginTop: 'auto' }}>
                <div><span style={{ fontFamily: 'var(--font-display)', fontSize: 34, fontWeight: 600 }}>{p.prix.toLocaleString('fr-DZ')}</span> <span style={{ fontSize: 15, color: 'var(--text-muted)' }}>DZD</span></div>
                <div style={{ fontSize: 13, color: 'var(--text-muted)', marginTop: 2 }}>Licence perpétuelle · 1ʳᵉ année de support incluse</div>
                <Link href="/contact" className={`btn ${p.featured ? 'btn-gold' : 'btn-glass'} btn-block`} style={{ marginTop: 18 }}>Demander une démo</Link>
              </div>
            </div>
          </RevealWrapper>
        ))}
      </section>

      {/* Bundle */}
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
                <Link href="/contact" className="btn btn-gold" style={{ marginTop: 12 }}>Demander un devis suite →</Link>
              </div>
            </div>
          </RevealWrapper>
        </section>
      )}

      {/* Comparatif */}
      {rows.length > 0 && (
        <section className="section">
          <div className="text-center mb-2.5">
            <div className="eyebrow" style={{ justifyContent: 'center' }}>Comparatif</div>
            <h2 style={{ fontSize: 'clamp(28px,3.2vw,40px)', marginTop: 14 }}>Quels modules pour quel besoin ?</h2>
          </div>
          <div style={{ marginTop: 50, border: '1px solid var(--hairline)', borderRadius: 'var(--r-lg)', overflow: 'hidden', background: 'rgba(255,255,255,0.015)' }}>
            <table style={{ width: '100%', borderCollapse: 'collapse' }}>
              <thead>
                <tr>{['Module ERP','Business','Compta','Pay'].map((h,i) => <th key={i} style={{ textAlign: i===0?'left':'center', padding:'16px 22px', background:'rgba(255,255,255,0.03)', fontFamily:'var(--font-display)', fontSize:14, color:i===2?'var(--gold-bright)':'var(--text-primary)', borderTop:0 }}>{h}</th>)}</tr>
              </thead>
              <tbody>
                {rows.map(row => (
                  <tr key={row.id}>
                    <td style={{ padding:'16px 22px', borderTop:'1px solid var(--hairline)', color:'var(--text-secondary)', fontSize:14.5 }}>{row.feature}</td>
                    {[row.business, row.compta, row.pay].map((v,j) => <td key={j} style={{ padding:'16px 22px', borderTop:'1px solid var(--hairline)', textAlign:'center', color:v?'var(--cel-success)':'var(--text-faint)' }}>{v?'●':'—'}</td>)}
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </section>
      )}

      {/* FAQ */}
      <section className="section" style={{ paddingTop: rows.length > 0 ? 0 : undefined }}>
        <div className="text-center" style={{ marginBottom: 44 }}>
          <div className="eyebrow" style={{ justifyContent: 'center' }}>Licences &amp; abonnements</div>
          <h2 style={{ fontSize: 'clamp(28px,3.2vw,40px)', marginTop: 14 }}>Questions fréquentes</h2>
        </div>
        <FaqAccordion />
      </section>
    </main>
  );
}
