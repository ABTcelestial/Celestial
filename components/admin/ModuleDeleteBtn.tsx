'use client';
import { useState } from 'react';
import { createClient } from '@/lib/supabase/client';
import { useRouter } from 'next/navigation';

export function ModuleDeleteBtn({ id }: { id: string }) {
  const [loading, setLoading] = useState(false);
  const router = useRouter();
  async function handle() {
    if (!confirm('Supprimer ce module ? Il sera retiré de tous les logiciels associés.')) return;
    setLoading(true);
    await createClient().from('modules').delete().eq('id', id);
    router.refresh();
  }
  return (
    <button onClick={handle} disabled={loading} className="btn btn-glass btn-sm" style={{ color: 'var(--cel-danger)' }}>
      {loading ? '…' : 'Supprimer'}
    </button>
  );
}
