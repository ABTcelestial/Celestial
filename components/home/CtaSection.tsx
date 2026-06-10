import Link from 'next/link';
import { RevealWrapper } from '@/components/shared/RevealWrapper';

export function CtaSection() {
  return (
    <section className="section">
      <div className="container-cel">
        <RevealWrapper>
          <div
            className="relative overflow-hidden rounded-[var(--r-xl)] px-8 py-16 text-center md:px-16"
            style={{ background: 'var(--grad-deep)', boxShadow: 'var(--shadow-cel-lg)' }}
          >
            <div
              className="pointer-events-none absolute inset-0"
              style={{ background: 'radial-gradient(700px 300px at 50% -10%, rgba(79,195,247,0.35), transparent 70%)' }}
              aria-hidden
            />
            <h2 className="relative text-[clamp(26px,3.4vw,40px)] !text-white">
              Prêt à automatiser votre entreprise ?
            </h2>
            <p className="relative mx-auto mt-4 max-w-[520px] text-[16px] leading-relaxed text-white/80">
              Parlez-nous de votre activité : nous vous répondons avec une proposition
              claire, en dinars, sans engagement.
            </p>
            <div className="relative mt-8">
              <Link
                href="/contact"
                className="btn-primary !bg-white !text-[var(--blue-deep)]"
                style={{ background: '#FFFFFF', boxShadow: '0 10px 30px rgba(0,0,0,0.25)' }}
              >
                Demander un devis gratuit <span aria-hidden>→</span>
              </Link>
            </div>
          </div>
        </RevealWrapper>
      </div>
    </section>
  );
}
