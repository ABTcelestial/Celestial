interface KpiCardProps {
  label: string;
  value: string;
  sub?: string;
  accent?: 'gold' | 'error' | 'default';
}

export function KpiCard({ label, value, sub, accent = 'default' }: KpiCardProps) {
  const valueColor =
    accent === 'gold' ? 'var(--gold)' :
    accent === 'error' ? '#f87171' :
    'var(--text-primary)';

  return (
    <div style={{
      background: 'var(--glass)',
      border: '1px solid var(--glass-border)',
      borderRadius: 'var(--r-sm)',
      padding: '1.25rem 1.5rem',
    }}>
      <div style={{ color: 'var(--text-muted)', fontSize: '0.8rem', fontWeight: 500, textTransform: 'uppercase', letterSpacing: '0.05em', marginBottom: '0.5rem' }}>
        {label}
      </div>
      <div style={{ color: valueColor, fontSize: '1.5rem', fontWeight: 700, lineHeight: 1 }}>
        {value}
      </div>
      {sub && (
        <div style={{ color: 'var(--text-faint)', fontSize: '0.78rem', marginTop: '0.4rem' }}>{sub}</div>
      )}
    </div>
  );
}
