import type { Metadata } from 'next';
import Link from 'next/link';
import { RevealWrapper } from '@/components/shared/RevealWrapper';

export const metadata: Metadata = {
  title: 'Nos offres — Celestial',
  description:
    'Toutes les offres Celestial : ERP BusinessProces, Celestial Food, matériel informatique et développement de systèmes sur mesure.',
};

const OFFRES = [
  {
    title: 'ERP BusinessProces',
    badge: 'Produit phare',
    desc: 'Le progiciel de gestion complet, déjà déployé en entreprise : marchés, stocks, comptabilité, finance, facturation, paie et logistique avec pont bascule.',
    points: ['Licence unique, sans abonnement', 'Fonctionne sur votre réseau local', 'Installation et formation sur site'],
    href: '/erp',
    cta: 'Découvrir l’ERP',
    icon: '⬡',
    featured: true,
  },
  {
    title: 'Celestial Food',
    badge: 'Bientôt disponible',
    desc: 'La caisse et la gestion pour restaurants, cafés et fast-foods : commandes à table sur mobile, tickets de cuisine, factures et chiffres en direct.',
    points: ['Caisse desktop + mobile serveurs', 'Imprimantes thermiques', 'Zéro cloud, zéro coupure'],
    href: '/food',
    cta: 'Voir Celestial Food',
    icon: '🍽',
    featured: false,
  },
  {
    title: 'Matériel informatique',
    badge: 'Celestial Shop',
    desc: 'PC, écrans, imprimantes, périphériques et composants : l’équipement adapté à votre activité, choisi et installé par ceux qui connaissent vos logiciels.',
    points: ['Conseil avant achat', 'Paiement à la livraison', 'Installation possible sur site'],
    href: '/services#shop',
    cta: 'Demander un équipement',
    icon: '🖥',
    featured: false,
  },
  {
    title: 'Systèmes sur mesure',
    badge: 'Développement',
    desc: 'Votre métier a un besoin qu’aucun logiciel du marché ne couvre ? Nous concevons et développons le système qui l’automatise, de l’écoute à la formation.',
    points: ['Systèmes et logiciels métier', 'Conçu pour votre réalité', 'Support local à Béjaïa'],
    href: '/services',
    cta: 'Voir la démarche',
    icon: '⚙',
    featured: false,
  },
];

export default function OffresPage() {
  return (
    <>
      <section
        className="relative overflow-hidden pt-[var(--nav-h)]"
        style={{
          background:
            'radial-gradient(900px 500px at 75% 15%, rgba(79,195,247,0.16), transparent 65%), linear-gradient(180deg, #FFFFFF 0%, #F2F9FE 100%)',
        }}
      >
        <div className="container-cel section">
          <RevealWrapper>
            <span className="chip mb-6">Nos offres</span>
            <h1 className="max-w-[720px] text-[clamp(34px,5vw,56px)]">
              Une offre pour chaque façon <span className="text-grad">de travailler</span>
            </h1>
            <p className="mt-6 max-w-[600px] text-[17.5px] leading-relaxed text-[var(--text-secondary)]">
              Logiciels, matériel, développement sur mesure : choisissez la brique qu&apos;il
              vous faut — elles sont toutes pensées pour fonctionner ensemble.
            </p>
          </RevealWrapper>
        </div>
      </section>

      <section className="section !pt-4">
        <div className="container-cel">
          <div className="grid gap-6 md:grid-cols-2">
            {OFFRES.map((o, i) => (
              <RevealWrapper key={o.title} delay={i * 90}>
                <div
                  className="card-cel flex h-full flex-col p-9"
                  style={
                    o.featured
                      ? { borderColor: 'var(--card-border-strong)', background: 'linear-gradient(135deg, #FFFFFF 55%, #EBF4FC 100%)' }
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
                    <span className="chip">{o.badge}</span>
                  </div>
                  <h2 className="mt-5 text-[22px]">{o.title}</h2>
                  <p className="mt-3 text-[15px] leading-relaxed text-[var(--text-secondary)]">{o.desc}</p>
                  <ul className="mt-5 space-y-2">
                    {o.points.map((p) => (
                      <li key={p} className="flex items-center gap-2.5 text-[14px] text-[var(--text-secondary)]">
                        <span className="text-[13px] font-bold text-[var(--blue)]" aria-hidden>
                          ✓
                        </span>
                        {p}
                      </li>
                    ))}
                  </ul>
                  <div className="mt-auto pt-7">
                    <Link href={o.href} className={o.featured ? 'btn-primary' : 'btn-ghost'}>
                      {o.cta} <span aria-hidden>→</span>
                    </Link>
                  </div>
                </div>
              </RevealWrapper>
            ))}
          </div>
        </div>
      </section>

      <section className="section section-mist">
        <div className="container-cel text-center">
          <RevealWrapper>
            <h2 className="text-[clamp(26px,3.4vw,40px)]">
              Pas sûr de ce qu&apos;il vous faut ?
            </h2>
            <p className="mx-auto mt-4 max-w-[500px] text-[16px] text-[var(--text-secondary)]">
              Décrivez-nous votre activité : nous vous orientons vers la bonne solution,
              sans engagement.
            </p>
            <div className="mt-8">
              <Link href="/contact" className="btn-primary">
                Demander conseil <span aria-hidden>→</span>
              </Link>
            </div>
          </RevealWrapper>
        </div>
      </section>
    </>
  );
}
