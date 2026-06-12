import { createClient } from '@/lib/supabase/server';
import { ProduitForm } from '@/components/admin/ProduitForm';

export default async function NewProduitPage() {
  const supabase = await createClient();
  const [{ data: modules }, { data: applications }] = await Promise.all([
    supabase.from('modules').select('*').eq('actif', true).order('ordre'),
    supabase.from('applications').select('*').order('nom'),
  ]);
  return (
    <main style={{ padding: '40px 28px', maxWidth: 760, margin: '0 auto' }}>
      <div style={{ marginBottom: 32 }}>
        <div className="eyebrow">Logiciels</div>
        <h1 style={{ fontSize: 'clamp(24px,2.6vw,34px)', marginTop: 10 }}>Nouveau logiciel</h1>
      </div>
      <ProduitForm mode="create" availableModules={modules ?? []} availableApplications={applications ?? []} />
    </main>
  );
}
