'use client';
import { useEffect, useRef, useState } from 'react';

export function AnimatedCounter({
  target,
  suffix = '',
  className = '',
  style,
}: {
  target: number;
  suffix?: string;
  className?: string;
  style?: React.CSSProperties;
}) {
  const [value, setValue] = useState(target % 1 === 0 ? '0' : '0.0');
  const ref = useRef<HTMLSpanElement>(null);
  const triggered = useRef(false);

  useEffect(() => {
    const el = ref.current;
    if (!el) return;
    const io = new IntersectionObserver(([entry]) => {
      if (!entry.isIntersecting || triggered.current) return;
      triggered.current = true;
      const dur = 1600;
      const start = performance.now();
      function tick(now: number) {
        const p = Math.min((now - start) / dur, 1);
        const eased = 1 - Math.pow(1 - p, 3);
        const val = target * eased;
        setValue((target % 1 === 0 ? Math.floor(val) : val.toFixed(1)) + suffix);
        if (p < 1) requestAnimationFrame(tick);
      }
      requestAnimationFrame(tick);
      io.unobserve(el);
    }, { threshold: 0.5 });
    io.observe(el);
    return () => io.disconnect();
  }, [target, suffix]);

  return <span ref={ref} className={className} style={style}>{value}</span>;
}
