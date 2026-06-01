import { createClient } from '@/lib/supabase/server';
import { BundleForm } from '@/components/admin/BundleForm';

export default async function NewBundlePage() {
  const supabase = await createClient();
  const { data: produits } = await supabase.from('produits').select('*').eq('actif', true).order('ordre');
  return (
    <main className="wrap" style={{ paddingTop: 'calc(var(--nav-h) + 40px)', paddingBottom: 80 }}>
      <h1 style={{ fontSize: 26, marginBottom: 32 }}>Nouveau bundle</h1>
      <BundleForm produits={produits ?? []} />
    </main>
  );
}
