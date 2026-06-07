'use client';

import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';

export default function PlatformLoginPage() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [loading, setLoading] = useState(false);
  const router = useRouter();

  const inputStyle: React.CSSProperties = {
    background: 'var(--bg-void)',
    border: '1px solid var(--glass-border)',
    borderRadius: 'var(--r-xs)',
    padding: '0.65rem 0.9rem',
    color: 'var(--text-primary)',
    fontSize: '0.875rem',
    outline: 'none',
    width: '100%',
    boxSizing: 'border-box',
  };

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setLoading(true);
    setError('');
    const supabase = createClient();
    const { error: authError } = await supabase.auth.signInWithPassword({ email: email.trim(), password });
    if (authError) {
      setError('Email ou mot de passe incorrect.');
      setLoading(false);
    } else {
      router.push('/platforme-BusinessProcess/dashboard');
      router.refresh();
    }
  }

  return (
    <div style={{
      minHeight: '100vh',
      background: 'var(--bg-void)',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      flexDirection: 'column',
      gap: '2rem',
      padding: '2rem',
    }}>
      <div style={{ textAlign: 'center' }}>
        <div style={{ fontSize: '1.5rem', fontWeight: 700, color: 'var(--gold)', fontFamily: 'var(--font-display)' }}>
          Celestial
        </div>
        <div style={{ color: 'var(--text-secondary)', fontSize: '0.9rem', marginTop: '0.25rem' }}>
          Plateforme client
        </div>
      </div>

      <form
        onSubmit={handleSubmit}
        style={{
          width: '100%',
          maxWidth: 380,
          display: 'flex',
          flexDirection: 'column',
          gap: '1rem',
          background: 'var(--glass)',
          border: '1px solid var(--glass-border)',
          borderRadius: 'var(--r-sm)',
          padding: '2rem',
        }}
      >
        <h1 style={{ color: 'var(--text-primary)', fontSize: '1.1rem', fontWeight: 700, margin: 0 }}>
          Connexion
        </h1>

        <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
          <label style={{ color: 'var(--text-secondary)', fontSize: '0.8rem', fontWeight: 500 }}>Email</label>
          <input
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            placeholder="vous@entreprise.com"
            required
            autoComplete="email"
            style={inputStyle}
          />
        </div>

        <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
          <label style={{ color: 'var(--text-secondary)', fontSize: '0.8rem', fontWeight: 500 }}>Mot de passe</label>
          <input
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            placeholder="••••••••"
            required
            autoComplete="current-password"
            style={inputStyle}
          />
        </div>

        {error && (
          <div style={{ color: '#f87171', fontSize: '0.85rem', background: 'rgba(248,113,113,0.08)', borderRadius: 'var(--r-xs)', padding: '0.5rem 0.75rem' }}>
            {error}
          </div>
        )}

        <button
          type="submit"
          disabled={loading}
          style={{
            padding: '0.7rem 1rem',
            background: loading ? 'var(--glass-border)' : 'var(--gold)',
            color: loading ? 'var(--text-muted)' : '#000',
            border: 'none',
            borderRadius: 'var(--r-xs)',
            fontWeight: 700,
            fontSize: '0.9rem',
            cursor: loading ? 'not-allowed' : 'pointer',
            transition: 'opacity 0.15s',
          }}
        >
          {loading ? 'Connexion…' : 'Se connecter'}
        </button>
      </form>
    </div>
  );
}
