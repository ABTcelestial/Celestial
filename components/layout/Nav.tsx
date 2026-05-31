'use client';
import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { useState } from 'react';
import { useScrollNav } from '@/hooks/useScrollNav';
import { LogoMark } from './LogoMark';
import { cn } from '@/lib/utils';

const navLinks = [
  { href: '/', label: 'Accueil' },
  { href: '/offres', label: 'Logiciels' },
  { href: '/documentation', label: 'Documentation' },
  { href: '/changelogs', label: 'Changelogs' },
  { href: '/a-propos', label: 'À propos' },
];

export function Nav() {
  const scrolled = useScrollNav();
  const pathname = usePathname();
  const [menuOpen, setMenuOpen] = useState(false);
  const [activeLang, setActiveLang] = useState('FR');

  return (
    <>
      <nav className={cn('nav', scrolled && 'scrolled')}>
        <div className="flex items-center justify-between gap-6 w-full max-w-[var(--maxw)] mx-auto px-7">
          <Link href="/" className="logo">
            <LogoMark />
            <span className="logo-name">Celestial<span className="dot">.</span></span>
          </Link>

          <div className="nav-links-desktop flex items-center gap-1">
            {navLinks.map(link => (
              <Link
                key={link.href}
                href={link.href}
                className={cn('nav-link', pathname === link.href && 'active')}
              >
                {link.label}
              </Link>
            ))}
          </div>

          <div className="flex items-center gap-3.5">
            <div className="lang">
              {['FR', 'EN', 'AR'].map(l => (
                <button
                  key={l}
                  className={activeLang === l ? 'active' : ''}
                  onClick={() => setActiveLang(l)}
                >
                  {l}
                </button>
              ))}
            </div>
            <Link href="/contact" className="btn btn-gold btn-sm">Demander un devis</Link>
            <button
              className="nav-burger"
              style={{ display: 'none' }}
              onClick={() => setMenuOpen(v => !v)}
              aria-label="Menu"
            >
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" width="20" height="20">
                <path d="M3 6h18M3 12h18M3 18h18" />
              </svg>
            </button>
          </div>
        </div>
      </nav>

      {/* Mobile overlay */}
      <div className={cn('mobile-sheet', menuOpen && 'open')}>
        {navLinks.map(link => (
          <Link key={link.href} href={link.href} onClick={() => setMenuOpen(false)}>
            {link.label}
          </Link>
        ))}
        <Link href="/contact" onClick={() => setMenuOpen(false)}>Contact</Link>
      </div>
    </>
  );
}
