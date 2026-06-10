import { HomeHero } from '@/components/home/HomeHero';
import { OffreSection } from '@/components/home/OffreSection';
import { AutomatisationSection } from '@/components/home/AutomatisationSection';
import { CtaSection } from '@/components/home/CtaSection';

export default function AccueilPage() {
  return (
    <>
      <HomeHero />
      <OffreSection />
      <AutomatisationSection />
      <CtaSection />
    </>
  );
}
