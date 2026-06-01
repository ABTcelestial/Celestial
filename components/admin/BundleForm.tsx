'use client';
import { useState } from 'react';
import { createClient } from '@/lib/supabase/client';
import { useRouter } from 'next/navigation';
import type { Database } from '@/lib/supabase/types';

type Bundle = Database['public']['Tables']['bundles']['Row'];
type Produit = Database['public']['Tables']['produits']['Row'];

const field: React.CSSProperties = { display: 'flex', flexDirection: 'column', gap: 7 };
const label: React.CSSProperties = { fontSize: 13, fontWeight: 500, color: 'var(--text-secondary)' };
const input: React.CSSProperties = { padding: '10px 14px', background: 'rgba(255,255,255,0.04)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)', color: 'var(--text-primary)', fontSize: 14.5, outline: 'none' };

export function BundleForm({ bundle, produits }: { bundle?: Bundle; produits: Produit[] }) {
  const [nom, setNom] = useState(bundle?.nom ?? '');
  const [description, setDescription] = useState(bundle?.description ?? '');
  const [inclus, setInclus] = useState<string[]>(bundle?.produits ?? []);
  const [remisePct, setRemisePct] = useState(bundle?.remise_pct ?? 0);
  const [badge, setBadge] = useState(bundle?.badge ?? '');
  const [actif, setActif] = useState(bundle?.actif ?? true);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const supabase = createClient();
  const router = useRouter();

  function toggle(name: string) {
    setInclus(p => p.includes(name) ? p.filter(x => x !== name) : [...p, name]);
  }

  const basePrice = produits.filter(p => inclus.includes(p.nom)).reduce((s, p) => s + p.prix, 0);
  const bundlePrice = Math.round(basePrice * (1 - remisePct / 100));

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (inclus.length < 2) { setError('Sélectionnez au moins 2 logiciels.'); return; }
    setSaving(true); setError(null);
    const data = { nom, description, produits: inclus, remise_pct: remisePct, badge: badge || null, actif };
    const { error: err } = bundle
      ? await supabase.from('bundles').update(data).eq('id', bundle.id)
      : await supabase.from('bundles').insert(data);
    if (err) { setError(err.message); setSaving(false); return; }
    router.push('/celestial-admin-rtabt/bundles');
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit} style={{ maxWidth: 640, display: 'flex', flexDirection: 'column', gap: 22 }}>
      <div style={field}>
        <span style={label}>Nom du bundle *</span>
        <input style={input} value={nom} onChange={e => setNom(e.target.value)} required placeholder="ex. Suite Complète" />
      </div>

      <div style={field}>
        <span style={label}>Description</span>
        <textarea style={{ ...input, minHeight: 80, resize: 'vertical' }} value={description} onChange={e => setDescription(e.target.value)} placeholder="Décrivez ce bundle en 1-2 phrases." />
      </div>

      <div style={field}>
        <span style={label}>Logiciels inclus *</span>
        <div style={{ display: 'flex', flexDirection: 'column', gap: 10, padding: '14px 16px', background: 'rgba(255,255,255,0.03)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)' }}>
          {produits.map(p => (
            <label key={p.id} style={{ display: 'flex', alignItems: 'center', gap: 12, cursor: 'pointer' }}>
              <input type="checkbox" checked={inclus.includes(p.nom)} onChange={() => toggle(p.nom)}
                style={{ width: 16, height: 16, accentColor: 'var(--gold)', flexShrink: 0 }} />
              <span style={{ flex: 1, fontSize: 14.5, color: inclus.includes(p.nom) ? 'var(--text-primary)' : 'var(--text-secondary)' }}>
                {p.icone} {p.nom}
              </span>
              <span style={{ fontSize: 13, color: 'var(--text-muted)', fontFamily: 'var(--font-display)' }}>
                {p.prix.toLocaleString('fr-DZ')} DA
              </span>
            </label>
          ))}
        </div>
        {inclus.length >= 2 && (
          <div style={{ display: 'flex', justifyContent: 'space-between', fontSize: 13, color: 'var(--text-muted)', paddingTop: 6 }}>
            <span>Prix de base : <span style={{ textDecoration: 'line-through' }}>{basePrice.toLocaleString('fr-DZ')} DA</span></span>
            <span style={{ color: 'var(--gold-bright)', fontWeight: 600 }}>Bundle : {bundlePrice.toLocaleString('fr-DZ')} DA</span>
          </div>
        )}
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 16 }}>
        <div style={field}>
          <span style={label}>Remise (%)</span>
          <input style={input} type="number" min={0} max={100} value={remisePct}
            onChange={e => setRemisePct(Number(e.target.value))} />
        </div>
        <div style={field}>
          <span style={label}>Badge (optionnel)</span>
          <input style={input} value={badge} onChange={e => setBadge(e.target.value)} placeholder="ex. Recommandé" />
        </div>
      </div>

      <label style={{ display: 'flex', alignItems: 'center', gap: 10, cursor: 'pointer' }}>
        <input type="checkbox" checked={actif} onChange={e => setActif(e.target.checked)}
          style={{ width: 16, height: 16, accentColor: 'var(--gold)' }} />
        <span style={{ fontSize: 14, color: 'var(--text-secondary)' }}>Visible sur le site</span>
      </label>

      {error && <p style={{ color: 'var(--cel-danger)', fontSize: 14 }}>{error}</p>}

      <div className="flex gap-3">
        <button type="submit" disabled={saving} className="btn btn-gold">
          {saving ? 'Enregistrement…' : bundle ? 'Mettre à jour' : 'Créer le bundle'}
        </button>
        <button type="button" onClick={() => router.back()} className="btn btn-glass">Annuler</button>
      </div>
    </form>
  );
}
