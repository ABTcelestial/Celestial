'use client';
import { useRef, useState } from 'react';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import { createApkUploadUrl, finalizeApkUpload, removeApk } from '@/app/actions/licences';
import type { Database } from '@/lib/supabase/types';

type Application = Database['public']['Tables']['applications']['Row'];

function formatSize(bytes: number | null) {
  if (!bytes) return '';
  return `${(bytes / (1024 * 1024)).toFixed(1)} Mo`;
}

export function ApkManager({ application }: { application: Application }) {
  const router = useRouter();
  const fileRef = useRef<HTMLInputElement>(null);
  const [version, setVersion] = useState('');
  const [uploading, setUploading] = useState(false);
  const [error, setError] = useState('');
  const [copied, setCopied] = useState(false);

  const publicUrl = application.apk_path
    ? `${process.env.NEXT_PUBLIC_SUPABASE_URL}/storage/v1/object/public/apks/${application.apk_path}`
    : null;

  async function handleUpload() {
    const file = fileRef.current?.files?.[0];
    if (!file) { setError('Choisissez un fichier APK.'); return; }
    if (!file.name.toLowerCase().endsWith('.apk')) { setError('Le fichier doit être un .apk.'); return; }
    setUploading(true); setError('');
    try {
      // Signed URL: the browser uploads straight to storage, no size limit
      // on the server action and no open write policy on the bucket.
      const { path, token } = await createApkUploadUrl(application.id, file.name);
      const supabase = createClient();
      const { error: uploadError } = await supabase.storage
        .from('apks')
        .uploadToSignedUrl(path, token, file, { contentType: 'application/vnd.android.package-archive' });
      if (uploadError) throw new Error(uploadError.message);
      await finalizeApkUpload(application.id, path, version, file.size);
      setVersion('');
      if (fileRef.current) fileRef.current.value = '';
      router.refresh();
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Erreur pendant l\'upload.');
    }
    setUploading(false);
  }

  async function handleRemove() {
    if (!confirm('Supprimer l\'APK ? Le téléchargement disparaîtra du site.')) return;
    await removeApk(application.id);
    router.refresh();
  }

  async function copyUrl() {
    if (!publicUrl) return;
    await navigator.clipboard.writeText(publicUrl);
    setCopied(true);
    setTimeout(() => setCopied(false), 1600);
  }

  return (
    <section className="card" style={{ padding: 26 }}>
      <h2 style={{ fontSize: 17, marginBottom: 4 }}>Fichier APK</h2>
      <p style={{ fontSize: 13, color: 'var(--text-muted)', marginBottom: 18 }}>
        L&apos;APK est téléchargeable publiquement sur le site (page Offres, via le produit lié à cette application).
      </p>

      {application.apk_path ? (
        <div
          className="flex items-center justify-between gap-4 flex-wrap"
          style={{ padding: '14px 18px', background: 'rgba(255,255,255,0.03)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)', marginBottom: 18 }}
        >
          <div>
            <div style={{ fontSize: 14.5, fontWeight: 500 }}>
              {application.nom}{application.apk_version ? ` — v${application.apk_version}` : ''}
              <span style={{ color: 'var(--text-faint)', fontSize: 12.5, marginLeft: 8 }}>{formatSize(application.apk_size)}</span>
            </div>
            <div style={{ fontSize: 12, color: 'var(--text-faint)', fontFamily: 'monospace', marginTop: 3, wordBreak: 'break-all' }}>
              {publicUrl}
            </div>
          </div>
          <div className="flex gap-2" style={{ flexShrink: 0 }}>
            <button className="btn btn-glass btn-sm" onClick={copyUrl}>{copied ? 'Copié ✓' : 'Copier le lien'}</button>
            <a className="btn btn-glass btn-sm" href={publicUrl!} download>Télécharger</a>
            <button className="btn btn-glass btn-sm" style={{ color: 'var(--cel-danger)' }} onClick={handleRemove}>Supprimer</button>
          </div>
        </div>
      ) : (
        <p style={{ fontSize: 13.5, color: 'var(--text-muted)', marginBottom: 18 }}>Aucun APK uploadé pour le moment.</p>
      )}

      <div style={{ display: 'grid', gridTemplateColumns: '1fr 160px auto', gap: 12, alignItems: 'end' }}>
        <div className="field">
          <label>{application.apk_path ? 'Remplacer l\'APK' : 'Uploader un APK'}</label>
          <input ref={fileRef} type="file" accept=".apk" className="cel-input" style={{ paddingTop: 9 }} />
        </div>
        <div className="field">
          <label>Version</label>
          <input className="cel-input" placeholder="ex: 1.0.0" value={version} onChange={e => setVersion(e.target.value)} />
        </div>
        <button className="btn btn-gold" onClick={handleUpload} disabled={uploading}>
          {uploading ? 'Upload en cours…' : 'Uploader'}
        </button>
      </div>
      {error && <p style={{ color: 'var(--cel-danger)', fontSize: 13.5, marginTop: 10 }}>{error}</p>}
    </section>
  );
}
