{---------------------------------------------------------------------------

Auteur : Firejocker
Site   : http://www.firejocker.com (en cours de dev a ce jour)

J'ai fait cette unité à partir de l'exemple trouvé ici :    http://support.microsoft.com/?kbid=229310
Je dois dire que j'ai galéré pour trouver quelque chose de bien utilisable sur le net,
aussi je vous en fait profité,

bien entendu, cette unité est loin d'être complete mais elle vous permettra surement de faire
le minimum sur Word,

Regardez comment tout cela fonctionne, c'est pas dur, completez la de votre contribution !

Pour écrire toutes ces fonctions, j'ai procédé ainsi :
- j'ouvre un new doc sous word
- je lance l'enregistrement d'une macro
- je fais ce que je souhaite trouver comme fonction (ex : je passe à l'indice et j'ecris quelques ligne)
- j'arrete l'enregistrement de la macro
- je regarde comment est ecrite la macro
- j'essaye sous delphi de trouver son equivalence

Envoyez toute modif à michel1@phidels.com directement si vous avez adapté ce projet "exemple"
ou à moi même : firejocker@voila.fr s'il s'agit de fonction à implémenter



Derniere Mise à Jour : 24 Nov 04
--------------------------------

    Implémentation des fonctions de remplacement de texte et de choix d'affichage de Corfoudiou

    Ajout d'une fonction qui permet de lancer une macro (a la demande de Gronimo)

    Implémentation de la fonction de Gronimo qui permet d'inserer un  image et d'en modifier
    la taille



Personne ayant participé à cette unité
--------------------------------------

- Raimbow64 (29 / 10 / 03)
    * Imprimer

- Lacroix Luc (lal) ( 29 / 04 / 04)
    * ImprimerPage

- G. B. ( 05 / 09 / 04)
    * CentrerTableau
    * InsererImage
    * ModeAffichage
    * SetupPage

- Corfoudiou (30 / 09 / 04)
    * PageDisplay
    * Remplacement

-  Gronimo (23 / 11 / 04)
    * InsererImage
}



unit DriveOleWord;

interface

