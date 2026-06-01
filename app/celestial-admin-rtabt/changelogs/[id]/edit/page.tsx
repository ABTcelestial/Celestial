import { createClient } from '@/lib/supabase/server';
import { ChangelogForm } from '@/components/admin/ChangelogForm';
import { notFound } from 'next/navigation';

export default async function EditChangelogPage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const supabase = await createClient();
  const [{ data }, { data: produits }, { data: existing }] = await Promise.all([
    supabase.from('changelogs').select('*').eq('id', id).single(),
    supabase.from('produits').select('nom').order('ordre'),
    supabase.from('changelogs').select('produit'),
  ]);
  if (!data) notFound();

  const suggestions = Array.from(new Set([
    ...(produits ?? []).map(p => p.nom),
    ...(existing ?? []).map(c => c.produit),
  ])).filter(Boolean).sort();

  return (
    <main style={{ padding: '40px 28px', maxWidth: 760, margin: '0 auto' }}>
      <div style={{ marginBottom: 32 }}>
        <div className="eyebrow">Changelogs</div>
        <h1 style={{ fontSize: 'clamp(24px,2.6vw,34px)', marginTop: 10 }}>Modifier l'entrée</h1>
      </div>
      <ChangelogForm mode="edit" initialData={data} suggestions={suggestions} />
    </main>
  );
}
