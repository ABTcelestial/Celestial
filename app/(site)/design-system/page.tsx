import { LogoMark } from '@/components/layout/LogoMark';
import Link from 'next/link';

export const metadata = { title: 'Celestial — Design System' };

const colors = [
  { name: 'bg-900', hex: '#0A0A1A', bg: '#0A0A1A' },
  { name: 'bg-800', hex: '#0D0D2B', bg: '#0D0D2B' },
  { name: 'bg-700', hex: '#12123A', bg: '#12123A' },
  { name: 'purple', hex: '#6A0DAD', bg: '#6A0DAD' },
  { name: 'purple-bright', hex: '#8B3FE0', bg: '#8B3FE0' },
  { name: 'blue', hex: '#1A237E', bg: '#1A237E' },
  { name: 'gold', hex: '#C9A84C', bg: '#C9A84C' },
  { name: 'gold-bright', hex: '#F4D06A', bg: '#F4D06A' },
  { name: 'info', hex: '#4E8CFF', bg: '#4E8CFF' },
  { name: 'success', hex: '#46C99A', bg: '#46C99A' },
  { name: 'warning', hex: '#E0A93B', bg: '#E0A93B' },
  { name: 'danger', hex: '#E5585E', bg: '#E5585E' },
];

function DsLabel({ children }: { children: React.ReactNode }) {
  return (
    <div className="flex items-center gap-3.5" style={{ fontFamily: 'var(--font-display)', fontSize: 12, color: 'var(--text-muted)', textTransform: 'uppercase', letterSpacing: '0.16em', marginBottom: 28 }}>
      {children}
      <div style={{ flex: 1, height: 1, background: 'var(--hairline)' }} />
    </div>
  );
}

