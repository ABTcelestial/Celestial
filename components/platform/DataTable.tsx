'use client';

import type { ErpColumnDef } from '@/lib/supabase/types';

interface DataTableProps {
  columns: ErpColumnDef[];
  rows: Record<string, unknown>[];
}

function formatCell(value: unknown, type: ErpColumnDef['type']): string {
  if (value === null || value === undefined) return '—';
  if (type === 'date') {
    const d = new Date(String(value));
    return isNaN(d.getTime()) ? String(value) : d.toLocaleDateString('fr-DZ');
  }
  if (type === 'number') return Number(value).toLocaleString('fr');
  if (type === 'boolean') return value ? 'Oui' : 'Non';
  return String(value);
}

export function DataTable({ columns, rows }: DataTableProps) {
  if (columns.length === 0) {
    return (
      <div style={{ color: 'var(--text-muted)', padding: '2rem', textAlign: 'center' }}>
        Aucune colonne définie pour cette table.
      </div>
    );
  }

  return (
    <div style={{ overflowX: 'auto', borderRadius: 'var(--r-sm)', border: '1px solid var(--glass-border)' }}>
      <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '0.875rem' }}>
        <thead>
          <tr style={{ background: 'color-mix(in srgb, var(--glass) 60%, var(--bg-void))' }}>
            {columns.map((col) => (
              <th
                key={col.key}
                style={{
                  padding: '0.75rem 1rem',
                  textAlign: 'left',
                  color: 'var(--text-secondary)',
                  fontWeight: 600,
                  fontSize: '0.8rem',
                  textTransform: 'uppercase',
                  letterSpacing: '0.04em',
                  borderBottom: '1px solid var(--glass-border)',
                  whiteSpace: 'nowrap',
                }}
              >
                {col.label}
              </th>
            ))}
          </tr>
        </thead>
        <tbody>
          {rows.length === 0 ? (
            <tr>
              <td
                colSpan={columns.length}
                style={{ padding: '2rem', textAlign: 'center', color: 'var(--text-muted)' }}
              >
                Aucune donnée synchronisée.
              </td>
            </tr>
          ) : (
            rows.map((row, i) => (
              <tr
                key={i}
                style={{ borderBottom: '1px solid var(--hairline)' }}
              >
                {columns.map((col) => (
                  <td
                    key={col.key}
                    style={{
                      padding: '0.7rem 1rem',
                      color: 'var(--text-primary)',
                      whiteSpace: col.type === 'text' ? 'normal' : 'nowrap',
                      maxWidth: col.type === 'text' ? 320 : undefined,
                      overflow: 'hidden',
                      textOverflow: 'ellipsis',
                    }}
                  >
                    {formatCell(row[col.key], col.type)}
                  </td>
                ))}
              </tr>
            ))
          )}
        </tbody>
      </table>
    </div>
  );
}
