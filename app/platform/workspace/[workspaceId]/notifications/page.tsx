'use client';

import { useEffect, useState } from 'react';
import { useParams } from 'next/navigation';
import { usePlatformClient } from '@/lib/supabase/platform-client';
import type { Database } from '@/lib/supabase/types';

type Notification = Database['public']['Tables']['platform_notifications']['Row'];

export default function NotificationsPage() {
  const { workspaceId } = useParams<{ workspaceId: string }>();
  const supabase = usePlatformClient();
  const [notifications, setNotifications] = useState<Notification[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      const { data } = await supabase
        .from('platform_notifications')
        .select('*')
        .eq('workspace_id', workspaceId)
        .order('created_at', { ascending: false });
      setNotifications(data ?? []);
      setLoading(false);

      // Mark all as read
      await supabase
        .from('platform_notifications')
        .update({ read: true })
        .eq('workspace_id', workspaceId)
        .eq('read', false);
    }
    load();
  }, [workspaceId, supabase]);

  return (
    <main style={{ maxWidth: 800, margin: '0 auto', padding: '3rem 1.5rem' }}>
      <h1 style={{ color: 'var(--text-primary)', fontSize: '1.5rem', fontWeight: 700, marginBottom: '2rem' }}>
        Notifications
      </h1>

      {loading ? (
        <div style={{ color: 'var(--text-muted)' }}>Chargement…</div>
      ) : notifications.length === 0 ? (
        <div style={{
          background: 'var(--glass)', border: '1px solid var(--glass-border)',
          borderRadius: 'var(--r-sm)', padding: '2rem', textAlign: 'center', color: 'var(--text-muted)',
        }}>
          Aucune notification pour le moment.
        </div>
      ) : (
        <div style={{ display: 'flex', flexDirection: 'column', gap: '0.75rem' }}>
          {notifications.map((n) => (
            <div
              key={n.id}
              style={{
                background: 'var(--glass)',
                border: `1px solid ${n.read ? 'var(--glass-border)' : 'var(--gold-soft)'}`,
                borderRadius: 'var(--r-xs)',
                padding: '1rem 1.25rem',
              }}
            >
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', gap: '1rem' }}>
                <div>
                  <div style={{ color: 'var(--text-primary)', fontWeight: 600 }}>{n.title}</div>
                  <div style={{ color: 'var(--text-secondary)', fontSize: '0.9rem', marginTop: '0.25rem' }}>{n.message}</div>
                </div>
                <div style={{ color: 'var(--text-faint)', fontSize: '0.75rem', whiteSpace: 'nowrap' }}>
                  {new Date(n.created_at).toLocaleDateString('fr-DZ')}
                </div>
              </div>
            </div>
          ))}
        </div>
      )}
    </main>
  );
}
