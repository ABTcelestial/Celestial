-- ============================================================
-- CELESTIAL — SCHÉMA V2 (refonte 2026)
-- Script complet : SUPPRIME l'ancienne base du site et recrée
-- une structure propre avec les vrais produits Celestial.
--
-- ⚠️ À exécuter dans le SQL Editor de Supabase.
-- ⚠️ Les tables de la PLATEFORME CLIENT (workspaces, table_definitions,
--    sync_logs, messages, notifications…) ne sont PAS touchées.
-- ============================================================

-- ============================================================
-- 1. SUPPRESSION DE L'ANCIENNE BASE (site/CMS uniquement)
-- ============================================================
drop table if exists produit_modules   cascade;
drop table if exists modules           cascade;
drop table if exists bundles           cascade;
drop table if exists produits          cascade;
drop table if exists doc_pages         cascade;
drop table if exists changelogs        cascade;
drop table if exists devis             cascade;
drop table if exists contact_info      cascade;
drop table if exists suite_config      cascade;  -- obsolète (ancienne page offres)
drop table if exists comparatif_modules cascade; -- obsolète (ancienne page offres)

-- ============================================================
-- 2. NOUVELLES TABLES
-- ============================================================

-- ---- Offres (logiciels, matériel, services) ----
create table produits (
  id          uuid primary key default gen_random_uuid(),
  nom         text not null,
  icone       text not null default '⬡',
  description text not null default '',
  type        text not null default 'logiciel' check (type in ('logiciel','materiel','service')),
  prix        integer not null default 0,          -- DZD ; 0 = « sur devis »
  badge       text default null,                   -- ex. « Produit phare »
  lien        text default null,                   -- page détaillée, ex. /erp
  featured    boolean not null default false,
  actif       boolean not null default true,
  ordre       integer not null default 0,
  created_at  timestamptz not null default now()
);

-- ---- Modules (briques activables dans les offres, prix fixe) ----
create table modules (
  id          uuid primary key default gen_random_uuid(),
  nom         text not null,
  description text not null default '',
  icone       text not null default '⚙',
  prix        integer not null default 0,          -- DZD ; 0 = « sur devis »
  actif       boolean not null default true,
  ordre       integer not null default 0,
  created_at  timestamptz not null default now()
);

-- ---- Liaison offres ↔ modules ----
create table produit_modules (
  produit_id  uuid not null references produits(id) on delete cascade,
  module_id   uuid not null references modules(id) on delete cascade,
  primary key (produit_id, module_id)
);

-- ---- Packs (mis en avant sous les offres) ----
create table bundles (
  id          uuid primary key default gen_random_uuid(),
  nom         text not null,
  description text not null default '',
  produits    text[] not null default '{}'::text[],  -- noms des offres incluses
  prix        integer default null,                  -- DZD : prix FIXE du pack (prioritaire)
  remise_pct  integer not null default 0 check (remise_pct between 0 and 100), -- sinon remise %
  badge       text default null,
  actif       boolean not null default true,
  ordre       integer not null default 0,
  created_at  timestamptz not null default now()
);

-- ---- Documentation (pages par produit/section, contenu HTML) ----
create table doc_pages (
  id            uuid primary key default gen_random_uuid(),
  produit       text not null check (produit in ('erp','food','shop','website')),
  section       text not null,
  section_ordre integer not null default 0,
  titre         text not null,
  ordre         integer not null default 0,
  contenu       text not null default '',
  created_at    timestamptz not null default now(),
  updated_at    timestamptz not null default now()
);

-- ---- Changelogs ----
create table changelogs (
  id             uuid primary key default gen_random_uuid(),
  produit        text not null check (produit in ('erp','food','shop','website')),
  version        text default null,
  titre          text not null,
  date           date not null default current_date,
  type_badge     text default null,
  type_badge_cls text default null,
  changements    jsonb not null default '[]'::jsonb, -- [{tag, texte}]
  created_at     timestamptz not null default now()
);

-- ---- Demandes de devis ----
create table devis (
  id         uuid primary key default gen_random_uuid(),
  nom        text not null,
  entreprise text not null,
  email      text not null,
  telephone  text default null,
  logiciel   text not null,
  message    text not null,
  statut     text not null default 'nouveau' check (statut in ('nouveau','contacte','converti','archive')),
  created_at timestamptz not null default now()
);

-- ---- Coordonnées (ligne unique id=1) ----
create table contact_info (
  id           integer primary key default 1 check (id = 1),
  adresse      text not null default 'Béjaïa, Algérie',
  telephone    text not null default '',
  email        text not null default 'abtcelestial@gmail.com',
  facebook_url text default null,
  linkedin_url text default null,
  twitter_url  text default null,
  updated_at   timestamptz not null default now()
);

-- ============================================================
-- 3. INDEX
-- ============================================================
create index produits_ordre_idx      on produits (ordre);
create index modules_ordre_idx       on modules (ordre);
create index produit_modules_p_idx   on produit_modules (produit_id);
create index produit_modules_m_idx   on produit_modules (module_id);
create index bundles_ordre_idx       on bundles (ordre);
create index doc_pages_tree_idx      on doc_pages (produit, section_ordre, ordre);
create index changelogs_date_idx     on changelogs (date desc);
create index devis_created_idx       on devis (created_at desc);

