import Link from 'next/link';
import { notFound } from 'next/navigation';
import { createClient } from '@/lib/supabase/server';
import { ApkManager } from '@/components/admin/ApkManager';
import { LicencesManager } from '@/components/admin/LicencesManager';

export default async function AdminApplicationPage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const supabase = await createClient();

  const [{ data: application }, { data: licenses }] = await Promise.all([
    supabase.from('applications').select('*').eq('id', id).single(),
    supabase.from('licenses').select('*').eq('application_id', id).order('created_at', { ascending: false }),
  ]);

  if (!application) notFound();

  return (
    <main style={{ padding: '40px 28px', maxWidth: 1000, margin: '0 auto' }}>
      <div style={{ marginBottom: 32 }}>
        <Link href="/celestial-admin-rtabt/licences" style={{ fontSize: 13, color: 'var(--text-muted)' }}>
          ← Licences
        </Link>
        <h1 style={{ fontSize: 'clamp(26px,2.8vw,36px)', marginTop: 10 }}>{application.nom}</h1>
        <p style={{ color: 'var(--text-muted)', fontSize: 14, marginTop: 6, fontFamily: 'monospace' }}>
          {application.slug}
        </p>
      </div>

      <div style={{ display: 'flex', flexDirection: 'column', gap: 28 }}>
        <ApkManager application={application} />
        <LicencesManager applicationId={application.id} initialLicenses={licenses ?? []} />
      </div>
    </main>
  );
}
