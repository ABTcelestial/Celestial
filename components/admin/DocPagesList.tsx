'use client';
import { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import type { Database } from '@/lib/supabase/types';

type DocPage = Database['public']['Tables']['doc_pages']['Row'];

const PRODUIT_LABEL: Record<string, string> = {
  business: '📊 Business Process',
  compta: '🧮 Compta Process',
  pay: '💼 Pay Process',
};

export function DocPagesList({ initialData }: { initialData: DocPage[] }) {
  const [data, setData] = useState(initialData);
  const supabase = createClient();
  const router = useRouter();

  async function handleDelete(id: string) {
    if (!confirm('Supprimer cette page ?')) return;
    await supabase.from('doc_pages').delete().eq('id', id);
    setData(d => d.filter(p => p.id !== id));
    router.refresh();
  }

  // Group by produit → section
  const grouped: Record<string, Record<string, DocPage[]>> = {};
  data.forEach(p => {
    if (!grouped[p.produit]) grouped[p.produit] = {};
    if (!grouped[p.produit][p.section]) grouped[p.produit][p.section] = [];
    grouped[p.produit][p.section].push(p);
  });

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: 28 }}>
      {data.length === 0 && (
        <p style={{ color: 'var(--text-muted)', textAlign: 'center', padding: 48 }}>
          Aucune page. <Link href="/celestial-admin-rtabt/documentation/new" style={{ color: 'var(--gold)' }}>Créer la première →</Link>
        </p>
      )}
      {Object.entries(grouped).map(([produit, sections]) => (
        <div key={produit}>
          <div style={{ fontFamily: 'var(--font-display)', fontSize: 15, fontWeight: 600, marginBottom: 14, color: 'var(--text-primary)', display: 'flex', alignItems: 'center', gap: 8 }}>
            {PRODUIT_LABEL[produit] ?? produit}
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: 10, paddingLeft: 16, borderLeft: '2px solid var(--hairline)' }}>
            {Object.entries(sections).map(([section, pages]) => (
              <div key={section}>
                <div style={{ fontSize: 12.5, color: 'var(--text-muted)', fontFamily: 'var(--font-display)', textTransform: 'uppercase', letterSpacing: '0.08em', marginBottom: 8, marginTop: 4 }}>
                  {section}
                </div>
                <div style={{ display: 'flex', flexDirection: 'column', gap: 8 }}>
                  {pages.map(p => (
                    <div key={p.id} className="card flex items-center justify-between gap-4" style={{ padding: '14px 20px' }}>
                      <div style={{ flex: 1, minWidth: 0 }}>
                        <div style={{ fontWeight: 600, fontSize: 15, whiteSpace: 'nowrap', overflow: 'hidden', textOverflow: 'ellipsis' }}>{p.titre}</div>
                        <div style={{ color: 'var(--text-muted)', fontSize: 12.5, marginTop: 2 }}>
                          Ordre {p.ordre} · {p.contenu.length > 60 ? p.contenu.replace(/<[^>]*>/g, '').slice(0, 60) + '…' : p.contenu.replace(/<[^>]*>/g, '')}
                        </div>
                      </div>
                      <div className="flex gap-2">
                        <Link href={`/celestial-admin-rtabt/documentation/${p.id}/edit`} className="btn btn-glass btn-sm">Modifier</Link>
                        <button onClick={() => handleDelete(p.id)} className="btn btn-glass btn-sm" style={{ color: 'var(--danger)' }}>
                          <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><polyline points="3 6 5 6 21 6"/><path d="M19 6l-1 14H6L5 6"/><path d="M9 6V4h6v2"/></svg>
                        </button>
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            ))}
          </div>
        </div>
      ))}
    </div>
  );
}
