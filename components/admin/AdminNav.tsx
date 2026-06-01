'use client';
import Link from 'next/link';
import { usePathname, useRouter } from 'next/navigation';
import { createClient } from '@/lib/supabase/client';
import { LogoMark } from '@/components/layout/LogoMark';
import { cn } from '@/lib/utils';

const links = [
  { href: '/celestial-admin-rtabt',             label: 'Dashboard',      exact: true,  icon: '▦' },
  { href: '/celestial-admin-rtabt/devis',       label: 'Demandes',        exact: false, icon: '✉' },
  { href: '/celestial-admin-rtabt/produits',      label: 'Logiciels',      exact: false, icon: '⬡' },
  { href: '/celestial-admin-rtabt/modules',       label: 'Modules',        exact: false, icon: '⊕' },
  { href: '/celestial-admin-rtabt/bundles',       label: 'Bundles',        exact: false, icon: '◈' },
  { href: '/celestial-admin-rtabt/offres-config', label: 'Config offres', exact: false, icon: '⊞' },
  { href: '/celestial-admin-rtabt/changelogs',    label: 'Changelogs',    exact: false, icon: '≡' },
  { href: '/celestial-admin-rtabt/documentation', label: 'Documentation', exact: false, icon: '◫' },
  { href: '/celestial-admin-rtabt/parametres',  label: 'Paramètres',      exact: false, icon: '⚙' },
];

export function AdminNav() {
  const pathname = usePathname();
  const router = useRouter();
  const supabase = createClient();

  async function handleLogout() {
    await supabase.auth.signOut();
    router.push('/celestial-admin-rtabt/login');
    router.refresh();
  }

  return (
    <nav className="nav scrolled" style={{ borderBottom: '1px solid var(--hairline)' }}>
      <div className="flex items-center justify-between gap-4 w-full px-6" style={{ maxWidth: 1400, margin: '0 auto' }}>
        <div className="flex items-center gap-5">
          <Link href="/celestial-admin-rtabt" className="logo" style={{ flexShrink: 0 }}>
            <LogoMark />
            <span className="logo-name">
              Celestial<span className="dot">.</span>{' '}
              <span style={{ color: 'var(--text-muted)', fontSize: 13, fontWeight: 400 }}>Admin</span>
            </span>
          </Link>
          <div className="flex items-center gap-0.5">
            {links.map(l => {
              const active = l.exact ? pathname === l.href : pathname.startsWith(l.href);
              return (
                <Link
                  key={l.href}
                  href={l.href}
                  className={cn('nav-link flex items-center gap-1.5', active && 'active')}
                  style={{ fontSize: 13.5 }}
                >
                  <span style={{ fontSize: 11, opacity: 0.7 }}>{l.icon}</span>
                  {l.label}
                </Link>
              );
            })}
          </div>
        </div>
        <div className="flex items-center gap-2.5">
          <Link href="/" target="_blank" className="btn btn-glass btn-sm">Site public →</Link>
          <button onClick={handleLogout} className="btn btn-ghost btn-sm" style={{ color: 'var(--cel-danger)', fontSize: 13 }}>
            Déconnexion
          </button>
        </div>
      </div>
    </nav>
  );
}
