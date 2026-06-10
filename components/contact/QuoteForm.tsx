'use client';
import { useState, FormEvent } from 'react';
import { submitDevis } from '@/app/actions/devis';

type Errors = { nom?: string; entreprise?: string; email?: string; logiciel?: string; message?: string };

const BESOINS = [
  { value: 'erp', label: 'ERP BusinessProces' },
  { value: 'food', label: 'Celestial Food (restaurant)' },
  { value: 'sur-mesure', label: 'Système / logiciel sur mesure' },
  { value: 'materiel', label: 'Matériel informatique' },
  { value: 'autre', label: 'Autre demande' },
];

const inputCls =
  'w-full rounded-xl border bg-white px-4 py-3 text-[15px] text-[var(--text-primary)] outline-none transition-colors placeholder:text-[var(--text-faint)] focus:border-[var(--blue)]';

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
    if (!String(fd.get('logiciel'))) e.logiciel = 'Veuillez choisir un besoin.';
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
      <div className="card-cel p-10 text-center">
        <span
          className="mx-auto flex h-14 w-14 items-center justify-center rounded-full text-[24px] text-white"
          style={{ background: 'var(--grad-sky)' }}
          aria-hidden
        >
          ✓
        </span>
        <h3 className="mt-5 text-[22px]">Demande envoyée !</h3>
        <p className="mx-auto mt-3 max-w-[380px] text-[15px] text-[var(--text-secondary)]">
          Merci pour votre confiance. Nous revenons vers vous rapidement avec une
          proposition adaptée.
        </p>
      </div>
    );
  }

  return (
    <form onSubmit={handleSubmit} noValidate className="card-cel space-y-5 p-8 md:p-10">
      <div className="grid gap-5 sm:grid-cols-2">
        <div>
          <label htmlFor="nom" className="mb-1.5 block text-[13.5px] font-semibold text-[var(--ink)]">
            Votre nom *
          </label>
          <input
            id="nom"
            name="nom"
            className={inputCls}
            style={{ borderColor: errors.nom ? 'var(--danger)' : 'var(--card-border)' }}
            placeholder="Nom et prénom"
          />
          {errors.nom && <p className="mt-1.5 text-[13px] text-[var(--danger)]">{errors.nom}</p>}
        </div>
        <div>
          <label htmlFor="entreprise" className="mb-1.5 block text-[13.5px] font-semibold text-[var(--ink)]">
            Entreprise *
          </label>
          <input
            id="entreprise"
            name="entreprise"
            className={inputCls}
            style={{ borderColor: errors.entreprise ? 'var(--danger)' : 'var(--card-border)' }}
            placeholder="Nom de votre entreprise"
          />
          {errors.entreprise && <p className="mt-1.5 text-[13px] text-[var(--danger)]">{errors.entreprise}</p>}
        </div>
      </div>

      <div className="grid gap-5 sm:grid-cols-2">
        <div>
          <label htmlFor="email" className="mb-1.5 block text-[13.5px] font-semibold text-[var(--ink)]">
            Email *
          </label>
          <input
            id="email"
            name="email"
            type="email"
            className={inputCls}
            style={{ borderColor: errors.email ? 'var(--danger)' : 'var(--card-border)' }}
            placeholder="vous@entreprise.dz"
          />
          {errors.email && <p className="mt-1.5 text-[13px] text-[var(--danger)]">{errors.email}</p>}
        </div>
        <div>
          <label htmlFor="tel" className="mb-1.5 block text-[13.5px] font-semibold text-[var(--ink)]">
            Téléphone
          </label>
          <input
            id="tel"
            name="tel"
            type="tel"
            className={inputCls}
            style={{ borderColor: 'var(--card-border)' }}
            placeholder="05 XX XX XX XX"
          />
        </div>
      </div>

      <div>
        <label htmlFor="logiciel" className="mb-1.5 block text-[13.5px] font-semibold text-[var(--ink)]">
          Votre besoin *
        </label>
        <select
          id="logiciel"
          name="logiciel"
          defaultValue=""
          className={inputCls}
          style={{ borderColor: errors.logiciel ? 'var(--danger)' : 'var(--card-border)' }}
        >
          <option value="" disabled>
            Choisissez…
          </option>
          {BESOINS.map((b) => (
            <option key={b.value} value={b.value}>
              {b.label}
            </option>
          ))}
        </select>
        {errors.logiciel && <p className="mt-1.5 text-[13px] text-[var(--danger)]">{errors.logiciel}</p>}
      </div>

      <div>
        <label htmlFor="message" className="mb-1.5 block text-[13.5px] font-semibold text-[var(--ink)]">
          Votre message *
        </label>
        <textarea
          id="message"
          name="message"
          rows={5}
          className={inputCls}
          style={{ borderColor: errors.message ? 'var(--danger)' : 'var(--card-border)', resize: 'vertical' }}
          placeholder="Décrivez votre activité et ce que vous souhaitez automatiser ou équiper…"
        />
        {errors.message && <p className="mt-1.5 text-[13px] text-[var(--danger)]">{errors.message}</p>}
      </div>

      {serverError && (
        <p className="rounded-xl border border-[var(--danger)] bg-red-50 px-4 py-3 text-[14px] text-[var(--danger)]">
          {serverError}
        </p>
      )}

      <button type="submit" disabled={submitting} className="btn-primary w-full justify-center disabled:opacity-60">
        {submitting ? 'Envoi en cours…' : 'Envoyer ma demande'}
      </button>
      <p className="text-center text-[12.5px] text-[var(--text-faint)]">
        Réponse rapide, devis en dinars, sans engagement.
      </p>
    </form>
  );
}
