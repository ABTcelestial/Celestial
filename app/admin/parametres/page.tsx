import { createClient } from '@/lib/supabase/server';
import { ParametresForm } from '@/components/admin/ParametresForm';

export default async function AdminParametresPage() {
  const supabase = await createClient();
  const { data } = await supabase.from('contact_info').select('*').eq('id', 1).single();

  return (
    <main style={{ padding: '40px 28px', maxWidth: 760, margin: '0 auto' }}>
      <div style={{ marginBottom: 32 }}>
        <div className="eyebrow">Administration</div>
        <h1 style={{ fontSize: 'clamp(26px,2.8vw,36px)', marginTop: 10 }}>Paramètres</h1>
        <p style={{ color: 'var(--text-muted)', fontSize: 14, marginTop: 6 }}>
          Informations de contact affichées sur le site.
        </p>
      </div>
      <ParametresForm initialData={data ?? undefined} />
    </main>
  );
}
