import { createClient } from '@/lib/supabase/server';
import { DocViewer } from '@/components/docs/DocViewer';

export const metadata = { title: 'Celestial — Documentation' };
export const revalidate = 60;

export default async function DocumentationPage() {
  const supabase = await createClient();
  const { data } = await supabase
    .from('doc_pages')
    .select('*')
    .order('produit')
    .order('section_ordre')
    .order('ordre');

  return <DocViewer pages={data ?? []} />;
}
