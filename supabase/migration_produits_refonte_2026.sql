-- ============================================================
-- Migration refonte 2026 : produits réels de Celestial
-- À exécuter dans le SQL Editor de Supabase.
-- Anciennes valeurs (business, pay, compta, company) : données
-- de démonstration fictives → rattachées à 'erp'.
-- Nouveaux slugs : erp | food | shop | website
-- ============================================================

-- Changelogs
alter table changelogs drop constraint if exists changelogs_produit_check;
update changelogs set produit = 'erp' where produit in ('business','pay','compta','company');
alter table changelogs add constraint changelogs_produit_check
  check (produit in ('erp','food','shop','website'));

-- Pages de documentation
alter table doc_pages drop constraint if exists doc_pages_produit_check;
update doc_pages set produit = 'erp' where produit in ('business','pay','compta');
alter table doc_pages add constraint doc_pages_produit_check
  check (produit in ('erp','food','shop','website'));
