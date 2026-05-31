'use client';
import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import type { Database, ChangelogChangement, ChangelogProduit } from '@/lib/supabase/types';

type Changelog = Database['public']['Tables']['changelogs']['Row'];

const BADGE_OPTIONS = [
  { cls: 'badge-new', label: 'Nouveau' },
  { cls: 'badge-fix', label: 'Correctif' },
  { cls: 'badge-improve', label: 'Amélioration' },
  { cls: 'badge-gold', label: 'Entreprise' },
  { cls: 'badge-new', label: 'Version majeure' },
];

const CHANGEMENT_CLS_OPTIONS = [
  { cls: 'badge-new', label: 'Nouveau' },
  { cls: 'badge-fix', label: 'Correctif' },
  { cls: 'badge-improve', label: 'Amélio.' },
  { cls: 'badge-new', label: 'Actu' },
];

export function ChangelogForm({ mode, initialData }: { mode: 'create' | 'edit'; initialData?: Changelog }) {
  const router = useRouter();
  const supabase = createClient();

  const [produit, setProduit] = useState(initialData?.produit ?? 'business');
  const [version, setVersion] = useState(initialData?.version ?? '');
  const [titre, setTitre] = useState(initialData?.titre ?? '');
  const [date, setDate] = useState(initialData?.date ?? new Date().toISOString().slice(0, 10));
  const [typeBadge, setTypeBadge] = useState(initialData?.type_badge ?? 'Nouveau');
  const [typeBadgeCls, setTypeBadgeCls] = useState(initialData?.type_badge_cls ?? 'badge-new');
  const [changements, setChangements] = useState<ChangelogChangement[]>(
    (initialData?.changements as ChangelogChangement[]) ?? [{ tag: 'Nouveau', cls: 'badge-new', texte: '' }]
  );
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');

  function addChangement() {
    setChangements(c => [...c, { tag: 'Nouveau', cls: 'badge-new', texte: '' }]);
  }
  function removeChangement(i: number) {
    setChangements(c => c.filter((_, idx) => idx !== i));
  }
  function updateChangement(i: number, field: keyof ChangelogChangement, val: string) {
    setChangements(c => c.map((item, idx) => idx === i ? { ...item, [field]: val } : item));
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!titre.trim()) { setError('Le titre est requis.'); return; }
    if (changements.some(c => !c.texte.trim())) { setError('Tous les changements doivent avoir un texte.'); return; }
    setSaving(true);
    setError('');

    const payload = { produit: produit as any, version: version || null, titre, date, type_badge: typeBadge, type_badge_cls: typeBadgeCls, changements };

    const { error: err } = mode === 'create'
      ? await supabase.from('changelogs').insert(payload)
      : await supabase.from('changelogs').update(payload).eq('id', initialData!.id);

    if (err) { setError(err.message); setSaving(false); return; }
    router.push('/admin/changelogs');
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit}>
      <div className="card" style={{ padding: 32, display: 'flex', flexDirection: 'column', gap: 22 }}>

        {/* Produit & Version */}
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 18 }}>
          <div className="field">
            <label>Produit *</label>
            <select className="cel-select" value={produit} onChange={e => setProduit(e.target.value as ChangelogProduit)}>
              <option value="business">📊 Business Process</option>
              <option value="compta">🧮 Compta Process</option>
              <option value="pay">💼 Pay Process</option>
              <option value="company">⭐ Entreprise</option>
            </select>
          </div>
          <div className="field">
            <label>Version (optionnel)</label>
            <input className="cel-input" placeholder="v2.5.0" value={version} onChange={e => setVersion(e.target.value)} />
          </div>
        </div>

        {/* Titre */}
        <div className="field">
          <label>Titre *</label>
          <input className="cel-input" placeholder="Titre de la mise à jour…" value={titre} onChange={e => setTitre(e.target.value)} required />
        </div>

        {/* Date & Badge */}
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 18 }}>
          <div className="field">
            <label>Date *</label>
            <input className="cel-input" type="date" value={date} onChange={e => setDate(e.target.value)} required />
          </div>
          <div className="field">
            <label>Type</label>
            <select className="cel-select" value={typeBadge} onChange={e => {
              const opt = BADGE_OPTIONS.find(o => o.label === e.target.value);
              setTypeBadge(e.target.value);
              if (opt) setTypeBadgeCls(opt.cls);
            }}>
              {BADGE_OPTIONS.map(o => <option key={o.label} value={o.label}>{o.label}</option>)}
            </select>
          </div>
        </div>

        {/* Changements */}
        <div>
          <div className="flex items-center justify-between mb-3">
            <label style={{ fontSize: 13, fontWeight: 500, color: 'var(--text-secondary)', fontFamily: 'var(--font-display)', letterSpacing: '0.02em' }}>Changements *</label>
            <button type="button" onClick={addChangement} className="btn btn-glass btn-sm">+ Ajouter</button>
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: 12 }}>
            {changements.map((c, i) => (
              <div key={i} className="flex gap-3 items-center" style={{ background: 'rgba(255,255,255,0.02)', borderRadius: 'var(--r-sm)', padding: 12, border: '1px solid var(--hairline)' }}>
                <select
                  className="cel-select"
                  value={c.tag}
                  onChange={e => {
                    const opt = CHANGEMENT_CLS_OPTIONS.find(o => o.label === e.target.value);
                    updateChangement(i, 'tag', e.target.value);
                    if (opt) updateChangement(i, 'cls', opt.cls);
                  }}
                  style={{ width: 120, flexShrink: 0, padding: '8px 30px 8px 10px', fontSize: 13 }}
                >
                  {CHANGEMENT_CLS_OPTIONS.map(o => <option key={o.label} value={o.label}>{o.label}</option>)}
                </select>
                <input
                  className="cel-input"
                  placeholder="Description du changement…"
                  value={c.texte}
                  onChange={e => updateChangement(i, 'texte', e.target.value)}
                  style={{ flex: 1, padding: '8px 12px', fontSize: 14 }}
                />
                {changements.length > 1 && (
                  <button type="button" onClick={() => removeChangement(i)} style={{ color: 'var(--danger)', padding: 6, flexShrink: 0 }}>
                    <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><path d="M18 6 6 18M6 6l12 12"/></svg>
                  </button>
                )}
              </div>
            ))}
          </div>
        </div>

        {error && (
          <div style={{ background: 'rgba(229,88,94,0.1)', border: '1px solid rgba(229,88,94,0.3)', borderRadius: 'var(--r-sm)', padding: '12px 16px', color: 'var(--danger)', fontSize: 14 }}>
            {error}
          </div>
        )}

        <div className="flex gap-3">
          <button type="submit" className="btn btn-gold btn-lg" disabled={saving} style={{ opacity: saving ? 0.7 : 1 }}>
            {saving ? 'Enregistrement…' : mode === 'create' ? "Créer l'entrée" : 'Enregistrer les modifications'}
          </button>
          <button type="button" className="btn btn-glass btn-lg" onClick={() => router.back()}>
            Annuler
          </button>
        </div>
      </div>
    </form>
  );
}
