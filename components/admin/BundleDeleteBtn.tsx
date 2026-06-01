'use client';
import { useState } from 'react';
import { createClient } from '@/lib/supabase/client';
import { useRouter } from 'next/navigation';

export function BundleDeleteBtn({ id }: { id: string }) {
  const [loading, setLoading] = useState(false);
  const router = useRouter();

  async function handleDelete() {
    if (!confirm('Supprimer ce bundle ?')) return;
    setLoading(true);
    await createClient().from('bundles').delete().eq('id', id);
    router.refresh();
  }

  return (
    <button onClick={handleDelete} disabled={loading} className="btn btn-glass btn-sm" style={{ color: 'var(--cel-danger)' }}>
      {loading ? '…' : 'Supprimer'}
    </button>
  );
}
