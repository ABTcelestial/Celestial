import { Nav } from '@/components/layout/Nav';
import { Footer } from '@/components/layout/Footer';

export default function SiteLayout({ children }: { children: React.ReactNode }) {
  return (
    <>
      <div className="cosmos-bg" />
      <Nav />
      <main>{children}</main>
      <Footer />
    </>
  );
}
