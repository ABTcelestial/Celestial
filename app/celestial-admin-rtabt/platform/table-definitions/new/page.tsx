'use client';

import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import type { ErpColumnDef } from '@/lib/supabase/types';

const COLUMN_TYPES = ['text', 'number', 'date', 'boolean'] as const;

export default function NewTableDefinitionPage() {
  const router = useRouter();
  const supabase = createClient();
  const [name, setName] = useState('');
  const [label, setLabel] = useState('');
  const [description, setDescription] = useState('');
  const [columns, setColumns] = useState<ErpColumnDef[]>([{ key: '', label: '', type: 'text' }]);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');

  function addColumn() {
    setColumns((prev) => [...prev, { key: '', label: '', type: 'text' }]);
  }

  function removeColumn(i: number) {
    setColumns((prev) => prev.filter((_, idx) => idx !== i));
  }

  function updateColumn(i: number, field: keyof ErpColumnDef, value: string) {
    setColumns((prev) => prev.map((col, idx) => idx === i ? { ...col, [field]: value } : col));
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    const valid = columns.every((c) => c.key && c.label);
    if (!valid) { setError('Tous les champs des colonnes sont requis.'); return; }
    setSaving(true); setError('');
    const { error: err } = await supabase.from('erp_table_definitions').insert({ name, label, description: description || null, columns });
    setSaving(false);
    if (err) { setError(err.message); return; }
    router.push('/celestial-admin-rtabt/platform/table-definitions');
  }

  const inputStyle = { background: 'var(--bg-void)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', padding: '0.6rem 0.9rem', color: 'var(--text-primary)', fontSize: '0.875rem', outline: 'none', width: '100%', boxSizing: 'border-box' as const };

  return (
    <div style={{ maxWidth: 700, margin: '0 auto', padding: '2.5rem 1.5rem' }}>
      <h1 style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--text-primary)', marginBottom: '2rem' }}>
        Nouvelle table ERP
      </h1>
      <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '1.25rem' }}>
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '1rem' }}>
          <div>
            <label style={{ display: 'block', color: 'var(--text-secondary)', fontSize: '0.85rem', marginBottom: '0.4rem' }}>Nom technique (PostgreSQL) *</label>
            <input required value={name} onChange={(e) => setName(e.target.value.toLowerCase().replace(/\s/g, '_'))} style={{ ...inputStyle, fontFamily: 'monospace' }} placeholder="ex: clients" />
          </div>
          <div>
            <label style={{ display: 'block', color: 'var(--text-secondary)', fontSize: '0.85rem', marginBottom: '0.4rem' }}>Nom affiché *</label>
            <input required value={label} onChange={(e) => setLabel(e.target.value)} style={inputStyle} placeholder="ex: Clients" />
          </div>
        </div>
        <div>
          <label style={{ display: 'block', color: 'var(--text-secondary)', fontSize: '0.85rem', marginBottom: '0.4rem' }}>Description (optionnel)</label>
          <input value={description} onChange={(e) => setDescription(e.target.value)} style={inputStyle} placeholder="ex: Liste des clients de l'entreprise" />
        </div>

        <div>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.75rem' }}>
            <label style={{ color: 'var(--text-secondary)', fontSize: '0.85rem', fontWeight: 600 }}>Colonnes *</label>
            <button type="button" onClick={addColumn} style={{ padding: '0.3rem 0.7rem', background: 'var(--glass)', border: '1px solid var(--glass-border)', borderRadius: 'var(--r-xs)', color: 'var(--text-secondary)', cursor: 'pointer', fontSize: '0.8rem' }}>
              + Colonne
            </button>
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
            {columns.map((col, i) => (
              <div key={i} style={{ display: 'grid', gridTemplateColumns: '1fr 1fr auto auto', gap: '0.5rem', alignItems: 'center' }}>
                <input value={col.key} onChange={(e) => updateColumn(i, 'key', e.target.value.toLowerCase().replace(/\s/g, '_'))} style={{ ...inputStyle, fontFamily: 'monospace' }} placeholder="nom_colonne" />
                <input value={col.label} onChange={(e) => updateColumn(i, 'label', e.target.value)} style={inputStyle} placeholder="Libellé" />
                <select value={col.type} onChange={(e) => updateColumn(i, 'type', e.target.value)} style={{ ...inputStyle, width: 'auto' }}>
                  {COLUMN_TYPES.map((t) => <option key={t} value={t}>{t}</option>)}
                </select>
                <button type="button" onClick={() => removeColumn(i)} style={{ background: 'none', border: 'none', color: '#f87171', cursor: 'pointer', fontSize: '1.1rem', padding: '0.2rem 0.4rem' }}>×</button>
              </div>
            ))}
          </div>
        </div>

        {error && <div style={{ color: '#f87171', fontSize: '0.85rem' }}>{error}</div>}
        <button type="submit" disabled={saving} style={{ padding: '0.7rem 1.5rem', background: 'var(--gold)', color: '#000', border: 'none', borderRadius: 'var(--r-xs)', fontWeight: 700, cursor: saving ? 'not-allowed' : 'pointer', opacity: saving ? 0.6 : 1, alignSelf: 'flex-start', fontSize: '0.9rem' }}>
          {saving ? 'Enregistrement…' : 'Créer la table'}
        </button>
      </form>
    </div>
  );
}