-- ============================================================
-- 4. SÉCURITÉ (RLS)
-- ============================================================
alter table produits        enable row level security;
alter table modules         enable row level security;
alter table produit_modules enable row level security;
alter table bundles         enable row level security;
alter table doc_pages       enable row level security;
alter table changelogs      enable row level security;
alter table devis           enable row level security;
alter table contact_info    enable row level security;

-- Admin (authentifié) : tout
create policy "admin_all_produits"        on produits        for all to authenticated using (true) with check (true);
create policy "admin_all_modules"         on modules         for all to authenticated using (true) with check (true);
create policy "admin_all_produit_modules" on produit_modules for all to authenticated using (true) with check (true);
create policy "admin_all_bundles"         on bundles         for all to authenticated using (true) with check (true);
create policy "admin_all_doc_pages"       on doc_pages       for all to authenticated using (true) with check (true);
create policy "admin_all_changelogs"      on changelogs      for all to authenticated using (true) with check (true);
create policy "admin_all_devis"           on devis           for all to authenticated using (true) with check (true);
create policy "admin_all_contact"         on contact_info    for all to authenticated using (true) with check (true);

-- Visiteurs (anon) : lecture du contenu actif + envoi de devis
create policy "anon_read_produits"        on produits        for select to anon using (actif = true);
create policy "anon_read_modules"         on modules         for select to anon using (actif = true);
create policy "anon_read_produit_modules" on produit_modules for select to anon using (true);
create policy "anon_read_bundles"         on bundles         for select to anon using (actif = true);
create policy "anon_read_doc_pages"       on doc_pages       for select to anon using (true);
create policy "anon_read_changelogs"      on changelogs      for select to anon using (true);
create policy "anon_insert_devis"         on devis           for insert to anon with check (true);
create policy "anon_read_contact"         on contact_info    for select to anon using (true);

-- ============================================================
-- 5. STOCKAGE — bucket pour les images de la documentation
-- ============================================================
insert into storage.buckets (id, name, public)
values ('images', 'images', true)
on conflict (id) do nothing;

create policy "public_read_images" on storage.objects
  for select using (bucket_id = 'images');
create policy "admin_upload_images" on storage.objects
  for insert to authenticated with check (bucket_id = 'images');
create policy "admin_update_images" on storage.objects
  for update to authenticated using (bucket_id = 'images');
create policy "admin_delete_images" on storage.objects
  for delete to authenticated using (bucket_id = 'images');

-- ============================================================
-- 6. DONNÉES INITIALES — les vrais produits Celestial
--    (prix à 0 = « sur devis » ; fixe-les dans l'admin)
-- ============================================================

insert into contact_info (id) values (1);

insert into produits (nom, icone, description, type, prix, badge, lien, featured, ordre) values
('ERP BusinessProces', '⬡', 'Le progiciel de gestion complet, déjà déployé en entreprise : marchés, stocks, comptabilité, finance, facturation, paie et logistique avec pont bascule.', 'logiciel', 0, 'Produit phare', '/erp', true, 1),
('Celestial Food', '🍽', 'La caisse et la gestion pour restaurants, cafés et fast-foods : commandes à table sur mobile, tickets de cuisine, factures et chiffres en direct.', 'logiciel', 0, 'Bientôt disponible', '/food', false, 2),
('Matériel informatique', '🖥', 'PC, écrans, imprimantes, périphériques et composants : l''équipement adapté à votre activité, choisi et installé par ceux qui connaissent vos logiciels.', 'materiel', 0, 'Celestial Shop', '/services#shop', false, 3),
('Système sur mesure', '⚙', 'Votre métier a un besoin qu''aucun logiciel du marché ne couvre ? Nous concevons et développons le système qui l''automatise, de l''écoute à la formation.', 'service', 0, 'Développement', '/services', false, 4);

-- Modules de l'ERP (issus des fonctionnalités réelles de BusinessProces)
insert into modules (nom, description, icone, prix, ordre) values
('Gestion des marchés',      'Marchés, situations, devis, financement, import Excel',        '🏗', 0, 1),
('Stocks & inventaires',     'États de stocks, inventaires, étiquettes code-barres',         '📦', 0, 2),
('Comptabilité',             'Plan comptable, barèmes, travaux de fin d''année',             '🧮', 0, 3),
('Finance & trésorerie',     'Échéanciers, prélèvements, virements, chèques',                '🏦', 0, 4),
('Facturation commerciale',  'Devis, factures, bons de caisse et quantitatifs',              '🧾', 0, 5),
('Paie & effectifs',         'Effectifs et attestations de versement',                       '👥', 0, 6),
('Logistique & pesée',       'Bons de route, transport, pont bascule',                       '🚛', 0, 7),
('Générateur d''états',      'Rapports, tableaux et diagrammes personnalisés',               '📊', 0, 8);

-- Tous les modules rattachés à l'ERP
insert into produit_modules (produit_id, module_id)
select p.id, m.id from produits p, modules m where p.nom = 'ERP BusinessProces';

-- Premier changelog : la refonte du site
insert into changelogs (produit, version, titre, type_badge, changements) values
('website', 'v2.0', 'Refonte complète du site Celestial', 'Nouveau',
 '[{"tag":"NOUVEAU","texte":"Nouveau design bleu ciel avec animation 3D « L''Assemblage »"},{"tag":"NOUVEAU","texte":"Pages Offres, Documentation et Changelogs dynamiques"},{"tag":"NOUVEAU","texte":"Espace admin pour gérer offres, modules, packs et documentation"}]'::jsonb);
