'use client';

import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { UserButton } from '@clerk/nextjs';

export function PlatformNav() {
  const pathname = usePathname();

  const workspaceIdMatch = pathname.match(/\/platforme-BusinessProcess\/workspace\/([^/]+)/);
  const workspaceId = workspaceIdMatch?.[1];

  const navLinks = workspaceId
    ? [
        { href: `/platforme-BusinessProcess/workspace/${workspaceId}`, label: 'Dashboard' },
        { href: `/platforme-BusinessProcess/workspace/${workspaceId}/tables`, label: 'Données' },
        { href: `/platforme-BusinessProcess/workspace/${workspaceId}/notifications`, label: 'Notifications' },
        { href: `/platforme-BusinessProcess/workspace/${workspaceId}/messages`, label: 'Support' },
        { href: `/platforme-BusinessProcess/workspace/${workspaceId}/settings`, label: 'Paramètres' },
      ]
    : [];

  return (
    <nav style={{
      position: 'fixed', top: 0, left: 0, right: 0, zIndex: 100,
      height: 'var(--nav-h)',
      background: 'color-mix(in srgb, var(--bg-void) 90%, transparent)',
      backdropFilter: 'blur(12px)',
      borderBottom: '1px solid var(--hairline)',
      display: 'flex', alignItems: 'center',
      padding: '0 1.5rem',
      gap: '2rem',
    }}>
      <Link
        href="/platforme-BusinessProcess/dashboard"
        style={{ color: 'var(--gold)', fontWeight: 700, fontFamily: 'var(--font-display)', fontSize: '1rem', textDecoration: 'none', flexShrink: 0 }}
      >
        Celestial Platform
      </Link>

      {navLinks.length > 0 && (
        <div style={{ display: 'flex', gap: '0.25rem', flex: 1 }}>
          {navLinks.map((link) => {
            const isActive = pathname === link.href || (link.href !== `/platforme-BusinessProcess/workspace/${workspaceId}` && pathname.startsWith(link.href));
            return (
              <Link
                key={link.href}
                href={link.href}
                style={{
                  padding: '0.35rem 0.75rem',
                  borderRadius: 'var(--r-xs)',
                  color: isActive ? 'var(--gold)' : 'var(--text-secondary)',
                  background: isActive ? 'var(--glass)' : 'transparent',
                  textDecoration: 'none',
                  fontSize: '0.875rem',
                  fontWeight: isActive ? 600 : 400,
                }}
              >
                {link.label}
              </Link>
            );
          })}
        </div>
      )}

      <div style={{ marginLeft: 'auto' }}>
        <UserButton />
      </div>
    </nav>
  );
}
