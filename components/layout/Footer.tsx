import Link from 'next/link';
import { LogoMark } from './LogoMark';

export function Footer() {
  return (
    <footer className="footer">
      <div className="wrap">
        <div
          className="footer-grid-responsive"
          style={{ display: 'grid', gridTemplateColumns: '1.6fr 1fr 1fr 1fr', gap: 40, paddingBlock: '64px 40px' }}
        >
          <div>
            <div className="logo" style={{ marginBottom: 16 }}>
              <LogoMark />
              <span className="logo-name">Celestial<span className="dot">.</span></span>
            </div>
            <p style={{ color: 'var(--text-secondary)', fontSize: 14, maxWidth: '34ch' }}>
              Éditeur de logiciels ERP premium pour les grandes entreprises algériennes. Depuis 2019.
            </p>
          </div>
          <div>
            <h5>Produits</h5>
            <div style={{ display: 'flex', flexDirection: 'column', gap: 12 }}>
              <Link href="/offres" className="footer-link">Business Process</Link>
              <Link href="/offres" className="footer-link">Pay Process</Link>
              <Link href="/offres" className="footer-link">Compta Process</Link>
            </div>
          </div>
          <div>
            <h5>Ressources</h5>
            <div style={{ display: 'flex', flexDirection: 'column', gap: 12 }}>
              <Link href="/documentation" className="footer-link">Documentation</Link>
              <Link href="/changelogs" className="footer-link">Changelogs</Link>
              <Link href="/design-system" className="footer-link">Design System</Link>
              <Link href="/guide" className="footer-link">Guide &amp; Mobile</Link>
            </div>
          </div>
          <div>
            <h5>Société</h5>
            <div style={{ display: 'flex', flexDirection: 'column', gap: 12 }}>
              <Link href="/a-propos" className="footer-link">À propos</Link>
              <Link href="/contact" className="footer-link">Contact</Link>
              <Link href="/contact" className="footer-link">Support</Link>
            </div>
          </div>
        </div>
        <div className="footer-bottom">
          <span>© 2026 Celestial — Alger, Algérie. Tous droits réservés.</span>
          <span>Conçu sous les étoiles ✦</span>
        </div>
      </div>
    </footer>
  );
}
