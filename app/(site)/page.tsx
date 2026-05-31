import { HomeHero } from '@/components/home/HomeHero';
import { PresentationSection } from '@/components/home/PresentationSection';
import { ObjectifsSection } from '@/components/home/ObjectifsSection';
import { ProduitsSection } from '@/components/home/ProduitsSection';
import { FinalCtaSection } from '@/components/home/FinalCtaSection';

export default function AccueilPage() {
  return (
    <>
      <HomeHero />
      <PresentationSection />
      <ObjectifsSection />
      <ProduitsSection />
      <FinalCtaSection />
    </>
  );
}
