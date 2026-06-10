import type { Metadata } from 'next';
import Link from 'next/link';
import { createClient } from '@/lib/supabase/server';
import { RevealWrapper } from '@/components/shared/RevealWrapper';
import type { Database } from '@/lib/supabase/types';

export const metadata: Metadata = {
  title: 'Nos offres — Celestial',
  description:
    'Toutes les offres Celestial : logiciels avec leurs modules, matériel informatique, systèmes sur mesure et packs avantageux.',
};
export const revalidate = 60;

type Module = Database['public']['Tables']['modules']['Row'];
type Bundle = Database['public']['Tables']['bundles']['Row'];
type ProduitRow = Database['public']['Tables']['produits']['Row'];
type ProduitJoin = ProduitRow & { produit_modules: { modules: Module | null }[] | null };

function prixLabel(prix: number | null | undefined) {
  return prix && prix > 0 ? `${prix.toLocaleString('fr-DZ')} DA` : 'Sur devis';
}

export default async function OffresPage() {
  const supabase = await createClient();

  const [{ data: produits }, { data: bundles }] = await Promise.all([
    supabase
      .from('produits')
      .select('*, produit_modules(modules(*))')
      .eq('actif', true)
      .order('ordre'),
    supabase.from('bundles').select('*').eq('actif', true).order('ordre'),
  ]);

  const offres = (((produits ?? []) as unknown) as ProduitJoin[]).map((p) => ({
    ...p,
    modules: (p.produit_modules ?? [])
      .map((pm) => pm.modules)
      .filter((m): m is Module => !!m && m.actif)
      .sort((a, b) => a.ordre - b.ordre),
  }));

  const prixParNom = new Map(offres.map((o) => [o.nom, o.prix]));
  const packs = (bundles ?? []).map((b: Bundle) => {
    const base = b.produits.reduce((s, nom) => s + (prixParNom.get(nom) ?? 0), 0);
    const prixFinal = b.prix && b.prix > 0 ? b.prix : base > 0 ? Math.round(base * (1 - b.remise_pct / 100)) : 0;
    return { ...b, base, prixFinal };
  });

  return (
    <>
      <section
        className="relative overflow-hidden pt-[var(--nav-h)]"
        style={{
          background:
            'radial-gradient(900px 500px at 75% 15%, rgba(79,195,247,0.16), transparent 65%), linear-gradient(180deg, #FFFFFF 0%, #F2F9FE 100%)',
        }}
      >
        <div className="container-cel section !pb-10">
          <RevealWrapper>
            <span className="chip mb-6">Nos offres</span>
            <h1 className="max-w-[720px] text-[clamp(34px,5vw,56px)]">
              Une offre pour chaque façon <span className="text-grad">de travailler</span>
            </h1>
            <p className="mt-6 max-w-[600px] text-[17.5px] leading-relaxed text-[var(--text-secondary)]">
              Logiciels avec leurs modules à la carte, matériel, développement sur mesure :
              composez exactement ce qu&apos;il vous faut.
            </p>
          </RevealWrapper>
        </div>
      </section>

      {/* Offres dynamiques */}
      <section className="section !pt-6">
        <div className="container-cel">
          {offres.length === 0 ? (
            <p className="py-16 text-center text-[var(--text-muted)]">
              Les offres arrivent bientôt — contactez-nous en attendant.
            </p>
          ) : (
            <div className="grid gap-6 md:grid-cols-2">
              {offres.map((o, i) => (
                <RevealWrapper key={o.id} delay={i * 90}>
                  <div
                    className="card-cel flex h-full flex-col p-9"
                    style={
                      o.featured
                        ? { borderColor: 'var(--card-border-strong)', background: 'linear-gradient(135deg, #FFFFFF 55%, #EBF4FC 100%)' }
                        : undefined
                    }
                  >
                    <div className="flex items-start justify-between gap-3">
                      <span
                        className="flex h-12 w-12 items-center justify-center rounded-2xl text-[22px]"
                        style={{ background: 'var(--card-tint)', border: '1px solid var(--card-border)' }}
                        aria-hidden
                      >
                        {o.icone}
                      </span>
                      {o.badge && <span className="chip">{o.badge}</span>}
                    </div>

                    <h2 className="mt-5 text-[22px]">{o.nom}</h2>
                    <p className="mt-3 text-[15px] leading-relaxed text-[var(--text-secondary)]">{o.description}</p>

                    <p className="mt-4 font-[family-name:var(--font-display)] text-[20px] font-bold text-[var(--blue-deep)]">
                      {prixLabel(o.prix)}
                      {o.type === 'logiciel' && o.prix > 0 && (
                        <span className="ml-1.5 text-[12.5px] font-medium text-[var(--text-muted)]">licence unique</span>
                      )}
                    </p>

                    {o.modules.length > 0 && (
                      <div className="mt-5">
                        <p className="mb-2.5 text-[12.5px] font-semibold uppercase tracking-[0.06em] text-[var(--text-faint)]">
                          Modules disponibles
                        </p>
                        <ul className="space-y-2">
                          {o.modules.map((m) => (
                            <li key={m.id} className="flex items-center justify-between gap-3 text-[14px]">
                              <span className="flex items-center gap-2 text-[var(--text-secondary)]">
                                <span aria-hidden>{m.icone}</span> {m.nom}
                              </span>
                              <span className="shrink-0 font-[family-name:var(--font-display)] text-[13px] font-semibold text-[var(--blue)]">
                                {prixLabel(m.prix)}
                              </span>
                            </li>
                          ))}
                        </ul>
                      </div>
                    )}

                    <div className="mt-auto flex flex-wrap gap-3 pt-7">
                      {o.lien && (
                        <Link href={o.lien} className={o.featured ? 'btn-primary' : 'btn-ghost'}>
                          En savoir plus <span aria-hidden>→</span>
                        </Link>
                      )}
                      <Link href="/contact" className={o.featured && o.lien ? 'btn-ghost' : o.lien ? 'btn-ghost' : 'btn-primary'}>
                        Demander un devis
                      </Link>
                    </div>
                  </div>
                </RevealWrapper>
              ))}
            </div>
          )}
        </div>
      </section>

      {/* Packs mis en avant */}
      {packs.length > 0 && (
        <section className="section section-mist !pt-14">
          <div className="container-cel">
            <RevealWrapper>
              <span className="chip mb-5">Packs</span>
              <h2 className="max-w-[560px] text-[clamp(26px,3.4vw,40px)]">
                Plus malin <span className="text-grad">en pack</span>
              </h2>
              <p className="mt-4 max-w-[560px] text-[15.5px] text-[var(--text-secondary)]">
                Combinez plusieurs offres et économisez — installation coordonnée incluse.
              </p>
            </RevealWrapper>

            <div className="mt-10 grid gap-6 md:grid-cols-2 lg:grid-cols-3">
              {packs.map((pack, i) => (
                <RevealWrapper key={pack.id} delay={i * 90}>
                  <div
                    className="card-cel relative flex h-full flex-col p-8"
                    style={{ borderColor: 'var(--card-border-strong)' }}
                  >
                    {pack.badge && (
                      <span
                        className="absolute -top-3 left-6 rounded-full px-3.5 py-1 text-[12px] font-bold text-white"
                        style={{ background: 'var(--grad-sky)' }}
                      >
                        {pack.badge}
                      </span>
                    )}
                    <h3 className="text-[20px]">{pack.nom}</h3>
                    <p className="mt-2.5 text-[14.5px] leading-relaxed text-[var(--text-secondary)]">{pack.description}</p>

                    <ul className="mt-4 space-y-1.5">
                      {pack.produits.map((nom) => (
                        <li key={nom} className="flex items-center gap-2 text-[14px] text-[var(--text-secondary)]">
                          <span className="text-[12px] font-bold text-[var(--blue)]" aria-hidden>✓</span>
                          {nom}
                        </li>
                      ))}
                    </ul>

                    <div className="mt-auto pt-6">
                      {pack.base > 0 && pack.prixFinal > 0 && pack.prixFinal < pack.base && (
                        <p className="text-[13px] text-[var(--text-faint)] line-through">
                          {pack.base.toLocaleString('fr-DZ')} DA
                        </p>
                      )}
                      <p className="font-[family-name:var(--font-display)] text-[24px] font-bold text-[var(--blue-deep)]">
                        {prixLabel(pack.prixFinal)}
                      </p>
                      <Link href="/contact" className="btn-primary mt-4 w-full justify-center">
                        Choisir ce pack <span aria-hidden>→</span>
                      </Link>
                    </div>
                  </div>
                </RevealWrapper>
              ))}
            </div>
          </div>
        </section>
      )}

      <section className="section">
        <div className="container-cel text-center">
          <RevealWrapper>
            <h2 className="text-[clamp(26px,3.4vw,40px)]">Pas sûr de ce qu&apos;il vous faut ?</h2>
            <p className="mx-auto mt-4 max-w-[500px] text-[16px] text-[var(--text-secondary)]">
              Décrivez-nous votre activité : nous vous orientons vers la bonne solution, sans engagement.
            </p>
            <div className="mt-8">
              <Link href="/contact" className="btn-primary">
                Demander conseil <span aria-hidden>→</span>
              </Link>
            </div>
          </RevealWrapper>
        </div>
      </section>
    </>
  );
}
