import Link from 'next/link';
import { RevealWrapper } from '@/components/shared/RevealWrapper';

export function FinalCtaSection() {
  return (
    <section className="section" style={{ paddingTop: 0 }}>
      <div className="wrap">
        <RevealWrapper>
          <div style={{
            position: 'relative', borderRadius: 'var(--r-xl)', padding: '72px 56px',
            textAlign: 'center', overflow: 'hidden',
            background: 'var(--grad-cosmos)', border: '1px solid var(--glass-border-strong)',
          }}>
            <div style={{ position: 'absolute', inset: 0, background: 'radial-gradient(600px 300px at 50% -20%, rgba(244,208,106,0.25), transparent 60%)' }} />
            <div style={{ position: 'relative', zIndex: 1 }}>
              <div className="eyebrow" style={{ justifyContent: 'center', color: 'var(--gold-bright)' }}>Prêt à décoller ?</div>
              <h2 style={{ fontSize: 'clamp(32px,4.4vw,56px)', marginTop: 18, maxWidth: '18ch', marginInline: 'auto' }}>
                Demandez un devis pour votre transformation ERP
              </h2>
              <p className="lead" style={{ color: 'rgba(255,255,255,0.82)', maxWidth: 520, margin: '20px auto 0' }}>
                Réponse sous 48h. Démo personnalisée. Estimation de licence transparente.
              </p>
              <div className="flex gap-3.5 justify-center flex-wrap mt-9">
                <Link href="/contact" className="btn btn-gold btn-lg">Demander un devis</Link>
                <Link href="/offres" className="btn btn-glass btn-lg">Explorer les logiciels</Link>
              </div>
            </div>
          </div>
        </RevealWrapper>
      </div>
    </section>
  );
}
