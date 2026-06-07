'use client';

import { useEffect, useState } from 'react';
import { useParams } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import { addMember, removeMember } from './actions';
import type { Database } from '@/lib/supabase/types';

type Member = Database['public']['Tables']['platform_members']['Row'];

export default function MembersPage() {
  const { id: workspaceId } = useParams<{ id: string }>();
  const supabase = createClient();
  const [members, setMembers] = useState<Member[]>([]);
  const [email, setEmail] = useState('');
  const [clerkId, setClerkId] = useState('');
  const [role, setRole] = useState<'owner' | 'viewer'>('viewer');
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');

  async function load() {
    const { data } = await supabase.from('platform_members').select('*').eq('workspace_id', workspaceId).order('created_at');
    setMembers(data ?? []);
  }

  useEffect(() => { load(); }, [workspaceId]);

  async function handleAdd(e: React.FormEvent) {
    e.preventDefault();
    if (!email.trim() || !clerkId.trim()) { setError('Email et Clerk User ID requis.'); return; }
    setSaving(true); setError('');
    try {
      await addMember(workspaceId, email.trim(), clerkId.trim(), role);
      setEmail(''); setClerkId('');
      await load();
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'Erreur inconnue');
    }
    setSaving(false);
  }

  async function handleRemove(clerkUserId: string) {
    if (!confirm('Supprimer ce membre ?')) return;
    await removeMember(workspaceId, clerkUserId);
    await load();
  }

  return (
    <div style={{ maxWidth: 700, margin: '0 auto', padding: '2.5rem 1.5rem' }}>
      <h1 style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--text-primary)', marginBottom: '2rem' }}>
        Membres du workspace
      </h1>

      <form onSubmit={handleAdd} style={{ display: 'flex', flexDirection: 'column', gap: '1rem', marginBottom: '2.5rem', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)', padding: '1.25rem' }}>
        <h2 style={{ color: 'var(--text-secondary)', fontSize: '0.9rem', fontWeight: 600, margin: 0 }}>Ajouter un membre</h2>
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '0.75rem' }}>
          <input
            value={email} onChange={(e) => setEmail(e.target.value)}
            placeholder="Email"
            style={{ background: 'var(--bg-void)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', padding: '0.6rem 0.9rem', color: 'var(--text-primary)', fontSize: '0.875rem', outline: 'none' }}
          />
          <input
            value={clerkId} onChange={(e) => setClerkId(e.target.value)}
            placeholder="Clerk User ID (user_xxx)"
            style={{ background: 'var(--bg-void)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', padding: '0.6rem 0.9rem', color: 'var(--text-primary)', fontSize: '0.875rem', outline: 'none', fontFamily: 'monospace' }}
          />
        </div>
        <div style={{ display: 'flex', gap: '0.75rem', alignItems: 'center' }}>
          <select
            value={role} onChange={(e) => setRole(e.target.value as 'owner' | 'viewer')}
            style={{ background: 'var(--bg-void)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', padding: '0.6rem 0.9rem', color: 'var(--text-primary)', fontSize: '0.875rem', outline: 'none' }}
          >
            <option value="viewer">Lecteur</option>
            <option value="owner">Propriétaire</option>
          </select>
          <button type="submit" disabled={saving} style={{ padding: '0.6rem 1.1rem', background: 'var(--gold)', color: '#000', border: 'none', borderRadius: 'var(--r-xs)', fontWeight: 700, cursor: saving ? 'not-allowed' : 'pointer', fontSize: '0.875rem', opacity: saving ? 0.6 : 1 }}>
            {saving ? 'Ajout…' : 'Ajouter'}
          </button>
        </div>
        <p style={{ color: 'var(--text-muted)', fontSize: '0.78rem', margin: 0 }}>
          Le Clerk User ID se trouve dans le Dashboard Clerk → Users. Le client doit d'abord créer son compte sur /platform/login.
        </p>
        {error && <div style={{ color: '#f87171', fontSize: '0.85rem' }}>{error}</div>}
      </form>

      <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
        {members.length === 0 ? (
          <div style={{ color: 'var(--text-muted)', textAlign: 'center', padding: '1.5rem' }}>Aucun membre.</div>
        ) : (
          members.map((m) => (
            <div key={m.id} style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', padding: '0.7rem 1rem' }}>
              <div>
                <div style={{ color: 'var(--text-primary)', fontSize: '0.875rem' }}>{m.email}</div>
                <div style={{ color: 'var(--text-faint)', fontSize: '0.75rem', fontFamily: 'monospace' }}>{m.clerk_user_id}</div>
              </div>
              <div style={{ display: 'flex', alignItems: 'center', gap: '0.75rem' }}>
                <span style={{ color: 'var(--text-muted)', fontSize: '0.8rem' }}>{m.role === 'owner' ? 'Propriétaire' : 'Lecteur'}</span>
                <button onClick={() => handleRemove(m.clerk_user_id)} style={{ background: 'none', border: 'none', color: '#f87171', cursor: 'pointer', fontSize: '0.8rem', padding: '0.2rem 0.4rem' }}>
                  Retirer
                </button>
              </div>
            </div>
          ))
        )}
      </div>
    </div>
  );
}
