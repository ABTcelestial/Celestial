'use client';
import { useEffect, useRef } from 'react';

export function RevealWrapper({ children, delay = 0, className = '' }: {
  children: React.ReactNode;
  delay?: number;
  className?: string;
}) {
  const ref = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const el = ref.current;
    if (!el) return;
    if (!('IntersectionObserver' in window)) { el.classList.add('in'); return; }
    const io = new IntersectionObserver(([entry]) => {
      if (entry.isIntersecting) {
        el.style.transitionDelay = delay + 'ms';
        el.classList.add('in');
        io.unobserve(el);
      }
    }, { threshold: 0.12, rootMargin: '0px 0px -8% 0px' });
    io.observe(el);
    return () => io.disconnect();
  }, [delay]);

  return (
    <div ref={ref} className={`reveal${className ? ' ' + className : ''}`}>
      {children}
    </div>
  );
}
