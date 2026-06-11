'use client';
import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import type { Database } from '@/lib/supabase/types';

type Produit = Database['public']['Tables']['produits']['Row'];
type Module  = Database['public']['Tables']['modules']['Row'];

export function ProduitForm({
  mode, initialData, availableModules, currentModuleIds = [],
}: {
  mode: 'create' | 'edit';
  initialData?: Produit;
  availableModules: Module[];
  currentModuleIds?: string[];
}) {
  const router = useRouter();
  const supabase = createClient();

  const [nom, setNom]               = useState(initialData?.nom ?? '');
  const [icone, setIcone]           = useState(initialData?.icone ?? '📦');
  const [description, setDescription] = useState(initialData?.description ?? '');
  const [prix, setPrix]             = useState(initialData?.prix ?? 0);
  const [type, setType]             = useState<'logiciel' | 'materiel' | 'service'>(initialData?.type ?? 'logiciel');
  const [badge, setBadge]           = useState(initialData?.badge ?? '');
  const [lien, setLien]             = useState(initialData?.lien ?? '');
  const [featured, setFeatured]     = useState(initialData?.featured ?? false);
  const [ordre, setOrdre]           = useState(initialData?.ordre ?? 0);
  const [actif, setActif]           = useState(initialData?.actif ?? true);
  const [selectedIds, setSelectedIds] = useState<string[]>(currentModuleIds);
  const [saving, setSaving]         = useState(false);
  const [error, setError]           = useState('');

  function toggleModule(id: string) {
    setSelectedIds(p => p.includes(id) ? p.filter(x => x !== id) : [...p, id]);
  }

  const modulesTotal = availableModules
    .filter(m => selectedIds.includes(m.id))
    .reduce((s, m) => s + m.prix, 0);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!nom.trim()) { setError('Le nom est requis.'); return; }
    setSaving(true); setError('');

    const payload = { nom, icone, description, prix, type, badge: badge || null, lien: lien || null, featured, ordre, actif };

    if (mode === 'create') {
      const { data: newProduit, error: err } = await supabase
        .from('produits').insert(payload).select().single();
      if (err || !newProduit) { setError(err?.message ?? 'Erreur'); setSaving(false); return; }
      if (selectedIds.length > 0) {
        await supabase.from('produit_modules').insert(
          selectedIds.map(module_id => ({ produit_id: newProduit.id, module_id }))
        );
      }
    } else {
      const { error: err } = await supabase.from('produits').update(payload).eq('id', initialData!.id);
      if (err) { setError(err.message); setSaving(false); return; }
      await supabase.from('produit_modules').delete().eq('produit_id', initialData!.id);
      if (selectedIds.length > 0) {
        await supabase.from('produit_modules').insert(
          selectedIds.map(module_id => ({ produit_id: initialData!.id, module_id }))
        );
      }
    }

    router.push('/celestial-admin-rtabt/produits');
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
            <input className="cel-input" placeholder="ex: ERP BusinessProces" value={nom} onChange={e => setNom(e.target.value)} required />
          </div>
        </div>

        <div className="field">
          <label>Description courte *</label>
          <input className="cel-input" placeholder="Description affichée sur la page offres…" value={description} onChange={e => setDescription(e.target.value)} required />
        </div>

        <div style={{ display: 'grid', gridTemplateColumns: '160px 1fr 1fr', gap: 16 }}>
          <div className="field">
            <label>Type d&apos;offre</label>
            <select className="cel-input" value={type} onChange={e => setType(e.target.value as typeof type)}>
              <option value="logiciel">Logiciel</option>
              <option value="materiel">Matériel</option>
              <option value="service">Service</option>
            </select>
          </div>
          <div className="field">
            <label>Badge (optionnel)</label>
            <input className="cel-input" placeholder="ex: Produit phare" value={badge} onChange={e => setBadge(e.target.value)} />
          </div>
          <div className="field">
            <label>Lien « En savoir plus » (optionnel)</label>
            <input className="cel-input" placeholder="ex: /erp" value={lien} onChange={e => setLien(e.target.value)} />
          </div>
        </div>

        {/* Module picker */}
        <div>
          <div className="flex items-center justify-between" style={{ marginBottom: 8 }}>
            <div>
              <label style={{ fontSize: 13, fontWeight: 500, color: 'var(--text-secondary)', fontFamily: 'var(--font-display)', letterSpacing: '0.02em' }}>
                Modules compatibles
              </label>
              <p style={{ fontSize: 11, color: 'var(--text-faint)', marginTop: 2 }}>
                Seuls ces modules seront proposés aux clients lors de leur commande.
              </p>
            </div>
            <span style={{ fontSize: 12, color: 'var(--text-faint)' }}>
              {selectedIds.length} sélectionné{selectedIds.length > 1 ? 's' : ''}
            </span>
          </div>

          {availableModules.length === 0 ? (
            <p style={{ fontSize: 13.5, color: 'var(--text-muted)', padding: '14px 0' }}>
              Aucun module disponible. <a href="/celestial-admin-rtabt/modules/new" style={{ color: 'var(--gold)' }}>Créer des modules →</a>
            </p>
          ) : (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 8, padding: '14px 16px', background: 'rgba(255,255,255,0.025)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)' }}>
              {availableModules.map(m => {
                const sel = selectedIds.includes(m.id);
                return (
                  <label key={m.id} style={{ display: 'grid', gridTemplateColumns: '28px 28px 1fr auto', alignItems: 'center', gap: 10, cursor: 'pointer', padding: '6px 0', borderBottom: '1px solid var(--hairline)' }}>
                    <input type="checkbox" checked={sel} onChange={() => toggleModule(m.id)}
                      style={{ width: 16, height: 16, accentColor: 'var(--gold)', margin: '0 auto' }} />
                    <span style={{ fontSize: 20, textAlign: 'center' }}>{m.icone}</span>
                    <div>
                      <div style={{ fontSize: 14, fontWeight: sel ? 500 : 400, color: sel ? 'var(--text-primary)' : 'var(--text-secondary)' }}>{m.nom}</div>
                      {m.description && <div style={{ fontSize: 12, color: 'var(--text-faint)' }}>{m.description}</div>}
                    </div>
                    <span style={{ fontSize: 13, fontFamily: 'var(--font-display)', color: sel ? 'var(--gold-bright)' : 'var(--text-muted)', whiteSpace: 'nowrap' }}>
                      {m.prix.toLocaleString('fr-DZ')} DA
                    </span>
                  </label>
                );
              })}
            </div>
          )}

          {selectedIds.length > 0 && (
            <div style={{ display: 'flex', justifyContent: 'space-between', fontSize: 13, color: 'var(--text-muted)', paddingTop: 10 }}>
              <span>Total modules sélectionnés :</span>
              <span style={{ color: 'var(--gold-bright)', fontFamily: 'var(--font-display)', fontWeight: 600 }}>
                {modulesTotal.toLocaleString('fr-DZ')} DA
              </span>
            </div>
          )}
        </div>

        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: 18 }}>
          <div className="field">
            <label>Prix affiché (DZD)</label>
            <input className="cel-input" type="number" min={0} value={prix} onChange={e => setPrix(Number(e.target.value))} />
            {selectedIds.length > 0 && prix !== modulesTotal && (
              <span style={{ fontSize: 11, color: 'var(--text-faint)', marginTop: 3, display: 'block' }}>
                Somme modules : {modulesTotal.toLocaleString('fr-DZ')} DA
              </span>
            )}
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
              <input type="checkbox" checked={actif} onChange={e => setActif(e.target.checked)} style={{ width: 16, height: 16, accentColor: 'var(--cel-success)' }} />
              <span style={{ color: 'var(--text-secondary)' }}>Visible sur le site</span>
            </label>
          </div>
        </div>

        {error && (
          <div style={{ background: 'rgba(229,88,94,0.1)', border: '1px solid rgba(229,88,94,0.3)', borderRadius: 'var(--r-sm)', padding: '12px 16px', color: 'var(--cel-danger)', fontSize: 14 }}>{error}</div>
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
