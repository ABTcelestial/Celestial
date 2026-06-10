'use client';
import Link from 'next/link';
import dynamic from 'next/dynamic';
import { useEffect, useState } from 'react';

const Assemblage = dynamic(() => import('./Assemblage'), { ssr: false });

export function HomeHero() {
  const [show3D, setShow3D] = useState(false);

  useEffect(() => {
    // pas de 3D si l'utilisateur préfère réduire les animations
    const mq = window.matchMedia('(prefers-reduced-motion: reduce)');
    setShow3D(!mq.matches);
  }, []);

  return (
    <section
      className="relative flex min-h-[100svh] items-center overflow-hidden"
      style={{
        background:
          'radial-gradient(1100px 600px at 78% 38%, rgba(79,195,247,0.16), transparent 65%), radial-gradient(800px 500px at 12% 85%, rgba(14,143,214,0.08), transparent 60%), linear-gradient(180deg, #FFFFFF 0%, #F2F9FE 100%)',
      }}
    >
      {/* Scène 3D — pleine largeur, décalée à droite sur desktop */}
      <div className="absolute inset-0 md:left-[28%]" aria-hidden="true">
        {show3D && <Assemblage />}
      </div>

      {/* Voile de lisibilité côté texte */}
      <div
        className="pointer-events-none absolute inset-0 hidden md:block"
        style={{ background: 'linear-gradient(90deg, #FFFFFF 18%, rgba(255,255,255,0.75) 40%, transparent 62%)' }}
        aria-hidden="true"
      />

      <div className="container-cel relative z-10 w-full pt-[var(--nav-h)]">
        <div className="max-w-[640px] py-20 max-md:rounded-3xl max-md:bg-white/70 max-md:p-6 max-md:backdrop-blur-md">
          <span className="chip mb-6">Béjaïa, Algérie — Matériel · Logiciels · Services</span>

          <h1 className="text-[clamp(38px,5.6vw,64px)] font-extrabold">
            Tout votre business.
            <br />
            <span className="text-grad">Un seul système.</span>
          </h1>

          <p className="mt-6 max-w-[520px] text-[clamp(16px,1.4vw,18.5px)] leading-relaxed text-[var(--text-secondary)]">
            Celestial automatise la gestion des entreprises algériennes : stock, caisse,
            facturation, paie et comptabilité s&apos;assemblent en un système unique — avec
            le matériel et l&apos;accompagnement qui vont avec.
          </p>

          <div className="mt-9 flex flex-wrap items-center gap-4">
            <Link href="/contact" className="btn-primary">
              Demander un devis
              <span aria-hidden>→</span>
            </Link>
            <Link href="/erp" className="btn-ghost">
              Découvrir l&apos;ERP
            </Link>
          </div>

          <div className="mt-12 flex flex-wrap gap-x-8 gap-y-3 text-[13.5px] font-medium text-[var(--text-muted)]">
            <span>✦ ERP déjà déployé en entreprise</span>
            <span>✦ Licence unique, sans abonnement</span>
            <span>✦ Support local à Béjaïa</span>
          </div>
        </div>
      </div>
    </section>
  );
}
