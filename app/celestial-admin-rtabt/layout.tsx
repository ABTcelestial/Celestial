import type { Metadata } from 'next';
import { AdminNav } from '@/components/admin/AdminNav';

export const dynamic = 'force-dynamic';

export const metadata: Metadata = { title: 'Celestial Admin' };

export default function AdminLayout({ children }: { children: React.ReactNode }) {
  return (
    <div style={{ minHeight: '100vh', background: 'var(--bg-void)' }}>
      <AdminNav />
      <div style={{ paddingTop: 'var(--nav-h)' }}>
        {children}
      </div>
    </div>
  );
}
