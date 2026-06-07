'use client';

import { useEffect, useState } from 'react';
import { createClient } from '@/lib/supabase/client';
import type { Database } from '@/lib/supabase/types';

type Message = Database['public']['Tables']['platform_messages']['Row'] & {
  platform_workspaces: { name: string } | null;
};

export default function AdminMessagesPage() {
  const supabase = createClient();
  const [workspaceId, setWorkspaceId] = useState<string>('');
  const [workspaces, setWorkspaces] = useState<{ id: string; name: string }[]>([]);
  const [messages, setMessages] = useState<Message[]>([]);
  const [reply, setReply] = useState('');
  const [sending, setSending] = useState(false);

  useEffect(() => {
    supabase.from('platform_workspaces').select('id, name').order('name').then(({ data }) => {
      setWorkspaces(data ?? []);
      if (data?.[0]) setWorkspaceId(data[0].id);
    });
  }, []);

  useEffect(() => {
    if (!workspaceId) return;
    supabase
      .from('platform_messages')
      .select('*, platform_workspaces(name)')
      .eq('workspace_id', workspaceId)
      .order('created_at', { ascending: true })
      .then(({ data }) => setMessages((data as Message[]) ?? []));
  }, [workspaceId]);

  async function sendReply() {
    if (!reply.trim() || !workspaceId) return;
    setSending(true);
    const { data } = await supabase.from('platform_messages').insert({
      workspace_id: workspaceId,
      sender_type: 'admin',
      content: reply.trim(),
    }).select('*, platform_workspaces(name)').single();
    if (data) setMessages((prev) => [...prev, data as Message]);
    setReply('');
    setSending(false);
  }

  return (
    <div style={{ maxWidth: 900, margin: '0 auto', padding: '2.5rem 1.5rem', display: 'flex', flexDirection: 'column', height: 'calc(100vh - var(--nav-h) - 2rem)' }}>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.5rem' }}>
        <h1 style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--text-primary)' }}>Messages clients</h1>
        <select
          value={workspaceId}
          onChange={(e) => setWorkspaceId(e.target.value)}
          style={{ background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', padding: '0.5rem 0.9rem', color: 'var(--text-primary)', fontSize: '0.875rem', outline: 'none' }}
        >
          {workspaces.map((ws) => <option key={ws.id} value={ws.id}>{ws.name}</option>)}
        </select>
      </div>

      <div style={{ flex: 1, overflowY: 'auto', display: 'flex', flexDirection: 'column', gap: '0.75rem', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-sm)', padding: '1.25rem', marginBottom: '1rem' }}>
        {messages.map((m) => (
          <div key={m.id} style={{ alignSelf: m.sender_type === 'admin' ? 'flex-end' : 'flex-start', maxWidth: '75%', background: m.sender_type === 'admin' ? 'var(--gold-soft)' : 'color-mix(in srgb, var(--glass) 80%, white 20%)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', padding: '0.6rem 0.9rem' }}>
            {m.sender_type === 'client' && <div style={{ color: 'var(--text-muted)', fontSize: '0.75rem', marginBottom: '0.2rem' }}>Client</div>}
            <div style={{ color: 'var(--text-primary)', fontSize: '0.9rem' }}>{m.content}</div>
            <div style={{ color: 'var(--text-faint)', fontSize: '0.7rem', marginTop: '0.25rem', textAlign: 'right' }}>
              {new Date(m.created_at).toLocaleTimeString('fr-DZ', { hour: '2-digit', minute: '2-digit' })}
            </div>
          </div>
        ))}
        {messages.length === 0 && <div style={{ color: 'var(--text-muted)', textAlign: 'center', margin: 'auto' }}>Aucun message pour ce workspace.</div>}
      </div>

      <div style={{ display: 'flex', gap: '0.75rem' }}>
        <input
          value={reply}
          onChange={(e) => setReply(e.target.value)}
          onKeyDown={(e) => { if (e.key === 'Enter' && !e.shiftKey) { e.preventDefault(); sendReply(); } }}
          placeholder="Répondre au client…"
          style={{ flex: 1, background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', padding: '0.75rem 1rem', color: 'var(--text-primary)', fontSize: '0.9rem', outline: 'none' }}
        />
        <button onClick={sendReply} disabled={sending || !reply.trim()} style={{ padding: '0.75rem 1.25rem', background: 'var(--gold)', color: '#000', border: 'none', borderRadius: 'var(--r-xs)', fontWeight: 600, cursor: sending || !reply.trim() ? 'not-allowed' : 'pointer', opacity: sending || !reply.trim() ? 0.5 : 1 }}>
          Envoyer
        </button>
      </div>
    </div>
  );
}
