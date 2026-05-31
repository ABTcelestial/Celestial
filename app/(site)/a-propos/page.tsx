import Link from 'next/link';
import { RevealWrapper } from '@/components/shared/RevealWrapper';
import { AnimatedCounter } from '@/components/shared/AnimatedCounter';

export const metadata = { title: 'Celestial — À propos' };

const history = [
  { year: '2019', title: 'La fondation', desc: "Trois ingénieurs algériens fondent Celestial à Alger avec une conviction : les entreprises locales méritent des ERP conçus pour leur réglementation, pas des solutions étrangères mal adaptées." },
  { year: '2021', title: 'Lancement de Compta Process', desc: "Notre premier logiciel, dédié à la comptabilité SCF et à la fiscalité algérienne, est adopté par ses 20 premiers clients en moins d'un an." },
  { year: '2023', title: "La suite s'élargit", desc: "Business Process et Pay Process rejoignent l'écosystème. Celestial devient une suite ERP intégrée couvrant l'ensemble des processus de l'entreprise." },
  { year: '2026', title: 'Expansion nationale', desc: "Avec plus de 120 clients et un nouveau bureau à Constantine, Celestial accélère sa mission de digitalisation à travers toute l'Algérie." },
];

const team = [
  { initials: 'YB', name: 'Yacine Belkacem', role: 'Co-fondateur & CEO' },
  { initials: 'NL', name: 'Nadia Larbi', role: 'Co-fondatrice & CTO' },
  { initials: 'RM', name: 'Riad Mansouri', role: 'Directeur produit' },
  { initials: 'SH', name: 'Sara Hamidi', role: 'Responsable support' },
];

const stats = [
  { count: 5, suffix: '+', label: "années d'activité" },
  { count: 120, suffix: '+', label: 'clients entreprises', gold: true },
  { count: 340, suffix: '+', label: 'déploiements réalisés' },
  { count: 28, suffix: '', label: 'ingénieurs & experts' },
];

