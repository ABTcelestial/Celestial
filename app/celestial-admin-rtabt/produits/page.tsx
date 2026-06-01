import { createClient } from '@/lib/supabase/server';
import { ProduitsList } from '@/components/admin/ProduitsList';
import Link from 'next/link';

export default async function AdminProduitsPage() {
  const supabase = await createClient();
  const { data } = await supabase.from('produits').select('*').order('ordre');

  return (
    <main style={{ padding: '40px 28px', maxWidth: 1000, margin: '0 auto' }}>
      <div className="flex items-center justify-between flex-wrap gap-4" style={{ marginBottom: 32 }}>
        <div>
          <div className="eyebrow">Administration</div>
          <h1 style={{ fontSize: 'clamp(26px,2.8vw,36px)', marginTop: 10 }}>Logiciels</h1>
          <p style={{ color: 'var(--text-muted)', fontSize: 14, marginTop: 6 }}>
            {data?.length ?? 0} produit{(data?.length ?? 0) > 1 ? 's' : ''}
          </p>
        </div>
        <Link href="/celestial-admin-rtabt/produits/new" className="btn btn-gold">+ Nouveau logiciel</Link>
      </div>
      <ProduitsList initialData={data ?? []} />
    </main>
  );
}