type

         TOrientation = (Paysage, Portrait);

         TAlignement = (Gauche, Centre, Droit, Justifie);

         TDirection = (GaucheDir, DroiteDir, HautDir, BasDir, DebutLigne, FinLigne);



         TCouleur = (Auto,Noir,Bleu,Turquoise,VertClair,Rose,
                     Rouge,Jaune,Blanc,BleuFonce,Cyan,
                     Vert,Violet, RougeFonce,JauneFonce,
                     GrisFonce, GrisClair);

         TCote = (CoteHaut, CoteBas, CoteDroit, CoteGauche);

         TStyleLigne = (None, Single, Dot, DashSmallGap, DashLargeGap, DashDot,
                        DashDotDot, Double, Triple, ThinThickSmallGap, ThickThinSmallGap,
                        ThinThickThinSmallGap, ThinThickMedGap, ThickThinMedGap,
                        ThinThickThinMedGap,ThinThickLargeGap, ThickThinLargeGap,
                        ThinThickThinLargeGap, SingleWavy, DoubleWavy, DashDotStroked,
                        Emboss3D, Engrave3D);

         TCaractereSuite = (CS_Space, CS_Dot, CS_Dash, CS_Line);

         TDisplayPage = (wdNormalView,wdOutlineView,wdPageView,wdPrintPreview,wdMasterView,wdOnlineView);



	       function RetournerCouleur(couleur : TCouleur) : Integer;
	       function RetournerStyleTrait(Type_ligne : TStyleLigne) : Integer;


         procedure CreerInstanceDeWord(Var Instance : Variant; Visible : Boolean);
         procedure CreerNouveauDocument(Var NouveauDocument : Variant; InstanceDeWord : variant );
         procedure OuvrirUnDocument(InstanceDeWord : variant; Var DocumentOuvert : variant;Fichier : string);
         procedure SelectionnerToutLeDocument(Var Document : Variant);


         procedure Alignement(Var InstanceDeWord : Variant; Align : TAlignement);
         procedure InsererTexte(Var InstanceDeWord : Variant; LigneAInserer : string);
         procedure RetourLigne(Var InstanceDeWord : Variant; NombreDeLigne : Integer);
         Procedure CollerLePressePapier(Var InstanceDeWord : Variant);
         Procedure AllerEnFinDuFichier(Var InstanceDeWord : Variant);
         Procedure InsererLienHyperTexte(Var InstanceDeWord : Variant; Lien : string);
         procedure SauvegarderSous(Var Document : Variant; NomDuFichier : string);
         procedure Sauvegarder(Var Document : Variant);
         Procedure Imprimer(Var InstanceDeWord : Variant; NbrCopie : Integer);
         Procedure ImprimerPage(Var InstanceDeWord : Variant; Page: string; NbrCopie : Integer); {lal}

         procedure FermerDocument(Var Document : Variant);
         procedure FermerWord(Var InstanceDeWord : Variant);

         Procedure InsererTableDesMatieres(Var InstanceDeWord, Document : Variant; NiveauAffichage : Integer; InsererNumeroPage : Boolean ; AlignementDroitDesNumero : Boolean; UtiliserLienHyperTexte : Boolean; Separateur : TCaractereSuite);
  	     procedure MiseAJourChampsAuto(Var InstanceDeWord : Variant);
         procedure MiseEnForme(Var InstanceDeWord : Variant; StyleTitre : string);
         procedure FinDeParagraphe(Var InstanceDeWord : Variant);
         procedure TexteFont(Var InstanceDeWord : Variant; Police : string);
         procedure TexteGras(Var InstanceDeWord : Variant; Gras : Boolean);
         procedure TexteTaille(Var InstanceDeWord : Variant; Taille : Integer);
         procedure TexteItalique(Var InstanceDeWord : Variant; Italique : Boolean);
         procedure TexteSouligne(Var InstanceDeWord : Variant; Souligne : Boolean);
         procedure TexteExposant(Var InstanceDeWord : Variant; Exposant : Boolean);
         procedure TexteIndice(Var InstanceDeWord : Variant; Indice : Boolean);

         Procedure Activer_Corps_Document(Var InstanceDeWord : Variant);
         Procedure Activer_Entete(Var InstanceDeWord : Variant);
         Procedure Activer_Pied(Var InstanceDeWord : Variant);

         Procedure InsererSautDePage(Var InstanceDeWord : Variant);
         Procedure InsererDate(Var InstanceDeWord : Variant; TypeDate : integer; US : Boolean);

         procedure InsertionAutoNumPage(InstanceDeWord : variant);
         procedure InsertionAutoNbrPage(InstanceDeWord : variant);
         procedure InsertionAutoDate(InstanceDeWord : variant);
         procedure InsertionAutoHeure(InstanceDeWord : variant);


         Procedure SupprimerXCaractere(Var InstanceDeWord : Variant; x, sens : integer);

         Procedure Interligne(Var InstanceDeWord : Variant; Valeur : Integer);
         Procedure IndentationGauche(Var InstanceDeWord : Variant; Valeur : Integer);
         Procedure IndentationDroite(Var InstanceDeWord : Variant; Valeur : Integer);

         Procedure DeplacerCurseur(Var InstanceDeWord : Variant; direction : TDirection; NbrFois : integer);


         procedure CreerTableau(Var InstanceDeWord,Document : Variant; NombreDeLigne,NombreDeColonne : Integer);

	 procedure MiseEnFormeTableau(Var Document : Variant; NumeroTableau : integer; Type_ligne : TStyleLigne);
         procedure MiseEnFormeCelluleTableau(Var Document : Variant; NumeroTableau, NumeroDeColonne, NumeroDeLigne : integer; CoteGaucheCase, CoteDroitCase, CoteHautCase, CoteBasCase : TStyleLigne);
         procedure MiseEnFormeCoteCelluleTableau(Var Document : Variant; NumeroTableau, NumeroDeColonne, NumeroDeLigne : integer; Cote : TCote; Type_ligne : TStyleLigne);

         procedure TableauLargeurCase(Var Document : Variant; NumeroDuTableau, NumeroDeColonne, Taille : Integer);

         procedure TableauCouleurLigne(Var Document : Variant; NumeroDuTableau, NumeroDeLigne: Integer; Couleur : TCouleur);
         procedure TableauCouleurColonne(Var Document : Variant; NumeroDuTableau, NumeroDeColonne : Integer; Couleur : TCouleur);
         procedure TableauCouleurCase(Var Document : Variant; NumeroDuTableau, NumeroDeColonne, NumeroDeLigne : Integer; Couleur : TCouleur);

         procedure TableauGrasLigne(Var Document : Variant; NumeroDuTableau, NumeroDeLigne : Integer; Gras : Boolean);
         procedure TableauGrasColonne(Var Document : Variant; NumeroDuTableau, NumeroDeColonne : Integer; Gras : Boolean);
         procedure TableauGrasCase(Var Document : Variant; NumeroDuTableau, NumeroDeColonne,NumeroDeLigne : Integer; Gras : Boolean);

         procedure TableauPlacerCurseurDansCase(Var InstanceDeWord, Document : Variant; NumeroDuTableau, NumeroDeColonne,NumeroDeLigne : Integer);

         procedure TableauTexteDansCase(Var Document : Variant; NumeroDuTableau, NumeroDeColonne,NumeroDeLigne : Integer; Chaine : String);

         procedure TableauAlignementCase(Var Document : Variant; NumeroDuTableau, NumeroDeColonne, NumeroDeLigne : Integer; Align : TAlignement);
         procedure TableauAlignement(Var Document : Variant; NumeroDuTableau, NombreDeLigne : Integer; Align : TAlignement);
         procedure TableauAlignementLigne(Var Document : Variant; NumeroDuTableau, NumeroDeLigne : Integer; Align : TAlignement);


         Procedure TableauInsererLienHyperTexte(Var Document : Variant; NumeroDuTableau, NumeroDeColonne,NumeroDeLigne : Integer; Lien : String);

         procedure TableauCollerLePressePapier(Var Document : Variant; NumeroDuTableau, NumeroDeColonne,NumeroDeLigne : Integer);

         Procedure CentrerTableau(Var Document : Variant; NumeroDuTableau: integer);
         Procedure InsererImage(Var InstanceDeWord : Variant; image: string);  overload;
         Procedure InsererImage(Var InstanceDeWord : Variant; image: string; H:Extended; W :Extended); overload;
         Procedure ModeAffichage(Var InstanceDeWord : Variant; Mode: integer);
         Procedure SetupPage(Var Document : Variant; Orientation: TOrientation);

          Procedure PageDisplay(var Document : Variant;Affichage : TDisplayPage);
          Procedure Remplacement(var Document : Variant;Source, Cible : String);

         Procedure LancerMacro(Var Instance : Variant; NomMacro : String);


