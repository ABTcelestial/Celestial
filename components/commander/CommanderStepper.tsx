'use client';
import { useState } from 'react';
import { submitDevis } from '@/app/actions/devis';
import type { Database } from '@/lib/supabase/types';
import Link from 'next/link';

type Produit = Database['public']['Tables']['produits']['Row'];
type Bundle = Database['public']['Tables']['bundles']['Row'];

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
  const bundleProduits = selectedBundle ? produits.filter(p => selectedBundle.produits.includes(p.nom)) : [];

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

  function toggleProduct(id: string) {
    setSelectedIds(p => p.includes(id) ? p.filter(x => x !== id) : [...p, id]);
  }

  function validateForm() {
    const e: Record<string, string> = {};
    if (!form.nom.trim()) e.nom = 'Requis';
    if (!form.entreprise.trim()) e.entreprise = 'Requis';
    if (!form.email.trim() || !/^[^@\s]+@[^@\s]+\.[^@\s]+$/.test(form.email)) e.email = 'Email invalide';
    return e;
  }

  async function handleSubmit() {
    const e = validateForm();
    setErrors(e);
    if (Object.keys(e).length > 0) return;
    setSubmitting(true);
    const logiciel = mode === 'bundle' && selectedBundle
      ? `Bundle « ${selectedBundle.nom} » — ${selectedBundle.produits.join(', ')} (−${selectedBundle.remise_pct}%)`
      : selectedProduits.map(p => p.nom).join(', ');
    await submitDevis({ ...form, logiciel, message: form.message || 'Demande via le configurateur.' });
    setSubmitting(false);
    setDone(true);
  }

  /* ── DONE ── */
  if (done) return (
    <div style={{ textAlign: 'center', padding: '80px 0' }}>
      <div style={{ fontSize: 52, marginBottom: 20 }}>✓</div>
      <h2 style={{ fontSize: 28 }}>Demande envoyée !</h2>
      <p style={{ color: 'var(--text-secondary)', marginTop: 12, maxWidth: 420, margin: '12px auto 0' }}>
        Nous avons bien reçu votre demande pour <strong style={{ color: 'var(--gold-bright)' }}>{mode === 'bundle' ? selectedBundle?.nom : selectedProduits.map(p => p.nom).join(', ')}</strong>.
        Notre équipe vous contactera sous 48h ouvrables.
      </p>
      <Link href="/" className="btn btn-gold" style={{ marginTop: 36 }}>Retour à l'accueil</Link>
    </div>
  );

  /* ── STEP INDICATOR ── */
  const steps = ['Sélection', 'Coordonnées', 'Récapitulatif'];

  return (
    <div style={{ maxWidth: 780, margin: '0 auto' }}>
      {/* Progress */}
      <div className="flex items-center gap-0" style={{ marginBottom: 48, justifyContent: 'center' }}>
        {steps.map((s, i) => {
          const n = (i + 1) as 1 | 2 | 3;
          const active = step === n;
          const done = step > n;
          return (
            <div key={s} className="flex items-center">
              <div style={{ display: 'flex', alignItems: 'center', gap: 9 }}>
                <div style={{ width: 30, height: 30, borderRadius: '50%', display: 'grid', placeItems: 'center', fontSize: 13, fontWeight: 600, background: active ? 'var(--gold)' : done ? 'var(--cel-success)' : 'rgba(255,255,255,0.07)', color: active ? '#000' : done ? '#000' : 'var(--text-muted)', border: active ? 'none' : done ? 'none' : '1px solid var(--hairline)' }}>{done ? '✓' : n}</div>
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
          {/* Mode tabs */}
          <div className="flex gap-2" style={{ marginBottom: 28 }}>
            {(['individual', 'bundle'] as const).map(m => (
              <button key={m} onClick={() => setMode(m)}
                className={`btn ${mode === m ? 'btn-gold' : 'btn-glass'} btn-sm`}>
                {m === 'individual' ? '⬡ Logiciels individuels' : '◈ Bundles'}
              </button>
            ))}
          </div>

          {mode === 'individual' && (
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill,minmax(220px,1fr))', gap: 16 }}>
              {produits.map(p => {
                const sel = selectedIds.includes(p.id);
                return (
                  <div key={p.id} onClick={() => toggleProduct(p.id)}
                    className="card card-hover"
                    style={{ cursor: 'pointer', border: `1px solid ${sel ? 'rgba(201,168,76,0.5)' : 'var(--glass-border)'}`, background: sel ? 'rgba(201,168,76,0.06)' : undefined, transition: 'all 0.18s' }}>
                    <div className="flex items-start justify-between gap-2">
                      <span style={{ fontSize: 28 }}>{p.icone}</span>
                      <div style={{ width: 20, height: 20, borderRadius: 6, border: `2px solid ${sel ? 'var(--gold)' : 'var(--glass-border)'}`, background: sel ? 'var(--gold)' : 'transparent', display: 'grid', placeItems: 'center', flexShrink: 0, marginTop: 2 }}>
                        {sel && <span style={{ fontSize: 11, color: '#000', fontWeight: 700 }}>✓</span>}
                      </div>
                    </div>
                    <h3 style={{ fontSize: 16, marginTop: 12 }}>{p.nom}</h3>
                    <p style={{ fontSize: 13, color: 'var(--text-muted)', marginTop: 6, lineHeight: 1.5 }}>{p.description}</p>
                    <div style={{ marginTop: 16, fontFamily: 'var(--font-display)', fontSize: 20, color: sel ? 'var(--gold-bright)' : 'var(--text-primary)' }}>{fmt(p.prix)}</div>
                    <div style={{ fontSize: 12, color: 'var(--text-faint)', marginTop: 2 }}>Licence perpétuelle</div>
                  </div>
                );
              })}
            </div>
          )}

          {mode === 'bundle' && (
            <div style={{ display: 'flex', flexDirection: 'column', gap: 14 }}>
              {bundles.length === 0 && (
                <p style={{ color: 'var(--text-muted)', padding: 32, textAlign: 'center' }}>Aucun bundle disponible.</p>
              )}
              {bundles.map(b => {
                const bProds = produits.filter(p => b.produits.includes(p.nom));
                const base = bProds.reduce((s, p) => s + p.prix, 0);
                const prix = Math.round(base * (1 - b.remise_pct / 100));
                const sel = selectedBundle?.id === b.id;
                return (
                  <div key={b.id} onClick={() => setSelectedBundle(sel ? null : b)}
                    className="card card-hover"
                    style={{ cursor: 'pointer', border: `1px solid ${sel ? 'rgba(201,168,76,0.5)' : 'var(--glass-border)'}`, background: sel ? 'rgba(201,168,76,0.06)' : undefined, transition: 'all 0.18s', display: 'grid', gridTemplateColumns: '1fr auto', gap: 16, alignItems: 'center' }}>
                    <div>
                      <div className="flex items-center gap-2.5 mb-1">
                        <span style={{ fontSize: 16, fontWeight: 600 }}>{b.nom}</span>
                        {b.badge && <span className="badge badge-gold" style={{ fontSize: 11 }}>{b.badge}</span>}
                      </div>
                      <p style={{ fontSize: 13.5, color: 'var(--text-secondary)', marginBottom: 10 }}>{b.description}</p>
                      <div className="flex gap-2 flex-wrap">
                        {b.produits.map(pn => (
                          <span key={pn} style={{ fontSize: 12, padding: '3px 10px', background: 'rgba(255,255,255,0.05)', border: '1px solid var(--hairline)', borderRadius: 'var(--r-pill)', color: 'var(--text-muted)' }}>{pn}</span>
                        ))}
                      </div>
                    </div>
                    <div style={{ textAlign: 'right' }}>
                      {b.remise_pct > 0 && <div style={{ fontSize: 12, color: 'var(--text-faint)', textDecoration: 'line-through' }}>{fmt(base)}</div>}
                      <div style={{ fontFamily: 'var(--font-display)', fontSize: 26, color: sel ? 'var(--gold-bright)' : 'var(--text-primary)' }}>{fmt(prix)}</div>
                      {b.remise_pct > 0 && <div style={{ fontSize: 12, color: 'var(--cel-success)', marginTop: 2 }}>Économisez {b.remise_pct}%</div>}
                      <div style={{ width: 24, height: 24, borderRadius: '50%', border: `2px solid ${sel ? 'var(--gold)' : 'var(--glass-border)'}`, background: sel ? 'var(--gold)' : 'transparent', display: 'grid', placeItems: 'center', marginTop: 10, marginLeft: 'auto' }}>
                        {sel && <span style={{ fontSize: 11, color: '#000', fontWeight: 700 }}>✓</span>}
                      </div>
                    </div>
                  </div>
                );
              })}
            </div>
          )}

          {/* Footer */}
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
            <div>
              <label style={lbl}>Nom complet *</label>
              <input style={{ ...inp, borderColor: errors.nom ? 'var(--cel-danger)' : undefined }} value={form.nom} onChange={e => setForm(f => ({ ...f, nom: e.target.value }))} placeholder="Votre nom" />
              {errors.nom && <span style={{ fontSize: 12, color: 'var(--cel-danger)' }}>{errors.nom}</span>}
            </div>
            <div>
              <label style={lbl}>Société *</label>
              <input style={{ ...inp, borderColor: errors.entreprise ? 'var(--cel-danger)' : undefined }} value={form.entreprise} onChange={e => setForm(f => ({ ...f, entreprise: e.target.value }))} placeholder="Nom de votre entreprise" />
              {errors.entreprise && <span style={{ fontSize: 12, color: 'var(--cel-danger)' }}>{errors.entreprise}</span>}
            </div>
          </div>
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 16 }}>
            <div>
              <label style={lbl}>Email *</label>
              <input style={{ ...inp, borderColor: errors.email ? 'var(--cel-danger)' : undefined }} type="email" value={form.email} onChange={e => setForm(f => ({ ...f, email: e.target.value }))} placeholder="vous@societe.dz" />
              {errors.email && <span style={{ fontSize: 12, color: 'var(--cel-danger)' }}>{errors.email}</span>}
            </div>
            <div>
              <label style={lbl}>Téléphone</label>
              <input style={inp} value={form.telephone} onChange={e => setForm(f => ({ ...f, telephone: e.target.value }))} placeholder="+213 5X XX XX XX" />
            </div>
          </div>
          <div>
            <label style={lbl}>Message (optionnel)</label>
            <textarea style={{ ...inp, minHeight: 90, resize: 'vertical' }} value={form.message} onChange={e => setForm(f => ({ ...f, message: e.target.value }))} placeholder="Précisez votre besoin, nombre d'utilisateurs, délai…" />
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
                <div className="flex gap-2 flex-wrap">
                  {selectedBundle.produits.map(p => <span key={p} style={{ fontSize: 12, padding: '3px 10px', background: 'rgba(255,255,255,0.05)', border: '1px solid var(--hairline)', borderRadius: 'var(--r-pill)', color: 'var(--text-muted)' }}>{p}</span>)}
                </div>
                {selectedBundle.remise_pct > 0 && (
                  <div style={{ marginTop: 10, fontSize: 13, color: 'var(--cel-success)' }}>Remise bundle : −{selectedBundle.remise_pct}% appliquée</div>
                )}
              </div>
            ) : (
              <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
                {selectedProduits.map(p => (
                  <div key={p.id} className="flex items-center justify-between">
                    <span style={{ fontSize: 14.5 }}>{p.icone} {p.nom}</span>
                    <span style={{ fontFamily: 'var(--font-display)', fontSize: 15, color: 'var(--text-secondary)' }}>{fmt(p.prix)}</span>
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
            {[['Nom', form.nom], ['Société', form.entreprise], ['Email', form.email], form.telephone && ['Téléphone', form.telephone]].filter(Boolean).map(([k, v]) => (
              <div key={k as string} className="flex gap-3" style={{ fontSize: 14 }}>
                <span style={{ color: 'var(--text-muted)', minWidth: 80 }}>{k as string}</span>
                <span style={{ color: 'var(--text-secondary)' }}>{v as string}</span>
              </div>
            ))}
            {form.message && <div style={{ marginTop: 6, fontSize: 13.5, color: 'var(--text-muted)', fontStyle: 'italic' }}>"{form.message}"</div>}
          </div>

          <p style={{ fontSize: 13, color: 'var(--text-faint)', textAlign: 'center' }}>
            En soumettant, vous acceptez que notre équipe vous recontacte pour finaliser votre devis.
          </p>

          <div className="flex items-center justify-between">
            <button onClick={() => setStep(2)} className="btn btn-glass">← Retour</button>
            <button onClick={handleSubmit} disabled={submitting} className="btn btn-gold" style={{ minWidth: 180 }}>
              {submitting ? 'Envoi en cours…' : 'Envoyer ma demande →'}
            </button>
          </div>
        </div>
      )}
    </div>
  );
}
