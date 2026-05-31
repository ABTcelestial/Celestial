'use client';
import { useState } from 'react';
import { createClient } from '@/lib/supabase/client';
import { useRouter } from 'next/navigation';
import type { Database } from '@/lib/supabase/types';

type Row = Database['public']['Tables']['comparatif_modules']['Row'];

export function ComparatifEditor({ initialData }: { initialData: Row[] }) {
  const [rows, setRows] = useState(initialData);
  const [newFeature, setNewFeature] = useState('');
  const [saving, setSaving] = useState<string | null>(null);
  const supabase = createClient();
  const router = useRouter();

  async function addRow() {
    if (!newFeature.trim()) return;
    const { data, error } = await supabase
      .from('comparatif_modules')
      .insert({ feature: newFeature.trim(), business: false, compta: false, pay: false, ordre: (rows.at(-1)?.ordre ?? 0) + 1 })
      .select()
      .single();
    if (!error && data) {
      setRows(r => [...r, data]);
      setNewFeature('');
      router.refresh();
    }
  }

  async function updateRow(id: string, field: 'business' | 'compta' | 'pay' | 'feature', value: boolean | string) {
    setSaving(id);
    await supabase.from('comparatif_modules').update({ [field]: value }).eq('id', id);
    setRows(r => r.map(row => row.id === id ? { ...row, [field]: value } : row));
    setSaving(null);
    router.refresh();
  }

  async function deleteRow(id: string) {
    if (!confirm('Supprimer cette ligne ?')) return;
    await supabase.from('comparatif_modules').delete().eq('id', id);
    setRows(r => r.filter(row => row.id !== id));
    router.refresh();
  }

  async function moveRow(id: string, dir: 'up' | 'down') {
    const idx = rows.findIndex(r => r.id === id);
    if (dir === 'up' && idx === 0) return;
    if (dir === 'down' && idx === rows.length - 1) return;
    const swapIdx = dir === 'up' ? idx - 1 : idx + 1;
    const newRows = [...rows];
    [newRows[idx], newRows[swapIdx]] = [newRows[swapIdx], newRows[idx]];
    // update ordre values
    const updates = newRows.map((r, i) => supabase.from('comparatif_modules').update({ ordre: i + 1 }).eq('id', r.id));
    await Promise.all(updates);
    setRows(newRows.map((r, i) => ({ ...r, ordre: i + 1 })));
    router.refresh();
  }

  const Col = ({ checked, onChange }: { checked: boolean; onChange: (v: boolean) => void }) => (
    <td style={{ padding: '10px 18px', borderTop: '1px solid var(--hairline)', textAlign: 'center' }}>
      <button type="button" onClick={() => onChange(!checked)}
        style={{ width: 28, height: 28, borderRadius: 6, display: 'grid', placeItems: 'center', border: `1px solid ${checked ? 'rgba(70,201,154,0.4)' : 'var(--hairline)'}`, background: checked ? 'rgba(70,201,154,0.12)' : 'transparent', color: checked ? 'var(--cel-success)' : 'var(--text-faint)', cursor: 'pointer', transition: 'all 0.2s', fontSize: 14 }}>
        {checked ? '●' : '○'}
      </button>
    </td>
  );

  return (
    <div className="card" style={{ padding: 0, overflow: 'hidden' }}>
      <table style={{ width: '100%', borderCollapse: 'collapse' }}>
        <thead>
          <tr>
            {['Module / Fonctionnalité', 'Business', 'Compta', 'Pay', 'Ordre', ''].map((h, i) => (
              <th key={i} style={{ padding: '13px 18px', background: 'rgba(255,255,255,0.03)', textAlign: i === 0 ? 'left' : 'center', fontFamily: 'var(--font-display)', fontSize: 12.5, color: i === 2 ? 'var(--gold-bright)' : 'var(--text-muted)', textTransform: 'uppercase', letterSpacing: '0.04em' }}>{h}</th>
            ))}
          </tr>
        </thead>
        <tbody>
          {rows.map((row, idx) => (
            <tr key={row.id} style={{ opacity: saving === row.id ? 0.6 : 1, transition: 'opacity 0.2s' }}>
              <td style={{ padding: '10px 18px', borderTop: '1px solid var(--hairline)' }}>
                <input
                  className="cel-input"
                  value={row.feature}
                  onChange={e => setRows(r => r.map(x => x.id === row.id ? { ...x, feature: e.target.value } : x))}
                  onBlur={e => updateRow(row.id, 'feature', e.target.value)}
                  style={{ padding: '7px 10px', fontSize: 14, background: 'transparent', border: '1px solid transparent' }}
                  onFocus={e => (e.target as HTMLInputElement).style.borderColor = 'rgba(139,63,224,0.4)'}
                />
              </td>
              <Col checked={row.business} onChange={v => updateRow(row.id, 'business', v)} />
              <Col checked={row.compta}   onChange={v => updateRow(row.id, 'compta', v)} />
              <Col checked={row.pay}      onChange={v => updateRow(row.id, 'pay', v)} />
              <td style={{ padding: '10px 18px', borderTop: '1px solid var(--hairline)', textAlign: 'center' }}>
                <div className="flex justify-center gap-1">
                  <button type="button" onClick={() => moveRow(row.id, 'up')} disabled={idx === 0} style={{ color: idx === 0 ? 'var(--text-faint)' : 'var(--text-muted)', padding: '4px 6px', cursor: idx === 0 ? 'default' : 'pointer' }}>▲</button>
                  <button type="button" onClick={() => moveRow(row.id, 'down')} disabled={idx === rows.length - 1} style={{ color: idx === rows.length - 1 ? 'var(--text-faint)' : 'var(--text-muted)', padding: '4px 6px', cursor: idx === rows.length - 1 ? 'default' : 'pointer' }}>▼</button>
                </div>
              </td>
              <td style={{ padding: '10px 18px', borderTop: '1px solid var(--hairline)', textAlign: 'center' }}>
                <button type="button" onClick={() => deleteRow(row.id)} style={{ color: 'var(--danger)', padding: '4px 6px' }}>
                  <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><polyline points="3 6 5 6 21 6"/><path d="M19 6l-1 14H6L5 6"/><path d="M9 6V4h6v2"/></svg>
                </button>
              </td>
            </tr>
          ))}

          {/* Add row */}
          <tr>
            <td style={{ padding: '12px 18px', borderTop: '1px solid var(--hairline)' }}>
              <div className="flex gap-2 items-center">
                <input
                  className="cel-input"
                  placeholder="Nouvelle fonctionnalité…"
                  value={newFeature}
                  onChange={e => setNewFeature(e.target.value)}
                  onKeyDown={e => e.key === 'Enter' && (e.preventDefault(), addRow())}
                  style={{ padding: '7px 10px', fontSize: 14 }}
                />
                <button type="button" onClick={addRow} className="btn btn-glass btn-sm" style={{ flexShrink: 0 }}>+ Ajouter</button>
              </div>
            </td>
            <td colSpan={5} style={{ borderTop: '1px solid var(--hairline)' }} />
          </tr>
        </tbody>
      </table>
      <p style={{ padding: '10px 18px', fontSize: 12, color: 'var(--text-faint)', borderTop: '1px solid var(--hairline)' }}>
        Les cases ● sont sauvegardées instantanément. Cliquez sur un nom pour le modifier, puis cliquez ailleurs pour valider.
      </p>
    </div>
  );
}
