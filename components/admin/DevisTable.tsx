'use client';
import { useState } from 'react';
import { createClient } from '@/lib/supabase/client';
import { useRouter } from 'next/navigation';
import type { Database } from '@/lib/supabase/types';

type Devis = Database['public']['Tables']['devis']['Row'];

const STATUTS = [
  { value: 'all', label: 'Tous' },
  { value: 'nouveau', label: 'Nouveaux' },
  { value: 'lu', label: 'Lus' },
  { value: 'traite', label: 'Traités' },
];

const STATUS_LABEL: Record<string, { cls: string; label: string }> = {
  nouveau: { cls: 'badge-new', label: 'Nouveau' },
  lu: { cls: 'badge-improve', label: 'Lu' },
  traite: { cls: 'badge-version', label: 'Traité' },
};

export function DevisTable({ initialData }: { initialData: Devis[] }) {
  const [data, setData] = useState(initialData);
  const [filter, setFilter] = useState('all');
  const [selected, setSelected] = useState<Devis | null>(null);
  const supabase = createClient();
  const router = useRouter();

  const visible = filter === 'all' ? data : data.filter(d => d.statut === filter);

  async function updateStatut(id: string, statut: Devis['statut']) {
    await supabase.from('devis').update({ statut }).eq('id', id);
    setData(d => d.map(r => r.id === id ? { ...r, statut } : r));
    if (selected?.id === id) setSelected(s => s ? { ...s, statut } : null);
    router.refresh();
  }

  async function handleDelete(id: string) {
    if (!confirm('Supprimer cette demande ?')) return;
    await supabase.from('devis').delete().eq('id', id);
    setData(d => d.filter(r => r.id !== id));
    if (selected?.id === id) setSelected(null);
    router.refresh();
  }

  return (
    <div className="devis-grid" style={{ gridTemplateColumns: selected ? '1fr 380px' : '1fr' }}>
      {/* Table */}
      <div>
        {/* Filter bar */}
        <div className="flex gap-2.5 flex-wrap mb-5">
          {STATUTS.map(s => (
            <button
              key={s.value}
              onClick={() => setFilter(s.value)}
              style={{
                fontFamily: 'var(--font-display)', fontSize: 13.5, fontWeight: filter === s.value ? 600 : 500,
                padding: '8px 16px', borderRadius: 'var(--r-pill)',
                border: filter === s.value ? '1px solid transparent' : '1px solid var(--glass-border)',
                background: filter === s.value ? 'var(--grad-gold)' : 'var(--glass)',
                color: filter === s.value ? '#1A1206' : 'var(--text-secondary)',
                cursor: 'pointer', transition: 'all 0.2s',
              }}
            >
              {s.label}
              <span style={{ marginLeft: 6, opacity: 0.7 }}>
                ({s.value === 'all' ? data.length : data.filter(d => d.statut === s.value).length})
              </span>
            </button>
          ))}
        </div>

        <div className="table-wrap" style={{ border: '1px solid var(--hairline)', borderRadius: 'var(--r-lg)', overflow: 'hidden' }}>
          {visible.length === 0 ? (
            <p style={{ padding: '48px 28px', textAlign: 'center', color: 'var(--text-muted)' }}>Aucune demande dans cette catégorie.</p>
          ) : (
            <table style={{ width: '100%', borderCollapse: 'collapse' }}>
              <thead>
                <tr>
                  {['Demandeur', 'Logiciel', 'Date', 'Statut', 'Actions'].map(h => (
                    <th key={h} style={{ padding: '14px 20px', background: 'rgba(255,255,255,0.03)', textAlign: 'left', fontFamily: 'var(--font-display)', fontSize: 12.5, color: 'var(--text-muted)', textTransform: 'uppercase', letterSpacing: '0.04em' }}>{h}</th>
                  ))}
                </tr>
              </thead>
              <tbody>
                {visible.map(d => {
                  const s = STATUS_LABEL[d.statut] ?? STATUS_LABEL.nouveau;
                  return (
                    <tr
                      key={d.id}
                      onClick={() => setSelected(selected?.id === d.id ? null : d)}
                      style={{ cursor: 'pointer', background: selected?.id === d.id ? 'rgba(201,168,76,0.06)' : 'transparent', transition: 'background 0.2s' }}
                    >
                      <td style={{ padding: '14px 20px', borderTop: '1px solid var(--hairline)' }}>
                        <div style={{ fontWeight: 600, fontSize: 14.5 }}>{d.nom}</div>
                        <div style={{ color: 'var(--text-muted)', fontSize: 12.5 }}>{d.email}</div>
                      </td>
                      <td style={{ padding: '14px 20px', borderTop: '1px solid var(--hairline)', color: 'var(--text-secondary)', fontSize: 14 }}>{d.logiciel}</td>
                      <td style={{ padding: '14px 20px', borderTop: '1px solid var(--hairline)', color: 'var(--text-muted)', fontSize: 13, whiteSpace: 'nowrap' }}>
                        {new Date(d.created_at).toLocaleDateString('fr-FR', { day: '2-digit', month: 'short', year: 'numeric' })}
                      </td>
                      <td style={{ padding: '14px 20px', borderTop: '1px solid var(--hairline)' }}>
                        <span className={`badge ${s.cls}`}>{s.label}</span>
                      </td>
                      <td style={{ padding: '14px 20px', borderTop: '1px solid var(--hairline)' }} onClick={e => e.stopPropagation()}>
                        <div className="flex gap-2">
                          <select
                            value={d.statut}
                            onChange={e => updateStatut(d.id, e.target.value as Devis['statut'])}
                            className="cel-select"
                            style={{ padding: '6px 30px 6px 10px', fontSize: 12.5, width: 'auto' }}
                          >
                            <option value="nouveau">Nouveau</option>
                            <option value="lu">Lu</option>
                            <option value="traite">Traité</option>
                          </select>
                          <button onClick={() => handleDelete(d.id)} style={{ color: 'var(--danger)', padding: '6px 8px', borderRadius: 'var(--r-xs)', transition: 'background 0.2s' }} title="Supprimer">
                            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><polyline points="3 6 5 6 21 6"/><path d="M19 6l-1 14H6L5 6"/><path d="M10 11v6M14 11v6"/><path d="M9 6V4h6v2"/></svg>
                          </button>
                        </div>
                      </td>
                    </tr>
                  );
                })}
              </tbody>
            </table>
          )}
        </div>
      </div>

      {/* Detail panel */}
      {selected && (
        <div className="card detail-panel" style={{ padding: 28 }}>
          <div className="flex items-center justify-between mb-5">
            <h3 style={{ fontSize: 18 }}>Détail</h3>
            <button onClick={() => setSelected(null)} style={{ color: 'var(--text-muted)', padding: 4 }}>
              <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><path d="M18 6 6 18M6 6l12 12"/></svg>
            </button>
          </div>

          <div style={{ display: 'flex', flexDirection: 'column', gap: 16 }}>
            {[
              { label: 'Nom', val: selected.nom },
              { label: 'Entreprise', val: selected.entreprise },
              { label: 'Email', val: selected.email },
              { label: 'Téléphone', val: selected.telephone || '—' },
              { label: 'Logiciel', val: selected.logiciel },
            ].map(r => (
              <div key={r.label}>
                <div style={{ fontSize: 11.5, color: 'var(--text-muted)', fontFamily: 'var(--font-display)', textTransform: 'uppercase', letterSpacing: '0.08em', marginBottom: 4 }}>{r.label}</div>
                <div style={{ fontSize: 15 }}>{r.val}</div>
              </div>
            ))}
            <div>
              <div style={{ fontSize: 11.5, color: 'var(--text-muted)', fontFamily: 'var(--font-display)', textTransform: 'uppercase', letterSpacing: '0.08em', marginBottom: 6 }}>Message</div>
              <div style={{ fontSize: 14, color: 'var(--text-secondary)', lineHeight: 1.65, background: 'rgba(255,255,255,0.02)', borderRadius: 'var(--r-sm)', padding: 14, border: '1px solid var(--hairline)' }}>
                {selected.message}
              </div>
            </div>
            <div style={{ paddingTop: 8, borderTop: '1px solid var(--hairline)', display: 'flex', gap: 8 }}>
              <a href={`mailto:${selected.email}?subject=Votre demande Celestial — ${selected.logiciel}`} className="btn btn-gold btn-sm" style={{ flex: 1, textAlign: 'center' }}>
                Répondre par email
              </a>
              <button onClick={() => handleDelete(selected.id)} className="btn btn-glass btn-sm" style={{ color: 'var(--danger)' }}>
                Supprimer
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
