import Link from 'next/link';
import { RevealWrapper } from '@/components/shared/RevealWrapper';
import { AnimatedCounter } from '@/components/shared/AnimatedCounter';

export function PresentationSection() {
  return (
    <section className="section">
      <div className="wrap">
        <div style={{ display: 'grid', gridTemplateColumns: '1.1fr 0.9fr', gap: 56, alignItems: 'center' }}>
          <RevealWrapper>
            <div className="eyebrow">Qui est Celestial ?</div>
            <h2 style={{ fontSize: 'clamp(30px,3.6vw,44px)', marginTop: 18 }}>
              Un éditeur algérien qui transforme la gestion des grandes entreprises.
            </h2>
            <p className="lead" style={{ marginTop: 20 }}>
              Depuis 2019, nous concevons et déployons des ERP en licence unique — sans abonnement, hébergés chez nos clients, conformes à la réglementation algérienne. Une équipe de proximité, un support humain, une vision durable.
            </p>
            <div className="row gap-3.5 mt-7">
              <Link href="/a-propos" className="btn btn-glass">Notre histoire</Link>
              <Link href="/documentation" className="btn btn-ghost">Lire la documentation →</Link>
            </div>
          </RevealWrapper>

          <RevealWrapper delay={120}>
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3,1fr)', gap: 1, background: 'var(--hairline)', borderRadius: 'var(--r-lg)', overflow: 'hidden', border: '1px solid var(--hairline)' }}>
              {[
                { count: 5, suffix: '+', label: "ans d'expérience", gold: true },
                { count: 120, suffix: '+', label: 'clients entreprises', gold: false },
                { count: 98, suffix: '%', label: 'de rétention', gold: false },
              ].map((s, i) => (
                <div key={i} style={{ background: 'var(--bg-900)', padding: 30, textAlign: 'center' }}>
                  <div className="stat-num" style={{ color: s.gold ? 'var(--gold)' : undefined }}>
                    <AnimatedCounter target={s.count} suffix={s.suffix} />
                  </div>
                  <div style={{ color: 'var(--text-muted)', fontSize: 13, marginTop: 6 }}>{s.label}</div>
                </div>
              ))}
            </div>
            <div className="card" style={{ marginTop: 20 }}>
              <p style={{ color: 'var(--text-secondary)', fontStyle: 'italic', fontSize: 15 }}>
                « Celestial a digitalisé toute notre chaîne comptable en 6 semaines, sans dépendre d'un éditeur étranger. »
              </p>
              <div className="row gap-2.5 mt-4">
                <div style={{ width: 38, height: 38, borderRadius: '50%', background: 'var(--grad-cosmos)', flexShrink: 0 }} />
                <div>
                  <div style={{ fontSize: 14, fontWeight: 600 }}>Direction financière</div>
                  <div style={{ color: 'var(--text-muted)', fontSize: 12.5 }}>Groupe industriel · Oran</div>
                </div>
              </div>
            </div>
          </RevealWrapper>
        </div>
      </div>

      <style>{`
        @media (max-width: 920px) {
          .pres-grid-inner { grid-template-columns: 1fr !important; gap: 32px !important; }
        }
      `}</style>
    </section>
  );
}
