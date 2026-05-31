-- ============================================================
-- CELESTIAL — Schéma Supabase
-- Exécuter dans : Supabase Dashboard > SQL Editor
-- ============================================================

-- ---- Tables existantes ----

create table if not exists devis (
  id          uuid primary key default gen_random_uuid(),
  nom         text not null,
  entreprise  text not null,
  email       text not null,
  telephone   text,
  logiciel    text not null,
  message     text not null,
  statut      text not null default 'nouveau' check (statut in ('nouveau','lu','traite')),
  created_at  timestamptz not null default now()
);

create table if not exists changelogs (
  id               uuid primary key default gen_random_uuid(),
  produit          text not null check (produit in ('business','pay','compta','company')),
  version          text,
  titre            text not null,
  date             date not null,
  type_badge       text not null default 'Nouveau',
  type_badge_cls   text not null default 'badge-new',
  changements      jsonb not null default '[]'::jsonb,
  created_at       timestamptz not null default now()
);

-- ---- Nouvelles tables ----

-- Logiciels / produits
create table if not exists produits (
  id          uuid primary key default gen_random_uuid(),
  nom         text not null,
  icone       text not null default '📦',
  description text not null,
  modules     jsonb not null default '[]'::jsonb,  -- array of strings
  prix        integer not null default 0,           -- DZD
  featured    boolean not null default false,
  ordre       integer not null default 0,
  actif       boolean not null default true,
  created_at  timestamptz not null default now()
);

-- Informations de contact (une seule ligne, id fixé à 1)
create table if not exists contact_info (
  id           integer primary key default 1,
  adresse      text not null default '',
  telephone    text not null default '',
  email        text not null default '',
  linkedin_url text not null default '',
  twitter_url  text not null default '',
  facebook_url text not null default '',
  updated_at   timestamptz not null default now(),
  constraint contact_info_single_row check (id = 1)
);

-- Pages de documentation
create table if not exists doc_pages (
  id             uuid primary key default gen_random_uuid(),
  produit        text not null check (produit in ('business','pay','compta')),
  section        text not null,
  section_ordre  integer not null default 0,
  titre          text not null,
  contenu        text not null default '',
  ordre          integer not null default 0,
  created_at     timestamptz not null default now()
);

-- ---- Index ----
create index if not exists devis_created_at_idx    on devis (created_at desc);
create index if not exists changelogs_date_idx     on changelogs (date desc);
create index if not exists changelogs_produit_idx  on changelogs (produit);
create index if not exists produits_ordre_idx      on produits (ordre);
create index if not exists doc_pages_produit_idx   on doc_pages (produit, section_ordre, ordre);

-- ---- RLS ----
alter table devis        enable row level security;
alter table changelogs   enable row level security;
alter table produits     enable row level security;
alter table contact_info enable row level security;
alter table doc_pages    enable row level security;

-- Admins : tous les droits
create policy "admins_all_devis"        on devis        for all to authenticated using (true) with check (true);
create policy "admins_all_changelogs"   on changelogs   for all to authenticated using (true) with check (true);
create policy "admins_all_produits"     on produits     for all to authenticated using (true) with check (true);
create policy "admins_all_contact"      on contact_info for all to authenticated using (true) with check (true);
create policy "admins_all_doc_pages"    on doc_pages    for all to authenticated using (true) with check (true);

-- Anonymes : lecture seule sur ce qui est public
create policy "anon_insert_devis"       on devis        for insert to anon with check (true);
create policy "anon_read_changelogs"    on changelogs   for select to anon using (true);
create policy "anon_read_produits"      on produits     for select to anon using (actif = true);
create policy "anon_read_contact"       on contact_info for select to anon using (true);
create policy "anon_read_doc_pages"     on doc_pages    for select to anon using (true);

-- ============================================================
-- Données de départ
-- ============================================================

