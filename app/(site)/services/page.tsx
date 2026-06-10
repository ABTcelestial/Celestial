import type { Metadata } from 'next';
import Link from 'next/link';
import { RevealWrapper } from '@/components/shared/RevealWrapper';

export const metadata: Metadata = {
  title: 'Services — développement sur mesure et matériel | Celestial',
  description:
    'Développement de systèmes et logiciels sur mesure, et fourniture de matériel informatique pour les entreprises algériennes.',
};

const ETAPES = [
  { n: '01', title: 'On écoute', desc: 'Vous nous expliquez votre métier, vos tâches répétitives, ce qui vous fait perdre du temps.' },
  { n: '02', title: 'On conçoit', desc: 'Nous dessinons le système qui automatise exactement votre besoin — ni plus, ni moins.' },
  { n: '03', title: 'On développe', desc: 'Le logiciel est construit, testé avec vous, et ajusté jusqu’à ce qu’il colle à votre réalité.' },
  { n: '04', title: 'On installe et on forme', desc: 'Mise en place sur site à Béjaïa, formation de vos équipes, et support ensuite.' },
];

export default function ServicesPage() {
  return (
    <>
      <section
        className="relative overflow-hidden pt-[var(--nav-h)]"
        style={{
          background:
            'radial-gradient(900px 500px at 80% 25%, rgba(79,195,247,0.16), transparent 65%), linear-gradient(180deg, #FFFFFF 0%, #F2F9FE 100%)',
        }}
      >
        <div className="container-cel section">
          <RevealWrapper>
            <span className="chip mb-6">Services</span>
            <h1 className="max-w-[760px] text-[clamp(34px,5vw,56px)]">
              Votre métier est unique ? <span className="text-grad">Votre système le sera aussi.</span>
            </h1>
            <p className="mt-6 max-w-[620px] text-[17.5px] leading-relaxed text-[var(--text-secondary)]">
              Quand un logiciel du marché ne suffit pas, nous développons le système qui
              automatise votre activité : gestion, production, suivi — conçu pour vous,
              installé chez vous.
            </p>
            <div className="mt-9 flex flex-wrap gap-4">
              <Link href="/contact" className="btn-primary">
                Parler de votre projet <span aria-hidden>→</span>
              </Link>
            </div>
          </RevealWrapper>
        </div>
      </section>

      {/* Démarche */}
      <section className="section">
        <div className="container-cel">
          <RevealWrapper>
            <span className="chip mb-5">Notre démarche</span>
            <h2 className="max-w-[560px] text-[clamp(26px,3.4vw,40px)]">
              Du besoin au système, <span className="text-grad">en quatre étapes</span>
            </h2>
            <p className="mt-4 max-w-[600px] text-[15.5px] text-[var(--text-secondary)]">
              Nous développons des <strong>systèmes et logiciels métier</strong> : gestion,
              production, automatisation. (Nous ne réalisons pas de sites web.)
            </p>
          </RevealWrapper>

          <div className="mt-12 grid gap-6 sm:grid-cols-2 lg:grid-cols-4">
            {ETAPES.map((e, i) => (
              <RevealWrapper key={e.n} delay={i * 90}>
                <div className="card-cel h-full p-7">
                  <span
                    className="font-[family-name:var(--font-display)] text-[28px] font-extrabold"
                    style={{ color: 'var(--sky-bright)' }}
                  >
                    {e.n}
                  </span>
                  <h3 className="mt-3 text-[18px]">{e.title}</h3>
                  <p className="mt-2.5 text-[14.5px] leading-relaxed text-[var(--text-secondary)]">{e.desc}</p>
                </div>
              </RevealWrapper>
            ))}
          </div>
        </div>
      </section>

      {/* Shop / matériel */}
      <section id="shop" className="section section-mist">
        <div className="container-cel">
          <RevealWrapper>
            <div className="card-cel grid items-center gap-10 p-10 md:grid-cols-[1.3fr_1fr] md:p-14">
              <div>
                <span className="chip mb-5">Celestial Shop</span>
                <h2 className="text-[clamp(24px,3vw,36px)]">
                  Le matériel qui va <span className="text-grad">avec vos logiciels</span>
                </h2>
                <p className="mt-4 max-w-[520px] text-[15.5px] leading-relaxed text-[var(--text-secondary)]">
                  PC, écrans, imprimantes thermiques, périphériques et composants : notre
                  boutique fournit l&apos;équipement adapté à votre installation — avec le
                  conseil de ceux qui installeront vos systèmes.
                </p>
                <div className="mt-7 flex flex-wrap gap-4">
                  <Link href="/contact" className="btn-ghost">
                    Demander un équipement
                  </Link>
                </div>
              </div>
              <div
                className="hidden h-full min-h-[220px] rounded-2xl md:block"
                style={{
                  background:
                    'radial-gradient(300px 200px at 50% 40%, rgba(79,195,247,0.35), transparent 70%), var(--grad-mist)',
                  border: '1px solid var(--card-border)',
                }}
                aria-hidden
              />
            </div>
          </RevealWrapper>
        </div>
      </section>
    </>
  );
}
