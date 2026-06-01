import { createClient } from '@/lib/supabase/server';
import { DocPageForm } from '@/components/admin/DocPageForm';

export default async function NewDocPagePage() {
  const supabase = await createClient();
  const [{ data: produits }, { data: existing }] = await Promise.all([
    supabase.from('produits').select('nom').order('ordre'),
    supabase.from('doc_pages').select('produit'),
  ]);
  // Merge produit names + existing doc_pages.produit values, deduplicated
  const suggestions = Array.from(new Set([
    ...(produits ?? []).map(p => p.nom),
    ...(existing ?? []).map(p => p.produit),
  ])).filter(Boolean).sort();

  return (
    <main style={{ padding: '40px 28px', maxWidth: 900, margin: '0 auto' }}>
      <div style={{ marginBottom: 32 }}>
        <div className="eyebrow">Documentation</div>
        <h1 style={{ fontSize: 'clamp(24px,2.6vw,34px)', marginTop: 10 }}>Nouvelle page</h1>
      </div>
      <DocPageForm mode="create" suggestions={suggestions} />
    </main>
  );
}
