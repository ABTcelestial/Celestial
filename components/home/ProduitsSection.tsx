import Link from 'next/link';
import { RevealWrapper } from '@/components/shared/RevealWrapper';

const products = [
  { title: 'Business Process', desc: 'Ventes, achats, stock, CRM. Le cœur opérationnel de votre entreprise.' },
  { title: 'Pay Process', desc: 'Paie, RH, congés, déclarations CNAS. La paie algérienne sans erreur.' },
  { title: 'Compta Process', desc: 'Comptabilité SCF, TVA, G50, bilans. La conformité, automatisée.' },
];

export function ProduitsSection() {
  return (
    <section className="section" style={{ paddingTop: 0 }}>
      <div className="wrap">
        <div className="flex items-center justify-between flex-wrap gap-4 mb-9">
          <div>
            <div className="eyebrow">Nos suites</div>
            <h2 style={{ fontSize: 'clamp(28px,3.2vw,38px)', marginTop: 14 }}>Trois logiciels, un écosystème</h2>
          </div>
          <Link href="/offres" className="btn btn-glass">Comparer les offres →</Link>
        </div>
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3,1fr)', gap: 24 }}>
          {products.map((p, i) => (
            <RevealWrapper key={i} delay={i * 120}>
              <Link href="/offres" className="card card-hover block">
                <span className="badge badge-gold" style={{ marginBottom: 18 }}>★ Made for Algeria</span>
                <h3 style={{ fontSize: 22 }}>{p.title}</h3>
                <p style={{ color: 'var(--text-secondary)', marginTop: 10, fontSize: 14.5 }}>{p.desc}</p>
                <div className="text-gold" style={{ marginTop: 18, fontFamily: 'var(--font-display)', fontSize: 14 }}>Découvrir →</div>
              </Link>
            </RevealWrapper>
          ))}
        </div>
      </div>
    </section>
  );
}
