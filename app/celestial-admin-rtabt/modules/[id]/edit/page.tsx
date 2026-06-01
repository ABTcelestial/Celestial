import { createClient } from '@/lib/supabase/server';
import { ModuleForm } from '@/components/admin/ModuleForm';
import { notFound } from 'next/navigation';

export default async function EditModulePage({ params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  const supabase = await createClient();
  const { data: module } = await supabase.from('modules').select('*').eq('id', id).single();
  if (!module) notFound();
  return (
    <main className="wrap" style={{ paddingTop: 'calc(var(--nav-h) + 40px)', paddingBottom: 80 }}>
      <h1 style={{ fontSize: 26, marginBottom: 32 }}>Modifier : {module.nom}</h1>
      <ModuleForm module={module} />
    </main>
  );
}
