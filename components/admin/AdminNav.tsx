'use client';
import Link from 'next/link';
import { usePathname, useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import { LogoMark } from '@/components/layout/LogoMark';
import { cn } from '@/lib/utils';

const mainLinks = [
  { href: '/celestial-admin-rtabt',             label: 'Dashboard',     exact: true,  icon: '▦' },
  { href: '/celestial-admin-rtabt/devis',       label: 'Demandes',      exact: false, icon: '✉' },
  { href: '/celestial-admin-rtabt/produits',    label: 'Offres',        exact: false, icon: '⬡' },
  { href: '/celestial-admin-rtabt/modules',     label: 'Modules',       exact: false, icon: '⊕' },
  { href: '/celestial-admin-rtabt/bundles',     label: 'Packs',         exact: false, icon: '◈' },
  { href: '/celestial-admin-rtabt/licences',    label: 'Téléchargeable', exact: false, icon: '✦' },
  { href: '/celestial-admin-rtabt/changelogs',  label: 'Changelogs',    exact: false, icon: '≡' },
  { href: '/celestial-admin-rtabt/documentation', label: 'Docs',        exact: false, icon: '◫' },
  { href: '/celestial-admin-rtabt/parametres',  label: 'Paramètres',    exact: false, icon: '⚙' },
];

const platformLinks = [
  { href: '/celestial-admin-rtabt/platform',                      label: 'Vue d\'ensemble', exact: true,  icon: '◉' },
  { href: '/celestial-admin-rtabt/platform/workspaces',           label: 'Workspaces',       exact: false, icon: '⊟' },
  { href: '/celestial-admin-rtabt/platform/table-definitions',    label: 'Tables ERP',       exact: false, icon: '⊞' },
  { href: '/celestial-admin-rtabt/platform/sync-logs',            label: 'Sync logs',        exact: false, icon: '↻' },
  { href: '/celestial-admin-rtabt/platform/messages',             label: 'Messages',         exact: false, icon: '✉' },
  { href: '/celestial-admin-rtabt/platform/notifications/new',    label: 'Notifier',         exact: false, icon: '⚡' },
];

export function AdminNav() {
  const pathname = usePathname();
  const router = useRouter();
  const supabase = createClient();

  const isPlatform = pathname.startsWith('/celestial-admin-rtabt/platform');
  const activeLinks = isPlatform ? platformLinks : mainLinks;

  async function handleLogout() {
    await supabase.auth.signOut();
    router.push('/celestial-admin-rtabt/login');
    router.refresh();
  }

  return (
    <nav className="nav scrolled" style={{ borderBottom: '1px solid var(--hairline)' }}>
      <div
        style={{
          display: 'flex', alignItems: 'center', justifyContent: 'space-between',
          gap: '1rem', width: '100%', maxWidth: 1400, margin: '0 auto', padding: '0 1.5rem',
        }}
      >
        {/* Left: logo + section switcher + links */}
        <div style={{ display: 'flex', alignItems: 'center', gap: '1rem', minWidth: 0 }}>

          {/* Logo */}
          <Link href="/celestial-admin-rtabt" className="logo" style={{ flexShrink: 0 }}>
            <LogoMark />
            <span className="logo-name">
              Celestial<span className="dot">.</span>{' '}
              <span style={{ color: 'var(--text-muted)', fontSize: 13, fontWeight: 400 }}>Admin</span>
            </span>
          </Link>

          {/* Sliding tab switcher */}
          <div
            style={{
              position: 'relative',
              display: 'flex',
              background: 'var(--glass)',
              border: '1px solid var(--glass-border)',
              borderRadius: 'var(--r-xs)',
              padding: 3,
              flexShrink: 0,
            }}
          >
            {/* Sliding pill */}
            <div
              style={{
                position: 'absolute',
                top: 3, bottom: 3,
                width: 'calc(50% - 3px)',
                background: isPlatform
                  ? 'linear-gradient(135deg, color-mix(in srgb, var(--gold) 15%, transparent), color-mix(in srgb, var(--gold) 8%, transparent))'
                  : 'var(--glass-border)',
                border: `1px solid ${isPlatform ? 'var(--gold-soft)' : 'var(--hairline)'}`,
                borderRadius: 'calc(var(--r-xs) - 2px)',
                transform: isPlatform ? 'translateX(calc(100% + 0px))' : 'translateX(0)',
                transition: 'transform 0.22s cubic-bezier(.4,0,.2,1), background 0.22s, border-color 0.22s',
                pointerEvents: 'none',
              }}
            />

            <Link
              href="/celestial-admin-rtabt"
              style={{
                position: 'relative', zIndex: 1,
                padding: '0.25rem 0.85rem',
                fontSize: 12.5, fontWeight: isPlatform ? 400 : 600,
                color: isPlatform ? 'var(--text-muted)' : 'var(--text-primary)',
                textDecoration: 'none', borderRadius: 'calc(var(--r-xs) - 2px)',
                transition: 'color 0.2s',
                whiteSpace: 'nowrap',
              }}
            >
              Principal
            </Link>

            <Link
              href="/celestial-admin-rtabt/platform"
              style={{
                position: 'relative', zIndex: 1,
                padding: '0.25rem 0.85rem',
                fontSize: 12.5, fontWeight: isPlatform ? 600 : 400,
                color: isPlatform ? 'var(--gold)' : 'var(--text-muted)',
                textDecoration: 'none', borderRadius: 'calc(var(--r-xs) - 2px)',
                transition: 'color 0.2s',
                whiteSpace: 'nowrap',
              }}
            >
              Plateforme
            </Link>
          </div>

          {/* Separator */}
          <div style={{ width: 1, height: 18, background: 'var(--hairline)', flexShrink: 0 }} />

          {/* Section links */}
          <div style={{ display: 'flex', alignItems: 'center', gap: 2, overflowX: 'auto', scrollbarWidth: 'none' }}>
            {activeLinks.map(l => {
              const active = l.exact ? pathname === l.href : pathname.startsWith(l.href);
              return (
                <Link
                  key={l.href}
                  href={l.href}
                  className={cn('nav-link flex items-center gap-1.5', active && 'active')}
                  style={{ fontSize: 13, whiteSpace: 'nowrap' }}
                >
                  <span style={{ fontSize: 10, opacity: 0.65 }}>{l.icon}</span>
                  {l.label}
                </Link>
              );
            })}
          </div>
        </div>

        {/* Right: actions */}
        <div style={{ display: 'flex', alignItems: 'center', gap: 8, flexShrink: 0 }}>
          <Link href="/" target="_blank" className="btn btn-glass btn-sm" style={{ fontSize: 12.5 }}>
            Site →
          </Link>
          <button
            onClick={handleLogout}
            className="btn btn-ghost btn-sm"
            style={{ color: 'var(--cel-danger)', fontSize: 12.5 }}
          >
            Déconnexion
          </button>
        </div>
      </div>
    </nav>
  );
}
