import type { Metadata } from 'next';
import { createClient } from '@/lib/supabase/server';
import { QuoteForm } from '@/components/contact/QuoteForm';
import { RevealWrapper } from '@/components/shared/RevealWrapper';

export const metadata: Metadata = { title: 'Contact & devis — Celestial' };
export const revalidate = 300;

export default async function ContactPage() {
  const supabase = await createClient();
  const { data: info } = await supabase.from('contact_info').select('*').eq('id', 1).single();

  const adresse = info?.adresse || 'Béjaïa, Algérie';
  const telephone = info?.telephone || '';
  const email = info?.email || 'abtcelestial@gmail.com';

  const coords = [
    { label: 'Adresse', value: adresse, icon: '📍' },
    ...(telephone ? [{ label: 'Téléphone', value: telephone, icon: '📞' }] : []),
    { label: 'Email', value: email, icon: '✉' },
  ];

  return (
    <section
      className="relative overflow-hidden pt-[var(--nav-h)]"
      style={{
        background:
          'radial-gradient(900px 500px at 85% 10%, rgba(79,195,247,0.14), transparent 65%), linear-gradient(180deg, #FFFFFF 0%, #F6FAFE 100%)',
      }}
    >
      <div className="container-cel section">
        <div className="grid items-start gap-12 lg:grid-cols-[1.05fr_0.95fr]">
          <RevealWrapper>
            <span className="chip mb-6">Parlons de votre projet</span>
            <h1 className="text-[clamp(32px,4.4vw,50px)]">
              Demander <span className="text-grad">un devis</span>
            </h1>
            <p className="mt-5 max-w-[480px] text-[16.5px] leading-relaxed text-[var(--text-secondary)]">
              ERP, logiciel sur mesure, équipement, restaurant à automatiser : décrivez
              votre besoin, nous revenons vers vous rapidement avec une proposition claire,
              en dinars.
            </p>

            <div className="mt-10 space-y-4">
              {coords.map((c) => (
                <div key={c.label} className="flex items-center gap-4">
                  <span
                    className="flex h-11 w-11 items-center justify-center rounded-xl text-[18px]"
                    style={{ background: 'var(--card-tint)', border: '1px solid var(--card-border)' }}
                    aria-hidden
                  >
                    {c.icon}
                  </span>
                  <div>
                    <p className="text-[12.5px] font-semibold uppercase tracking-[0.06em] text-[var(--text-faint)]">
                      {c.label}
                    </p>
                    <p className="text-[15px] font-medium text-[var(--text-primary)]">{c.value}</p>
                  </div>
                </div>
              ))}
            </div>
          </RevealWrapper>

          <RevealWrapper delay={140}>
            <QuoteForm />
          </RevealWrapper>
        </div>
      </div>
    </section>
  );
}
