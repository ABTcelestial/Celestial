import type { Metadata } from 'next';
import './globals.css';
import { SvgDefs } from '@/components/layout/SvgDefs';

export const metadata: Metadata = {
  title: 'Celestial — Le guichet unique informatique en Algérie',
  description:
    'Matériel, logiciels et services : Celestial automatise la gestion des entreprises algériennes. ERP BusinessProces, Celestial Food, boutique hardware et développement sur mesure.',
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="fr">
      <body>
        <SvgDefs />
        {children}
      </body>
    </html>
  );
}
