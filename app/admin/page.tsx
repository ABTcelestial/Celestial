import { createClient } from '@/lib/supabase/server';
import Link from 'next/link';

async function getStats() {
  const supabase = await createClient();
  const [
    { count: totalDevis },
    { count: newDevis },
    { count: totalChangelogs },
    { data: recentDevis },
  ] = await Promise.all([
    supabase.from('devis').select('*', { count: 'exact', head: true }),
    supabase.from('devis').select('*', { count: 'exact', head: true }).eq('statut', 'nouveau'),
    supabase.from('changelogs').select('*', { count: 'exact', head: true }),
    supabase.from('devis').select('*').order('created_at', { ascending: false }).limit(5),
  ]);
  return { totalDevis: totalDevis ?? 0, newDevis: newDevis ?? 0, totalChangelogs: totalChangelogs ?? 0, recentDevis: recentDevis ?? [] };
}

export default async function AdminDashboardPage() {
  const { totalDevis, newDevis, totalChangelogs, recentDevis } = await getStats();

  const stats = [
    { label: 'Demandes totales', value: totalDevis, icon: '📩', href: '/admin/devis' },
    { label: 'Non traitées', value: newDevis, icon: '🔔', href: '/admin/devis?statut=nouveau', alert: newDevis > 0 },
    { label: 'Entrées changelog', value: totalChangelogs, icon: '📋', href: '/admin/changelogs' },
  ];

  return (
    <main style={{ padding: '40px 28px', maxWidth: 1200, margin: '0 auto' }}>
      <div style={{ marginBottom: 36 }}>
        <div className="eyebrow">Administration</div>
        <h1 style={{ fontSize: 'clamp(28px,3vw,38px)', marginTop: 10 }}>Dashboard</h1>
      </div>

      {/* Stats */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3,1fr)', gap: 20, marginBottom: 40 }}>
        {stats.map((s, i) => (
          <Link key={i} href={s.href} className="card card-hover" style={{ padding: '28px 30px', display: 'flex', alignItems: 'center', gap: 20, textDecoration: 'none' }}>
            <span style={{ fontSize: 36, lineHeight: 1 }}>{s.icon}</span>
            <div>
              <div style={{
                fontFamily: 'var(--font-display)', fontSize: 38, fontWeight: 700,
                color: s.alert ? 'var(--gold-bright)' : 'var(--text-primary)',
              }}>{s.value}</div>
              <div style={{ color: 'var(--text-muted)', fontSize: 14, marginTop: 2 }}>{s.label}</div>
            </div>
            {s.alert && (
              <span className="badge badge-gold" style={{ marginLeft: 'auto' }}>Nouveau</span>
            )}
          </Link>
        ))}
      </div>

      {/* Recent devis */}
      <div style={{ display: 'grid', gridTemplateColumns: '1.4fr 0.6fr', gap: 24 }}>
        <div className="card" style={{ padding: 0, overflow: 'hidden' }}>
          <div className="flex items-center justify-between" style={{ padding: '22px 28px', borderBottom: '1px solid var(--hairline)' }}>
            <h2 style={{ fontSize: 18 }}>Demandes récentes</h2>
            <Link href="/admin/devis" className="btn btn-glass btn-sm">Voir tout →</Link>
          </div>
          {recentDevis.length === 0 ? (
            <p style={{ padding: '32px 28px', color: 'var(--text-muted)', textAlign: 'center' }}>Aucune demande pour le moment.</p>
          ) : (
            <div>
              {recentDevis.map((d, i) => (
                <div key={d.id} className="flex items-center gap-4" style={{ padding: '16px 28px', borderBottom: i < recentDevis.length - 1 ? '1px solid var(--hairline)' : 'none' }}>
                  <div style={{ width: 36, height: 36, borderRadius: '50%', background: 'var(--grad-cosmos)', display: 'grid', placeItems: 'center', fontFamily: 'var(--font-display)', fontWeight: 600, fontSize: 14, flexShrink: 0 }}>
                    {d.nom.charAt(0).toUpperCase()}
                  </div>
                  <div style={{ flex: 1, minWidth: 0 }}>
                    <div style={{ fontWeight: 600, fontSize: 15, whiteSpace: 'nowrap', overflow: 'hidden', textOverflow: 'ellipsis' }}>{d.nom}</div>
                    <div style={{ color: 'var(--text-muted)', fontSize: 13 }}>{d.entreprise} · {d.logiciel}</div>
                  </div>
                  <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'flex-end', gap: 4 }}>
                    <StatusBadge statut={d.statut} />
                    <span style={{ color: 'var(--text-faint)', fontSize: 12 }}>
                      {new Date(d.created_at).toLocaleDateString('fr-FR', { day: '2-digit', month: 'short' })}
                    </span>
                  </div>
                </div>
              ))}
            </div>
          )}
        </div>

        {/* Quick actions */}
        <div style={{ display: 'flex', flexDirection: 'column', gap: 16 }}>
          <div className="card" style={{ padding: '24px 26px' }}>
            <h2 style={{ fontSize: 17, marginBottom: 18 }}>Actions rapides</h2>
            <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
              <Link href="/admin/changelogs/new" className="btn btn-gold btn-sm btn-block">
                + Nouveau changelog
              </Link>
              <Link href="/admin/devis" className="btn btn-glass btn-sm btn-block">
                Voir les demandes
              </Link>
              <Link href="/" target="_blank" className="btn btn-glass btn-sm btn-block">
                Voir le site public
              </Link>
            </div>
          </div>
          <div className="card" style={{ padding: '24px 26px' }}>
            <h2 style={{ fontSize: 17, marginBottom: 14 }}>Répartition des demandes</h2>
            {['Business Process', 'Compta Process', 'Pay Process', 'Celestial Suite'].map(p => (
              <div key={p} className="flex items-center justify-between" style={{ paddingBlock: 8, borderBottom: '1px solid var(--hairline)', fontSize: 13, color: 'var(--text-secondary)' }}>
                <span>{p}</span>
              </div>
            ))}
          </div>
        </div>
      </div>
    </main>
  );
}

function StatusBadge({ statut }: { statut: string }) {
  const map: Record<string, { cls: string; label: string }> = {
    nouveau: { cls: 'badge-new', label: 'Nouveau' },
    lu: { cls: 'badge-improve', label: 'Lu' },
    traite: { cls: 'badge badge-version', label: 'Traité' },
  };
  const s = map[statut] ?? map.nouveau;
  return <span className={`badge ${s.cls}`}>{s.label}</span>;
}