implementation

    uses ComObj, SysUtils;


    // Tableau de valeur :
    // http://www.geocities.com/ResearchTriangle/9834/msword8.htm

    Const wdAlignParagraphLeft = 0;
    Const wdAlignParagraphCenter = 1;
    Const wdAlignParagraphRight = 2;
    Const wdAlignParagraphJustify = 3;
    Const wdAdjustNone = 0;
    Const wdGray25 = 16;
    Const wdGoToLine = 3;
    Const wdGoToLast = -1;
    Const wdSendToNewDocument = 0;


    Const wdSeekMainDocument = 0;
    Const wdSeekCurrentPageHeader = 9;
    Const wdSeekCurrentPageFooter = 10;

    // Impression
    Const wdPrintRangeOfPages = $00000004;                  { lal 29.04.2004 }


    // Bordure de tableau
    Const wdBorderLeft = -2;
    Const wdBorderRight = -4;
    Const wdBorderTop = -1;
    Const wdBorderBottom = -3;
    Const wdBorderHorizontal = -5;
    Const wdBorderVertical = -6;
    Const wdBorderDiagonalDown = -7;
    Const wdBorderDiagonalUp = -8;

    // Style de ligne pour tableau
    Const wdLineStyleNone = 0;
    Const wdLineStyleSingle = 1;
    Const wdLineStyleDot = 2;
    Const wdLineStyleDashSmallGap = 3;
    Const wdLineStyleDashLargeGap = 4;
    Const wdLineStyleDashDot = 5;
    Const wdLineStyleDashDotDot = 6;
    Const wdLineStyleDouble = 7;
    Const wdLineStyleTriple = 8;
    Const wdLineStyleThinThickSmallGap = 9;
    Const wdLineStyleThickThinSmallGap = 10;
    Const wdLineStyleThinThickThinSmallGap = 11;
    Const wdLineStyleThinThickMedGap = 12;
    Const wdLineStyleThickThinMedGap = 13;
    Const wdLineStyleThinThickThinMedGap = 14;
    Const wdLineStyleThinThickLargeGap = 15;
    Const wdLineStyleThickThinLargeGap = 16;
    Const wdLineStyleThinThickThinLargeGap = 17;
    Const wdLineStyleSingleWavy = 18;
    Const wdLineStyleDoubleWavy = 19;
    Const wdLineStyleDashDotStroked = 20;
    Const wdLineStyleEmboss3D = 21;
    Const wdLineStyleEngrave3D = 22;



    //Caractere de Séparation de table des matieres
    Const wdTabLeaderSpaces = 0;
    Const wdTabLeaderDots = 1;
    Const wdTabLeaderDashes = 2;
    Const wdTabLeaderLines = 3;


    // insertion auto
    Const wdFieldNumPages = 26;
    Const wdFieldDate = 31;
    Const wdFieldTime = 32;
    Const wdFieldPage = 33;


    Const wdOrientPortrait = 0;
    Const wdOrientLandscape = 1;

    Const wdAlignRowLeft = 0;
    Const wdAlignRowCenter = 1;
    Const wdAlignRowRight = 2;

    // WdFindWrap
    Const wdFindStop = 0;
    Const wdFindContinue = 1;
    Const wdFindAsk = 2;

    // WdReplace
    Const wdReplaceNone = 0;
    Const wdReplaceOne = 1;
    Const wdReplaceAll = 2;




    //********************************************************************************************//
    //                               Fonctions Creation Doc                                       //
    //********************************************************************************************//

    // Cette procedure permet de creer une Instance de Word
    procedure CreerInstanceDeWord(Var Instance : Variant; Visible : Boolean);
    begin
        Instance := CreateOleObject('Word.Application');
        Instance.Visible := Visible;
    end;


    // cette procedure permet de creer un nouveau document à partir de l'instance de Word
    procedure CreerNouveauDocument(Var NouveauDocument : Variant; InstanceDeWord : variant );
    begin
         NouveauDocument := InstanceDeWord.Documents.Add();
    end;


    // cette procedure permet de d'ouvrir un document word existant
    procedure OuvrirUnDocument(InstanceDeWord : variant; Var DocumentOuvert : variant;Fichier : string);
    begin
         DocumentOuvert := InstanceDeWord.Documents.Open(Fichier);
    end;

    // Cette procedure permet de sélectionner tout le contenu du document
    procedure SelectionnerToutLeDocument(Var Document : Variant);
    begin
         Document.Select;
    end;

    // cette procedure permet de sauvegarder le document sous le nom souhaité
    procedure SauvegarderSous(Var Document : Variant; NomDuFichier : string);
    begin
         Document.SaveAs(NomDuFichier);
    end;

    // cette procedure permet de sauvegarder le document
    procedure Sauvegarder(Var Document : Variant);
    begin
         Document.Save;
    end;


    procedure FermerDocument(Var Document : Variant);
    begin
         Document.Close(False);
    end;

    procedure FermerWord(Var InstanceDeWord : Variant);
    begin
         InstanceDeWord.quit;
    end;

    Procedure Imprimer(Var InstanceDeWord : Variant; NbrCopie : Integer);
    begin
        InstanceDeWord.printout(copies := NbrCopie);
    end;

    { lal }
    Procedure ImprimerPage(Var InstanceDeWord : Variant; Page: string; NbrCopie : Integer);
    begin
        InstanceDeWord.printout(Range := wdPrintRangeOfPages, Pages := Page,
                                copies := NbrCopie);
{    Application.PrintOut FileName:="", Range:=wdPrintRangeOfPages, Item:= _
        wdPrintDocumentContent, Copies:=1, Pages:="1", PageType:=wdPrintAllPages, _
         Collate:=True, Background:=True, PrintToFile:=False
}
    end;

    //********************************************************************************************//
    //                               Fonctions Du Document                                        //
    //********************************************************************************************//

    // Cette fonction permet d'insérer un table des matières
    Procedure InsererTableDesMatieres(Var InstanceDeWord, Document : Variant; NiveauAffichage : Integer; InsererNumeroPage : Boolean ; AlignementDroitDesNumero : Boolean; UtiliserLienHyperTexte : Boolean; Separateur : TCaractereSuite);
    var
      Sep : Integer;
    begin
        Document.TablesOfContents.Add(Range := InstanceDeWord.Selection.Range,
                                      IncludePageNumbers := InsererNumeroPage,
                                      RightAlignPageNumbers := AlignementDroitDesNumero,
                                      LowerHeadingLevel := NiveauAffichage,
                                      UseHyperlinks := UtiliserLienHyperTexte
                                      );

        Sep := wdTabLeaderSpaces;
        Case Separateur of
            CS_Dot : Sep := wdTabLeaderDots;
            CS_Dash: Sep := wdTabLeaderDashes;
            CS_Line: Sep := wdTabLeaderLines;
        end;
        Document.TablesOfContents.item(1).TabLeader := Sep;

        Document.TablesOfContents.Format := 0;

    end;

    // Cette procedure permet de mettre à jour des champs automatique lorsque le curseur est dessus
    // genre : date nom du fichier...
    procedure MiseAJourChampsAuto(Var InstanceDeWord : Variant);
    begin
         InstanceDeWord.Selection.Fields.Update;
    end;


        // Cette procedure permet de séelctionner la mise en forme du texte(normal, titre1...);
    procedure MiseEnForme(Var InstanceDeWord : Variant; StyleTitre : string);
    begin
         InstanceDeWord.Selection.Style := StyleTitre;
    end;

    // Cette procedure permet de retourner à la ligne "normalement"
    // ex : met fin à la mise en forme d'un "titre 1"
    procedure FinDeParagraphe(Var InstanceDeWord : Variant);
    begin
         InstanceDeWord.Selection.TypeParagraph;
    end;



    // Cette procedure permet d'inserer du texte sur le document Word selectionne
    // Il faut passer l'Instance de Word et Non le document
    procedure InsererTexte(Var InstanceDeWord : Variant; LigneAInserer : string);
    begin
         InstanceDeWord.Selection.TypeText(LigneAInserer);
    end;

    // Cette procedure permet de rendre gras la police
    // Il faut passer l'Instance de Word et Non le document
    procedure TexteGras(Var InstanceDeWord : Variant; Gras : Boolean);
    begin
         InstanceDeWord.selection.font.Bold := Gras;
    end;


    // Cette procedure permet de changer de police
    // Il faut passer l'Instance de Word et Non le document
    procedure TexteFont(Var InstanceDeWord : Variant; Police : string);
    begin
         InstanceDeWord.selection.font.name := Police;
    end;


    // Cette procedure met la police en souligne
    // Il faut passer l'Instance de Word et Non le document
    procedure TexteSouligne(Var InstanceDeWord : Variant; Souligne : Boolean);
    begin
         InstanceDeWord.selection.font.Underline := Souligne;
    end;

    // Cette procedure permet de donner 1 taille à la police
    // Il faut passer l'Instance de Word et Non le document
    procedure TexteTaille(Var InstanceDeWord : Variant; Taille : Integer);
    begin
         InstanceDeWord.Selection.Font.Size := Taille;
    end;

    // Cette procedure met la police en exposant
    // Il faut passer l'Instance de Word et Non le document
    procedure TexteExposant(Var InstanceDeWord : Variant; Exposant : Boolean);
    begin
         InstanceDeWord.Selection.Font.Superscript := Exposant;
    end;


    // Cette procedure met la police en indice
    // Il faut passer l'Instance de Word et Non le document
    procedure TexteIndice(Var InstanceDeWord : Variant; Indice : Boolean);
    begin
         InstanceDeWord.Selection.Font.Subscript := Indice;
    end;



    // Cette procedure met en italique la police
    // Il faut passer l'Instance de Word et Non le document
    procedure TexteItalique(Var InstanceDeWord : Variant; Italique : Boolean);
    begin
         InstanceDeWord.selection.font.Italic := Italique;
    end;


    // Cette procedure permet de selectionner l'alignement souhaité
    // Il faut passer l'Instance de Word et Non le document
    procedure Alignement(Var InstanceDeWord : Variant; Align : TAlignement);
    begin
         case Align of
              Gauche : InstanceDeWord.Selection.ParagraphFormat.Alignment := wdAlignParagraphLeft;
              Droit : InstanceDeWord.Selection.ParagraphFormat.Alignment := wdAlignParagraphRight;
              Centre : InstanceDeWord.Selection.ParagraphFormat.Alignment := wdAlignParagraphCenter;
              Justifie : InstanceDeWord.Selection.ParagraphFormat.Alignment := wdAlignParagraphJustify;
         end;
    end;


    // Permet de sauter des Lignes
    // Il faut passer l'Instance de Word et Non le document
    procedure RetourLigne(Var InstanceDeWord : Variant; NombreDeLigne : Integer);
    var
       i : Integer;
    begin
         for i := 1 to NombreDeLigne do InstanceDeWord.Selection.TypeText(#10);
         //InstanceDeWord.Selection.TypeParagraph;
    end;



    // Cette procedure permet de coller le presse papier sur
    // le document Word
    Procedure CollerLePressePapier(Var InstanceDeWord : Variant);
    begin
         InstanceDeWord.Selection.paste;
    end;

    // cette procedure fait un saut en fin du fichier
    Procedure AllerEnFinDuFichier(Var InstanceDeWord : Variant);
    begin
         InstanceDeWord.Selection.GoTo(wdGotoLine,wdGoToLast);
    end;

    // cette porcedure insere un lien hypertexte
    Procedure InsererLienHyperTexte(Var InstanceDeWord : Variant; Lien : string);
    begin
         InstanceDeWord.Selection.Hyperlinks.Add(InstanceDeWord.Selection.Range,Lien);
    end;

    // Cette fonction active l'entete du document
    Procedure Activer_Entete(Var InstanceDeWord : Variant);
    begin
         InstanceDeWord.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;
    end;

    // Cette fonction active le pied du document
    Procedure Activer_Pied(Var InstanceDeWord : Variant);
    begin
         InstanceDeWord.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageFooter;
    end;

    // Cette fonction active le document
    Procedure Activer_Corps_Document(Var InstanceDeWord : Variant);
    begin
         InstanceDeWord.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
    end;

    // cette fonction permet de changer l'interligne
    Procedure Interligne(Var InstanceDeWord : Variant; Valeur : Integer);
    begin
         InstanceDeWord.Selection.ParagraphFormat.LineSpacing := Valeur;
    end;

    // cette fonction permet de changer l'indentation de gauche
    Procedure IndentationGauche(Var InstanceDeWord : Variant; Valeur : Integer);
    begin
         InstanceDeWord.Selection.ParagraphFormat.LeftIndent := Valeur;
    end;

    // cette fonction permet de changer l'indentation de droite
    Procedure IndentationDroite(Var InstanceDeWord : Variant; Valeur : Integer);
    begin
         InstanceDeWord.Selection.ParagraphFormat.RightIndent := Valeur;
    end;

    // cette procedure permet d'inserer un saut de page
    Procedure InsererSautDePage(Var InstanceDeWord : Variant);
    begin
         InstanceDeWord.Selection.InsertBreak;
    end;



    // Cette procedure permet de deplacer le curseur X fois dans la direction souhaité
    Procedure DeplacerCurseur(Var InstanceDeWord : Variant; direction : TDirection; NbrFois : integer);
    var
       i : integer;
    begin
         case direction of
              GaucheDir :  for i:= 1 to NbrFois do InstanceDeWord.Selection.MoveLeft;
              DroiteDir :  for i:= 1 to NbrFois do InstanceDeWord.Selection.MoveRight;
              HautDir :  for i:= 1 to NbrFois do InstanceDeWord.Selection.MoveUp;
              BasDir :  for i:= 1 to NbrFois do InstanceDeWord.Selection.MoveDown;
              FinLigne : InstanceDeWord.Selection.EndKey;
              DebutLigne : InstanceDeWord.Selection.HomeKey;
         end;
    end;

    // cette procedure permet d'inserer un saut de page
    Procedure InsererDate(Var InstanceDeWord : Variant; TypeDate : integer; US : Boolean);
    var
       ChaineDate : string;
    begin

         case TypeDate of
              1 : ChaineDate := 'jj/MM/aaaa';
              2 : ChaineDate := 'jjjj j MMMM aaaa';
              3 : ChaineDate := 'j MMMM aaaa';
              4 : ChaineDate := 'jj/MM/aa';
              5 : ChaineDate := 'aaaa-MM-jj';
              6 : ChaineDate := 'j-MMM-aa';
              7 : ChaineDate := 'jj.MM.aaaa';
              8 : ChaineDate := 'j MMM. aa';
              9 : ChaineDate := 'jj.MM.aa';
              10 : ChaineDate := 'MMMM aa';
              11 : ChaineDate := 'MMM-aa';
              12 : ChaineDate := 'jj/MM/aaaa HH:mm';
              13 : ChaineDate := 'jj/MM/aaaa HH:mm:ss';
              14 : ChaineDate := 'h:mm';
              15 : ChaineDate := 'h:mm:ss';
              16 : ChaineDate := 'HH:mm';
              17 : ChaineDate := 'HH:mm:ss';
         end;


         IF Us Then
         begin
                ChaineDate := StringReplace(ChaineDate,'j','d',[rfReplaceAll,rfIgnoreCase]);
                ChaineDate := StringReplace(ChaineDate,'a','y',[rfReplaceAll,rfIgnoreCase]);
         end;

         InstanceDeWord.Selection.InsertDateTime(ChaineDate);


    end;

    // cette fonction permet de rajouter le numero de page en champ automatique
    procedure InsertionAutoNumPage(InstanceDeWord : variant);
    begin
        InstanceDeWord.Selection.fields.add(Range:=InstanceDeWord.Selection.Range, Type:=wdFieldPage);
    end;

    // cette fonction permet de rajouter le nombre total de page en champ automatique
    procedure InsertionAutoNbrPage(InstanceDeWord : variant);
    begin
        InstanceDeWord.Selection.fields.add(Range:=InstanceDeWord.Selection.Range, Type:=wdFieldNumPages);
    end;

    // cette fonction permet de rajouter la date en champ automatique
    procedure InsertionAutoDate(InstanceDeWord : variant);
    begin
        InstanceDeWord.Selection.fields.add(Range:=InstanceDeWord.Selection.Range, Type:=wdFieldDate);
    end;

    // cette fonction permet de rajouter l'heure en champ automatique
    procedure InsertionAutoHeure(InstanceDeWord : variant);
    begin
        InstanceDeWord.Selection.fields.add(Range:=InstanceDeWord.Selection.Range, Type:=wdFieldTime);
    end;

    // Cette fonction permet de supprimer X caracteres
    // sens : 1 : simule la touche del
    //        2 : simule la touche suppr
    Procedure SupprimerXCaractere(Var InstanceDeWord : Variant; x,sens : integer);
    var
       i : integer;
    begin
         case sens of
              1 : for i := 1 to X do InstanceDeWord.selection.TypeBackspace;
              2 : for i := 1 to X do InstanceDeWord.selection.Delete;
         end;
    end;


    //********************************************************************************************//
    //                               Fonctions Special Tableau                                    //
    //********************************************************************************************//



    // Cette procedure permet de creer un nouveau tableau
    procedure CreerTableau(Var InstanceDeWord, Document : Variant; NombreDeLigne,NombreDeColonne : Integer);
    begin
              Document.Tables.add(InstanceDeWord.selection.Range,NombreDeLigne,NombreDeColonne);
    end;

    // cette procedure permet de choisir le type de trait d'un coté d'une cellule d'un tableau
    procedure MiseEnFormeCelluleTableau(Var Document : Variant; NumeroTableau, NumeroDeColonne, NumeroDeLigne : integer; CoteGaucheCase, CoteDroitCase, CoteHautCase, CoteBasCase : TStyleLigne);
    begin
         MiseEnFormeCoteCelluleTableau(Document,NumeroTableau,NumeroDeColonne,NumeroDeLigne,CoteHaut,CoteHautCase);
         MiseEnFormeCoteCelluleTableau(Document,NumeroTableau,NumeroDeColonne,NumeroDeLigne,CoteBas,CoteBasCase);
         MiseEnFormeCoteCelluleTableau(Document,NumeroTableau,NumeroDeColonne,NumeroDeLigne,CoteDroit,CoteDroitCase);
         MiseEnFormeCoteCelluleTableau(Document,NumeroTableau,NumeroDeColonne,NumeroDeLigne,CoteGauche,CoteGaucheCase);
    end;

        // cette procedure permet de choisir le type de trait d'un coté d'une cellule d'un tableau
    procedure MiseEnFormeCoteCelluleTableau(Var Document : Variant; NumeroTableau, NumeroDeColonne, NumeroDeLigne : integer; Cote : TCote; Type_ligne : TStyleLigne);
    var
       StyleLigne : Integer;
       Border : Integer;
    begin
         Case Cote of
              CoteHaut : Border := wdBorderTop;
              CoteBas : Border := wdBorderBottom;
              CoteDroit : Border := wdBorderRight;
              CoteGauche : Border := wdBorderLeft;
         end;
         StyleLigne := RetournerStyleTrait(Type_ligne);
         Document.Tables.Item(NumeroTableau).Cell(NumeroDeLigne,NumeroDeColonne).borders.item(Border).LineStyle := StyleLigne;
    end;

    // Cette procédure permet de mettre en forme un tableau
    procedure MiseEnFormeTableau(Var Document : Variant; NumeroTableau : integer; Type_ligne : TStyleLigne);
    var
       StyleLigne : Integer;
    begin

         StyleLigne := RetournerStyleTrait(Type_ligne);

         // style de trait
         Document.Tables.item(NumeroTableau).borders.item(wdBorderLeft).LineStyle := StyleLigne;
         Document.Tables.item(NumeroTableau).borders.item(wdBorderRight).LineStyle := StyleLigne;
         Document.Tables.item(NumeroTableau).borders.item(wdBorderTop).LineStyle := StyleLigne;
         Document.Tables.item(NumeroTableau).borders.item(wdBorderBottom).LineStyle := StyleLigne;
         Document.Tables.item(NumeroTableau).borders.item(wdBorderHorizontal).LineStyle := StyleLigne;
         Document.Tables.item(NumeroTableau).borders.item(wdBorderVertical).LineStyle := StyleLigne;

    end;



    // Cette procedure permet de selectionner l'alignement souhaité  dans une case du tableau
    // Il faut passer le document et Non l'Instance de Word
    procedure TableauAlignementCase(Var Document : Variant; NumeroDuTableau, NumeroDeColonne, NumeroDeLigne : Integer; Align : TAlignement);
    begin
    //Document.Tables.Item(NumeroDuTableau).Cell(NumeroDeLigne,NumeroDeColonne).Range.Paragraphs.Alignment := wdAlignParagraphCenter;
         case Align of
              Gauche : Document.Tables.Item(NumeroDuTableau).Cell(NumeroDeLigne,NumeroDeColonne).Range.Paragraphs.Alignment := wdAlignParagraphLeft;
              Droit : Document.Tables.Item(NumeroDuTableau).Cell(NumeroDeLigne,NumeroDeColonne).Range.Paragraphs.Alignment := wdAlignParagraphRight;
              Centre : Document.Tables.Item(NumeroDuTableau).Cell(NumeroDeLigne,NumeroDeColonne).Range.Paragraphs.Alignment := wdAlignParagraphCenter;
              Justifie : Document.Tables.Item(NumeroDuTableau).Cell(NumeroDeLigne,NumeroDeColonne).Range.Paragraphs.Alignment := wdAlignParagraphJustify;
         end;
    end;


    // Cette procedure permet de selectionner l'alignement souhaité  dans une ligne du tableau
    // Il faut passer le document et Non l'Instance de Word
    procedure TableauAlignementLigne(Var Document : Variant; NumeroDuTableau, NumeroDeLigne : Integer; Align : TAlignement);
    begin
         case Align of
              Gauche : Document.Tables.Item(NumeroDuTableau).Rows.Item(NumeroDeLigne).Range.Paragraphs.Alignment := wdAlignParagraphLeft;
              Droit : Document.Tables.Item(NumeroDuTableau).Rows.Item(NumeroDeLigne).Range.Paragraphs.Alignment := wdAlignParagraphRight;
              Centre : Document.Tables.Item(NumeroDuTableau).Rows.Item(NumeroDeLigne).Range.Paragraphs.Alignment := wdAlignParagraphCenter;
              Justifie : Document.Tables.Item(NumeroDuTableau).Rows.Item(NumeroDeLigne).Range.Paragraphs.Alignment := wdAlignParagraphJustify;
         end;
    end;

// j'ai pô trouvé pour faire l'alignement d'une colonne, si vous trouvez, n'hesitez pas à la rajouter


    // Cette procedure permet de selectionner l'alignement souhaité  dans un tableau
    // Il faut passer le document et Non l'Instance de Word
    procedure TableauAlignement(Var Document : Variant; NumeroDuTableau, NombreDeLigne : Integer; Align : TAlignement);
    var
       i : integer;
    begin
         for i := 1 to NombreDeLigne do
         begin
               case Align of
                    Gauche : Document.Tables.Item(NumeroDuTableau).Rows.Item(i).Range.Paragraphs.Alignment := wdAlignParagraphLeft;
                    Droit : Document.Tables.Item(NumeroDuTableau).Rows.Item(i).Range.Paragraphs.Alignment := wdAlignParagraphRight;
                    Centre : Document.Tables.Item(NumeroDuTableau).Rows.Item(i).Range.Paragraphs.Alignment := wdAlignParagraphCenter;
                    Justifie : Document.Tables.Item(NumeroDuTableau).Rows.Item(i).Range.Paragraphs.Alignment := wdAlignParagraphJustify;
               end;
         end;
    end;




    // Cette procedure permet de configurer la largeur d'une colonne du tableau
    // Il faut passer le document et Non l'Instance de Word
    procedure TableauLargeurCase(Var Document : Variant; NumeroDuTableau, NumeroDeColonne, Taille : Integer);
    begin
              Document.Tables.Item(NumeroDuTableau).Columns.Item(NumeroDeColonne).SetWidth(Taille,wdAdjustNone);
    end;


    // Cette procedure permet de configurer la couleur d'une ligne du tableau
    // Il faut passer le document et Non l'Instance de Word
    procedure TableauCouleurLigne(Var Document : Variant; NumeroDuTableau, NumeroDeLigne : Integer; Couleur : TCouleur);
    var
       Coul : Integer;
    begin
         coul := RetournerCouleur(Couleur);
         Document.Tables.Item(NumeroDuTableau).Rows.Item(NumeroDeLigne).Cells.Shading.BackgroundPatternColorIndex := Coul;

    end;


    // Cette procedure permet de configurer la couleur d'une colonne du tableau
    // Il faut passer le document et Non l'Instance de Word
    procedure TableauCouleurColonne(Var Document : Variant; NumeroDuTableau, NumeroDeColonne : Integer; Couleur : TCouleur);
    var
       Coul : Integer;
    begin
         coul := RetournerCouleur(Couleur);
         Document.Tables.Item(NumeroDuTableau).Columns.Item(NumeroDeColonne).Cells.Shading.BackgroundPatternColorIndex := Coul;

    end;


    // Cette procedure permet de configurer la couleur d'une colonne du tableau
    // Il faut passer le document et Non l'Instance de Word
    procedure TableauCouleurCase(Var Document : Variant; NumeroDuTableau, NumeroDeColonne, NumeroDeLigne : Integer; Couleur : TCouleur);
    var
       Coul : Integer;
    begin
         coul := RetournerCouleur(Couleur);
         Document.Tables.Item(NumeroDuTableau).Cell(NumeroDeLigne,NumeroDeColonne).Shading.BackgroundPatternColorIndex := Coul;
        // Document.Tables.Item(NumeroDuTableau).Cell(NumeroDeLigne,NumeroDeColonne).Range.Bold := Gras;

    end;




    // Cette procedure permet de rendre gras la police de toute une colonne
    // Il faut passer le document et Non l'Instance de Word
    procedure TableauGrasColonne(Var Document : Variant; NumeroDuTableau, NumeroDeColonne : Integer; Gras : Boolean);
    begin
         Document.Tables.Item(NumeroDuTableau).Columns.Item(NumeroDeColonne).Range.Bold := Gras;
    end;


    // Cette procedure permet de rendre gras la police de toute une ligne
    // Il faut passer le document et Non l'Instance de Word
    procedure TableauGrasLigne(Var Document : Variant; NumeroDuTableau, NumeroDeLigne : Integer; Gras : Boolean);
    begin
         Document.Tables.Item(NumeroDuTableau).Rows.Item(NumeroDeLigne).Range.Bold := Gras;
    end;

    // Cette procedure permet de rendre gras la police d'une case
    // Il faut passer le document et Non l'Instance de Word
    procedure TableauGrasCase(Var Document : Variant; NumeroDuTableau, NumeroDeColonne,NumeroDeLigne : Integer; Gras : Boolean);
    begin
         Document.Tables.Item(NumeroDuTableau).Cell(NumeroDeLigne,NumeroDeColonne).Range.Bold := Gras;
    end;



    // Cette procedure permet de coller le presse papier dans une case du tableau
    procedure TableauCollerLePressePapier(Var Document : Variant; NumeroDuTableau, NumeroDeColonne,NumeroDeLigne : Integer);
    begin
         Document.Tables.Item(NumeroDuTableau).Cell(NumeroDeLigne,NumeroDeColonne).Range.paste;
    end;

    // cette procedure permet de placer le curseur dans la case souhaite dun tableau
    procedure TableauPlacerCurseurDansCase(Var InstanceDeWord,Document : Variant; NumeroDuTableau, NumeroDeColonne,NumeroDeLigne : Integer);
    begin
         Document.Tables.Item(NumeroDuTableau).Cell(NumeroDeLigne,NumeroDeColonne).Range.select;
         DeplacerCurseur(InstanceDeWord,DebutLigne,0); // positionner au debut de la case
    end;


    // Cette procedure permet d'ecrire dans une case du tableau
    // Il faut passer le document et Non l'Instance de Word
    procedure TableauTexteDansCase(Var Document : Variant; NumeroDuTableau, NumeroDeColonne,NumeroDeLigne : Integer; Chaine : String);
    begin
         Document.Tables.Item(NumeroDuTableau).Cell(NumeroDeLigne,NumeroDeColonne).Range.InsertAfter(Chaine);
    end;

    // cette porcedure insere un lien hypertexte dans une case du tableau
    Procedure TableauInsererLienHyperTexte(Var Document : Variant; NumeroDuTableau, NumeroDeColonne,NumeroDeLigne : Integer; Lien : String);
    begin
         Document.Tables.Item(NumeroDuTableau).Cell(NumeroDeLigne,NumeroDeColonne).Range.Hyperlinks.Add(Document.Tables.Item(NumeroDuTableau).Cell(NumeroDeLigne,NumeroDeColonne).Range,Lien);
    end;


    // Cette procedure permet d'insérer une image à partir d'un emplacement déterminé
    Procedure InsererImage(Var InstanceDeWord : Variant; image: string);
    begin
        InstanceDeWord.Selection.InlineShapes.AddPicture(image, False, True);
    end;

    // Idem avec  choix de la taille
    Procedure InsererImage(Var InstanceDeWord : Variant; image: string; H:Extended; W :Extended);
    var Shape :Variant;
    begin
       Shape := InstanceDeWord.Selection.InlineShapes.AddPicture(image,False, True);
       Shape.Height:=Shape.Height*H;
       Shape.Width:=Shape.Width*W;
    end;











    //********************************************************************************************//
    //                               Fonctions Generale                                           //
    //********************************************************************************************//


    // Cette fonction associe la couleur "texte" a son entier correspondant
    function RetournerCouleur(couleur : TCouleur) : Integer;
    var
       Coul : Integer;
    begin
         Coul := -1;
         case Couleur of
              Auto : Coul := 0;
              Noir : Coul := 1;
              Bleu : Coul := 2;
              Turquoise : Coul := 3;
              VertClair : Coul := 4;
              Rose : Coul := 5;
              Rouge : Coul := 6;
              Jaune : Coul := 7;
              Blanc : Coul := 8;
              BleuFonce : Coul := 9;
              Cyan : Coul := 10;
              Vert : Coul := 11;
              Violet : Coul := 12;
              RougeFonce : Coul := 13;
              JauneFonce : Coul := 14;
              GrisFonce : Coul := 15;
              GrisClair : Coul := 16;
         end;
         RetournerCouleur := Coul;
    end;



    // Cette fonction retourne le style de trait
    function RetournerStyleTrait(Type_ligne : TStyleLigne) : Integer;
    begin

         case Type_ligne of
              None : RetournerStyleTrait := wdLineStyleNone;
              Single : RetournerStyleTrait := wdLineStyleSingle;
              Dot : RetournerStyleTrait := wdLineStyleDot;
              DashSmallGap : RetournerStyleTrait :=wdLineStyleDashSmallGap;
              DashLargeGap : RetournerStyleTrait := wdLineStyleDashLargeGap;
              DashDot : RetournerStyleTrait := wdLineStyleDashDot;
              DashDotDot : RetournerStyleTrait := wdLineStyleDashDotDot;
              Double : RetournerStyleTrait := wdLineStyleDouble;
              Triple : RetournerStyleTrait := wdLineStyleTriple;
              ThinThickSmallGap : RetournerStyleTrait := wdLineStyleThinThickSmallGap;
              ThickThinSmallGap : RetournerStyleTrait := wdLineStyleThickThinSmallGap;
              ThinThickThinSmallGap : RetournerStyleTrait := wdLineStyleThinThickThinSmallGap;
              ThinThickMedGap : RetournerStyleTrait := wdLineStyleThinThickMedGap;
              ThickThinMedGap : RetournerStyleTrait := wdLineStyleThickThinMedGap;
              ThinThickThinMedGap : RetournerStyleTrait := wdLineStyleThinThickThinMedGap;
              ThinThickLargeGap : RetournerStyleTrait := wdLineStyleThinThickLargeGap;
              ThickThinLargeGap : RetournerStyleTrait := wdLineStyleThickThinLargeGap;
              ThinThickThinLargeGap : RetournerStyleTrait := wdLineStyleThinThickThinLargeGap;
              SingleWavy : RetournerStyleTrait := wdLineStyleSingleWavy;
              DoubleWavy : RetournerStyleTrait := wdLineStyleDoubleWavy;
              DashDotStroked : RetournerStyleTrait := wdLineStyleDashDotStroked;
              Emboss3D  : RetournerStyleTrait := wdLineStyleEmboss3D;
              Engrave3D : RetournerStyleTrait := wdLineStyleEngrave3D;
         end;
    end;



     // Cette procedure permet de centrer le tableau
    procedure CentrerTableau(Var Document : Variant; NumeroDuTableau:integer);
    begin
        Document.Tables.Item(NumeroDuTableau).Rows.Alignment := wdAlignRowCenter;
    end;


    // Cette procedure permet de forcer un mode d'affichage
    // si on veut mettre une entête, il faut passer en mode 3 !!
    Procedure ModeAffichage(Var InstanceDeWord : Variant; Mode: integer);
    Begin
        InstanceDeWord.ActiveWindow.View.Type := Mode; //2= mode plan  3= mode page
    end;


    // Cette procedure permet de change la mise en page
    Procedure SetupPage(Var Document : Variant; Orientation: TOrientation);
    Begin
        case Orientation of
              Paysage : Document.PageSetup.Orientation := wdOrientLandscape;
              Portrait : Document.PageSetup.Orientation := wdOrientPortrait;
         end;
    end;


    // Cette procedure permet de lancer une macro connaissant son nom
    procedure LancerMacro(Var Instance : Variant; NomMacro : String);
     begin
          Instance.Run(MacroName:=NomMacro);
     end;

    // Auteur : Corfoudiou
    procedure PageDisplay(var Document : Variant;Affichage : TDisplayPage);
    Begin
        case Affichage of
        wdNormalView : Document.ActiveWindow.ActivePane.View.Type := 1;
        wdOutlineView : Document.ActiveWindow.ActivePane.View.Type := 2;
        wdPageView : Document.ActiveWindow.ActivePane.View.Type := 3;
        wdPrintPreview : Document.ActiveWindow.ActivePane.View.Type := 4;
        wdMasterView : Document.ActiveWindow.ActivePane.View.Type := 5;
        wdOnlineView : Document.ActiveWindow.ActivePane.View.Type := 6;
        end;
    end;

    // Auteur : Corfoudiou
    // cette procedure permet de remplacer du texte par un autre
    procedure Remplacement(var Document : Variant;Source, Cible : String);
    Begin
        Document.Selection.Find.ClearFormatting;
        Document.Selection.Find.Replacement.ClearFormatting;
        Document.Selection.Find.Text := Source;
        Document.Selection.Find.Replacement.Text := Cible;
        Document.Selection.Find.Forward := True;
        Document.Selection.Find.Wrap := wdFindContinue;
        Document.Selection.Find.Format := False;
        Document.Selection.Find.MatchCase := False;
        Document.Selection.Find.MatchWholeWord := False;
        Document.Selection.Find.MatchWildcards := False;
        Document.Selection.Find.MatchSoundsLike := False;
        Document.Selection.Find.MatchAllWordForms := False;
        Document.Selection.Find.Execute(Replace := wdReplaceAll);
    end;


end.
