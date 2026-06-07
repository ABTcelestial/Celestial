'use client';

import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';

function slugify(str: string) {
  return str.toLowerCase().replace(/\s+/g, '-').replace(/[^a-z0-9-]/g, '').replace(/-+/g, '-').slice(0, 50);
}

export default function NewWorkspacePage() {
  const router = useRouter();
  const supabase = createClient();
  const [name, setName] = useState('');
  const [slug, setSlug] = useState('');
  const [saving, setSaving] = useState(false);
  const [created, setCreated] = useState<{ id: string; licence_key: string; name: string } | null>(null);
  const [error, setError] = useState('');

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setSaving(true);
    setError('');
    const { data, error: err } = await supabase
      .from('platform_workspaces')
      .insert({ name, slug: slug || slugify(name) })
      .select('id, licence_key, name')
      .single();
    setSaving(false);
    if (err) { setError(err.message); return; }
    setCreated(data);
  }

  if (created) {
    return (
      <div style={{ maxWidth: 600, margin: '0 auto', padding: '2.5rem 1.5rem' }}>
        <h1 style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--gold)', marginBottom: '1rem' }}>
          Workspace créé ✓
        </h1>
        <div style={{ background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)', padding: '1.5rem', marginBottom: '1.5rem' }}>
          <div style={{ marginBottom: '1rem' }}>
            <div style={{ color: 'var(--text-muted)', fontSize: '0.8rem', marginBottom: '0.25rem' }}>Nom</div>
            <div style={{ color: 'var(--text-primary)', fontWeight: 600 }}>{created.name}</div>
          </div>
          <div>
            <div style={{ color: 'var(--text-muted)', fontSize: '0.8rem', marginBottom: '0.25rem' }}>Clé de licence (à transmettre au client pour le sync-agent)</div>
            <div style={{
              fontFamily: 'monospace', fontSize: '0.9rem', color: 'var(--gold)',
              background: 'color-mix(in srgb, var(--bg-void) 70%, transparent)',
              padding: '0.75rem 1rem', borderRadius: 'var(--r-xs)',
              border: '1px solid var(--gold-soft)',
              wordBreak: 'break-all',
            }}>
              {created.licence_key}
            </div>
          </div>
        </div>
        <p style={{ color: 'var(--text-muted)', fontSize: '0.85rem', marginBottom: '1.5rem' }}>
          Conservez cette clé — elle permet au sync-agent du client de s'authentifier. Vous pouvez la retrouver dans le détail du workspace.
        </p>
        <div style={{ display: 'flex', gap: '0.75rem' }}>
          <button onClick={() => router.push(`/celestial-admin-rtabt/platform/workspaces/${created.id}/members`)} style={{ padding: '0.6rem 1.1rem', background: 'var(--gold)', color: '#000', border: 'none', borderRadius: 'var(--r-xs)', fontWeight: 600, cursor: 'pointer', fontSize: '0.875rem' }}>
            Ajouter des membres →
          </button>
          <button onClick={() => router.push('/celestial-admin-rtabt/platform/workspaces')} style={{ padding: '0.6rem 1.1rem', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', color: 'var(--text-secondary)', cursor: 'pointer', fontSize: '0.875rem' }}>
            Liste des workspaces
          </button>
        </div>
      </div>
    );
  }

  return (
    <div style={{ maxWidth: 600, margin: '0 auto', padding: '2.5rem 1.5rem' }}>
      <h1 style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--text-primary)', marginBottom: '2rem' }}>
        Nouveau workspace
      </h1>
      <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '1.25rem' }}>
        <div>
          <label style={{ display: 'block', color: 'var(--text-secondary)', fontSize: '0.85rem', marginBottom: '0.4rem' }}>Nom de l'entreprise *</label>
          <input
            required value={name}
            onChange={(e) => { setName(e.target.value); if (!slug) setSlug(slugify(e.target.value)); }}
            style={{ width: '100%', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', padding: '0.7rem 1rem', color: 'var(--text-primary)', fontSize: '0.9rem', outline: 'none', boxSizing: 'border-box' }}
            placeholder="Ex: SARL Benali Distribution"
          />
        </div>
        <div>
          <label style={{ display: 'block', color: 'var(--text-secondary)', fontSize: '0.85rem', marginBottom: '0.4rem' }}>Slug (URL)</label>
          <input
            value={slug}
            onChange={(e) => setSlug(slugify(e.target.value))}
            style={{ width: '100%', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', padding: '0.7rem 1rem', color: 'var(--text-primary)', fontSize: '0.9rem', outline: 'none', boxSizing: 'border-box', fontFamily: 'monospace' }}
            placeholder="ex: sarl-benali"
          />
        </div>
        {error && <div style={{ color: '#f87171', fontSize: '0.85rem' }}>{error}</div>}
        <button
          type="submit" disabled={saving}
          style={{ padding: '0.7rem 1.5rem', background: 'var(--gold)', color: '#000', border: 'none', borderRadius: 'var(--r-xs)', fontWeight: 700, cursor: saving ? 'not-allowed' : 'pointer', opacity: saving ? 0.6 : 1, alignSelf: 'flex-start', fontSize: '0.9rem' }}
        >
          {saving ? 'Création…' : 'Créer le workspace'}
        </button>
      </form>
    </div>
  );
}
