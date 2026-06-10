import type { Metadata } from 'next';
import Link from 'next/link';
import { RevealWrapper } from '@/components/shared/RevealWrapper';

export const metadata: Metadata = {
  title: 'Celestial Food — caisse et gestion pour restaurants',
  description:
    'Celestial Food : la caisse desktop et la prise de commande mobile pour restaurants, cafés et fast-foods algériens. Bientôt disponible.',
};

const FEATURES = [
  {
    title: 'Caisse complète sur PC',
    desc: 'Menu, tables, commandes, factures et tickets : tout le service se pilote depuis la caisse, même sans internet.',
    icon: '🖥',
  },
  {
    title: 'Prise de commande mobile',
    desc: 'Vos serveurs prennent les commandes sur téléphone, directement à table — la cuisine les reçoit instantanément.',
    icon: '📱',
  },
  {
    title: 'Impression des tickets',
    desc: 'Tickets de caisse et bons de cuisine imprimés automatiquement sur vos imprimantes thermiques.',
    icon: '⎙',
  },
  {
    title: 'Vos chiffres en direct',
    desc: 'Ventes du jour, plats les plus commandés, factures : vous savez exactement comment tourne votre restaurant.',
    icon: '📊',
  },
  {
    title: 'Thèmes personnalisés',
    desc: 'L’interface s’habille aux couleurs de votre établissement.',
    icon: '🎨',
  },
  {
    title: 'Réseau local, zéro cloud',
    desc: 'Tout fonctionne sur le réseau du restaurant : pas d’abonnement, pas de coupure si internet tombe.',
    icon: '🔌',
  },
];

export default function FoodPage() {
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
            <span className="chip mb-6">Bientôt disponible</span>
            <h1 className="max-w-[720px] text-[clamp(34px,5vw,56px)]">
              Celestial Food : <span className="text-grad">votre restaurant, sans friction</span>
            </h1>
            <p className="mt-6 max-w-[600px] text-[17.5px] leading-relaxed text-[var(--text-secondary)]">
              De la commande prise à table sur mobile jusqu&apos;au ticket de cuisine : Celestial
              Food fait circuler le service tout seul, pour les restaurants, cafés et
              fast-foods algériens.
            </p>
            <div className="mt-9 flex flex-wrap gap-4">
              <Link href="/contact" className="btn-primary">
                Être prévenu du lancement <span aria-hidden>→</span>
              </Link>
            </div>
          </RevealWrapper>
        </div>
      </section>

      <section className="section">
        <div className="container-cel">
          <RevealWrapper>
            <span className="chip mb-5">Fonctionnalités</span>
            <h2 className="max-w-[560px] text-[clamp(26px,3.4vw,40px)]">
              Pensé pour le rythme <span className="text-grad">d&apos;un vrai service</span>
            </h2>
          </RevealWrapper>

          <div className="mt-12 grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
            {FEATURES.map((f, i) => (
              <RevealWrapper key={f.title} delay={(i % 3) * 90}>
                <div className="card-cel h-full p-7">
                  <span className="text-[26px]" aria-hidden>
                    {f.icon}
                  </span>
                  <h3 className="mt-4 text-[18px]">{f.title}</h3>
                  <p className="mt-2.5 text-[14.5px] leading-relaxed text-[var(--text-secondary)]">{f.desc}</p>
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
              Vous tenez un restaurant à Béjaïa ?
            </h2>
            <p className="mx-auto mt-4 max-w-[520px] text-[16px] text-[var(--text-secondary)]">
              Devenez l&apos;un de nos premiers établissements pilotes : installation
              accompagnée et conditions privilégiées au lancement.
            </p>
            <div className="mt-8">
              <Link href="/contact" className="btn-primary">
                Devenir pilote <span aria-hidden>→</span>
              </Link>
            </div>
          </RevealWrapper>
        </div>
      </section>
    </>
  );
}
