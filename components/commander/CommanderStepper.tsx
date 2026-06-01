'use client';
import { useState } from 'react';
import { submitDevis } from '@/app/actions/devis';
import type { Database } from '@/lib/supabase/types';
import Link from 'next/link';

type ModuleRow = { id: string; nom: string; description: string; prix: number; icone: string };
type Produit = Omit<Database['public']['Tables']['produits']['Row'], 'modules'> & { modules: ModuleRow[] };
type Bundle  = Database['public']['Tables']['bundles']['Row'];

const inp: React.CSSProperties = { padding: '11px 14px', background: 'rgba(255,255,255,0.04)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)', color: 'var(--text-primary)', fontSize: 14.5, outline: 'none', width: '100%' };
const lbl: React.CSSProperties = { fontSize: 13, fontWeight: 500, color: 'var(--text-secondary)', display: 'block', marginBottom: 7 };

function fmt(n: number) { return n.toLocaleString('fr-DZ') + ' DA'; }

export function CommanderStepper({ produits, bundles }: { produits: Produit[]; bundles: Bundle[] }) {
  const [step, setStep] = useState<1 | 2 | 3>(1);
  const [mode, setMode] = useState<'individual' | 'bundle'>('individual');
  const [selectedIds, setSelectedIds] = useState<string[]>([]);
  const [selectedBundle, setSelectedBundle] = useState<Bundle | null>(null);
  const [form, setForm] = useState({ nom: '', entreprise: '', email: '', telephone: '', message: '' });
  const [errors, setErrors] = useState<Record<string, string>>({});
  const [submitting, setSubmitting] = useState(false);
  const [done, setDone] = useState(false);

  const selectedProduits = produits.filter(p => selectedIds.includes(p.id));
  const bundleProduits   = selectedBundle ? produits.filter(p => selectedBundle.produits.includes(p.nom)) : [];

  function getTotal() {
    if (mode === 'bundle' && selectedBundle) {
      const base = bundleProduits.reduce((s, p) => s + p.prix, 0);
      return Math.round(base * (1 - selectedBundle.remise_pct / 100));
    }
    return selectedProduits.reduce((s, p) => s + p.prix, 0);
  }

  function hasSelection() {
    return mode === 'individual' ? selectedIds.length > 0 : selectedBundle !== null;
  }

  function validateForm() {
    const e: Record<string, string> = {};
    if (!form.nom.trim()) e.nom = 'Requis';
    if (!form.entreprise.trim()) e.entreprise = 'Requis';
    if (!form.email.trim() || !/^[^@\s]+@[^@\s]+\.[^@\s]+$/.test(form.email)) e.email = 'Email invalide';
    return e;
  }

  async function handleSubmit() {
    const e = validateForm(); setErrors(e);
    if (Object.keys(e).length > 0) return;
    setSubmitting(true);
    const logiciel = mode === 'bundle' && selectedBundle
      ? `Bundle « ${selectedBundle.nom} » — ${selectedBundle.produits.join(', ')} (−${selectedBundle.remise_pct}%)`
      : selectedProduits.map(p => p.nom).join(', ');
    await submitDevis({ ...form, logiciel, message: form.message || 'Demande via le configurateur.' });
    setSubmitting(false); setDone(true);
  }

  /* ── DONE ── */
  if (done) return (
    <div style={{ textAlign: 'center', padding: '80px 0' }}>
      <div style={{ fontSize: 52, marginBottom: 20 }}>✓</div>
      <h2 style={{ fontSize: 28 }}>Demande envoyée !</h2>
      <p style={{ color: 'var(--text-secondary)', marginTop: 12, maxWidth: 420, margin: '12px auto 0' }}>
        Nous avons bien reçu votre demande pour <strong style={{ color: 'var(--gold-bright)' }}>
          {mode === 'bundle' ? selectedBundle?.nom : selectedProduits.map(p => p.nom).join(', ')}
        </strong>. Notre équipe vous contactera sous 48h ouvrables.
      </p>
      <Link href="/" className="btn btn-gold" style={{ marginTop: 36 }}>Retour à l'accueil</Link>
    </div>
  );

  const stepLabels = ['Sélection', 'Coordonnées', 'Récapitulatif'];

  return (
    <div style={{ maxWidth: 820, margin: '0 auto' }}>
      {/* Progress */}
      <div className="flex items-center gap-0" style={{ marginBottom: 48, justifyContent: 'center' }}>
        {stepLabels.map((s, i) => {
          const n = (i + 1) as 1 | 2 | 3;
          const active = step === n, past = step > n;
          return (
            <div key={s} className="flex items-center">
              <div style={{ display: 'flex', alignItems: 'center', gap: 9 }}>
                <div style={{ width: 30, height: 30, borderRadius: '50%', display: 'grid', placeItems: 'center', fontSize: 13, fontWeight: 600, background: active ? 'var(--gold)' : past ? 'var(--cel-success)' : 'rgba(255,255,255,0.07)', color: active || past ? '#000' : 'var(--text-muted)', border: active || past ? 'none' : '1px solid var(--hairline)' }}>
                  {past ? '✓' : n}
                </div>
                <span style={{ fontSize: 13.5, color: active ? 'var(--text-primary)' : 'var(--text-muted)', fontWeight: active ? 600 : 400 }}>{s}</span>
              </div>
              {i < 2 && <div style={{ width: 48, height: 1, background: step > n ? 'var(--cel-success)' : 'var(--hairline)', margin: '0 12px' }} />}
            </div>
          );
        })}
      </div>

      {/* ── STEP 1 ── */}
      {step === 1 && (
        <div>
          <div className="flex gap-2" style={{ marginBottom: 28 }}>
            {(['individual', 'bundle'] as const).map(m => (
              <button key={m} onClick={() => setMode(m)} className={`btn ${mode === m ? 'btn-gold' : 'btn-glass'} btn-sm`}>
                {m === 'individual' ? '⬡ Logiciels individuels' : '◈ Bundles'}
              </button>
            ))}
          </div>

          {/* Individual mode */}
          {mode === 'individual' && (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 14 }}>
              {produits.map(p => {
                const sel = selectedIds.includes(p.id);
                return (
                  <div key={p.id} onClick={() => setSelectedIds(ids => ids.includes(p.id) ? ids.filter(x => x !== p.id) : [...ids, p.id])}
                    className="card card-hover"
                    style={{ cursor: 'pointer', border: `1px solid ${sel ? 'rgba(201,168,76,0.5)' : 'var(--glass-border)'}`, background: sel ? 'rgba(201,168,76,0.04)' : undefined, transition: 'all 0.18s' }}>
                    <div style={{ display: 'grid', gridTemplateColumns: '1fr auto', gap: 16, alignItems: 'start' }}>
                      <div>
                        <div className="flex items-center gap-3 mb-2">
                          <span style={{ fontSize: 26 }}>{p.icone}</span>
                          <div>
                            <div style={{ fontWeight: 600, fontSize: 17 }}>{p.nom}</div>
                            <div style={{ fontSize: 13.5, color: 'var(--text-muted)', marginTop: 2 }}>{p.description}</div>
                          </div>
                        </div>
                        {p.modules.length > 0 && (
                          <div style={{ display: 'flex', gap: 6, flexWrap: 'wrap', marginTop: 10 }}>
                            {p.modules.map(m => (
                              <span key={m.id} style={{ fontSize: 12, padding: '3px 10px', background: 'rgba(255,255,255,0.05)', border: '1px solid var(--hairline)', borderRadius: 'var(--r-pill)', color: 'var(--text-muted)' }}>
                                {m.icone} {m.nom}
                              </span>
                            ))}
                          </div>
                        )}
                      </div>
                      <div style={{ textAlign: 'right', display: 'flex', flexDirection: 'column', alignItems: 'flex-end', gap: 10 }}>
                        <div style={{ width: 24, height: 24, borderRadius: 6, border: `2px solid ${sel ? 'var(--gold)' : 'var(--glass-border)'}`, background: sel ? 'var(--gold)' : 'transparent', display: 'grid', placeItems: 'center', flexShrink: 0 }}>
                          {sel && <span style={{ fontSize: 11, color: '#000', fontWeight: 700 }}>✓</span>}
                        </div>
                        <div style={{ fontFamily: 'var(--font-display)', fontSize: 22, color: sel ? 'var(--gold-bright)' : 'var(--text-primary)' }}>{fmt(p.prix)}</div>
                        <div style={{ fontSize: 12, color: 'var(--text-faint)' }}>Licence perpétuelle</div>
                      </div>
                    </div>
                  </div>
                );
              })}
            </div>
          )}

          {/* Bundle mode */}
          {mode === 'bundle' && (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 14 }}>
              {bundles.length === 0 && <p style={{ color: 'var(--text-muted)', padding: 32, textAlign: 'center' }}>Aucun bundle disponible.</p>}
              {bundles.map(b => {
                const bProds = produits.filter(p => b.produits.includes(p.nom));
                const base   = bProds.reduce((s, p) => s + p.prix, 0);
                const prix   = Math.round(base * (1 - b.remise_pct / 100));
                const sel    = selectedBundle?.id === b.id;
                const allMods = bProds.flatMap(p => p.modules);
                const uniqMods = allMods.filter((m, i) => allMods.findIndex(x => x.id === m.id) === i);
                return (
                  <div key={b.id} onClick={() => setSelectedBundle(sel ? null : b)}
                    className="card card-hover"
                    style={{ cursor: 'pointer', border: `1px solid ${sel ? 'rgba(201,168,76,0.5)' : 'var(--glass-border)'}`, background: sel ? 'rgba(201,168,76,0.04)' : undefined, transition: 'all 0.18s' }}>
                    <div style={{ display: 'grid', gridTemplateColumns: '1fr auto', gap: 16, alignItems: 'start' }}>
                      <div>
                        <div className="flex items-center gap-2.5 mb-1">
                          <span style={{ fontWeight: 600, fontSize: 17 }}>{b.nom}</span>
                          {b.badge && <span className="badge badge-gold" style={{ fontSize: 11 }}>{b.badge}</span>}
                        </div>
                        <p style={{ fontSize: 13.5, color: 'var(--text-secondary)', marginBottom: 10 }}>{b.description}</p>
                        <div className="flex gap-2 flex-wrap">
                          {b.produits.map(pn => <span key={pn} style={{ fontSize: 12, padding: '3px 10px', background: 'rgba(201,168,76,0.08)', border: '1px solid rgba(201,168,76,0.2)', borderRadius: 'var(--r-pill)', color: 'var(--gold)' }}>{pn}</span>)}
                        </div>
                        {uniqMods.length > 0 && (
                          <div style={{ display: 'flex', gap: 5, flexWrap: 'wrap', marginTop: 8 }}>
                            {uniqMods.slice(0, 6).map(m => <span key={m.id} style={{ fontSize: 11, padding: '2px 8px', background: 'rgba(255,255,255,0.04)', border: '1px solid var(--hairline)', borderRadius: 'var(--r-pill)', color: 'var(--text-faint)' }}>{m.icone} {m.nom}</span>)}
                            {uniqMods.length > 6 && <span style={{ fontSize: 11, color: 'var(--text-faint)', padding: '2px 0' }}>+{uniqMods.length - 6} modules</span>}
                          </div>
                        )}
                      </div>
                      <div style={{ textAlign: 'right', display: 'flex', flexDirection: 'column', alignItems: 'flex-end', gap: 8 }}>
                        <div style={{ width: 24, height: 24, borderRadius: '50%', border: `2px solid ${sel ? 'var(--gold)' : 'var(--glass-border)'}`, background: sel ? 'var(--gold)' : 'transparent', display: 'grid', placeItems: 'center' }}>
                          {sel && <span style={{ fontSize: 11, color: '#000', fontWeight: 700 }}>✓</span>}
                        </div>
                        {b.remise_pct > 0 && <div style={{ fontSize: 12, color: 'var(--text-faint)', textDecoration: 'line-through' }}>{fmt(base)}</div>}
                        <div style={{ fontFamily: 'var(--font-display)', fontSize: 24, color: sel ? 'var(--gold-bright)' : 'var(--text-primary)' }}>{fmt(prix)}</div>
                        {b.remise_pct > 0 && <div style={{ fontSize: 12, color: 'var(--cel-success)' }}>Économisez {b.remise_pct}%</div>}
                      </div>
                    </div>
                  </div>
                );
              })}
            </div>
          )}

          <div className="flex items-center justify-between" style={{ marginTop: 32, paddingTop: 24, borderTop: '1px solid var(--hairline)' }}>
            <div style={{ fontSize: 15, color: 'var(--text-muted)' }}>
              {hasSelection() && <>Total estimatif : <span style={{ color: 'var(--gold-bright)', fontFamily: 'var(--font-display)', fontSize: 20 }}>{fmt(getTotal())}</span></>}
            </div>
            <button onClick={() => setStep(2)} disabled={!hasSelection()} className="btn btn-gold" style={{ opacity: hasSelection() ? 1 : 0.4 }}>
              Continuer →
            </button>
          </div>
        </div>
      )}

      {/* ── STEP 2 ── */}
      {step === 2 && (
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
              onChange={e => setForm(f => ({ ...f, message: e.target.value }))} placeholder="Précisez votre besoin, nombre d'utilisateurs, délai…" />
          </div>
          <div className="flex items-center justify-between" style={{ paddingTop: 8 }}>
            <button onClick={() => setStep(1)} className="btn btn-glass">← Retour</button>
            <button onClick={() => { const e = validateForm(); setErrors(e); if (!Object.keys(e).length) setStep(3); }} className="btn btn-gold">Continuer →</button>
          </div>
        </div>
      )}

      {/* ── STEP 3 ── */}
      {step === 3 && (
        <div style={{ display: 'flex', flexDirection: 'column', gap: 24 }}>
          <div className="card" style={{ display: 'flex', flexDirection: 'column', gap: 14 }}>
            <div style={{ fontSize: 13, fontWeight: 600, color: 'var(--text-muted)', letterSpacing: '0.08em', textTransform: 'uppercase' }}>Votre sélection</div>
            {mode === 'bundle' && selectedBundle ? (
              <div>
                <div className="flex items-center gap-2 mb-2">
                  <span style={{ fontWeight: 600, fontSize: 16 }}>{selectedBundle.nom}</span>
                  {selectedBundle.badge && <span className="badge badge-gold" style={{ fontSize: 11 }}>{selectedBundle.badge}</span>}
                </div>
                <div className="flex gap-2 flex-wrap mb-2">
                  {selectedBundle.produits.map(p => <span key={p} style={{ fontSize: 12, padding: '3px 10px', background: 'rgba(201,168,76,0.08)', border: '1px solid rgba(201,168,76,0.2)', borderRadius: 'var(--r-pill)', color: 'var(--gold)' }}>{p}</span>)}
                </div>
                {bundleProduits.flatMap(p => p.modules).length > 0 && (
                  <div style={{ marginTop: 8, display: 'flex', gap: 5, flexWrap: 'wrap' }}>
                    {bundleProduits.flatMap(p => p.modules).filter((m, i, a) => a.findIndex(x => x.id === m.id) === i).map(m => (
                      <span key={m.id} style={{ fontSize: 11, padding: '2px 8px', background: 'rgba(255,255,255,0.04)', border: '1px solid var(--hairline)', borderRadius: 'var(--r-pill)', color: 'var(--text-faint)' }}>{m.icone} {m.nom}</span>
                    ))}
                  </div>
                )}
                {selectedBundle.remise_pct > 0 && <div style={{ marginTop: 8, fontSize: 13, color: 'var(--cel-success)' }}>Remise bundle −{selectedBundle.remise_pct}% appliquée</div>}
              </div>
            ) : (
              <div style={{ display: 'flex', flexDirection: 'column', gap: 12 }}>
                {selectedProduits.map(p => (
                  <div key={p.id}>
                    <div className="flex items-center justify-between">
                      <span style={{ fontSize: 15, fontWeight: 500 }}>{p.icone} {p.nom}</span>
                      <span style={{ fontFamily: 'var(--font-display)', fontSize: 16, color: 'var(--text-secondary)' }}>{fmt(p.prix)}</span>
                    </div>
                    {p.modules.length > 0 && (
                      <div style={{ display: 'flex', gap: 5, flexWrap: 'wrap', marginTop: 5 }}>
                        {p.modules.map(m => <span key={m.id} style={{ fontSize: 11, padding: '2px 8px', background: 'rgba(255,255,255,0.04)', border: '1px solid var(--hairline)', borderRadius: 'var(--r-pill)', color: 'var(--text-faint)' }}>{m.icone} {m.nom} — {m.prix.toLocaleString('fr-DZ')} DA</span>)}
                      </div>
                    )}
                  </div>
                ))}
              </div>
            )}
            <div style={{ borderTop: '1px solid var(--hairline)', paddingTop: 12, display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
              <span style={{ fontSize: 14, color: 'var(--text-secondary)' }}>Total estimatif</span>
              <span style={{ fontFamily: 'var(--font-display)', fontSize: 24, color: 'var(--gold-bright)' }}>{fmt(getTotal())}</span>
            </div>
          </div>

          <div className="card" style={{ display: 'flex', flexDirection: 'column', gap: 8 }}>
            <div style={{ fontSize: 13, fontWeight: 600, color: 'var(--text-muted)', letterSpacing: '0.08em', textTransform: 'uppercase', marginBottom: 4 }}>Vos coordonnées</div>
            {([['Nom', form.nom], ['Société', form.entreprise], ['Email', form.email], ...(form.telephone ? [['Téléphone', form.telephone]] : [])] as [string, string][]).map(([k, v]) => (
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
            <button onClick={() => setStep(2)} className="btn btn-glass">← Retour</button>
            <button onClick={handleSubmit} disabled={submitting} className="btn btn-gold" style={{ minWidth: 200 }}>
              {submitting ? 'Envoi en cours…' : 'Envoyer ma demande →'}
            </button>
          </div>
        </div>
      )}
    </div>
  );
}
