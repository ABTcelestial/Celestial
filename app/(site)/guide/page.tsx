'use client';
import { useState } from 'react';

const phones = [
  { label: 'Accueil', href: '/', cap: 'Hero · Sections · CTA' },
  { label: 'Logiciels', href: '/offres', cap: 'Cartes produits · FAQ' },
  { label: 'Docs', href: '/documentation', cap: 'Sidebar · TOC · Contenu' },
  { label: 'Contact', href: '/contact', cap: 'Formulaire · Carte' },
];

const annotations = [
  { num: '01', title: 'Navbar dynamique', desc: "Transparente au départ, glassmorphism au scroll (threshold 24px). Burger menu ≤ 920px.", meta: ['useScrollNav hook', 'CSS: .nav.scrolled', 'backdrop-filter blur(20px)'] },
  { num: '02', title: 'Hero switcher', desc: '3 variantes (Céleste / Console / Éditorial) sélectionnables via contrôle fixe en bas.', meta: ['useState React', 'animation heroIn', 'Composant HomeHero'] },
  { num: '03', title: 'Reveal on scroll', desc: "Fade + translateY(26px) → aucun au déclenchement IntersectionObserver (threshold 12%).", meta: ['RevealWrapper client', 'IntersectionObserver', 'data-delay stagger'] },
  { num: '04', title: 'Compteurs animés', desc: '1,6 s, courbe cubique easing, déclenchés au scroll (threshold 50%).', meta: ['AnimatedCounter client', 'requestAnimationFrame', 'IntersectionObserver'] },
  { num: '05', title: 'Hover glassmorphism', desc: 'Cartes : lift -6px, border-strong, shadow-md. Boutons gold : glow 30px, lift -2px.', meta: ['CSS transitions 0.4s', 'var(--ease)', 'card-hover class'] },
  { num: '06', title: 'Validation formulaire', desc: 'Inline instantanée, halo rouge 4px, régex email. Succès = remplacement du formulaire.', meta: ['useState errors', 'FormData API', 'QuoteForm client'] },
];

const rtlContent = {
  fr: { eyebrow: 'Depuis 2019 · Alger', title: 'Logiciels célestes pour l\'entreprise.', body: 'ERP locaux, premium et durables. Une licence, zéro dépendance, un support de proximité.', btn1: 'Voir nos logiciels', btn2: 'Nous contacter' },
  ar: { eyebrow: 'منذ 2019 · الجزائر', title: 'برامج ERP راقية للمؤسسات.', body: 'برامج محلية ومميزة وقابلة للتوسع. ترخيص واحد، لا اعتماد على أحد، دعم قريب.', btn1: 'اكتشف برامجنا', btn2: 'تواصل معنا' },
};

