'use client';
import { useMemo, useState } from 'react';
import type { Database } from '@/lib/supabase/types';

type Changelog = Database['public']['Tables']['changelogs']['Row'];

/* Produits actuels + anciens slugs encore présents en base */
const PRODUIT_LABEL: Record<string, string> = {
  erp: '⬡ ERP BusinessProces',
  food: '🍽 Celestial Food',
  shop: '🖥 Celestial Shop',
  website: '🌐 Site Celestial',
  // hérités
  business: '⬡ ERP BusinessProces',
  compta: '⬡ ERP BusinessProces',
  pay: '⬡ ERP BusinessProces',
  company: '✦ Celestial',
};

const DOT_COLOR: Record<string, string> = {
  erp: 'var(--blue)',
  food: 'var(--success)',
  shop: 'var(--warning)',
  website: 'var(--sky-bright)',
};

function label(produit: string) {
  return PRODUIT_LABEL[produit] ?? produit;
}

export function ChangelogTimeline({ initialData }: { initialData: Changelog[] }) {
  const [filter, setFilter] = useState('all');

  // chips construits depuis les données réelles (regroupées par label)
  const chips = useMemo(() => {
    const seen = new Map<string, string>();
    initialData.forEach((e) => {
      const l = label(e.produit).replace(/^\S+\s/, '');
      if (!seen.has(l)) seen.set(l, e.produit);
    });
    return [{ key: 'all', text: 'Tout' }, ...[...seen.entries()].map(([text, key]) => ({ key, text }))];
  }, [initialData]);

  const visible = initialData.filter((e) => filter === 'all' || label(e.produit) === label(filter));

  return (
    <>
      <div className="mt-9 flex flex-wrap gap-2.5 pb-1.5">
        {chips.map((c) => {
          const active = filter === c.key;
          return (
            <button
              key={c.key}
              onClick={() => setFilter(c.key)}
              className="rounded-full px-[18px] py-[9px] text-[14px] transition-all"
              style={{
                fontFamily: 'var(--font-display)',
                fontWeight: active ? 600 : 500,
                border: active ? '1px solid transparent' : '1px solid var(--card-border)',
                background: active ? 'var(--grad-sky)' : 'var(--card)',
                color: active ? '#FFFFFF' : 'var(--text-secondary)',
              }}
            >
              {c.text}
            </button>
          );
        })}
      </div>

      {visible.length === 0 ? (
        <p className="py-16 text-center text-[var(--text-muted)]">Aucune entrée pour ce filtre.</p>
      ) : (
        <div className="relative mt-12 pl-[30px]">
          <div
            className="absolute bottom-0 left-[7px] top-2 w-[2px]"
            style={{ background: 'linear-gradient(180deg, var(--sky-bright), var(--blue) 60%, transparent)' }}
          />

          {visible.map((entry) => {
            const changements = (entry.changements ?? []) as { tag?: string; texte?: string }[];
            const dot = DOT_COLOR[entry.produit] ?? 'var(--blue)';
            return (
              <div key={entry.id} className="relative pb-12">
                <div
                  className="absolute -left-[30px] top-1.5 h-4 w-4 rounded-full bg-white"
                  style={{ border: `2px solid ${dot}`, boxShadow: `0 0 0 4px ${dot}22` }}
                />

                <div className="mb-3.5 flex flex-wrap items-center gap-3">
                  {entry.version && (
                    <span
                      className="rounded-full px-3 py-1 text-[12.5px] font-semibold"
                      style={{ background: 'var(--card-tint)', border: '1px solid var(--card-border)', color: 'var(--blue-deep)', fontFamily: 'var(--font-display)' }}
                    >
                      {entry.version}
                    </span>
                  )}
                  <span className="text-[13px] font-medium text-[var(--text-secondary)]">{label(entry.produit)}</span>
                  <span className="text-[13px] text-[var(--text-muted)]" style={{ fontFamily: 'var(--font-display)' }}>
                    {new Date(entry.date).toLocaleDateString('fr-FR', { day: 'numeric', month: 'long', year: 'numeric' })}
                  </span>
                  {entry.type_badge && (
                    <span
                      className="rounded-full px-3 py-1 text-[12px] font-semibold uppercase tracking-wide"
                      style={{ background: 'var(--bg-mist)', color: 'var(--blue-deep)' }}
                    >
                      {entry.type_badge}
                    </span>
                  )}
                </div>

                <div className="card-cel p-7">
                  <h3 className="text-[20px]">{entry.titre}</h3>
                  <ul className="mt-4 space-y-3">
                    {changements.map((c, j) => (
                      <li key={j} className="flex items-start gap-3 text-[14.5px] leading-relaxed text-[var(--text-secondary)]">
                        {c.tag && (
                          <span
                            className="mt-0.5 shrink-0 rounded-md px-2 py-0.5 text-[11.5px] font-bold uppercase"
                            style={{ background: 'var(--card-tint)', color: 'var(--blue)' }}
                          >
                            {c.tag}
                          </span>
                        )}
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
