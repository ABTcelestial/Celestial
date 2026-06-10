import Link from 'next/link';
import { LogoMark } from './LogoMark';

const COLS = [
  {
    title: 'Produits',
    links: [
      { href: '/erp', label: 'ERP BusinessProces' },
      { href: '/food', label: 'Celestial Food' },
      { href: 'https://celestial-shop.example.com', label: 'Celestial Shop (hardware)', external: true },
    ],
  },
  {
    title: 'Entreprise',
    links: [
      { href: '/a-propos', label: 'À propos' },
      { href: '/services', label: 'Services' },
      { href: '/contact', label: 'Contact & devis' },
    ],
  },
  {
    title: 'Ressources',
    links: [
      { href: '/documentation', label: 'Documentation' },
      { href: '/changelogs', label: 'Changelogs' },
    ],
  },
];

export function Footer() {
  return (
    <footer className="section-mist border-t border-[var(--hairline)]">
      <div className="container-cel">
        <div className="grid gap-10 py-16 md:grid-cols-[1.6fr_1fr_1fr_1fr]">
          <div>
            <div className="mb-4 flex items-center gap-3">
              <LogoMark size={30} />
              <span className="font-[family-name:var(--font-display)] text-[18px] font-bold text-[var(--ink)]">
                Celestial
              </span>
            </div>
            <p className="max-w-[300px] text-[14px] leading-relaxed text-[var(--text-muted)]">
              Le guichet unique informatique : matériel, logiciels et services pour les
              entreprises algériennes. Basé à Béjaïa.
            </p>
          </div>

          {COLS.map((col) => (
            <div key={col.title}>
              <h4 className="mb-4 text-[13px] font-semibold uppercase tracking-[0.08em] text-[var(--text-faint)]">
                {col.title}
              </h4>
              <ul className="space-y-2.5">
                {col.links.map((l) => (
                  <li key={l.href}>
                    <Link
                      href={l.href}
                      className="text-[14.5px] text-[var(--text-secondary)] transition-colors hover:text-[var(--blue)]"
                      {...('external' in l && l.external ? { target: '_blank', rel: 'noopener' } : {})}
                    >
                      {l.label}
                    </Link>
                  </li>
                ))}
              </ul>
            </div>
          ))}
        </div>

        <div className="flex flex-col items-center justify-between gap-3 border-t border-[var(--hairline)] py-6 md:flex-row">
          <p className="text-[13px] text-[var(--text-faint)]">
            © {new Date().getFullYear()} Celestial — Béjaïa, Algérie
          </p>
          <p className="text-[13px] text-[var(--text-faint)]">
            Matériel · Logiciels · Services
          </p>
        </div>
      </div>
    </footer>
  );
}