-- Changelogs
insert into changelogs (produit, version, titre, date, type_badge, type_badge_cls, changements) values
('business','v2.4.0','Tableaux de bord personnalisables','2026-05-14','Nouveau','badge-new','[{"tag":"Nouveau","cls":"badge-new","texte":"Widgets glissables pour composer vos propres tableaux de bord par service."},{"tag":"Nouveau","cls":"badge-new","texte":"Export PDF et Excel des vues filtrées en un clic."},{"tag":"Amélio.","cls":"badge-improve","texte":"Chargement des listes 3× plus rapide sur les gros catalogues."}]'::jsonb),
('compta','v3.1.2','Conformité G50 — mise à jour fiscale 2026','2026-05-02','Correctif','badge-fix','[{"tag":"Amélio.","cls":"badge-improve","texte":"Nouveau modèle de déclaration G50 conforme aux barèmes 2026."},{"tag":"Correctif","cls":"badge-fix","texte":"Correction de l''arrondi TVA sur les factures multi-taux."},{"tag":"Correctif","cls":"badge-fix","texte":"Résolution d''un blocage à la clôture d''exercice sur certains plans analytiques."}]'::jsonb),
('company',null,'Celestial ouvre un bureau à Constantine','2026-04-28','Entreprise','badge-gold','[{"tag":"Actu","cls":"badge-new","texte":"Une nouvelle équipe support et déploiement pour mieux couvrir l''Est algérien."},{"tag":"Actu","cls":"badge-new","texte":"Recrutement de 6 ingénieurs ERP — voir nos offres d''emploi."}]'::jsonb),
('pay','v1.8.0','Déclaration CNAS dématérialisée','2026-04-19','Nouveau','badge-new','[{"tag":"Nouveau","cls":"badge-new","texte":"Génération automatique du fichier de déclaration CNAS au format officiel."},{"tag":"Amélio.","cls":"badge-improve","texte":"Bulletins de paie bilingues (français / arabe) avec mise en page RTL."},{"tag":"Amélio.","cls":"badge-improve","texte":"Gestion des primes et indemnités par profil de poste."}]'::jsonb),
('business','v2.3.5','Module CRM enrichi','2026-04-03','Amélioration','badge-improve','[{"tag":"Amélio.","cls":"badge-improve","texte":"Pipeline commercial avec étapes personnalisables."},{"tag":"Correctif","cls":"badge-fix","texte":"Correction de la synchronisation des contacts dupliqués."}]'::jsonb),
('compta','v3.0.0','Refonte du moteur comptable','2026-03-12','Version majeure','badge-new','[{"tag":"Nouveau","cls":"badge-new","texte":"Nouvelle architecture multi-sociétés avec consolidation."},{"tag":"Nouveau","cls":"badge-new","texte":"Lettrage automatique intelligent des écritures."},{"tag":"Amélio.","cls":"badge-improve","texte":"Interface repensée, navigation au clavier complète."}]'::jsonb);

-- Produits
insert into produits (nom, icone, description, modules, prix, featured, ordre) values
('Business Process','📊','Le cœur opérationnel : ventes, achats, stock et CRM dans un seul système.','["Gestion commerciale (devis, BC, factures)","Stock & inventaire multi-dépôts","Achats & fournisseurs","CRM & pipeline commercial"]'::jsonb,480000,false,1),
('Compta Process','🧮','La comptabilité conforme SCF, automatisée jusqu''à la liasse fiscale.','["Comptabilité générale & analytique SCF","TVA, G50 & déclarations fiscales","Multi-sociétés & consolidation","Lettrage automatique & bilans"]'::jsonb,620000,true,2),
('Pay Process','💼','La paie algérienne sans erreur : RH, congés et déclarations CNAS.','["Paie & bulletins bilingues (FR/AR)","Gestion RH & congés","Déclarations CNAS & DAS","Primes, indemnités & avances"]'::jsonb,390000,false,3);

-- Contact info
insert into contact_info (id, adresse, telephone, email, linkedin_url, twitter_url, facebook_url)
values (1, 'Cité des Affaires, Bab Ezzouar, Alger 16000, Algérie', '+213 21 00 00 00', 'contact@celestial.dz', '#', '#', '#')
on conflict (id) do nothing;

-- Documentation — Business Process
insert into doc_pages (produit, section, section_ordre, titre, ordre, contenu) values
('business','Démarrage',0,'Introduction',0,'<h2 id="prerequis">Prérequis</h2>
<p>Avant l''installation, assurez-vous que votre environnement répond aux exigences minimales. Business Process fonctionne sur site (<em>on-premise</em>) ou sur votre cloud privé.</p>
<ul>
  <li>Serveur Linux (Ubuntu 22.04+) ou Windows Server 2019+</li>
  <li>Base de données <code>PostgreSQL 14</code> ou supérieure</li>
  <li>8 Go de RAM minimum, 16 Go recommandés pour 50+ utilisateurs</li>
  <li>Accès réseau local ou VPN pour les postes clients</li>
</ul>
<h2 id="installation">Installation</h2>
<p>Le déploiement s''effectue via notre utilitaire en ligne de commande. Téléchargez l''archive fournie avec votre licence, puis lancez l''assistant.</p>
<h2 id="config">Première configuration</h2>
<p>Au premier lancement, l''assistant vous guide à travers la création de la société, le paramétrage de la TVA et l''import de votre catalogue d''articles.</p>'),
('business','Démarrage',0,'Installation',1,'<h2 id="telechargement">Téléchargement</h2><p>Téléchargez l''archive fournie avec votre licence depuis l''espace client Celestial.</p><h2 id="assistant">Assistant d''installation</h2><p>Lancez l''assistant et suivez les étapes pour configurer votre environnement.</p>'),
('business','Ventes & achats',1,'Bons de commande',0,'<h2 id="creation">Créer un bon de commande</h2><p>Les bons de commande vous permettent de gérer vos achats fournisseurs de manière structurée.</p>'),
('business','Stock & inventaire',2,'Articles & références',0,'<h2 id="catalogue">Catalogue articles</h2><p>Gérez votre catalogue produits avec les références, unités, et prix associés.</p>');
