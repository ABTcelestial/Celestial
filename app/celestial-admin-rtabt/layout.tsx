import type { Metadata } from 'next';
import { AdminNav } from '@/components/admin/AdminNav';
import './admin.css';

export const dynamic = 'force-dynamic';

export const metadata: Metadata = { title: 'Celestial Admin' };

export default function AdminLayout({ children }: { children: React.ReactNode }) {
  return (
    <div className="admin-root">
      <AdminNav />
      <div style={{ paddingTop: 'var(--nav-h)' }}>
        {children}
      </div>
    </div>
  );
}
