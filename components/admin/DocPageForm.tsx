'use client';
import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import type { Database } from '@/lib/supabase/types';

type DocPage = Database['public']['Tables']['doc_pages']['Row'];

export function DocPageForm({
  mode, initialData, suggestions = [],
}: {
  mode: 'create' | 'edit';
  initialData?: DocPage;
  suggestions?: string[];
}) {
  const router = useRouter();
  const supabase = createClient();

  const [produit, setProduit]           = useState(initialData?.produit ?? '');
  const [section, setSection]           = useState(initialData?.section ?? '');
  const [sectionOrdre, setSectionOrdre] = useState(initialData?.section_ordre ?? 0);
  const [titre, setTitre]               = useState(initialData?.titre ?? '');
  const [contenu, setContenu]           = useState(initialData?.contenu ?? '');
  const [ordre, setOrdre]               = useState(initialData?.ordre ?? 0);
  const [saving, setSaving]             = useState(false);
  const [error, setError]               = useState('');
  const [tab, setTab]                   = useState<'edit' | 'preview'>('edit');

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!titre.trim())   { setError('Le titre est requis.');   return; }
    if (!section.trim()) { setError('La section est requise.'); return; }
    if (!produit.trim()) { setError('Le produit est requis.');  return; }
    setSaving(true); setError('');

    const payload = { produit: produit.trim(), section, section_ordre: sectionOrdre, titre, contenu, ordre };
    const { error: err } = mode === 'create'
      ? await supabase.from('doc_pages').insert(payload)
      : await supabase.from('doc_pages').update(payload).eq('id', initialData!.id);

    if (err) { setError(err.message); setSaving(false); return; }
    router.push('/celestial-admin-rtabt/documentation');
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit}>
      <div className="card" style={{ padding: 32, display: 'flex', flexDirection: 'column', gap: 22 }}>

        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 100px 100px', gap: 16 }}>
          <div className="field">
            <label>Produit *</label>
            <input
              className="cel-input"
              list="produit-suggestions"
              placeholder="ex: Business Process"
              value={produit}
              onChange={e => setProduit(e.target.value)}
              required
              autoComplete="off"
            />
            <datalist id="produit-suggestions">
              {suggestions.map(s => <option key={s} value={s} />)}
            </datalist>
            <p style={{ fontSize: 11, color: 'var(--text-faint)', marginTop: 4 }}>
              Tapez librement ou choisissez parmi les suggestions.
            </p>
          </div>
          <div className="field">
            <label>Section *</label>
            <input className="cel-input" placeholder="ex: Démarrage" value={section} onChange={e => setSection(e.target.value)} required />
          </div>
          <div className="field">
            <label>Ordre section</label>
            <input className="cel-input" type="number" min={0} value={sectionOrdre} onChange={e => setSectionOrdre(Number(e.target.value))} />
          </div>
          <div className="field">
            <label>Ordre page</label>
            <input className="cel-input" type="number" min={0} value={ordre} onChange={e => setOrdre(Number(e.target.value))} />
          </div>
        </div>

        <div className="field">
          <label>Titre de la page *</label>
          <input className="cel-input" placeholder="Introduction, Installation…" value={titre} onChange={e => setTitre(e.target.value)} required />
        </div>

        <div className="field">
          <div className="flex items-center justify-between mb-2">
            <label>Contenu (HTML)</label>
            <div className="flex gap-1" style={{ background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-pill)', padding: 3 }}>
              {(['edit', 'preview'] as const).map(t => (
                <button key={t} type="button" onClick={() => setTab(t)}
                  style={{ fontFamily: 'var(--font-display)', fontSize: 12, padding: '5px 12px', borderRadius: 'var(--r-pill)', background: tab === t ? 'var(--grad-gold)' : 'transparent', color: tab === t ? '#1A1206' : 'var(--text-muted)', transition: 'all 0.2s' }}>
                  {t === 'edit' ? 'Éditeur' : 'Aperçu'}
                </button>
              ))}
            </div>
          </div>
          {tab === 'edit' ? (
            <textarea
              className="cel-textarea"
              placeholder={'<h2 id="section">Titre section</h2>\n<p>Paragraphe…</p>\n<ul><li>Élément</li></ul>'}
              value={contenu}
              onChange={e => setContenu(e.target.value)}
              style={{ minHeight: 320, fontFamily: 'monospace', fontSize: 13.5, lineHeight: 1.6 }}
            />
          ) : (
            <div
              dangerouslySetInnerHTML={{ __html: contenu || '<p style="color:var(--text-faint);font-style:italic">Aucun contenu.</p>' }}
              style={{ minHeight: 320, background: 'rgba(255,255,255,0.02)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)', padding: '18px 20px', lineHeight: 1.75, color: 'var(--text-secondary)', fontSize: 15 }}
            />
          )}
          <p style={{ fontSize: 12, color: 'var(--text-faint)', marginTop: 6 }}>
            HTML standard : h2, h3, p, ul/li, code, strong. Ajoutez <code style={{ color: 'var(--purple-glow)' }}>id="..."</code> sur les h2 pour la table des matières.
          </p>
        </div>

        {error && (
          <div style={{ background: 'rgba(229,88,94,0.1)', border: '1px solid rgba(229,88,94,0.3)', borderRadius: 'var(--r-sm)', padding: '12px 16px', color: 'var(--danger)', fontSize: 14 }}>{error}</div>
        )}

        <div className="flex gap-3">
          <button type="submit" className="btn btn-gold btn-lg" disabled={saving} style={{ opacity: saving ? 0.7 : 1 }}>
            {saving ? 'Enregistrement…' : mode === 'create' ? 'Créer la page' : 'Enregistrer'}
          </button>
          <button type="button" className="btn btn-glass btn-lg" onClick={() => router.back()}>Annuler</button>
        </div>
      </div>
    </form>
  );
}
