'use client';

import type { ErpColumnDef } from '@/lib/supabase/types';

interface ExportButtonProps {
  rows: Record<string, unknown>[];
  columns: ErpColumnDef[];
  filename: string;
}

function toCSV(rows: Record<string, unknown>[], columns: ErpColumnDef[]): string {
  const header = columns.map((c) => `"${c.label.replace(/"/g, '""')}"`).join(',');
  const body = rows.map((row) =>
    columns.map((c) => {
      const v = row[c.key];
      if (v === null || v === undefined) return '';
      return `"${String(v).replace(/"/g, '""')}"`;
    }).join(',')
  );
  return [header, ...body].join('\r\n');
}

export function ExportButton({ rows, columns, filename }: ExportButtonProps) {
  function downloadCSV() {
    const csv = toCSV(rows, columns);
    const blob = new Blob(['﻿' + csv], { type: 'text/csv;charset=utf-8;' });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = `${filename}_${new Date().toISOString().slice(0, 10)}.csv`;
    a.click();
    URL.revokeObjectURL(url);
  }

  function printPDF() {
    window.print();
  }

  return (
    <div style={{ display: 'flex', gap: '0.5rem' }}>
      <button
        onClick={downloadCSV}
        style={{
          padding: '0.5rem 1rem',
          background: 'var(--glass)',
          border: '1px solid var(--glass-border)',
          borderRadius: 'var(--r-xs)',
          color: 'var(--text-secondary)',
          fontSize: '0.85rem',
          cursor: 'pointer',
          display: 'flex', alignItems: 'center', gap: '0.4rem',
        }}
      >
        ↓ CSV
      </button>
      <button
        onClick={printPDF}
        style={{
          padding: '0.5rem 1rem',
          background: 'var(--glass)',
          border: '1px solid var(--glass-border)',
          borderRadius: 'var(--r-xs)',
          color: 'var(--text-secondary)',
          fontSize: '0.85rem',
          cursor: 'pointer',
          display: 'flex', alignItems: 'center', gap: '0.4rem',
        }}
      >
        ⎙ PDF
      </button>
    </div>
  );
}
