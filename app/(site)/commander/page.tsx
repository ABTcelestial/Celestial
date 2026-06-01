import { createClient } from '@/lib/supabase/server';
import { CommanderStepper } from '@/components/commander/CommanderStepper';

export const metadata = { title: 'Celestial — Configurer ma commande' };
export const revalidate = 60;

type ModuleRow = { id: string; nom: string; description: string; prix: number; icone: string };
type ProduitRow = {
  id: string; nom: string; icone: string; description: string;
  prix: number; featured: boolean; ordre: number; actif: boolean;
  produit_modules: { modules: ModuleRow }[];
};

export default async function CommanderPage() {
  const supabase = await createClient();
  const [{ data: produitsRaw }, { data: bundles }] = await Promise.all([
    supabase.from('produits').select(`
      id, nom, icone, description, prix, featured, ordre, actif,
      produit_modules ( modules ( id, nom, description, prix, icone ) )
    `).eq('actif', true).order('ordre'),
    supabase.from('bundles').select('*').eq('actif', true).order('ordre'),
  ]);

  const produits = ((produitsRaw as ProduitRow[] | null) ?? []).map(p => ({
    id: p.id, nom: p.nom, icone: p.icone, description: p.description,
    prix: p.prix, featured: p.featured, ordre: p.ordre, actif: p.actif,
    created_at: '',
    modules: p.produit_modules.map(pm => pm.modules).filter(Boolean),
  }));

  return (
    <main className="wrap" style={{ paddingTop: 'calc(var(--nav-h) + 80px)', paddingBottom: 100 }}>
      <header style={{ textAlign: 'center', marginBottom: 60 }}>
        <div className="eyebrow" style={{ justifyContent: 'center' }}>Configurateur</div>
        <h1 style={{ fontSize: 'clamp(32px,4.5vw,52px)', marginTop: 16 }}>
          Composez votre <span className="text-grad">solution ERP</span>
        </h1>
        <p className="lead" style={{ maxWidth: 520, margin: '18px auto 0' }}>
          Sélectionnez vos logiciels, choisissez un bundle ou combinez à la carte. Obtenez un devis en 2 minutes.
        </p>
      </header>
      <CommanderStepper produits={produits} bundles={bundles ?? []} />
    </main>
  );
}
