-- Ajoute la colonne has_licenses sur applications.
-- Toutes les applications existantes ont des licences par défaut (true).
alter table applications
  add column if not exists has_licenses boolean not null default true;
