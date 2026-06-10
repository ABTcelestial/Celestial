import Link from 'next/link';
import { RevealWrapper } from '@/components/shared/RevealWrapper';

const OFFRES = [
  {
    title: 'ERP BusinessProces',
    desc: 'Le progiciel de gestion complet, déjà déployé en entreprise : marchés, stocks, comptabilité, facturation, paie et logistique.',
    href: '/erp',
    cta: 'Découvrir l’ERP',
    icon: '⬡',
    featured: true,
  },
  {
    title: 'Celestial Food',
    desc: 'La caisse et la gestion complète pour restaurants : commandes en salle sur mobile, cuisine, tickets et factures.',
    href: '/food',
    cta: 'Voir le produit',
    icon: '🍽',
    featured: false,
  },
  {
    title: 'Celestial Shop',
    desc: 'Composants et matériel informatique : PC, périphériques et équipement professionnel, livrés avec conseil.',
    href: '/services#shop',
    cta: 'Voir la boutique',
    icon: '🖥',
    featured: false,
  },
  {
    title: 'Développement sur mesure',
    desc: 'Votre métier a un besoin unique ? Nous concevons le système ou le logiciel qui l’automatise, de A à Z.',
    href: '/services',
    cta: 'Nos services',
    icon: '⚙',
    featured: false,
  },
];

export function OffreSection() {
  return (
    <section className="section">
      <div className="container-cel">
        <RevealWrapper>
          <span className="chip mb-5">Le guichet unique</span>
          <h2 className="max-w-[560px] text-[clamp(28px,3.6vw,42px)]">
            Une seule adresse pour <span className="text-grad">tout informatiser</span>
          </h2>
          <p className="mt-4 max-w-[560px] text-[16.5px] text-[var(--text-secondary)]">
            Matériel, logiciels, services : chaque brique fonctionne seule, et encore mieux ensemble.
          </p>
        </RevealWrapper>

        <div className="mt-12 grid gap-6 md:grid-cols-2">
          {OFFRES.map((o, i) => (
            <RevealWrapper key={o.title} delay={i * 90}>
              <Link
                href={o.href}
                className="card-cel block h-full p-8"
                style={
                  o.featured
                    ? { borderColor: 'var(--card-border-strong)', background: 'linear-gradient(135deg, #FFFFFF 60%, #EBF4FC 100%)' }
                    : undefined
                }
              >
                <div className="flex items-start justify-between">
                  <span
                    className="flex h-12 w-12 items-center justify-center rounded-2xl text-[22px]"
                    style={{ background: 'var(--card-tint)', border: '1px solid var(--card-border)' }}
                    aria-hidden
                  >
                    {o.icon}
                  </span>
                  {o.featured && <span className="chip">Produit phare</span>}
                </div>
                <h3 className="mt-5 text-[21px]">{o.title}</h3>
                <p className="mt-3 text-[15px] leading-relaxed text-[var(--text-secondary)]">{o.desc}</p>
                <span className="mt-5 inline-flex items-center gap-2 text-[14.5px] font-semibold text-[var(--blue)]">
                  {o.cta} <span aria-hidden>→</span>
                </span>
              </Link>
            </RevealWrapper>
          ))}
        </div>
      </div>
    </section>
  );
}
