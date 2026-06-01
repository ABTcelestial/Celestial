import { createClient } from '@/lib/supabase/server';
import { BundleForm } from '@/components/admin/BundleForm';
import { notFound } from 'next/navigation';

export default async function EditBundlePage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const supabase = await createClient();
  const [{ data: bundle }, { data: produits }] = await Promise.all([
    supabase.from('bundles').select('*').eq('id', id).single(),
    supabase.from('produits').select('*').eq('actif', true).order('ordre'),
  ]);
  if (!bundle) notFound();
  return (
    <main className="wrap" style={{ paddingTop: 'calc(var(--nav-h) + 40px)', paddingBottom: 80 }}>
      <h1 style={{ fontSize: 26, marginBottom: 32 }}>Modifier : {bundle.nom}</h1>
      <BundleForm bundle={bundle} produits={produits ?? []} />
    </main>
  );
}
