'use client';
import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { useEffect, useState } from 'react';
import { LogoMark } from './LogoMark';

const LINKS = [
  { href: '/', label: 'Accueil' },
  { href: '/offres', label: 'Offres' },
  { href: '/documentation', label: 'Documentation' },
  { href: '/changelogs', label: 'Changelogs' },
  { href: '/a-propos', label: 'À propos' },
];

export function Nav() {
  const pathname = usePathname();
  const [scrolled, setScrolled] = useState(false);
  const [open, setOpen] = useState(false);

  useEffect(() => {
    const onScroll = () => setScrolled(window.scrollY > 24);
    onScroll();
    window.addEventListener('scroll', onScroll, { passive: true });
    return () => window.removeEventListener('scroll', onScroll);
  }, []);

  useEffect(() => setOpen(false), [pathname]);

  return (
    <header
      className="fixed inset-x-0 top-0 z-50 transition-all duration-300"
      style={{
        height: 'var(--nav-h)',
        background: scrolled || open ? 'rgba(255,255,255,0.85)' : 'transparent',
        backdropFilter: scrolled || open ? 'blur(14px)' : 'none',
        borderBottom: scrolled || open ? '1px solid var(--hairline)' : '1px solid transparent',
      }}
    >
      <nav className="container-cel flex h-full items-center justify-between">
        <Link href="/" className="flex items-center gap-3">
          <LogoMark size={32} />
          <span className="font-[family-name:var(--font-display)] text-[19px] font-bold tracking-tight text-[var(--ink)]">
            Celestial
          </span>
        </Link>

        {/* Liens desktop */}
        <div className="hidden items-center gap-1 md:flex">
          {LINKS.map((l) => {
            const active = l.href === '/' ? pathname === '/' : pathname.startsWith(l.href);
            return (
              <Link
                key={l.href}
                href={l.href}
                className="rounded-full px-4 py-2 text-[14.5px] font-medium transition-colors"
                style={{
                  color: active ? 'var(--blue-deep)' : 'var(--text-secondary)',
                  background: active ? 'var(--card-tint)' : 'transparent',
                }}
              >
                {l.label}
              </Link>
            );
          })}
        </div>

        <div className="hidden md:block">
          <Link href="/contact" className="btn-primary !px-6 !py-2.5 !text-[14px]">
            Demander un devis
          </Link>
        </div>

        {/* Burger mobile */}
        <button
          className="flex h-10 w-10 flex-col items-center justify-center gap-1.5 md:hidden"
          onClick={() => setOpen(!open)}
          aria-label="Menu"
          aria-expanded={open}
        >
          <span
            className="h-[2px] w-6 rounded-full bg-[var(--ink)] transition-transform duration-300"
            style={{ transform: open ? 'translateY(4px) rotate(45deg)' : 'none' }}
          />
          <span
            className="h-[2px] w-6 rounded-full bg-[var(--ink)] transition-transform duration-300"
            style={{ transform: open ? 'translateY(-4px) rotate(-45deg)' : 'none' }}
          />
        </button>
      </nav>

      {/* Menu mobile */}
      {open && (
        <div
          className="border-t border-[var(--hairline)] bg-white/95 px-6 py-4 backdrop-blur-xl md:hidden"
          style={{ boxShadow: 'var(--shadow-cel-md)' }}
        >
          {LINKS.map((l) => (
            <Link
              key={l.href}
              href={l.href}
              className="block rounded-xl px-4 py-3 text-[15px] font-medium text-[var(--text-secondary)]"
            >
              {l.label}
            </Link>
          ))}
          <Link href="/contact" className="btn-primary mt-3 w-full justify-center">
            Demander un devis
          </Link>
        </div>
      )}
    </header>
  );
}
