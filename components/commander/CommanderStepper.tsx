'use client';
import { useState } from 'react';
import { submitDevis } from '@/app/actions/devis';
import type { Database } from '@/lib/supabase/types';
import Link from 'next/link';

type ModuleRow = { id: string; nom: string; description: string; prix: number; icone: string };
type Produit   = Omit<Database['public']['Tables']['produits']['Row'], 'modules'> & { modules: ModuleRow[] };
type Bundle    = Database['public']['Tables']['bundles']['Row'];

const inp: React.CSSProperties = { padding: '11px 14px', background: 'rgba(255,255,255,0.04)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)', color: 'var(--text-primary)', fontSize: 14.5, outline: 'none', width: '100%' };
const lbl: React.CSSProperties = { fontSize: 13, fontWeight: 500, color: 'var(--text-secondary)', display: 'block', marginBottom: 7 };
const fmt = (n: number) => n.toLocaleString('fr-DZ') + ' DA';

// Steps: 1=logiciel 2=modules (individual only) 3=coordonnées 4=recap
type Step = 1 | 2 | 3 | 4;

export function CommanderStepper({ produits, bundles }: { produits: Produit[]; bundles: Bundle[] }) {
  const [step, setStep]           = useState<Step>(1);
  const [mode, setMode]           = useState<'individual' | 'bundle'>('individual');
  const [selectedIds, setSelectedIds]     = useState<string[]>([]);
  const [selectedBundle, setSelectedBundle] = useState<Bundle | null>(null);
  // Per-product module selection: { productId: Set of selected module IDs }
  const [moduleSelections, setModuleSelections] = useState<Record<string, string[]>>({});
  const [form, setForm] = useState({ nom: '', entreprise: '', email: '', telephone: '', message: '' });
  const [errors, setErrors] = useState<Record<string, string>>({});
  const [submitting, setSubmitting] = useState(false);
  const [done, setDone] = useState(false);

  const selectedProduits = produits.filter(p => selectedIds.includes(p.id));
  const bundleProduits   = selectedBundle ? produits.filter(p => selectedBundle.produits.includes(p.nom)) : [];

  // When selecting a product, pre-select all its compatible modules
  function toggleProduct(id: string) {
    if (selectedIds.includes(id)) {
      setSelectedIds(ids => ids.filter(x => x !== id));
      setModuleSelections(ms => { const n = { ...ms }; delete n[id]; return n; });
    } else {
      const prod = produits.find(p => p.id === id);
      setSelectedIds(ids => [...ids, id]);
      setModuleSelections(ms => ({ ...ms, [id]: prod?.modules.map(m => m.id) ?? [] }));
    }
  }

  function toggleModule(productId: string, moduleId: string) {
    setModuleSelections(ms => {
      const cur = ms[productId] ?? [];
      return { ...ms, [productId]: cur.includes(moduleId) ? cur.filter(x => x !== moduleId) : [...cur, moduleId] };
    });
  }

  function getTotal() {
    if (mode === 'bundle' && selectedBundle) {
      const base = bundleProduits.reduce((s, p) => s + p.prix, 0);
      return Math.round(base * (1 - selectedBundle.remise_pct / 100));
    }
    let total = 0;
    selectedIds.forEach(pid => {
      const prod = produits.find(p => p.id === pid);
      const selMods = moduleSelections[pid] ?? [];
      prod?.modules.filter(m => selMods.includes(m.id)).forEach(m => { total += m.prix; });
    });
    return total;
  }

  function hasSelection()  { return mode === 'individual' ? selectedIds.length > 0 : selectedBundle !== null; }
  function hasModules()    { return selectedIds.every(id => (moduleSelections[id] ?? []).length > 0); }

  function validateForm() {
    const e: Record<string, string> = {};
    if (!form.nom.trim()) e.nom = 'Requis';
    if (!form.entreprise.trim()) e.entreprise = 'Requis';
    if (!form.email.trim() || !/^[^@\s]+@[^@\s]+\.[^@\s]+$/.test(form.email)) e.email = 'Email invalide';
    return e;
  }

  // Step navigation — skip module step for bundles
  function goNext(from: Step) {
    if (from === 1 && mode === 'bundle') { setStep(3); return; }
    setStep((from + 1) as Step);
  }
  function goPrev(from: Step) {
    if (from === 3 && mode === 'bundle') { setStep(1); return; }
    setStep((from - 1) as Step);
  }

  async function handleSubmit() {
    const e = validateForm(); setErrors(e);
    if (Object.keys(e).length > 0) return;
    setSubmitting(true);

    let logiciel: string;
    if (mode === 'bundle' && selectedBundle) {
      logiciel = `Bundle « ${selectedBundle.nom} » — ${selectedBundle.produits.join(', ')} (−${selectedBundle.remise_pct}%)`;
    } else {
      logiciel = selectedIds.map(pid => {
        const prod = produits.find(p => p.id === pid)!;
        const mods = prod.modules.filter(m => (moduleSelections[pid] ?? []).includes(m.id));
        return `${prod.nom} [${mods.map(m => m.nom).join(', ') || 'sans module'}]`;
      }).join(' + ');
    }

    await submitDevis({
      ...form,
      logiciel,
      message: form.message || `Demande configurateur. Total estimatif: ${fmt(getTotal())}`,
    });
    setSubmitting(false);
    setDone(true);
  }

  /* ── DONE ── */
  if (done) return (
    <div style={{ textAlign: 'center', padding: '80px 0' }}>
      <div style={{ fontSize: 52, marginBottom: 20 }}>✓</div>
      <h2 style={{ fontSize: 28 }}>Demande envoyée !</h2>
      <p style={{ color: 'var(--text-secondary)', maxWidth: 420, margin: '12px auto 0' }}>
        Notre équipe vous contactera sous 48h ouvrables pour finaliser votre devis.
      </p>
      <Link href="/" className="btn btn-gold" style={{ marginTop: 36 }}>Retour à l'accueil</Link>
    </div>
  );

  // Step labels — bundle skips modules step
  const stepLabels = mode === 'bundle'
    ? ['Logiciel', 'Coordonnées', 'Récapitulatif']
    : ['Logiciel', 'Modules', 'Coordonnées', 'Récapitulatif'];

  // Visual step index (adjusted for bundle mode)
  function visualStep() {
    if (mode === 'bundle') return step === 1 ? 1 : step === 3 ? 2 : 3;
    return step;
  }

  return (
    <div style={{ maxWidth: 820, margin: '0 auto' }}>
      {/* Progress */}
      <div className="flex items-center gap-0" style={{ marginBottom: 48, justifyContent: 'center' }}>
        {stepLabels.map((s, i) => {
          const n = i + 1;
          const vs = visualStep();
          const active = vs === n, past = vs > n;
          return (
            <div key={s} className="flex items-center">
              <div style={{ display: 'flex', alignItems: 'center', gap: 9 }}>
                <div style={{ width: 30, height: 30, borderRadius: '50%', display: 'grid', placeItems: 'center', fontSize: 13, fontWeight: 600, background: active ? 'var(--gold)' : past ? 'var(--cel-success)' : 'rgba(255,255,255,0.07)', color: active || past ? '#000' : 'var(--text-muted)', border: active || past ? 'none' : '1px solid var(--hairline)' }}>
                  {past ? '✓' : n}
                </div>
                <span style={{ fontSize: 13.5, color: active ? 'var(--text-primary)' : 'var(--text-muted)', fontWeight: active ? 600 : 400 }}>{s}</span>
              </div>
              {i < stepLabels.length - 1 && <div style={{ width: 48, height: 1, background: vs > n ? 'var(--cel-success)' : 'var(--hairline)', margin: '0 12px' }} />}
            </div>
          );
        })}
      </div>

      {/* ── STEP 1 : Logiciel ── */}
      {step === 1 && (
        <div>
          <div className="flex gap-2" style={{ marginBottom: 28 }}>
            {(['individual', 'bundle'] as const).map(m => (
              <button key={m} onClick={() => setMode(m)} className={`btn ${mode === m ? 'btn-gold' : 'btn-glass'} btn-sm`}>
                {m === 'individual' ? '⬡ Logiciels individuels' : '◈ Bundles'}
              </button>
            ))}
          </div>

          {/* Individual */}
          {mode === 'individual' && (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 12 }}>
              {produits.map(p => {
                const sel = selectedIds.includes(p.id);
                return (
                  <div key={p.id} onClick={() => toggleProduct(p.id)} className="card card-hover"
                    style={{ cursor: 'pointer', border: `1px solid ${sel ? 'rgba(201,168,76,0.5)' : 'var(--glass-border)'}`, background: sel ? 'rgba(201,168,76,0.04)' : undefined, transition: 'all 0.18s' }}>
                    <div style={{ display: 'grid', gridTemplateColumns: '1fr auto', gap: 16, alignItems: 'center' }}>
                      <div className="flex items-center gap-3">
                        <span style={{ fontSize: 28, flexShrink: 0 }}>{p.icone}</span>
                        <div>
                          <div style={{ fontWeight: 600, fontSize: 16 }}>{p.nom}</div>
                          <div style={{ fontSize: 13, color: 'var(--text-muted)', marginTop: 2 }}>{p.description}</div>
                          <div style={{ fontSize: 12, color: 'var(--text-faint)', marginTop: 4 }}>
                            {p.modules.length} module{p.modules.length > 1 ? 's' : ''} compatible{p.modules.length > 1 ? 's' : ''}
                          </div>
                        </div>
                      </div>
                      <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'flex-end', gap: 8 }}>
                        <div style={{ width: 24, height: 24, borderRadius: 6, border: `2px solid ${sel ? 'var(--gold)' : 'var(--glass-border)'}`, background: sel ? 'var(--gold)' : 'transparent', display: 'grid', placeItems: 'center' }}>
                          {sel && <span style={{ fontSize: 11, color: '#000', fontWeight: 700 }}>✓</span>}
                        </div>
                        <div style={{ fontSize: 12, color: 'var(--text-faint)' }}>à partir de</div>
                        <div style={{ fontFamily: 'var(--font-display)', fontSize: 20, color: sel ? 'var(--gold-bright)' : 'var(--text-primary)' }}>
                          {fmt(p.modules.reduce((s, m) => s + m.prix, 0))}
                        </div>
                      </div>
                    </div>
                  </div>
                );
              })}
            </div>
          )}

          {/* Bundle */}
          {mode === 'bundle' && (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 14 }}>
              {bundles.length === 0 && <p style={{ color: 'var(--text-muted)', textAlign: 'center', padding: 32 }}>Aucun bundle disponible.</p>}
              {bundles.map(b => {
                const bProds = produits.filter(p => b.produits.includes(p.nom));
                const base   = bProds.reduce((s, p) => s + p.prix, 0);
                const prix   = Math.round(base * (1 - b.remise_pct / 100));
                const sel    = selectedBundle?.id === b.id;
                return (
                  <div key={b.id} onClick={() => setSelectedBundle(sel ? null : b)} className="card card-hover"
                    style={{ cursor: 'pointer', border: `1px solid ${sel ? 'rgba(201,168,76,0.5)' : 'var(--glass-border)'}`, background: sel ? 'rgba(201,168,76,0.04)' : undefined, transition: 'all 0.18s', display: 'grid', gridTemplateColumns: '1fr auto', gap: 16, alignItems: 'center' }}>
                    <div>
                      <div className="flex items-center gap-2.5 mb-1">
                        <span style={{ fontWeight: 600, fontSize: 17 }}>{b.nom}</span>
                        {b.badge && <span className="badge badge-gold" style={{ fontSize: 11 }}>{b.badge}</span>}
                      </div>
                      <p style={{ fontSize: 13.5, color: 'var(--text-secondary)', marginBottom: 8 }}>{b.description}</p>
                      <div className="flex gap-2 flex-wrap">
                        {b.produits.map(pn => <span key={pn} style={{ fontSize: 12, padding: '3px 10px', background: 'rgba(201,168,76,0.08)', border: '1px solid rgba(201,168,76,0.2)', borderRadius: 'var(--r-pill)', color: 'var(--gold)' }}>{pn}</span>)}
                      </div>
                    </div>
                    <div style={{ textAlign: 'right', display: 'flex', flexDirection: 'column', alignItems: 'flex-end', gap: 6 }}>
                      <div style={{ width: 24, height: 24, borderRadius: '50%', border: `2px solid ${sel ? 'var(--gold)' : 'var(--glass-border)'}`, background: sel ? 'var(--gold)' : 'transparent', display: 'grid', placeItems: 'center' }}>
                        {sel && <span style={{ fontSize: 11, color: '#000', fontWeight: 700 }}>✓</span>}
                      </div>
                      {b.remise_pct > 0 && <div style={{ fontSize: 12, color: 'var(--text-faint)', textDecoration: 'line-through' }}>{fmt(base)}</div>}
                      <div style={{ fontFamily: 'var(--font-display)', fontSize: 22, color: sel ? 'var(--gold-bright)' : 'var(--text-primary)' }}>{fmt(prix)}</div>
                      {b.remise_pct > 0 && <div style={{ fontSize: 11, color: 'var(--cel-success)' }}>−{b.remise_pct}%</div>}
                    </div>
                  </div>
                );
              })}
            </div>
          )}

          <div className="flex items-center justify-between" style={{ marginTop: 32, paddingTop: 24, borderTop: '1px solid var(--hairline)' }}>
            <div style={{ fontSize: 14, color: 'var(--text-muted)' }}>
              {mode === 'individual' && selectedIds.length > 0 && (
                <>{selectedIds.length} logiciel{selectedIds.length > 1 ? 's' : ''} sélectionné{selectedIds.length > 1 ? 's' : ''}</>
              )}
              {mode === 'bundle' && selectedBundle && selectedBundle.nom}
            </div>
            <button onClick={() => goNext(1)} disabled={!hasSelection()} className="btn btn-gold" style={{ opacity: hasSelection() ? 1 : 0.4 }}>
              {mode === 'bundle' ? 'Continuer →' : 'Configurer les modules →'}
            </button>
          </div>
        </div>
      )}

      {/* ── STEP 2 : Modules (individual only) ── */}
      {step === 2 && (
        <div style={{ display: 'flex', flexDirection: 'column', gap: 24 }}>
          <p style={{ fontSize: 14, color: 'var(--text-muted)' }}>
            Choisissez les modules à inclure pour chaque logiciel. Seuls les modules compatibles sont affichés.
          </p>

          {selectedProduits.map(p => {
            const selMods = moduleSelections[p.id] ?? [];
            const subtotal = p.modules.filter(m => selMods.includes(m.id)).reduce((s, m) => s + m.prix, 0);
            return (
              <div key={p.id} className="card" style={{ display: 'flex', flexDirection: 'column', gap: 14 }}>
                <div className="flex items-center justify-between">
                  <div className="flex items-center gap-3">
                    <span style={{ fontSize: 24 }}>{p.icone}</span>
                    <span style={{ fontWeight: 600, fontSize: 17 }}>{p.nom}</span>
                  </div>
                  <span style={{ fontFamily: 'var(--font-display)', fontSize: 18, color: 'var(--gold-bright)' }}>{fmt(subtotal)}</span>
                </div>

                {p.modules.length === 0 ? (
                  <p style={{ fontSize: 13, color: 'var(--text-faint)', fontStyle: 'italic' }}>Aucun module configurable pour ce logiciel.</p>
                ) : (
                  <div style={{ display: 'flex', flexDirection: 'column', gap: 8, padding: '12px 14px', background: 'rgba(255,255,255,0.025)', borderRadius: 'var(--r-sm)', border: '1px solid var(--glass-border)' }}>
                    {p.modules.map(m => {
                      const checked = selMods.includes(m.id);
                      return (
                        <label key={m.id} onClick={e => e.stopPropagation()}
                          style={{ display: 'grid', gridTemplateColumns: '24px 26px 1fr auto', alignItems: 'center', gap: 10, cursor: 'pointer', padding: '8px 4px', borderBottom: '1px solid var(--hairline)' }}>
                          <input type="checkbox" checked={checked} onChange={() => toggleModule(p.id, m.id)}
                            style={{ width: 16, height: 16, accentColor: 'var(--gold)', margin: '0 auto' }} />
                          <span style={{ fontSize: 18, textAlign: 'center' }}>{m.icone}</span>
                          <div>
                            <div style={{ fontSize: 14, fontWeight: checked ? 500 : 400, color: checked ? 'var(--text-primary)' : 'var(--text-secondary)' }}>{m.nom}</div>
                            {m.description && <div style={{ fontSize: 12, color: 'var(--text-faint)' }}>{m.description}</div>}
                          </div>
                          <span style={{ fontFamily: 'var(--font-display)', fontSize: 14, color: checked ? 'var(--gold-bright)' : 'var(--text-muted)', whiteSpace: 'nowrap' }}>
                            {fmt(m.prix)}
                          </span>
                        </label>
                      );
                    })}
                  </div>
                )}
              </div>
            );
          })}

          <div style={{ padding: '16px 20px', background: 'rgba(201,168,76,0.06)', border: '1px solid rgba(201,168,76,0.2)', borderRadius: 'var(--r-sm)', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
            <span style={{ fontSize: 15, color: 'var(--text-secondary)' }}>Total estimatif</span>
            <span style={{ fontFamily: 'var(--font-display)', fontSize: 26, color: 'var(--gold-bright)' }}>{fmt(getTotal())}</span>
          </div>

          <div className="flex items-center justify-between">
            <button onClick={() => goPrev(2)} className="btn btn-glass">← Retour</button>
            <button onClick={() => { if (hasModules()) setStep(3); }} disabled={!hasModules()} className="btn btn-gold" style={{ opacity: hasModules() ? 1 : 0.4 }}>
              Continuer →
            </button>
          </div>
        </div>
      )}

      {/* ── STEP 3 : Coordonnées ── */}
      {step === 3 && (
        <div style={{ display: 'flex', flexDirection: 'column', gap: 20 }}>
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 16 }}>
            {[['nom','Nom complet *','Votre nom'],['entreprise','Société *','Nom de votre entreprise']].map(([k,l,ph]) => (
              <div key={k}>
                <label style={lbl}>{l}</label>
                <input style={{ ...inp, borderColor: errors[k] ? 'var(--cel-danger)' : undefined }}
                  value={form[k as keyof typeof form]} onChange={e => setForm(f => ({ ...f, [k]: e.target.value }))} placeholder={ph} />
                {errors[k] && <span style={{ fontSize: 12, color: 'var(--cel-danger)' }}>{errors[k]}</span>}
              </div>
            ))}
          </div>
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 16 }}>
            <div>
              <label style={lbl}>Email *</label>
              <input style={{ ...inp, borderColor: errors.email ? 'var(--cel-danger)' : undefined }} type="email"
                value={form.email} onChange={e => setForm(f => ({ ...f, email: e.target.value }))} placeholder="vous@societe.dz" />
              {errors.email && <span style={{ fontSize: 12, color: 'var(--cel-danger)' }}>{errors.email}</span>}
            </div>
            <div>
              <label style={lbl}>Téléphone</label>
              <input style={inp} value={form.telephone} onChange={e => setForm(f => ({ ...f, telephone: e.target.value }))} placeholder="+213 5X XX XX XX" />
            </div>
          </div>
          <div>
            <label style={lbl}>Message (optionnel)</label>
            <textarea style={{ ...inp, minHeight: 90, resize: 'vertical' }} value={form.message}
              onChange={e => setForm(f => ({ ...f, message: e.target.value }))} placeholder="Nombre d'utilisateurs, délai souhaité, questions…" />
          </div>
          <div className="flex items-center justify-between" style={{ paddingTop: 8 }}>
            <button onClick={() => goPrev(3)} className="btn btn-glass">← Retour</button>
            <button onClick={() => { const e = validateForm(); setErrors(e); if (!Object.keys(e).length) setStep(4); }} className="btn btn-gold">Continuer →</button>
          </div>
        </div>
      )}

      {/* ── STEP 4 : Récapitulatif ── */}
      {step === 4 && (
        <div style={{ display: 'flex', flexDirection: 'column', gap: 24 }}>
          {/* Selection recap */}
          <div className="card" style={{ display: 'flex', flexDirection: 'column', gap: 16 }}>
            <div style={{ fontSize: 13, fontWeight: 600, color: 'var(--text-muted)', letterSpacing: '0.08em', textTransform: 'uppercase' }}>Votre configuration</div>

            {mode === 'bundle' && selectedBundle ? (
              <div>
                <div className="flex items-center gap-2 mb-2">
                  <span style={{ fontWeight: 600, fontSize: 16 }}>{selectedBundle.nom}</span>
                  {selectedBundle.badge && <span className="badge badge-gold" style={{ fontSize: 11 }}>{selectedBundle.badge}</span>}
                </div>
                <div className="flex gap-2 flex-wrap">
                  {selectedBundle.produits.map(pn => <span key={pn} style={{ fontSize: 12, padding: '3px 10px', background: 'rgba(201,168,76,0.08)', border: '1px solid rgba(201,168,76,0.2)', borderRadius: 'var(--r-pill)', color: 'var(--gold)' }}>{pn}</span>)}
                </div>
                {selectedBundle.remise_pct > 0 && <div style={{ marginTop: 8, fontSize: 13, color: 'var(--cel-success)' }}>Remise bundle −{selectedBundle.remise_pct}%</div>}
              </div>
            ) : (
              selectedProduits.map(p => {
                const selMods = p.modules.filter(m => (moduleSelections[p.id] ?? []).includes(m.id));
                const subtotal = selMods.reduce((s, m) => s + m.prix, 0);
                return (
                  <div key={p.id} style={{ paddingBottom: 12, borderBottom: '1px solid var(--hairline)' }}>
                    <div className="flex items-center justify-between mb-8">
                      <span style={{ fontWeight: 600, fontSize: 15 }}>{p.icone} {p.nom}</span>
                      <span style={{ fontFamily: 'var(--font-display)', fontSize: 16, color: 'var(--gold-bright)' }}>{fmt(subtotal)}</span>
                    </div>
                    {selMods.length > 0 ? (
                      <div style={{ display: 'flex', gap: 5, flexWrap: 'wrap', marginTop: 6 }}>
                        {selMods.map(m => <span key={m.id} style={{ fontSize: 11.5, padding: '3px 9px', background: 'rgba(255,255,255,0.04)', border: '1px solid var(--hairline)', borderRadius: 'var(--r-pill)', color: 'var(--text-muted)' }}>{m.icone} {m.nom} — {m.prix.toLocaleString('fr-DZ')} DA</span>)}
                      </div>
                    ) : (
                      <span style={{ fontSize: 12, color: 'var(--text-faint)', fontStyle: 'italic' }}>Aucun module sélectionné</span>
                    )}
                  </div>
                );
              })
            )}

            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', paddingTop: 4 }}>
              <span style={{ fontSize: 14, color: 'var(--text-secondary)' }}>Total estimatif</span>
              <span style={{ fontFamily: 'var(--font-display)', fontSize: 26, color: 'var(--gold-bright)' }}>{fmt(getTotal())}</span>
            </div>
          </div>

          {/* Contact recap */}
          <div className="card" style={{ display: 'flex', flexDirection: 'column', gap: 8 }}>
            <div style={{ fontSize: 13, fontWeight: 600, color: 'var(--text-muted)', letterSpacing: '0.08em', textTransform: 'uppercase', marginBottom: 4 }}>Vos coordonnées</div>
            {([['Nom', form.nom], ['Société', form.entreprise], ['Email', form.email], ...(form.telephone ? [['Téléphone', form.telephone]] : [])] as [string,string][]).map(([k, v]) => (
              <div key={k} className="flex gap-3" style={{ fontSize: 14 }}>
                <span style={{ color: 'var(--text-muted)', minWidth: 80 }}>{k}</span>
                <span style={{ color: 'var(--text-secondary)' }}>{v}</span>
              </div>
            ))}
            {form.message && <div style={{ marginTop: 6, fontSize: 13.5, color: 'var(--text-muted)', fontStyle: 'italic' }}>"{form.message}"</div>}
          </div>

          <p style={{ fontSize: 13, color: 'var(--text-faint)', textAlign: 'center' }}>
            En soumettant, vous acceptez que notre équipe vous recontacte pour finaliser votre devis.
          </p>
          <div className="flex items-center justify-between">
            <button onClick={() => goPrev(4)} className="btn btn-glass">← Retour</button>
            <button onClick={handleSubmit} disabled={submitting} className="btn btn-gold" style={{ minWidth: 200 }}>
              {submitting ? 'Envoi en cours…' : 'Envoyer ma demande →'}
            </button>
          </div>
        </div>
      )}
    </div>
  );
}