export default function DesignSystemPage() {
  return (
    <main className="wrap">
      {/* Hero */}
      <header style={{ paddingTop: 'calc(var(--nav-h) + 80px)', paddingBottom: 40 }}>
        <div className="eyebrow">Guide de style</div>
        <h1 style={{ fontSize: 'clamp(38px,5vw,64px)', marginTop: 18 }}>
          Design System <span className="text-grad">Celestial</span>
        </h1>
        <p className="lead" style={{ maxWidth: 560, marginTop: 18 }}>
          Palette cosmos, typographie Space Grotesk, glassmorphism, accents or. Sombre, premium, RTL-ready.
        </p>
        <div className="flex gap-3 flex-wrap mt-6">
          {['Dark-first', 'Glassmorphism', 'RTL ready', 'WCAG AA'].map(t => (
            <span key={t} className="pill-tag">{t}</span>
          ))}
        </div>
      </header>

      {/* Logo */}
      <section style={{ paddingBlock: 56, borderTop: '1px solid var(--hairline)' }}>
        <DsLabel>Logo</DsLabel>
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3,1fr)', gap: 20 }}>
          {[
            { bg: 'var(--bg-900)', label: 'Sur fond sombre' },
            { bg: 'var(--grad-cosmos)', label: 'Sur gradient' },
            { bg: 'rgba(255,255,255,0.04)', label: 'Glassmorphism' },
          ].map((tile, i) => (
            <div key={i} style={{ background: tile.bg, border: '1px solid var(--hairline)', borderRadius: 'var(--r-lg)', padding: 40, display: 'grid', placeItems: 'center', gap: 18 }}>
              <div className="logo">
                <LogoMark />
                <span className="logo-name">Celestial<span className="dot">.</span></span>
              </div>
              <span style={{ fontSize: 12, color: 'var(--text-muted)', fontFamily: 'var(--font-display)' }}>{tile.label}</span>
            </div>
          ))}
        </div>
      </section>

      {/* Colors */}
      <section style={{ paddingBlock: 56, borderTop: '1px solid var(--hairline)' }}>
        <DsLabel>Couleurs</DsLabel>
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(150px,1fr))', gap: 14 }}>
          {colors.map(c => (
            <div key={c.name} style={{ borderRadius: 'var(--r-md)', overflow: 'hidden', border: '1px solid var(--hairline)', background: 'var(--glass)' }}>
              <div style={{ height: 84, background: c.bg }} />
              <div style={{ padding: '12px 14px' }}>
                <div style={{ fontFamily: 'var(--font-display)', fontSize: 13.5, fontWeight: 500 }}>{c.name}</div>
                <div style={{ color: 'var(--text-muted)', fontSize: 12, fontVariantNumeric: 'tabular-nums' }}>{c.hex}</div>
              </div>
            </div>
          ))}
        </div>
      </section>

      {/* Typography */}
      <section style={{ paddingBlock: 56, borderTop: '1px solid var(--hairline)' }}>
        <DsLabel>Typographie</DsLabel>
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 24 }}>
          <div style={{ background: 'rgba(255,255,255,0.02)', border: '1px solid var(--hairline)', borderRadius: 'var(--r-lg)', padding: 30 }}>
            <div style={{ fontSize: 12, color: 'var(--text-muted)', fontFamily: 'var(--font-display)', letterSpacing: '0.1em', textTransform: 'uppercase', marginBottom: 20 }}>Display — Space Grotesk</div>
            {[{ size: '82px', label: 'H1 / Display' }, { size: '44px', label: 'H2' }, { size: '30px', label: 'H3' }].map(t => (
              <div key={t.label} className="flex items-center justify-between" style={{ paddingBlock: 14, borderBottom: '1px solid var(--hairline)' }}>
                <span style={{ fontFamily: 'var(--font-display)', fontSize: t.size, fontWeight: 600, lineHeight: 1.1 }}>Aa</span>
                <span style={{ fontSize: 12.5, color: 'var(--text-muted)', fontFamily: 'var(--font-display)' }}>{t.label} / {t.size}</span>
              </div>
            ))}
          </div>
          <div style={{ background: 'rgba(255,255,255,0.02)', border: '1px solid var(--hairline)', borderRadius: 'var(--r-lg)', padding: 30 }}>
            <div style={{ fontSize: 12, color: 'var(--text-muted)', fontFamily: 'var(--font-display)', letterSpacing: '0.1em', textTransform: 'uppercase', marginBottom: 20 }}>Body — DM Sans</div>
            {[{ size: '20px', label: 'Lead' }, { size: '16px', label: 'Body' }, { size: '14px', label: 'Small' }].map(t => (
              <div key={t.label} className="flex items-center justify-between" style={{ paddingBlock: 14, borderBottom: '1px solid var(--hairline)' }}>
                <span style={{ fontSize: t.size }}>Texte exemple</span>
                <span style={{ fontSize: 12.5, color: 'var(--text-muted)', fontFamily: 'var(--font-display)' }}>{t.label} / {t.size}</span>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Buttons */}
      <section style={{ paddingBlock: 56, borderTop: '1px solid var(--hairline)' }}>
        <DsLabel>Boutons</DsLabel>
        <div className="flex flex-wrap gap-3 items-center">
          <button className="btn btn-gold btn-lg">Gold Large</button>
          <button className="btn btn-gold">Gold Default</button>
          <button className="btn btn-gold btn-sm">Gold Small</button>
          <button className="btn btn-primary btn-lg">Primary</button>
          <button className="btn btn-glass">Glass</button>
          <button className="btn btn-ghost">Ghost →</button>
        </div>
      </section>

      {/* Cards & Badges */}
      <section style={{ paddingBlock: 56, borderTop: '1px solid var(--hairline)' }}>
        <DsLabel>Cartes & badges</DsLabel>
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3,1fr)', gap: 24 }}>
          <div className="card">
            <div className="card-icon" />
            <h3 style={{ fontSize: 20 }}>Carte standard</h3>
            <p style={{ color: 'var(--text-secondary)', marginTop: 10, fontSize: 14.5 }}>Glassmorphism avec sheen supérieur et transitions hover.</p>
          </div>
          <div className="card card-hover">
            <h3 style={{ fontSize: 20 }}>Carte hover</h3>
            <p style={{ color: 'var(--text-secondary)', marginTop: 10, fontSize: 14.5 }}>Survol = lift -6px + border-strong + shadow-md.</p>
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: 10, justifyContent: 'center' }}>
            {['badge', 'badge badge-gold', 'badge badge-new', 'badge badge-fix', 'badge badge-improve', 'badge badge-version'].map((cls, i) => (
              <span key={i} className={cls}>Badge {i + 1}</span>
            ))}
          </div>
        </div>
        <div className="flex flex-wrap gap-2 mt-4">
          <span className="pill-tag">Pill tag</span>
          <span className="chip">Chip</span>
          <span className="badge badge-dot badge-new">Dot badge</span>
        </div>
      </section>

      {/* Forms */}
      <section style={{ paddingBlock: 56, borderTop: '1px solid var(--hairline)' }}>
        <DsLabel>Formulaires</DsLabel>
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 18, maxWidth: 680 }}>
          <div className="field">
            <label>Champ texte</label>
            <input className="cel-input" placeholder="Exemple…" />
          </div>
          <div className="field">
            <label>Sélecteur</label>
            <select className="cel-select" defaultValue="">
              <option value="">Choisir…</option>
              <option>Option 1</option>
              <option>Option 2</option>
            </select>
          </div>
          <div className="field" style={{ gridColumn: '1 / -1' }}>
            <label>Zone de texte</label>
            <textarea className="cel-textarea" placeholder="Message…" style={{ minHeight: 80 }} />
          </div>
        </div>
      </section>

      {/* Accessibility */}
      <section style={{ paddingBlock: 56, borderTop: '1px solid var(--hairline)', marginBottom: 40 }}>
        <DsLabel>Accessibilité & RTL</DsLabel>
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3,1fr)', gap: 18 }}>
          <div className="card">
            <h3 style={{ fontSize: 18 }}>Contraste WCAG</h3>
            {[
              { label: 'Texte primaire / bg-900', ratio: '16:1 AAA' },
              { label: 'Texte secondaire / bg-900', ratio: '8.9:1 AA' },
              { label: 'Or / bg-900', ratio: '11:1 AAA' },
            ].map(c => (
              <div key={c.label} className="flex items-center gap-3" style={{ paddingBlock: 12, borderBottom: '1px solid var(--hairline)' }}>
                <span style={{ fontSize: 14, color: 'var(--text-secondary)', flex: 1 }}>{c.label}</span>
                <span style={{ color: 'var(--success)', fontFamily: 'var(--font-display)', fontSize: 13 }}>{c.ratio}</span>
              </div>
            ))}
          </div>
          <div className="card">
            <h3 style={{ fontSize: 18 }}>Bonnes pratiques</h3>
            <ul style={{ listStyle: 'none', marginTop: 16, display: 'flex', flexDirection: 'column', gap: 10 }}>
              {['Focus visible (4px halo violet)', 'prefers-reduced-motion respecté', 'Hiérarchie H1→H3 sémantique', 'aria-label sur icônes interactives', 'Touch targets 44px+'].map(p => (
                <li key={p} className="flex gap-2.5 items-center" style={{ fontSize: 14, color: 'var(--text-secondary)' }}>
                  <span style={{ color: 'var(--success)' }}>✓</span> {p}
                </li>
              ))}
            </ul>
          </div>
          <div className="card">
            <h3 style={{ fontSize: 18 }}>Support RTL (arabe)</h3>
            <p style={{ color: 'var(--text-secondary)', fontSize: 14, marginTop: 10, lineHeight: 1.6 }}>Police Noto Sans Arabic activée via <code style={{ color: 'var(--purple-glow)', background: 'rgba(139,63,224,0.12)', padding: '1px 6px', borderRadius: 4 }}>dir="rtl"</code> sur l'élément racine.</p>
            <div dir="rtl" style={{ marginTop: 16, padding: 14, background: 'rgba(255,255,255,0.02)', borderRadius: 'var(--r-sm)', fontSize: 14 }}>
              مرحباً بكم في سيليستيال — برامج ERP الجزائرية
            </div>
          </div>
        </div>
      </section>
    </main>
  );
}
