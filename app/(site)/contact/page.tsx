import { createClient } from '@/lib/supabase/server';
import { QuoteForm } from '@/components/contact/QuoteForm';

export const metadata = { title: 'Celestial — Contact & Devis' };
export const revalidate = 300;

export default async function ContactPage() {
  const supabase = await createClient();
  const { data: info } = await supabase.from('contact_info').select('*').eq('id', 1).single();

  const adresse = info?.adresse || 'Cité des Affaires, Bab Ezzouar, Alger 16000, Algérie';
  const telephone = info?.telephone || '+213 21 00 00 00';
  const email = info?.email || 'contact@celestial.dz';
  const linkedin = info?.linkedin_url || '#';
  const twitter = info?.twitter_url || '#';
  const facebook = info?.facebook_url || '#';

  return (
    <main className="wrap">
      <div style={{ display: 'grid', gridTemplateColumns: '1.05fr 0.95fr', gap: 56, paddingTop: 'calc(var(--nav-h) + 70px)', paddingBottom: 80, alignItems: 'start' }}>
        <div>
          <div className="eyebrow">Parlons de votre projet</div>
          <h1 style={{ fontSize: 'clamp(34px,4.4vw,52px)', marginTop: 16 }}>Demander un devis</h1>
          <p className="lead" style={{ maxWidth: 520, marginTop: 16 }}>
            Décrivez votre besoin : nous revenons vers vous sous 48h avec une estimation de licence et une proposition de démo.
          </p>
          <div style={{ marginTop: 32 }}><QuoteForm /></div>
        </div>

        <aside style={{ display: 'flex', flexDirection: 'column', gap: 14 }}>
          {[
            { icon: <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.7"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"/><circle cx="12" cy="10" r="3"/></svg>, label: 'ADRESSE', val: <span style={{ whiteSpace: 'pre-line' }}>{adresse}</span> },
            { icon: <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.7"><path d="M22 16.9v3a2 2 0 0 1-2.2 2 19.8 19.8 0 0 1-8.6-3 19.5 19.5 0 0 1-6-6 19.8 19.8 0 0 1-3.1-8.7A2 2 0 0 1 4.1 2h3a2 2 0 0 1 2 1.7c.1 1 .4 1.9.7 2.8a2 2 0 0 1-.5 2.1L8.1 9.9a16 16 0 0 0 6 6l1.3-1.3a2 2 0 0 1 2.1-.4c.9.3 1.8.6 2.8.7a2 2 0 0 1 1.7 2z"/></svg>, label: 'TÉLÉPHONE', val: telephone },
            { icon: <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.7"><rect x="2" y="4" width="20" height="16" rx="2"/><path d="m22 7-10 6L2 7"/></svg>, label: 'EMAIL', val: <a href={`mailto:${email}`} style={{ color: 'var(--gold)' }}>{email}</a> },
          ].map((item, i) => (
            <div key={i} className="card flex gap-4 items-start" style={{ padding: '22px 24px' }}>
              <span style={{ width: 44, height: 44, borderRadius: 'var(--r-sm)', display: 'grid', placeItems: 'center', background: 'linear-gradient(150deg,rgba(139,63,224,0.22),rgba(26,35,126,0.18))', border: '1px solid var(--glass-border)', color: 'var(--purple-glow)', flexShrink: 0 }}>{item.icon}</span>
              <div>
                <div style={{ fontSize: 12.5, color: 'var(--text-muted)', fontFamily: 'var(--font-display)', letterSpacing: '0.04em' }}>{item.label}</div>
                <div style={{ fontSize: 15.5, marginTop: 3 }}>{item.val}</div>
              </div>
            </div>
          ))}

          <div className="card flex gap-4 items-center" style={{ padding: '22px 24px' }}>
            <span style={{ width: 44, height: 44, borderRadius: 'var(--r-sm)', display: 'grid', placeItems: 'center', background: 'linear-gradient(150deg,rgba(139,63,224,0.22),rgba(26,35,126,0.18))', border: '1px solid var(--glass-border)', color: 'var(--purple-glow)', flexShrink: 0 }}>
              <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.7"><circle cx="12" cy="12" r="10"/><path d="M2 12h20M12 2a15 15 0 0 1 0 20 15 15 0 0 1 0-20z"/></svg>
            </span>
            <div style={{ flex: 1 }}>
              <div style={{ fontSize: 12.5, color: 'var(--text-muted)', fontFamily: 'var(--font-display)', letterSpacing: '0.04em' }}>RÉSEAUX</div>
              <div className="flex gap-2.5 mt-2">
                {[
                  { href: linkedin, label: 'LinkedIn', path: 'M4.98 3.5a2.5 2.5 0 1 1 0 5 2.5 2.5 0 0 1 0-5zM3 9h4v12H3zM9 9h3.8v1.7h.05c.53-1 1.83-2.05 3.77-2.05 4.03 0 4.78 2.65 4.78 6.1V21h-4v-5.3c0-1.27-.02-2.9-1.77-2.9s-2.04 1.38-2.04 2.8V21H9z', size: 18 },
                  { href: twitter, label: 'X', path: 'M18.9 2H22l-7.5 8.6L23 22h-6.8l-5.3-7-6.1 7H1.7l8-9.2L1 2h7l4.8 6.3zM16.6 20h1.9L7.5 4H5.5z', size: 16 },
                  { href: facebook, label: 'Facebook', path: 'M22 12a10 10 0 1 0-11.6 9.9v-7H7.9V12h2.5V9.8c0-2.5 1.5-3.9 3.8-3.9 1.1 0 2.2.2 2.2.2v2.5h-1.2c-1.2 0-1.6.75-1.6 1.5V12h2.7l-.4 2.9h-2.3v7A10 10 0 0 0 22 12z', size: 18 },
                ].filter(s => s.href && s.href !== '').map(s => (
                  <a key={s.label} href={s.href} target="_blank" rel="noopener noreferrer" aria-label={s.label}
                    style={{ width: 42, height: 42, borderRadius: 'var(--r-sm)', display: 'grid', placeItems: 'center', background: 'var(--glass)', border: '1px solid var(--glass-border)', color: 'var(--text-secondary)', transition: 'all 0.25s' }}>
                    <svg width={s.size} height={s.size} viewBox="0 0 24 24" fill="currentColor"><path d={s.path}/></svg>
                  </a>
                ))}
              </div>
            </div>
          </div>

          <div style={{ marginTop: 14, borderRadius: 'var(--r-lg)', overflow: 'hidden', border: '1px solid var(--glass-border)', position: 'relative', height: 220, background: 'radial-gradient(circle at 60% 40%,rgba(26,35,126,0.35),var(--bg-800))' }}>
            <svg style={{ position: 'absolute', inset: 0, width: '100%', height: '100%', opacity: 0.25 }} viewBox="0 0 400 220" preserveAspectRatio="none">
              <defs><pattern id="mapGrid" width="40" height="40" patternUnits="userSpaceOnUse"><path d="M40 0H0V40" fill="none" stroke="rgba(255,255,255,0.15)" strokeWidth="1"/></pattern></defs>
              <rect width="400" height="220" fill="url(#mapGrid)"/>
              <path d="M120 70 Q180 50 240 75 T330 110 Q300 160 230 165 T130 140 Q100 110 120 70Z" fill="rgba(139,63,224,0.18)" stroke="rgba(165,107,255,0.4)" strokeWidth="1.2"/>
            </svg>
            <div style={{ position: 'absolute', left: '54%', top: '30%', transform: 'translateX(-50%)', fontFamily: 'var(--font-display)', fontSize: 13, color: 'var(--gold-bright)', whiteSpace: 'nowrap' }}>Alger ✦</div>
            <div style={{ position: 'absolute', left: '54%', top: '46%', transform: 'translate(-50%,-100%)' }}>
              <div style={{ width: 14, height: 14, borderRadius: '50%', background: 'var(--gold-bright)', boxShadow: '0 0 0 8px rgba(244,208,106,0.18),0 0 20px rgba(244,208,106,0.6)', animation: 'ping 2.2s ease infinite' }} />
            </div>
          </div>
          <p style={{ color: 'var(--text-muted)', fontSize: 12.5, textAlign: 'center' }}>
            Siège à Alger · Bureau à Constantine · Interventions sur tout le territoire
          </p>
        </aside>
      </div>

      <style>{`
        @keyframes ping { 0%{box-shadow:0 0 0 0 rgba(244,208,106,0.4),0 0 20px rgba(244,208,106,0.6);}70%{box-shadow:0 0 0 18px rgba(244,208,106,0),0 0 20px rgba(244,208,106,0.6);}100%{box-shadow:0 0 0 0 rgba(244,208,106,0),0 0 20px rgba(244,208,106,0.6);} }
        @media(max-width:920px){.ct-grid{grid-template-columns:1fr!important;}}
      `}</style>
    </main>
  );
}
