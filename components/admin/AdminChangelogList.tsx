'use client';
import { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import type { Database } from '@/lib/supabase/types';

type Changelog = Database['public']['Tables']['changelogs']['Row'];

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

export function AdminChangelogList({ initialData }: { initialData: Changelog[] }) {
  const [data, setData] = useState(initialData);
  const supabase = createClient();
  const router = useRouter();

  async function handleDelete(id: string) {
    if (!confirm('Supprimer cette entrée changelog ?')) return;
    await supabase.from('changelogs').delete().eq('id', id);
    setData(d => d.filter(r => r.id !== id));
    router.refresh();
  }

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: 14 }}>
      {data.length === 0 && (
        <p style={{ color: 'var(--text-muted)', textAlign: 'center', padding: 48 }}>Aucune entrée. <Link href="/celestial-admin-rtabt/changelogs/new" className="text-gold">Créer la première →</Link></p>
      )}
      {data.map(entry => (
        <div key={entry.id} className="card" style={{ padding: '22px 26px' }}>
          <div className="flex items-start justify-between gap-4">
            <div style={{ flex: 1, minWidth: 0 }}>
              <div className="flex items-center gap-2.5 flex-wrap mb-2">
                {entry.version && <span className="badge badge-version">{entry.version}</span>}
                <span style={{ fontSize: 12.5, color: 'var(--text-secondary)' }}>{PRODUIT_LABEL[entry.produit] ?? entry.produit}</span>
                <span style={{ color: 'var(--text-faint)', fontSize: 12.5 }}>
                  {new Date(entry.date).toLocaleDateString('fr-FR', { day: '2-digit', month: 'long', year: 'numeric' })}
                </span>
                <span className={`badge ${entry.type_badge_cls}`}>{entry.type_badge}</span>
              </div>
              <h3 style={{ fontSize: 17, marginBottom: 8 }}>{entry.titre}</h3>
              <div style={{ display: 'flex', flexDirection: 'column', gap: 5 }}>
                {(entry.changements as any[]).slice(0, 2).map((c, i) => (
                  <div key={i} className="flex gap-2 items-center" style={{ fontSize: 13.5, color: 'var(--text-muted)' }}>
                    <span className={`badge ${c.cls}`} style={{ fontSize: 11, padding: '2px 8px', flexShrink: 0 }}>{c.tag}</span>
                    <span style={{ overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }}>{c.texte}</span>
                  </div>
                ))}
                {(entry.changements as any[]).length > 2 && (
                  <span style={{ fontSize: 12, color: 'var(--text-faint)' }}>+ {(entry.changements as any[]).length - 2} autre(s)</span>
                )}
              </div>
            </div>
            <div className="flex gap-2" style={{ flexShrink: 0 }}>
              <Link href={`/celestial-admin-rtabt/changelogs/${entry.id}/edit`} className="btn btn-glass btn-sm">Modifier</Link>
              <button onClick={() => handleDelete(entry.id)} className="btn btn-glass btn-sm" style={{ color: 'var(--danger)' }}>
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><polyline points="3 6 5 6 21 6"/><path d="M19 6l-1 14H6L5 6"/><path d="M9 6V4h6v2"/></svg>
              </button>
            </div>
          </div>
        </div>
      ))}
    </div>
  );
}
