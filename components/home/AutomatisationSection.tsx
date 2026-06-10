import { RevealWrapper } from '@/components/shared/RevealWrapper';

const POINTS = [
  {
    title: 'Fini la double saisie',
    desc: 'Une vente enregistrée met à jour le stock, la facture et la comptabilité en même temps. Vos données circulent toutes seules.',
    icon: '↻',
  },
  {
    title: 'Vos documents en un clic',
    desc: 'Factures, bons, états, situations, étiquettes code-barres : des dizaines de modèles prêts à imprimer, conformes aux usages algériens.',
    icon: '⎙',
  },
  {
    title: 'Vous voyez tout, en direct',
    desc: 'États de stocks, échéanciers, situations financières : la réalité de votre entreprise sous les yeux, sans attendre la fin du mois.',
    icon: '◎',
  },
];

export function AutomatisationSection() {
  return (
    <section className="section section-mist">
      <div className="container-cel">
        <RevealWrapper>
          <span className="chip mb-5">Automatisation</span>
          <h2 className="max-w-[620px] text-[clamp(28px,3.6vw,42px)]">
            Votre entreprise tourne, <span className="text-grad">le système s&apos;occupe du reste</span>
          </h2>
        </RevealWrapper>

        <div className="mt-12 grid gap-6 md:grid-cols-3">
          {POINTS.map((p, i) => (
            <RevealWrapper key={p.title} delay={i * 100}>
              <div className="card-cel h-full p-8">
                <span
                  className="flex h-11 w-11 items-center justify-center rounded-xl text-[20px] text-[var(--blue)]"
                  style={{ background: 'var(--card-tint)', border: '1px solid var(--card-border)' }}
                  aria-hidden
                >
                  {p.icon}
                </span>
                <h3 className="mt-5 text-[19px]">{p.title}</h3>
                <p className="mt-3 text-[15px] leading-relaxed text-[var(--text-secondary)]">{p.desc}</p>
              </div>
            </RevealWrapper>
          ))}
        </div>
      </div>
    </section>
  );
}
