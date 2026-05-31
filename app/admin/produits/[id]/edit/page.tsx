import { createClient } from '@/lib/supabase/server';
import { ProduitForm } from '@/components/admin/ProduitForm';
import { notFound } from 'next/navigation';

export default async function EditProduitPage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const supabase = await createClient();
  const { data } = await supabase.from('produits').select('*').eq('id', id).single();
  if (!data) notFound();
  return (
    <main style={{ padding: '40px 28px', maxWidth: 760, margin: '0 auto' }}>
      <div style={{ marginBottom: 32 }}>
        <div className="eyebrow">Logiciels</div>
        <h1 style={{ fontSize: 'clamp(24px,2.6vw,34px)', marginTop: 10 }}>Modifier le logiciel</h1>
      </div>
      <ProduitForm mode="edit" initialData={data} />
    </main>
  );
}
