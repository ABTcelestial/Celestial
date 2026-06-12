'use client';
import { useState, useEffect, useRef } from 'react';
import type { Database } from '@/lib/supabase/types';

type DocPage = Database['public']['Tables']['doc_pages']['Row'];

const PRODUIT_LABEL: Record<string, string> = {
  erp:       '⬡ ERP BusinessProces',
  food:      '🍽 Celestial Food',
  shop:      '🖥 Celestial Shop',
  website:   '🌐 Site Celestial',
  chantiers: '🏗 Celestial Chantiers',
  // hérités
  business: '⬡ ERP BusinessProces',
  compta:   '⬡ ERP BusinessProces',
  pay:      '⬡ ERP BusinessProces',
};
function produitLabel(produit: string) {
  return PRODUIT_LABEL[produit] ?? produit;
}

interface Tree {
  [produit: string]: {
    [section: string]: { sectionOrdre: number; pages: DocPage[] };
  };
}

function buildTree(pages: DocPage[]): Tree {
  const tree: Tree = {};
  pages.forEach(p => {
    if (!tree[p.produit]) tree[p.produit] = {};
    if (!tree[p.produit][p.section]) tree[p.produit][p.section] = { sectionOrdre: p.section_ordre, pages: [] };
    tree[p.produit][p.section].pages.push(p);
  });
  return tree;
}

