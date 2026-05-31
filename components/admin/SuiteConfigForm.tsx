'use client';
import { useState } from 'react';
import { createClient } from '@/lib/supabase/client';
import { useRouter } from 'next/navigation';
import type { Database } from '@/lib/supabase/types';

type SuiteConfig = Database['public']['Tables']['suite_config']['Row'];

export function SuiteConfigForm({ initialData }: { initialData?: SuiteConfig }) {
  const supabase = createClient();
  const router = useRouter();

  const [label, setLabel] = useState(initialData?.label ?? 'Celestial Suite');
  const [description, setDescription] = useState(initialData?.description ?? '');
  const [remise, setRemise] = useState(initialData?.remise_pct ?? 20);
  const [actif, setActif] = useState(initialData?.actif ?? true);
  const [saving, setSaving] = useState(false);
  const [saved, setSaved] = useState(false);
  const [error, setError] = useState('');

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setSaving(true); setError(''); setSaved(false);

    const { error: err } = await supabase
      .from('suite_config')
      .upsert({ id: 1, label, description, remise_pct: remise, actif, updated_at: new Date().toISOString() }, { onConflict: 'id' });

    setSaving(false);
    if (err) { setError(err.message); return; }
    setSaved(true);
    router.refresh();
    setTimeout(() => setSaved(false), 3000);
  }

  return (
    <form onSubmit={handleSubmit}>
      <div className="card" style={{ padding: 28, display: 'flex', flexDirection: 'column', gap: 18 }}>
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 18 }}>
          <div className="field">
            <label>Nom du bundle</label>
            <input className="cel-input" value={label} onChange={e => setLabel(e.target.value)} placeholder="Celestial Suite" />
          </div>
          <div className="field">
            <label>Remise (%)</label>
            <input className="cel-input" type="number" min={0} max={99} value={remise} onChange={e => setRemise(Number(e.target.value))} />
            <span style={{ fontSize: 12, color: 'var(--text-muted)', marginTop: 4 }}>
              Total des produits actifs − {remise}% = prix affiché automatiquement
            </span>
          </div>
          <div className="field" style={{ gridColumn: '1 / -1' }}>
            <label>Description</label>
            <input className="cel-input" value={description} onChange={e => setDescription(e.target.value)} placeholder="Description affichée sous le titre du bundle…" />
          </div>
          <div style={{ gridColumn: '1 / -1' }}>
            <label className="flex items-center gap-2.5 cursor-pointer" style={{ fontSize: 14 }}>
              <input type="checkbox" checked={actif} onChange={e => setActif(e.target.checked)} style={{ width: 16, height: 16, accentColor: 'var(--success)' }} />
              <span style={{ color: 'var(--text-secondary)' }}>Afficher la section bundle sur la page Logiciels</span>
            </label>
          </div>
        </div>

        {error && <div style={{ background: 'rgba(229,88,94,0.1)', border: '1px solid rgba(229,88,94,0.3)', borderRadius: 'var(--r-sm)', padding: '12px 16px', color: 'var(--danger)', fontSize: 14 }}>{error}</div>}
        {saved && <div style={{ background: 'rgba(70,201,154,0.1)', border: '1px solid rgba(70,201,154,0.3)', borderRadius: 'var(--r-sm)', padding: '12px 16px', color: 'var(--cel-success)', fontSize: 14 }}>✓ Enregistré.</div>}

        <button type="submit" className="btn btn-gold" disabled={saving} style={{ alignSelf: 'flex-start', opacity: saving ? 0.7 : 1 }}>
          {saving ? 'Enregistrement…' : 'Enregistrer'}
        </button>
      </div>
    </form>
  );
}
