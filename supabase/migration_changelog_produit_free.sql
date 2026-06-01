-- Supprime la contrainte check hardcodée sur changelogs.produit
-- pour permettre n'importe quel nom de produit
ALTER TABLE changelogs DROP CONSTRAINT IF EXISTS changelogs_produit_check;
