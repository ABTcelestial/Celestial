import { createClient } from '@/lib/supabase/server';
import { ChangelogTimeline } from '@/components/changelogs/ChangelogTimeline';

export const metadata = { title: 'Celestial — Changelogs' };
export const revalidate = 60; // revalidate every 60s

export default async function ChangelogsPage() {
  const supabase = await createClient();
  const { data } = await supabase
    .from('changelogs')
    .select('*')
    .order('date', { ascending: false });

  return (
    <main className="wrap" style={{ maxWidth: 860 }}>
      <header style={{ paddingTop: 'calc(var(--nav-h) + 70px)' }}>
        <div className="eyebrow">Journal des versions</div>
        <h1 style={{ fontSize: 'clamp(38px,5vw,60px)', marginTop: 18 }}>Changelogs</h1>
        <p className="lead" style={{ maxWidth: 560, marginTop: 18 }}>
          Chaque amélioration, correctif et nouveauté de nos suites ERP. Mis à jour en continu.
        </p>
        <ChangelogTimeline initialData={data ?? []} />
      </header>
    </main>
  );
}
