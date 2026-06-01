-- Supprime la contrainte check hardcodée sur doc_pages.produit
-- pour permettre n'importe quel nom de produit
ALTER TABLE doc_pages DROP CONSTRAINT IF EXISTS doc_pages_produit_check;
