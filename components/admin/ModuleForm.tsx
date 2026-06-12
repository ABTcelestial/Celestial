'use client';
import { useState } from 'react';
import { createClient } from '@/lib/supabase/client';
import { useRouter } from 'next/navigation';
import type { Database } from '@/lib/supabase/types';

type Module = Database['public']['Tables']['modules']['Row'];

const inp: React.CSSProperties = { padding: '10px 14px', background: 'rgba(255,255,255,0.04)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)', color: 'var(--text-primary)', fontSize: 14.5, outline: 'none', width: '100%' };
const lbl: React.CSSProperties = { fontSize: 13, fontWeight: 500, color: 'var(--text-secondary)', display: 'block', marginBottom: 7 };

export function ModuleForm({ module }: { module?: Module }) {
  const [nom, setNom] = useState(module?.nom ?? '');
  const [description, setDescription] = useState(module?.description ?? '');
  const [prix, setPrix] = useState(module?.prix ?? 0);
  const [icone, setIcone] = useState(module?.icone ?? '⚙');
  const [actif, setActif] = useState(module?.actif ?? true);
  const [ordre, setOrdre] = useState(module?.ordre ?? 0);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const supabase = createClient();
  const router = useRouter();

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setSaving(true); setError(null);
    const data = { nom, description, prix, icone, actif, ordre };
    const { error: err } = module
      ? await supabase.from('modules').update(data).eq('id', module.id)
      : await supabase.from('modules').insert(data);
    if (err) { setError(err.message); setSaving(false); return; }
    router.push('/celestial-admin-rtabt/modules');
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit} style={{ maxWidth: 640, display: 'flex', flexDirection: 'column', gap: 20 }}>
      <div style={{ display: 'grid', gridTemplateColumns: '80px 1fr', gap: 14 }}>
        <div>
          <label style={lbl}>Icône</label>
          <input style={{ ...inp, fontSize: 24, textAlign: 'center' }} value={icone} onChange={e => setIcone(e.target.value)} maxLength={4} />
        </div>
        <div>
          <label style={lbl}>Nom du module *</label>
          <input style={inp} value={nom} onChange={e => setNom(e.target.value)} required placeholder="ex. Gestion commerciale" />
        </div>
      </div>

      <div>
        <label style={lbl}>Description</label>
        <input style={inp} value={description} onChange={e => setDescription(e.target.value)} placeholder="Ce module permet de…" />
      </div>

      <div className="grid-2" style={{ gap: 14 }}>
        <div>
          <label style={lbl}>Prix (DZD)</label>
          <input style={inp} type="number" min={0} step={1000} value={prix} onChange={e => setPrix(Number(e.target.value))} />
        </div>
        <div>
          <label style={lbl}>Ordre d'affichage</label>
          <input style={inp} type="number" min={0} value={ordre} onChange={e => setOrdre(Number(e.target.value))} />
        </div>
      </div>

      <label style={{ display: 'flex', alignItems: 'center', gap: 10, cursor: 'pointer' }}>
        <input type="checkbox" checked={actif} onChange={e => setActif(e.target.checked)} style={{ width: 16, height: 16, accentColor: 'var(--gold)' }} />
        <span style={{ fontSize: 14, color: 'var(--text-secondary)' }}>Module actif (visible dans le configurateur)</span>
      </label>

      {error && <p style={{ color: 'var(--cel-danger)', fontSize: 14 }}>{error}</p>}

      <div className="flex gap-3">
        <button type="submit" disabled={saving} className="btn btn-gold">
          {saving ? 'Enregistrement…' : module ? 'Mettre à jour' : 'Créer le module'}
        </button>
        <button type="button" onClick={() => router.back()} className="btn btn-glass">Annuler</button>
      </div>
    </form>
  );
}
