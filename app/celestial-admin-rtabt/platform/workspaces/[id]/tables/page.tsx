'use client';

import { useEffect, useState } from 'react';
import { useParams } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import type { Database } from '@/lib/supabase/types';

type TableDef = Database['public']['Tables']['erp_table_definitions']['Row'];
type Access = Database['public']['Tables']['workspace_table_access']['Row'];

export default function WorkspaceTablesPage() {
  const { id: workspaceId } = useParams<{ id: string }>();
  const supabase = createClient();
  const [allTables, setAllTables] = useState<TableDef[]>([]);
  const [access, setAccess] = useState<Access[]>([]);
  const [saving, setSaving] = useState<string | null>(null);

  async function load() {
    const [{ data: defs }, { data: acc }] = await Promise.all([
      supabase.from('erp_table_definitions').select('*').order('label'),
      supabase.from('workspace_table_access').select('*').eq('workspace_id', workspaceId),
    ]);
    setAllTables(defs ?? []);
    setAccess(acc ?? []);
  }

  useEffect(() => { load(); }, [workspaceId]);

  function hasAccess(tableId: string) {
    return access.some((a) => a.table_id === tableId);
  }

  function canExport(tableId: string) {
    return access.find((a) => a.table_id === tableId)?.can_export ?? false;
  }

  async function toggleAccess(tableId: string) {
    setSaving(tableId);
    if (hasAccess(tableId)) {
      await supabase.from('workspace_table_access').delete().eq('workspace_id', workspaceId).eq('table_id', tableId);
    } else {
      await supabase.from('workspace_table_access').insert({ workspace_id: workspaceId, table_id: tableId, can_export: true });
    }
    await load();
    setSaving(null);
  }

  async function toggleExport(tableId: string) {
    const current = canExport(tableId);
    await supabase.from('workspace_table_access').update({ can_export: !current }).eq('workspace_id', workspaceId).eq('table_id', tableId);
    await load();
  }

  return (
    <div style={{ maxWidth: 700, margin: '0 auto', padding: '2.5rem 1.5rem' }}>
      <h1 style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--text-primary)', marginBottom: '0.5rem' }}>
        Tables accessibles
      </h1>
      <p style={{ color: 'var(--text-muted)', fontSize: '0.85rem', marginBottom: '2rem' }}>
        Cochez les tables ERP que ce workspace peut consulter.
      </p>

      {allTables.length === 0 ? (
        <div style={{ color: 'var(--text-muted)', textAlign: 'center', padding: '2rem' }}>
          Aucune table ERP définie. <a href="/celestial-admin-rtabt/platform/table-definitions/new" style={{ color: 'var(--gold)' }}>En créer une →</a>
        </div>
      ) : (
        <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
          {allTables.map((t) => (
            <div
              key={t.id}
              style={{
                display: 'flex', alignItems: 'center', justifyContent: 'space-between',
                background: 'var(--glass)', border: `1px solid ${hasAccess(t.id) ? 'var(--gold-soft)' : 'var(--glass-border)'}`,
                borderRadius: 'var(--r-xs)', padding: '0.8rem 1rem', gap: '1rem',
              }}
            >
              <div style={{ flex: 1 }}>
                <div style={{ color: 'var(--text-primary)', fontWeight: 600, fontSize: '0.9rem' }}>{t.label}</div>
                <div style={{ color: 'var(--text-muted)', fontSize: '0.78rem', fontFamily: 'monospace' }}>{t.name}</div>
                {t.description && <div style={{ color: 'var(--text-faint)', fontSize: '0.78rem', marginTop: '0.1rem' }}>{t.description}</div>}
              </div>
              <div style={{ display: 'flex', alignItems: 'center', gap: '1rem' }}>
                {hasAccess(t.id) && (
                  <label style={{ display: 'flex', alignItems: 'center', gap: '0.4rem', cursor: 'pointer', color: 'var(--text-muted)', fontSize: '0.8rem' }}>
                    <input
                      type="checkbox"
                      checked={canExport(t.id)}
                      onChange={() => toggleExport(t.id)}
                    />
                    Export
                  </label>
                )}
                <button
                  onClick={() => toggleAccess(t.id)}
                  disabled={saving === t.id}
                  style={{
                    padding: '0.35rem 0.8rem',
                    background: hasAccess(t.id) ? 'color-mix(in srgb, #f87171 15%, transparent)' : 'var(--gold-soft)',
                    border: `1px solid ${hasAccess(t.id) ? '#f87171' : 'var(--gold)'}`,
                    borderRadius: 'var(--r-xs)',
                    color: hasAccess(t.id) ? '#f87171' : 'var(--gold)',
                    cursor: 'pointer', fontSize: '0.8rem', fontWeight: 600,
                    opacity: saving === t.id ? 0.5 : 1,
                  }}
                >
                  {saving === t.id ? '…' : hasAccess(t.id) ? 'Retirer' : 'Activer'}
                </button>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
