import { createClient } from '@/lib/supabase/server';
import { SuiteConfigForm } from '@/components/admin/SuiteConfigForm';
import { ComparatifEditor } from '@/components/admin/ComparatifEditor';

export default async function AdminOffresConfigPage() {
  const supabase = await createClient();
  const [{ data: suite }, { data: comparatif }] = await Promise.all([
    supabase.from('suite_config').select('*').eq('id', 1).single(),
    supabase.from('comparatif_modules').select('*').order('ordre'),
  ]);

  return (
    <main style={{ padding: '40px 28px', maxWidth: 900, margin: '0 auto' }}>
      <div style={{ marginBottom: 36 }}>
        <div className="eyebrow">Administration</div>
        <h1 style={{ fontSize: 'clamp(26px,2.8vw,36px)', marginTop: 10 }}>Configuration Offres</h1>
        <p style={{ color: 'var(--text-muted)', fontSize: 14, marginTop: 6 }}>
          Bundle Celestial Suite et tableau comparatif des modules.
        </p>
      </div>

      {/* Suite config */}
      <section style={{ marginBottom: 48 }}>
        <h2 style={{ fontSize: 20, marginBottom: 20, paddingBottom: 12, borderBottom: '1px solid var(--hairline)' }}>
          Celestial Suite (bundle)
        </h2>
        <SuiteConfigForm initialData={suite ?? undefined} />
      </section>

      {/* Comparatif */}
      <section>
        <h2 style={{ fontSize: 20, marginBottom: 20, paddingBottom: 12, borderBottom: '1px solid var(--hairline)' }}>
          Comparatif des modules
        </h2>
        <ComparatifEditor initialData={comparatif ?? []} />
      </section>
    </main>
  );
}
