'use client';
import Link from 'next/link';
import { useState } from 'react';
import { AnimatedCounter } from '@/components/shared/AnimatedCounter';
import { cn } from '@/lib/utils';

type HeroVariant = 'A' | 'B' | 'C';

export function HomeHero() {
  const [active, setActive] = useState<HeroVariant>('A');

  return (
    <>
      <section style={{ position: 'relative', minHeight: '100vh', display: 'flex', alignItems: 'center', paddingTop: 'var(--nav-h)', overflow: 'hidden' }}>
        <div className="glow-orb" style={{ width: 620, height: 620, background: 'radial-gradient(circle, rgba(106,13,173,0.55), transparent 65%)', top: -160, right: -80 }} />
        <div className="glow-orb" style={{ width: 560, height: 560, background: 'radial-gradient(circle, rgba(26,35,126,0.5), transparent 65%)', bottom: -180, left: -120 }} />

        {/* Variant A */}
        {active === 'A' && (
          <div className="wrap" style={{ width: '100%', animation: 'heroIn 0.7s var(--ease-out) both' }}>
            <div style={{ textAlign: 'center', maxWidth: 880, marginInline: 'auto' }}>
              <div className="eyebrow" style={{ justifyContent: 'center' }}>Éditeur de logiciels ERP · Algérie</div>
              <h1 style={{ fontSize: 'clamp(42px, 6.5vw, 82px)', letterSpacing: '-0.03em', marginTop: 24 }}>
                Des ERP qui propulsent les <span className="text-grad">grandes entreprises</span> algériennes
              </h1>
              <p className="lead" style={{ maxWidth: 620, margin: '24px auto 0' }}>
                Celestial conçoit des progiciels de gestion intégrés robustes, en licence unique, pensés pour la réglementation et les usages locaux.
              </p>
              <div className="flex gap-3.5 justify-center flex-wrap mt-9">
                <Link href="/offres" className="btn btn-gold btn-lg">Voir nos logiciels</Link>
                <Link href="/contact" className="btn btn-glass btn-lg">Nous contacter</Link>
              </div>
              <div className="flex gap-8 justify-center flex-wrap mt-14" style={{ opacity: 0.8 }}>
                {[
                  { count: 5, suffix: '+', label: "ans d'expérience" },
                  { count: 120, suffix: '+', label: 'entreprises clientes' },
                  { count: 3, suffix: '', label: 'suites ERP' },
                  { count: 100, suffix: '%', label: 'conforme DZ', static: true },
                ].map((s, i) => (
                  <div key={i} className="flex flex-col gap-0.5 items-center">
                    <span className="stat-num" style={{ fontSize: 34 }}>
                      {s.static ? '100%' : <AnimatedCounter target={s.count} suffix={s.suffix} />}
                    </span>
                    <span style={{ color: 'var(--text-muted)', fontSize: 13 }}>{s.label}</span>
                  </div>
                ))}
              </div>
            </div>
          </div>
        )}

        {/* Variant B */}
        {active === 'B' && (
          <div className="wrap" style={{ width: '100%', animation: 'heroIn 0.7s var(--ease-out) both' }}>
            <div style={{ display: 'grid', gridTemplateColumns: '1.05fr 0.95fr', gap: 56, alignItems: 'center' }}>
              <div>
                <div className="eyebrow">Licence unique · Sans abonnement</div>
                <h1 style={{ fontSize: 'clamp(40px, 5vw, 66px)', marginTop: 22 }}>
                  Pilotez votre entreprise <span className="text-gold">depuis une seule</span> console.
                </h1>
                <p className="lead" style={{ maxWidth: 520, marginTop: 22 }}>
                  Comptabilité, paie, processus métier — trois suites ERP modulaires, déployées chez vous, maintenues par une équipe algérienne.
                </p>
                <div className="flex gap-3.5 flex-wrap mt-9">
                  <Link href="/offres" className="btn btn-gold btn-lg">Voir nos logiciels</Link>
                  <Link href="/contact" className="btn btn-glass btn-lg">Demander une démo</Link>
                </div>
                <div className="flex gap-6 items-center mt-8">
                  <span className="badge badge-gold">★ Made for Algeria</span>
                  <span style={{ color: 'var(--text-muted)', fontSize: 13.5 }}>Support humain · Alger</span>
                </div>
              </div>
              <div style={{
                borderRadius: 'var(--r-lg)', padding: 0, position: 'relative',
                background: 'linear-gradient(160deg, rgba(30,30,70,0.6), rgba(13,13,43,0.5))',
                border: '1px solid var(--glass-border-strong)',
                boxShadow: 'var(--shadow-cel-lg), var(--glow-purple)',
                overflow: 'hidden',
              }}>
                <div className="flex items-center gap-2" style={{ padding: '14px 18px', borderBottom: '1px solid var(--hairline)', background: 'rgba(0,0,0,0.2)' }}>
                  <span style={{ width: 11, height: 11, borderRadius: '50%', background: '#E5585E', display: 'block' }} />
                  <span style={{ width: 11, height: 11, borderRadius: '50%', background: '#E0A93B', display: 'block' }} />
                  <span style={{ width: 11, height: 11, borderRadius: '50%', background: '#46C99A', display: 'block' }} />
                  <span style={{ marginLeft: 10, fontFamily: 'var(--font-display)', fontSize: 12.5, color: 'var(--text-muted)' }}>Compta Process — Tableau de bord</span>
                </div>
                <div style={{ padding: 22 }}>
                  <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 12 }}>
                    {[
                      { label: "Chiffre d'affaires", value: '48,2M DZD', gold: true },
                      { label: 'Trésorerie', value: '+12,4%', gold: false },
                    ].map((k, i) => (
                      <div key={i} style={{ background: 'rgba(255,255,255,0.03)', border: '1px solid var(--hairline)', borderRadius: 'var(--r-sm)', padding: 16 }}>
                        <div style={{ color: 'var(--text-muted)', fontSize: 12 }}>{k.label}</div>
                        <div style={{ fontFamily: 'var(--font-display)', fontSize: 26, fontWeight: 600, color: k.gold ? 'var(--gold)' : 'inherit' }}>{k.value}</div>
                      </div>
                    ))}
                  </div>
                  <div className="flex items-end gap-2.5" style={{ height: 90, marginTop: 14 }}>
                    {[40, 62, 48, 78, 90, 70, 100].map((h, i) => (
                      <span key={i} style={{ flex: 1, height: `${h}%`, borderRadius: '5px 5px 0 0', background: 'linear-gradient(180deg, var(--purple-bright), var(--blue-deep))', display: 'block' }} />
                    ))}
                  </div>
                  <div className="flex gap-2 mt-4">
                    <span className="chip">TVA conforme</span>
                    <span className="chip">G50</span>
                    <span className="chip">Bilan SCF</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        )}

        {/* Variant C */}
        {active === 'C' && (
          <div className="wrap" style={{ width: '100%', animation: 'heroIn 0.7s var(--ease-out) both', position: 'relative' }}>
            <div style={{ position: 'absolute', inset: 0, background: 'var(--grad-cosmos)', opacity: 0.16, filter: 'blur(2px)', borderRadius: 40 }} />
            <div className="eyebrow">Depuis 2019 · Alger</div>
            <h1 style={{ fontSize: 'clamp(48px, 8vw, 110px)', lineHeight: 0.95, letterSpacing: '-0.04em', marginTop: 26 }}>
              Logiciels<br /><span className="text-grad">célestes</span> pour<br />l'entreprise.
            </h1>
            <p className="lead" style={{ maxWidth: 540, marginTop: 28 }}>
              ERP locaux, premium et durables. Une licence, zéro dépendance, un support de proximité.
            </p>
            <div className="flex gap-3.5 flex-wrap mt-8">
              <Link href="/offres" className="btn btn-gold btn-lg">Voir nos logiciels</Link>
              <Link href="/contact" className="btn btn-ghost btn-lg">Nous contacter →</Link>
            </div>
            <div className="flex gap-12 flex-wrap mt-11 pt-8" style={{ borderTop: '1px solid var(--hairline)' }}>
              {[
                { count: 5, suffix: ' ans', label: 'au service des entreprises DZ', gold: true },
                { count: 120, suffix: '+', label: 'déploiements réussis', gold: false },
                { count: 3, suffix: '', label: 'suites ERP métier', gold: false },
              ].map((s, i) => (
                <div key={i}>
                  <div className="stat-num" style={{ color: s.gold ? 'var(--gold)' : undefined }}>
                    <AnimatedCounter target={s.count} suffix={s.suffix} />
                  </div>
                  <div style={{ color: 'var(--text-muted)', fontSize: 13.5, marginTop: 4 }}>{s.label}</div>
                </div>
              ))}
            </div>
          </div>
        )}
      </section>

      {/* Hero switcher */}
      <div style={{
        position: 'fixed', bottom: 22, left: '50%', transform: 'translateX(-50%)',
        zIndex: 90, display: 'flex', alignItems: 'center', gap: 6,
        padding: '7px 8px', borderRadius: 'var(--r-pill)',
        background: 'rgba(10,10,26,0.8)', border: '1px solid var(--glass-border)',
        backdropFilter: 'blur(20px)', boxShadow: 'var(--shadow-cel-md)',
      }}>
        <span style={{ fontFamily: 'var(--font-display)', fontSize: 11, letterSpacing: '0.12em', textTransform: 'uppercase', color: 'var(--text-muted)', paddingLeft: 8, paddingRight: 4 }}>Hero</span>
        {(['A', 'B', 'C'] as HeroVariant[]).map((v, i) => (
          <button
            key={v}
            onClick={() => setActive(v)}
            style={{
              fontFamily: 'var(--font-display)', fontSize: 13, fontWeight: 500,
              color: active === v ? '#1A1206' : 'var(--text-secondary)',
              padding: '7px 14px', borderRadius: 'var(--r-pill)',
              background: active === v ? 'var(--grad-gold)' : 'transparent',
              transition: 'all 0.25s',
            }}
          >
            {['Céleste', 'Console', 'Éditorial'][i]}
          </button>
        ))}
      </div>

      <style>{`
        @keyframes heroIn { from { transform: translateY(18px); } to { transform: none; } }
      `}</style>
    </>
  );
}
