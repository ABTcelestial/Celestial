-- ============================================================
-- CELESTIAL — Modules (composants des logiciels avec prix)
-- ============================================================

-- Supprimer l'ancienne colonne modules (array de strings)
alter table produits drop column if exists modules;

-- Table des modules
create table if not exists modules (
  id          uuid primary key default gen_random_uuid(),
  nom         text not null,
  description text not null default '',
  prix        integer not null default 0,
  icone       text not null default '⚙',
  actif       boolean not null default true,
  ordre       integer not null default 0,
  created_at  timestamptz not null default now()
);

-- Table de jonction produits ↔ modules
create table if not exists produit_modules (
  produit_id  uuid not null references produits(id) on delete cascade,
  module_id   uuid not null references modules(id) on delete cascade,
  primary key (produit_id, module_id)
);

create index if not exists modules_ordre_idx         on modules (ordre);
create index if not exists produit_modules_prod_idx  on produit_modules (produit_id);
create index if not exists produit_modules_mod_idx   on produit_modules (module_id);

alter table modules         enable row level security;
alter table produit_modules enable row level security;

create policy "admins_all_modules"         on modules         for all to authenticated using (true) with check (true);
create policy "anon_read_modules"          on modules         for select to anon using (actif = true);
create policy "admins_all_produit_modules" on produit_modules for all to authenticated using (true) with check (true);
create policy "anon_read_produit_modules"  on produit_modules for select to anon using (true);

-- ============================================================
-- Données initiales
-- ============================================================

insert into modules (nom, description, prix, icone, ordre) values
('Gestion commerciale',   'Devis, bons de commande et facturation client',           80000, '🧾', 1),
('Stock & inventaire',    'Multi-dépôts, inventaires et mouvements de stock',        60000, '📦', 2),
('Achats & fournisseurs', 'Commandes fournisseurs et suivi des réceptions',           50000, '🛒', 3),
('CRM & pipeline',        'Gestion des prospects, opportunités et relances',          70000, '🤝', 4),
('Comptabilité générale', 'Plan comptable SCF, journaux et rapprochements',           90000, '📒', 5),
('Déclarations fiscales', 'TVA, G50 et édition de la liasse fiscale',                80000, '📋', 6),
('Multi-sociétés',        'Consolidation et opérations inter-compagnies',            100000, '🏢', 7),
('Paie & bulletins',      'Bulletins bilingues FR/AR et virements salaires',          75000, '💳', 8),
('Gestion RH',            'Congés, absences, dossiers employés et formations',        60000, '👥', 9),
('Déclarations CNAS',     'Génération du fichier de déclaration CNAS officiel',       55000, '🏛', 10);
