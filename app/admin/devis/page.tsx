import { createClient } from '@/lib/supabase/server';
import { DevisTable } from '@/components/admin/DevisTable';

export default async function AdminDevisPage() {
  const supabase = await createClient();
  const { data: devis } = await supabase
    .from('devis')
    .select('*')
    .order('created_at', { ascending: false });

  return (
    <main style={{ padding: '40px 28px', maxWidth: 1200, margin: '0 auto' }}>
      <div style={{ marginBottom: 32 }}>
        <div className="eyebrow">Administration</div>
        <h1 style={{ fontSize: 'clamp(26px,2.8vw,36px)', marginTop: 10 }}>Demandes de devis</h1>
        <p style={{ color: 'var(--text-muted)', fontSize: 14, marginTop: 6 }}>
          {devis?.length ?? 0} demande{(devis?.length ?? 0) > 1 ? 's' : ''} au total
        </p>
      </div>
      <DevisTable initialData={devis ?? []} />
    </main>
  );
}
