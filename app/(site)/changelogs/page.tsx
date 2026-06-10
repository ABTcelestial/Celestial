import type { Metadata } from 'next';
import { createClient } from '@/lib/supabase/server';
import { ChangelogTimeline } from '@/components/changelogs/ChangelogTimeline';
import { RevealWrapper } from '@/components/shared/RevealWrapper';

export const metadata: Metadata = { title: 'Changelogs — Celestial' };
export const revalidate = 60;

export default async function ChangelogsPage() {
  const supabase = await createClient();
  const { data } = await supabase.from('changelogs').select('*').order('date', { ascending: false });

  return (
    <section
      className="relative overflow-hidden pt-[var(--nav-h)]"
      style={{
        background:
          'radial-gradient(900px 400px at 70% 0%, rgba(79,195,247,0.12), transparent 65%), linear-gradient(180deg, #FFFFFF 0%, #FAFCFF 100%)',
      }}
    >
      <div className="container-cel section max-w-[900px]">
        <RevealWrapper>
          <span className="chip mb-6">Journal des versions</span>
          <h1 className="text-[clamp(34px,5vw,56px)]">
            Changelogs <span className="text-grad">de nos produits</span>
          </h1>
          <p className="mt-5 max-w-[560px] text-[16.5px] leading-relaxed text-[var(--text-secondary)]">
            Chaque amélioration, correctif et nouveauté de l&apos;ERP, de Celestial Food, de
            la boutique et de nos systèmes — mis à jour en continu.
          </p>
        </RevealWrapper>
        <ChangelogTimeline initialData={data ?? []} />
      </div>
    </section>
  );
}
