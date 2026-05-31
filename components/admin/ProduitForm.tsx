'use client';
import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import type { Database } from '@/lib/supabase/types';

type Produit = Database['public']['Tables']['produits']['Row'];

export function ProduitForm({ mode, initialData }: { mode: 'create' | 'edit'; initialData?: Produit }) {
  const router = useRouter();
  const supabase = createClient();

  const [nom, setNom] = useState(initialData?.nom ?? '');
  const [icone, setIcone] = useState(initialData?.icone ?? '📦');
  const [description, setDescription] = useState(initialData?.description ?? '');
  const [modules, setModules] = useState<string[]>((initialData?.modules as string[]) ?? ['']);
  const [prix, setPrix] = useState(initialData?.prix ?? 0);
  const [featured, setFeatured] = useState(initialData?.featured ?? false);
  const [ordre, setOrdre] = useState(initialData?.ordre ?? 0);
  const [actif, setActif] = useState(initialData?.actif ?? true);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');

  function addModule() { setModules(m => [...m, '']); }
  function removeModule(i: number) { setModules(m => m.filter((_, idx) => idx !== i)); }
  function updateModule(i: number, val: string) { setModules(m => m.map((item, idx) => idx === i ? val : item)); }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!nom.trim()) { setError('Le nom est requis.'); return; }
    const cleanModules = modules.filter(m => m.trim());
    setSaving(true); setError('');

    const payload = { nom, icone, description, modules: cleanModules, prix, featured, ordre, actif };
    const { error: err } = mode === 'create'
      ? await supabase.from('produits').insert(payload)
      : await supabase.from('produits').update(payload).eq('id', initialData!.id);

    if (err) { setError(err.message); setSaving(false); return; }
    router.push('/admin/produits');
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit}>
      <div className="card" style={{ padding: 32, display: 'flex', flexDirection: 'column', gap: 22 }}>

        <div style={{ display: 'grid', gridTemplateColumns: '80px 1fr', gap: 16 }}>
          <div className="field">
            <label>Icône</label>
            <input className="cel-input" value={icone} onChange={e => setIcone(e.target.value)} style={{ fontSize: 24, textAlign: 'center' }} maxLength={4} />
          </div>
          <div className="field">
            <label>Nom du logiciel *</label>
            <input className="cel-input" placeholder="Business Process" value={nom} onChange={e => setNom(e.target.value)} required />
          </div>
        </div>

        <div className="field">
          <label>Description courte *</label>
          <input className="cel-input" placeholder="Description affichée sur la page logiciels…" value={description} onChange={e => setDescription(e.target.value)} required />
        </div>

        <div>
          <div className="flex items-center justify-between mb-3">
            <label style={{ fontSize: 13, fontWeight: 500, color: 'var(--text-secondary)', fontFamily: 'var(--font-display)', letterSpacing: '0.02em' }}>Modules inclus</label>
            <button type="button" onClick={addModule} className="btn btn-glass btn-sm">+ Ajouter</button>
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
            {modules.map((m, i) => (
              <div key={i} className="flex gap-2 items-center">
                <input
                  className="cel-input"
                  placeholder={`Module ${i + 1}…`}
                  value={m}
                  onChange={e => updateModule(i, e.target.value)}
                  style={{ flex: 1 }}
                />
                {modules.length > 1 && (
                  <button type="button" onClick={() => removeModule(i)} style={{ color: 'var(--danger)', padding: 6 }}>
                    <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><path d="M18 6 6 18M6 6l12 12"/></svg>
                  </button>
                )}
              </div>
            ))}
          </div>
        </div>

        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: 18 }}>
          <div className="field">
            <label>Prix (DZD)</label>
            <input className="cel-input" type="number" min={0} value={prix} onChange={e => setPrix(Number(e.target.value))} />
          </div>
          <div className="field">
            <label>Ordre d'affichage</label>
            <input className="cel-input" type="number" min={0} value={ordre} onChange={e => setOrdre(Number(e.target.value))} />
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: 14, paddingTop: 22 }}>
            <label className="flex items-center gap-2.5 cursor-pointer" style={{ fontSize: 14 }}>
              <input type="checkbox" checked={featured} onChange={e => setFeatured(e.target.checked)} style={{ width: 16, height: 16, accentColor: 'var(--gold)' }} />
              <span style={{ color: 'var(--text-secondary)' }}>Mis en avant</span>
            </label>
            <label className="flex items-center gap-2.5 cursor-pointer" style={{ fontSize: 14 }}>
              <input type="checkbox" checked={actif} onChange={e => setActif(e.target.checked)} style={{ width: 16, height: 16, accentColor: 'var(--success)' }} />
              <span style={{ color: 'var(--text-secondary)' }}>Visible sur le site</span>
            </label>
          </div>
        </div>

        {error && (
          <div style={{ background: 'rgba(229,88,94,0.1)', border: '1px solid rgba(229,88,94,0.3)', borderRadius: 'var(--r-sm)', padding: '12px 16px', color: 'var(--danger)', fontSize: 14 }}>{error}</div>
        )}

        <div className="flex gap-3">
          <button type="submit" className="btn btn-gold btn-lg" disabled={saving} style={{ opacity: saving ? 0.7 : 1 }}>
            {saving ? 'Enregistrement…' : mode === 'create' ? 'Créer le logiciel' : 'Enregistrer'}
          </button>
          <button type="button" className="btn btn-glass btn-lg" onClick={() => router.back()}>Annuler</button>
        </div>
      </div>
    </form>
  );
}
