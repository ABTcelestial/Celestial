'use client';
import { useState, FormEvent } from 'react';
import { submitDevis } from '@/app/actions/devis';

type Errors = { nom?: string; entreprise?: string; email?: string; logiciel?: string; message?: string };

export function QuoteForm() {
  const [errors, setErrors] = useState<Errors>({});
  const [success, setSuccess] = useState(false);
  const [submitting, setSubmitting] = useState(false);
  const [serverError, setServerError] = useState('');

  function validate(fd: FormData): Errors {
    const e: Errors = {};
    if (!String(fd.get('nom')).trim()) e.nom = 'Veuillez indiquer votre nom.';
    if (!String(fd.get('entreprise')).trim()) e.entreprise = 'Champ requis.';
    const email = String(fd.get('email')).trim();
    if (!email || !/^[^@\s]+@[^@\s]+\.[^@\s]+$/.test(email)) e.email = 'Email invalide.';
    if (!String(fd.get('logiciel'))) e.logiciel = 'Veuillez choisir un logiciel.';
    if (!String(fd.get('message')).trim()) e.message = 'Décrivez brièvement votre besoin.';
    return e;
  }

  async function handleSubmit(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const fd = new FormData(e.currentTarget);
    const errs = validate(fd);
    setErrors(errs);
    if (Object.keys(errs).length > 0) return;

    setSubmitting(true);
    setServerError('');

    const result = await submitDevis({
      nom: String(fd.get('nom')),
      entreprise: String(fd.get('entreprise')),
      email: String(fd.get('email')),
      telephone: String(fd.get('tel')) || undefined,
      logiciel: String(fd.get('logiciel')),
      message: String(fd.get('message')),
    });

    setSubmitting(false);
    if (result.success) {
      setSuccess(true);
    } else {
      setServerError('Une erreur est survenue. Veuillez réessayer.');
    }
  }

  if (success) {
    return (
      <div className="card" style={{ padding: 36, textAlign: 'center' }}>
        <div style={{ width: 64, height: 64, borderRadius: '50%', background: 'var(--gold-soft)', border: '1px solid rgba(201,168,76,0.4)', display: 'grid', placeItems: 'center', margin: '0 auto 20px', color: 'var(--gold-bright)' }}>
          <svg width="30" height="30" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.4"><path d="M20 6 9 17l-5-5" /></svg>
        </div>
        <h2 style={{ fontSize: 24 }}>Demande envoyée ✦</h2>
        <p style={{ color: 'var(--text-secondary)', marginTop: 10, maxWidth: '38ch', marginInline: 'auto' }}>
          Merci ! Notre équipe vous recontacte sous 48h ouvrées.
        </p>
        <button className="btn btn-glass" style={{ marginTop: 24 }} onClick={() => setSuccess(false)}>
          Envoyer une autre demande
        </button>
      </div>
    );
  }

  function f(name: keyof Errors) {
    return errors[name] ? 'field field-invalid' : 'field';
  }

  return (
    <form onSubmit={handleSubmit} noValidate>
      <div className="card" style={{ padding: 36 }}>
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 18 }}>
          <div className={f('nom')}>
            <label>Nom complet *</label>
            <input className="cel-input" name="nom" placeholder="Sami Bennaceur" onChange={() => setErrors(p => ({ ...p, nom: undefined }))} />
            <span className="field-err">{errors.nom}</span>
          </div>
          <div className={f('entreprise')}>
            <label>Entreprise *</label>
            <input className="cel-input" name="entreprise" placeholder="Nom de votre société" onChange={() => setErrors(p => ({ ...p, entreprise: undefined }))} />
            <span className="field-err">{errors.entreprise}</span>
          </div>
          <div className={f('email')}>
            <label>Email professionnel *</label>
            <input className="cel-input" type="email" name="email" placeholder="vous@entreprise.dz" onChange={() => setErrors(p => ({ ...p, email: undefined }))} />
            <span className="field-err">{errors.email}</span>
          </div>
          <div className="field">
            <label>Téléphone</label>
            <input className="cel-input" type="tel" name="tel" placeholder="+213 ..." />
          </div>
          <div className={f('logiciel')} style={{ gridColumn: '1 / -1' }}>
            <label>Logiciel souhaité *</label>
            <select className="cel-select" name="logiciel" defaultValue="" onChange={() => setErrors(p => ({ ...p, logiciel: undefined }))}>
              <option value="">Sélectionnez une suite…</option>
              <option>Business Process</option>
              <option>Pay Process</option>
              <option>Compta Process</option>
              <option>Celestial Suite (les 3)</option>
              <option>Je ne sais pas encore</option>
            </select>
            <span className="field-err">{errors.logiciel}</span>
          </div>
          <div className={f('message')} style={{ gridColumn: '1 / -1' }}>
            <label>Votre message *</label>
            <textarea className="cel-textarea" name="message" placeholder="Nombre d'utilisateurs, contexte, échéance…" onChange={() => setErrors(p => ({ ...p, message: undefined }))} />
            <span className="field-err">{errors.message}</span>
          </div>
        </div>

        {serverError && (
          <div style={{ background: 'rgba(229,88,94,0.1)', border: '1px solid rgba(229,88,94,0.3)', borderRadius: 'var(--r-sm)', padding: '12px 16px', color: 'var(--danger)', fontSize: 14, marginTop: 16 }}>
            {serverError}
          </div>
        )}

        <button type="submit" className="btn btn-gold btn-lg btn-block" style={{ marginTop: 24, opacity: submitting ? 0.7 : 1 }} disabled={submitting}>
          {submitting ? 'Envoi en cours…' : 'Envoyer ma demande'}
        </button>
        <p style={{ color: 'var(--text-muted)', fontSize: 12.5, textAlign: 'center', marginTop: 14 }}>
          En soumettant, vous acceptez d'être recontacté par l'équipe Celestial. Vos données ne sont jamais partagées.
        </p>
      </div>
    </form>
  );
}