export default function AProposPage() {
  return (
    <main>
      {/* Hero */}
      <header style={{ paddingTop: 'calc(var(--nav-h) + 90px)', textAlign: 'center', position: 'relative' }}>
        <div className="glow-orb" style={{ width: 680, height: 680, background: 'radial-gradient(circle, rgba(106,13,173,0.4), transparent 65%)', top: -200, left: '50%', transform: 'translateX(-50%)' }} />
        <div className="wrap" style={{ maxWidth: 880, marginInline: 'auto' }}>
          <div className="eyebrow" style={{ justifyContent: 'center' }}>Notre mission</div>
          <h1 style={{ fontSize: 'clamp(36px,5vw,64px)', marginTop: 20, lineHeight: 1.05 }}>
            Donner aux entreprises algériennes des outils <span className="text-grad">dignes de leurs ambitions</span>
          </h1>
          <p className="lead" style={{ margin: '24px auto 0' }}>
            Nous croyons que la souveraineté numérique commence par des logiciels conçus ici, pour nos réalités. Depuis 2019, Celestial bâtit des ERP que les grandes entreprises possèdent vraiment.
          </p>
        </div>
      </header>

      {/* Stats */}
      <section className="section">
        <div className="wrap">
          <RevealWrapper>
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4,1fr)', gap: 1, background: 'var(--hairline)', border: '1px solid var(--hairline)', borderRadius: 'var(--r-lg)', overflow: 'hidden' }}>
              {stats.map((s, i) => (
                <div key={i} style={{ background: 'var(--bg-900)', padding: '38px 24px', textAlign: 'center' }}>
                  <div className="stat-num" style={{ color: s.gold ? 'var(--gold)' : undefined }}>
                    <AnimatedCounter target={s.count} suffix={s.suffix} />
                  </div>
                  <div style={{ color: 'var(--text-muted)', fontSize: 13.5, marginTop: 8 }}>{s.label}</div>
                </div>
              ))}
            </div>
          </RevealWrapper>
        </div>
      </section>

      {/* History */}
      <section className="section" style={{ paddingTop: 0 }}>
        <div className="wrap" style={{ maxWidth: 820 }}>
          <div className="text-center" style={{ marginBottom: 44 }}>
            <div className="eyebrow" style={{ justifyContent: 'center' }}>Notre histoire</div>
            <h2 style={{ fontSize: 'clamp(28px,3.4vw,42px)', marginTop: 14 }}>D'une idée à un éditeur de référence</h2>
          </div>
          <div style={{ position: 'relative', marginTop: 40, paddingLeft: 30 }}>
            <div style={{ position: 'absolute', left: 7, top: 10, bottom: 10, width: 2, background: 'linear-gradient(180deg, var(--gold), var(--purple-bright), var(--blue-deep))' }} />
            {history.map((item, i) => (
              <RevealWrapper key={i} delay={i * 100}>
                <div style={{ position: 'relative', paddingBottom: 42 }}>
                  <div style={{ position: 'absolute', left: -30, top: 5, width: 16, height: 16, borderRadius: '50%', background: 'var(--bg-900)', border: '2px solid var(--gold)', boxShadow: '0 0 0 4px rgba(201,168,76,0.14)' }} />
                  <div style={{ fontFamily: 'var(--font-display)', fontSize: 22, fontWeight: 600, color: 'var(--gold-bright)' }}>{item.year}</div>
                  <h3 style={{ fontSize: 19, marginTop: 4 }}>{item.title}</h3>
                  <p style={{ color: 'var(--text-secondary)', marginTop: 8, fontSize: 14.5, maxWidth: '60ch' }}>{item.desc}</p>
                </div>
              </RevealWrapper>
            ))}
          </div>
        </div>
      </section>

      {/* Team */}
      <section className="section" style={{ paddingTop: 0 }}>
        <div className="wrap">
          <div className="text-center" style={{ marginBottom: 44 }}>
            <div className="eyebrow" style={{ justifyContent: 'center' }}>L'équipe</div>
            <h2 style={{ fontSize: 'clamp(28px,3.4vw,42px)', marginTop: 14 }}>Les architectes de Celestial</h2>
          </div>
          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4,1fr)', gap: 22 }}>
            {team.map((m, i) => (
              <RevealWrapper key={i} delay={i * 80}>
                <div style={{ textAlign: 'center' }}>
                  <div style={{ width: '100%', aspectRatio: '1', borderRadius: 'var(--r-lg)', background: 'linear-gradient(150deg, rgba(139,63,224,0.3), rgba(26,35,126,0.25))', border: '1px solid var(--glass-border)', marginBottom: 16, display: 'grid', placeItems: 'center', fontFamily: 'var(--font-display)', fontSize: 34, color: 'rgba(255,255,255,0.5)' }}>
                    {m.initials}
                  </div>
                  <h4 style={{ fontSize: 17 }}>{m.name}</h4>
                  <div style={{ color: 'var(--text-muted)', fontSize: 13.5, marginTop: 2 }}>{m.role}</div>
                </div>
              </RevealWrapper>
            ))}
          </div>
        </div>
      </section>

      {/* CTA */}
      <section className="section" style={{ paddingTop: 0 }}>
        <div className="wrap">
          <RevealWrapper>
            <div className="card text-center" style={{ padding: '56px 40px', background: 'linear-gradient(120deg, rgba(106,13,173,0.2), rgba(26,35,126,0.16))' }}>
              <h2 style={{ fontSize: 'clamp(26px,3vw,38px)' }}>Envie de rejoindre l'aventure ?</h2>
              <p className="lead" style={{ maxWidth: 480, margin: '16px auto 0' }}>Que vous soyez une entreprise à digitaliser ou un talent à recruter, parlons-en.</p>
              <div className="flex gap-3.5 justify-center flex-wrap mt-7">
                <Link href="/contact" className="btn btn-gold btn-lg">Nous contacter</Link>
                <Link href="/offres" className="btn btn-glass btn-lg">Voir nos logiciels</Link>
              </div>
            </div>
          </RevealWrapper>
        </div>
      </section>
    </main>
  );
}
