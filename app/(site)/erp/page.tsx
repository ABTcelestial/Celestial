import type { Metadata } from 'next';
import Link from 'next/link';
import { RevealWrapper } from '@/components/shared/RevealWrapper';

export const metadata: Metadata = {
  title: 'ERP BusinessProces — Celestial',
  description:
    'Le progiciel de gestion intégré de Celestial : marchés, stocks, comptabilité, facturation, paie et logistique. Déjà déployé en entreprise, en licence unique.',
};

const MODULES = [
  {
    title: 'Marchés & projets',
    desc: 'Suivi complet de vos marchés : détails, situations, devis, financement, import Excel et récapitulatifs par structure.',
    icon: '🏗',
  },
  {
    title: 'Stocks & inventaires',
    desc: 'États de stocks en temps réel, approvisionnements, fiches et feuilles d’inventaire, étiquettes code-barres.',
    icon: '📦',
  },
  {
    title: 'Comptabilité',
    desc: 'Plan comptable, barèmes de comptabilisation par compte, comptabilité transitoire et travaux de fin d’année.',
    icon: '🧮',
  },
  {
    title: 'Finance & trésorerie',
    desc: 'Ressources financières, échéanciers de paiement, prélèvements, ordres de virement, chèques et bordereaux bancaires.',
    icon: '🏦',
  },
  {
    title: 'Facturation commerciale',
    desc: 'Devis, factures (multiples modèles), bons de caisse, bons quantitatifs et valorisés — prêts à imprimer.',
    icon: '🧾',
  },
  {
    title: 'Paie & effectifs',
    desc: 'Gestion des effectifs et attestations de versement, intégrée au reste de votre gestion.',
    icon: '👥',
  },
  {
    title: 'Logistique & pesée',
    desc: 'Bons de route, moyens de transport et pont bascule : tickets de pesée grand et petit modèle, directement depuis le système.',
    icon: '🚛',
  },
  {
    title: 'Générateur d’états',
    desc: 'Construisez vos propres rapports, tableaux et diagrammes : le système s’adapte à votre façon de piloter.',
    icon: '📊',
  },
];

const ARGUMENTS = [
  {
    title: 'Éprouvé sur le terrain',
    desc: 'BusinessProces est déjà déployé et utilisé en entreprise, en conditions réelles, tous les jours.',
  },
  {
    title: 'Vos données restent chez vous',
    desc: 'Architecture client/serveur sur votre réseau local : pas de cloud obligatoire, pas de dépendance à internet.',
  },
  {
    title: 'Licence unique, sans abonnement',
    desc: 'Vous achetez votre licence une fois. Pas de mensualités, pas de surprise.',
  },
  {
    title: 'Support local à Béjaïa',
    desc: 'Installation, formation et assistance par l’équipe qui a conçu le logiciel — pas un call-center.',
  },
];

export default function ErpPage() {
  return (
    <>
      {/* Hero ERP */}
      <section
        className="relative overflow-hidden pt-[var(--nav-h)]"
        style={{
          background:
            'radial-gradient(900px 500px at 85% 20%, rgba(79,195,247,0.18), transparent 65%), linear-gradient(180deg, #FFFFFF 0%, #F2F9FE 100%)',
        }}
      >
        <div className="container-cel section">
          <RevealWrapper>
            <span className="chip mb-6">Produit phare — déjà déployé en entreprise</span>
            <h1 className="max-w-[760px] text-[clamp(34px,5vw,56px)]">
              ERP BusinessProces : <span className="text-grad">votre gestion entière, automatisée</span>
            </h1>
            <p className="mt-6 max-w-[620px] text-[17.5px] leading-relaxed text-[var(--text-secondary)]">
              Des marchés aux stocks, de la facturation à la paie, jusqu&apos;au ticket du pont
              bascule : BusinessProces relie tous les services de votre entreprise dans un
              seul système — robuste, local et conforme aux usages algériens.
            </p>
            <div className="mt-9 flex flex-wrap gap-4">
              <Link href="/contact" className="btn-primary">
                Demander un devis <span aria-hidden>→</span>
              </Link>
              <Link href="#modules" className="btn-ghost">
                Voir les modules
              </Link>
            </div>
          </RevealWrapper>
        </div>
      </section>

      {/* Modules */}
      <section id="modules" className="section">
        <div className="container-cel">
          <RevealWrapper>
            <span className="chip mb-5">Modules</span>
            <h2 className="max-w-[600px] text-[clamp(26px,3.4vw,40px)]">
              Tout ce que votre entreprise gère, <span className="text-grad">il le gère</span>
            </h2>
          </RevealWrapper>

          <div className="mt-12 grid gap-6 sm:grid-cols-2 lg:grid-cols-4">
            {MODULES.map((m, i) => (
              <RevealWrapper key={m.title} delay={(i % 4) * 80}>
                <div className="card-cel h-full p-7">
                  <span className="text-[26px]" aria-hidden>
                    {m.icon}
                  </span>
                  <h3 className="mt-4 text-[17.5px]">{m.title}</h3>
                  <p className="mt-2.5 text-[14px] leading-relaxed text-[var(--text-secondary)]">{m.desc}</p>
                </div>
              </RevealWrapper>
            ))}
          </div>
        </div>
      </section>

      {/* Arguments */}
      <section className="section section-mist">
        <div className="container-cel">
          <RevealWrapper>
            <span className="chip mb-5">Pourquoi BusinessProces</span>
            <h2 className="max-w-[600px] text-[clamp(26px,3.4vw,40px)]">
              Un ERP qui a déjà <span className="text-grad">fait ses preuves</span>
            </h2>
          </RevealWrapper>

          <div className="mt-12 grid gap-6 md:grid-cols-2">
            {ARGUMENTS.map((a, i) => (
              <RevealWrapper key={a.title} delay={i * 90}>
                <div className="card-cel flex h-full gap-5 p-8">
                  <span
                    className="mt-1 flex h-9 w-9 shrink-0 items-center justify-center rounded-full text-[16px] font-bold text-white"
                    style={{ background: 'var(--grad-sky)' }}
                    aria-hidden
                  >
                    ✓
                  </span>
                  <div>
                    <h3 className="text-[18.5px]">{a.title}</h3>
                    <p className="mt-2 text-[15px] leading-relaxed text-[var(--text-secondary)]">{a.desc}</p>
                  </div>
                </div>
              </RevealWrapper>
            ))}
          </div>
        </div>
      </section>

      {/* CTA final */}
      <section className="section">
        <div className="container-cel text-center">
          <RevealWrapper>
            <h2 className="text-[clamp(26px,3.4vw,40px)]">
              Voyez ce qu&apos;il donnerait <span className="text-grad">dans votre entreprise</span>
            </h2>
            <p className="mx-auto mt-4 max-w-[520px] text-[16px] text-[var(--text-secondary)]">
              Décrivez-nous votre activité : nous revenons vers vous avec une démonstration
              et un devis adapté, en dinars.
            </p>
            <div className="mt-8">
              <Link href="/contact" className="btn-primary">
                Demander un devis gratuit <span aria-hidden>→</span>
              </Link>
            </div>
          </RevealWrapper>
        </div>
      </section>
    </>
  );
}
