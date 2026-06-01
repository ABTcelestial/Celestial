import { createClient } from '@/lib/supabase/server';
import { DocPageForm } from '@/components/admin/DocPageForm';
import { notFound } from 'next/navigation';

export default async function EditDocPagePage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const supabase = await createClient();
  const [{ data }, { data: produits }, { data: existing }] = await Promise.all([
    supabase.from('doc_pages').select('*').eq('id', id).single(),
    supabase.from('produits').select('nom').order('ordre'),
    supabase.from('doc_pages').select('produit'),
  ]);
  if (!data) notFound();

  const suggestions = Array.from(new Set([
    ...(produits ?? []).map(p => p.nom),
    ...(existing ?? []).map(p => p.produit),
  ])).filter(Boolean).sort();

  return (
    <main style={{ padding: '40px 28px', maxWidth: 900, margin: '0 auto' }}>
      <div style={{ marginBottom: 32 }}>
        <div className="eyebrow">Documentation</div>
        <h1 style={{ fontSize: 'clamp(24px,2.6vw,34px)', marginTop: 10 }}>Modifier la page</h1>
      </div>
      <DocPageForm mode="edit" initialData={data} suggestions={suggestions} />
    </main>
  );
}
