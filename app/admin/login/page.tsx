'use client';
import { useState, FormEvent } from 'react';
import { useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import { LogoMark } from '@/components/layout/LogoMark';

export default function AdminLoginPage() {
  const router = useRouter();
  const supabase = createClient();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setError('');
    setLoading(true);
    const { error } = await supabase.auth.signInWithPassword({ email, password });
    if (error) {
      setError('Email ou mot de passe incorrect.');
      setLoading(false);
    } else {
      router.push('/admin');
      router.refresh();
    }
  }

  return (
    <div style={{ minHeight: '100vh', display: 'flex', alignItems: 'center', justifyContent: 'center', background: 'var(--bg-void)', padding: 24 }}>
      <div style={{ width: '100%', maxWidth: 400 }}>
        {/* Logo */}
        <div className="logo" style={{ justifyContent: 'center', marginBottom: 40 }}>
          <LogoMark size={42} />
          <span className="logo-name" style={{ fontSize: 24 }}>Celestial<span className="dot">.</span></span>
        </div>

        <div className="card" style={{ padding: '40px 36px' }}>
          <h1 style={{ fontSize: 24, textAlign: 'center', marginBottom: 8 }}>Accès administration</h1>
          <p style={{ color: 'var(--text-muted)', fontSize: 14, textAlign: 'center', marginBottom: 32 }}>
            Connectez-vous pour gérer votre site.
          </p>

          <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: 18 }}>
            <div className="field">
              <label>Email</label>
              <input
                className="cel-input"
                type="email"
                placeholder="admin@celestial.dz"
                value={email}
                onChange={e => setEmail(e.target.value)}
                required
                autoFocus
              />
            </div>
            <div className="field">
              <label>Mot de passe</label>
              <input
                className="cel-input"
                type="password"
                placeholder="••••••••"
                value={password}
                onChange={e => setPassword(e.target.value)}
                required
              />
            </div>

            {error && (
              <div style={{ background: 'rgba(229,88,94,0.1)', border: '1px solid rgba(229,88,94,0.35)', borderRadius: 'var(--r-sm)', padding: '12px 16px', color: 'var(--danger)', fontSize: 14 }}>
                {error}
              </div>
            )}

            <button
              type="submit"
              className="btn btn-gold btn-lg btn-block"
              disabled={loading}
              style={{ marginTop: 8, opacity: loading ? 0.7 : 1 }}
            >
              {loading ? 'Connexion…' : 'Se connecter'}
            </button>
          </form>
        </div>

        <p style={{ color: 'var(--text-faint)', fontSize: 12.5, textAlign: 'center', marginTop: 24 }}>
          Accès réservé aux administrateurs Celestial.
        </p>
      </div>
    </div>
  );
}
