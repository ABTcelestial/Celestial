'use client';
import { useRef, useState } from 'react';

const faqs = [
  {
    q: "La licence est-elle vraiment unique, sans abonnement ?",
    a: "Oui. Vous achetez une licence perpétuelle qui vous appartient. Aucun abonnement mensuel n'est imposé. Seule la maintenance annuelle (mises à jour + support) est optionnelle après la première année incluse.",
  },
  {
    q: "Où sont hébergées mes données ?",
    a: "Chez vous. Celestial se déploie sur votre serveur (on-premise) ou votre cloud privé. Vous restez seul propriétaire et responsable de vos données — aucune dépendance à un cloud étranger.",
  },
  {
    q: "Combien coûte la maintenance après la première année ?",
    a: "La maintenance annuelle représente environ 18% du prix de la licence et inclut toutes les mises à jour réglementaires (fiscalité, CNAS), les correctifs et le support prioritaire. Elle reste optionnelle.",
  },
  {
    q: "Puis-je commencer avec un seul logiciel puis ajouter les autres ?",
    a: "Absolument. Les suites sont conçues pour s'intégrer. Vous pouvez démarrer avec Compta Process puis ajouter Business ou Pay Process — les données se connectent automatiquement, et le tarif de la suite complète est déduit.",
  },
  {
    q: "Proposez-vous une formation et une migration des données ?",
    a: "Oui. Chaque déploiement inclut un accompagnement : reprise de vos données existantes, paramétrage et formation de vos équipes par nos ingénieurs basés en Algérie.",
  },
];

export function FaqAccordion() {
  const [openIdx, setOpenIdx] = useState<number | null>(0);
  const contentRefs = useRef<(HTMLDivElement | null)[]>([]);

  return (
    <div style={{ maxWidth: 780, margin: '0 auto', display: 'flex', flexDirection: 'column', gap: 12 }}>
      {faqs.map((faq, i) => {
        const isOpen = openIdx === i;
        return (
          <div
            key={i}
            style={{
              border: '1px solid var(--glass-border)', borderRadius: 'var(--r-md)',
              overflow: 'hidden', background: 'var(--glass)',
            }}
          >
            <button
              onClick={() => setOpenIdx(isOpen ? null : i)}
              className="flex items-center justify-between gap-4 w-full text-left"
              style={{ padding: '20px 24px', fontFamily: 'var(--font-display)', fontSize: 16.5, fontWeight: 500, color: 'var(--text-primary)' }}
            >
              {faq.q}
              <span style={{
                flexShrink: 0, color: 'var(--gold)', fontSize: 20,
                transform: isOpen ? 'rotate(45deg)' : 'none',
                transition: 'transform 0.3s',
              }}>+</span>
            </button>
            <div
              ref={el => { contentRefs.current[i] = el; }}
              style={{
                maxHeight: isOpen ? (contentRefs.current[i]?.scrollHeight ?? 400) + 'px' : '0',
                overflow: 'hidden', transition: 'max-height 0.35s var(--ease)',
              }}
            >
              <p style={{ padding: '0 24px 22px', color: 'var(--text-secondary)', fontSize: 14.5, lineHeight: 1.7 }}>{faq.a}</p>
            </div>
          </div>
        );
      })}
    </div>
  );
}
