-- ============================================================
-- CELESTIAL — Migration : config offres (suite + comparatif)
-- ============================================================

-- Configuration du bundle "Celestial Suite"
create table if not exists suite_config (
  id          integer primary key default 1,
  label       text not null default 'Celestial Suite',
  description text not null default 'Un écosystème intégré, données partagées entre toutes les suites.',
  remise_pct  integer not null default 20,  -- % de remise sur le total
  actif       boolean not null default true,
  updated_at  timestamptz not null default now(),
  constraint suite_config_single_row check (id = 1)
);

-- Lignes du tableau comparatif des modules
create table if not exists comparatif_modules (
  id       uuid primary key default gen_random_uuid(),
  feature  text not null,
  business boolean not null default false,
  compta   boolean not null default false,
  pay      boolean not null default false,
  ordre    integer not null default 0
);

create index if not exists comparatif_ordre_idx on comparatif_modules (ordre);

-- RLS
alter table suite_config        enable row level security;
alter table comparatif_modules  enable row level security;

create policy "admins_all_suite"       on suite_config       for all to authenticated using (true) with check (true);
create policy "admins_all_comparatif"  on comparatif_modules for all to authenticated using (true) with check (true);
create policy "anon_read_suite"        on suite_config       for select to anon using (true);
create policy "anon_read_comparatif"   on comparatif_modules for select to anon using (true);

-- Données de départ
insert into suite_config (id, label, description, remise_pct, actif)
values (1, 'Celestial Suite', 'Un écosystème intégré, données partagées entre comptabilité, paie et opérations.', 20, true)
on conflict (id) do nothing;

insert into comparatif_modules (feature, business, compta, pay, ordre) values
('Gestion commerciale',   true,  false, false, 1),
('Stock & inventaire',    true,  false, false, 2),
('Comptabilité SCF',      false, true,  false, 3),
('TVA, G50 & fiscalité',  false, true,  false, 4),
('Paie & bulletins',      false, false, true,  5),
('Déclarations CNAS',     false, false, true,  6),
('Tableaux de bord',      true,  true,  true,  7),
('Support arabe / RTL',   true,  true,  true,  8),
('Déploiement on-premise',true,  true,  true,  9);
