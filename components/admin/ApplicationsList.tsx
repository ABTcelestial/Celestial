'use client';
import { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { createApplication, deleteApplication, updateApplication } from '@/app/actions/licences';
import type { Database } from '@/lib/supabase/types';

type Application = Database['public']['Tables']['applications']['Row'] & {
  licenseCount: number;
  activeCount: number;
};

export function ApplicationsList({ initialData }: { initialData: Application[] }) {
  const router = useRouter();
  const [showForm, setShowForm] = useState(false);
  const [nom, setNom] = useState('');
  const [slug, setSlug] = useState('');
  const [description, setDescription] = useState('');
  const [hasLicenses, setHasLicenses] = useState(true);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');

  function slugify(value: string) {
    return value.toLowerCase().normalize('NFD').replace(/[̀-ͯ]/g, '')
      .replace(/[^a-z0-9]+/g, '-').replace(/^-+|-+$/g, '');
  }

  async function handleCreate(e: React.FormEvent) {
    e.preventDefault();
    setSaving(true); setError('');
    try {
      await createApplication(nom, slug || slugify(nom), description, hasLicenses);
      setNom(''); setSlug(''); setDescription(''); setHasLicenses(true); setShowForm(false);
      router.refresh();
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Erreur');
    }
    setSaving(false);
  }

  async function handleToggleActif(app: Application) {
    await updateApplication(app.id, { actif: !app.actif });
    router.refresh();
  }

  async function handleDelete(app: Application) {
    if (!confirm(`Supprimer « ${app.nom} » ? Les licences associées seront supprimées (les comptes auth restent).`)) return;
    await deleteApplication(app.id);
    router.refresh();
  }

  return (
    <div style={{ display: 'flex', flexDirection: 'column', gap: 14 }}>
      <div>
        <button className="btn btn-gold" onClick={() => setShowForm(s => !s)}>
          {showForm ? 'Annuler' : '+ Nouvelle application'}
        </button>
      </div>

      {showForm && (
        <form onSubmit={handleCreate} className="card" style={{ padding: 26, display: 'flex', flexDirection: 'column', gap: 16 }}>
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 16 }}>
            <div className="field">
              <label>Nom de l&apos;application *</label>
              <input
                className="cel-input"
                placeholder="ex: Celestial Chantiers"
                value={nom}
                onChange={e => { setNom(e.target.value); if (!slug) setSlug(slugify(e.target.value)); }}
                required
              />
            </div>
            <div className="field">
              <label>Slug (identifiant technique) *</label>
              <input
                className="cel-input"
                placeholder="celestial-chantiers"
                value={slug || slugify(nom)}
                onChange={e => setSlug(slugify(e.target.value))}
                required
              />
            </div>
          </div>
          <div className="field">
            <label>Description</label>
            <input className="cel-input" placeholder="Description courte (optionnel)" value={description} onChange={e => setDescription(e.target.value)} />
          </div>
          <label style={{ display: 'flex', alignItems: 'center', gap: 10, cursor: 'pointer', userSelect: 'none', fontSize: 14 }}>
            <input
              type="checkbox"
              checked={hasLicenses}
              onChange={e => setHasLicenses(e.target.checked)}
              style={{ width: 15, height: 15, accentColor: 'var(--gold)', cursor: 'pointer' }}
            />
            Gestion des licences activée
            <span style={{ fontSize: 12, color: 'var(--text-faint)' }}>
              (comptes clients requis pour accéder à l&apos;application)
            </span>
          </label>
          {error && <p style={{ color: 'var(--cel-danger)', fontSize: 13.5 }}>{error}</p>}
          <div>
            <button type="submit" className="btn btn-gold" disabled={saving}>
              {saving ? 'Création…' : 'Créer l\'application'}
            </button>
          </div>
        </form>
      )}

      {initialData.length === 0 && !showForm && (
        <p style={{ color: 'var(--text-muted)', textAlign: 'center', padding: 48 }}>
          Aucune application. Créez la première pour gérer son fichier téléchargeable et ses licences.
        </p>
      )}

      {initialData.map(app => (
        <div key={app.id} className="card" style={{ padding: '22px 26px' }}>
          <div className="flex items-start justify-between gap-4">
            <div style={{ flex: 1, minWidth: 0 }}>
              <div className="flex items-center gap-2.5 flex-wrap mb-1.5">
                <h3 style={{ fontSize: 18 }}>{app.nom}</h3>
                <span className="badge" style={{ fontFamily: 'monospace', fontSize: 11 }}>{app.slug}</span>
                {app.apk_version && <span className="badge badge-gold">v{app.apk_version}</span>}
                {!app.actif && (
                  <span className="badge" style={{ color: 'var(--cel-danger)', borderColor: 'rgba(229,88,94,0.35)' }}>Désactivée</span>
                )}
                {!app.has_licenses && (
                  <span className="badge" style={{ color: 'var(--text-muted)' }}>Sans licences</span>
                )}
              </div>
              {app.description && (
                <p style={{ color: 'var(--text-secondary)', fontSize: 14, marginBottom: 8 }}>{app.description}</p>
              )}
              <p style={{ fontSize: 12.5, color: 'var(--text-faint)' }}>
                {app.has_licenses
                  ? `${app.licenseCount} licence${app.licenseCount > 1 ? 's' : ''}${app.licenseCount > 0 ? ` (${app.activeCount} active${app.activeCount > 1 ? 's' : ''})` : ''}`
                  : 'Accès libre'}
                {!app.apk_path && ' · aucun fichier uploadé'}
              </p>
            </div>
            <div className="flex gap-2" style={{ flexShrink: 0 }}>
              <button
                onClick={() => handleToggleActif(app)}
                className="btn btn-glass btn-sm"
                style={{ color: app.actif ? 'var(--cel-success)' : 'var(--text-muted)', fontSize: 12 }}
              >
                {app.actif ? '● Active' : '○ Désactivée'}
              </button>
              <Link href={`/celestial-admin-rtabt/licences/${app.id}`} className="btn btn-gold btn-sm">
                Gérer →
              </Link>
              <button onClick={() => handleDelete(app)} className="btn btn-glass btn-sm" style={{ color: 'var(--cel-danger)' }}>
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><polyline points="3 6 5 6 21 6"/><path d="M19 6l-1 14H6L5 6"/><path d="M9 6V4h6v2"/></svg>
              </button>
            </div>
          </div>
        </div>
      ))}
    </div>
  );
}
