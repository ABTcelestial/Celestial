import { createClient } from '@/lib/supabase/server';
import { DocPagesList } from '@/components/admin/DocPagesList';
import Link from 'next/link';

export default async function AdminDocumentationPage() {
  const supabase = await createClient();
  const { data } = await supabase
    .from('doc_pages')
    .select('*')
    .order('produit')
    .order('section_ordre')
    .order('ordre');

  return (
    <main style={{ padding: '40px 28px', maxWidth: 1100, margin: '0 auto' }}>
      <div className="flex items-center justify-between flex-wrap gap-4" style={{ marginBottom: 32 }}>
        <div>
          <div className="eyebrow">Administration</div>
          <h1 style={{ fontSize: 'clamp(26px,2.8vw,36px)', marginTop: 10 }}>Documentation</h1>
          <p style={{ color: 'var(--text-muted)', fontSize: 14, marginTop: 6 }}>
            {data?.length ?? 0} page{(data?.length ?? 0) > 1 ? 's' : ''}
          </p>
        </div>
        <Link href="/admin/documentation/new" className="btn btn-gold">+ Nouvelle page</Link>
      </div>
      <DocPagesList initialData={data ?? []} />
    </main>
  );
}
