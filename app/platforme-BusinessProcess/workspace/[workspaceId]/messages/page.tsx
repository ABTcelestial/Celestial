'use client';

import { useEffect, useRef, useState } from 'react';
import { useParams } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import type { Database } from '@/lib/supabase/types';

type Message = Database['public']['Tables']['platform_messages']['Row'];

export default function MessagesPage() {
  const { workspaceId } = useParams<{ workspaceId: string }>();
  const [messages, setMessages] = useState<Message[]>([]);
  const [userId, setUserId] = useState<string | null>(null);
  const [text, setText] = useState('');
  const [sending, setSending] = useState(false);
  const bottomRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const supabase = createClient();
    async function init() {
      const { data: { user } } = await supabase.auth.getUser();
      setUserId(user?.id ?? null);

      const { data } = await supabase
        .from('platform_messages')
        .select('*')
        .eq('workspace_id', workspaceId)
        .order('created_at', { ascending: true });
      setMessages(data ?? []);
    }
    init();
  }, [workspaceId]);

  useEffect(() => {
    bottomRef.current?.scrollIntoView({ behavior: 'smooth' });
  }, [messages]);

  async function send() {
    if (!text.trim() || !userId) return;
    setSending(true);
    const supabase = createClient();
    const { data } = await supabase.from('platform_messages').insert({
      workspace_id: workspaceId,
      sender_type: 'client',
      user_id: userId,
      content: text.trim(),
    }).select().single();
    if (data) setMessages((prev) => [...prev, data]);
    setText('');
    setSending(false);
  }

  return (
    <main style={{ maxWidth: 800, margin: '0 auto', padding: '3rem 1.5rem', display: 'flex', flexDirection: 'column', height: 'calc(100vh - var(--nav-h) - 2rem)' }}>
      <h1 style={{ color: 'var(--text-primary)', fontSize: '1.5rem', fontWeight: 700, marginBottom: '1.5rem' }}>
        Support Celestial
      </h1>

      <div style={{
        flex: 1, overflowY: 'auto', display: 'flex', flexDirection: 'column', gap: '0.75rem',
        background: 'var(--glass)', border: '1px solid var(--glass-border)',
        borderRadius: 'var(--r-sm)', padding: '1.25rem', marginBottom: '1rem',
      }}>
        {messages.length === 0 && (
          <div style={{ color: 'var(--text-muted)', textAlign: 'center', margin: 'auto' }}>
            Envoyez un message à l&apos;équipe Celestial.
          </div>
        )}
        {messages.map((m) => (
          <div
            key={m.id}
            style={{
              alignSelf: m.sender_type === 'client' ? 'flex-end' : 'flex-start',
              maxWidth: '75%',
              background: m.sender_type === 'client' ? 'var(--gold-soft)' : 'color-mix(in srgb, var(--glass) 80%, white 20%)',
              border: '1px solid var(--glass-border)',
              borderRadius: 'var(--r-xs)',
              padding: '0.6rem 0.9rem',
            }}
          >
            {m.sender_type === 'admin' && (
              <div style={{ color: 'var(--gold)', fontSize: '0.75rem', fontWeight: 600, marginBottom: '0.2rem' }}>Celestial</div>
            )}
            <div style={{ color: 'var(--text-primary)', fontSize: '0.9rem' }}>{m.content}</div>
            <div style={{ color: 'var(--text-faint)', fontSize: '0.7rem', marginTop: '0.25rem', textAlign: 'right' }}>
              {new Date(m.created_at).toLocaleTimeString('fr-DZ', { hour: '2-digit', minute: '2-digit' })}
            </div>
          </div>
        ))}
        <div ref={bottomRef} />
      </div>

      <div style={{ display: 'flex', gap: '0.75rem' }}>
        <input
          value={text}
          onChange={(e) => setText(e.target.value)}
          onKeyDown={(e) => { if (e.key === 'Enter' && !e.shiftKey) { e.preventDefault(); send(); } }}
          placeholder="Votre message…"
          style={{
            flex: 1, background: 'var(--glass)', border: '1px solid var(--glass-border)',
            borderRadius: 'var(--r-xs)', padding: '0.75rem 1rem',
            color: 'var(--text-primary)', fontSize: '0.9rem', outline: 'none',
          }}
        />
        <button
          onClick={send}
          disabled={sending || !text.trim()}
          style={{
            padding: '0.75rem 1.25rem', background: 'var(--gold)', color: '#000',
            border: 'none', borderRadius: 'var(--r-xs)', fontWeight: 600,
            cursor: sending || !text.trim() ? 'not-allowed' : 'pointer',
            opacity: sending || !text.trim() ? 0.5 : 1,
          }}
        >
          Envoyer
        </button>
      </div>
    </main>
  );
}
