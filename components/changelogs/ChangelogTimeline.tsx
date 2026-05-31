'use client';
import { useState } from 'react';
import type { Database } from '@/lib/supabase/types';

type Changelog = Database['public']['Tables']['changelogs']['Row'];
type Filter = 'all' | 'business' | 'pay' | 'compta' | 'company';

const dotColor: Record<string, string> = {
  business: 'var(--purple-glow)',
  compta: 'var(--gold)',
  pay: 'var(--info)',
  company: 'var(--success)',
};

const produitLabel: Record<string, string> = {
  business: '📊 Business Process',
  compta: '🧮 Compta Process',
  pay: '💼 Pay Process',
  company: '⭐ Entreprise',
};

export function ChangelogTimeline({ initialData }: { initialData: Changelog[] }) {
  const [filter, setFilter] = useState<Filter>('all');

  const chips: { key: Filter; label: string }[] = [
    { key: 'all', label: 'Tout' },
    { key: 'business', label: 'Business Process' },
    { key: 'pay', label: 'Pay Process' },
    { key: 'compta', label: 'Compta Process' },
    { key: 'company', label: 'Entreprise' },
  ];

  const visible = initialData.filter(e => filter === 'all' || e.produit === filter);

  return (
    <>
      <div className="flex gap-2.5 flex-wrap mt-9 pb-1.5">
        {chips.map(c => (
          <button
            key={c.key}
            onClick={() => setFilter(c.key)}
            style={{
              fontFamily: 'var(--font-display)', fontSize: 14, fontWeight: filter === c.key ? 600 : 500,
              padding: '9px 18px', borderRadius: 'var(--r-pill)',
              border: filter === c.key ? '1px solid transparent' : '1px solid var(--glass-border)',
              background: filter === c.key ? 'var(--grad-gold)' : 'var(--glass)',
              color: filter === c.key ? '#1A1206' : 'var(--text-secondary)',
              transition: 'all 0.25s', cursor: 'pointer',
            }}
          >
            {c.label}
          </button>
        ))}
      </div>

      {visible.length === 0 ? (
        <p style={{ color: 'var(--text-muted)', textAlign: 'center', padding: '60px 0' }}>Aucune entrée pour ce filtre.</p>
      ) : (
        <div style={{ position: 'relative', marginTop: 50, paddingLeft: 30 }}>
          <div style={{ position: 'absolute', left: 7, top: 8, bottom: 0, width: 2, background: 'linear-gradient(180deg, var(--purple-bright), var(--blue-deep) 60%, transparent)' }} />

          {visible.map((entry, i) => {
            const changements = entry.changements as any[];
            return (
              <div key={entry.id} style={{ position: 'relative', paddingBottom: 48 }}>
                <div style={{ position: 'absolute', left: -30, top: 6, width: 16, height: 16, borderRadius: '50%', background: 'var(--bg-900)', border: `2px solid ${dotColor[entry.produit] ?? 'var(--purple-glow)'}`, boxShadow: `0 0 0 4px ${dotColor[entry.produit] ?? 'var(--purple-glow)'}22` }} />

                <div className="flex items-center gap-3 flex-wrap mb-3.5">
                  {entry.version && <span className="badge badge-version">{entry.version}</span>}
                  <span style={{ fontSize: 12.5, color: 'var(--text-secondary)' }}>{produitLabel[entry.produit] ?? entry.produit}</span>
                  <span style={{ fontFamily: 'var(--font-display)', fontSize: 13, color: 'var(--text-muted)' }}>
                    {new Date(entry.date).toLocaleDateString('fr-FR', { day: 'numeric', month: 'long', year: 'numeric' })}
                  </span>
                  <span className={`badge ${entry.type_badge_cls} badge-dot`}>{entry.type_badge}</span>
                </div>

                <div className="card" style={{ padding: '26px 28px' }}>
                  <h3 style={{ fontSize: 20, marginBottom: 4 }}>{entry.titre}</h3>
                  <ul style={{ listStyle: 'none', marginTop: 18, display: 'flex', flexDirection: 'column', gap: 12 }}>
                    {changements.map((c, j) => (
                      <li key={j} className="flex gap-3 items-start" style={{ fontSize: 14.5, color: 'var(--text-secondary)', lineHeight: 1.55 }}>
                        <span className={`badge ${c.cls}`} style={{ flexShrink: 0, marginTop: 1 }}>{c.tag}</span>
                        {c.texte}
                      </li>
                    ))}
                  </ul>
                </div>
              </div>
            );
          })}
        </div>
      )}
    </>
  );
}