export function DocViewer({ pages }: { pages: DocPage[] }) {
  const firstPage = pages[0] ?? null;
  const [activePage, setActivePage] = useState<DocPage | null>(firstPage);
  const [collapsed, setCollapsed] = useState<Record<string, boolean>>({});
  const [activeHeading, setActiveHeading] = useState('');
  const [sidebarOpen, setSidebarOpen] = useState(false);
  const contentRef = useRef<HTMLDivElement>(null);

  const tree = buildTree(pages);

  const tocHeadings: { id: string; text: string }[] = [];
  if (activePage) {
    const re = /<h2[^>]*id="([^"]+)"[^>]*>(.*?)<\/h2>/gi;
    let m;
    while ((m = re.exec(activePage.contenu)) !== null) {
      tocHeadings.push({ id: m[1], text: m[2].replace(/<[^>]*>/g, '') });
    }
  }

  useEffect(() => {
    if (!contentRef.current) return;
    const heads = tocHeadings.map(h => document.getElementById(h.id)).filter(Boolean) as HTMLElement[];
    const onScroll = () => {
      let cur = heads[0]?.id ?? '';
      heads.forEach(h => { if (window.scrollY >= h.offsetTop - 110) cur = h.id; });
      setActiveHeading(cur);
    };
    window.addEventListener('scroll', onScroll, { passive: true });
    return () => window.removeEventListener('scroll', onScroll);
  }, [activePage]);

  // Lock body scroll when mobile sidebar is open
  useEffect(() => {
    document.body.style.overflow = sidebarOpen ? 'hidden' : '';
    return () => { document.body.style.overflow = ''; };
  }, [sidebarOpen]);

  function toggleProduit(key: string) {
    setCollapsed(c => ({ ...c, ['p_' + key]: !c['p_' + key] }));
  }
  function toggleSection(key: string) {
    setCollapsed(c => ({ ...c, ['s_' + key]: !c['s_' + key] }));
  }

  function openPage(page: DocPage) {
    setActivePage(page);
    setSidebarOpen(false);
    window.scrollTo({ top: 0 });
  }

  if (pages.length === 0) {
    return <div style={{ padding: '80px 28px', textAlign: 'center', color: 'var(--text-muted)' }}>Aucune page de documentation disponible.</div>;
  }

  const SidebarContent = () => (
    <>
      <div style={{ position: 'relative', marginBottom: 24 }}>
        <svg style={{ position: 'absolute', left: 13, top: '50%', transform: 'translateY(-50%)', color: 'var(--text-muted)' }} width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><circle cx="11" cy="11" r="7"/><path d="M21 21l-4.3-4.3"/></svg>
        <input style={{ width: '100%', padding: '11px 14px 11px 40px', background: 'var(--bg-soft)', border: '1px solid var(--card-border)', borderRadius: 'var(--r-sm)', color: 'var(--text-primary)', fontSize: 14 }} placeholder="Rechercher…" />
      </div>

      {Object.entries(tree).map(([produit, sections]) => {
        const pCollapsed = collapsed['p_' + produit];
        return (
          <div key={produit} style={{ marginBottom: 6 }}>
            <div onClick={() => toggleProduit(produit)} className="flex items-center gap-2 cursor-pointer" style={{ padding: '9px 10px', borderRadius: 'var(--r-xs)', fontFamily: 'var(--font-display)', fontWeight: 600, fontSize: 13.5 }}>
              <span style={{ width: 22, height: 22, borderRadius: 6, display: 'grid', placeItems: 'center', background: 'var(--glass)', border: '1px solid var(--hairline)', flexShrink: 0, fontSize: 12 }}>{produitLabel(produit).slice(0, 2)}</span>
              {produitLabel(produit).slice(3) || produitLabel(produit)}
              <svg style={{ marginLeft: 'auto', transition: 'transform 0.25s', transform: pCollapsed ? 'rotate(-90deg)' : 'none', color: 'var(--text-muted)' }} width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><path d="M6 9l6 6 6-6"/></svg>
            </div>
            {!pCollapsed && (
              <div style={{ paddingLeft: 8, margin: '2px 0 8px', borderLeft: '1px solid var(--hairline)', marginLeft: 20 }}>
                {Object.entries(sections).sort((a, b) => a[1].sectionOrdre - b[1].sectionOrdre).map(([section, { pages: sPages }]) => {
                  const sKey = produit + '_' + section;
                  const sCollapsed = collapsed['s_' + sKey];
                  return (
                    <div key={section}>
                      <div onClick={() => toggleSection(sKey)} className="flex items-center gap-1.5 cursor-pointer" style={{ padding: '7px 10px', fontSize: 13, fontWeight: 500, color: 'var(--text-secondary)', borderRadius: 'var(--r-xs)' }}>
                        {section}
                        <svg style={{ marginLeft: 'auto', transition: 'transform 0.25s', transform: sCollapsed ? 'rotate(-90deg)' : 'none', color: 'var(--text-faint)', width: 13 }} viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><path d="M6 9l6 6 6-6"/></svg>
                      </div>
                      {!sCollapsed && sPages.sort((a, b) => a.ordre - b.ordre).map(page => (
                        <a key={page.id} href="#" onClick={e => { e.preventDefault(); openPage(page); }}
                          style={{ display: 'block', padding: '6px 10px 6px 22px', fontSize: 13, color: activePage?.id === page.id ? 'var(--gold-bright)' : 'var(--text-muted)', borderRadius: 'var(--r-xs)', borderLeft: `2px solid ${activePage?.id === page.id ? 'var(--gold)' : 'transparent'}`, marginLeft: 8, background: activePage?.id === page.id ? 'var(--gold-soft)' : 'transparent', fontWeight: activePage?.id === page.id ? 500 : 400, transition: 'all 0.2s' }}>
                          {page.titre}
                        </a>
                      ))}
                    </div>
                  );
                })}
              </div>
            )}
          </div>
        );
      })}
    </>
  );

  return (
    <>
      <style>{`
        .doc-grid {
          display: grid;
          grid-template-columns: 296px 1fr 220px;
          max-width: 1440px;
          margin: 0 auto;
          padding-top: var(--nav-h);
        }
        .doc-sidebar-desktop {
          position: sticky;
          top: var(--nav-h);
          align-self: start;
          height: calc(100vh - var(--nav-h));
          overflow-y: auto;
          padding: 26px 18px 60px 28px;
          border-right: 1px solid var(--hairline);
        }
        .doc-toc {
          position: sticky;
          top: calc(var(--nav-h) + 38px);
          align-self: start;
          padding: 0 24px;
          font-size: 13px;
        }
        .doc-mobile-bar { display: none; }
        .doc-sidebar-overlay-backdrop { display: none; }
        .doc-sidebar-overlay {
          display: none;
          position: fixed;
          top: 0; right: 0; bottom: 0;
          width: min(340px, 90vw);
          background: #fff;
          z-index: 60;
          padding: 20px 20px 40px;
          overflow-y: auto;
          box-shadow: -8px 0 32px rgba(0,0,0,0.12);
          transform: translateX(100%);
          transition: transform 0.26s cubic-bezier(.4,0,.2,1);
        }
        .doc-sidebar-overlay.open {
          transform: translateX(0);
        }
        .doc-sidebar-overlay-backdrop.open {
          display: block;
          position: fixed;
          inset: 0;
          background: rgba(0,0,0,0.35);
          z-index: 55;
          backdrop-filter: blur(2px);
        }

        @media (max-width: 1100px) {
          .doc-grid { grid-template-columns: 260px 1fr; }
          .doc-toc { display: none; }
        }
        @media (max-width: 768px) {
          .doc-grid { grid-template-columns: 1fr; }
          .doc-sidebar-desktop { display: none; }
          .doc-toc { display: none; }
          .doc-mobile-bar { display: flex; }
          .doc-sidebar-overlay { display: block; }
        }
      `}</style>

      <div className="doc-grid">
        {/* Sidebar — desktop */}
        <aside className="doc-sidebar-desktop">
          <SidebarContent />
        </aside>

        {/* Main content */}
        <main ref={contentRef} style={{ padding: 'clamp(20px,5vw,80px)', paddingTop: 38, paddingBottom: 100, maxWidth: 880, minWidth: 0 }}>
          {/* Mobile nav bar */}
          <div className="doc-mobile-bar" style={{ alignItems: 'center', justifyContent: 'space-between', marginBottom: 20, padding: '10px 0', borderBottom: '1px solid var(--hairline)' }}>
            <button
              onClick={() => setSidebarOpen(true)}
              style={{ display: 'flex', alignItems: 'center', gap: 8, padding: '8px 14px', borderRadius: 'var(--r-pill)', border: '1px solid var(--card-border)', background: 'var(--card)', fontSize: 13.5, fontWeight: 500, cursor: 'pointer', color: 'var(--text-secondary)' }}
            >
              <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><line x1="3" y1="6" x2="21" y2="6"/><line x1="3" y1="12" x2="21" y2="12"/><line x1="3" y1="18" x2="21" y2="18"/></svg>
              Navigation
            </button>
            {activePage && (
              <span style={{ fontSize: 12, color: 'var(--text-faint)', maxWidth: '55%', overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }}>
                {activePage.titre}
              </span>
            )}
          </div>

          {activePage && (
            <>
              <div className="flex items-center gap-2 flex-wrap" style={{ fontSize: 13, color: 'var(--text-muted)', marginBottom: 26 }}>
                <span>{produitLabel(activePage.produit)}</span>
                <span style={{ color: 'var(--text-faint)' }}>/</span>
                <span>{activePage.section}</span>
                <span style={{ color: 'var(--text-faint)' }}>/</span>
                <span style={{ color: 'var(--text-secondary)' }}>{activePage.titre}</span>
              </div>
              <h1 style={{ fontSize: 'clamp(28px,4vw,44px)', letterSpacing: '-0.025em' }}>{activePage.titre}</h1>
              <div
                dangerouslySetInnerHTML={{ __html: activePage.contenu }}
                style={{ marginTop: 28, color: 'var(--text-secondary)', lineHeight: 1.75, fontSize: 15 }}
              />
            </>
          )}
        </main>

        {/* TOC — desktop/tablet */}
        <aside className="doc-toc">
          {tocHeadings.length > 0 && (
            <>
              <div style={{ fontFamily: 'var(--font-display)', fontSize: 12, letterSpacing: '0.1em', textTransform: 'uppercase', color: 'var(--text-muted)', marginBottom: 14 }}>Sur cette page</div>
              {tocHeadings.map(h => (
                <a key={h.id} href={`#${h.id}`}
                  onClick={e => { e.preventDefault(); document.getElementById(h.id)?.scrollIntoView({ behavior: 'smooth', block: 'start' }); }}
                  style={{ display: 'block', padding: '5px 0 5px 14px', color: activeHeading === h.id ? 'var(--gold)' : 'var(--text-muted)', borderLeft: `2px solid ${activeHeading === h.id ? 'var(--gold)' : 'var(--hairline)'}`, transition: 'color 0.2s, border-color 0.2s' }}>
                  {h.text}
                </a>
              ))}
            </>
          )}
        </aside>
      </div>

      {/* Mobile sidebar overlay */}
      <div
        className={`doc-sidebar-overlay-backdrop${sidebarOpen ? ' open' : ''}`}
        onClick={() => setSidebarOpen(false)}
      />
      <div className={`doc-sidebar-overlay${sidebarOpen ? ' open' : ''}`}>
        <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: 20 }}>
          <span style={{ fontFamily: 'var(--font-display)', fontWeight: 700, fontSize: 15 }}>Navigation</span>
          <button
            onClick={() => setSidebarOpen(false)}
            style={{ padding: 6, color: 'var(--text-muted)', border: 'none', background: 'none', cursor: 'pointer' }}
          >
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><path d="M18 6 6 18M6 6l12 12"/></svg>
          </button>
        </div>
        <SidebarContent />
      </div>
    </>
  );
}
