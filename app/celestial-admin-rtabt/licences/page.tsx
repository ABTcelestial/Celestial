import { createClient } from '@/lib/supabase/server';
import { ApplicationsList } from '@/components/admin/ApplicationsList';

export default async function AdminLicencesPage() {
  const supabase = await createClient();
  const [{ data: applications }, { data: licenses }] = await Promise.all([
    supabase.from('applications').select('*').order('created_at'),
    supabase.from('licenses').select('application_id, status'),
  ]);

  const counts = new Map<string, { total: number; active: number }>();
  for (const l of licenses ?? []) {
    const entry = counts.get(l.application_id) ?? { total: 0, active: 0 };
    entry.total += 1;
    if (l.status === 'active') entry.active += 1;
    counts.set(l.application_id, entry);
  }

  return (
    <main style={{ padding: '40px 28px', maxWidth: 1000, margin: '0 auto' }}>
      <div style={{ marginBottom: 32 }}>
        <div className="eyebrow">Administration</div>
        <h1 style={{ fontSize: 'clamp(26px,2.8vw,36px)', marginTop: 10 }}>Licences</h1>
        <p style={{ color: 'var(--text-muted)', fontSize: 14, marginTop: 6 }}>
          Applications Celestial, comptes clients et fichiers APK. Un compte = une licence par application.
        </p>
      </div>
      <ApplicationsList
        initialData={(applications ?? []).map((a) => ({
          ...a,
          licenseCount: counts.get(a.id)?.total ?? 0,
          activeCount: counts.get(a.id)?.active ?? 0,
        }))}
      />
    </main>
  );
}
