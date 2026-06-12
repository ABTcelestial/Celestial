'use client';
import { useState } from 'react';
import { useRouter } from 'next/navigation';
import {
  createLicenseAccount,
  deleteLicense,
  disconnectDevice,
  resetLicensePassword,
  setLicenseStatus,
} from '@/app/actions/licences';
import type { Database } from '@/lib/supabase/types';

type License = Database['public']['Tables']['licenses']['Row'];

function generatePassword() {
  const chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ23456789';
  const bytes = new Uint8Array(12);
  crypto.getRandomValues(bytes);
  return Array.from(bytes, (b) => chars[b % chars.length]).join('');
}

export function LicencesManager({
  applicationId,
  initialLicenses,
}: {
  applicationId: string;
  initialLicenses: License[];
}) {
  const router = useRouter();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState(generatePassword());
  const [clientName, setClientName] = useState('');
  const [company, setCompany] = useState('');
  const [note, setNote] = useState('');
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');
  const [createdInfo, setCreatedInfo] = useState<{ email: string; password: string } | null>(null);

  async function handleCreate(e: React.FormEvent) {
    e.preventDefault();
    setSaving(true); setError(''); setCreatedInfo(null);
    try {
      await createLicenseAccount(applicationId, email, password, clientName, company, note);
      setCreatedInfo({ email: email.trim().toLowerCase(), password });
      setEmail(''); setClientName(''); setCompany(''); setNote('');
      setPassword(generatePassword());
      router.refresh();
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Erreur');
    }
    setSaving(false);
  }

  async function handleToggleStatus(license: License) {
    const next = license.status === 'active' ? 'revoked' : 'active';
    if (next === 'revoked' && !confirm(`Révoquer la licence de ${license.email} ? L'application sera bloquée à sa prochaine connexion internet.`)) return;
    await setLicenseStatus(license.id, next);
    router.refresh();
  }

  async function handleDisconnect(license: License) {
    if (!confirm(`Déconnecter l'appareil de ${license.email} ?\n\nLa licence sera révoquée. Le client devra être réactivé manuellement avant de pouvoir se reconnecter depuis un autre appareil.`)) return;
    try {
      await disconnectDevice(license.id);
      router.refresh();
    } catch (err) {
      alert(err instanceof Error ? err.message : 'Erreur');
    }
  }

  async function handleResetPassword(license: License) {
    const newPassword = generatePassword();
    if (!confirm(`Réinitialiser le mot de passe de ${license.email} ?`)) return;
    try {
      await resetLicensePassword(license.user_id, newPassword);
      alert(`Nouveau mot de passe pour ${license.email} :\n\n${newPassword}\n\nNotez-le maintenant, il ne sera plus affiché.`);
    } catch (err) {
      alert(err instanceof Error ? err.message : 'Erreur');
    }
  }

  async function handleDelete(license: License) {
    if (!confirm(`Supprimer la licence de ${license.email} ?\n\nLe compte Supabase sera également supprimé (si c'est sa seule licence).`)) return;
    await deleteLicense(license.id);
    router.refresh();
  }

  return (
    <section className="card" style={{ padding: 26 }}>
      <h2 style={{ fontSize: 17, marginBottom: 4 }}>Comptes & licences</h2>
      <p style={{ fontSize: 13, color: 'var(--text-muted)', marginBottom: 18 }}>
        Créez le compte du client à la vente : il se connecte avec ces identifiants dans l&apos;application. Le compte vaut licence. L&apos;appareil est verrouillé à la première connexion.
      </p>

      <form onSubmit={handleCreate} style={{ display: 'flex', flexDirection: 'column', gap: 14, marginBottom: 26 }}>
        <div className="grid-2" style={{ gap: 14 }}>
          <div className="field">
            <label>Email du client *</label>
            <input className="cel-input" type="email" placeholder="client@email.com" value={email} onChange={e => setEmail(e.target.value)} required />
          </div>
          <div className="field">
            <label>Mot de passe *</label>
            <div style={{ display: 'flex', gap: 8 }}>
              <input className="cel-input" value={password} onChange={e => setPassword(e.target.value)} required style={{ fontFamily: 'monospace' }} />
              <button type="button" className="btn btn-glass btn-sm" onClick={() => setPassword(generatePassword())} title="Régénérer">↻</button>
            </div>
          </div>
        </div>
        <div className="grid-3" style={{ gap: 14 }}>
          <div className="field">
            <label>Entreprise</label>
            <input className="cel-input" placeholder="ex: SARL Constructions Béjaïa" value={company} onChange={e => setCompany(e.target.value)} />
          </div>
          <div className="field">
            <label>Nom du client</label>
            <input className="cel-input" placeholder="ex: Mohamed Amrane" value={clientName} onChange={e => setClientName(e.target.value)} />
          </div>
          <div className="field">
            <label>Note</label>
            <input className="cel-input" placeholder="optionnel" value={note} onChange={e => setNote(e.target.value)} />
          </div>
        </div>
        {error && <p style={{ color: 'var(--cel-danger)', fontSize: 13.5 }}>{error}</p>}
        {createdInfo && (
          <div style={{ background: 'rgba(94,201,124,0.08)', border: '1px solid rgba(94,201,124,0.3)', borderRadius: 'var(--r-sm)', padding: '12px 16px', fontSize: 13.5 }}>
            Compte créé ✓ — transmettez ces identifiants au client (affichés une seule fois) :
            <div style={{ fontFamily: 'monospace', marginTop: 6 }}>
              {createdInfo.email} / {createdInfo.password}
            </div>
          </div>
        )}
        <div>
          <button type="submit" className="btn btn-gold" disabled={saving}>
            {saving ? 'Création…' : 'Créer le compte + licence'}
          </button>
        </div>
      </form>

      {initialLicenses.length === 0 ? (
        <p style={{ color: 'var(--text-muted)', fontSize: 13.5, textAlign: 'center', padding: '18px 0' }}>
          Aucune licence pour cette application.
        </p>
      ) : (
        <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
          {initialLicenses.map(license => (
            <div
              key={license.id}
              className="flex items-center justify-between gap-4 flex-wrap"
              style={{ padding: '13px 16px', background: 'rgba(255,255,255,0.025)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)' }}
            >
              <div style={{ minWidth: 0 }}>
                <div className="flex items-center gap-2 flex-wrap">
                  <span style={{ fontSize: 14.5, fontWeight: 500 }}>{license.email}</span>
                  <span
                    className="badge"
                    style={license.status === 'active'
                      ? { color: 'var(--cel-success)', borderColor: 'rgba(94,201,124,0.35)' }
                      : { color: 'var(--cel-danger)', borderColor: 'rgba(229,88,94,0.35)' }}
                  >
                    {license.status === 'active' ? 'Active' : 'Révoquée'}
                  </span>
                </div>
                <div style={{ fontSize: 12.5, color: 'var(--text-faint)', marginTop: 3 }}>
                  {license.company && <><strong style={{ color: 'var(--text-muted)' }}>{license.company}</strong> · </>}
                  {license.client_name && <>{license.client_name} · </>}
                  créée le {new Date(license.created_at).toLocaleDateString('fr-FR')}
                  {license.note && <> · {license.note}</>}
                </div>
                <div style={{ fontSize: 12, color: 'var(--text-faint)', marginTop: 4, display: 'flex', alignItems: 'center', gap: 6 }}>
                  {license.locked ? (
                    <>
                      <span style={{ color: 'var(--cel-success)', fontSize: 11 }}>● Appareil enregistré</span>
                      <span>·</span>
                      <span>{license.device_model}</span>
                      {license.device_os && <><span>·</span><span>{license.device_os}</span></>}
                      {license.device_id && (
                        <><span>·</span><code style={{ fontSize: 10, opacity: 0.7 }}>{license.device_id.slice(0, 16)}…</code></>
                      )}
                    </>
                  ) : (
                    <span style={{ color: 'var(--text-faint)', fontStyle: 'italic' }}>Aucun appareil enregistré</span>
                  )}
                </div>
              </div>
              <div className="flex gap-2 flex-wrap" style={{ flexShrink: 0 }}>
                {license.locked && (
                  <button
                    className="btn btn-glass btn-sm"
                    style={{ color: 'var(--cel-danger)', fontSize: 12 }}
                    onClick={() => handleDisconnect(license)}
                  >
                    Déconnecter
                  </button>
                )}
                <button
                  className="btn btn-glass btn-sm"
                  style={{ color: license.status === 'active' ? 'var(--cel-danger)' : 'var(--cel-success)', fontSize: 12 }}
                  onClick={() => handleToggleStatus(license)}
                >
                  {license.status === 'active' ? 'Révoquer' : 'Réactiver'}
                </button>
                <button className="btn btn-glass btn-sm" style={{ fontSize: 12 }} onClick={() => handleResetPassword(license)}>
                  Reset mot de passe
                </button>
                <button className="btn btn-glass btn-sm" style={{ color: 'var(--cel-danger)' }} onClick={() => handleDelete(license)}>
                  <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><polyline points="3 6 5 6 21 6"/><path d="M19 6l-1 14H6L5 6"/><path d="M9 6V4h6v2"/></svg>
                </button>
              </div>
            </div>
          ))}
        </div>
      )}
    </section>
  );
}
