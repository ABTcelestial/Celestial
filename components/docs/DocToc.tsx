'use client';
import { useEffect, useState } from 'react';

const sections = [
  { id: 'prerequis', label: 'Prérequis' },
  { id: 'installation', label: 'Installation' },
  { id: 'config', label: 'Première configuration' },
];

export function DocToc() {
  const [active, setActive] = useState('prerequis');

  useEffect(() => {
    const heads = sections.map(s => document.getElementById(s.id)).filter(Boolean) as HTMLElement[];
    const onScroll = () => {
      let cur = heads[0]?.id ?? 'prerequis';
      heads.forEach(h => { if (window.scrollY >= h.offsetTop - 110) cur = h.id; });
      setActive(cur);
    };
    window.addEventListener('scroll', onScroll, { passive: true });
    return () => window.removeEventListener('scroll', onScroll);
  }, []);

  return (
    <aside style={{ position: 'sticky', top: 'calc(var(--nav-h) + 38px)', alignSelf: 'start', padding: '0 24px', fontSize: 13 }}>
      <div style={{ fontFamily: 'var(--font-display)', fontSize: 12, letterSpacing: '0.1em', textTransform: 'uppercase', color: 'var(--text-muted)', marginBottom: 14 }}>
        Sur cette page
      </div>
      {sections.map(s => (
        <a
          key={s.id}
          href={`#${s.id}`}
          onClick={e => { e.preventDefault(); document.getElementById(s.id)?.scrollIntoView({ behavior: 'smooth', block: 'start' }); }}
          style={{
            display: 'block', padding: '5px 0 5px 14px',
            color: active === s.id ? 'var(--gold)' : 'var(--text-muted)',
            borderLeft: `2px solid ${active === s.id ? 'var(--gold)' : 'var(--hairline)'}`,
            transition: 'color 0.2s, border-color 0.2s',
          }}
        >
          {s.label}
        </a>
      ))}
    </aside>
  );
}
