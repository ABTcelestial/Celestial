import type { Metadata } from 'next';
import './globals.css';
import { SvgDefs } from '@/components/layout/SvgDefs';
import { ClerkProvider } from '@clerk/nextjs';

export const metadata: Metadata = {
  title: 'Celestial — Logiciels ERP premium pour l\'Algérie',
  description: 'Celestial conçoit des progiciels de gestion intégrés robustes, en licence unique, pensés pour la réglementation et les usages locaux.',
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <ClerkProvider>
      <html lang="fr">
        <body>
          <SvgDefs />
          {children}
        </body>
      </html>
    </ClerkProvider>
  );
}
