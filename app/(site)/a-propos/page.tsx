import type { Metadata } from 'next';
import Link from 'next/link';
import { RevealWrapper } from '@/components/shared/RevealWrapper';

export const metadata: Metadata = {
  title: 'À propos — Celestial',
  description:
    'Celestial est une entreprise informatique de Béjaïa : matériel, logiciels et services pour automatiser les entreprises algériennes.',
};

const VALEURS = [
  {
    title: 'Le concret avant tout',
    desc: 'Nos logiciels naissent du terrain : l’ERP BusinessProces tourne déjà en entreprise, tous les jours, en conditions réelles.',
    icon: '⚒',
  },
  {
    title: 'Vos données vous appartiennent',
    desc: 'Nos systèmes fonctionnent sur votre réseau, chez vous. Pas de cloud imposé, pas de dépendance.',
    icon: '🛡',
  },
  {
    title: 'La proximité',
    desc: 'Basés à Béjaïa, nous installons, formons et dépannons sur place. Vous parlez à ceux qui ont conçu vos outils.',
    icon: '📍',
  },
  {
    title: 'Tout sous un même toit',
    desc: 'Matériel, logiciels, services : une seule adresse, un seul interlocuteur, des briques pensées pour s’assembler.',
    icon: '⬡',
  },
];

export default function AProposPage() {
  return (
    <>
      <section
        className="relative overflow-hidden pt-[var(--nav-h)]"
        style={{
          background:
            'radial-gradient(900px 500px at 50% 0%, rgba(79,195,247,0.14), transparent 65%), linear-gradient(180deg, #FFFFFF 0%, #F2F9FE 100%)',
        }}
      >
        <div className="container-cel section text-center">
          <RevealWrapper>
            <span className="chip mb-6">Notre mission</span>
            <h1 className="mx-auto max-w-[820px] text-[clamp(34px,5vw,56px)]">
              Donner aux entreprises algériennes des outils{' '}
              <span className="text-grad">dignes de leurs ambitions</span>
            </h1>
            <p className="mx-auto mt-6 max-w-[640px] text-[17px] leading-relaxed text-[var(--text-secondary)]">
              Celestial est née à Béjaïa d&apos;une conviction simple : chaque entreprise,
              du restaurant de quartier à la société de travaux, mérite d&apos;être
              automatisée avec des outils conçus ici, pour nos réalités.
            </p>
          </RevealWrapper>
        </div>
      </section>

      {/* Histoire */}
      <section className="section">
        <div className="container-cel">
          <div className="grid items-start gap-12 md:grid-cols-2">
            <RevealWrapper>
              <span className="chip mb-5">L&apos;histoire</span>
              <h2 className="text-[clamp(26px,3.4vw,40px)]">
                Du terrain <span className="text-grad">au guichet unique</span>
              </h2>
            </RevealWrapper>
            <RevealWrapper delay={120}>
              <div className="space-y-5 text-[15.5px] leading-relaxed text-[var(--text-secondary)]">
                <p>
                  Tout a commencé avec un logiciel : <strong>BusinessProces</strong>, un ERP
                  développé pour répondre aux besoins réels d&apos;une entreprise algérienne —
                  marchés, stocks, comptabilité, paie, jusqu&apos;à la pesée des camions au
                  pont bascule. Il est aujourd&apos;hui déployé et utilisé quotidiennement.
                </p>
                <p>
                  De cette expérience est née Celestial : si un logiciel peut automatiser
                  une entreprise entière, pourquoi s&apos;arrêter là ? Nous avons élargi
                  l&apos;offre au matériel informatique, au développement de systèmes sur
                  mesure, et à <strong>Celestial Food</strong> pour la restauration.
                </p>
                <p>
                  Aujourd&apos;hui, Celestial construit le <strong>guichet unique
                  informatique</strong> des entreprises de Béjaïa — et bientôt au-delà.
                </p>
              </div>
            </RevealWrapper>
          </div>
        </div>
      </section>

      {/* Valeurs */}
      <section className="section section-mist">
        <div className="container-cel">
          <RevealWrapper>
            <span className="chip mb-5">Nos valeurs</span>
            <h2 className="max-w-[560px] text-[clamp(26px,3.4vw,40px)]">
              Ce qui guide <span className="text-grad">chaque projet</span>
            </h2>
          </RevealWrapper>

          <div className="mt-12 grid gap-6 sm:grid-cols-2">
            {VALEURS.map((v, i) => (
              <RevealWrapper key={v.title} delay={i * 90}>
                <div className="card-cel h-full p-8">
                  <span className="text-[26px]" aria-hidden>
                    {v.icon}
                  </span>
                  <h3 className="mt-4 text-[19px]">{v.title}</h3>
                  <p className="mt-3 text-[15px] leading-relaxed text-[var(--text-secondary)]">{v.desc}</p>
                </div>
              </RevealWrapper>
            ))}
          </div>
        </div>
      </section>

      {/* CTA */}
      <section className="section">
        <div className="container-cel text-center">
          <RevealWrapper>
            <h2 className="text-[clamp(26px,3.4vw,40px)]">Discutons de votre entreprise</h2>
            <p className="mx-auto mt-4 max-w-[480px] text-[16px] text-[var(--text-secondary)]">
              Un projet, une question, un besoin d&apos;équipement ? Nous répondons vite.
            </p>
            <div className="mt-8">
              <Link href="/contact" className="btn-primary">
                Nous contacter <span aria-hidden>→</span>
              </Link>
            </div>
          </RevealWrapper>
        </div>
      </section>
    </>
  );
}
