import type { Metadata } from 'next';
import { PlatformNav } from '@/components/platform/PlatformNav';

export const metadata: Metadata = { title: 'Celestial Platform' };
export const dynamic = 'force-dynamic';

export default function PlatformLayout({ children }: { children: React.ReactNode }) {
  return (
    <div style={{ minHeight: '100vh', background: 'var(--bg-void)' }}>
      <PlatformNav />
      <div style={{ paddingTop: 'var(--nav-h)' }}>
        {children}
      </div>
    </div>
  );
}
