import { RevealWrapper } from '@/components/shared/RevealWrapper';

const objectifs = [
  {
    icon: (
      <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.6">
        <rect x="3" y="3" width="7" height="7" rx="1.5"/>
        <rect x="14" y="3" width="7" height="7" rx="1.5"/>
        <rect x="3" y="14" width="7" height="7" rx="1.5"/>
        <rect x="14" y="14" width="7" height="7" rx="1.5"/>
      </svg>
    ),
    color: 'var(--purple-glow)',
    title: 'Digitaliser les entreprises algériennes',
    desc: "Remplacer les tableurs et les silos par des systèmes intégrés, fiables et durables — pensés pour passer à l'échelle.",
  },
  {
    icon: (
      <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.6">
        <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/>
        <path d="M9 12l2 2 4-4"/>
      </svg>
    ),
    color: 'var(--gold)',
    title: 'Des ERP pensés pour le marché local',
    desc: 'Conformité SCF, TVA, paie algérienne, arabe et français. Vos contraintes réglementaires, nativement gérées.',
  },
  {
    icon: (
      <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.6">
        <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"/>
      </svg>
    ),
    color: 'var(--blue-glow)',
    title: 'Un support humain et réactif',
    desc: "Une équipe basée en Algérie, joignable, qui connaît votre déploiement. Pas de hotline anonyme — des ingénieurs.",
  },
];

export function ObjectifsSection() {
  return (
    <section className="section" style={{ paddingTop: 0 }}>
      <div className="wrap">
        <div className="text-center" style={{ maxWidth: 680, marginInline: 'auto' }}>
          <div className="eyebrow" style={{ justifyContent: 'center' }}>Notre mission</div>
          <h2 style={{ fontSize: 'clamp(30px,3.6vw,44px)', marginTop: 16 }}>
            Trois convictions qui guident chaque ligne de code
          </h2>
        </div>
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3,1fr)', gap: 24, marginTop: 54 }}>
          {objectifs.map((o, i) => (
            <RevealWrapper key={i} delay={i * 120}>
              <div className="card card-hover" style={{ height: '100%' }}>
                <div className="card-icon" style={{ color: o.color }}>{o.icon}</div>
                <h3 style={{ fontSize: 22 }}>{o.title}</h3>
                <p style={{ color: 'var(--text-secondary)', marginTop: 12 }}>{o.desc}</p>
              </div>
            </RevealWrapper>
          ))}
        </div>
      </div>
      <style>{`
        @media (max-width: 920px) {
          .objectifs-grid-inner { grid-template-columns: 1fr !important; }
        }
      `}</style>
    </section>
  );
}