export default function GuidePage() {
  const [rtlLang, setRtlLang] = useState<'fr' | 'ar'>('fr');
  const content = rtlContent[rtlLang];

  return (
    <main className="wrap">
      <header style={{ paddingTop: 'calc(var(--nav-h) + 80px)', paddingBottom: 30 }}>
        <div className="eyebrow">Guide & Mobile</div>
        <h1 style={{ fontSize: 'clamp(38px,5vw,60px)', marginTop: 18 }}>Aperçus mobiles & interactions</h1>
        <p className="lead" style={{ maxWidth: 580, marginTop: 18 }}>
          Frames iPhone avec vraies pages intégrées, annotations des micro-interactions clés, et démo RTL fonctionnelle.
        </p>
      </header>

      {/* Phone frames */}
      <section style={{ paddingBlock: 56, borderTop: '1px solid var(--hairline)' }}>
        <div style={{ fontFamily: 'var(--font-display)', fontSize: 12, color: 'var(--text-muted)', textTransform: 'uppercase', letterSpacing: '0.16em', marginBottom: 8 }}>
          Aperçu mobile (390px)
        </div>
        <p style={{ color: 'var(--text-muted)', fontSize: 13.5, marginBottom: 36 }}>Pages live en mode 390px — les iframes chargent les vrais composants React.</p>
        <div className="flex flex-wrap gap-8">
          {phones.map((p, i) => (
            <div key={i} style={{ width: 300, flexShrink: 0 }}>
              <div style={{
                position: 'relative', width: 300, height: 620,
                borderRadius: 42, background: '#05050d',
                border: '1px solid var(--glass-border-strong)',
                boxShadow: '0 40px 80px rgba(0,0,0,0.7), inset 0 1px 0 rgba(255,255,255,0.08)',
                padding: 10, overflow: 'hidden',
              }}>
                <div style={{ position: 'absolute', top: 14, left: '50%', transform: 'translateX(-50%)', width: 110, height: 26, background: '#05050d', borderRadius: '0 0 16px 16px', zIndex: 3 }}>
                  <div style={{ position: 'absolute', top: 9, left: '50%', transform: 'translateX(-50%)', width: 42, height: 5, background: '#1a1a2e', borderRadius: 5 }} />
                </div>
                <div style={{ position: 'absolute', inset: 10, borderRadius: 33, overflow: 'hidden' }}>
                  <iframe
                    src={p.href}
                    style={{ width: 390, height: 836, border: 0, borderRadius: 33, transform: 'scale(0.7179)', transformOrigin: 'top left', background: 'var(--bg-900)' }}
                    title={p.label}
                  />
                </div>
              </div>
              <div style={{ textAlign: 'center', marginTop: 16 }}>
                <span style={{ fontFamily: 'var(--font-display)', fontSize: 14, color: 'var(--text-secondary)' }}>{p.label}</span>
                <a href={p.href} style={{ display: 'block', color: 'var(--gold)', fontSize: 12.5, marginTop: 2 }}>{p.cap} →</a>
              </div>
            </div>
          ))}
        </div>
      </section>

      {/* Interaction annotations */}
      <section style={{ paddingBlock: 56, borderTop: '1px solid var(--hairline)' }}>
        <div style={{ fontFamily: 'var(--font-display)', fontSize: 12, color: 'var(--text-muted)', textTransform: 'uppercase', letterSpacing: '0.16em', marginBottom: 32 }}>
          Annotations interactions
        </div>
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(2,1fr)', gap: 18 }}>
          {annotations.map((a, i) => (
            <div key={i} className="card" style={{ padding: '24px 26px' }}>
              <div style={{ fontFamily: 'var(--font-display)', fontSize: 13, color: 'var(--gold)', letterSpacing: '0.08em' }}>{a.num}</div>
              <h3 style={{ fontSize: 18, marginTop: 8 }}>{a.title}</h3>
              <p style={{ fontSize: 14, color: 'var(--text-secondary)', marginTop: 8, lineHeight: 1.6 }}>{a.desc}</p>
              <div className="flex flex-wrap gap-2 mt-3.5">
                {a.meta.map((m, j) => <span key={j} className="chip">{m}</span>)}
              </div>
            </div>
          ))}
        </div>
      </section>

      {/* Accessibility */}
      <section style={{ paddingBlock: 56, borderTop: '1px solid var(--hairline)' }}>
        <div style={{ fontFamily: 'var(--font-display)', fontSize: 12, color: 'var(--text-muted)', textTransform: 'uppercase', letterSpacing: '0.16em', marginBottom: 30 }}>
          Accessibilité & RTL
        </div>
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3,1fr)', gap: 18 }}>
          <div className="card">
            <h3 style={{ fontSize: 18 }}>Ratios de contraste</h3>
            {[
              { color: '#F2F2F8', bg: '#0A0A1A', label: 'Texte / fond', ratio: '16:1 AAA' },
              { color: '#B6B6D0', bg: '#0A0A1A', label: 'Secondaire / fond', ratio: '8.9:1 AA' },
              { color: '#C9A84C', bg: '#0A0A1A', label: 'Or / fond', ratio: '11:1 AAA' },
              { color: '#1A1206', bg: '#C9A84C', label: 'Texte bouton gold', ratio: '14:1 AAA' },
            ].map(c => (
              <div key={c.label} className="flex items-center gap-3.5" style={{ paddingBlock: 12, borderBottom: '1px solid var(--hairline)' }}>
                <div style={{ width: 54, height: 40, borderRadius: 8, display: 'grid', placeItems: 'center', background: c.bg, border: '1px solid var(--hairline)', flexShrink: 0 }}>
                  <span style={{ fontFamily: 'var(--font-display)', fontSize: 14, fontWeight: 600, color: c.color }}>Aa</span>
                </div>
                <span style={{ fontSize: 13, color: 'var(--text-secondary)', flex: 1 }}>{c.label}</span>
                <span style={{ color: 'var(--success)', fontFamily: 'var(--font-display)', fontSize: 13, marginLeft: 'auto' }}>{c.ratio}</span>
              </div>
            ))}
          </div>
          <div className="card">
            <h3 style={{ fontSize: 18 }}>Bonnes pratiques</h3>
            <ul style={{ listStyle: 'none', marginTop: 16, display: 'flex', flexDirection: 'column', gap: 10 }}>
              {['Focus : halo 4px violet sur tous les interactifs', 'prefers-reduced-motion : animations désactivées', 'Hiérarchie sémantique H1→H4 respectée', 'aria-label sur tous les liens iconiques', 'Zones de clic ≥ 44px pour mobile', 'overflow-x: clip évite le scroll horizontal'].map(p => (
                <li key={p} className="flex gap-2.5 items-start" style={{ fontSize: 14, color: 'var(--text-secondary)' }}>
                  <span style={{ color: 'var(--success)', flexShrink: 0 }}>✓</span>{p}
                </li>
              ))}
            </ul>
          </div>
          <div className="card">
            <h3 style={{ fontSize: 18 }}>Démo RTL</h3>
            <div style={{ marginTop: 24 }}>
              <div className="inline-flex gap-1" style={{ padding: 5, borderRadius: 'var(--r-pill)', background: 'var(--glass)', border: '1px solid var(--glass-border)' }}>
                {(['fr', 'ar'] as const).map(l => (
                  <button
                    key={l}
                    onClick={() => setRtlLang(l)}
                    style={{
                      fontFamily: 'var(--font-display)', fontSize: 13, padding: '7px 18px', borderRadius: 'var(--r-pill)',
                      background: rtlLang === l ? 'var(--grad-gold)' : 'transparent',
                      color: rtlLang === l ? '#1A1206' : 'var(--text-secondary)',
                      fontWeight: rtlLang === l ? 600 : 400, transition: 'all 0.25s',
                    }}
                  >
                    {l === 'fr' ? 'FR / LTR' : 'AR / RTL'}
                  </button>
                ))}
              </div>
            </div>
            <div dir={rtlLang === 'ar' ? 'rtl' : 'ltr'} style={{ marginTop: 20, padding: 24, borderRadius: 'var(--r-lg)', border: '1px solid var(--glass-border)', background: 'var(--glass)' }}>
              <div className="eyebrow" style={{ justifyContent: rtlLang === 'ar' ? 'flex-end' : 'flex-start' }}>{content.eyebrow}</div>
              <h3 style={{ fontSize: 22, marginTop: 12 }}>{content.title}</h3>
              <p style={{ color: 'var(--text-secondary)', marginTop: 10, fontSize: 14 }}>{content.body}</p>
              <div className="flex gap-2.5 flex-wrap mt-4" style={{ justifyContent: rtlLang === 'ar' ? 'flex-end' : 'flex-start' }}>
                <button className="btn btn-gold btn-sm">{content.btn1}</button>
                <button className="btn btn-glass btn-sm">{content.btn2}</button>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
  );
}
