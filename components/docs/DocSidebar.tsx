'use client';
import { useState } from 'react';
import { cn } from '@/lib/utils';

const navTree = [
  {
    icon: '📊', label: 'Business Process', collapsed: false,
    sections: [
      { label: 'Démarrage', collapsed: false, pages: ['Introduction', 'Installation', 'Première configuration'] },
      { label: 'Ventes & achats', collapsed: true, pages: ['Bons de commande', 'Factures clients', 'Gestion fournisseurs'] },
      { label: 'Stock & inventaire', collapsed: true, pages: ['Articles & références', 'Mouvements de stock'] },
    ],
  },
  {
    icon: '💼', label: 'Pay Process', collapsed: true,
    sections: [
      { label: 'Configuration paie', collapsed: true, pages: ['Barèmes & cotisations', 'Profils salariés'] },
      { label: 'Déclarations', collapsed: true, pages: ['CNAS', 'DAS annuelle'] },
    ],
  },
  {
    icon: '🧮', label: 'Compta Process', collapsed: true,
    sections: [
      { label: 'Plan comptable SCF', collapsed: true, pages: ['Comptes & journaux', 'Écritures'] },
      { label: 'Fiscalité', collapsed: true, pages: ['TVA & G50', 'Liasse fiscale'] },
    ],
  },
];

export function DocSidebar() {
  const [tree, setTree] = useState(navTree);
  const [activePage, setActivePage] = useState('Introduction');

  function toggleL1(li: number) {
    setTree(t => t.map((l1, i) => i === li ? { ...l1, collapsed: !l1.collapsed } : l1));
  }
  function toggleL2(li: number, si: number) {
    setTree(t => t.map((l1, i) => i === li
      ? { ...l1, sections: l1.sections.map((s, j) => j === si ? { ...s, collapsed: !s.collapsed } : s) }
      : l1));
  }

  return (
    <aside style={{ position: 'sticky', top: 'var(--nav-h)', alignSelf: 'start', height: 'calc(100vh - var(--nav-h))', overflowY: 'auto', padding: '26px 18px 60px 28px', borderRight: '1px solid var(--hairline)' }}>
      {/* Search */}
      <div style={{ position: 'relative', marginBottom: 24 }}>
        <svg style={{ position: 'absolute', left: 13, top: '50%', transform: 'translateY(-50%)', color: 'var(--text-muted)' }} width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><circle cx="11" cy="11" r="7"/><path d="M21 21l-4.3-4.3"/></svg>
        <input style={{ width: '100%', padding: '11px 14px 11px 40px', background: 'rgba(255,255,255,0.03)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)', color: 'var(--text-primary)', fontSize: 14 }} placeholder="Rechercher dans la doc…" />
        <kbd style={{ position: 'absolute', right: 10, top: '50%', transform: 'translateY(-50%)', fontFamily: 'var(--font-display)', fontSize: 11, color: 'var(--text-muted)', border: '1px solid var(--hairline)', borderRadius: 5, padding: '2px 6px' }}>⌘K</kbd>
      </div>

      {tree.map((l1, li) => (
        <div key={li} style={{ marginBottom: 6 }}>
          <div
            onClick={() => toggleL1(li)}
            className="flex items-center gap-2 cursor-pointer"
            style={{ padding: '9px 10px', borderRadius: 'var(--r-xs)', fontFamily: 'var(--font-display)', fontWeight: 600, fontSize: 13.5 }}
          >
            <span style={{ width: 22, height: 22, borderRadius: 6, display: 'grid', placeItems: 'center', background: 'var(--glass)', border: '1px solid var(--hairline)', flexShrink: 0, fontSize: 12 }}>{l1.icon}</span>
            {l1.label}
            <svg style={{ marginLeft: 'auto', transition: 'transform 0.25s', transform: l1.collapsed ? 'rotate(-90deg)' : 'none', color: 'var(--text-muted)' }} width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><path d="M6 9l6 6 6-6"/></svg>
          </div>

          {!l1.collapsed && (
            <div style={{ paddingLeft: 8, margin: '2px 0 8px', borderLeft: '1px solid var(--hairline)', marginLeft: 20 }}>
              {l1.sections.map((s, si) => (
                <div key={si}>
                  <div
                    onClick={() => toggleL2(li, si)}
                    className="flex items-center gap-1.5 cursor-pointer"
                    style={{ padding: '7px 10px', fontSize: 13, fontWeight: 500, color: 'var(--text-secondary)', borderRadius: 'var(--r-xs)' }}
                  >
                    {s.label}
                    <svg style={{ marginLeft: 'auto', transition: 'transform 0.25s', transform: s.collapsed ? 'rotate(-90deg)' : 'none', color: 'var(--text-faint)', width: 13 }} viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><path d="M6 9l6 6 6-6"/></svg>
                  </div>
                  {!s.collapsed && (
                    <div className="flex flex-col">
                      {s.pages.map((p, pi) => (
                        <a
                          key={pi}
                          href="#"
                          onClick={e => { e.preventDefault(); setActivePage(p); }}
                          style={{
                            display: 'block', padding: '6px 10px 6px 22px', fontSize: 13,
                            color: activePage === p ? 'var(--gold-bright)' : 'var(--text-muted)',
                            borderRadius: 'var(--r-xs)', borderLeft: `2px solid ${activePage === p ? 'var(--gold)' : 'transparent'}`,
                            marginLeft: 8, background: activePage === p ? 'var(--gold-soft)' : 'transparent',
                            fontWeight: activePage === p ? 500 : 400, transition: 'color 0.2s, background 0.2s',
                          }}
                        >
                          {p}
                        </a>
                      ))}
                    </div>
                  )}
                </div>
              ))}
            </div>
          )}
        </div>
      ))}
    </aside>
  );
}
