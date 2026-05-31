-- ============================================================
-- CELESTIAL — Migration : nouvelles tables
-- À exécuter si devis + changelogs existent déjà
-- ============================================================

-- Logiciels / produits
create table if not exists produits (
  id          uuid primary key default gen_random_uuid(),
  nom         text not null,
  icone       text not null default '📦',
  description text not null,
  modules     jsonb not null default '[]'::jsonb,
  prix        integer not null default 0,
  featured    boolean not null default false,
  ordre       integer not null default 0,
  actif       boolean not null default true,
  created_at  timestamptz not null default now()
);

-- Informations de contact (une seule ligne)
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

-- Index
create index if not exists produits_ordre_idx    on produits (ordre);
create index if not exists doc_pages_produit_idx on doc_pages (produit, section_ordre, ordre);

-- RLS
alter table produits     enable row level security;
alter table contact_info enable row level security;
alter table doc_pages    enable row level security;

-- Politiques admins
create policy "admins_all_produits"  on produits     for all to authenticated using (true) with check (true);
create policy "admins_all_contact"   on contact_info for all to authenticated using (true) with check (true);
create policy "admins_all_doc_pages" on doc_pages    for all to authenticated using (true) with check (true);

-- Politiques anonymes (lecture publique)
create policy "anon_read_produits"   on produits     for select to anon using (actif = true);
create policy "anon_read_contact"    on contact_info for select to anon using (true);
create policy "anon_read_doc_pages"  on doc_pages    for select to anon using (true);

-- ---- Données de départ ----

insert into produits (nom, icone, description, modules, prix, featured, ordre) values
('Business Process', '📊', 'Le cœur opérationnel : ventes, achats, stock et CRM dans un seul système.',
 '["Gestion commerciale (devis, BC, factures)","Stock & inventaire multi-dépôts","Achats & fournisseurs","CRM & pipeline commercial"]'::jsonb,
 480000, false, 1),
('Compta Process', '🧮', 'La comptabilité conforme SCF, automatisée jusqu''à la liasse fiscale.',
 '["Comptabilité générale & analytique SCF","TVA, G50 & déclarations fiscales","Multi-sociétés & consolidation","Lettrage automatique & bilans"]'::jsonb,
 620000, true, 2),
('Pay Process', '💼', 'La paie algérienne sans erreur : RH, congés et déclarations CNAS.',
 '["Paie & bulletins bilingues (FR/AR)","Gestion RH & congés","Déclarations CNAS & DAS","Primes, indemnités & avances"]'::jsonb,
 390000, false, 3);

insert into contact_info (id, adresse, telephone, email, linkedin_url, twitter_url, facebook_url)
values (1, 'Cité des Affaires, Bab Ezzouar, Alger 16000, Algérie', '+213 21 00 00 00', 'contact@celestial.dz', '#', '#', '#')
on conflict (id) do nothing;

insert into doc_pages (produit, section, section_ordre, titre, ordre, contenu) values
('business', 'Démarrage', 0, 'Introduction', 0,
'<h2 id="prerequis">Prérequis</h2>
<p>Avant l''installation, assurez-vous que votre environnement répond aux exigences minimales.</p>
<ul>
  <li>Serveur Linux (Ubuntu 22.04+) ou Windows Server 2019+</li>
  <li>Base de données <code>PostgreSQL 14</code> ou supérieure</li>
  <li>8 Go de RAM minimum, 16 Go recommandés pour 50+ utilisateurs</li>
</ul>
<h2 id="installation">Installation</h2>
<p>Le déploiement s''effectue via notre utilitaire en ligne de commande fourni avec votre licence.</p>
<h2 id="config">Première configuration</h2>
<p>Au premier lancement, l''assistant vous guide pour créer la société et paramétrer la TVA.</p>'),
('business', 'Démarrage', 0, 'Installation', 1,
'<h2 id="telechargement">Téléchargement</h2>
<p>Téléchargez l''archive depuis votre espace client Celestial avec votre clé de licence.</p>
<h2 id="assistant">Assistant d''installation</h2>
<p>Lancez <code>./celestial-setup</code> et suivez les étapes pour configurer votre environnement.</p>'),
('business', 'Ventes & achats', 1, 'Bons de commande', 0,
'<h2 id="creation">Créer un bon de commande</h2>
<p>Les bons de commande permettent de gérer vos achats fournisseurs de manière structurée et traçable.</p>'),
('compta', 'Plan comptable SCF', 0, 'Comptes & journaux', 0,
'<h2 id="plan">Plan comptable</h2>
<p>Compta Process intègre le plan comptable SCF algérien, entièrement paramétrable selon votre activité.</p>
<h2 id="journaux">Journaux comptables</h2>
<p>Achat, vente, trésorerie, OD — chaque journal est configuré avec ses comptes par défaut.</p>'),
('pay', 'Configuration paie', 0, 'Barèmes & cotisations', 0,
'<h2 id="baremes">Barèmes IRG</h2>
<p>Les barèmes IRG et CNAS sont mis à jour chaque année lors de la maintenance. Vérifiez la version active dans Paramètres → Fiscalité.</p>
<h2 id="cotisations">Cotisations sociales</h2>
<p>CNAS salarié (9%) et patronal (26%) appliqués automatiquement sur la base soumise à cotisations.</p>');
