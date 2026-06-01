'use client';
import { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import type { Database } from '@/lib/supabase/types';

type Produit = Database['public']['Tables']['produits']['Row'];

export function ProduitsList({ initialData }: { initialData: Produit[] }) {
  const [data, setData] = useState(initialData);
  const supabase = createClient();
  const router = useRouter();

  async function toggleActif(id: string, actif: boolean) {
    await supabase.from('produits').update({ actif }).eq('id', id);
    setData(d => d.map(p => p.id === id ? { ...p, actif } : p));
  }

  async function handleDelete(id: string) {
    if (!confirm('Supprimer ce logiciel ?')) return;
    await supabase.from('produits').delete().eq('id', id);
    setData(d => d.filter(p => p.id !== id));
    router.refresh();
  }

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: 14 }}>
      {data.length === 0 && (
        <p style={{ color: 'var(--text-muted)', textAlign: 'center', padding: 48 }}>
          Aucun logiciel. <Link href="/celestial-admin-rtabt/produits/new" className="text-gold">Créer le premier →</Link>
        </p>
      )}
      {data.map(p => (
        <div key={p.id} className="card" style={{ padding: '22px 26px' }}>
          <div className="flex items-start justify-between gap-4">
            <div className="flex items-start gap-4" style={{ flex: 1, minWidth: 0 }}>
              <span style={{ fontSize: 32, lineHeight: 1, flexShrink: 0 }}>{p.icone}</span>
              <div style={{ flex: 1, minWidth: 0 }}>
                <div className="flex items-center gap-2.5 flex-wrap mb-1.5">
                  <h3 style={{ fontSize: 18 }}>{p.nom}</h3>
                  {p.featured && <span className="badge badge-gold">Le plus choisi</span>}
                  {!p.actif && <span className="badge" style={{ color: 'var(--danger)', borderColor: 'rgba(229,88,94,0.35)' }}>Masqué</span>}
                </div>
                <p style={{ color: 'var(--text-secondary)', fontSize: 14, marginBottom: 10 }}>{p.description}</p>
                <p style={{ fontSize: 12, color: 'var(--text-faint)', marginTop: 2 }}>
                  Modules configurés via l'onglet Modifier
                </p>
              </div>
            </div>
            <div className="flex flex-col items-end gap-3" style={{ flexShrink: 0 }}>
              <div style={{ fontFamily: 'var(--font-display)', fontSize: 20, fontWeight: 700, color: 'var(--gold-bright)' }}>
                {p.prix.toLocaleString('fr-DZ')} <span style={{ fontSize: 13, fontWeight: 400, color: 'var(--text-muted)' }}>DZD</span>
              </div>
              <div className="flex gap-2">
                <button
                  onClick={() => toggleActif(p.id, !p.actif)}
                  className="btn btn-glass btn-sm"
                  style={{ color: p.actif ? 'var(--cel-success)' : 'var(--text-muted)', fontSize: 12 }}
                >
                  {p.actif ? '● Visible' : '○ Masqué'}
                </button>
                <Link href={`/celestial-admin-rtabt/produits/${p.id}/edit`} className="btn btn-glass btn-sm">Modifier</Link>
                <button onClick={() => handleDelete(p.id)} className="btn btn-glass btn-sm" style={{ color: 'var(--danger)' }}>
                  <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><polyline points="3 6 5 6 21 6"/><path d="M19 6l-1 14H6L5 6"/><path d="M9 6V4h6v2"/></svg>
                </button>
              </div>
            </div>
          </div>
        </div>
      ))}
    </div>
  );
}
