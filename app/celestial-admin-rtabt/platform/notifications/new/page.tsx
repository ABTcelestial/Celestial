'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';

export default function NewNotificationPage() {
  const router = useRouter();
  const supabase = createClient();
  const [workspaces, setWorkspaces] = useState<{ id: string; name: string }[]>([]);
  const [target, setTarget] = useState<'all' | string>('all');
  const [title, setTitle] = useState('');
  const [message, setMessage] = useState('');
  const [sending, setSending] = useState(false);
  const [success, setSuccess] = useState(false);

  useEffect(() => {
    supabase.from('platform_workspaces').select('id, name').eq('active', true).order('name').then(({ data }) => setWorkspaces(data ?? []));
  }, []);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setSending(true);
    const targets = target === 'all' ? workspaces.map((w) => w.id) : [target];
    const rows = targets.map((workspace_id) => ({ workspace_id, title, message }));
    await supabase.from('platform_notifications').insert(rows);
    setSending(false);
    setSuccess(true);
    setTimeout(() => router.push('/celestial-admin-rtabt/platform'), 1500);
  }

  const inputStyle = { background: 'var(--bg-void)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', padding: '0.7rem 1rem', color: 'var(--text-primary)', fontSize: '0.875rem', outline: 'none', width: '100%', boxSizing: 'border-box' as const };

  return (
    <div style={{ maxWidth: 600, margin: '0 auto', padding: '2.5rem 1.5rem' }}>
      <h1 style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--text-primary)', marginBottom: '2rem' }}>
        Envoyer une notification
      </h1>
      {success ? (
        <div style={{ color: 'var(--gold)', fontWeight: 600 }}>Notification envoyée ✓</div>
      ) : (
        <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '1.25rem' }}>
          <div>
            <label style={{ display: 'block', color: 'var(--text-secondary)', fontSize: '0.85rem', marginBottom: '0.4rem' }}>Destinataire</label>
            <select value={target} onChange={(e) => setTarget(e.target.value)} style={inputStyle}>
              <option value="all">Tous les workspaces</option>
              {workspaces.map((ws) => <option key={ws.id} value={ws.id}>{ws.name}</option>)}
            </select>
          </div>
          <div>
            <label style={{ display: 'block', color: 'var(--text-secondary)', fontSize: '0.85rem', marginBottom: '0.4rem' }}>Titre *</label>
            <input required value={title} onChange={(e) => setTitle(e.target.value)} style={inputStyle} placeholder="ex: Mise à jour disponible" />
          </div>
          <div>
            <label style={{ display: 'block', color: 'var(--text-secondary)', fontSize: '0.85rem', marginBottom: '0.4rem' }}>Message *</label>
            <textarea required value={message} onChange={(e) => setMessage(e.target.value)} rows={4} style={{ ...inputStyle, resize: 'vertical' }} placeholder="Contenu de la notification…" />
          </div>
          <button type="submit" disabled={sending} style={{ padding: '0.7rem 1.5rem', background: 'var(--gold)', color: '#000', border: 'none', borderRadius: 'var(--r-xs)', fontWeight: 700, cursor: sending ? 'not-allowed' : 'pointer', opacity: sending ? 0.6 : 1, alignSelf: 'flex-start' }}>
            {sending ? 'Envoi…' : 'Envoyer'}
          </button>
        </form>
      )}
    </div>
  );
}
