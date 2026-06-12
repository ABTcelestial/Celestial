-- ================================================================
-- Documentation utilisateur — Celestial Chantiers
-- À exécuter dans le SQL Editor de Supabase (dashboard.supabase.com).
-- ================================================================

-- 1. Étendre la contrainte produit pour inclure 'chantiers'
alter table doc_pages drop constraint if exists doc_pages_produit_check;
alter table doc_pages add constraint doc_pages_produit_check
  check (produit in ('erp','food','shop','website','chantiers'));

-- 2. Nettoyage idempotent (safe à re-exécuter)
delete from doc_pages where produit = 'chantiers';

-- 3. Insertion de toute la documentation
insert into doc_pages (produit, section, section_ordre, titre, ordre, contenu) values

-- ============================================================
-- SECTION 1 — Démarrage
-- ============================================================

('chantiers', 'Démarrage', 1, 'Première connexion', 1,
'<h2 id="identifiants">Vos identifiants de connexion</h2>
<p>Celestial Chantiers ne permet pas l''inscription libre. Votre compte est créé par l''équipe Celestial au moment de l''achat de la licence. Vous recevez :</p>
<ul>
  <li><strong>Un email</strong> — votre identifiant de connexion.</li>
  <li><strong>Un mot de passe</strong> — à saisir tel quel lors de la première connexion.</li>
</ul>
<p>Conservez ces informations précieusement. En cas de perte, contactez Celestial pour une réinitialisation.</p>

<h2 id="connexion">Se connecter</h2>
<p>Au lancement de l''application, l''écran de connexion s''affiche automatiquement :</p>
<ol>
  <li>Saisissez votre <strong>adresse email</strong> dans le premier champ.</li>
  <li>Saisissez votre <strong>mot de passe</strong> dans le second champ.</li>
  <li>Appuyez sur le bouton <strong>Se connecter</strong>.</li>
</ol>
<p>⚠️ La toute première connexion nécessite une connexion internet active. Une fois connecté, l''application fonctionne hors ligne pour toutes les opérations courantes.</p>

<h2 id="appareil">Verrouillage de l''appareil</h2>
<p>Lors de votre première connexion, l''application enregistre automatiquement votre téléphone. La licence est ensuite <strong>liée à cet appareil</strong> pour des raisons de sécurité.</p>
<ul>
  <li>Si vous changez de téléphone, contactez Celestial pour déverrouiller votre licence et la transférer sur le nouvel appareil.</li>
  <li>Si l''écran <strong>« Appareil non autorisé »</strong> s''affiche, c''est que votre compte est déjà enregistré sur un autre téléphone. Contactez Celestial — seul l''administrateur peut déverrouiller la licence.</li>
  <li>Si l''écran <strong>« Licence inactive »</strong> s''affiche, votre licence a été suspendue. Contactez Celestial.</li>
</ul>'),

('chantiers', 'Démarrage', 1, 'Navigation principale', 2,
'<h2 id="onglets">Les 4 onglets de l''application</h2>
<p>L''application est organisée en <strong>4 onglets</strong> accessibles depuis la barre de navigation en bas de l''écran. Appuyez sur l''icône d''un onglet pour y accéder.</p>

<h3>🏗 Chantiers</h3>
<p>Point de départ principal. Liste tous vos chantiers en cours et terminés. C''est ici que vous gérez les matériaux utilisés, les encaissements reçus du client et consultez les ouvriers affectés à chaque chantier.</p>

<h3>✅ Pointage</h3>
<p>Enregistrez la présence quotidienne de vos ouvriers. Pour chaque jour, vous indiquez quels ouvriers ont travaillé, sur quel chantier, et combien de jours ou d''heures. Ces données alimentent automatiquement la paie et les coûts de chantier.</p>

<h3>📦 Stock</h3>
<p>Gérez votre stock central de matériaux. Ajoutez des achats (restockage), consultez les quantités disponibles par catégorie, et accédez à l''historique complet des mouvements.</p>

<h3>📊 Tableau de bord</h3>
<p>Vue globale de votre activité : bénéfices par chantier, total des encaissements et dépenses, soldes des ouvriers. Toutes les données sont calculées en temps réel.</p>

<h2 id="gestes">Gestes de base</h2>
<ul>
  <li><strong>Ouvrir un élément</strong> : appuyez dessus dans la liste.</li>
  <li><strong>Ajouter un élément</strong> : bouton <strong>+</strong> flottant en bas à droite de l''écran, ou bouton en haut de liste selon les pages.</li>
  <li><strong>Supprimer un élément</strong> : appuyez <strong>longuement</strong> dessus — une fenêtre de confirmation s''affiche.</li>
  <li><strong>Revenir en arrière</strong> : flèche ← en haut à gauche, ou bouton retour de votre téléphone.</li>
</ul>
<p>⚠️ Toute suppression est définitive. Vérifiez bien avant de confirmer.</p>'),

-- ============================================================
-- SECTION 2 — Chantiers
-- ============================================================

('chantiers', 'Chantiers', 2, 'Créer et gérer les chantiers', 1,
'<h2 id="creer">Créer un chantier</h2>
<p>Dans l''onglet <strong>Chantiers</strong>, appuyez sur le bouton <strong>+</strong> en bas à droite. Un formulaire s''ouvre depuis le bas de l''écran :</p>
<ul>
  <li><strong>Nom du chantier</strong> (obligatoire) : donnez un nom clair et reconnaissable. Exemple : « Villa Amrane — Béjaïa » ou « Immeuble Rue Nationale ».</li>
  <li><strong>Description</strong> (optionnel) : adresse précise, remarques, contact client, etc.</li>
</ul>
<p>Appuyez sur <strong>Enregistrer</strong>. Le chantier apparaît immédiatement dans la liste.</p>

<h2 id="liste">La liste des chantiers</h2>
<p>Chaque chantier est affiché sous forme de carte avec :</p>
<ul>
  <li>Le <strong>nom</strong> du chantier</li>
  <li>Le <strong>bénéfice actuel</strong> (encaissements reçus moins les dépenses enregistrées)</li>
</ul>
<p>Appuyez sur un chantier pour accéder à sa fiche détaillée.</p>

<h2 id="fiche">La fiche d''un chantier</h2>
<p>La fiche détaillée d''un chantier contient trois onglets :</p>
<ul>
  <li><strong>Matériaux</strong> — matériaux prélevés du stock et utilisés sur ce chantier, avec leur coût.</li>
  <li><strong>Encaissements</strong> — paiements reçus de votre client pour ce chantier.</li>
  <li><strong>Ouvriers</strong> — ouvriers ayant travaillé sur ce chantier, calculés d''après les pointages.</li>
</ul>

<h2 id="supprimer">Supprimer un chantier</h2>
<p>Appuyez <strong>longuement</strong> sur le chantier dans la liste, puis confirmez la suppression. ⚠️ Toutes les données associées à ce chantier (matériaux utilisés, encaissements, pointages) seront définitivement supprimées.</p>'),

('chantiers', 'Chantiers', 2, 'Matériaux d''un chantier', 2,
'<h2 id="onglet-materiaux">L''onglet Matériaux</h2>
<p>Dans la fiche d''un chantier, l''onglet <strong>Matériaux</strong> liste tous les matériaux prélevés de votre stock et utilisés sur ce chantier. Pour chaque utilisation, vous voyez :</p>
<ul>
  <li>Le nom du matériau et sa catégorie</li>
  <li>La quantité utilisée</li>
  <li>Le prix unitaire appliqué pour ce chantier</li>
  <li>Le coût total (quantité × prix unitaire)</li>
</ul>
<p>Le <strong>total des dépenses matériaux</strong> du chantier est affiché en bas. Ce montant entre dans le calcul du bénéfice.</p>

<h2 id="ajouter">Utiliser un matériau</h2>
<p>Appuyez sur le bouton <strong>+</strong>. Un formulaire s''ouvre :</p>
<ol>
  <li>Choisissez la <strong>catégorie</strong> du matériau (ex. : Ciment, Ferraille).</li>
  <li>Choisissez le <strong>matériau</strong> dans cette catégorie.</li>
  <li>Saisissez la <strong>quantité</strong> utilisée.</li>
  <li>Saisissez le <strong>prix unitaire</strong> (DA) pour ce chantier spécifiquement.</li>
  <li>Appuyez sur <strong>Enregistrer</strong>.</li>
</ol>
<p>La quantité prélevée est automatiquement <strong>déduite du stock central</strong>. Vous ne pouvez pas utiliser plus que ce qui est disponible en stock.</p>

<h2 id="prix">Pourquoi saisir le prix à chaque utilisation ?</h2>
<p>Le prix unitaire n''est pas stocké sur le matériau lui-même. Il est saisi à chaque utilisation. Cela vous permet de :</p>
<ul>
  <li>Facturer un prix différent selon le client ou le chantier.</li>
  <li>Refléter les variations de prix d''achat.</li>
  <li>Distinguer le prix de revient (achat) du prix facturé (utilisation).</li>
</ul>
<p>C''est ce prix — et non le prix d''achat du stock — qui est comptabilisé dans les dépenses du chantier.</p>

<h2 id="supprimer-materiau">Supprimer une utilisation</h2>
<p>Appuyez <strong>longuement</strong> sur la ligne à supprimer, puis confirmez. La quantité est automatiquement <strong>remise dans le stock</strong>.'),

('chantiers', 'Chantiers', 2, 'Encaissements', 3,
'<h2 id="encaissements">L''onglet Encaissements</h2>
<p>L''onglet <strong>Encaissements</strong> enregistre tous les paiements reçus de votre client pour ce chantier. Vous pouvez avoir plusieurs encaissements successifs : acompte au démarrage, paiements intermédiaires, solde final.</p>
<p>Le <strong>total encaissé</strong> est affiché en haut. Le bénéfice du chantier est calculé ainsi :</p>
<p><strong>Bénéfice = Total encaissé − Dépenses matériaux − Coût main d''œuvre</strong></p>

<h2 id="ajouter-encaissement">Enregistrer un encaissement</h2>
<p>Appuyez sur le bouton <strong>+</strong>. Un formulaire s''ouvre :</p>
<ol>
  <li><strong>Montant</strong> (DA) : somme reçue du client.</li>
  <li><strong>Date</strong> : date de réception du paiement.</li>
  <li><strong>Note</strong> (optionnel) : ex. « Acompte 50 % », « Virement BNA », « Règlement final ».</li>
</ol>
<p>Appuyez sur <strong>Enregistrer</strong>. L''encaissement s''ajoute à la liste et le total est immédiatement mis à jour.</p>

<h2 id="supprimer-encaissement">Corriger un encaissement</h2>
<p>Appuyez <strong>longuement</strong> sur l''encaissement à corriger, confirmez la suppression, puis ressaisissez le montant correct. Il n''y a pas de modification directe — supprimez et recréez.</p>'),

('chantiers', 'Chantiers', 2, 'Ouvriers du chantier', 4,
'<h2 id="onglet-ouvriers">L''onglet Ouvriers</h2>
<p>L''onglet <strong>Ouvriers</strong> affiche automatiquement tous les ouvriers ayant travaillé sur ce chantier, calculé à partir des pointages enregistrés. Vous n''avez rien à saisir ici — tout est alimenté par l''onglet Pointage.</p>
<p>Pour chaque ouvrier, vous voyez :</p>
<ul>
  <li>Son nom</li>
  <li>Le nombre de jours ou d''heures pointés sur ce chantier</li>
  <li>Le montant total qu''il a gagné sur ce chantier</li>
</ul>

<h2 id="cout-mo">Coût de main d''œuvre</h2>
<p>Le total de la main d''œuvre (somme de ce que tous les ouvriers ont gagné sur ce chantier) est inclus dans les <strong>dépenses du chantier</strong> et influe directement sur le bénéfice.</p>

<h2 id="affecter">Comment affecter un ouvrier à ce chantier ?</h2>
<p>Un ouvrier apparaît dans cet onglet uniquement s''il a été <strong>pointé sur ce chantier</strong> via l''onglet Pointage. Il suffit de pointer l''ouvrier sur ce chantier pour qu''il apparaisse automatiquement ici.</p>
<p>Consultez la section <em>Pointage</em> de cette documentation pour savoir comment enregistrer une présence.</p>'),

-- ============================================================
-- SECTION 3 — Stock central
-- ============================================================

('chantiers', 'Stock central', 3, 'Catégories et matériaux', 1,
'<h2 id="organisation">Organisation du stock</h2>
<p>Le stock est organisé en <strong>catégories</strong> qui regroupent des matériaux du même type. Cette organisation vous permet de retrouver rapidement n''importe quel matériau. Quelques exemples :</p>
<ul>
  <li><strong>Ciment</strong> → Sac ciment 50 kg, Sac ciment 25 kg</li>
  <li><strong>Ferraille</strong> → Rond à béton 8 mm, Rond à béton 12 mm, Treillis</li>
  <li><strong>Bois</strong> → Planche 27 mm, Chevron 50×50</li>
  <li><strong>Carrelage</strong> → Carrelage sol 40×40, Faïence mur</li>
</ul>

<h2 id="creer-categorie">Créer une catégorie</h2>
<p>Dans l''onglet <strong>Stock</strong>, appuyez sur le bouton <strong>+ Catégorie</strong>. Donnez un nom à la catégorie et appuyez sur <strong>Enregistrer</strong>.</p>

<h2 id="creer-materiau">Ajouter un matériau</h2>
<p>Ouvrez une catégorie, puis appuyez sur le bouton <strong>+</strong> pour ajouter un matériau :</p>
<ul>
  <li><strong>Nom</strong> (obligatoire) : ex. « Sac ciment 50 kg ».</li>
</ul>
<p>Le matériau est créé avec une quantité en stock de <strong>0</strong>. Pour augmenter le stock, effectuez un achat (restock) décrit à la page suivante.</p>

<h2 id="quantite">Lire la quantité disponible</h2>
<p>La quantité disponible de chaque matériau est affichée dans la liste. Elle :</p>
<ul>
  <li><strong>Augmente</strong> à chaque achat (restock) que vous enregistrez.</li>
  <li><strong>Diminue</strong> à chaque utilisation sur un chantier.</li>
</ul>
<p>Si la quantité atteint 0, vous ne pouvez plus utiliser ce matériau sur un chantier — pensez à réapprovisionner.</p>

<h2 id="supprimer-materiau">Supprimer un matériau ou une catégorie</h2>
<p>Appuyez <strong>longuement</strong> sur l''élément à supprimer, puis confirmez. Attention : supprimer une catégorie supprime aussi tous les matériaux qu''elle contient.'),

('chantiers', 'Stock central', 3, 'Acheter du stock (Restock)', 2,
'<h2 id="restock">Qu''est-ce qu''un restock ?</h2>
<p>Un <strong>restock</strong> correspond à un achat de matériaux : vous approvisionnez votre stock central suite à un achat chez un fournisseur. Le restock <strong>augmente la quantité disponible</strong> du matériau.</p>
<p>Le prix total de l''achat est enregistré à <strong>titre informatif uniquement</strong> — il n''entre pas dans les dépenses d''un chantier. Ce sont les utilisations sur chantier qui comptent dans les coûts.</p>

<h2 id="enregistrer-restock">Enregistrer un achat</h2>
<p>Ouvrez le matériau concerné dans l''onglet Stock, puis appuyez sur <strong>+ Achat</strong> :</p>
<ol>
  <li><strong>Quantité achetée</strong> : nombre d''unités reçues du fournisseur.</li>
  <li><strong>Prix unitaire</strong> (DA) : prix payé par unité lors de cet achat. Cette information est conservée pour référence mais n''est pas répercutée automatiquement sur les chantiers.</li>
  <li><strong>Date</strong> : date de réception des matériaux.</li>
  <li><strong>Note</strong> (optionnel) : nom du fournisseur, numéro de facture, etc.</li>
</ol>
<p>Appuyez sur <strong>Enregistrer</strong>. La quantité en stock augmente immédiatement du montant saisi.</p>

<h2 id="supprimer-restock">Supprimer un achat</h2>
<p>Appuyez <strong>longuement</strong> sur l''achat dans l''historique du matériau, puis confirmez. La quantité correspondante est retirée du stock.'),

('chantiers', 'Stock central', 3, 'Historique des mouvements', 3,
'<h2 id="historique">L''historique global du stock</h2>
<p>L''onglet Stock donne accès à un <strong>historique global</strong> de tous les mouvements de stock, tous matériaux confondus. Pour y accéder, appuyez sur <strong>Historique</strong> dans l''onglet Stock.</p>

<h2 id="lire-historique">Lire l''historique</h2>
<p>Chaque ligne affiche :</p>
<ul>
  <li>La <strong>date</strong> du mouvement</li>
  <li>Le <strong>type</strong> : Achat (entrée de stock) ou Utilisation (sortie de stock)</li>
  <li>Le <strong>matériau</strong> concerné et sa catégorie</li>
  <li>La <strong>quantité</strong> et le prix unitaire associé</li>
  <li>Pour les utilisations : le <strong>chantier</strong> sur lequel le matériau a été utilisé</li>
</ul>

<h2 id="utilite">À quoi sert l''historique ?</h2>
<p>L''historique vous permet de :</p>
<ul>
  <li>Retrouver quand un matériau a été acheté et à quel prix d''achat.</li>
  <li>Vérifier sur quel chantier un matériau a été utilisé.</li>
  <li>Identifier des écarts entre quantités achetées et quantités utilisées.</li>
  <li>Avoir une traçabilité complète des matériaux de votre entreprise.</li>
</ul>'),

-- ============================================================
-- SECTION 4 — Pointage
-- ============================================================

('chantiers', 'Pointage', 4, 'Faire le pointage quotidien', 1,
'<h2 id="role-pointage">Rôle du pointage</h2>
<p>Le <strong>pointage</strong> enregistre la présence de vos ouvriers jour par jour. C''est la base de tout le système de paie. Il permet de calculer automatiquement :</p>
<ul>
  <li>Le montant gagné par chaque ouvrier (selon son tarif journalier ou horaire).</li>
  <li>Le coût de main d''œuvre de chaque chantier.</li>
</ul>
<p>Pointez vos ouvriers chaque soir ou chaque matin — ne laissez pas s''accumuler plusieurs jours de retard.</p>

<h2 id="faire-pointage">Enregistrer une présence</h2>
<p>Dans l''onglet <strong>Pointage</strong> :</p>
<ol>
  <li>Naviguez jusqu''à la bonne <strong>date</strong> avec les flèches ◀ ▶. Les dates futures sont bloquées.</li>
  <li>Sélectionnez le <strong>chantier</strong> sur lequel travaillent les ouvriers ce jour-là.</li>
  <li>Appuyez sur le bouton <strong>+</strong> pour ajouter un ouvrier.</li>
  <li>Choisissez l''<strong>ouvrier</strong> dans la liste.</li>
  <li>Selon son mode de paiement configuré :
    <ul>
      <li><strong>Payé à la journée</strong> : 1 pointage = 1 journée complète au tarif journalier de l''ouvrier. Pas de saisie supplémentaire.</li>
      <li><strong>Payé à l''heure</strong> : saisissez le <strong>nombre d''heures</strong> effectuées ce jour-là.</li>
    </ul>
  </li>
  <li>Appuyez sur <strong>Enregistrer</strong>.</li>
</ol>
<p>Répétez l''opération pour chaque ouvrier présent ce jour-là. Si plusieurs ouvriers travaillent sur des chantiers différents le même jour, changez de chantier sélectionné entre chaque groupe.</p>

<h2 id="regles-pointage">Règles importantes</h2>
<ul>
  <li>Un ouvrier ne peut être pointé qu''<strong>une seule fois par jour</strong> sur un chantier donné. L''application refuse les doublons.</li>
  <li>Les dates <strong>futures</strong> sont bloquées — vous ne pouvez pointer que le jour en cours ou le passé.</li>
</ul>

<h2 id="corriger-pointage">Corriger une erreur</h2>
<p>Appuyez <strong>longuement</strong> sur l''entrée de pointage à corriger, confirmez la suppression, puis ressaisissez le pointage correct.</p>'),

-- ============================================================
-- SECTION 5 — Ouvriers
-- ============================================================

('chantiers', 'Ouvriers', 5, 'Créer et gérer les ouvriers', 1,
'<h2 id="creer-ouvrier">Créer un ouvrier</h2>
<p>Les ouvriers sont gérés depuis la section <strong>Ouvriers</strong> accessible dans l''application. Appuyez sur le bouton <strong>+</strong> pour créer un nouvel ouvrier. Un formulaire s''ouvre :</p>
<ul>
  <li><strong>Prénom / Nom</strong> : identifiant de l''ouvrier dans l''application.</li>
  <li><strong>Mode de paiement</strong> :
    <ul>
      <li><strong>À la journée</strong> : l''ouvrier est payé pour chaque journée complète pointée.</li>
      <li><strong>À l''heure</strong> : l''ouvrier est payé selon le nombre d''heures pointées.</li>
    </ul>
  </li>
  <li><strong>Tarif</strong> (DA) : montant par journée <em>ou</em> par heure selon le mode choisi.</li>
</ul>
<p>Appuyez sur <strong>Enregistrer</strong>. L''ouvrier est disponible dans toutes les listes de pointage.</p>

<h2 id="modifier-ouvrier">Modifier un ouvrier</h2>
<p>Ouvrez la fiche de l''ouvrier en appuyant dessus, puis modifiez les informations souhaitées. Le changement de tarif ne rétroagit pas sur les pointages déjà enregistrés — seuls les futurs pointages utiliseront le nouveau tarif.</p>

<h2 id="solde-ouvrier">Lire le solde d''un ouvrier</h2>
<p>La fiche de chaque ouvrier affiche son <strong>solde actuel</strong>, calculé automatiquement :</p>
<p><strong>Solde = Montant gagné (pointages) − Avances − Règlements</strong></p>
<ul>
  <li>Un solde <strong>positif</strong> indique que vous lui devez encore de l''argent.</li>
  <li>Un solde <strong>nul</strong> indique que l''ouvrier est entièrement soldé.</li>
  <li>Un solde <strong>négatif</strong> indique qu''il a été surpayé (avances ou règlements supérieurs aux gains).</li>
</ul>

<h2 id="supprimer-ouvrier">Supprimer un ouvrier</h2>
<p>Appuyez <strong>longuement</strong> sur l''ouvrier dans la liste, puis confirmez. ⚠️ Tout l''historique de cet ouvrier (pointages, avances, règlements) sera définitivement perdu.'),

('chantiers', 'Ouvriers', 5, 'Avances et règlements', 2,
'<h2 id="avances">Les avances</h2>
<p>Une <strong>avance</strong> est un paiement partiel versé à un ouvrier avant la fin du mois ou du chantier. Elle réduit son solde restant dû. Exemples courants : avance en début de mois, avance en urgence.</p>

<h2 id="enregistrer-avance">Enregistrer une avance</h2>
<p>Ouvrez la fiche de l''ouvrier, allez dans l''onglet <strong>Avances</strong>, puis appuyez sur <strong>+</strong> :</p>
<ol>
  <li><strong>Montant</strong> (DA) : somme versée à l''ouvrier.</li>
  <li><strong>Date</strong> : date du versement.</li>
  <li><strong>Note</strong> (optionnel) : ex. « Avance début juillet », « Urgence familiale ».</li>
</ol>
<p>Appuyez sur <strong>Enregistrer</strong>. Le solde de l''ouvrier est immédiatement recalculé.</p>

<h2 id="reglements">Les règlements</h2>
<p>Un <strong>règlement</strong> correspond à un paiement de fin de période ou de fin de chantier, destiné à solder l''ouvrier. Il s''enregistre de la même manière qu''une avance, dans l''onglet <strong>Règlements</strong>.</p>
<p>La distinction entre avance et règlement est organisationnelle — les deux réduisent le solde de l''ouvrier.</p>

<h2 id="historique-ouvrier">L''historique de l''ouvrier</h2>
<p>L''onglet <strong>Historique</strong> de la fiche ouvrier liste chronologiquement toute l''activité de cet ouvrier :</p>
<ul>
  <li>Chaque pointage (date, chantier, montant gagné)</li>
  <li>Chaque avance versée</li>
  <li>Chaque règlement effectué</li>
</ul>
<p>Cet historique vous permet de reconstituer précisément l''activité et les paiements de chaque ouvrier sur n''importe quelle période.</p>

<h2 id="supprimer-avance">Corriger une avance ou un règlement</h2>
<p>Appuyez <strong>longuement</strong> sur l''entrée concernée dans la liste, confirmez la suppression, puis ressaisissez la valeur correcte.</p>'),

-- ============================================================
-- SECTION 6 — Tableau de bord
-- ============================================================

('chantiers', 'Tableau de bord', 6, 'Comprendre le tableau de bord', 1,
'<h2 id="dashboard">Vue d''ensemble</h2>
<p>L''onglet <strong>Tableau de bord</strong> centralise toutes les données financières de votre activité en un seul écran. Toutes les valeurs sont calculées en temps réel à partir de vos pointages, encaissements et utilisations de stock — il n''y a rien à saisir ici.</p>

<h2 id="stats-globales">Indicateurs globaux</h2>
<p>En haut du tableau de bord, vous trouvez les chiffres clés de l''ensemble de votre activité :</p>
<ul>
  <li><strong>Total encaissé</strong> : somme de tous les paiements reçus sur tous les chantiers.</li>
  <li><strong>Total dépenses</strong> : coût total des matériaux + coût de la main d''œuvre, tous chantiers confondus.</li>
  <li><strong>Bénéfice global</strong> : total encaissé moins total dépenses. C''est votre résultat net sur l''ensemble des chantiers actifs.</li>
</ul>

<h2 id="par-chantier">Détail par chantier</h2>
<p>La liste des chantiers affiche pour chacun le détail financier :</p>
<ul>
  <li><strong>Encaissé</strong> : total des paiements reçus du client.</li>
  <li><strong>Dépenses</strong> : matériaux utilisés + main d''œuvre pointée.</li>
  <li><strong>Bénéfice</strong> : encaissé moins dépenses.</li>
</ul>
<p>Un bénéfice affiché en rouge indique que les dépenses dépassent les encaissements. Cela peut signifier que des paiements client ne sont pas encore enregistrés, ou que le chantier est déficitaire.</p>

<h2 id="soldes-ouvriers">Soldes des ouvriers</h2>
<p>Le tableau de bord affiche également le <strong>solde de chaque ouvrier</strong> — c''est-à-dire le montant qu''il vous reste à lui payer. Un solde élevé indique un ouvrier qui n''a pas encore été payé depuis longtemps.</p>
<p>Cette vue vous permet de décider rapidement qui payer en priorité et de vérifier que personne n''est oublié.</p>

<h2 id="mise-a-jour">Mise à jour des données</h2>
<p>Le tableau de bord se met à jour automatiquement à chaque fois que vous ajoutez ou supprimez un pointage, un encaissement ou une utilisation de matériau. Aucune action manuelle n''est nécessaire.');
