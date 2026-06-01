-- ============================================================
-- CELESTIAL — Bundles (plusieurs combinaisons de logiciels)
-- ============================================================

create table if not exists bundles (
  id          uuid primary key default gen_random_uuid(),
  nom         text not null,
  description text not null default '',
  produits    text[] not null default '{}'::text[],  -- noms des produits inclus
  remise_pct  integer not null default 0 check (remise_pct between 0 and 100),
  badge       text default null,
  actif       boolean not null default true,
  ordre       integer not null default 0,
  created_at  timestamptz not null default now()
);

create index if not exists bundles_ordre_idx on bundles (ordre);

alter table bundles enable row level security;

create policy "admins_all_bundles" on bundles
  for all to authenticated using (true) with check (true);

create policy "anon_read_bundles" on bundles
  for select to anon using (actif = true);

-- Données initiales
insert into bundles (nom, description, produits, remise_pct, badge, ordre) values
(
  'Suite Complète',
  'Les trois logiciels Celestial dans un seul contrat. Idéal pour les PME qui veulent une solution tout-en-un.',
  ARRAY['Business Process', 'Compta Process', 'Pay Process'],
  15,
  'Meilleure valeur',
  1
),
(
  'Business + Compta',
  'La gestion commerciale et la comptabilité SCF dans un écosystème unifié.',
  ARRAY['Business Process', 'Compta Process'],
  10,
  'Populaire',
  2
),
(
  'Compta + Pay',
  'La paie et la comptabilité : les deux piliers financiers de votre entreprise.',
  ARRAY['Compta Process', 'Pay Process'],
  8,
  null,
  3
);
