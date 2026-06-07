import { SignIn } from '@clerk/nextjs';

export const metadata = { title: 'Connexion — Celestial Platform' };

export default function PlatformLoginPage() {
  return (
    <div style={{
      minHeight: '100vh',
      background: 'var(--bg-void)',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      flexDirection: 'column',
      gap: '2rem',
    }}>
      <div style={{ textAlign: 'center' }}>
        <div style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--gold)', fontFamily: 'var(--font-display)' }}>
          Celestial
        </div>
        <div style={{ color: 'var(--text-secondary)', fontSize: '0.9rem', marginTop: '0.25rem' }}>
          Plateforme client
        </div>
      </div>
      <SignIn />
    </div>
  );
}
