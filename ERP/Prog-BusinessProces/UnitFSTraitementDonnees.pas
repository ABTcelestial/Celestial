unit UnitFSTraitementDonnees;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, Mask, OleServer,
  Excel2000, TeeProcs, TeEngine, Chart, Series, Menus, UnitFirstThread;

type
    TFSTraitementDonnees = class(TForm)
    PagePrincipale: TPageControl;
    PageTraitementDonnees: TTabSheet;
    PageEnglais: TPageControl;
    PageTableauBohr: TTabSheet;
    AfficheSelectData: TPanel;
    AfficheOptionPrintFinanceProjets: TPanel;
    Bevel32: TBevel;
    RadioGroup5: TRadioGroup;
    StaticText2: TStaticText;
    RBOrientationPapierFinanceProjets: TComboBox;
    RBAjustementFinanceProjets: TCheckBox;
    BitBtn20: TBitBtn;
    PageFinanceDomiciliation: TTabSheet;
    Bevel9: TBevel;
    EditNbrSerie: TEdit;
    BitAfficheAvisNonEnregistre: TBitBtn;
    RBAfficherAvisAnnules: TCheckBox;
    AfficheTableauAvis: TPanel;
    AfficheSeriePiece: TPanel;
    Bevel19: TBevel;
    Bevel20: TBevel;
    TableauSeriePiece: TStringGrid;
    BitValiderSeriePiece: TBitBtn;
    BitBtn11: TBitBtn;
    AfficheOptionPrint: TPanel;
    Bevel12: TBevel;
    RadioGroup3: TRadioGroup;
    StaticText7: TStaticText;
    RBOrientationPapier: TComboBox;
    RBAjustement: TCheckBox;
    BitBtn4: TBitBtn;
    TableauProjetTraitement: TStringGrid;
    PageFinanceTiers: TTabSheet;
    RBAfficherAvisAnnulesTiers: TCheckBox;
    AfficheTiersOptionPrint: TPanel;
    Bevel30: TBevel;
    RadioGroup4: TRadioGroup;
    StaticText1: TStaticText;
    RBTiersOrientationPapier: TComboBox;
    RBTiersAjustement: TCheckBox;
    BitBtn18: TBitBtn;
    TableauTiersProjetTraitement: TStringGrid;
    TableauTiersListeTiers: TStringGrid;
    RadioGroup1: TRadioGroup;
    RBAvisExecutesNonExecutes: TRadioButton;
    RBAvisExecutes: TRadioButton;
    RBAvisNonExecutes: TRadioButton;
    PageOption: TTabSheet;
    EditRonStructure: TComboBox;
    Label23: TLabel;
    EditDesignationTypeAvis: TComboBox;
    Label2: TLabel;
    EditPageSelect: TEdit;
    RBPreciserNatureOperationAvis: TCheckBox;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label5: TLabel;
    EditListeNumAvisTrouver: TEdit;
    EditListeModePaiementTrouver: TEdit;
    EditListeDomiciliationAvisTrouver: TEdit;
    EditListeNumPieceTrouver: TEdit;
    EditListeDateTrouver: TEdit;
    EditMemoLiseAvisTrouver: TMemo;
    TableauListeAvisTrouver: TStringGrid;
    GroupBox1: TGroupBox;
    RBModePayementNumAvis: TCheckBox;
    RBModePayementModePayement: TCheckBox;
    RBModePayementDomiciliation: TCheckBox;
    RBModePayementNumPiece: TCheckBox;
    Panel3: TPanel;
    RadioGroup11: TRadioGroup;
    RBModePayementDateAvis: TRadioButton;
    RBModePayementDateExecution: TRadioButton;
    TableauMouvement: TStringGrid;
    EditDateFinTableauBohr: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    EditDateDebutTableauBohr: TDateTimePicker;
    EditTableauSelect: TEdit;
    TableauDeBohrTiersTransfert: TStringGrid;
    EditTitreEtat: TMemo;
    TableauDeBohrTiersAnnuler: TStringGrid;
    PageTableauBohrs: TPageControl;
    TabSheet1: TTabSheet;
    TableauDeBohrTiers: TStringGrid;
    TabSheet2: TTabSheet;
    TableauAnalyseSoldePeriodeTiers: TStringGrid;
    TabSheet3: TTabSheet;
    TableauFinanceStructure: TStringGrid;
    TableauCumulMouvement: TStringGrid;
    TableauSoldeMouvement: TStringGrid;
    TableauPeriode: TStringGrid;
    TableauAnalyseSoldePeriode: TStringGrid;
    TabSheet4: TTabSheet;
    PageAnalysePeriode: TTabSheet;
    AffichePatienter: TPanel;
    TimerTempAttente: TTimer;
    Panel4: TPanel;
    Panel6: TPanel;
    Bevel6: TBevel;
    Label8: TLabel;
    Bevel7: TBevel;
    RBAfficherSoldeSuperieur: TCheckBox;
    EditSoldeMinimum: TEdit;
    EditSigleDevise: TEdit;
    EditDesignationDevise: TEdit;
    RBIndiceRubriqueTriCol: TCheckBox;
    EditIndiceRubriqueTriCol: TEdit;
    EditTypeDataTrie: TEdit;
    EditTypeTrie: TComboBox;
    PageControl2: TPageControl;
    PageHitogramme: TTabSheet;
    DiagrammeAnalysePeriodique1: TChart;
    Series1: TBarSeries;
    PageLigne: TTabSheet;
    DiagrammeAnalysePeriodique2: TChart;
    BarSeries1: TLineSeries;
    PageSectoriel: TTabSheet;
    DiagrammeAnalysePeriodique3: TChart;
    LineSeries1: TPieSeries;
    PageAire: TTabSheet;
    DiagrammeAnalysePeriodique4: TChart;
    PieSeries1: TAreaSeries;
    BitBtn2: TBitBtn;
    Bevel11: TBevel;
    RBAfficherMonvementAvecLocalisationGeo: TCheckBox;
    Bevel8: TBevel;
    BitSelection: TBitBtn;
    Bevel14: TBevel;
    AfficheProjet: TPanel;
    Label48: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label39: TLabel;
    EditNumProjet: TEdit;
    EditNomProjet: TEdit;
    EditNumFiche: TEdit;
    EditDesignationFiche: TEdit;
    EditNumRubrique: TEdit;
    EditDesignationRubrique: TEdit;
    EditNumPlanificateur: TEdit;
    EditDesignationPlanificateur: TEdit;
    EditTableauSelection: TEdit;
    TableauSelections: TStringGrid;
    RBFicheProjetPrecis: TCheckBox;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    Panel1: TPanel;
    Label4: TLabel;
    EditDesignationTypeAvisDomiciliation: TEdit;
    PanelEditNomProjetTraitement: TPanel;
    Label49: TLabel;
    EditNumProjetTraitement: TEdit;
    EditNomProjetTraitement: TEdit;
    RBAfficherProjetFinance: TCheckBox;
    PanelDomiciliation: TPanel;
    Bevel18: TBevel;
    Bevel10: TBevel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditRechercheModePaiement: TComboBox;
    EditRechercheDomiciliation: TComboBox;
    EditRechercheDateDebut: TDateTimePicker;
    EditRechercheDateFin: TDateTimePicker;
    Bevel3: TBevel;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    Label17: TLabel;
    EditNumFicheTraitement: TEdit;
    EditDesignationFicheTraitement: TEdit;
    Label18: TLabel;
    EditNumRubriqueTraitement: TEdit;
    EditDesignationRubriqueTraitement: TEdit;
    Label19: TLabel;
    EditNumPlanificateurTraitement: TEdit;
    EditDesignationPlanificateurTraitement: TEdit;
    BitBtn8: TBitBtn;
    Bevel2: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    AfficheControleSeries: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label14: TLabel;
    EditLongueureSeriePiece: TEdit;
    UpDown1: TUpDown;
    EditSourcePiece: TComboBox;
    RBPartiesCommunesCumules: TCheckBox;
    Bevel23: TBevel;
    RBAfficherPartiesCommunes: TCheckBox;
    TimerAfficheMessageImprimer: TTimer;
    Bevel17: TBevel;
    AfficheMessageImprimer: TMemo;
    RBActiverGroupeTiers: TCheckBox;
    Bevel25: TBevel;
    EditAnneeAffiche: TComboBox;
    BitRduireTableauAvis: TBitBtn;
    AfficheRedimensionneTableauAvis: TPanel;
    TableauAvis: TStringGrid;
    RBRubriqueTrieTableauAvis: TCheckBox;
    EditRubriqueTrie: TEdit;
    RBDescendantRubriqueTrieTableauAvis: TRadioButton;
    TypeTrie: TRadioGroup;
    RBAscendantRubriqueTrieTableauAvis: TRadioButton;
    AfficheTableauAfficheRubrique: TPanel;
    TableauAfficheRubrique: TStringGrid;
    EditTiersAnneeAffiche: TComboBox;
    Bevel26: TBevel;
    BitTiersRduireTableauAvis: TBitBtn;
    AfficheTiersTableauAvis: TPanel;
    AfficheDataTiers: TPanel;
    TitreEditTiersFichierConserne: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    EditTiersFichierConserne: TComboBox;
    EditTiersTypeProces: TComboBox;
    EditTiersCodeTiers: TEdit;
    EditTiersNomTiers: TEdit;
    PanelTiersDomiciliation: TPanel;
    Bevel28: TBevel;
    Bevel29: TBevel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    EditTiersModePaiement: TComboBox;
    EditTiersDomiciliation: TComboBox;
    EditTiersDateDebut: TDateTimePicker;
    EditTiersDateFin: TDateTimePicker;
    Panel2: TPanel;
    Label3: TLabel;
    EditDesignationTypeAvisTiers: TEdit;
    PanelEditTiersNomProjetTraitement: TPanel;
    Label55: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Bevel21: TBevel;
    Bevel22: TBevel;
    EditTiersNumProjetTraitement: TEdit;
    EditTiersNomProjetTraitement: TEdit;
    RBAfficherTiersProjetFinance: TCheckBox;
    EditTiersNumFicheTraitement: TEdit;
    EditTiersDesignationFicheTraitement: TEdit;
    EditTiersNumRubriqueTraitement: TEdit;
    EditTiersDesignationRubriqueTraitement: TEdit;
    EditTiersNumPlanificateurTraitement: TEdit;
    EditTiersDesignationPlanificateurTraitement: TEdit;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Bevel24: TBevel;
    AfficheTiersRedimensionneTableauAvis: TPanel;
    TableauFinanceTiers: TStringGrid;
    RBRubriqueTrieTableauFinanceTiers: TCheckBox;
    EditTiersRubriqueTrie: TEdit;
    TiersTypeTrie: TRadioGroup;
    RBTrieTableauFinanceTiersDescendant: TRadioButton;
    RBTrieTableauFinanceTiersAscendant: TRadioButton;
    AfficheTiersTableauAfficheRubrique: TPanel;
    TableauTiersAfficheRubrique: TStringGrid;
    BitAfficherTousRubrique: TBitBtn;
    Label24: TLabel;
    Bevel27: TBevel;
    Bevel31: TBevel;
    BitTiersAfficherTousRubrique: TBitBtn;
    Bevel33: TBevel;
    Bevel34: TBevel;
    Label25: TLabel;
    AfficheTableauSelectionDonnees: TPanel;
    BitBtn12: TBitBtn;
    TableauSelectionDonnees: TStringGrid;
    TableauDetailMouvementSelection: TStringGrid;
    BitBtn13: TBitBtn;
    Bevel35: TBevel;
    Label26: TLabel;
    EditMontantGlobaleAppartenanceMouvementTiers: TMemo;
    Bevel43: TBevel;
    EditOrdreListeMouvementAppartenantTiers: TEdit;
    TableauPositionMouvementTiers: TStringGrid;
    EditListeAppartenanceCodeMouvement: TEdit;
    Panel5: TPanel;
    TableauTitreSelectionDonnees: TStringGrid;
    TableauTitreDetailMouvementSelection: TStringGrid;
    TableauSelectionDonneesImprimer: TStringGrid;
    RadioGroup2: TRadioGroup;
    RBImprimerNonSelect: TRadioButton;
    RadioButton6: TRadioButton;
    TypeTrieArticle: TRadioGroup;
    RadioButton5: TRadioButton;
    RadioButton7: TRadioButton;
    EditRubriqueTrieArticle: TEdit;
    RBRubriqueTrieTableauArticle: TCheckBox;
    EditExtentionFichier: TComboBox;
    Label32: TLabel;
    EditNomTableauImprime: TEdit;
    Rapport: TMemo;
    DetailRapport: TMemo;
    BitBtn14: TBitBtn;
    Bevel37: TBevel;
    EditExerciceTableauBohr: TComboBox;
    EditFixeColonne: TEdit;
    IncrimentFixeColonne: TUpDown;
    Bevel38: TBevel;
    RBFixeColonne: TCheckBox;
    Label27: TLabel;
    TableauTiersTableaudeBohrs: TStringGrid;
    LabelTypeProces: TLabel;
    LabelFichierConcerne: TLabel;
    EditCodeTiersTableaudeBohrs: TEdit;
    EditNomTiersTableaudeBohrs: TEdit;
    Bevel41: TBevel;
    RadioGroup6: TRadioGroup;
    RBListeMouvement: TRadioButton;
    RBPrelevement: TRadioButton;
    RBTousMouvementPrelevementSituationMarche: TRadioButton;
    EditDataTiersNIF: TEdit;
    IncrimentEditDataTiersNIF: TUpDown;
    Label28: TLabel;
    TabSheet8: TTabSheet;
    TableauDetailFormuleListeMouvement: TStringGrid;
    EditTypeProces: TEdit;
    EditFichierConcerne: TEdit;
    TableauTitreDataTiers: TStringGrid;
    RBInclureTitreDataTiers: TCheckBox;
    Bevel36: TBevel;
    Bevel44: TBevel;
    Bevel45: TBevel;
    EditTitreInfoMoyenTransport: TComboBox;
    TableauMoyenTransport: TStringGrid;
    EditInfoMoyenTransport: TEdit;
    Label29: TLabel;
    EditTitreInfoMoyenTransportTBohrs: TComboBox;
    EditMois: TComboBox;
    Bevel46: TBevel;
    Label30: TLabel;
    BitBtn17: TBitBtn;
    RBAvisRisqueZero: TRadioButton;
    AfficheTableauPositionAvisSelect: TPanel;
    TableauPositionAvisSelect: TStringGrid;
    Bevel49: TBevel;
    BitBtn19: TBitBtn;
    TimerControleCouleur: TTimer;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    Bevel50: TBevel;
    RBSelectionPassageSouris: TCheckBox;
    Bevel51: TBevel;
    AfficheTableauDataIsoler: TPanel;
    Bevel47: TBevel;
    Label33: TLabel;
    Bevel48: TBevel;
    TableauDataIsoler: TStringGrid;
    EditNumLigneIsoler: TEdit;
    BitBtn16: TBitBtn;
    Bevel52: TBevel;
    Bevel53: TBevel;
    EditListeDomiciliationPieceTrouver: TEdit;
    EditPgeVisiterTiers: TEdit;
    EditPgeVisiterDomiciliation: TEdit;
    EditPgeVisiterTableauBohrs: TEdit;
    Label112: TLabel;
    EditTypeFormuleCompteurArticle: TEdit;
    TableauTypeFormuleCompteurArticle: TStringGrid;
    EditCodeTypeFormuleCompteurArticle: TEdit;
    EditTypeDataTrieDomiciliation: TEdit;
    EditTypeDataTrieTiers: TEdit;
    BitBtn23: TBitBtn;
    Bevel54: TBevel;
    Bevel55: TBevel;
    RBPreciserNatureOperationMouvement: TCheckBox;
    Label34: TLabel;
    RBPreciserTypeAvis: TCheckBox;
    EditTiersFichierConserneAfficher: TEdit;
    EditBaseAvisFichierConcerne: TComboBox;
    TitreEditBaseAvisFichierConcerne: TLabel;
    Bevel39: TBevel;
    EditOperationBaseAvisFichierTiersConserne: TEdit;
    EditAddBaseAvisFichierTiersConserne: TEdit;
    TimerADDBaseAvisFichierConcerne: TTimer;
    RBAutoBaseAvisFichierConcerne: TCheckBox;
    RBInclureValeurSousReseauxPrecedentePeriode: TCheckBox;
    Bevel56: TBevel;
    RBInclureValeurSousReseauxPrecedenteExercice: TCheckBox;
    RBFichierConcerneChoisiTiers: TCheckBox;
    RBDomiciliationChoisi: TCheckBox;
    RBInclureSituationMarche: TRadioButton;
    RBPreciserMarcheRealisation: TCheckBox;
    EditTiersFichierConserneTableauBohr: TComboBox;
    TitreEditTiersFichierConserneTableauBohr: TLabel;
    EditNomProjetTableauBohr: TEdit;
    EditNumProjetTableauBohr: TEdit;
    Label35: TLabel;
    TableauProjetTableauBohr: TStringGrid;
    EditRowFirstSelectDebitCredit: TEdit;
    TimerAfficheTiers: TTimer;
    TimerLancerAfficheTiers: TTimer;
    CacherTableauAvis: TPanel;
    BitAfficheCacheTableauAvis: TBitBtn;
    RBNePlusAfficheCacheTableauAvis: TCheckBox;
    TimerAfficheDataDomiciliation: TTimer;
    CacherTableauFinanceTiers: TPanel;
    RBNePlusAfficheCacheTableauFinanceTiers: TCheckBox;
    BitAfficheCacheTableauFinanceTiers: TBitBtn;
    AffichePatientez: TPanel;
    BitBtn28: TBitBtn;
    CacherTableauDeBohrs: TPanel;
    RBNePlusAfficheCacheTableauDeBohrs: TCheckBox;
    BitAfficheCacheTableauDeBohrs: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    AfficheIndiqueArchivePhoto: TPanel;
    ArchivePhoto: TImage;
    BitBtn78: TBitBtn;
    BitRedimension: TBitBtn;
    Panel7: TPanel;
    RBAutoSelectMouvementMemeType: TCheckBox;
    AfficheCacheBilan: TPanel;
    EditDebitCreditPositif: TComboBox;
    EditCodeAcces: TEdit;
    BitBilan: TBitBtn;
    RBNePasAfficherNewFinanceReseaux: TCheckBox;
    BitBtn29: TBitBtn;
    BitBtn25: TBitBtn;
    RBChargerPointeur: TCheckBox;
    OptionJustifieAvis: TRadioGroup;
    RBJustifierAvis: TRadioButton;
    RBNonJustifieAvis: TRadioButton;
    RBJustifierAvisNonJustifieAvis: TRadioButton;
    EditBoutA: TEdit;
    EditBoutB: TEdit;
    PageControl1: TPageControl;
    PageDiagrammePeriode: TTabSheet;
    PageDiagrammeArticle: TTabSheet;
    TableauDiagrammeArticle: TStringGrid;
    TableauAnalysePeriodique: TStringGrid;
    AfficheTableauDiagramme: TPanel;
    PageDiagrammeCompte: TTabSheet;
    TableauDiagrammeCompte: TStringGrid;
    TypeAfficheRubriqueDiagrammeArticle: TComboBox;
    EditMaxLongueurTitreAxe: TEdit;
    IncrimenteEditMaxLongueurTitreAxe: TUpDown;
    PagePieceManquante: TTabSheet;
    TableauIndiqueAdresseListeMouvement: TStringGrid;
    RBAppliqueEnregistrementParametresReseaux: TCheckBox;
    Panel8: TPanel;
    TableauNumPiece: TStringGrid;
    RBRubriqueTrieTableauTriePiece: TCheckBox;
    EditRubriqueTrieTriePiece: TEdit;
    TypeTrieTriePiece: TRadioGroup;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    EditTypeDataTrieTriePiece: TEdit;
    EditNbrChiffreOrdrePieceTriePiece: TEdit;
    IncrimenteEditNbrChiffreOrdrePieceTriePiece: TUpDown;
    TableauSeriePieceTriePiece: TStringGrid;
    AfficheOptionPrintPieceTrie: TPanel;
    Bevel57: TBevel;
    RadioGroup7: TRadioGroup;
    StaticText3: TStaticText;
    RBOrientationPapierPieceTrie: TComboBox;
    RBAjustementPieceTrie: TCheckBox;
    BitPiecesManquantes: TBitBtn;
    BitBtn31: TBitBtn;
    RBActiverPiecesManquantes: TCheckBox;
    AfficheTableauxPieceManquanteAutreTiers: TPanel;
    TableauxPieceManquanteAutreTiers: TStringGrid;
    BitBtn32: TBitBtn;
    TableauToutesNumPiece: TStringGrid;
    AfficheOptionPrintPieceTrieEgare: TPanel;
    Bevel58: TBevel;
    RadioGroup8: TRadioGroup;
    StaticText4: TStaticText;
    RBOrientationPapierPieceTrieEgare: TComboBox;
    RBAjustementPieceTrieEgare: TCheckBox;
    BitBtn33: TBitBtn;
    TimerCompleteNumPiece: TTimer;
    EditTableauColor: TEdit;
    RBSpecifiePeriodeSelect: TCheckBox;
    EditFunctionSoldeTiers: TEdit;
    TableatDetailSoldeTiers: TStringGrid;
    RBAppliquerIndexationArchivePrelevement: TCheckBox;
    LabelTempsAttente: TLabel;
    LabelTempsAttenteTableauBohrs: TLabel;
    RBPreciserDetailOperationMouvement: TCheckBox;
    RBPreciserDestinationMouvement: TCheckBox;
    RBPreciserDetailOperationQuantiteMouvement: TCheckBox;
    RBInclureFinance: TCheckBox;
    RBSelectionPassageSourisDataIsole: TRadioButton;
    RBBoutEnBout: TRadioButton;
    RBSuspendreTraitement: TCheckBox;
    RBSuspendreTBohr: TCheckBox;
    RapportTraitementDomiciliation: TMemo;
    RapportTraitementTiers: TMemo;
    RBAucun: TRadioButton;
    TexteFinRaportDomiciliation: TLabel;
    TexteFinRaportTiers: TLabel;
    RapportTraitementMouvements: TMemo;
    RBAfficherValeurNulle: TCheckBox;
    BitBtn34: TBitBtn;
    BitBtn35: TBitBtn;
    AfficheInfoTiersSupplementaire: TPanel;
    RBAfficherInfoTiersSupplementaire: TCheckBox;
    Label37: TLabel;
    EditTypeProcesTiersSupplementaire: TEdit;
    TitreFichierConcerneBaseTiersSupplementaire: TLabel;
    FichierConcerneBaseTiersSupplementaire: TComboBox;
    EditTiersSupplementaire: TEdit;
    TableauTiersSupplementaire: TStringGrid;
    Bevel40: TBevel;
    Bevel59: TBevel;
    BitValiderChargeTiersSupplementaire: TBitBtn;
    AfficheDetailArticle: TPanel;
    BitBtn30: TBitBtn;
    Bevel60: TBevel;
    RBTabulation: TCheckBox;
    RBBoxListeAutres: TCheckBox;
    TableauPositionMouvement: TStringGrid;
    EditDebitCreditPositifTiers: TEdit;
    RBInclureDetailMouvementParFamilles: TCheckBox;
    RBCacherColonneBlClick: TCheckBox;
    BitBtn36: TBitBtn;
    Bevel61: TBevel;
    PageRecherche: TTabSheet;
    AfficheOptionCompteConcerne: TPanel;
    Label36: TLabel;
    Bevel62: TBevel;
    Bevel63: TBevel;
    Label38: TLabel;
    RadioGroup9: TRadioGroup;
    TableauCompteConcerne: TStringGrid;
    EditRecherche: TEdit;
    RBDistingueDesigRef: TCheckBox;
    RBActiverRechercheBasePrincipale: TCheckBox;
    RBParCodeSFamille: TRadioButton;
    RBParCodeArticle: TRadioButton;
    RBParDesignationArticle: TRadioButton;
    EditTypeStock: TComboBox;
    Label40: TLabel;
    Bevel64: TBevel;
    EditCompteConserne: TComboBox;
    EditCodeArticleRecherche: TEdit;
    EditArticleRecherche: TEdit;
    BitAfficheOptionCompteConcerne: TBitBtn;
    Bevel65: TBevel;
    Label41: TLabel;
    RBTailleColonneMax: TCheckBox;
    EditTailleColonneMax: TEdit;
    IncrimenteEditTailleColonneMax: TUpDown;
    Incrimentation: TUpDown;
    RBInclureListeMouvementNonJustifierParAvis: TCheckBox;
    Panel9: TPanel;
    RBImprimeTableauSelect: TCheckBox;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    Bevel42: TBevel;
    Label9: TLabel;
    Bevel13: TBevel;
    Bevel66: TBevel;
    EditMontantGlobaleAppartenanceMouvement: TMemo;
    RBDetailMouvement: TCheckBox;
    BitBtn3: TBitBtn;
    TableauListeAppartenanceMouvementTB: TStringGrid;
    BitBtn24: TBitBtn;
    BitBtn37: TBitBtn;
    TabSheet6: TTabSheet;
    Label31: TLabel;
    TableauxListePositionArchivePhoto: TStringGrid;
    TableauTitreArborescenceArticle: TStringGrid;
    EditOrdreListeMouvementAppartenant: TEdit;
    EditChoisAffichage: TComboBox;
    TableauDetaiMouvementAppartenanceMouvemant: TStringGrid;
    TableauArborescenceArticle: TStringGrid;
    RBInclureDetailArticle: TCheckBox;
    EditNumAvisAppartenanceMouvement: TEdit;
    TableauCummulerArticle: TStringGrid;
    RBInclureArborescenceArticle: TCheckBox;
    BitBtn38: TBitBtn;
    BitBtn39: TBitBtn;
    AfficherTableauBohrs: TPanel;
    TableauxdeBohrsPeriode: TStringGrid;
    BitBtn40: TBitBtn;
    Bevel67: TBevel;
    RadioGroup10: TRadioGroup;
    RBUtiliserArchiveTableauBohrsTiers: TRadioButton;
    RBAfficherArchiveTableauxBohrsTiers: TRadioButton;
    RadioButton10: TRadioButton;
    RBAfficheMoyenTransport: TCheckBox;
    PageAutres: TTabSheet;
    RBOpererEnregistrerOptionsTraitementDonnees: TCheckBox;
    FichierMemo: TMemo;
    AutoriserEnregistrementOptionsTraitementDonnees: TCheckBox;
    CachePageOption: TPanel;
    CachePagePieceManquante: TPanel;
    CachePageAutres: TPanel;
    EditMaxNumFicheMoyenTransport: TEdit;
    BitBtn41: TBitBtn;
    TableauIndiqueTypeMouvement: TStringGrid;
    RBRemplireTStockArticle: TCheckBox;
    TabSheet7: TTabSheet;
    TableauRecapitulatifDetailMouvements: TStringGrid;
    AfficheTableauListeAppartenanceMouvementTBAfficheRubrique: TPanel;
    Bevel68: TBevel;
    Bevel69: TBevel;
    Label42: TLabel;
    TableauListeAppartenanceMouvementTBAfficheRubrique: TStringGrid;
    BitTableauListeAppartenanceMouvementTBAfficherTousRubrique: TBitBtn;
    Bevel70: TBevel;
    EditNotColTableauDeBohrTiers: TEdit;
    procedure TableauFinanceStructureClick(Sender: TObject);
    procedure AfficheOptionPrintFinanceProjetsClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure PageFinanceDomiciliationShow(Sender: TObject);
    procedure RBAfficherProjetFinanceClick(Sender: TObject);
    procedure EditNomProjetTraitementEnter(Sender: TObject);
    procedure EditNomProjetTraitementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitAfficheAvisNonEnregistreClick(Sender: TObject);
    procedure TableauProjetTraitementDblClick(Sender: TObject);
    procedure TableauProjetTraitementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditRechercheModePaiementChange(Sender: TObject);
    procedure EditRechercheModePaiementSelect(Sender: TObject);
    procedure EditRechercheDomiciliationChange(Sender: TObject);
    procedure EditRechercheDomiciliationSelect(Sender: TObject);
    procedure RBAfficherAvisAnnulesClick(Sender: TObject);
    procedure TableauAvisClick(Sender: TObject);
    procedure TableauSeriePieceDblClick(Sender: TObject);
    procedure TableauSeriePieceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauSeriePieceKeyPress(Sender: TObject; var Key: Char);
    procedure BitValiderSeriePieceClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure AfficheOptionPrintClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure PageFinanceTiersShow(Sender: TObject);
    procedure EditTiersTypeProcesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTiersTypeProcesSelect(Sender: TObject);
    procedure EditTiersFichierConserneSelect(Sender: TObject);
    procedure EditTiersNomTiersEnter(Sender: TObject);
    procedure TableauTiersListeTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTiersNomProjetTraitementEnter(Sender: TObject);
    procedure EditTiersNomProjetTraitementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure AfficheTiersOptionPrintClick(Sender: TObject);
    procedure TableauTiersProjetTraitementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtn18Click(Sender: TObject);
    procedure EditTiersModePaiementSelect(Sender: TObject);
    procedure EditTiersDomiciliationSelect(Sender: TObject);
    procedure RBAfficherAvisAnnulesTiersClick(Sender: TObject);
    procedure TableauFinanceTiersClick(Sender: TObject);
    procedure BitAfficheAvisNonEnregistreContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure PageFinanceDomiciliationMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure EditLongueureSeriePieceChange(Sender: TObject);
    procedure TableauAvisMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RBAvisExecutesNonExecutesClick(Sender: TObject);
    procedure RBAvisExecutesClick(Sender: TObject);
    procedure RBAvisNonExecutesClick(Sender: TObject);
    procedure TableauAvisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTiersCodeTiersEnter(Sender: TObject);
    procedure EditTiersNomTiersKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTiersNomTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauFinanceTiersDblClick(Sender: TObject);
    procedure EditDesignationTypeAvisSelect(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RBPreciserNatureOperationAvisClick(Sender: TObject);
    procedure EditDesignationTypeAvisDomiciliationEnter(Sender: TObject);
    procedure EditDesignationTypeAvisTiersEnter(Sender: TObject);
    procedure PageTableauBohrShow(Sender: TObject);
    procedure TableauMouvementClick(Sender: TObject);
    procedure TableauDeBohrTiersClick(Sender: TObject);
    procedure RBIndiceRubriqueTriColClick(Sender: TObject);
    procedure EditTypeTrieKeyPress(Sender: TObject; var Key: Char);
    procedure EditTiersDateDebutCloseUp(Sender: TObject);
    procedure EditTiersDateFinCloseUp(Sender: TObject);
    procedure EditRechercheDateDebutCloseUp(Sender: TObject);
    procedure EditRechercheDateFinCloseUp(Sender: TObject);
    procedure RBAfficherSoldeSuperieurClick(Sender: TObject);
    procedure TableauCumulMouvementClick(Sender: TObject);
    procedure TableauSoldeMouvementClick(Sender: TObject);
    procedure EditSoldeMinimumExit(Sender: TObject);
    procedure TableauAnalyseSoldePeriodeTiersClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TableauAnalyseSoldePeriodeClick(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TableauAnalysePeriodiqueClick(Sender: TObject);
    procedure PageAnalysePeriodeShow(Sender: TObject);
    procedure TimerTempAttenteTimer(Sender: TObject);
    procedure TableauListeAppartenanceMouvementTBClick(Sender: TObject);
    procedure TableauDetaiMouvementAppartenanceMouvemantContextPopup(
      Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitSelectionClick(Sender: TObject);
    procedure EditSourcePieceKeyPress(Sender: TObject; var Key: Char);
    procedure AfficheControleSeriesClick(Sender: TObject);
    procedure EditNumProjetEnter(Sender: TObject);
    procedure EditNumFicheEnter(Sender: TObject);
    procedure EditNumProjetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumFicheKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumRubriqueEnter(Sender: TObject);
    procedure EditNumRubriqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumPlanificateurEnter(Sender: TObject);
    procedure EditNumPlanificateurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauSelectionsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn5Click(Sender: TObject);
    procedure EditNomProjetTraitementDblClick(Sender: TObject);
    procedure EditTiersNomProjetTraitementDblClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure EditDesignationFicheTraitementEnter(Sender: TObject);
    procedure EditDesignationRubriqueTraitementEnter(Sender: TObject);
    procedure EditDesignationPlanificateurTraitementEnter(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure EditTiersDesignationFicheTraitementEnter(Sender: TObject);
    procedure EditTiersDesignationRubriqueTraitementEnter(Sender: TObject);
    procedure EditTiersDesignationPlanificateurTraitementEnter(
      Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure RBAfficherPartiesCommunesClick(Sender: TObject);
    procedure RBPartiesCommunesCumulesClick(Sender: TObject);
    procedure TableauProjetTraitementEnter(Sender: TObject);
    procedure RBDescendantRubriqueTrieTableauAvisClick(Sender: TObject);
    procedure RBAscendantRubriqueTrieTableauAvisClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure TableauProjetTraitementContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure TableauTiersProjetTraitementContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure TimerAfficheMessageImprimerTimer(Sender: TObject);
    procedure AfficheMessageImprimerKeyPress(Sender: TObject;
      var Key: Char);
    procedure AfficheMessageImprimerDblClick(Sender: TObject);
    procedure AfficheMessageImprimerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAnneeAfficheSelect(Sender: TObject);
    procedure TableauAvisKeyPress(Sender: TObject; var Key: Char);
    procedure TableauAvisDblClick(Sender: TObject);
    procedure BitRduireTableauAvisClick(Sender: TObject);
    procedure AfficheTableauAfficheRubriqueClick(Sender: TObject);
    procedure TableauAfficheRubriqueDblClick(Sender: TObject);
    procedure RBTrieTableauFinanceTiersDescendantClick(Sender: TObject);
    procedure RBTrieTableauFinanceTiersAscendantClick(Sender: TObject);
    procedure TableauDetaiMouvementAppartenanceMouvemantClick(
      Sender: TObject);
    procedure AfficheTiersTableauAfficheRubriqueClick(Sender: TObject);
    procedure BitTiersRduireTableauAvisClick(Sender: TObject);
    procedure TableauTiersAfficheRubriqueDblClick(Sender: TObject);
    procedure BitAfficherTousRubriqueClick(Sender: TObject);
    procedure BitTiersAfficherTousRubriqueClick(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure TableauSelectionDonneesDblClick(Sender: TObject);
    procedure TableauSelectionDonneesContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure EditTiersAnneeAfficheSelect(Sender: TObject);
    procedure TableauSelectionDonneesClick(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure TableauDetailMouvementSelectionClick(Sender: TObject);
    procedure EditChoisAffichageSelect(Sender: TObject);
    procedure EditChoisAffichageKeyPress(Sender: TObject; var Key: Char);
    procedure RBDetailMouvementClick(Sender: TObject);
    procedure TableauArborescenceArticleClick(Sender: TObject);
    procedure RBImprimeTableauSelectClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure DetailRapportExit(Sender: TObject);
    procedure EditExerciceTableauBohrKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditExerciceTableauBohrSelect(Sender: TObject);
    procedure EditNomTiersTableaudeBohrsEnter(Sender: TObject);
    procedure EditNomTiersTableaudeBohrsKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditNomTiersTableaudeBohrsKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauTiersTableaudeBohrsKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauDetailFormuleListeMouvementClick(Sender: TObject);
    procedure TableauTitreDataTiersDblClick(Sender: TObject);
    procedure TableauDetaiMouvementAppartenanceMouvemantDblClick(
      Sender: TObject);
    procedure TableauArborescenceArticleDblClick(Sender: TObject);
    procedure TableauListeAppartenanceMouvementTBDblClick(Sender: TObject);
    procedure TableauDetailFormuleListeMouvementDblClick(Sender: TObject);
    procedure TableauDeBohrTiersDblClick(Sender: TObject);
    procedure EditTitreInfoMoyenTransportKeyPress(Sender: TObject; var Key: Char);
    procedure EditInfoMoyenTransportEnter(Sender: TObject);
    procedure TableauMoyenTransportKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTitreInfoMoyenTransportTBohrsKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditTitreInfoMoyenTransportTBohrsChange(Sender: TObject);
    procedure TableauMoyenTransportExit(Sender: TObject);
    procedure TableauMouvementDblClick(Sender: TObject);
    procedure EditMoisSelect(Sender: TObject);
    procedure EditNumLigneIsolerEnter(Sender: TObject);
    procedure EditNumLigneIsolerExit(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure EditNumLigneIsolerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBAvisRisqueZeroClick(Sender: TObject);
    procedure TimerControleCouleurTimer(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure EditTypeFormuleCompteurArticleEnter(Sender: TObject);
    procedure TableauTypeFormuleCompteurArticleDblClick(Sender: TObject);
    procedure EditTypeFormuleCompteurArticleKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtn23Click(Sender: TObject);
    procedure EditBaseAvisFichierConcerneKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditBaseAvisFichierConcerneSelect(Sender: TObject);
    procedure TimerADDBaseAvisFichierConcerneTimer(Sender: TObject);
    procedure EditNomProjetTableauBohrEnter(Sender: TObject);
    procedure TableauProjetTableauBohrDblClick(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure ArchivePhotoDblClick(Sender: TObject);
    procedure BitBtn78Click(Sender: TObject);
    procedure TableauMoyenTransportMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableauTiersTableaudeBohrsMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheSeriePieceMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheTableauDataIsolerMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheTableauPositionAvisSelectMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableauProjetTraitementMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableauTypeFormuleCompteurArticleMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BitBtn25Click(Sender: TObject);
    procedure TimerAfficheTiersTimer(Sender: TObject);
    procedure TimerLancerAfficheTiersTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditTiersFichierConserneTableauBohrSelect(Sender: TObject);
    procedure BitAfficheCacheTableauAvisClick(Sender: TObject);
    procedure TimerAfficheDataDomiciliationTimer(Sender: TObject);
    procedure RBNePlusAfficheCacheTableauAvisClick(Sender: TObject);
    procedure BitAfficheCacheTableauFinanceTiersClick(Sender: TObject);
    procedure RBNePlusAfficheCacheTableauFinanceTiersClick(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure AfficheIndiqueArchivePhotoMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BitAfficheCacheTableauDeBohrsClick(Sender: TObject);
    procedure RBNePlusAfficheCacheTableauDeBohrsClick(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure EditDateDebutTableauBohrChange(Sender: TObject);
    procedure EditDateFinTableauBohrChange(Sender: TObject);
    procedure EditMoisChange(Sender: TObject);
    procedure EditExerciceTableauBohrChange(Sender: TObject);
    procedure EditTiersFichierConserneTableauBohrChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RBInclureTitreDataTiersClick(Sender: TObject);
    procedure EditDebitCreditPositifKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditDebitCreditPositifChange(Sender: TObject);
    procedure BitBilanClick(Sender: TObject);
    procedure EditCodeAccesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn29Click(Sender: TObject);
    procedure DetailRapportKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBJustifierAvisNonJustifieAvisClick(Sender: TObject);
    procedure RBJustifierAvisClick(Sender: TObject);
    procedure RBNonJustifieAvisClick(Sender: TObject);
    procedure TableauDiagrammeArticleClick(Sender: TObject);
    procedure TableauDiagrammeCompteClick(Sender: TObject);
    procedure TypeAfficheRubriqueDiagrammeArticleKeyPress(Sender: TObject;
      var Key: Char);
    procedure TypeAfficheRubriqueDiagrammeArticleChange(Sender: TObject);
    procedure IncrimenteEditMaxLongueurTitreAxeClick(Sender: TObject;
      Button: TUDBtnType);
    procedure PageDiagrammePeriodeShow(Sender: TObject);
    procedure PageDiagrammeArticleShow(Sender: TObject);
    procedure PageDiagrammeCompteShow(Sender: TObject);
    procedure PageDiagrammeCompteContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure RBInclureValeurSousReseauxPrecedentePeriodeClick(
      Sender: TObject);
    procedure RBInclureValeurSousReseauxPrecedenteExerciceClick(
      Sender: TObject);
    procedure TableauNumPieceClick(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure AfficheOptionPrintPieceTrieClick(Sender: TObject);
    procedure BitPiecesManquantesClick(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure AfficheOptionPrintPieceTrieEgareClick(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure PagePieceManquanteShow(Sender: TObject);
    procedure TableauxPieceManquanteAutreTiersClick(Sender: TObject);
    procedure TableauSeriePieceTriePieceClick(Sender: TObject);
    procedure TimerCompleteNumPieceTimer(Sender: TObject);
    procedure PageEnglaisChange(Sender: TObject);
    procedure EditFunctionSoldeTiersDblClick(Sender: TObject);
    procedure TableauTiersListeTiersDblClick(Sender: TObject);
    procedure TableauFinanceTiersKeyPress(Sender: TObject; var Key: Char);
    procedure RBAutoSelectMouvementMemeTypeClick(Sender: TObject);
    procedure RBSelectionPassageSourisDataIsoleClick(Sender: TObject);
    procedure RBBoutEnBoutClick(Sender: TObject);
    procedure RBAutoSelectMouvementMemeTypeContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure PageFinanceTiersContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure BitBtn30Click(Sender: TObject);
    procedure EditTiersDateDebutChange(Sender: TObject);
    procedure EditTiersDateFinChange(Sender: TObject);
    procedure EditTiersSupplementaireEnter(Sender: TObject);
    procedure EditTiersSupplementaireKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTiersSupplementaireKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauTiersSupplementaireKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtn34Click(Sender: TObject);
    procedure BitBtn35Click(Sender: TObject);
    procedure BitValiderChargeTiersSupplementaireClick(Sender: TObject);
    procedure TableauTiersSupplementaireClick(Sender: TObject);
    procedure AfficheInfoTiersSupplementaireMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableauTiersTableaudeBohrsDblClick(Sender: TObject);
    procedure TableauDataIsolerClick(Sender: TObject);
    procedure EditTiersModePaiementKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditTiersDomiciliationKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditRechercheModePaiementKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditRechercheDomiciliationKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditTiersTypeProcesKeyPress(Sender: TObject; var Key: Char);
    procedure EditTiersFichierConserneKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtn36Click(Sender: TObject);
    procedure BitBtn37Click(Sender: TObject);
    procedure EditRechercheKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRechercheKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBParCodeSFamilleClick(Sender: TObject);
    procedure RBParCodeArticleClick(Sender: TObject);
    procedure RBParDesignationArticleClick(Sender: TObject);
    procedure RBActiverRechercheBasePrincipaleClick(Sender: TObject);
    procedure RBDistingueDesigRefClick(Sender: TObject);
    procedure TableauCompteConcerneKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauCompteConcerneDblClick(Sender: TObject);
    procedure BitAfficheOptionCompteConcerneClick(Sender: TObject);
    procedure TableauListeAppartenanceMouvementTBContextPopup(
      Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure TableauMouvementDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauDeBohrTiersDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauAnalyseSoldePeriodeDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauAnalyseSoldePeriodeTiersDrawCell(Sender: TObject;
      ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauFinanceStructureDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauListeAppartenanceMouvementTBDrawCell(Sender: TObject;
      ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauDetaiMouvementAppartenanceMouvemantDrawCell(
      Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure TableauArborescenceArticleDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauTitreDataTiersDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauDetailFormuleListeMouvementDrawCell(Sender: TObject;
      ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauAnalysePeriodiqueDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauTiersTableaudeBohrsDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauTiersSupplementaireDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauMoyenTransportDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauProjetTableauBohrDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauAvisDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TableauProjetTraitementDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauSeriePieceDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauDataIsolerDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauPositionAvisSelectDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauDetailMouvementSelectionDrawCell(Sender: TObject;
      ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauTypeFormuleCompteurArticleDrawCell(Sender: TObject;
      ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauTiersProjetTraitementDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauTiersListeTiersDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauFinanceTiersDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauIndiqueAdresseListeMouvementDrawCell(Sender: TObject;
      ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableatDetailSoldeTiersDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauxPieceManquanteAutreTiersDrawCell(Sender: TObject;
      ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauSeriePieceTriePieceDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure PageOptionShow(Sender: TObject);
    procedure BitBtn38Click(Sender: TObject);
    procedure BitBtn39Click(Sender: TObject);
    procedure BitBtn40Click(Sender: TObject);
    procedure BitBtn39ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TableauxdeBohrsPeriodeClick(Sender: TObject);
    procedure AfficheTableauListeAppartenanceMouvementTBAfficheRubriqueClick(
      Sender: TObject);
    procedure BitTableauListeAppartenanceMouvementTBAfficherTousRubriqueClick(Sender: TObject);
    procedure TableauListeAppartenanceMouvementTBAfficheRubriqueDblClick(
      Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
    procedure RBAfficherMonvementAvecLocalisationGeoClick(Sender: TObject);
    procedure RBInclureListeMouvementNonJustifierParAvisClick(
      Sender: TObject);
    procedure RBAutoBaseAvisFichierConcerneClick(Sender: TObject);
    procedure EditRonStructureChange(Sender: TObject);
    procedure RBPreciserTypeAvisClick(Sender: TObject);
    procedure RBPreciserNatureOperationMouvementClick(Sender: TObject);
    procedure RBPreciserDetailOperationMouvementClick(Sender: TObject);
    procedure RBPreciserDetailOperationQuantiteMouvementClick(
      Sender: TObject);
    procedure RBPreciserDestinationMouvementClick(Sender: TObject);
    procedure RBPreciserMarcheRealisationClick(Sender: TObject);
    procedure RBNePasAfficherNewFinanceReseauxClick(Sender: TObject);
    procedure RBModePayementNumAvisClick(Sender: TObject);
    procedure RBModePayementModePayementClick(Sender: TObject);
    procedure RBAfficherValeurNulleClick(Sender: TObject);
    procedure RBAppliquerIndexationArchivePrelevementClick(
      Sender: TObject);
    procedure RBAppliqueEnregistrementParametresReseauxClick(
      Sender: TObject);
    procedure RBAfficheMoyenTransportClick(Sender: TObject);
    procedure IncrimentEditDataTiersNIFClick(Sender: TObject; Button: TUDBtnType);
    procedure IncrimenteEditTailleColonneMaxClick(Sender: TObject;
      Button: TUDBtnType);
    procedure RBModePayementDateAvisClick(Sender: TObject);
    procedure RBModePayementDateExecutionClick(Sender: TObject);
    procedure RBActiverGroupeTiersClick(Sender: TObject);
    procedure RBTabulationClick(Sender: TObject);
    procedure RBInclureDetailMouvementParFamillesClick(Sender: TObject);
    procedure PageAutresShow(Sender: TObject);
    procedure BitBtn41Click(Sender: TObject);
    procedure AffichePatientezDblClick(Sender: TObject);
    procedure TableauRecapitulatifDetailMouvementsClick(Sender: TObject);
    procedure TableauDeBohrTiersContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure RBInclureDetailArticleClick(Sender: TObject);

  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSTraitementDonnees: TFSTraitementDonnees;

Procedure ListeAvis(Tableau:TStringGrid; DesignationTypeAvis,ModePaiement,Domiciliation,DateDebut,DateFin,NumProjetFinance,NumFiche,NumRubrique,NumPlanificateur,TypeProces,AvisConcerneTiers,CodeTiers:string; IndiceRubriqueTrieCol:integer; AfficheAvisAnnuler,AfficherAvisExecutesNonExecutes,AfficherAvisExecutes,AfficherAvisNonExecutes,AfficherPartieCommune,PartieCommuneDetaille,RBJustifierAvisNonJustifieAvis,RBJustifierAvis,RBNonJustifieAvis:boolean);
Procedure SoldeListeAvis(Tableau,TableauAfficheRubrique:TStringGrid; CodeTiers,Domiciliation,ModalitePaiement,NumProjet,DesignationTypeAvis,IndiceRubriqueTrieCol,TypeDataTrie,TypeTrie:string);
Procedure ListeSeriePiece(TableauTrie:TStringGrid; IndideColComplete:integer; Domiciliation,SourcePiece:string);
Function StructureRacine(NumProjetFinance:string):string;
Procedure CompleteAvis(TableauTrie:TStringGrid; IndideColComplete:integer);
Procedure SituationTiers(TableauFinanceTiers:TStringGrid; ModePaiement,Domiciliation,DateDebut,DateFin,NumProjetFinance,NumFiche,NumRubrique,NumPlanificateur,TypeProces,AvisConcerneTiers,CodeTiers:string; IndiceRubriqueTrieCol:integer; AfficheAvisAnnuler,AfficherAvisExecutesNonExecutes,AfficherAvisExecutes,AfficherAvisNonExecutes:boolean);
Procedure TransfertTableauBohr(TableauDeBohrTiers:TStringGrid; RBAfficherSoldeSuperieur:boolean; SoldeMinimum:string);
Procedure ActionTableauDeBohr;
Procedure AfficherDiagramme(TableauDiagramme:TStringGrid; IndiceNbrLaters:integer);
Procedure CummulePartieCumune(Tableau:TStringGrid);
Procedure SyntheseDesProjetsParNature(TableauSynthese:TStringGrid; CodeProjet,NumFicheTechnique,NumRubrique:string; ColTypeSynthese,ColData:integer; TypeSynthese,DateFin:string; InclurePartiesCommunes:boolean);
Procedure ProcExecuterDateAvis;
Procedure CreatTableauConfigurationAffichageRubrique(TableauConfigurationAffichageRubrique,TableauAffichage:TStringGrid; RowRubrique:integer);
Function ListeNotCol(TableauConfigurationAffichageRubrique:TStringGrid):string;
Procedure IntiallisationTableauBohrs(OKInitilliserTableauDeBohrTiers,OKInitilliserTableauAnalyseSoldePeriode,OKInitilliserTableauAnalyseSoldePeriodeTiers,OKInitilliserTableauFinanceStructure,OKInitilliserTableauListeAppartenanceMouvementTB,OKInitilliserTableauDetaiMouvementAppartenanceMouvemant,OKInitilliserTableauArborescenceArticle,OKInitilliserTableauAnalysePeriodique,OKInitilliserTableauTitreDataTiers,OKInitilliserTableauDetailFormuleListeMouvement:boolean);
Procedure AfficheArborescenceArticleTD(TableauArborescenceArticle,TableauArticle,TableauTitreArborescenceArticle:TStringGrid; FichierConcerne:string);
Procedure DataTableauIsoler(TableauSource,TableauCible:TStringGrid; ListeNumLigne:string);
Procedure ActionDateExecutionAvis;
Procedure AfficheTraitementTiers;
Procedure AfficheTraitementDomiciliation;
Procedure AfficheTableauDeBohrs;
Procedure RemplireTableauDiagrammeArticle(TitreRubrique:string);//Code ou Disignation);
Procedure ActiveDiagrammePeriode;
Procedure ActiveDiagrammeArticle;
Procedure ActiveDiagrammeCompte;
Procedure CompleteNumPiece;
Procedure SuspendreAffichage;
Procedure InitialisationPageTraitementTiers;
Procedure AfficherParArticleRecherche(CodeArticleRecherche:string; OKRowHeightsZero:boolean);
Procedure ListeTablauxBohrsTiers(TableauBohrs:TStringGrid; PeriodeTableauBohrs:string);
Procedure EnregistrerOptionsTraitementDonnees;
Procedure ChargerOptionsTraitementDonnees;
Function FindDataOptionsTraitementDonnees(TitreOptionIn:string):string;
Procedure EnregistrementOptionsTraitementDonnees(TitreOptionIn,DataOptionIn:string);
Procedure DataOptionsTraitementDonnees(TexteLigne:string; var TitreOptionOut,DataOptionOut:string);

implementation

Uses UnitInitialisation, API_LiberationProcessus, UnitPointeurs, UnitFSOperationsAvis, UnitFSGenerateurBase, UnitFSTiers, UnitFSModuleCalculeFormiles,
     UnitFSMenuPrincipal, UnitFSAvis, UnitFSFicheSaisie, UnitFSGenerateurMouvement, UnitPrintDiagramme, UnitFSFormules,
     UnitPrintDiagramme2, UnitPrintDiagramme3, UnitPrintDiagramme4, UnitFSFicheTechniqueProjet,UnitFSTravauxFinAnnee, UnitFSPlanificateur,
     UnitFSCreateFichierTexte, UnitFSGenerationGroupeTiers, UnitFSPrelevement, UnitFSNowPrelevement, UnitFSMoyenTransport,
     UnitFSArchivesPhotosCommentaires, UnitFSParametresAvances;

var

MThrd : TUnitFirstThread;

PointeurData:PointeurDatas;

RParc:RInstalle;
FParc:FInstalle;
ParcInstalle:string250;

TProjetFinance:TProjetFinances;
RProjetFinance:RProjetFinances;
FProjetFinance:FProjetFinances;
ChProjetFinance:string250;

TAvis:TAviss;
RAvis:RAviss;
FAvis:FAviss;
ChAvis:string250;

TDomiciliation:TDomiciliations;
RDomiciliation:RDomiciliations;
FDomiciliation:FDomiciliations;
ChDomiciliation:string250;

TClient:TTierss;
RClient:RTierss;
FClient:FTierss;
ChClient:string250;

TFournisseur:TTierss;
RFournisseur:RTierss;
FFournisseur:FTierss;
ChFournisseur:string250;

TUniteFonds:TUniteFondss;
RUniteFonds:RUniteFondss;
FUniteFonds:FUniteFondss;
ChUniteFonds:string250;

TPrelevementUniteFonds,TArchivePrelevementUniteFonds:TRegistrePrelevementUniteFondss;
RPrelevementUniteFonds,RArchivePrelevementUniteFonds:RRegistrePrelevementUniteFondss;
FPrelevementUniteFonds,FArchivePrelevementUniteFonds:FRegistrePrelevementUniteFondss;
ChPrelevementUniteFonds,ChArchivePrelevementUniteFonds:string250;

/////////////////////////////////////////////////////////////////////////////
TPersonnel:TPersonnels;
RPersonnel:RPersonnels;
FPersonnel:FPersonnels;
ChPersonnel:string250;
/////////////////////////////////////////////////////////////////////////////

{$R *.dfm}

Procedure CompleteAvis(TableauTrie:TStringGrid; IndideColComplete:integer);
var  i,R,RSerie,l:integer;  PieceMin,PieceMax,ListeNotPiece:string;
begin
          l:=0;
          for RSerie:=1 to FSTraitementDonnees.TableauSeriePiece.RowCount-1 do
          begin
               if(FSTraitementDonnees.TableauSeriePiece.Cells[1,RSerie]='OK')then
               begin
                    ListeNotPiece:='';
                    PieceMin:='9999999999';
                    PieceMax:='0';
                    for R:=1 to TableauTrie.RowCount-1 do
                    begin
                         if(firstlaters(TableauTrie.Cells[IndideColComplete,R],longueur(FSTraitementDonnees.TableauSeriePiece.Cells[0,RSerie]))=FSTraitementDonnees.TableauSeriePiece.Cells[0,RSerie])then
                         begin
                              if(ListeNotPiece='')
                              then ListeNotPiece:=TableauTrie.Cells[IndideColComplete,R]
                              else ListeNotPiece:=ListeNotPiece+';'+TableauTrie.Cells[IndideColComplete,R];

                              if(strtoreal(TableauTrie.Cells[IndideColComplete,R])<strtoreal(PieceMin))then PieceMin:=TableauTrie.Cells[IndideColComplete,R];
                              if(strtoreal(TableauTrie.Cells[IndideColComplete,R])>strtoreal(PieceMax))then PieceMax:=TableauTrie.Cells[IndideColComplete,R];
                         end;
                    end;

                    for i:=1 to ValeAbsolue(strtoreal(PieceMax)-strtoreal(PieceMin)-1)do
                    begin
                         if(not ExisteNuminTexte(Completezerogauche(inttostr(strtointeger(PieceMin)+i),inttostr(longueur(PieceMin))),ListeNotPiece))then
                         begin
                              l:=l+1;
                              TableauTrie.Rows[l+TableauTrie.RowCount-1].Text:=inttostr(l+TableauTrie.RowCount-1);
                              TableauTrie.Cells[IndideColComplete,l+TableauTrie.RowCount-1]:=Completezerogauche(inttostr(strtointeger(PieceMin)+i),inttostr(longueur(PieceMin)));
                         end;
                    end;
               end;
          end;

          if(l>0)then TableauTrie.RowCount:=TableauTrie.RowCount+l;

          TrierTableauARowSpecial(TableauTrie,1,TableauTrie.RowCount-1,1,'5','','+');
end;

Function StructureRacine(NumProjetFinance:string):string;
var   L:integer;  NomStructureRacine:string;
begin
     if(NumProjetFinance<>'')then
     begin
          OpenFParc(RParc);
          ChProjetFinance:=RParc.Parcours+'\'+Exercice+'FProjetFinance';
          assignfile(FProjetFinance,ChProjetFinance);
          try
          if FileExists(ChProjetFinance)then
          Reset(FProjetFinance)
          else Rewrite(FProjetFinance);

          NomStructureRacine:='';
          L:=longueur(NumProjetFinance);
          while(L>0)do
          begin
               Seek(FProjetFinance,0);
               while not eof(FProjetFinance)do
               begin
                    read(FProjetFinance,RProjetFinance);
                    if(RProjetFinance.NumProjetFinance=Firstlaters(NumProjetFinance,L))then
                    begin
                         if(NomStructureRacine<>'')
                         then NomStructureRacine:=NomStructureRacine+' - '+RProjetFinance.DesignationProjetFinance
                         else NomStructureRacine:=RProjetFinance.DesignationProjetFinance;
                    end;
               end;
               L:=L-5;
          end;
          finally
          CloseFile(FProjetFinance);
          end;
     end
     else NomStructureRacine:='Tous les Projets';

StructureRacine:=NomStructureRacine;

end;

Procedure ListeSeriePiece(TableauTrie:TStringGrid; IndideColComplete:integer; Domiciliation,SourcePiece:string);
var  R,RSerie,RowSerie:integer; OKSerieCharger,OKDomiciliation:boolean;
begin
     if(Domiciliation<>'')
     and(Domiciliation<>'Tous')then
     begin
          FSTraitementDonnees.TableauSeriePiece.RowCount:=2;
          FSTraitementDonnees.TableauSeriePiece.Cols[0].Text:='Séries Pièce';
          FSTraitementDonnees.TableauSeriePiece.Cols[1].Text:='Sélection';
          FSTraitementDonnees.TableauSeriePiece.Rows[1].Text:='';

          if(SourcePiece='Avis')then
          begin
                RowSerie:=0;
                for R:=1 to TableauTrie.RowCount-1 do
                begin
                     if(strtointeger(TableauTrie.Cells[IndideColComplete,R])<>0)then
                     begin
                          OKSerieCharger:=false;
                          RSerie:=1;
                          while(RSerie<=FSTraitementDonnees.TableauSeriePiece.RowCount-1)and(OKSerieCharger=false)do
                          begin
                               if(FSTraitementDonnees.TableauSeriePiece.Cells[0,RSerie]=firstlaters(TableauTrie.Cells[IndideColComplete,R],strtointeger(FSTraitementDonnees.EditLongueureSeriePiece.Text)))
                               then OKSerieCharger:=true;
                          RSerie:=RSerie+1;
                          end;

                          if(OKSerieCharger=false)then
                          begin
                               RowSerie:=RowSerie+1;
                               FSTraitementDonnees.TableauSeriePiece.RowCount:=RowSerie+1;
                               FSTraitementDonnees.TableauSeriePiece.Cells[0,RowSerie]:=firstlaters(TableauTrie.Cells[IndideColComplete,R],strtointeger(FSTraitementDonnees.EditLongueureSeriePiece.Text));
                               FSTraitementDonnees.TableauSeriePiece.Cells[1,RowSerie]:='OK';
                          end;
                     end;
                end;
          end;

          if(SourcePiece='Pièce')then
          begin
                OpenFParc(RParc);
                ChSeriePieceDomiciliation:=RParc.Parcours+'\'+Exercice+'FSeriePieceDomiciliation';
                assignfile(FSeriePieceDomiciliation,ChSeriePieceDomiciliation);
                try
                if FileExists(ChSeriePieceDomiciliation)then
                Reset(FSeriePieceDomiciliation)
                else Rewrite(FSeriePieceDomiciliation);
                Seek(FSeriePieceDomiciliation,0);
                while not eof(FSeriePieceDomiciliation)do
                begin
                     read(FSeriePieceDomiciliation,RSeriePieceDomiciliation);
                     RDomiciliation:=ChercherDomiciliation(RSeriePieceDomiciliation.NumDomiciliation,'',PositionDomiciliationRecherche);

                     if(FSTraitementDonnees.EditRechercheModePaiement.Text<>'')and(FSTraitementDonnees.EditRechercheModePaiement.Text<>'Tous')then
                     begin
                          if(RSeriePieceDomiciliation.ModePaiement=FSTraitementDonnees.EditRechercheModePaiement.Text)
                          then OKDomiciliation:=true
                          else OKDomiciliation:=false;
                     end
                     else OKDomiciliation:=true;

                     if(OKDomiciliation=true)then
                     begin
                          if(RDomiciliation.DesignationDomiciliation=FSTraitementDonnees.EditRechercheDomiciliation.Text)
                          then OKDomiciliation:=true
                          else OKDomiciliation:=false;
                     end;

                     if(OKDomiciliation=true)then
                     begin
                          OKSerieCharger:=false;
                          RSerie:=1;
                          while(RSerie<=FSTraitementDonnees.TableauSeriePiece.RowCount-1)and(OKSerieCharger=false)do
                          begin
                               if(FSTraitementDonnees.TableauSeriePiece.Cells[0,RSerie]=firstlaters(RSeriePieceDomiciliation.NumReferenceSerieDomiciliation,strtointeger(FSTraitementDonnees.EditLongueureSeriePiece.Text)))
                               then OKSerieCharger:=true;
                          RSerie:=RSerie+1;
                          end;

                          if(OKSerieCharger=false)then
                          begin
                               RowSerie:=RowSerie+1;
                               FSTraitementDonnees.TableauSeriePiece.RowCount:=RowSerie+1;
                               FSTraitementDonnees.TableauSeriePiece.Cells[0,RowSerie]:=firstlaters(RSeriePieceDomiciliation.NumReferenceSerieDomiciliation,strtointeger(FSTraitementDonnees.EditLongueureSeriePiece.Text));
                               FSTraitementDonnees.TableauSeriePiece.Cells[1,RowSerie]:='OK';
                          end;
                     end;
                end;
                finally
                closefile(FSeriePieceDomiciliation);
                end;
          end;

          if(RowSerie>0)then
          begin
               FSTraitementDonnees.AfficheSeriePiece.Height:=352;
               FSTraitementDonnees.TableauSeriePiece.SetFocus;
          end
          else
          begin
               FSTraitementDonnees.Close;
               SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
          end;
     end
     else
     begin
          showmessage('Veuillez indiquer la Domiciliation SVP !');
          FSTraitementDonnees.EditRechercheDomiciliation.SetFocus;
     end;
end;

Procedure SoldeListeAvis(Tableau,TableauAfficheRubrique:TStringGrid; CodeTiers,Domiciliation,ModalitePaiement,NumProjet,DesignationTypeAvis,IndiceRubriqueTrieCol,TypeDataTrie,TypeTrie:string);
var   R,C:integer;  DebitAnterieur,CreditAnterieur,Debit,Credit,TotalDebit,TotalCredit,Solde,SodeAnterieur:real;
      NotRow,NotCol,EtatSoldePlanifier,TypeProces,FichierConcerne,Adresse,NotRows:string;  OKDomiciliation:boolean;
begin
     AccelerationAffichageTableau(Tableau,true);

     NotCol:='';
     NotRow:='';  

     if((NumProjet='')or(NumProjet='Tous'))
     and((DesignationTypeAvis='')or(DesignationTypeAvis='Tous'))
     and((ModalitePaiement='')or(ModalitePaiement='Tous'))
     and(Domiciliation<>'')and(Domiciliation<>'Tous')then
     begin
          TypeProces:='Business';   FichierConcerne:='FDomiciliation';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               if(FichierConcerne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché {'+FichierConcerne+'} !');
          end;

          ChDomiciliation:=Adresse;
          assignfile(FDomiciliation,ChDomiciliation);
          try
          if FileExists(ChDomiciliation)then
          Reset(FDomiciliation)
          else Rewrite(FDomiciliation);
          Seek(FDomiciliation,0);
          OKDomiciliation:=false;
          while not eof(FDomiciliation)and(OKDomiciliation=false)do
          begin
               read(FDomiciliation,RDomiciliation);

               if(RDomiciliation.DesignationDomiciliation=Domiciliation)
               then OKDomiciliation:=true
               else OKDomiciliation:=false;

               if(OKDomiciliation=true)then EtatSoldePlanifier:=RDomiciliation.EtatSoldeDebitCredit;

          end;
          finally
          CloseFile(FDomiciliation);
          end;
     end
     else
     begin
          OKDomiciliation:=false;
          NotCol:='20;21';
     end;

     TotalDebit:=0;
     TotalCredit:=0;
     Solde:=0;
     SodeAnterieur:=0;
     DebitAnterieur:=strtoreal(Tableau.Cells[7,1]);
     CreditAnterieur:=strtoreal(Tableau.Cells[8,1]);
     if(Tableau.Cells[5,Tableau.RowCount-2]<>'Total Global:')then Tableau.RowCount:=Tableau.RowCount+6;
     Tableau.Rows[Tableau.RowCount-1].Text:='';
     Tableau.Rows[Tableau.RowCount-2].Text:='';
     Tableau.Rows[Tableau.RowCount-3].Text:='';
     Tableau.Rows[Tableau.RowCount-4].Text:='';
     Tableau.Rows[Tableau.RowCount-5].Text:='';
     Tableau.Rows[Tableau.RowCount-6].Text:='';

     for R:=2 to Tableau.RowCount-7 do
     begin
          Tableau.Cells[20,R]:='';
          Tableau.Cells[21,R]:=''; 

          if(strtoreal(Tableau.Cells[7,R])<>0)and(strtoreal(Tableau.Cells[8,R])<>0)then
          begin
               Debit:=strtoreal(Tableau.Cells[7,R]);
               Credit:=strtoreal(Tableau.Cells[8,R]);

               Solde:=Valeprecis(Debit-Credit,2);

               if(Solde=0)then
               begin
                    Tableau.Cells[7,R]:='';
                    Tableau.Cells[8,R]:='';
               end;

               if(Solde>0)then
               begin
                    Tableau.Cells[7,R]:=Vergule(floattostr(Solde),'2','C','');
                    Tableau.Cells[8,R]:='';
               end;

               if(Solde<0)then
               begin
                    Tableau.Cells[7,R]:='';
                    Tableau.Cells[8,R]:=Vergule(floattostr((-1)*Solde),'2','C','');
               end;
          end
          else
          begin
               if(strtoreal(Tableau.Cells[7,R])=0) then Tableau.Cells[7,R]:='';
               if(strtoreal(Tableau.Cells[8,R])=0) then Tableau.Cells[8,R]:='';
          end;

          if(Tableau.Cells[15,R]='Maintenu')or(Tableau.Cells[15,R]='Maintenu Exécuter')then
          begin
               if(CodeTiers='Tous')then SodeAnterieur:=SodeAnterieur+strtoreal(Tableau.Cells[6,R]);
               TotalDebit:=TotalDebit+strtoreal(Tableau.Cells[7,R]);
               TotalCredit:=TotalCredit+strtoreal(Tableau.Cells[8,R]);

               if(OKDomiciliation=true)then
               begin
                    Tableau.Cells[20,R]:=Vergule(floattostr(TotalDebit+DebitAnterieur-TotalCredit-CreditAnterieur),'2','C','');
                    if(EtatSoldePlanifier<>'DébitCrédit')then
                    begin
                         if((TotalDebit+DebitAnterieur-TotalCredit-CreditAnterieur)>0)
                         and(EtatSoldePlanifier='Crédit')
                         then Tableau.Cells[21,R]:='Attention ! Solde débiteur !';

                         if((TotalDebit+DebitAnterieur-TotalCredit-CreditAnterieur)<0)
                         and(EtatSoldePlanifier='Débit')
                         then Tableau.Cells[21,R]:='Attention ! Solde Créditeur !';
                    end;
               end
               else NotCol:='20;21';
          end;
     end;

     Tableau.Rows[Tableau.RowCount-1].Text:='';
     Tableau.Rows[Tableau.RowCount-2].Text:='';
     Tableau.Rows[Tableau.RowCount-3].Text:='';
     Tableau.Rows[Tableau.RowCount-4].Text:='';
     Tableau.Rows[Tableau.RowCount-5].Text:='';

     Tableau.Cells[5,Tableau.RowCount-2]:='Total Global:';
     if(CodeTiers='Tous')then Tableau.Cells[6,Tableau.RowCount-2]:=Vergule(floattostr(SodeAnterieur),'2','C','');
     Tableau.Cells[7,Tableau.RowCount-2]:=Vergule(floattostr(TotalDebit+DebitAnterieur),'2','C','');
     Tableau.Cells[8,Tableau.RowCount-2]:=Vergule(floattostr(TotalCredit+CreditAnterieur),'2','C','');

     Tableau.Cells[5,Tableau.RowCount-5]:='Total Période:';
     if(CodeTiers='Tous')then Tableau.Cells[6,Tableau.RowCount-5]:=Vergule(floattostr(SodeAnterieur),'2','C','');
     Tableau.Cells[7,Tableau.RowCount-5]:=Vergule(floattostr(TotalDebit),'2','C','');
     Tableau.Cells[8,Tableau.RowCount-5]:=Vergule(floattostr(TotalCredit),'2','C','');

     if(OKDomiciliation=true)then
     begin

          Tableau.Cells[20,Tableau.RowCount-2]:=Vergule(floattostr(TotalDebit+DebitAnterieur-TotalCredit-CreditAnterieur),'2','C','');
          Tableau.Cells[20,Tableau.RowCount-5]:=Vergule(floattostr(TotalDebit-TotalCredit),'2','C','');
          if(EtatSoldePlanifier<>'DébitCrédit')then
          begin
               if((TotalDebit+DebitAnterieur-TotalCredit-CreditAnterieur)>=0)
               and(EtatSoldePlanifier='Crédit')
               then Tableau.Cells[21,Tableau.RowCount-2]:='Attention ! Solde débiteur !';
                                    
               if((TotalDebit-TotalCredit)>=0)
               and(EtatSoldePlanifier='Crédit')
               then Tableau.Cells[21,Tableau.RowCount-5]:='Attention ! Solde débiteur !';
                              
               if(TotalDebit+DebitAnterieur-TotalCredit-CreditAnterieur<0)
               and(EtatSoldePlanifier='Débit')
               then Tableau.Cells[21,Tableau.RowCount-2]:='Attention ! Solde Créditeur !';

               if((TotalDebit-TotalCredit)<0)
               and(EtatSoldePlanifier='Débit')
               then Tableau.Cells[21,Tableau.RowCount-5]:='Attention ! Solde Créditeur !';
          end;
     end
     else NotCol:='20;21';
     
     Solde:=ValePrecis(TotalCredit+CreditAnterieur-TotalDebit-DebitAnterieur,2);
     Tableau.Cells[5,Tableau.RowCount-1]:='Solde Global:';
     if(Solde<0)then
     begin
          Tableau.Cells[7,Tableau.RowCount-1]:=Vergule(floattostr((-1)*Solde),'2','C','');
     end
     else
     begin
          Tableau.Cells[8,Tableau.RowCount-1]:=Vergule(floattostr(Solde),'2','C','');
     end;

     Solde:=ValePrecis(TotalCredit-TotalDebit,2);
     Tableau.Cells[5,Tableau.RowCount-4]:='Solde Période:';
     if(Solde<0)then
     begin
          Tableau.Cells[7,Tableau.RowCount-4]:=Vergule(floattostr((-1)*Solde),'2','C','');
     end
     else
     begin
          Tableau.Cells[8,Tableau.RowCount-4]:=Vergule(floattostr(Solde),'2','C','');
     end;

     if(NotCol<>'')then NotCol:=NotCol+';19'
                   else NotCol:='19';

     if(FSTraitementDonnees.RBAfficherProjetFinance.Checked=false)
     then
     begin
          if(NotCol<>'')then NotCol:=NotCol+';18'
                        else NotCol:='18';
     end;

     if(FSTraitementDonnees.EditRechercheModePaiement.Text<>'')
     and(FSTraitementDonnees.EditRechercheModePaiement.Text<>'Tous')
     then
     begin
          if(NotCol<>'')then NotCol:=NotCol+';4'
                        else NotCol:='4';
     end;

     if(FSTraitementDonnees.EditRechercheDomiciliation.Text<>'')
     and(FSTraitementDonnees.EditRechercheDomiciliation.Text<>'Tous')
     then
     begin
          if(NotCol<>'')then NotCol:=NotCol+';5'
                        else NotCol:='5';
     end;
     if(NotCol<>'')then NotCol:=NotCol+';12;13;14;16;17'
                   else NotCol:=';12;13;14;16;17';

     if(ListeNotCol(TableauAfficheRubrique)<>'')then NotCol:=ListeNotCol(TableauAfficheRubrique);

     for C:=1 to Tableau.ColCount-1 do if(ExisteNumInTexte(inttostr(C),NotCol))then Tableau.ColWidths[C]:=0;

     AjusterColWidth(Tableau,NotRow,NotCol);

     TrierTableauARowSpecial(Tableau,2,Tableau.RowCount-7,1,IndiceRubriqueTrieCol,TypeDataTrie,TypeTrie);

     NotRows:='';
     AppliquerActiveColsTableaux(Tableau,Tableau.Name,NotRows,NotCol);

     AccelerationAffichageTableau(Tableau,false);
end;

Procedure SituationTiers(TableauFinanceTiers:TStringGrid; ModePaiement,Domiciliation,DateDebut,DateFin,NumProjetFinance,NumFiche,NumRubrique,NumPlanificateur,TypeProces,AvisConcerneTiers,CodeTiers:string; IndiceRubriqueTrieCol:integer; AfficheAvisAnnuler,AfficherAvisExecutesNonExecutes,AfficherAvisExecutes,AfficherAvisNonExecutes:boolean);
begin
     FSTraitementDonnees.AfficheTableauSelectionDonnees.Visible:=false;
     
     if(CodeTiers<>'')then
     begin
          ListeAvisPointeurSpeciale(TableauFinanceTiers,FSTraitementDonnees.EditDesignationTypeAvis.Text,ModePaiement,Domiciliation,DateDebut,DateFin,NumProjetFinance,NumFiche,NumRubrique,NumPlanificateur,TypeProces,AvisConcerneTiers,CodeTiers,FSTraitementDonnees.EditTiersSupplementaire.Text,IndiceRubriqueTrieCol,AfficheAvisAnnuler,AfficherAvisExecutesNonExecutes,AfficherAvisExecutes,AfficherAvisNonExecutes,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked,FSTraitementDonnees.RBAfficherInfoTiersSupplementaire.Checked);
          SoldeListeAvis(TableauFinanceTiers,FSTraitementDonnees.TableauTiersAfficheRubrique,CodeTiers,Domiciliation,ModePaiement,NumProjetFinance,FSTraitementDonnees.EditDesignationTypeAvis.Text,inttostr(IndiceRubriqueTrieCol),FSTraitementDonnees.EditTypeDataTrieTiers.Text,FSTraitementDonnees.TiersTypeTrie.Caption);
     end
     else
     begin
          showmessage('Veuillez Sélectionner un compte tiers SVP !');
     end;
end;

Procedure ListeAvis(Tableau:TStringGrid; DesignationTypeAvis,ModePaiement,Domiciliation,DateDebut,DateFin,NumProjetFinance,NumFiche,NumRubrique,NumPlanificateur,TypeProces,AvisConcerneTiers,CodeTiers:string; IndiceRubriqueTrieCol:integer; AfficheAvisAnnuler,AfficherAvisExecutesNonExecutes,AfficherAvisExecutes,AfficherAvisNonExecutes,AfficherPartieCommune,PartieCommuneDetaille,RBJustifierAvisNonJustifieAvis,RBJustifierAvis,RBNonJustifieAvis:boolean);
var  i,R,P,PCs,PTCs,IBegin,IEnd,iPAP:integer; PourcentagePartCommune,Solde:real;  OKAvis,OKTiers,InclureArchivePrelevementUniteFond,InclureListeMouvement,InclureSituationMarche,OKPieceManquante:boolean; NotRow,NotCol,Adresse,DebitCreditTypeMouvement,ListeOrdreMouvemen:string;  RAvisTrouver:RAviss;
     Document,DetailOperation,Destination,TypeAvis,DesignationGroupe,ListeFichierTiersGroupe,TypeProcesRecherche,FichierconcerneRecherche,EtatAvisMaintenu,TypeProcesAvis,FichierConserneAvis,AdresseAvis,TypeProcesPrelevement,FichierConsernePrelevement,AdressePrelevement,PositionPrelevement:string;
     PositionTypeAvis,NumTypeAvis,SigneDebitCredit:integer; CompteImputation,DebitCredit,DebitCreditAvis,JourneauxAuxiliaireUtilise,TypeProcesControleReseaux,NSMarcheSelect:string;
     RapportTraitement:TMemo;
     var A, B: cardinal;
     LeHandle:HWND;
begin
     A:=GetTickCount;
     InclureListeMouvement:=false;
     InclureSituationMarche:=false;
     InclureArchivePrelevementUniteFond:=false;

     if(Tableau=FSTraitementDonnees.TableauAvis)then RapportTraitement:=FSTraitementDonnees.RapportTraitementDomiciliation;
     if(Tableau=FSTraitementDonnees.TableauFinanceTiers)then RapportTraitement:=FSTraitementDonnees.RapportTraitementTiers;
     RapportTraitement.Lines.Text:='';
     RapportTraitement.Lines.Add('Début de traitement:');

     NSMarcheSelect:='';

     if(FSTraitementDonnees.RBListeMouvement.Checked=true)then InclureListeMouvement:=true;
     if(FSTraitementDonnees.RBInclureSituationMarche.Checked=true)then InclureSituationMarche:=true;
     if(FSTraitementDonnees.RBPrelevement.Checked=true)then InclureArchivePrelevementUniteFond:=true;
     if(FSTraitementDonnees.RBTousMouvementPrelevementSituationMarche.Checked=true)then
     begin
          InclureListeMouvement:=true;
          InclureSituationMarche:=true;
          InclureArchivePrelevementUniteFond:=true;
     end;

     if(CodeTiers='')then
     begin
          InclureListeMouvement:=false;
          InclureSituationMarche:=false;
     end;

     FSTraitementDonnees.TableauNumPiece.ColCount:=3;
     FSTraitementDonnees.TableauNumPiece.Cols[0].Text:='N';
     FSTraitementDonnees.TableauNumPiece.Cols[1].Text:='Date';
     FSTraitementDonnees.TableauNumPiece.Cols[2].Text:='Num Pièce';

     FSTraitementDonnees.TableauNumPiece.RowCount:=2;
     FSTraitementDonnees.TableauNumPiece.Rows[1].Text:='';
     PCs:=0;

     FSTraitementDonnees.TableauToutesNumPiece.ColCount:=6;
     FSTraitementDonnees.TableauToutesNumPiece.Cols[0].Text:='N';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[1].Text:='Date';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[2].Text:='Num Pièce';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[3].Text:='C.Tiers';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[4].Text:='Tiers';
     FSTraitementDonnees.TableauToutesNumPiece.Cols[5].Text:='Source';

     FSTraitementDonnees.TableauToutesNumPiece.RowCount:=2;
     FSTraitementDonnees.TableauToutesNumPiece.Rows[1].Text:='';
     PTCs:=0;

     Tableau.ColCount:=25;
     Tableau.Cols[0].Text:='Or.';
     Tableau.Cols[1].Text:='N°Avis';
     Tableau.Cols[2].Text:='Date Avis';
     Tableau.Cols[3].Text:='Date Exécut°';
     Tableau.Cols[4].Text:='Mode Paiement';
     Tableau.Cols[5].Text:='Domiciliation';
     if(CodeTiers<>'Tous')then Tableau.Cols[6].Text:='Pièce'else Tableau.Cols[6].Text:='Solde au: '+datetostr(strtodate(DateDebut)-1);
     Tableau.Cols[7].Text:='M.Débit';
     Tableau.Cols[8].Text:='M.Crédit';
     Tableau.Cols[9].Text:='Code Tiers';
     Tableau.Cols[10].Text:='Tiers';
     Tableau.Cols[11].Text:='Nature de l''opération';
     Tableau.Cols[12].Text:='Imputation';
     Tableau.Cols[13].Text:='Débit/Crédit';
     Tableau.Cols[14].Text:='Réf.';
     Tableau.Cols[15].Text:='Validitée';
     Tableau.Cols[16].Text:='Origine';
     Tableau.Cols[17].Text:='Tiers';
     Tableau.Cols[18].Text:='Structure';
     Tableau.Cols[19].Text:='Comptabilité';
     Tableau.Cols[20].Text:='Solde';
     Tableau.Cols[21].Text:='Commentaire';
     Tableau.Cols[22].Text:='Matricule';
     Tableau.Cols[23].Text:='P°';
     Tableau.Cols[24].Text:='BaseAvis';

     i:=1;

     Tableau.RowCount:=2;
     Tableau.Rows[i].Text:='';

     Tableau.Rows[1].Text:=inttostr(1);
     Tableau.Cells[1,1]:='Solde au:';
     Tableau.Cells[2,1]:=datetostr(strtodate(DateDebut)-1);
     Tableau.Cells[3,1]:='';
     Tableau.Cells[4,1]:='';
     Tableau.Cells[5,1]:='';
     Tableau.Cells[6,1]:='';
     Tableau.Cells[7,1]:='';
     Tableau.Cells[8,1]:='';
     Tableau.Cells[9,1]:='';
     Tableau.Cells[10,1]:='';
     Tableau.Cells[11,1]:='';
     Tableau.Cells[12,1]:='';
     Tableau.Cells[13,1]:='';
     Tableau.Cells[14,1]:='';
     Tableau.Cells[15,1]:='Maintenu';
     Tableau.Cells[16,1]:='';
     Tableau.Cells[17,1]:='';
     Tableau.Cells[18,1]:='';
     Tableau.Cells[19,1]:='';
     Tableau.Cells[20,1]:='';
     Tableau.Cells[21,1]:='';
     Tableau.Cells[22,1]:='';
     Tableau.Cells[23,1]:='';
     Tableau.Cells[24,1]:='';

     if(RBNonJustifieAvis=false)then
     begin
           if not(FunctionAdresseProces('Business','FBaseAvis','',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                if('FBaseAvis '<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+'FBaseAvis '+'recherché !');
           end;

           ChBaseAvisListeAvis:=Adresse;
           assignfile(FBaseAvisListeAvis,ChBaseAvisListeAvis);
           try
           if FileExists(ChBaseAvisListeAvis)then
           Reset(FBaseAvisListeAvis)
           else Rewrite(FBaseAvisListeAvis);
           Seek(FBaseAvisListeAvis,0);
           while not eof(FBaseAvisListeAvis)do
           begin
                read(FBaseAvisListeAvis,RBaseAvisListeAvis);  Application.ProcessMessages; if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then Exit;

                FichierConserneAvis:=RBaseAvisListeAvis.DesignationBaseAvis;

                RapportTraitement.Lines.Add('Traitement '+FichierConserneAvis);

                if(FunctionFichierInclu(FichierConserneAvis,FSTraitementDonnees.EditBaseAvisFichierConcerne.Text))then
                begin
                     TypeProcesAvis:='Business';
                     if not(FunctionAdresseProces(TypeProcesAvis,FichierConserneAvis,'',AdresseAvis,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                     begin
                          if(FichierConserneAvis<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché {'+FichierConserneAvis+'} !');
                     end;

                     TypeProcesControleReseaux:=TypeProcesReseaux;

                     ChAvis:=AdresseAvis;
                     assignfile(FAvis,ChAvis);
                     try
                     if FileExists(ChAvis)then
                     Reset(FAvis)
                     else Rewrite(FAvis);
                     Seek(FAvis,0);
                     P:=0;
                     while not eof(FAvis)do
                     begin
                          read(FAvis,RAvis);  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then Exit;
                          PourcentagePartCommune:=1;

                          RapportTraitement.Lines.Add(FichierConserneAvis+' N°'+inttostr(RAvis.NumAvis)+' Tiers: '+RAvis.CodeTiers);

                          EtatAvisMaintenu:='';

                          DebitCreditAvis:=RAvis.DebitCredit;

                          if(DebitCreditAvis='')then
                          begin
                               IndiqueTypeAvis(RAvis.DesignationTypeAvis,PositionTypeAvis,NumTypeAvis,SigneDebitCredit,CompteImputation,DebitCreditAvis,TypeProcesRecherche,FichierconcerneRecherche,JourneauxAuxiliaireUtilise);
                          end;

                          OKAvis:=not RegistreInvisibleReseaux(RAvis.TypeProces,RAvis.AvisConcerneTiers,RAvis.CodeTiers,'','',RAutorisationPartageRegistreCopie);

                          if(OKAvis=true)then
                          begin
                               if(TypeProcesControleReseaux='Réseaux')then
                               begin
                                    if(strtodate(RAvis.DateAvis)<strtodate('01/01/'+ExerciceAnnee))
                                    then OKAvis:=FSTraitementDonnees.RBInclureValeurSousReseauxPrecedenteExercice.Checked;

                                    if(OKAvis=true)then
                                    begin
                                         if(strtodate(RAvis.DateAvis)<strtodate(DateDebut))
                                         then OKAvis:=FSTraitementDonnees.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
                                    end;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(AfficheAvisAnnuler=false)then
                               begin
                                    OKAvis:=RAvis.ValiditeAvis;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(AfficherAvisExecutesNonExecutes=true)then
                               begin
                                    OKAvis:=true
                               end
                               else
                               if(AfficherAvisExecutes=true)then
                               begin
                                    if(RAvis.DateExecute<>'')and(RAvis.DateExecute<>'  /  /    ')
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else
                               if(AfficherAvisNonExecutes=true)then
                               begin
                                    if(RAvis.DateExecute='')or(RAvis.DateExecute='  /  /    ')
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else
                               begin
                                    if(DebitCreditAvis=ChercherDomiciliation(RAvis.NumDomiciliationAvis,'',PositionDomiciliationRecherche).EtatSoldeDebitCredit)
                                    and((RAvis.DateExecute='')or(RAvis.DateExecute='  /  /    '))
                                    then EtatAvisMaintenu:='En instance';
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(NumProjetFinance<>'')then
                               begin
                                    if(RAvis.NumProjetFinance='')then
                                    begin
                                         if(AfficherPartieCommune=true)then
                                         begin
                                              PourcentagePartCommune:=FunctPourcentagePartieCommune(NumProjetFinance);
                                              if(PourcentagePartCommune>0)then OKAvis:=true else OKAvis:=false;
                                         end
                                         else OKAvis:=false;
                                    end
                                    else
                                    begin
                                         if(Firstlaters(RAvis.NumProjetFinance,longueur(NumProjetFinance))=NumProjetFinance)
                                         then OKAvis:=true
                                         else OKAvis:=false;
                                    end;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(NumFiche<>'')   
                               then
                               begin
                                    RubriqueArborescence('',RAvis.NumRubrique,RRubriqueFicheTechniqueCopie,RFicheTechniqueCopie,RTypeAvisCopie);
                                    if(RFicheTechniqueCopie.NumFicheTechnique=strtointeger(NumFiche))
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(NumRubrique<>'')
                               then
                               begin
                                    if(RAvis.NumRubrique=NumRubrique)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(NumPlanificateur<>'')
                               then
                               begin
                                    if(RAvis.NumPlanificateur=NumPlanificateur)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(DesignationTypeAvis<>'')and(DesignationTypeAvis<>'Tous')
                               then
                               begin
                                    if(RAvis.DesignationTypeAvis=DesignationTypeAvis)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(ModePaiement<>'')and(ModePaiement<>'Tous')
                               then
                               begin
                                    if(RAvis.ModePaiement=ModePaiement)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(Domiciliation<>'')and(Domiciliation<>'Tous')
                               then
                               begin
                                    if(RAvis.DomiciliationAvis=Domiciliation)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(TypeProces<>'')and(TypeProces<>'Tous')
                               then
                               begin
                                    if(RAvis.TypeProces=TypeProces)
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(AvisConcerneTiers<>'')and(AvisConcerneTiers<>'Tous')
                               then
                               begin
                                    OKAvis:=FunctionFichierInclu(RAvis.AvisConcerneTiers,AvisConcerneTiers);
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then IndiqueTypeAvis(RAvis.DesignationTypeAvis,PositionTypeAvis,NumTypeAvis,SigneDebitCredit,CompteImputation,DebitCredit,TypeProcesRecherche,FichierconcerneRecherche,JourneauxAuxiliaireUtilise);

                          if(OKAvis=true)then
                          begin
                               if(CodeTiers<>'Tous')then
                               begin
                                    if(CodeTiers<>'')then
                                    begin
                                         OKAvis:=TrouverGroupeTiers(CodeTiers,RAvis.CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);
                                    end
                                    else OKAvis:=true;
                               end
                               else
                               if(RAvis.ValiditeAvis=true)and(EtatAvisMaintenu<>'En instance')then
                               begin
                                    if(strtodate(RAvis.DateAvis)<=strtodate(DateFin))
                                    then
                                    begin
                                         OKTiers:=false;
                                         R:=2;
                                         while(R<=i)and(OKTiers=false)do
                                         begin
                                              if(RAvis.CodeTiers=Tableau.Cells[9,R])then
                                              begin
                                                   OKTiers:=true;
                                                   if(strtodate(RAvis.DateAvis)<strtodate(DateDebut))then
                                                   begin
                                                        if(DebitCreditAvis='Débit')then
                                                        begin
                                                             Tableau.Cells[6,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[6,R])+(SigneDebitCredit*RAvis.Montant*PourcentagePartCommune)),'2','C','');
                                                        end;
                                                        if(DebitCreditAvis='Crédit')then
                                                        begin
                                                             Tableau.Cells[6,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[6,R])-(SigneDebitCredit*RAvis.Montant*PourcentagePartCommune)),'2','C','');
                                                        end;
                                                   end
                                                   else
                                                   begin
                                                        if(DebitCreditAvis='Débit')then
                                                        begin
                                                             Tableau.Cells[7,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[7,R])+(SigneDebitCredit*RAvis.Montant*PourcentagePartCommune)),'2','C','');
                                                        end;
                                                        if(DebitCreditAvis='Crédit')then
                                                        begin
                                                             Tableau.Cells[8,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,R])+(SigneDebitCredit*RAvis.Montant*PourcentagePartCommune)),'2','C','');
                                                        end;
                                                   end;

                                                   if(Tableau.Cells[23,R]='')
                                                   then Tableau.Cells[23,R]:=inttostr(P)
                                                   else Tableau.Cells[23,R]:=Tableau.Cells[23,R]+';'+inttostr(P);
                                              end;
                                              R:=R+1;
                                         end;
                                         OKAvis:=not OKTiers;
                                    end
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;
                          end;

                          if(OKAvis=true)then
                          begin
                               if(strtodate(RAvis.DateAvis)<strtodate(DateDebut))then
                               begin
                                    if(RAvis.ValiditeAvis=true)and(EtatAvisMaintenu<>'En instance')then
                                    begin
                                         OKAvis:=false;
                                         if(CodeTiers<>'Tous')
                                         then
                                         begin
                                              if(DebitCreditAvis='Débit')then
                                              begin
                                                   Tableau.Cells[7,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[7,1])+(SigneDebitCredit*RAvis.Montant*PourcentagePartCommune)),'2','C','');
                                              end;
                                              if(DebitCreditAvis='Crédit')then
                                              begin
                                                   Tableau.Cells[8,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,1])+(SigneDebitCredit*RAvis.Montant*PourcentagePartCommune)),'2','C','');
                                              end;
                                         end
                                         else
                                         begin
                                              i:=i+1;
                                              Tableau.Rows[i].Text:=inttostr(i);
                                              Tableau.Cells[1,i]:=Completezerogauche(inttostr(RAvis.NumAvis),'5');
                                              Tableau.Cells[2,i]:=RAvis.DateAvis;
                                              Tableau.Cells[3,i]:=RAvis.DateExecute;
                                              Tableau.Cells[4,i]:=RAvis.ModePaiement;
                                              Tableau.Cells[5,i]:=RAvis.DomiciliationPiece;
                                              if(CodeTiers<>'Tous')then Tableau.Cells[6,i]:=RAvis.NumPiece;

                                              if(DebitCreditAvis='Débit')
                                              then Tableau.Cells[7,i]:=Vergule(floattostr(SigneDebitCredit*RAvis.Montant*PourcentagePartCommune),'2','C','')
                                              else Tableau.Cells[8,i]:=Vergule(floattostr(SigneDebitCredit*RAvis.Montant*PourcentagePartCommune),'2','C','');

                                              Tableau.Cells[9,i]:=RAvis.CodeTiers;

                                              Tableau.Cells[10,i]:=ImporteDataProcesTiers(RAvis.TypeProces,RAvis.AvisConcerneTiers,RAvis.CodeTiers,PositionTiersRecherche)+DesignationGroupe;

                                              if(FSTraitementDonnees.RBPreciserTypeAvis.Checked=true)
                                              then Tableau.Cells[11,i]:=RAvis.DesignationTypeAvis
                                              else Tableau.Cells[11,i]:='';
                                              if(FSTraitementDonnees.RBPreciserNatureOperationAvis.Checked=true)then
                                              begin
                                                   if(Tableau.Cells[11,i]<>'')
                                                   then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+': '+RAvis.NatureDepense
                                                   else Tableau.Cells[11,i]:=RAvis.NatureDepense;
                                              end
                                              else
                                              begin
                                                   if(Tableau.Cells[11,i]='')then Tableau.Cells[11,i]:=RAvis.DesignationTypeAvis;
                                              end;

                                              Tableau.Cells[12,i]:=RAvis.CompteImputation;
                                              Tableau.Cells[13,i]:=DebitCreditAvis;
                                              Tableau.Cells[14,i]:=Completezerogauche(inttostr(RAvis.NumAvis),'5');
                                              if(RAvis.ValiditeAvis=true)
                                              then
                                              begin
                                                   if(EtatAvisMaintenu='')
                                                   then Tableau.Cells[15,i]:='Maintenu'
                                                   else Tableau.Cells[15,i]:=EtatAvisMaintenu;
                                              end
                                              else Tableau.Cells[15,i]:='Annulé';
                                              Tableau.Cells[16,i]:=RAvis.Origine;
                                              Tableau.Cells[17,i]:=RAvis.AvisConcerneTiers;
                                              RProjetFinance:=ChercherProjetFinance(RAvis.NumProjetFinance,PositionProjetFinancesRecherche);
                                              if(RProjetFinance.DesignationProjetFinance<>'')
                                              then Tableau.Cells[18,i]:=RProjetFinance.DesignationProjetFinance
                                              else Tableau.Cells[18,i]:='Partie Commune à '+floattostr(PourcentagePartCommune*100)+'%';
                                              if ChercherAvis(Lastlaters(RAvis.Origine,Longueur(RAvis.Origine)-5),FSTraitementDonnees.EditBaseAvisFichierConcerne.Text,RAvis.TypeProces,RAvis.AvisConcerneTiers,FSTraitementDonnees.RBModePayementNumAvis.Checked,FSTraitementDonnees.RBModePayementModePayement.Checked,FSTraitementDonnees.RBModePayementDomiciliation.Checked,FSTraitementDonnees.RBModePayementNumPiece.Checked,FSTraitementDonnees.RBModePayementDateAvis.Checked,FSTraitementDonnees.RBModePayementDateExecution.Checked,FSTraitementDonnees.TableauListeAvisTrouver,FSTraitementDonnees.EditListeNumAvisTrouver,FSTraitementDonnees.EditListeModePaiementTrouver,FSTraitementDonnees.EditListeDomiciliationAvisTrouver,FSTraitementDonnees.EditListeDomiciliationPieceTrouver,FSTraitementDonnees.EditListeNumPieceTrouver,FSTraitementDonnees.EditListeDateTrouver,FSTraitementDonnees.EditMemoLiseAvisTrouver)=true then
                                              begin
                                                   Tableau.Cells[19,i]:=DebitCreditAvis+' '+RAvis.NumDomiciliationAvis+'/'+RAvisTrouver.DebitCredit+' '+RAvisTrouver.NumDomiciliationAvis;
                                              end
                                              else
                                              begin
                                                   Tableau.Cells[19,i]:='';
                                              end;
                                              Tableau.Cells[20,i]:='';
                                              Tableau.Cells[21,i]:='';
                                              Tableau.Cells[22,i]:='';
                                              Tableau.Cells[23,i]:=inttostr(P);
                                              Tableau.Cells[24,i]:=FichierConserneAvis;
                                         end;
                                    end
                                    else OKAvis:=false;
                               end
                               else
                               begin
                                    if(strtodate(RAvis.DateAvis)>=strtodate(DateDebut))
                                    and(strtodate(RAvis.DateAvis)<=strtodate(DateFin))
                                    then
                                    begin
                                         OKAvis:=true;
                                    end
                                    else OKAvis:=false;
                               end;
                          end;

                          if(OKAvis=true)then
                          begin
                               i:=i+1;
                               Tableau.Rows[i].Text:=inttostr(i);
                               Tableau.Cells[1,i]:=Completezerogauche(inttostr(RAvis.NumAvis),'5');
                               Tableau.Cells[2,i]:=RAvis.DateAvis;
                               Tableau.Cells[3,i]:=RAvis.DateExecute;
                               Tableau.Cells[4,i]:=RAvis.ModePaiement;
                               Tableau.Cells[5,i]:=RAvis.DomiciliationPiece;
                               if(CodeTiers<>'Tous')then Tableau.Cells[6,i]:=RAvis.NumPiece;

                               if(DebitCreditAvis='Débit')
                               then Tableau.Cells[7,i]:=Vergule(floattostr(SigneDebitCredit*RAvis.Montant*PourcentagePartCommune),'2','C','')
                               else Tableau.Cells[8,i]:=Vergule(floattostr(SigneDebitCredit*RAvis.Montant*PourcentagePartCommune),'2','C','');


                               Tableau.Cells[9,i]:=RAvis.CodeTiers;

                               Tableau.Cells[10,i]:=ImporteDataProcesTiers(RAvis.TypeProces,RAvis.AvisConcerneTiers,RAvis.CodeTiers,PositionTiersRecherche)+DesignationGroupe;

                               if(FSTraitementDonnees.RBPreciserTypeAvis.Checked=true)
                               then Tableau.Cells[11,i]:=RAvis.DesignationTypeAvis
                               else Tableau.Cells[11,i]:='';
                               if(FSTraitementDonnees.RBPreciserNatureOperationAvis.Checked=true)then
                               begin
                                    if(Tableau.Cells[11,i]<>'')
                                    then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+': '+RAvis.NatureDepense
                                    else Tableau.Cells[11,i]:=RAvis.NatureDepense;
                               end
                               else
                               begin
                                    if(Tableau.Cells[11,i]='')then Tableau.Cells[11,i]:=RAvis.DesignationTypeAvis;
                               end;

                               Tableau.Cells[12,i]:=RAvis.CompteImputation;
                               Tableau.Cells[13,i]:=DebitCreditAvis;
                               Tableau.Cells[14,i]:=Completezerogauche(inttostr(RAvis.NumAvis),'5');
                               if(RAvis.ValiditeAvis=true)
                               then
                               begin
                                    if(EtatAvisMaintenu='')
                                    then Tableau.Cells[15,i]:='Maintenu'
                                    else Tableau.Cells[15,i]:=EtatAvisMaintenu;
                               end
                               else Tableau.Cells[15,i]:='Annulé';
                               Tableau.Cells[16,i]:=RAvis.Origine;
                               Tableau.Cells[17,i]:=RAvis.AvisConcerneTiers;
                               RProjetFinance:=ChercherProjetFinance(RAvis.NumProjetFinance,PositionProjetFinancesRecherche);
                               if(RProjetFinance.DesignationProjetFinance<>'')
                               then Tableau.Cells[18,i]:=RProjetFinance.DesignationProjetFinance
                               else Tableau.Cells[18,i]:='Partie Commune à '+floattostr(PourcentagePartCommune*100)+'%';

                               if ChercherAvis(Lastlaters(RAvis.Origine,Longueur(RAvis.Origine)-5),FSTraitementDonnees.EditBaseAvisFichierConcerne.Text,RAvis.TypeProces,RAvis.AvisConcerneTiers,FSTraitementDonnees.RBModePayementNumAvis.Checked,FSTraitementDonnees.RBModePayementModePayement.Checked,FSTraitementDonnees.RBModePayementDomiciliation.Checked,FSTraitementDonnees.RBModePayementNumPiece.Checked,FSTraitementDonnees.RBModePayementDateAvis.Checked,FSTraitementDonnees.RBModePayementDateExecution.Checked,FSTraitementDonnees.TableauListeAvisTrouver,FSTraitementDonnees.EditListeNumAvisTrouver,FSTraitementDonnees.EditListeModePaiementTrouver,FSTraitementDonnees.EditListeDomiciliationAvisTrouver,FSTraitementDonnees.EditListeDomiciliationPieceTrouver,FSTraitementDonnees.EditListeNumPieceTrouver,FSTraitementDonnees.EditListeDateTrouver,FSTraitementDonnees.EditMemoLiseAvisTrouver)=true then
                               begin
                                    Tableau.Cells[19,i]:=DebitCreditAvis+' '+RAvis.NumDomiciliationAvis+'/'+RAvisTrouver.DebitCredit+' '+RAvisTrouver.NumDomiciliationAvis;
                               end
                               else
                               begin
                                    Tableau.Cells[19,i]:='';
                               end;
                               Tableau.Cells[20,i]:='';
                               Tableau.Cells[21,i]:='';
                               Tableau.Cells[22,i]:='';
                               Tableau.Cells[23,i]:=inttostr(P);
                               Tableau.Cells[24,i]:=FichierConserneAvis;
                          end;
                     P:=P+1;
                     end;
                     finally
                     Closefile(FAvis);
                     end;
                end;
           LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
           end;
           finally
           Closefile(FBaseAvisListeAvis);
           end;
     end;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

if(NumProjetFinance<>'')and(InclureArchivePrelevementUniteFond=true)then
begin
     InclureArchivePrelevementUniteFond:=ExisteNumProjetInAffectationCompteur(NumProjetFinance);
end;

if(InclureArchivePrelevementUniteFond=true)then
begin
     TypeProcesPrelevement:='Business';   FichierConsernePrelevement:='FArchivePrelevementUniteFonds';
     if not(FunctionAdresseProces(TypeProcesPrelevement,FichierConsernePrelevement,'',AdressePrelevement,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;

     if(FSTraitementDonnees.RBAppliquerIndexationArchivePrelevement.Checked=true)then
     begin
          IndiquerPositionPeriodiqueArchivePrelevement(FichierConsernePrelevement,'',DateDebut,DateFin,IBegin,IEnd);
     end
     else
     begin
          IBegin:=0;
          IEnd:=999999999;
     end;

     IBegin:=0;

     RapportTraitement.Lines.Add('Traitement Prélèvement:');

     ChPrelevementUniteFonds:=AdressePrelevement;
     assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
     try
     if FileExists(ChPrelevementUniteFonds)then
     Reset(FPrelevementUniteFonds)
     else Rewrite(FPrelevementUniteFonds);
     iPAP:=IBegin;
     Seek(FPrelevementUniteFonds,iPAP);
     while not eof(FPrelevementUniteFonds)and(iPAP<=IEnd)do
     begin
          read(FPrelevementUniteFonds,RPrelevementUniteFonds);  Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then Exit;
          iPAP:=iPAP+1;
          OKAvis:=not RPrelevementUniteFonds.ValeurPrecise;

          RapportTraitement.Lines.Add('Prélèvement N°'+inttostr(RPrelevementUniteFonds.NumPrelevement)+'/'+RPrelevementUniteFonds.Matricule+' Tiers: '+RPrelevementUniteFonds.CodeTiers);

          if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
          begin
               if(OKAvis=true)then
               begin
                    if(FSTraitementDonnees.RBSpecifiePeriodeSelect.Checked=true)then
                    begin
                         if(strtodate(RPrelevementUniteFonds.DatePrelevement)>=strtodate(DateDebut))
                         and(strtodate(RPrelevementUniteFonds.DatePrelevement)<=strtodate(DateFin))
                         then OKPieceManquante:=true
                         else OKPieceManquante:=false;
                    end
                    else OKPieceManquante:=true;

                    if(OKPieceManquante=true)then
                    begin
                         PTCs:=PTCs+1;
                         FSTraitementDonnees.TableauToutesNumPiece.Rows[PTCs].Text:=inttostr(PTCs);
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[1,PTCs]:=RPrelevementUniteFonds.DatePrelevement;
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[2,PTCs]:=RPrelevementUniteFonds.NumPiece;
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[3,PTCs]:=RPrelevementUniteFonds.CodeTiers;;
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[4,PTCs]:=ImporteDataProcesTiers(RPrelevementUniteFonds.TypeProces,RPrelevementUniteFonds.FichierConcerne,RPrelevementUniteFonds.CodeTiers,PositionTiersRecherche)+DesignationGroupe;;
                         FSTraitementDonnees.TableauToutesNumPiece.Cells[5,PTCs]:='Prélèvement N°: '+inttostr(RPrelevementUniteFonds.NumPrelevement)+' Mat: '+RPrelevementUniteFonds.Matricule;
                    end;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(NumProjetFinance<>'')
               then
               begin
                    if(Firstlaters(NumProjetFinancePrelevement(inttostr(RPrelevementUniteFonds.NumPrelevement),RPrelevementUniteFonds.Matricule),longueur(NumProjetFinance))=NumProjetFinance)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(ModePaiement<>'')
               and(ModePaiement<>'Tous')
               then
               begin
                    if(RPrelevementUniteFonds.ModePaiement=ModePaiement)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(Domiciliation<>'')
               and(Domiciliation<>'Tous')
               then
               begin
                    if(RPrelevementUniteFonds.Domiciliation=Domiciliation)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(TypeProces<>'')
               and(TypeProces<>'Tous')
               then
               begin
                    if(RPrelevementUniteFonds.TypeProces=TypeProces)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(AvisConcerneTiers<>'')
               and(AvisConcerneTiers<>'Tous')
               then
               begin
                    OKAvis:=FunctionFichierInclu(RPrelevementUniteFonds.FichierConcerne,AvisConcerneTiers);
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(CodeTiers<>'Tous')then
               begin
                    if(CodeTiers<>'')
                    then
                    begin
                         if(RPrelevementUniteFonds.CodeTiers<>'Tous')
                         then OKAvis:=TrouverGroupeTiers(CodeTiers,RPrelevementUniteFonds.CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe)
                         else OKAvis:=true;
                    end
                    else OKAvis:=false;
               end
               else
               begin
                    if(strtodate(RPrelevementUniteFonds.DatePrelevement)<=strtodate(DateFin))then
                    begin
                         OKTiers:=false;
                         R:=2;
                         while(R<=i)and(OKTiers=false)do
                         begin
                              if(RPrelevementUniteFonds.CodeTiers=Tableau.Cells[9,R])then
                              begin
                                   OKTiers:=true;

                                   RUniteFonds:=ChercherUniteFonds(inttostr(RPrelevementUniteFonds.NumUniteFonds));
                                   Tableau.Cells[8,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,R])+(RPrelevementUniteFonds.ValeurPrelevement*RUniteFonds.ValeurMonetaireUnitaire)),'2','C','');

                              end;
                              R:=R+1;
                         end;
                         OKAvis:=not OKTiers;
                    end
                    else OKTiers:=false;
               end;
          end;

          if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
          begin
               if(OKAvis=true)and(RPrelevementUniteFonds.NumPiece<>'')then
               begin
                    if(FSTraitementDonnees.RBSpecifiePeriodeSelect.Checked=true)then
                    begin
                         if(strtodate(RPrelevementUniteFonds.DatePrelevement)>=strtodate(DateDebut))
                         and(strtodate(RPrelevementUniteFonds.DatePrelevement)<=strtodate(DateFin))
                         then OKPieceManquante:=true
                         else OKPieceManquante:=false;
                    end
                    else OKPieceManquante:=true;

                    if(OKPieceManquante=true)then
                    begin
                         PCs:=PCs+1;
                         FSTraitementDonnees.TableauNumPiece.Rows[PCs].Text:=inttostr(PCs);
                         FSTraitementDonnees.TableauNumPiece.Cells[1,PCs]:=RPrelevementUniteFonds.DatePrelevement;
                         FSTraitementDonnees.TableauNumPiece.Cells[2,PCs]:=RPrelevementUniteFonds.NumPiece;
                    end;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(strtodate(RPrelevementUniteFonds.DatePrelevement)<strtodate(DateDebut))then
               begin
                    if(CodeTiers<>'')
                    and(CodeTiers<>'Tous')
                    then
                    begin
                         OKAvis:=false;
                         //RUniteFonds:=ChercherUniteFonds(inttostr(RPrelevementUniteFonds.NumUniteFonds));
                         //Tableau.Cells[8,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,1])+(RPrelevementUniteFonds.ValeurPrelevement*RUniteFonds.ValeurMonetaireUnitaire)),'2','C','');

                         Tableau.Cells[8,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,1])+(RPrelevementUniteFonds.ValeurPrelevement)),'2','C','');
                    end
                    else OKAvis:=false;
               end
               else
               if(strtodate(RPrelevementUniteFonds.DatePrelevement)>=strtodate(DateDebut))
               and(strtodate(RPrelevementUniteFonds.DatePrelevement)<=strtodate(DateFin))
               then
               begin
                    OKAvis:=true;
               end
               else OKAvis:=false;
          end;

          if(OKAvis=true)then
          begin
               i:=i+1;
               Tableau.Rows[i].Text:=inttostr(i);
               Tableau.Cells[1,i]:=Completezerogauche(inttostr(RPrelevementUniteFonds.NumPrelevement),'5');
               Tableau.Cells[2,i]:=RPrelevementUniteFonds.DatePrelevement;
               Tableau.Cells[3,i]:='';
               Tableau.Cells[4,i]:=RPrelevementUniteFonds.ModePaiement;
               Tableau.Cells[5,i]:=RPrelevementUniteFonds.Domiciliation;
               if(CodeTiers<>'Tous')then Tableau.Cells[6,i]:=RPrelevementUniteFonds.NumPiece;

               //RUniteFonds:=ChercherUniteFonds(inttostr(RPrelevementUniteFonds.NumUniteFonds));
               //Tableau.Cells[8,i]:=Vergule(floattostr(RPrelevementUniteFonds.ValeurPrelevement*RUniteFonds.ValeurMonetaireUnitaire),'2','C','');

               Tableau.Cells[8,i]:=Vergule(floattostr(RPrelevementUniteFonds.ValeurPrelevement),'2','C','');

               Tableau.Cells[9,i]:=RPrelevementUniteFonds.CodeTiers;

               Tableau.Cells[10,i]:=ImporteDataProcesTiers(RPrelevementUniteFonds.TypeProces,RPrelevementUniteFonds.FichierConcerne,RPrelevementUniteFonds.CodeTiers,PositionTiersRecherche)+DesignationGroupe;

               if(FSTraitementDonnees.RBPreciserNatureOperationMouvement.Checked=true)
               then Document:='Prélèvement N°: '+inttostr(RPrelevementUniteFonds.NumPrelevement)+' Mat: '+RPrelevementUniteFonds.Matricule
               else Document:='';

               if(FSTraitementDonnees.RBPreciserDetailOperationMouvement.Checked=true)
               then DetailOperation:=NatureOperationPrelevement(inttostr(RPrelevementUniteFonds.NumPrelevement),RPrelevementUniteFonds.Matricule,inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds),FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Checked)
               else DetailOperation:='';

               if(FSTraitementDonnees.RBPreciserDestinationMouvement.Checked=true)then
               begin
                    Destination:='';
               end
               else Destination:='';

               if(Document<>'')then Tableau.Cells[11,i]:=Document+'.  ';
               if(DetailOperation<>'')then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+DetailOperation+'.  ';
               if(Destination<>'')then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+Destination+'.';

               Tableau.Cells[12,i]:='';
               Tableau.Cells[13,i]:='Crédit';
               Tableau.Cells[14,i]:=inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds);
               Tableau.Cells[15,i]:='Maintenu';
               Tableau.Cells[16,i]:='UF';
               Tableau.Cells[17,i]:=RPrelevementUniteFonds.FichierConcerne;
               Tableau.Cells[18,i]:='';
               Tableau.Cells[19,i]:='';
               Tableau.Cells[20,i]:='';
               Tableau.Cells[21,i]:='';
               Tableau.Cells[22,i]:='';
               Tableau.Cells[23,i]:='';
               Tableau.Cells[24,i]:='';

               RMoyenTransport:=ChercherMoyenTransport('','Prélèvement',inttostr(RPrelevementUniteFonds.NumPrelevement),RPrelevementUniteFonds.Matricule,inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds));
             
               if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Moyen transport')then Tableau.Cells[22,i]:=RMoyenTransport.MoyenTransport;
               if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Matricule')then Tableau.Cells[22,i]:=RMoyenTransport.MatriculeTransport;
               if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Chauffeur')then Tableau.Cells[22,i]:=RMoyenTransport.NomChauffeur+' '+RMoyenTransport.PrenomChauffeur;
               if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Pièce Identité')then Tableau.Cells[22,i]:=RMoyenTransport.PieceIdentite;
          end;
     end;
     finally
     CloseFile(FPrelevementUniteFonds);
     end;
end;

   LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

if(InclureListeMouvement=true)then
begin
     ///////////////////////////////////////////////////////////////////////////
     if(FSTraitementDonnees.RBAfficherMonvementAvecLocalisationGeo.Checked=true)then
     begin
          ListeOrdreMouvemen:=ListeOrdreMouvementAppartenanceGlobal(ExerciceAnnee,CodeTiers);
     end;

     RapportTraitement.Lines.Add('Traitement Mouvement:');

     R:=1;
     while(R<=FSTraitementDonnees.TableauIndiqueAdresseListeMouvement.RowCount-1)do
     begin
           ChListeMouvement:=FSTraitementDonnees.TableauIndiqueAdresseListeMouvement.Cells[2,R];//RParc.Parcours+'\'+Exercice+'FListeMouvement';
           assignfile(FListeMouvement,ChListeMouvement);
           try
           if FileExists(ChListeMouvement)then
           Reset(FListeMouvement)
           else begin Showmessage('Attention ! '+ChListeMouvement+' n''existe pas !'); Exit; end;
           Seek(FListeMouvement,0);
           while not eof(FListeMouvement)do
           begin
                read(FListeMouvement,RListeMouvement);   Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then Exit;
                RTypeMouvement:=ChercherTypeMouvement(RListeMouvement.PositionTypeMouvement,ExerciceAnnee,AdresseFichierConcerne);
                RMouvement:=ChercherMouvement(inttostr(RListeMouvement.PositionTypeMouvement),RListeMouvement.PositionMouvement,AdresseFichierConcerne);

                RapportTraitement.Lines.Add('Mouvement N°: '+inttostr(RListeMouvement.NumListeMouvement)+' Tiers: '+RListeMouvement.CodeTiers);

                if(RMouvement.DebitCredit<>'')then
                begin
                     DebitCreditTypeMouvement:=RMouvement.DebitCredit;
                end
                else
                begin
                     DebitCreditTypeMouvement:='Débit';
                     if(RTypeMouvement.SigneTypeMouvement='+')
                     then DebitCreditTypeMouvement:='Débit'
                     else DebitCreditTypeMouvement:='Crédit';
                end;

                OKAvis:=RMouvement.MouvementeFinance;

                if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
                begin
                     if(OKAvis=true)then
                     begin
                          if(FSTraitementDonnees.RBSpecifiePeriodeSelect.Checked=true)then
                          begin
                               if(strtodate(RListeMouvement.DateMouvement)>=strtodate(DateDebut))
                               and(strtodate(RListeMouvement.DateMouvement)<=strtodate(DateFin))
                               then OKPieceManquante:=true
                               else OKPieceManquante:=false;
                          end
                          else OKPieceManquante:=true;

                          if(OKPieceManquante=true)then
                          begin
                               PTCs:=PTCs+1;
                               FSTraitementDonnees.TableauToutesNumPiece.Rows[PTCs].Text:=inttostr(PTCs);
                               FSTraitementDonnees.TableauToutesNumPiece.Cells[1,PTCs]:=RListeMouvement.DateMouvement;
                               if(RListeMouvement.ReferenceSourceListeMouvement<>'')
                               then FSTraitementDonnees.TableauToutesNumPiece.Cells[2,PTCs]:=RListeMouvement.ReferenceSourceListeMouvement
                               else FSTraitementDonnees.TableauToutesNumPiece.Cells[2,PTCs]:=RListeMouvement.NumPiece;
                               FSTraitementDonnees.TableauToutesNumPiece.Cells[3,PTCs]:=RListeMouvement.CodeTiers;
                               FSTraitementDonnees.TableauToutesNumPiece.Cells[4,PTCs]:=ImporteDataProcesTiers(RListeMouvement.TypeProces,RListeMouvement.FichierTiersConserne,RListeMouvement.CodeTiers,PositionTiersRecherche)+DesignationGroupe;
                               FSTraitementDonnees.TableauToutesNumPiece.Cells[5,PTCs]:=RMouvement.DesignationMouvement+' N° '+inttostr(RListeMouvement.NumListeMouvement);
                          end;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     if existenuminTexte(inttostr(RListeMouvement.OrdreListeMouvement),ListeOrdreMouvemen)
                     then OKAvis:=false
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(RBJustifierAvisNonJustifieAvis=true)then
                     begin

                     end
                     else
                     if(RBJustifierAvis=true)then
                     begin
                          if(RListeMouvement.ListeNumAvis<>'')
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else
                     if(RBNonJustifieAvis=true)then
                     begin
                          if(RListeMouvement.ListeNumAvis='')
                          then OKAvis:=true
                          else OKAvis:=false;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     if(CodeTiers<>'')and(CodeTiers<>'Tous')then
                     begin
                          if(AfficheAvisAnnuler=false)then
                          begin
                               OKAvis:=RListeMouvement.OKExecution;
                          end
                          else OKAvis:=true;
                     end
                     else
                     begin
                          OKAvis:=RListeMouvement.OKExecution;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     if(AfficherAvisExecutesNonExecutes=true)then
                     begin
                          OKAvis:=true
                     end
                     else
                     if(AfficherAvisExecutes=true)then
                     begin
                          if(RListeMouvement.OKExecution=true)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else
                     if(AfficherAvisNonExecutes=true)then
                     begin
                          if(RListeMouvement.OKExecution=false)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(NumProjetFinance<>'')
                     then
                     begin
                          if(Firstlaters(RListeMouvement.NumProjetFinance,longueur(NumProjetFinance))=NumProjetFinance)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(DesignationTypeAvis='')or(DesignationTypeAvis='Tous')
                     then OKAvis:=true
                     else OKAvis:=false;
                end;

                if(OKAvis=true)then
                begin
                     if(ModePaiement<>'')and(ModePaiement<>'Tous')
                     then
                     begin
                          if(RListeMouvement.ModePaiement=ModePaiement)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(Domiciliation<>'')and(Domiciliation<>'Tous')
                     then
                     begin
                          if(RListeMouvement.Domiciliation=Domiciliation)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(TypeProces<>'')and(TypeProces<>'Tous')
                     then
                     begin
                          if(RListeMouvement.TypeProces=TypeProces)
                          then OKAvis:=true
                          else OKAvis:=false;
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(AvisConcerneTiers<>'')and(AvisConcerneTiers<>'Tous')
                     then
                     begin
                          OKAvis:=FunctionFichierInclu(RListeMouvement.FichierTiersConserne,AvisConcerneTiers);

                          {if(RListeMouvement.FichierTiersConserne=AvisConcerneTiers)
                          then OKAvis:=true
                          else OKAvis:=false;}
                     end
                     else OKAvis:=true;
                end;

                if(OKAvis=true)then
                begin
                     if(CodeTiers<>'Tous')then
                     begin
                          if(CodeTiers<>'')then
                          begin
                               {if(RListeMouvement.CodeTiers=CodeTiers)
                               then OKAvis:=true
                               else OKAvis:=false;}

                               OKAvis:=TrouverGroupeTiers(CodeTiers,RListeMouvement.CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);
                          end
                          else OKAvis:=true;
                     end
                     else
                     begin
                          if(strtodate(RListeMouvement.DateMouvement)<=strtodate(DateFin))
                          then
                          begin
                               OKTiers:=false;
                               R:=2;
                               while(R<=i)and(OKTiers=false)do
                               begin
                                    if(RListeMouvement.CodeTiers=Tableau.Cells[9,R])then
                                    begin
                                         OKTiers:=true;
                                         if(strtodate(RListeMouvement.DateMouvement)<strtodate(DateDebut))then
                                         begin
                                              if(DebitCreditTypeMouvement='Débit')then
                                              begin
                                                   Tableau.Cells[6,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[6,R])+RListeMouvement.MontantMouvement),'2','C','');
                                              end;
                                              if(DebitCreditTypeMouvement='Crédit')then
                                              begin
                                                   Tableau.Cells[6,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[6,R])-RListeMouvement.MontantMouvement),'2','C','');
                                              end;
                                         end
                                         else
                                         begin
                                              if(DebitCreditTypeMouvement='Débit')then
                                              begin
                                                   Tableau.Cells[7,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[7,R])+RListeMouvement.MontantMouvement),'2','C','');
                                              end;
                                              if(DebitCreditTypeMouvement='Crédit')then
                                              begin
                                                   Tableau.Cells[8,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,R])+RListeMouvement.MontantMouvement),'2','C','');
                                              end;
                                         end;
                                    end;
                                    R:=R+1;
                               end;
                               OKAvis:=not OKTiers;
                          end
                          else OKAvis:=false;
                     end;
                end;

                if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
                begin
                     if(OKAvis=true)and(RListeMouvement.ReferenceSourceListeMouvement<>'')or(RListeMouvement.NumPiece<>'')then
                     begin
                          if(FSTraitementDonnees.RBSpecifiePeriodeSelect.Checked=true)then
                          begin
                               if(strtodate(RListeMouvement.DateMouvement)>=strtodate(DateDebut))
                               and(strtodate(RListeMouvement.DateMouvement)<=strtodate(DateFin))
                               then OKPieceManquante:=true
                               else OKPieceManquante:=false;
                          end
                          else OKPieceManquante:=true;

                          if(OKPieceManquante=true)then
                          begin
                               PCs:=PCs+1;
                               FSTraitementDonnees.TableauNumPiece.Rows[PCs].Text:=inttostr(PCs);
                               FSTraitementDonnees.TableauNumPiece.Cells[1,PCs]:=RListeMouvement.DateMouvement;
                               if(RListeMouvement.ReferenceSourceListeMouvement<>'')
                               then FSTraitementDonnees.TableauNumPiece.Cells[2,PCs]:=RListeMouvement.ReferenceSourceListeMouvement
                               else FSTraitementDonnees.TableauNumPiece.Cells[2,PCs]:=RListeMouvement.NumPiece;
                          end;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     if(strtodate(RListeMouvement.DateMouvement)<strtodate(DateDebut))then
                     begin
                          if(RListeMouvement.OKExecution=true)then
                          begin
                               OKAvis:=false;
                               if(CodeTiers<>'Tous')
                               then
                               begin
                                    if(DebitCreditTypeMouvement='Débit')then
                                    begin
                                         Tableau.Cells[7,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[7,1])+RListeMouvement.MontantMouvement),'2','C','');
                                    end;
                                    if(DebitCreditTypeMouvement='Crédit')then
                                    begin
                                         Tableau.Cells[8,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,1])+RListeMouvement.MontantMouvement),'2','C','');
                                    end;
                               end
                               else
                               begin
                                    i:=i+1;
                                    Tableau.Rows[i].Text:=inttostr(i);
                                    Tableau.Cells[1,i]:=Completezerogauche(inttostr(RListeMouvement.OrdreListeMouvement),'5');
                                    Tableau.Cells[2,i]:=RListeMouvement.DateMouvement;
                                    Tableau.Cells[3,i]:=RListeMouvement.DateExecutionMouvement;
                                    Tableau.Cells[4,i]:=RListeMouvement.ModePaiement;
                                    Tableau.Cells[5,i]:=RListeMouvement.Domiciliation;
                                    if(CodeTiers<>'Tous')then Tableau.Cells[6,i]:='';

                                    if(DebitCreditAvis='Débit')then
                                    begin
                                         Tableau.Cells[6,i]:=Vergule(floattostr(RListeMouvement.MontantMouvement),'2','C','');
                                    end;
                                    if(DebitCreditAvis='Crédit')then
                                    begin
                                         Tableau.Cells[6,i]:=Vergule(floattostr((-1)*RListeMouvement.MontantMouvement),'2','C','');
                                    end;

                                    Tableau.Cells[9,i]:=RListeMouvement.CodeTiers;

                                    Tableau.Cells[10,i]:=ImporteDataProcesTiers(RListeMouvement.TypeProces,RListeMouvement.FichierTiersConserne,RListeMouvement.CodeTiers,PositionTiersRecherche)+DesignationGroupe;

                                    RTypeMouvement:=ChercherTypeMouvement(RListeMouvement.PositionTypeMouvement,ExerciceAnnee,AdresseFichierConcerne);
                                    RMouvement:=ChercherMouvement(inttostr(RListeMouvement.PositionTypeMouvement),RListeMouvement.PositionMouvement,AdresseFichierConcerne);

                                    if(FSTraitementDonnees.RBPreciserNatureOperationMouvement.Checked=true)
                                    then Document:=RMouvement.DesignationMouvement+' N° '+inttostr(RListeMouvement.NumListeMouvement)
                                    else Document:='';

                                    if(FSTraitementDonnees.RBPreciserDetailOperationMouvement.Checked=true)
                                    then DetailOperation:=NatureOperationMouvement(RTypeMouvement.DesignationTypeMouvement,inttostr(RListeMouvement.OrdreListeMouvement),FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Checked)
                                    else DetailOperation:='';

                                    if(FSTraitementDonnees.RBPreciserDestinationMouvement.Checked=true)then
                                    begin
                                         Destination:=ChercherLocalisationGeographique(RListeMouvement.CodeZoneExecutionMouvement,'FZone').IntitulleLocalisationGeographique;
                                         if(Destination<>'')
                                         then Destination:='; '+'Déstination: '+Destination;
                                    end
                                    else Destination:='';

                                    if(Document<>'')then Tableau.Cells[11,i]:=Document+'.  ';
                                    if(DetailOperation<>'')then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+DetailOperation+'.  ';
                                    if(Destination<>'')then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+Destination+'.';

                                    Tableau.Cells[12,i]:='';
                                    Tableau.Cells[13,i]:=DebitCreditTypeMouvement;
                                    Tableau.Cells[14,i]:=Completezerogauche(inttostr(RListeMouvement.NumListeMouvement),'5');
                                    if(RListeMouvement.OKExecution=true)
                                    then Tableau.Cells[15,i]:='Maintenu Exécuter'
                                    else Tableau.Cells[15,i]:='Maintenu Non Exécuter';
                                    Tableau.Cells[16,i]:='LM';
                                    Tableau.Cells[17,i]:=RListeMouvement.FichierTiersConserne;
                                    Tableau.Cells[18,i]:=ChercherProjetFinance(RListeMouvement.NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
                                    Tableau.Cells[19,i]:='';
                                    Tableau.Cells[20,i]:='';
                                    Tableau.Cells[21,i]:='';
                                    Tableau.Cells[22,i]:='';
                                    Tableau.Cells[23,i]:='';
                                    Tableau.Cells[24,i]:=RListeMouvement.ListeNumAvis;

                                    RMoyenTransport:=ChercherMoyenTransport('','Mouvement',inttostr(RListeMouvement.PositionMouvement),'',inttostr(RListeMouvement.OrdreListeMouvement));

                                    if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Moyen transport')then Tableau.Cells[22,i]:=RMoyenTransport.MoyenTransport;
                                    if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Matricule')then Tableau.Cells[22,i]:=RMoyenTransport.MatriculeTransport;
                                    if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Chauffeur')then Tableau.Cells[22,i]:=RMoyenTransport.NomChauffeur+' '+RMoyenTransport.PrenomChauffeur;
                                    if(FSTraitementDonnees.EditTitreInfoMoyenTransport.Text='Pièce Identité')then Tableau.Cells[22,i]:=RMoyenTransport.PieceIdentite;
                               end;
                          end
                          else OKAvis:=false;
                     end
                     else
                     begin
                          if(strtodate(RListeMouvement.DateMouvement)>=strtodate(DateDebut))
                          and(strtodate(RListeMouvement.DateMouvement)<=strtodate(DateFin))
                          then
                          begin
                               OKAvis:=true;
                          end
                          else OKAvis:=false;
                     end;
                end;

                if(OKAvis=true)then
                begin
                     i:=i+1;
                     Tableau.Rows[i].Text:=inttostr(i);
                     Tableau.Cells[1,i]:=Completezerogauche(inttostr(RListeMouvement.OrdreListeMouvement),'5');
                     Tableau.Cells[2,i]:=RListeMouvement.DateMouvement;
                     Tableau.Cells[3,i]:=RListeMouvement.DateExecutionMouvement;
                     Tableau.Cells[4,i]:=RListeMouvement.ModePaiement;
                     Tableau.Cells[5,i]:=RListeMouvement.Domiciliation;
                     if(CodeTiers<>'Tous')then Tableau.Cells[6,i]:=RListeMouvement.NumPiece;

                     if(DebitCreditTypeMouvement='Débit')then
                     begin
                          Tableau.Cells[7,i]:=Vergule(floattostr(RListeMouvement.MontantMouvement),'2','C','');
                     end;
                     if(DebitCreditTypeMouvement='Crédit')then
                     begin
                          Tableau.Cells[8,i]:=Vergule(floattostr(RListeMouvement.MontantMouvement),'2','C','');
                     end;

                     Tableau.Cells[9,i]:=RListeMouvement.CodeTiers;

                     Tableau.Cells[10,i]:=ImporteDataProcesTiers(RListeMouvement.TypeProces,RListeMouvement.FichierTiersConserne,RListeMouvement.CodeTiers,PositionTiersRecherche)+DesignationGroupe;

                     RTypeMouvement:=ChercherTypeMouvement(RListeMouvement.PositionTypeMouvement,ExerciceAnnee,AdresseFichierConcerne);
                     RMouvement:=ChercherMouvement(inttostr(RListeMouvement.PositionTypeMouvement),RListeMouvement.PositionMouvement,AdresseFichierConcerne);

                     if(FSTraitementDonnees.RBPreciserNatureOperationMouvement.Checked=true)
                     then Document:=RMouvement.DesignationMouvement+' N° '+inttostr(RListeMouvement.NumListeMouvement)
                     else Document:='';

                     if(FSTraitementDonnees.RBPreciserDetailOperationMouvement.Checked=true)
                     then DetailOperation:=NatureOperationMouvement(RTypeMouvement.DesignationTypeMouvement,inttostr(RListeMouvement.OrdreListeMouvement),FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Checked)
                     else DetailOperation:='';

                     if(FSTraitementDonnees.RBPreciserDestinationMouvement.Checked=true)then
                     begin
                          Destination:=ChercherLocalisationGeographique(RListeMouvement.CodeZoneExecutionMouvement,'FZone').IntitulleLocalisationGeographique;
                          if(Destination<>'')
                          then Destination:='; '+'Déstination: '+Destination;
                     end
                     else Destination:='';

                     if(Document<>'')then Tableau.Cells[11,i]:=Document+'.  ';
                     if(DetailOperation<>'')then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+DetailOperation+'.  ';
                     if(Destination<>'')then Tableau.Cells[11,i]:=Tableau.Cells[11,i]+Destination+'.';

                     Tableau.Cells[12,i]:='';
                     Tableau.Cells[13,i]:=DebitCreditTypeMouvement;
                     Tableau.Cells[14,i]:=Completezerogauche(inttostr(RListeMouvement.NumListeMouvement),'5');
                     if(RListeMouvement.OKExecution=true)
                     then Tableau.Cells[15,i]:='Maintenu Exécuter'
                     else Tableau.Cells[15,i]:='Maintenu Non Exécuter';
                     Tableau.Cells[16,i]:='LM';
                     Tableau.Cells[17,i]:=RListeMouvement.FichierTiersConserne;
                     Tableau.Cells[18,i]:=ChercherProjetFinance(RListeMouvement.NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
                     Tableau.Cells[19,i]:='';
                     Tableau.Cells[20,i]:='';
                     Tableau.Cells[21,i]:='';
                     Tableau.Cells[22,i]:='';
                     Tableau.Cells[23,i]:='';
                     Tableau.Cells[24,i]:=RListeMouvement.ListeNumAvis;

                     RMoyenTransport:=ChercherMoyenTransport('','Fiche Saisie Commerciale',inttostr(RListeMouvement.PositionMouvement),'',inttostr(RListeMouvement.OrdreListeMouvement));
                     Tableau.Cells[22,i]:=RMoyenTransport.MatriculeTransport;
                end;
           end;
           finally
           CloseFile(FListeMouvement);
           end;
     R:=R+1;
     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
     end;
     ///////////////////////////////////////////////////////////////////////////
end;

    LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

if(InclureSituationMarche=true)then
begin
     RapportTraitement.Lines.Add('Traitement Situation de marché:');

     //////////////////////////////////////////////////////////////////////////
     OpenFParc(RParc);
     ChSituationMarche:=RParc.Parcours+'\'+Exercice+'FSituationMarche';
     assignfile(FSituationMarche,ChSituationMarche);
     try
     if FileExists(ChSituationMarche)then
     Reset(FSituationMarche)
     else Rewrite(FSituationMarche);
     Seek(FSituationMarche,0);
     while not eof(FSituationMarche)do
     begin
          read(FSituationMarche,RSituationMarche); Application.ProcessMessages;   if(FSTraitementDonnees.RBSuspendreTraitement.Checked)then Exit;

          RMarcheCopie:=ChercherMarche(RSituationMarche.NSMarche);

          RapportTraitement.Lines.Add('Situation N°: '+inttostr(RSituationMarche.NSituationMarche)+'/'+inttostr(RSituationMarche.NSMarche)+' du '+RSituationMarche.DateSituationMarche+' Tiers: '+RMarcheCopie.CodeMaitreOuvrage);

          if(RMarcheCopie.DebitCredit<>'')then
          begin
               DebitCreditTypeMouvement:=RMarcheCopie.DebitCredit;
          end
          else
          begin
               DebitCreditTypeMouvement:='Crédit';
          end;

          if(RSituationMarche.NSituationMarche<>0)
          then OKAvis:=true
          else OKAvis:=false;

          if(OKAvis=true)then
          begin
               if(NSMarcheSelect<>'')then
               begin
                    if(inttostr(RSituationMarche.NSMarche)=NSMarcheSelect)
                    then OKAvis:=true
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(RBJustifierAvisNonJustifieAvis=true)then
               begin

               end
               else
               if(RBJustifierAvis=true)then
               begin
                    if(RSituationMarche.ListeNumAvis<>'')
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else
               if(RBNonJustifieAvis=true)then
               begin
                    if(RSituationMarche.ListeNumAvis='')
                    then OKAvis:=true
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(CodeTiers<>'')and(CodeTiers<>'Tous')then
               begin
                    if(AfficheAvisAnnuler=false)then
                    begin
                         OKAvis:=RSituationMarche.ValiditeSituation;
                    end
                    else OKAvis:=true;
               end
               else
               begin
                    OKAvis:=RSituationMarche.ValiditeSituation;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(NumProjetFinance<>'')
               then
               begin
                    if(Firstlaters(RMarcheCopie.NumProjetFinance,longueur(NumProjetFinance))=NumProjetFinance)
                    then OKAvis:=true
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(ModePaiement<>'')and(ModePaiement<>'Tous')
               then
               begin
                    if(RSituationMarche.ModePaiement=ModePaiement)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(Domiciliation<>'')and(Domiciliation<>'Tous')
               then
               begin
                    if(RSituationMarche.Domiciliation=Domiciliation)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(TypeProces<>'')and(TypeProces<>'Tous')
               then
               begin
                    if(RMarcheCopie.TypeProces=TypeProces)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(AvisConcerneTiers<>'')and(AvisConcerneTiers<>'Tous')
               then
               begin
                    OKAvis:=FunctionFichierInclu(RMarcheCopie.FichierConcerneTiers,AvisConcerneTiers);

                    if(RMarcheCopie.FichierConcerneTiers=AvisConcerneTiers)
                    then OKAvis:=true
                    else OKAvis:=false;
               end
               else OKAvis:=true;
          end;

          if(OKAvis=true)then
          begin
               if(CodeTiers<>'Tous')then
               begin
                    if(CodeTiers<>'')then
                    begin
                         if(RMarcheCopie.CodeMaitreOuvrage=CodeTiers)
                         then OKAvis:=true
                         else OKAvis:=false;

                         OKAvis:=TrouverGroupeTiers(CodeTiers,RMarcheCopie.CodeMaitreOuvrage,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);
                    end
                    else OKAvis:=true;
               end
               else
               begin
                    if(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)<=StringToDate(DateFin,'DateFin'))
                    then
                    begin
                         OKTiers:=false;
                         R:=2;
                         while(R<=i)and(OKTiers=false)do
                         begin
                              if(RMarcheCopie.CodeMaitreOuvrage=Tableau.Cells[9,R])then
                              begin
                                   OKTiers:=true;
                                   if(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)<StringToDate(DateDebut,'DateDebut'))then
                                   begin
                                        if(DebitCreditTypeMouvement='Débit')then
                                        begin
                                             Tableau.Cells[6,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[6,R])+RSituationMarche.MontantSituationTTCNet),'2','C','');
                                        end;
                                        if(DebitCreditTypeMouvement='Crédit')then
                                        begin
                                             Tableau.Cells[6,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[6,R])-RSituationMarche.MontantSituationTTCNet),'2','C','');
                                        end;
                                   end
                                   else
                                   begin
                                        if(DebitCreditTypeMouvement='Débit')then
                                        begin
                                             Tableau.Cells[7,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[7,R])+RSituationMarche.MontantSituationTTCNet),'2','C','');
                                        end;
                                        if(DebitCreditTypeMouvement='Crédit')then
                                        begin
                                             Tableau.Cells[8,R]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,R])+RSituationMarche.MontantSituationTTCNet),'2','C','');
                                        end;
                                   end;
                              end;
                              R:=R+1;
                         end;
                         OKAvis:=not OKTiers;
                    end
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               if(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)<StringToDate(DateDebut,'DateDebut'))then
               begin
                    if(RSituationMarche.ValiditeSituation=true)then
                    begin
                         OKAvis:=false;
                         if(CodeTiers<>'Tous')
                         then
                         begin
                              if(DebitCreditTypeMouvement='Débit')then
                              begin
                                   Tableau.Cells[7,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[7,1])+RSituationMarche.MontantSituationTTCNet),'2','C','');
                              end;
                              if(DebitCreditTypeMouvement='Crédit')then
                              begin
                                   Tableau.Cells[8,1]:=Vergule(floattostr(strtoreal(Tableau.Cells[8,1])+RSituationMarche.MontantSituationTTCNet),'2','C','');
                              end;
                         end
                         else
                         begin
                              i:=i+1;
                              Tableau.Rows[i].Text:=inttostr(i);
                              Tableau.Cells[1,i]:=Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'5');
                              Tableau.Cells[2,i]:=RSituationMarche.DateSituationMarche;
                              Tableau.Cells[3,i]:=RSituationMarche.DateSituationMarche;
                              Tableau.Cells[4,i]:=RSituationMarche.ModePaiement;
                              Tableau.Cells[5,i]:=RSituationMarche.Domiciliation;
                              if(CodeTiers<>'Tous')then Tableau.Cells[6,i]:='';

                              if(DebitCreditAvis='Débit')then
                              begin
                                   Tableau.Cells[6,i]:=Vergule(floattostr(RSituationMarche.MontantSituationTTCNet),'2','C','');
                              end;
                              if(DebitCreditAvis='Crédit')then
                              begin
                                   Tableau.Cells[6,i]:=Vergule(floattostr((-1)*RSituationMarche.MontantSituationTTCNet),'2','C','');
                              end;

                              Tableau.Cells[9,i]:=RMarcheCopie.CodeMaitreOuvrage;

                              Tableau.Cells[10,i]:=ImporteDataProcesTiers(RMarcheCopie.TypeProces,RMarcheCopie.FichierConcerneTiers,RMarcheCopie.CodeMaitreOuvrage,PositionTiersRecherche)+DesignationGroupe;

                              if(FSTraitementDonnees.RBPreciserMarcheRealisation.Checked=false)
                              then Tableau.Cells[11,i]:=RSituationMarche.DesignationSituation+' N° '+Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2')+'/'+Lastlaters(RSituationMarche.DateSituationMarche,4)+' du '+RSituationMarche.DateSituationMarche
                              else Tableau.Cells[11,i]:=RSituationMarche.DesignationSituation+' N° '+Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2')+'/'+Lastlaters(RSituationMarche.DateSituationMarche,4)+' du '+RSituationMarche.DateSituationMarche+' au marché N° '+Completezerogauche(inttostr(RSituationMarche.NSMarche),'2')+'/'+Lastlaters(RMarcheCopie.DateMarche,4)+' du '+RMarcheCopie.DateMarche;

                              Tableau.Cells[12,i]:='';
                              Tableau.Cells[13,i]:=DebitCreditTypeMouvement;
                              Tableau.Cells[14,i]:=Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'5');
                              if(RSituationMarche.ValiditeSituation=true)
                              then Tableau.Cells[15,i]:='Maintenu'
                              else Tableau.Cells[15,i]:='Annuler';
                              Tableau.Cells[16,i]:='ST';
                              Tableau.Cells[17,i]:=RMarcheCopie.FichierConcerneTiers;
                              Tableau.Cells[18,i]:=ChercherProjetFinance(RMarcheCopie.NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
                              Tableau.Cells[19,i]:='';
                              Tableau.Cells[20,i]:='';
                              Tableau.Cells[21,i]:='';
                              Tableau.Cells[22,i]:='';
                              Tableau.Cells[23,i]:='';
                              Tableau.Cells[24,i]:=RSituationMarche.ListeNumAvis;
                         end;
                    end
                    else OKAvis:=false;
               end
               else
               begin
                    if(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)>=StringToDate(DateDebut,'DateDebut'))
                    and(StringToDate(RSituationMarche.DateSituationMarche,RSituationMarche.DesignationSituation)<=StringToDate(DateFin,'DateFin'))
                    then
                    begin
                         OKAvis:=true;
                    end
                    else OKAvis:=false;
               end;
          end;

          if(OKAvis=true)then
          begin
               i:=i+1;
               Tableau.Rows[i].Text:=inttostr(i);
               Tableau.Cells[1,i]:=Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'5');
               Tableau.Cells[2,i]:=RSituationMarche.DateSituationMarche;
               Tableau.Cells[3,i]:=RSituationMarche.DateSituationMarche;
               Tableau.Cells[4,i]:=RSituationMarche.ModePaiement;
               Tableau.Cells[5,i]:=RSituationMarche.Domiciliation;
               if(CodeTiers<>'Tous')then Tableau.Cells[6,i]:=RSituationMarche.NumPiece;

               if(DebitCreditTypeMouvement='Débit')then
               begin
                    Tableau.Cells[7,i]:=Vergule(floattostr(RSituationMarche.MontantSituationTTCNet),'2','C','');
               end;
               if(DebitCreditTypeMouvement='Crédit')then
               begin
                    Tableau.Cells[8,i]:=Vergule(floattostr(RSituationMarche.MontantSituationTTCNet),'2','C','');
               end;

               Tableau.Cells[9,i]:=RMarcheCopie.CodeMaitreOuvrage;

               Tableau.Cells[10,i]:=ImporteDataProcesTiers(RMarcheCopie.TypeProces,RMarcheCopie.FichierConcerneTiers,RMarcheCopie.CodeMaitreOuvrage,PositionTiersRecherche)+DesignationGroupe;

               if(FSTraitementDonnees.RBPreciserMarcheRealisation.Checked=false)
               then Tableau.Cells[11,i]:=RSituationMarche.DesignationSituation+' N° '+Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2')+'/'+Lastlaters(RSituationMarche.DateSituationMarche,4)+' du '+RSituationMarche.DateSituationMarche
               else Tableau.Cells[11,i]:=RSituationMarche.DesignationSituation+' N° '+Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2')+'/'+Lastlaters(RSituationMarche.DateSituationMarche,4)+' du '+RSituationMarche.DateSituationMarche+' au marché N° '+Completezerogauche(inttostr(RSituationMarche.NSMarche),'2')+'/'+Lastlaters(RMarcheCopie.DateMarche,4)+' du '+RMarcheCopie.DateMarche;

               Tableau.Cells[12,i]:='';
               Tableau.Cells[13,i]:=DebitCreditTypeMouvement;
               Tableau.Cells[14,i]:=Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'5');
               if(RSituationMarche.ValiditeSituation=true)
               then Tableau.Cells[15,i]:='Maintenu'
               else Tableau.Cells[15,i]:='Annuler';
               Tableau.Cells[16,i]:='ST';
               Tableau.Cells[17,i]:=RMarcheCopie.FichierConcerneTiers;
               Tableau.Cells[18,i]:=ChercherProjetFinance(RMarcheCopie.NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
               Tableau.Cells[19,i]:='';
               Tableau.Cells[20,i]:='';
               Tableau.Cells[21,i]:='';
               Tableau.Cells[22,i]:='';
               Tableau.Cells[23,i]:='';
               Tableau.Cells[24,i]:=RSituationMarche.ListeNumAvis;
          end;
     end;
     finally
     CloseFile(FSituationMarche);
     end;
     ///////////////////////////////////////////////////////////////////////////
end;

    LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);


     if(i>0)then Tableau.RowCount:=i+1
            else Tableau.RowCount:=2;

     Solde:=strtoreal(Tableau.Cells[7,1])-strtoreal(Tableau.Cells[8,1]);
     if(Solde>=0)then
     begin
          Tableau.Cells[7,1]:=Vergule(floattostr(Solde),'2','C','');
          Tableau.Cells[8,1]:='';
     end
     else      
     begin
          Tableau.Cells[7,1]:='';
          Tableau.Cells[8,1]:=Vergule(floattostr((-1)*Solde),'2','C','');
     end;

     Tableau.ColWidths[19]:=0;

     NotRow:='';
     NotCol:='19';

     if(FSTraitementDonnees.RBAfficherProjetFinance.Checked=false)
     then
     begin
          Tableau.ColWidths[18]:=0;
          if(NotCol<>'')then NotCol:=NotCol+';18'
                        else NotCol:='18';
     end;

     if(ModePaiement<>'')
     and(ModePaiement<>'Tous')
     then
     begin
          Tableau.ColWidths[4]:=0;
          if(NotCol<>'')then NotCol:=NotCol+';4'
                        else NotCol:='4';
     end;

     if(Domiciliation<>'')
     and(Domiciliation<>'Tous')
     then
     begin
          Tableau.ColWidths[5]:=0;
          if(NotCol<>'')then NotCol:=NotCol+';5'
                        else NotCol:='5';
     end;

     if(CodeTiers<>'')
     and(CodeTiers<>'Tous')
     then
     begin
          Tableau.ColWidths[9]:=0;
          Tableau.ColWidths[10]:=0;
          if(NotCol<>'')then NotCol:=NotCol+';9;10'
                        else NotCol:='9;10';
     end
     else
     begin
          if(NotCol<>'')then NotCol:=NotCol+';1;2;3;4;5;11;15;18'
                        else NotCol:='1;2;3;4;5;11;15;18';
          Tableau.ColWidths[1]:=0;
          Tableau.ColWidths[2]:=0;
          Tableau.ColWidths[3]:=0;
          Tableau.ColWidths[4]:=0;
          Tableau.ColWidths[5]:=0;
          Tableau.ColWidths[11]:=0;
          Tableau.ColWidths[15]:=0;
          Tableau.ColWidths[18]:=0;
     end;

     if(NotCol<>'')then NotCol:=NotCol+';12;13;14;16;17'
                   else NotCol:='12;13;14;16;17';
     Tableau.ColWidths[12]:=0;
     Tableau.ColWidths[13]:=0;
     Tableau.ColWidths[14]:=0;
     Tableau.ColWidths[16]:=0;
     Tableau.ColWidths[17]:=0;

     AjusterColWidth(Tableau,NotRow,NotCol);

     if (FSTraitementDonnees.RBAfficherPartiesCommunes.Checked=true)
     and(FSTraitementDonnees.RBPartiesCommunesCumules.Checked=false)then CummulePartieCumune(Tableau);

     if(FSTraitementDonnees.RBActiverPiecesManquantes.Checked=true)then
     begin
          if(PCs>0)then FSTraitementDonnees.TableauNumPiece.RowCount:=PCs+1
                   else FSTraitementDonnees.TableauNumPiece.RowCount:=2;

          if(PTCs>0)then FSTraitementDonnees.TableauToutesNumPiece.RowCount:=PTCs+1
                    else FSTraitementDonnees.TableauToutesNumPiece.RowCount:=2;
          AjusterColWidth(FSTraitementDonnees.TableauToutesNumPiece,'','');

          FSTraitementDonnees.TimerCompleteNumPiece.Enabled:=true;
          //TrierTableauARowSpecial(FSTraitementDonnees.TableauNumPiece,1,FSTraitementDonnees.TableauNumPiece.RowCount-1,1,'2','Num','+');
     end;


     B:=GetTickCount;
     FSTraitementDonnees.LabelTempsAttente.Caption:='Temps= '+inttostr(B-A)+' ms';
     
     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);


     //ShowWindow(LeHandle,SW_MINIMIZE); // Réduire cette fenêtre:
     
     //ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:

     //SendMessage(LeHandle,WM_CLOSE,0,0); // Fermer la fenêtre:

     //LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:

     begin
          FSTraitementDonnees.Show;
          LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:
          ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:
     end;

     if(Tableau=FSTraitementDonnees.TableauAvis)then
     begin
          if(FSTraitementDonnees.PageFinanceDomiciliation.Visible=false)then
          begin
               FSTraitementDonnees.PageFinanceDomiciliation.Visible:=true;
          end;
     end
     else
     if(Tableau=FSTraitementDonnees.TableauFinanceTiers)then
     begin
          if(FSTraitementDonnees.PageFinanceTiers.Visible=false)then
          begin
               FSTraitementDonnees.PageFinanceTiers.Visible:=true;
          end;
     end;

     ///////////////////////////////TRIE////////////////////////////////////////////
     TrierTableauARowSpecial(FSTraitementDonnees.TableauFinanceTiers,2,FSTraitementDonnees.TableauFinanceTiers.RowCount-7,1,FSTraitementDonnees.EditTiersRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieTiers.Text,FSTraitementDonnees.TiersTypeTrie.Caption);
     ///////////////////////////////////////////////////////////////////////////

     RapportTraitement.Lines.Add('Fin du traitement.');
end;

procedure TFSTraitementDonnees.TableauFinanceStructureClick(
  Sender: TObject);
var NotTrieRow:integer;
begin
FSTraitementDonnees.EditTableauSelect.Text:='Bohr';

     if(FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked=true)then
     begin
          FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked:=false;
          FSTraitementDonnees.EditIndiceRubriqueTriCol.Text:=inttostr(FSTraitementDonnees.TableauFinanceStructure.Col);
          EnregistrerOptionsTraitementDonnees;
          if(FSTraitementDonnees.TableauFinanceStructure.Col in[3,4,6,7,9,10])
          then FSTraitementDonnees.EditTypeDataTrie.Text:='Num'
          else FSTraitementDonnees.EditTypeDataTrie.Text:='';
          NotTrieRow:=3;
          TrierTableauARowSpecial(FSTraitementDonnees.TableauFinanceStructure,1,FSTraitementDonnees.TableauFinanceStructure.RowCount-NotTrieRow,1,FSTraitementDonnees.EditIndiceRubriqueTriCol.Text,FSTraitementDonnees.EditTypeDataTrie.Text,FSTraitementDonnees.EditTypeTrie.Text);
     end;

     if(FSTraitementDonnees.RBFixeColonne.Checked=true)then
     begin
          FSTraitementDonnees.TableauFinanceStructure.FixedCols:=strtointeger(FSTraitementDonnees.EditFixeColonne.Text);
          FSTraitementDonnees.RBFixeColonne.Checked:=false;
     end;

     if(FSTraitementDonnees.EditTableauSelect.Text='Bohr')then
     begin
          FSTraitementDonnees.TableauPeriode.ColCount:=11;
          FSTraitementDonnees.TableauPeriode.Cols[0].Text:='N°';
          FSTraitementDonnees.TableauPeriode.Cols[1].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[2].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[3].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[4].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[5].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[6].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[7].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[8].Text:='Antérieur';
          FSTraitementDonnees.TableauPeriode.Cols[9].Text:='Périodique';
          FSTraitementDonnees.TableauPeriode.Cols[10].Text:='Global';

          FSTraitementDonnees.TableauPeriode.RowCount:=2;
          FSTraitementDonnees.TableauPeriode.Rows[1].Text:='..';
          FSTraitementDonnees.TableauPeriode.Cells[0,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[1,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[2,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[3,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[4,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[5,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[6,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[7,1]:='Rubriques';
          FSTraitementDonnees.TableauPeriode.Cells[8,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date-1);
          FSTraitementDonnees.TableauPeriode.Cells[9,1]:='Analyse du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);
          FSTraitementDonnees.TableauPeriode.Cells[10,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);

          FSTraitementDonnees.TableauPeriode.ColWidths[0]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[0];
          FSTraitementDonnees.TableauPeriode.ColWidths[1]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[2]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[3]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[4]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[5]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[6]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[7]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[1]-77;
          FSTraitementDonnees.TableauPeriode.ColWidths[8]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[2]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[3]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[4];
          FSTraitementDonnees.TableauPeriode.ColWidths[9]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[5]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[6]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[7];
          FSTraitementDonnees.TableauPeriode.ColWidths[10]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[8]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[9]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[10];
          end;

FSTraitementDonnees.AfficheOptionPrintFinanceProjets.Height:=31;
end;

procedure TFSTraitementDonnees.AfficheOptionPrintFinanceProjetsClick(
  Sender: TObject);
begin

if(FSTraitementDonnees.AfficheOptionPrintFinanceProjets.Height=31)
then FSTraitementDonnees.AfficheOptionPrintFinanceProjets.Height:=223
else FSTraitementDonnees.AfficheOptionPrintFinanceProjets.Height:=31;

end;

procedure TFSTraitementDonnees.BitBtn20Click(Sender: TObject);
var  TableauDiagramme:TStringGrid; R,C,IndiceNbrLaters,NbrLaters:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,TypeEtat:string;  ImprimeTableau:boolean;
begin
IndiceNbrLaters:=0;

if(FSTraitementDonnees.PageDiagrammePeriode.Showing=true)then begin TableauDiagramme:=FSTraitementDonnees.TableauAnalysePeriodique; IndiceNbrLaters:=2; end;
if(FSTraitementDonnees.PageDiagrammeArticle.Showing=true)then TableauDiagramme:=FSTraitementDonnees.TableauDiagrammeArticle;
if(FSTraitementDonnees.PageDiagrammeCompte.Showing=true)then TableauDiagramme:=FSTraitementDonnees.TableauDiagrammeCompte;

NbrLaters:=IndiceNbrLaters;

if ExisteCharInString('Vente',FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row])then TypeEtat:='Ventes'
else if ExisteCharInString('Achat',FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row])then TypeEtat:='Achats'
else TypeEtat:=FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row];

if(FSTraitementDonnees.EditTableauSelect.Text='Diagramme')then
begin
     if(FSTraitementDonnees.PageHitogramme.Visible=true)then
     begin
          GrasARow:='0';
          GrasACol:='0';
          CenterARow:='0';
          CenterACol:='0';
          RightARow:='';
          RightACol:='1-'+inttostr(TableauDiagramme.ColCount-1);
          TitreEtat:=FSTraitementDonnees.DiagrammeAnalysePeriodique1.Title.Text.Text;

          OpenFParc(RParc);
          PrintDiagramme.TextEntreprise.Caption:=RParc.Text1;
          PrintDiagramme.TextD2.Caption:=RParc.Text2;
          PrintDiagramme.TextD3.Caption:=RParc.Text3;
          PrintDiagramme.TextD4.Caption:=RParc.Text4;
          PrintDiagramme.TextD5.Caption:=RParc.Text5;
          PrintDiagramme.Logo.Picture:=FSMenuPrincipal.Logo.Picture;
          PrintDiagramme.EnteteTitre.Lines.Text:=FSTraitementDonnees.DiagrammeAnalysePeriodique1.Title.Text.Text;

          PrintDiagramme.Series1.Clear;
          PrintDiagramme.Series1.Title:='';
          for C:=1 to TableauDiagramme.ColCount-1 do
          begin
               if(IndiceNbrLaters=0) then NbrLaters:=MinInt(longueur(TableauDiagramme.Cells[C,0]),FSTraitementDonnees.IncrimenteEditMaxLongueurTitreAxe.Position);
               PrintDiagramme.Series1.Add(strtoreal(TableauDiagramme.Cells[C,TableauDiagramme.Row]),Firstlaters(TableauDiagramme.Cells[C,0],NbrLaters),clTeeColor);
          end;

          PrintDiagramme.Preview;
     end;

     if(FSTraitementDonnees.PageLigne.Visible=true)then
     begin
          GrasARow:='0';
          GrasACol:='0';
          CenterARow:='0';
          CenterACol:='0';
          RightARow:='';
          RightACol:='1-'+inttostr(TableauDiagramme.ColCount-1);
          TitreEtat:=FSTraitementDonnees.DiagrammeAnalysePeriodique2.Title.Text.Text;

          OpenFParc(RParc);
          PrintDiagramme2.TextEntreprise.Caption:=RParc.Text1;
          PrintDiagramme2.TextD2.Caption:=RParc.Text2;
          PrintDiagramme2.TextD3.Caption:=RParc.Text3;
          PrintDiagramme2.TextD4.Caption:=RParc.Text4;
          PrintDiagramme2.TextD5.Caption:=RParc.Text5;
          PrintDiagramme2.Logo.Picture:=FSMenuPrincipal.Logo.Picture;
          PrintDiagramme2.EnteteTitre.Lines.Text:=FSTraitementDonnees.DiagrammeAnalysePeriodique2.Title.Text.Text;

          PrintDiagramme2.Series1.Clear;
          PrintDiagramme2.Series1.Title:='';
          for C:=1 to TableauDiagramme.ColCount-1 do
          begin
               if(IndiceNbrLaters=0) then NbrLaters:=MinInt(longueur(TableauDiagramme.Cells[C,0]),FSTraitementDonnees.IncrimenteEditMaxLongueurTitreAxe.Position);
               PrintDiagramme2.Series1.Add(strtoreal(TableauDiagramme.Cells[C,TableauDiagramme.Row]),Firstlaters(TableauDiagramme.Cells[C,0],NbrLaters),clTeeColor);
          end;

          PrintDiagramme2.Preview;
     end;

     if(FSTraitementDonnees.PageSectoriel.Visible=true)then
     begin
          GrasARow:='0';
          GrasACol:='0';
          CenterARow:='0';
          CenterACol:='0';
          RightARow:='';
          RightACol:='1-'+inttostr(TableauDiagramme.ColCount-1);
          TitreEtat:=FSTraitementDonnees.DiagrammeAnalysePeriodique3.Title.Text.Text;

          OpenFParc(RParc);
          PrintDiagramme3.TextEntreprise.Caption:=RParc.Text1;
          PrintDiagramme3.TextD2.Caption:=RParc.Text2;
          PrintDiagramme3.TextD3.Caption:=RParc.Text3;
          PrintDiagramme3.TextD4.Caption:=RParc.Text4;
          PrintDiagramme3.TextD5.Caption:=RParc.Text5;
          PrintDiagramme3.Logo.Picture:=FSMenuPrincipal.Logo.Picture;
          PrintDiagramme3.EnteteTitre.Lines.Text:=FSTraitementDonnees.DiagrammeAnalysePeriodique3.Title.Text.Text;

          PrintDiagramme3.Series1.Clear;
          PrintDiagramme3.Series1.Title:='';
          for C:=1 to TableauDiagramme.ColCount-1 do
          begin
               if(IndiceNbrLaters=0) then NbrLaters:=MinInt(longueur(TableauDiagramme.Cells[C,0]),FSTraitementDonnees.IncrimenteEditMaxLongueurTitreAxe.Position);
               PrintDiagramme3.Series1.Add(strtoreal(TableauDiagramme.Cells[C,TableauDiagramme.Row]),Firstlaters(TableauDiagramme.Cells[C,0],NbrLaters),clTeeColor);
          end;

          PrintDiagramme3.Preview;
     end;

     if(FSTraitementDonnees.PageAire.Visible=true)then
     begin
          GrasARow:='0';
          GrasACol:='0';
          CenterARow:='0';
          CenterACol:='0';
          RightARow:='';
          RightACol:='1-'+inttostr(TableauDiagramme.ColCount-1);
          TitreEtat:=FSTraitementDonnees.DiagrammeAnalysePeriodique4.Title.Text.Text;

          OpenFParc(RParc);
          PrintDiagramme4.TextEntreprise.Caption:=RParc.Text1;
          PrintDiagramme4.TextD2.Caption:=RParc.Text2;
          PrintDiagramme4.TextD3.Caption:=RParc.Text3;
          PrintDiagramme4.TextD4.Caption:=RParc.Text4;
          PrintDiagramme4.TextD5.Caption:=RParc.Text5;
          PrintDiagramme4.Logo.Picture:=FSMenuPrincipal.Logo.Picture;
          PrintDiagramme4.EnteteTitre.Lines.Text:=FSTraitementDonnees.DiagrammeAnalysePeriodique4.Title.Text.Text;

          PrintDiagramme4.Series1.Clear;
          PrintDiagramme4.Series1.Title:='';
          for C:=1 to TableauDiagramme.ColCount-1 do
          begin
               if(IndiceNbrLaters=0) then NbrLaters:=MinInt(longueur(TableauDiagramme.Cells[C,0]),FSTraitementDonnees.IncrimenteEditMaxLongueurTitreAxe.Position);
               PrintDiagramme4.Series1.Add(strtoreal(TableauDiagramme.Cells[C,TableauDiagramme.Row]),Firstlaters(TableauDiagramme.Cells[C,0],NbrLaters),clTeeColor);
          end;

          PrintDiagramme4.Preview;
     end;
end;


if(FSTraitementDonnees.EditTableauSelect.Text='Bohr')then
begin
     FSTraitementDonnees.EditTitreEtat.Lines.Text:='';
     //FSTraitementDonnees.EditTitreEtat.Lines.Add('Tableau de Bohr');
     //FSTraitementDonnees.EditTitreEtat.Lines.Add('Tableau: '+FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row]);
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Tableau: '+TypeEtat);
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Période du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date));

     if(FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text<>'')
     then FSTraitementDonnees.EditTitreEtat.Lines.Add('Tiers: '+FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text);

     if(FSTraitementDonnees.EditInfoMoyenTransport.Text<>'')then
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Transport: '+FSTraitementDonnees.EditInfoMoyenTransport.Text);

     if(FSTraitementDonnees.EditCodeArticleRecherche.Text<>'')then
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Article: '+FSTraitementDonnees.EditCodeArticleRecherche.Text+' '+FSTraitementDonnees.EditArticleRecherche.Text);

     TitreEtat:=FSTraitementDonnees.EditTitreEtat.Text;

     GrasARow:='0';
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0;2;5;8';
     RightARow:='';
     RightACol:='3;4;6;7;9;10';

     OptionsImpression(FSTraitementDonnees.TableauPeriode,'Center',0,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,'0','','0;1','','','',false,1,FSMenuPrincipal.ImageCodebarre,true,R);
     OptionsImpression(FSTraitementDonnees.TableauCumulMouvement,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,false,1,FSMenuPrincipal.ImageCodebarre,true,R);
     OptionsImpression(FSTraitementDonnees.TableauFinanceStructure,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,false,1,FSMenuPrincipal.ImageCodebarre,true,R);
     OptionsImpression(FSTraitementDonnees.TableauSoldeMouvement,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,false,1,FSMenuPrincipal.ImageCodebarre,true,R);

     GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauAnalyseSoldePeriode.RowCount-1);
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0';
     RightARow:='';
     RightACol:='6;7';

     OptionsImpression(FSTraitementDonnees.TableauAnalyseSoldePeriode,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,false,1,FSMenuPrincipal.ImageCodebarre,true,R);

     GrasARow:='0';
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0;4';
     RightARow:='';
     RightACol:='6;7;8';

     OptionsImpression(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);

end;

if(FSTraitementDonnees.EditTableauSelect.Text='Tiers')then
begin
     FSTraitementDonnees.EditTitreEtat.Lines.Text:='';
     //FSTraitementDonnees.EditTitreEtat.Lines.Add('Tableau de Bohr par tiers');
     //FSTraitementDonnees.EditTitreEtat.Lines.Add('Tableau: '+FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row]);
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Tableau: '+TypeEtat);
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Période du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date));

     if(FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text<>'')
     then FSTraitementDonnees.EditTitreEtat.Lines.Add('Tiers: '+FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text);

     if(FSTraitementDonnees.EditInfoMoyenTransport.Text<>'')then
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Transport: '+FSTraitementDonnees.EditInfoMoyenTransport.Text);

     if(FSTraitementDonnees.EditCodeArticleRecherche.Text<>'')then
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Article: '+FSTraitementDonnees.EditCodeArticleRecherche.Text+' '+FSTraitementDonnees.EditArticleRecherche.Text);

     TitreEtat:=FSTraitementDonnees.EditTitreEtat.Text;

     GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauDeBohrTiers.RowCount-1);
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0;1';
     RightARow:='';
     RightACol:='3-6;8-11;13-16';

     //OptionsImpression(FSTraitementDonnees.TableauPeriode,'Center',0,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,'0','','0;1','','','',false,-1,FSMenuPrincipal.ImageCodebarre,true,R);
     OptionsImpression(FSTraitementDonnees.TableauDeBohrTiers,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

if(FSTraitementDonnees.EditTableauSelect.Text='Tiers antérieur')then
begin
     FSTraitementDonnees.EditTitreEtat.Lines.Text:='';
     //FSTraitementDonnees.EditTitreEtat.Lines.Add('Tableau de Bohr par tiers Antérieur');
     //FSTraitementDonnees.EditTitreEtat.Lines.Add('Tableau: '+FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row]);
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Tableau: '+TypeEtat);
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Période du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date));

     if(FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text<>'')
     then FSTraitementDonnees.EditTitreEtat.Lines.Add('Tiers: '+FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text);

     if(FSTraitementDonnees.EditInfoMoyenTransport.Text<>'')then
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Transport: '+FSTraitementDonnees.EditInfoMoyenTransport.Text);

     if(FSTraitementDonnees.EditCodeArticleRecherche.Text<>'')then
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Article: '+FSTraitementDonnees.EditCodeArticleRecherche.Text+' '+FSTraitementDonnees.EditArticleRecherche.Text);

     TitreEtat:=FSTraitementDonnees.EditTitreEtat.Text;

     GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauAnalyseSoldePeriode.RowCount-1);
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0';
     RightARow:='';
     RightACol:='6;7';
     OptionsImpression(FSTraitementDonnees.TableauAnalyseSoldePeriode,'Center',0,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,false,1,FSMenuPrincipal.ImageCodebarre,true,R);

     GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.RowCount-1);
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0;1';
     RightARow:='';
     RightACol:='3-6;8-11;13-16';
     OptionsImpression(FSTraitementDonnees.TableauPeriode,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,'0','','0;1','','','',false,-1,FSMenuPrincipal.ImageCodebarre,true,R);
     OptionsImpression(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

if(FSTraitementDonnees.EditTableauSelect.Text='Mouvement')then
begin
     FSTraitementDonnees.EditTitreEtat.Lines.Text:='';
     //FSTraitementDonnees.EditTitreEtat.Lines.Add('Tableau de Bohr');
     //FSTraitementDonnees.EditTitreEtat.Lines.Add('Tableau: '+FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row]);
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Tableau: '+TypeEtat);
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Période du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date));

     if(FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text<>'')
     then FSTraitementDonnees.EditTitreEtat.Lines.Add('Tiers: '+FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text);

     if(FSTraitementDonnees.EditInfoMoyenTransport.Text<>'')then
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Transport: '+FSTraitementDonnees.EditInfoMoyenTransport.Text);

     if(FSTraitementDonnees.EditCodeArticleRecherche.Text<>'')then
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Article: '+FSTraitementDonnees.EditCodeArticleRecherche.Text+' '+FSTraitementDonnees.EditArticleRecherche.Text);
     
     TitreEtat:=FSTraitementDonnees.EditTitreEtat.Text;

     if(FSTraitementDonnees.RBImprimeTableauSelect.Checked=true)then
     begin
          ImprimeTableau:=true;

          if(FSTraitementDonnees.EditNomTableauImprime.Text='TableauDetaiMouvementAppartenanceMouvemant')then
          begin
               GrasARow:='0;'+inttostr(TableauDetaiMouvementAppartenanceMouvemant.RowCount-1);
               GrasACol:='0';
               CenterARow:='0';
               CenterACol:='0;4';
               RightARow:='';
               RightACol:='6;7;8;20;21';
               OptionsImpression(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeTableau,1,FSMenuPrincipal.ImageCodebarre,true,R);
          end;

          if(FSTraitementDonnees.EditNomTableauImprime.Text='TableauRecapitulatifDetailMouvements')then
          begin
               FSTraitementDonnees.EditTitreEtat.Lines.Text:='';
               FSTraitementDonnees.EditTitreEtat.Lines.Add('Situation Financière');
               FSTraitementDonnees.EditTitreEtat.Lines.Add('du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date));
               TitreEtat:=FSTraitementDonnees.EditTitreEtat.Lines.Text;
               GrasARow:='0;'+inttostr(TableauRecapitulatifDetailMouvements.RowCount-1)+';'+inttostr(TableauRecapitulatifDetailMouvements.RowCount-2);
               GrasACol:='0';
               CenterARow:='0';
               CenterACol:='0';
               RightARow:='';
               RightACol:='5;6;7;8';
               OptionsImpression(FSTraitementDonnees.TableauRecapitulatifDetailMouvements,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeTableau,1,FSMenuPrincipal.ImageCodebarre,true,R);
          end;

          if(FSTraitementDonnees.EditNomTableauImprime.Text='TableauArborescenceArticle')then
          begin
               GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauArborescenceArticle.RowCount-1);
               GrasACol:='0';
               CenterARow:='0';
               CenterACol:='0;1;3';
               RightARow:='';
               RightACol:='4-6';
               OptionsImpression(FSTraitementDonnees.TableauArborescenceArticle,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeTableau,1,FSMenuPrincipal.ImageCodebarre,true,R);
          end;

          if(FSTraitementDonnees.EditNomTableauImprime.Text='TableauListeAppartenanceMouvementTB')then
          begin
               GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-1)+inttostr(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-2);
               GrasACol:='0';
               CenterARow:='0';
               CenterACol:='0;1;5;13';
               RightARow:=inttostr(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-1)+';'+inttostr(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-2);
               RightACol:='12';
               OptionsImpression(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeTableau,1,FSMenuPrincipal.ImageCodebarre,true,R);
          end;

          if(FSTraitementDonnees.EditNomTableauImprime.Text='TableauDetailFormuleListeMouvement')then
          begin
               GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauDetailFormuleListeMouvement.RowCount-1);
               GrasACol:='0';
               CenterARow:='0';
               CenterACol:='0-3';
               RightARow:='';
               RightACol:=inttostr(FSTraitementDonnees.TableauDetailFormuleListeMouvement.ColCount-10)+'-'+inttostr(FSTraitementDonnees.TableauDetailFormuleListeMouvement.ColCount-1);
               OptionsImpression(FSTraitementDonnees.TableauDetailFormuleListeMouvement,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeTableau,1,FSMenuPrincipal.ImageCodebarre,true,R);
          end;
     end
     else
     begin
          ImprimeTableau:=false;
          GrasARow:='0;'+inttostr(TableauDetaiMouvementAppartenanceMouvemant.RowCount-1);
          GrasACol:='0';
          CenterARow:='0';
          CenterACol:='0;4';
          RightARow:='';
          RightACol:='6;7;8;20;21';
          OptionsImpression(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeTableau,1,FSMenuPrincipal.ImageCodebarre,true,R);

          if(FSTraitementDonnees.EditCodeArticleRecherche.Text='')then
          begin
               ImprimeTableau:=true;
               GrasARow:='0;'+inttostr(TableauArborescenceArticle.RowCount-1);
               GrasACol:='0';
               CenterARow:='0';
               CenterACol:='0;1;3';
               RightARow:='';
               RightACol:='4-6';
               OptionsImpression(FSTraitementDonnees.TableauArborescenceArticle,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeTableau,1,FSMenuPrincipal.ImageCodebarre,true,R);
          end;

          ImprimeTableau:=true;
          GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-1);
          GrasACol:='0';
          CenterARow:='0';
          CenterACol:='0;1;5;13';
          RightARow:='';
          RightACol:='12';
          OptionsImpression(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,'Center',R,1,TitreEtat,FSTraitementDonnees.RBAjustementFinanceProjets.Checked,FSTraitementDonnees.RBOrientationPapierFinanceProjets.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeTableau,1,FSMenuPrincipal.ImageCodebarre,true,R);
     end;
end;


FSTraitementDonnees.AfficheOptionPrintFinanceProjets.Height:=31;
end;

procedure TFSTraitementDonnees.PageFinanceDomiciliationShow(
  Sender: TObject);
var  TypeProces,FichierConserne,Adresse:string;
begin
FSTraitementDonnees.AfficheTableauAfficheRubrique.Height:=25;
FSTraitementDonnees.AfficheControleSeries.Height:=0;
FSTraitementDonnees.EditNbrSerie.Text:='';

FSTraitementDonnees.CacherTableauAvis.Top:=FSTraitementDonnees.TableauAvis.Top;
FSTraitementDonnees.CacherTableauAvis.Left:=FSTraitementDonnees.TableauAvis.Left;


if(FSTraitementDonnees.RBDomiciliationChoisi.Checked=false)then
begin
if(FunctionSoldeDomiciliationRisqueZero=true)then FSTraitementDonnees.RBAvisRisqueZero.Checked:=true;

TypeProces:='Business';   FichierConserne:='FDomiciliation';
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     if(FichierConserne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConserne+'} recherché !');
end;
ChDomiciliation:=Adresse;
assignfile(FDomiciliation,ChDomiciliation);
try
if FileExists(ChDomiciliation)then
Reset(FDomiciliation)
else Rewrite(FDomiciliation);
Seek(FDomiciliation,0);
FSTraitementDonnees.EditRechercheDomiciliation.Items.Text:='';
FSTraitementDonnees.EditRechercheDomiciliation.Items.Add('Tous');
while not eof(FDomiciliation)do
begin
     read(FDomiciliation,RDomiciliation);
     FSTraitementDonnees.EditRechercheDomiciliation.Items.Add(RDomiciliation.DesignationDomiciliation);
end;
finally
CloseFile(FDomiciliation);
end;
FSTraitementDonnees.EditRechercheDomiciliation.ItemIndex:=0;
end;

if(FSTraitementDonnees.RapportTraitementDomiciliation.Lines.Strings[FSTraitementDonnees.RapportTraitementDomiciliation.Lines.Count-1]<>'Fin du traitement.')
and(FSTraitementDonnees.RapportTraitementDomiciliation.Lines.Strings[FSTraitementDonnees.RapportTraitementDomiciliation.Lines.Count-1]<>'Traitement Suspendu.')
then FSTraitementDonnees.CacherTableauAvis.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked
else FSTraitementDonnees.CacherTableauAvis.Visible:=false;

FSTraitementDonnees.RapportTraitementDomiciliation.Refresh;
FSTraitementDonnees.TexteFinRaportDomiciliation.Caption:=inttostr(FSTraitementDonnees.RapportTraitementDomiciliation.Lines.Count-1)+': '+FSTraitementDonnees.RapportTraitementDomiciliation.Lines.Strings[FSTraitementDonnees.RapportTraitementDomiciliation.Lines.Count-1];

if(FSTraitementDonnees.CacherTableauAvis.Visible=false)then
begin
     FSTraitementDonnees.RBAucun.Checked:=true;

     if(FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked=true)then
     begin
          ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
          ,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
          SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
     end;
end
else
begin
     if (FSTraitementDonnees.RapportTraitementDomiciliation.Lines.Count>0)then
     begin
          if(FSTraitementDonnees.RapportTraitementDomiciliation.Lines.Strings[FSTraitementDonnees.RapportTraitementDomiciliation.Lines.Count-1]<>'Fin du traitement.')
          and(FSTraitementDonnees.RapportTraitementDomiciliation.Lines.Strings[FSTraitementDonnees.RapportTraitementDomiciliation.Lines.Count-1]<>'Traitement Suspendu.')
          then FSTraitementDonnees.AffichePatientez.Visible:=true
          else FSTraitementDonnees.AffichePatientez.Visible:=false;
     end
     else FSTraitementDonnees.AffichePatientez.Visible:=false;
end;
end;

procedure TFSTraitementDonnees.RBAfficherProjetFinanceClick(
  Sender: TObject);
begin
ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
end;

procedure TFSTraitementDonnees.EditNomProjetTraitementEnter(
  Sender: TObject);
begin
SuspendreAffichage;

     FSTraitementDonnees.EditNumProjetTraitement.Text:='';
     FSTraitementDonnees.EditNomProjetTraitement.Text:='';
     FSTraitementDonnees.EditNumFicheTraitement.Text:='';
     FSTraitementDonnees.EditDesignationFicheTraitement.Text:='';
     FSTraitementDonnees.EditNumRubriqueTraitement.Text:='';
     FSTraitementDonnees.EditDesignationRubriqueTraitement.Text:='';
     FSTraitementDonnees.EditNumPlanificateurTraitement.Text:='';
     FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text:='';
     
     FSTraitementDonnees.TableauProjetTraitement.Visible:=true;
     FSTraitementDonnees.TableauProjetTraitement.SetFocus;
     FSTraitementDonnees.TableauProjetTraitement.Left:=FSTraitementDonnees.AfficheTableauAvis.Left+FSTraitementDonnees.PanelEditNomProjetTraitement.Left+FSTraitementDonnees.PanelEditNomProjetTraitement.Width+8;
     FSTraitementDonnees.TableauProjetTraitement.Top:=FSTraitementDonnees.AfficheTableauAvis.Top+FSTraitementDonnees.PanelEditNomProjetTraitement.Top+FSTraitementDonnees.EditNomProjetTraitement.Top;
     ListeProjetFinance(FSTraitementDonnees.TableauProjetTraitement,'','',inttostr(10+(FSTraitementDonnees.EditRonStructure.ItemIndex*5)),false,'1','',false,true,'','');
     FSTraitementDonnees.EditTableauSelection.Text:='Projet';

     FSTraitementDonnees.TableauProjetTraitement.ColCount:=FSTraitementDonnees.TableauProjetTraitement.ColCount+1;
     FSTraitementDonnees.TableauProjetTraitement.Cols[FSTraitementDonnees.TableauProjetTraitement.ColCount-1].Text:='Montant Calculé';
     FSTraitementDonnees.TableauProjetTraitement.ColWidths[FSTraitementDonnees.TableauProjetTraitement.ColCount-1]:=100;
     SyntheseDesProjetsParNature(FSTraitementDonnees.TableauProjetTraitement,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,1,FSTraitementDonnees.TableauProjetTraitement.ColCount-1,FSTraitementDonnees.EditTableauSelection.Text,datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.RBAfficherPartiesCommunes.Checked);
end;

procedure TFSTraitementDonnees.EditNomProjetTraitementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSTraitementDonnees.TableauProjetTraitement.Visible=true)
     then FSTraitementDonnees.TableauProjetTraitement.SetFocus;
end;

end;

procedure TFSTraitementDonnees.BitAfficheAvisNonEnregistreClick(Sender: TObject);
begin
FSTraitementDonnees.AfficheControleSeries.Height:=0;
FSTraitementDonnees.AfficheSeriePiece.Height:=0;
FSTraitementDonnees.EditNbrSerie.Text:='';
FSTraitementDonnees.RBAfficherAvisAnnules.Checked:=true;
ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
ListeSeriePiece(FSTraitementDonnees.TableauAvis,6,FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditSourcePiece.Text);
end;

procedure TFSTraitementDonnees.TableauProjetTraitementDblClick(
  Sender: TObject);
begin

if(FSTraitementDonnees.TableauProjetTraitement.Cells[FSTraitementDonnees.TableauProjetTraitement.Col,FSTraitementDonnees.TableauProjetTraitement.Row]<>'')
then ListeProjetFinance(FSTraitementDonnees.TableauProjetTraitement,Firstlaters(FSTraitementDonnees.TableauProjetTraitement.Cells[1,FSTraitementDonnees.TableauProjetTraitement.Row],5),'','',false,'1','',false,false,'','')
else ListeProjetFinance(FSTraitementDonnees.TableauProjetTraitement,'','','',false,'1','',false,false,'','');
FSTraitementDonnees.TableauProjetTraitement.RowCount:=FSTraitementDonnees.TableauProjetTraitement.RowCount+1;
FSTraitementDonnees.TableauProjetTraitement.Cells[1,FSTraitementDonnees.TableauProjetTraitement.RowCount-1]:='';
FSTraitementDonnees.TableauProjetTraitement.Cells[2,FSTraitementDonnees.TableauProjetTraitement.RowCount-1]:='Tous les Projets';
TrierTableauARowSpecial(FSTraitementDonnees.TableauProjetTraitement,1,FSTraitementDonnees.TableauProjetTraitement.RowCount-1,1,'1','','+');
end;

procedure TFSTraitementDonnees.TableauProjetTraitementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var  i,NumTypeAvis,ChercheSigneDebitCredit:integer; Quantite,Montant:real;
     CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise,CodeTiers,NatureOperation,DesignationTypeAvis:string;
     OKPlanificationRubrique,OKPlanificationTiers,OKAvis:boolean;
begin

if key in[VK_ESCAPE]then
begin
     FSTraitementDonnees.TableauProjetTraitement.Visible:=false;

     if(FSTraitementDonnees.EditTableauSelection.Text='Planificateur')then
     begin
          //FSTraitementDonnees.EditNumProjetTraitement.Text:='';
          //FSTraitementDonnees.EditNomProjetTraitement.Text:='';
          //FSTraitementDonnees.EditNumFicheTraitement.Text:='';
          //FSTraitementDonnees.EditDesignationFicheTraitement.Text:='';
          //FSTraitementDonnees.EditNumRubriqueTraitement.Text:='';
          //FSTraitementDonnees.EditDesignationRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditNumPlanificateurTraitement.Text:='';
          FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text:='';
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Rubrique')then
     begin
          //FSTraitementDonnees.EditNumProjetTraitement.Text:='';
          //FSTraitementDonnees.EditNomProjetTraitement.Text:='';
          //FSTraitementDonnees.EditNumFicheTraitement.Text:='';
          //FSTraitementDonnees.EditDesignationFicheTraitement.Text:='';
          FSTraitementDonnees.EditNumRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditDesignationRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditNumPlanificateurTraitement.Text:='';
          FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text:='';
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Fiche')then
     begin
          //FSTraitementDonnees.EditNumProjetTraitement.Text:='';
          //FSTraitementDonnees.EditNomProjetTraitement.Text:='';
          FSTraitementDonnees.EditNumFicheTraitement.Text:='';
          FSTraitementDonnees.EditDesignationFicheTraitement.Text:='';
          FSTraitementDonnees.EditNumRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditDesignationRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditNumPlanificateurTraitement.Text:='';
          FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text:='';
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Projet')then
     begin
          FSTraitementDonnees.EditNumProjetTraitement.Text:='';
          FSTraitementDonnees.EditNomProjetTraitement.Text:='';
          FSTraitementDonnees.EditNumFicheTraitement.Text:='';
          FSTraitementDonnees.EditDesignationFicheTraitement.Text:='';
          FSTraitementDonnees.EditNumRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditDesignationRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditNumPlanificateurTraitement.Text:='';
          FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text:='';
     end;

     FSTraitementDonnees.EditTableauSelection.Text:='Fin';
end;

if key in[VK_RETURN]then
begin
     NatureOperation:='';

     if(FSTraitementDonnees.EditTableauSelection.Text='Planificateur')then
     begin
          FSTraitementDonnees.EditNumPlanificateurTraitement.Text:=FSTraitementDonnees.TableauProjetTraitement.Cells[3,FSTraitementDonnees.TableauProjetTraitement.Row];
          FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text:=FSTraitementDonnees.TableauProjetTraitement.Cells[4,FSTraitementDonnees.TableauProjetTraitement.Row];

          RubriqueArborescence('',FSTraitementDonnees.TableauProjetTraitement.Cells[2,FSTraitementDonnees.TableauProjetTraitement.Row],RRubriqueFicheTechnique,RFicheTechnique,RTypeAvis);
          if(FSTraitementDonnees.EditNumRubriqueTraitement.Text='')then
          begin
               FSTraitementDonnees.EditNumRubriqueTraitement.Text:=inttostr(RRubriqueFicheTechnique.NumRubrique);
               FSTraitementDonnees.EditDesignationRubriqueTraitement.Text:=RRubriqueFicheTechnique.DesignationRubrique;
          end;
          if(FSTraitementDonnees.EditNumFicheTraitement.Text='')then
          begin
               FSTraitementDonnees.EditNumFicheTraitement.Text:=inttostr(RFicheTechnique.NumFicheTechnique);
               FSTraitementDonnees.EditDesignationFicheTraitement.Text:=RFicheTechnique.DesignationFicheTechnique;
          end;
          if(FSTraitementDonnees.EditNumProjetTraitement.Text='')then
          begin
               FSTraitementDonnees.EditNumProjetTraitement.Text:=RFicheTechnique.CodeProjet;
               FSTraitementDonnees.EditNomProjetTraitement.Text:=ChercherProjetFinance(RFicheTechnique.CodeProjet,PositionProjetFinancesRecherche).DesignationProjetFinance;
          end;

          FSTraitementDonnees.TableauProjetTraitement.Visible:=false;
          NatureOperation:=FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text;
          FSTraitementDonnees.EditTableauSelection.Text:='Fin';
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Rubrique')then
     begin
          FSTraitementDonnees.EditNumRubriqueTraitement.Text:=FSTraitementDonnees.TableauProjetTraitement.Cells[1,FSTraitementDonnees.TableauProjetTraitement.Row];
          FSTraitementDonnees.EditDesignationRubriqueTraitement.Text:=FSTraitementDonnees.TableauProjetTraitement.Cells[2,FSTraitementDonnees.TableauProjetTraitement.Row];
          FSTraitementDonnees.EditNumPlanificateurTraitement.Text:='';
          FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text:='';

          ExistePlanificationRubrique(FSTraitementDonnees.EditNumRubriqueTraitement.Text,'',OKPlanificationRubrique,OKPlanificationTiers,CodeTiers);
          if(OKPlanificationRubrique=true)then
          begin
               AffichePlanificateur(FSTraitementDonnees.TableauProjetTraitement,FSTraitementDonnees.EditNumRubriqueTraitement.Text,'','','','',Quantite,Montant);
               FSTraitementDonnees.TableauProjetTraitement.SetFocus;
               FSTraitementDonnees.EditTableauSelection.Text:='Planificateur';
          end
          else
          begin
               FSTraitementDonnees.EditNumPlanificateurTraitement.Text:='';
               FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text:='';
               FSTraitementDonnees.TableauProjetTraitement.Visible:=false;
               FSTraitementDonnees.TableauProjetTraitement.Visible:=false;
               FSTraitementDonnees.EditTableauSelection.Text:='Fin';
          end;

          NatureOperation:=FSTraitementDonnees.EditDesignationRubriqueTraitement.Text;
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Fiche')then
     begin
          FSTraitementDonnees.EditNumFicheTraitement.Text:=FSTraitementDonnees.TableauProjetTraitement.Cells[2,FSTraitementDonnees.TableauProjetTraitement.Row];
          FSTraitementDonnees.EditDesignationFicheTraitement.Text:=FSTraitementDonnees.TableauProjetTraitement.Cells[3,FSTraitementDonnees.TableauProjetTraitement.Row];

          FSTraitementDonnees.EditNumRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditDesignationRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditNumPlanificateurTraitement.Text:='';
          FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text:='';
          FSTraitementDonnees.TableauProjetTraitement.Visible:=false;
          FSTraitementDonnees.EditDesignationRubriqueTraitement.SetFocus;
          NatureOperation:=FSTraitementDonnees.EditDesignationFicheTraitement.Text;
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Projet')then
     begin
          FSTraitementDonnees.EditNumFicheTraitement.Text:='';
          FSTraitementDonnees.EditDesignationFicheTraitement.Text:='';
          FSTraitementDonnees.EditNumRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditDesignationRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditNumPlanificateurTraitement.Text:='';
          FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text:='';

          if(FSTraitementDonnees.TableauProjetTraitement.Col>1)
          and(FSTraitementDonnees.TableauProjetTraitement.Cells[FSTraitementDonnees.TableauProjetTraitement.Col,FSTraitementDonnees.TableauProjetTraitement.Row]<>'')
          then
          begin
               FSTraitementDonnees.EditNumProjetTraitement.Text:=FSTraitementDonnees.TableauProjetTraitement.Cells[1,FSTraitementDonnees.TableauProjetTraitement.Row];
               FSTraitementDonnees.EditNomProjetTraitement.Text:=StructureRacine(FSTraitementDonnees.EditNumProjetTraitement.Text);
          end
          else
          begin
               showmessage('Veuillez sélectionner une structure SVP !');
          end;
          FSTraitementDonnees.EditDesignationFicheTraitement.SetFocus;
          NatureOperation:=FSTraitementDonnees.EditNomProjetTraitement.Text;
     end;
     RubriqueArborescence(FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,RRubriqueFicheTechniqueCopie,RFicheTechnique,RTypeAvis);
end;

    if(FSTraitementDonnees.EditTableauSelection.Text='Fin')then
    begin
         ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
         SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
    end;
end;

procedure TFSTraitementDonnees.EditRechercheModePaiementChange(
  Sender: TObject);
begin
FSTraitementDonnees.AfficheOptionPrint.Height:=25;
end;

procedure TFSTraitementDonnees.EditRechercheModePaiementSelect(
  Sender: TObject);
begin
SuspendreAffichage;

FSTraitementDonnees.CacherTableauAvis.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked;

if(FSTraitementDonnees.CacherTableauAvis.Visible=false)then
begin
     ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
     SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
end;
end;

procedure TFSTraitementDonnees.EditRechercheDomiciliationChange(
  Sender: TObject);
begin
FSTraitementDonnees.AfficheOptionPrint.Height:=25;
end;

procedure TFSTraitementDonnees.EditRechercheDomiciliationSelect(
  Sender: TObject);
begin
SuspendreAffichage;

FSTraitementDonnees.CacherTableauAvis.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked;

if(FSTraitementDonnees.CacherTableauAvis.Visible=false)then
begin
     ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
     SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
end;

FSTraitementDonnees.RBDomiciliationChoisi.Checked:=true;
end;

procedure TFSTraitementDonnees.RBAfficherAvisAnnulesClick(Sender: TObject);
begin
SuspendreAffichage;

FSTraitementDonnees.CacherTableauAvis.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked;

if(FSTraitementDonnees.CacherTableauAvis.Visible=false)then
begin
     ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
     SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
end;

EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.TableauAvisClick(Sender: TObject);
var  R:integer;  TypeData:string;  OKAvisTrouver:boolean;
begin
     if(FSTraitementDonnees.RBSelectionPassageSouris.Checked=true)and(FSTraitementDonnees.AfficheTableauPositionAvisSelect.Visible=true)then
     begin
          ActionDateExecutionAvis;    
     end;

     if(FSTraitementDonnees.RBSelectionPassageSourisDataIsole.Checked=true)and(FSTraitementDonnees.AfficheTableauDataIsoler.Visible=true)then
     begin
          if(FSTraitementDonnees.EditNumLigneIsoler.Text='')then
          begin
               FSTraitementDonnees.EditNumLigneIsoler.Text:=inttostr(FSTraitementDonnees.TableauAvis.Row);
          end
          else
          begin
               if not(existenumintexte(inttostr(FSTraitementDonnees.TableauAvis.Row),FSTraitementDonnees.EditNumLigneIsoler.Text))
               then FSTraitementDonnees.EditNumLigneIsoler.Text:=FSTraitementDonnees.EditNumLigneIsoler.Text+';'+inttostr(FSTraitementDonnees.TableauAvis.Row);
          end;

          DataTableauIsoler(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauDataIsoler,FSTraitementDonnees.EditNumLigneIsoler.Text);
     end;

     FSTraitementDonnees.AfficheTableauAfficheRubrique.Height:=25;
     if(FSTraitementDonnees.TableauProjetTraitement.Visible=true)then
     begin
          FSTraitementDonnees.TableauProjetTraitement.Visible:=false;
          ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
                    ,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
          SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
     end;  

if(FSTraitementDonnees.RBRubriqueTrieTableauAvis.Checked=true)then
begin
     FSTraitementDonnees.EditRubriqueTrie.Text:=inttostr(FSTraitementDonnees.TableauAvis.Col);

     TypeData:='';

     if(FSTraitementDonnees.TableauAvis.Col=2)
     or(FSTraitementDonnees.TableauAvis.Col=3)
     then
     begin
          TypeData:='Date';
     end;

     if(FSTraitementDonnees.TableauAvis.Col=7)
     or(FSTraitementDonnees.TableauAvis.Col=8)
     then
     begin
          TypeData:='Num';
     end;

     FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text:=TypeData;

     FSTraitementDonnees.RBRubriqueTrieTableauAvis.Checked:=false;
     TrierTableauARowSpecial(FSTraitementDonnees.TableauAvis,2,FSTraitementDonnees.TableauAvis.RowCount-7,1,FSTraitementDonnees.EditRubriqueTrie.Text,TypeData,FSTraitementDonnees.TypeTrie.Caption);
     SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);

     EnregistrerOptionsTraitementDonnees;
end;

if(Firstlaters(FSTraitementDonnees.TableauAvis.Cells[15,FSTraitementDonnees.TableauAvis.Row],8)='Maintenu')
or((FSTraitementDonnees.TableauAvis.Cells[15,FSTraitementDonnees.TableauAvis.Row]='')and(FSTraitementDonnees.TableauAvis.Cells[1,FSTraitementDonnees.TableauAvis.Row]=''))
then
begin
     FSTraitementDonnees.AfficheRedimensionneTableauAvis.Color:=clBtnFace;
end
else
if(FSTraitementDonnees.TableauAvis.Cells[15,FSTraitementDonnees.TableauAvis.Row]='En instance')then
begin
     FSTraitementDonnees.AfficheRedimensionneTableauAvis.Color:=clYellow;
end
else
begin
     FSTraitementDonnees.AfficheRedimensionneTableauAvis.Color:=clRed;
end;

R:=1;
OKAvisTrouver:=false;
FSTraitementDonnees.TableauDataIsoler.FixedColor:=clBtnFace;
while(R<=FSTraitementDonnees.TableauDataIsoler.RowCount-1)and(OKAvisTrouver=false)do
begin
     if(FSTraitementDonnees.TableauDataIsoler.Cells[1,R]=FSTraitementDonnees.TableauAvis.Cells[1,FSTraitementDonnees.TableauAvis.Row])then
     begin
          OKAvisTrouver:=true;
          FSTraitementDonnees.TableauDataIsoler.Row:=R;
          FSTraitementDonnees.TableauDataIsoler.FixedColor:=$0080FF80;
     end;
R:=R+1;
end;

end;

procedure TFSTraitementDonnees.TableauSeriePieceDblClick(Sender: TObject);
var   R:integer;
begin

if(FSTraitementDonnees.TableauSeriePiece.Cells[1,FSTraitementDonnees.TableauSeriePiece.Row]='')
then FSTraitementDonnees.TableauSeriePiece.Cells[1,FSTraitementDonnees.TableauSeriePiece.Row]:='OK'
else FSTraitementDonnees.TableauSeriePiece.Cells[1,FSTraitementDonnees.TableauSeriePiece.Row]:='';

end;

procedure TFSTraitementDonnees.TableauSeriePieceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSTraitementDonnees.BitValiderSeriePiece.SetFocus;
end;

end;

procedure TFSTraitementDonnees.TableauSeriePieceKeyPress(Sender: TObject;
  var Key: Char);
begin

if key in['s','S']then
begin
     if(FSTraitementDonnees.TableauSeriePiece.Cells[1,FSTraitementDonnees.TableauSeriePiece.Row]='')
     then FSTraitementDonnees.TableauSeriePiece.Cells[1,FSTraitementDonnees.TableauSeriePiece.Row]:='OK'
     else FSTraitementDonnees.TableauSeriePiece.Cells[1,FSTraitementDonnees.TableauSeriePiece.Row]:='';
end;

end;

procedure TFSTraitementDonnees.BitValiderSeriePieceClick(Sender: TObject);
var  i,R,NumPiece,LMaxPiece:integer;
begin

if(FSTraitementDonnees.TableauSeriePiece.Visible=true)then
begin
     for R:=1 to FSTraitementDonnees.TableauSeriePiece.RowCount-1 do
     begin
          if(FSTraitementDonnees.TableauSeriePiece.Cells[1,R]='OK')
          then FSTraitementDonnees.EditNbrSerie.Text:=inttostr(strtointeger(FSTraitementDonnees.EditNbrSerie.Text)+1);
     end;
     CompleteAvis(FSTraitementDonnees.TableauAvis,6);
     SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
     FSTraitementDonnees.AfficheSeriePiece.Height:=0;
end;
end;

procedure TFSTraitementDonnees.BitBtn11Click(Sender: TObject);
begin
     SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
     FSTraitementDonnees.AfficheSeriePiece.Height:=0;
end;

procedure TFSTraitementDonnees.AfficheOptionPrintClick(Sender: TObject);
begin

if(FSTraitementDonnees.AfficheOptionPrint.Height=25)
then FSTraitementDonnees.AfficheOptionPrint.Height:=223
else FSTraitementDonnees.AfficheOptionPrint.Height:=25;

end;

procedure TFSTraitementDonnees.BitBtn4Click(Sender: TObject);
var  R:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;
begin

if(FSTraitementDonnees.AfficheTableauDataIsoler.Visible=true)then
begin
      TitreEtat:='Données Isolés pour traitement';

      GrasARow:='0';
      GrasACol:='0';
      CenterARow:='0';
      CenterACol:='0;1;2;5';
      RightARow:='';
      RightACol:='7;8';

      OptionsImpression(FSTraitementDonnees.TableauDataIsoler,'Center',0,1,TitreEtat,FSTraitementDonnees.RBAjustement.Checked,FSTraitementDonnees.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
end
else
begin
      FSMenuPrincipal.TitreEtat.Text:='';
      TitreEtat:='';

      if(strtointeger(FSTraitementDonnees.EditNbrSerie.Text)<>0)then
      begin
           TitreEtat:='Etat de Raprochement ';
           if(FSTraitementDonnees.EditNomProjetTraitement.Text<>'')then TitreEtat:=TitreEtat+'Structure: '+FSTraitementDonnees.EditNomProjetTraitement.Text+'.';
           FSMenuPrincipal.TitreEtat.Lines.Add(TitreEtat);
           TitreEtat:=' Série N°( ';
           for R:=1 to FSTraitementDonnees.TableauSeriePiece.RowCount-1 do
           begin
                if(FSTraitementDonnees.TableauSeriePiece.Cells[1,R]='OK')then
                begin
                     TitreEtat:=TitreEtat+FSTraitementDonnees.TableauSeriePiece.Cells[0,R];
                     if(R<FSTraitementDonnees.TableauSeriePiece.RowCount-1)
                     then TitreEtat:=TitreEtat+'/'
                     else TitreEtat:=TitreEtat+' )';
                end;
           end;
           FSMenuPrincipal.TitreEtat.Lines.Add(TitreEtat);
           if(FSTraitementDonnees.EditDesignationFicheTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Fiche: '+FSTraitementDonnees.EditDesignationFicheTraitement.Text);
           if(FSTraitementDonnees.EditDesignationRubriqueTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Rubrique: '+FSTraitementDonnees.EditDesignationRubriqueTraitement.Text);
           if(FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Planificateur: '+FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text);
      end
      else
      begin
           TitreEtat:='Situation financière ';
           if(FSTraitementDonnees.EditNomProjetTraitement.Text<>'')then TitreEtat:=TitreEtat+'Structure: '+FSTraitementDonnees.EditNomProjetTraitement.Text+'.';
           FSMenuPrincipal.TitreEtat.Lines.Add(TitreEtat);
           if(FSTraitementDonnees.EditDesignationFicheTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Fiche: '+FSTraitementDonnees.EditDesignationFicheTraitement.Text);
           if(FSTraitementDonnees.EditDesignationRubriqueTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Rubrique: '+FSTraitementDonnees.EditDesignationRubriqueTraitement.Text);
           if(FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Planificateur: '+FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text);
      end;
      TitreEtat:='';
      if(FSTraitementDonnees.EditDesignationTypeAvis.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditDesignationTypeAvis.Text;
      if(FSTraitementDonnees.EditRechercheModePaiement.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditRechercheModePaiement.Text;
      if(FSTraitementDonnees.EditRechercheDomiciliation.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditRechercheDomiciliation.Text;
      if(TitreEtat<>'')then FSMenuPrincipal.TitreEtat.Lines.Add(TitreEtat);
      FSMenuPrincipal.TitreEtat.Lines.Add('Période du: '+datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date)+' au: '+datetostr(FSTraitementDonnees.EditRechercheDateFin.Date));

      GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauAvis.RowCount-2)+'.'+inttostr(FSTraitementDonnees.TableauAvis.RowCount-1);
      GrasACol:='0';
      CenterARow:='0';
      CenterACol:='0;1;2;5';
      RightARow:='';
      RightACol:='7;8';

      OptionsImpression(FSTraitementDonnees.TableauAvis,'Center',0,1,FSMenuPrincipal.TitreEtat.Text,FSTraitementDonnees.RBAjustement.Checked,FSTraitementDonnees.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;
    FSTraitementDonnees.AfficheOptionPrint.Height:=25;
end;

procedure TFSTraitementDonnees.PageFinanceTiersShow(Sender: TObject);
begin
FSTraitementDonnees.AfficheTableauSelectionDonnees.Visible:=false;
FSTraitementDonnees.AfficheTiersTableauAfficheRubrique.Height:=25;

FSTraitementDonnees.AfficheDetailArticle.Left:=FSTraitementDonnees.TableauDetailMouvementSelection.Left;
FSTraitementDonnees.AfficheDetailArticle.Top:=FSTraitementDonnees.TableauDetailMouvementSelection.Top;

if(FSTraitementDonnees.RapportTraitementTiers.Lines.Strings[FSTraitementDonnees.RapportTraitementTiers.Lines.Count-1]<>'Fin du traitement.')
and(FSTraitementDonnees.RapportTraitementTiers.Lines.Strings[FSTraitementDonnees.RapportTraitementTiers.Lines.Count-1]<>'Traitement Suspendu.')
then FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked
else FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=false;

FSTraitementDonnees.RapportTraitementTiers.Refresh;
FSTraitementDonnees.TexteFinRaportTiers.Caption:=inttostr(FSTraitementDonnees.RapportTraitementTiers.Lines.Count-1)+': '+FSTraitementDonnees.RapportTraitementTiers.Lines.Strings[FSTraitementDonnees.RapportTraitementTiers.Lines.Count-1];

if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
begin
     FSTraitementDonnees.RBTousMouvementPrelevementSituationMarche.Checked:=true;
     if(FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked=true)then
     begin
          SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
     end;
end
else
begin
     if(FSTraitementDonnees.RapportTraitementTiers.Lines.Count>0)then
     begin
          if(FSTraitementDonnees.RapportTraitementTiers.Lines.Strings[FSTraitementDonnees.RapportTraitementTiers.Lines.Count-1]<>'Fin du traitement.')
          and(FSTraitementDonnees.RapportTraitementTiers.Lines.Strings[FSTraitementDonnees.RapportTraitementTiers.Lines.Count-1]<>'Traitement Suspendu.')
          then FSTraitementDonnees.AffichePatientez.Visible:=true
          else FSTraitementDonnees.AffichePatientez.Visible:=false;
     end
     else FSTraitementDonnees.AffichePatientez.Visible:=false;
end;
end;

procedure TFSTraitementDonnees.EditTiersTypeProcesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSTraitementDonnees.EditTiersFichierConserne.SetFocus;
end;

end;

procedure TFSTraitementDonnees.EditTiersTypeProcesSelect(Sender: TObject);
begin
InitialisationPageTraitementTiers;
SuspendreAffichage;
FSTraitementDonnees.RBChargerPointeur.Checked:=true;

ListeTypeFichierTiersBox(FSTraitementDonnees.EditTiersTypeProces.Text,'','',EditTiersFichierConserne,FSTraitementDonnees.TitreEditTiersFichierConserne);
FSTraitementDonnees.EditTiersFichierConserneAfficher.Text:=FSTraitementDonnees.EditTiersFichierConserne.Text;
if(FSTraitementDonnees.RBAutoBaseAvisFichierConcerne.Checked=true)
then FSTraitementDonnees.EditBaseAvisFichierConcerne.Text:=IndiqueBaseAvis(FSTraitementDonnees.EditTiersFichierConserne.Text);

FSTraitementDonnees.TableauTiersListeTiers.Visible:=true;
FSTraitementDonnees.TableauTiersListeTiers.Top:=FSTraitementDonnees.PagePrincipale.Top+FSTraitementDonnees.PageEnglais.Top+FSTraitementDonnees.AfficheTiersTableauAvis.Top+FSTraitementDonnees.AfficheDataTiers.Top+FSTraitementDonnees.EditTiersNomTiers.Top+FSTraitementDonnees.EditTiersNomTiers.Height+2;
FSTraitementDonnees.TableauTiersListeTiers.Left:=FSTraitementDonnees.PagePrincipale.Left+FSTraitementDonnees.PageEnglais.Left+FSTraitementDonnees.AfficheTiersTableauAvis.Left+FSTraitementDonnees.AfficheDataTiers.Left+FSTraitementDonnees.EditTiersNomTiers.Left;
FSTraitementDonnees.TimerLancerAfficheTiers.Enabled:=true;
end;

procedure TFSTraitementDonnees.EditTiersFichierConserneSelect(
  Sender: TObject);
begin
InitialisationPageTraitementTiers;
SuspendreAffichage;
FSTraitementDonnees.RBChargerPointeur.Checked:=true;
FSTraitementDonnees.EditTiersNomTiers.Text:='';
FSTraitementDonnees.EditTiersCodeTiers.Text:='';

FSTraitementDonnees.EditTiersFichierConserneAfficher.Text:=FSTraitementDonnees.EditTiersFichierConserne.Text;
if(FSTraitementDonnees.RBAutoBaseAvisFichierConcerne.Checked=true)
then FSTraitementDonnees.EditBaseAvisFichierConcerne.Text:=IndiqueBaseAvis(FSTraitementDonnees.EditTiersFichierConserne.Text);

FSTraitementDonnees.TableauTiersListeTiers.Visible:=true;
FSTraitementDonnees.TableauTiersListeTiers.Top:=FSTraitementDonnees.PagePrincipale.Top+FSTraitementDonnees.PageEnglais.Top+FSTraitementDonnees.AfficheTiersTableauAvis.Top+FSTraitementDonnees.AfficheDataTiers.Top+FSTraitementDonnees.EditTiersNomTiers.Top+FSTraitementDonnees.EditTiersNomTiers.Height+2;
FSTraitementDonnees.TableauTiersListeTiers.Left:=FSTraitementDonnees.PagePrincipale.Left+FSTraitementDonnees.PageEnglais.Left+FSTraitementDonnees.AfficheTiersTableauAvis.Left+FSTraitementDonnees.AfficheDataTiers.Left+FSTraitementDonnees.EditTiersNomTiers.Left;
FSTraitementDonnees.TimerLancerAfficheTiers.Enabled:=true;

FSTraitementDonnees.RBFichierConcerneChoisiTiers.Checked:=true;
end;

procedure TFSTraitementDonnees.EditTiersNomTiersEnter(Sender: TObject);
begin
     FSTraitementDonnees.EditTiersCodeTiers.Text:='';
     FSTraitementDonnees.EditTiersNomTiers.Text:='';
     FSTraitementDonnees.EditTiersSupplementaire.Text:='';

     if(FSTraitementDonnees.EditTiersFichierConserne.Text<>'')then
     begin
          FSTraitementDonnees.TableauTiersListeTiers.Visible:=true;
          FSTraitementDonnees.TableauTiersListeTiers.Top:=FSTraitementDonnees.PagePrincipale.Top+FSTraitementDonnees.PageEnglais.Top+FSTraitementDonnees.AfficheTiersTableauAvis.Top+FSTraitementDonnees.AfficheDataTiers.Top+FSTraitementDonnees.EditTiersNomTiers.Top+FSTraitementDonnees.EditTiersNomTiers.Height+2;
          FSTraitementDonnees.TableauTiersListeTiers.Left:=FSTraitementDonnees.PagePrincipale.Left+FSTraitementDonnees.PageEnglais.Left+FSTraitementDonnees.AfficheTiersTableauAvis.Left+FSTraitementDonnees.AfficheDataTiers.Left+FSTraitementDonnees.EditTiersNomTiers.Left;
     end;

     if(FSTraitementDonnees.EditTiersNomTiers.Text<>'')then
     begin
          FSTraitementDonnees.TimerLancerAfficheTiers.Enabled:=true;
          FSTraitementDonnees.EditTiersFichierConserne.Text:=FSTraitementDonnees.EditTiersFichierConserneAfficher.Text;
     end;
end;

procedure TFSTraitementDonnees.TableauTiersListeTiersKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSTraitementDonnees.EditTiersCodeTiers.Text:=FSTraitementDonnees.TableauTiersListeTiers.Cells[1,FSTraitementDonnees.TableauTiersListeTiers.Row];
     FSTraitementDonnees.EditTiersNomTiers.Text:=FSTraitementDonnees.TableauTiersListeTiers.Cells[2,FSTraitementDonnees.TableauTiersListeTiers.Row];
     FSTraitementDonnees.EditTiersSupplementaire.Text:='';
     
     if(ExisteCodeTiersInGroupe(FSTraitementDonnees.EditTiersCodeTiers.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,RListeGroupeTiersCopie,RGroupeTiersCopie)=true)then
     begin
          FSTraitementDonnees.EditTiersFichierConserne.Text:=RGroupeTiersCopie.FichierConcerneTiers;
     end;

     if(FSTraitementDonnees.RBAutoBaseAvisFichierConcerne.Checked=true)
     then FSTraitementDonnees.EditBaseAvisFichierConcerne.Text:=IndiqueBaseAvis(FSTraitementDonnees.EditTiersFichierConserne.Text);

     FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

     if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
     begin
          SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
     end;
     FSTraitementDonnees.TableauTiersListeTiers.Visible:=false;
end;

end;

procedure TFSTraitementDonnees.EditTiersNomProjetTraitementEnter(
  Sender: TObject);
begin
SuspendreAffichage;

FSTraitementDonnees.TableauTiersProjetTraitement.Visible:=true;
FSTraitementDonnees.TableauTiersProjetTraitement.Left:=FSTraitementDonnees.PanelEditTiersNomProjetTraitement.Left+FSTraitementDonnees.PanelEditTiersNomProjetTraitement.Width+8;
FSTraitementDonnees.TableauTiersProjetTraitement.Top:=FSTraitementDonnees.PanelEditTiersNomProjetTraitement.Top+FSTraitementDonnees.EditTiersNomProjetTraitement.Top;
FSTraitementDonnees.TableauTiersProjetTraitement.SetFocus;
ListeProjetFinance(FSTraitementDonnees.TableauTiersProjetTraitement,'','',inttostr(10+(FSTraitementDonnees.EditRonStructure.ItemIndex*5)),false,'1','',false,true,'','');
FSTraitementDonnees.EditTableauSelection.Text:='Projet';

FSTraitementDonnees.TableauTiersProjetTraitement.ColCount:=FSTraitementDonnees.TableauTiersProjetTraitement.ColCount+1;
FSTraitementDonnees.TableauTiersProjetTraitement.Cols[FSTraitementDonnees.TableauTiersProjetTraitement.ColCount-1].Text:='Montant Calculé';
FSTraitementDonnees.TableauTiersProjetTraitement.ColWidths[FSTraitementDonnees.TableauTiersProjetTraitement.ColCount-1]:=100;
SyntheseDesProjetsParNature(FSTraitementDonnees.TableauTiersProjetTraitement,FSTraitementDonnees.EditNumProjetTraitement.Text,'','',1,FSTraitementDonnees.TableauTiersProjetTraitement.ColCount-1,FSTraitementDonnees.EditTableauSelection.Text,datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.RBAfficherPartiesCommunes.Checked);
end;

procedure TFSTraitementDonnees.EditTiersNomProjetTraitementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSTraitementDonnees.TableauTiersProjetTraitement.Visible=true)
     then FSTraitementDonnees.TableauTiersProjetTraitement.SetFocus;
end;

end;

procedure TFSTraitementDonnees.AfficheTiersOptionPrintClick(
  Sender: TObject);
begin

if(FSTraitementDonnees.AfficheTiersOptionPrint.Height=25)
then FSTraitementDonnees.AfficheTiersOptionPrint.Height:=265
else FSTraitementDonnees.AfficheTiersOptionPrint.Height:=25;

end;

procedure TFSTraitementDonnees.TableauTiersProjetTraitementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var  i,NumTypeAvis,ChercheSigneDebitCredit:integer; Quantite,Montant:real;
     CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise,CodeTiers,NatureOperation,DesignationTypeAvis:string;
     OKPlanificationRubrique,OKPlanificationTiers,OKAvis:boolean;
begin

if key in[VK_ESCAPE]then
begin
     FSTraitementDonnees.TableauTiersProjetTraitement.Visible:=false;

     if(FSTraitementDonnees.EditTableauSelection.Text='Planificateur')then
     begin
          //FSTraitementDonnees.EditTiersNumProjetTraitement.Text:='';
          //FSTraitementDonnees.EditTiersNomProjetTraitement.Text:='';
          //FSTraitementDonnees.EditTiersNumFicheTraitement.Text:='';
          //FSTraitementDonnees.EditTiersDesignationFicheTraitement.Text:='';
          //FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text:='';
          //FSTraitementDonnees.EditTiersDesignationRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationPlanificateurTraitement.Text:='';
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Rubrique')then
     begin
          //FSTraitementDonnees.EditTiersNumProjetTraitement.Text:='';
          //FSTraitementDonnees.EditTiersNomProjetTraitement.Text:='';
          //FSTraitementDonnees.EditTiersNumFicheTraitement.Text:='';
          //FSTraitementDonnees.EditTiersDesignationFicheTraitement.Text:='';
          FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationPlanificateurTraitement.Text:='';
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Fiche')then
     begin
          //FSTraitementDonnees.EditTiersNumProjetTraitement.Text:='';
          //FSTraitementDonnees.EditTiersNomProjetTraitement.Text:='';
          FSTraitementDonnees.EditTiersNumFicheTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationFicheTraitement.Text:='';
          FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationPlanificateurTraitement.Text:='';
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Projet')then
     begin
          FSTraitementDonnees.EditTiersNumProjetTraitement.Text:='';
          FSTraitementDonnees.EditTiersNomProjetTraitement.Text:='';
          FSTraitementDonnees.EditTiersNumFicheTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationFicheTraitement.Text:='';
          FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationPlanificateurTraitement.Text:='';
     end;

     FSTraitementDonnees.EditTableauSelection.Text:='Fin';
end;

if key in[VK_RETURN]then
begin
     NatureOperation:='';

     if(FSTraitementDonnees.EditTableauSelection.Text='Planificateur')then
     begin
          FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text:=FSTraitementDonnees.TableauTiersProjetTraitement.Cells[3,FSTraitementDonnees.TableauTiersProjetTraitement.Row];
          FSTraitementDonnees.EditTiersDesignationPlanificateurTraitement.Text:=FSTraitementDonnees.TableauTiersProjetTraitement.Cells[4,FSTraitementDonnees.TableauTiersProjetTraitement.Row];

          RubriqueArborescence('',FSTraitementDonnees.TableauTiersProjetTraitement.Cells[2,FSTraitementDonnees.TableauTiersProjetTraitement.Row],RRubriqueFicheTechnique,RFicheTechnique,RTypeAvis);
          if(FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text='')then
          begin
               FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text:=inttostr(RRubriqueFicheTechnique.NumRubrique);
               FSTraitementDonnees.EditTiersDesignationRubriqueTraitement.Text:=RRubriqueFicheTechnique.DesignationRubrique;
          end;
          if(FSTraitementDonnees.EditTiersNumFicheTraitement.Text='')then
          begin
               FSTraitementDonnees.EditTiersNumFicheTraitement.Text:=inttostr(RFicheTechnique.NumFicheTechnique);
               FSTraitementDonnees.EditTiersDesignationFicheTraitement.Text:=RFicheTechnique.DesignationFicheTechnique;
          end;
          if(FSTraitementDonnees.EditTiersNumProjetTraitement.Text='')then
          begin
               FSTraitementDonnees.EditTiersNumProjetTraitement.Text:=RFicheTechnique.CodeProjet;
               FSTraitementDonnees.EditTiersNomProjetTraitement.Text:=ChercherProjetFinance(RFicheTechnique.CodeProjet,PositionProjetFinancesRecherche).DesignationProjetFinance;
          end;

          FSTraitementDonnees.TableauTiersProjetTraitement.Visible:=false;
          NatureOperation:=FSTraitementDonnees.EditTiersDesignationPlanificateurTraitement.Text;
          FSTraitementDonnees.EditTableauSelection.Text:='Fin';
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Rubrique')then
     begin
          FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text:=FSTraitementDonnees.TableauTiersProjetTraitement.Cells[1,FSTraitementDonnees.TableauTiersProjetTraitement.Row];
          FSTraitementDonnees.EditTiersDesignationRubriqueTraitement.Text:=FSTraitementDonnees.TableauTiersProjetTraitement.Cells[2,FSTraitementDonnees.TableauTiersProjetTraitement.Row];
          FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationPlanificateurTraitement.Text:='';

          ExistePlanificationRubrique(FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,'',OKPlanificationRubrique,OKPlanificationTiers,CodeTiers);
          if(OKPlanificationRubrique=true)then
          begin
               AffichePlanificateur(FSTraitementDonnees.TableauTiersProjetTraitement,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,'','','','',Quantite,Montant);
               FSTraitementDonnees.TableauTiersProjetTraitement.SetFocus;
               FSTraitementDonnees.EditTableauSelection.Text:='Planificateur';
          end
          else
          begin
               FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text:='';
               FSTraitementDonnees.EditTiersDesignationPlanificateurTraitement.Text:='';
               FSTraitementDonnees.TableauTiersProjetTraitement.Visible:=false;
               FSTraitementDonnees.TableauTiersProjetTraitement.Visible:=false;
               FSTraitementDonnees.EditTableauSelection.Text:='Fin';
          end;

          NatureOperation:=FSTraitementDonnees.EditTiersDesignationRubriqueTraitement.Text;
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Fiche')then
     begin
          FSTraitementDonnees.EditTiersNumFicheTraitement.Text:=FSTraitementDonnees.TableauTiersProjetTraitement.Cells[2,FSTraitementDonnees.TableauTiersProjetTraitement.Row];
          FSTraitementDonnees.EditTiersDesignationFicheTraitement.Text:=FSTraitementDonnees.TableauTiersProjetTraitement.Cells[3,FSTraitementDonnees.TableauTiersProjetTraitement.Row];

          FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationPlanificateurTraitement.Text:='';
          FSTraitementDonnees.TableauTiersProjetTraitement.Visible:=false;
          FSTraitementDonnees.EditTiersDesignationRubriqueTraitement.SetFocus;
          NatureOperation:=FSTraitementDonnees.EditTiersDesignationFicheTraitement.Text;
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Projet')then
     begin
          FSTraitementDonnees.EditTiersNumFicheTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationFicheTraitement.Text:='';
          FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationRubriqueTraitement.Text:='';
          FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text:='';
          FSTraitementDonnees.EditTiersDesignationPlanificateurTraitement.Text:='';

          if(FSTraitementDonnees.TableauTiersProjetTraitement.Col>1)
          and(FSTraitementDonnees.TableauTiersProjetTraitement.Cells[FSTraitementDonnees.TableauTiersProjetTraitement.Col,FSTraitementDonnees.TableauTiersProjetTraitement.Row]<>'')
          then
          begin
               FSTraitementDonnees.EditTiersNumProjetTraitement.Text:=FSTraitementDonnees.TableauTiersProjetTraitement.Cells[1,FSTraitementDonnees.TableauTiersProjetTraitement.Row];
               FSTraitementDonnees.EditTiersNomProjetTraitement.Text:=StructureRacine(FSTraitementDonnees.EditTiersNumProjetTraitement.Text);
               FSTraitementDonnees.TableauTiersProjetTraitement.Visible:=false;
          end
          else
          begin
               showmessage('Veuillez sélectionner une structure SVP !');
          end;

          FSTraitementDonnees.EditTiersDesignationFicheTraitement.SetFocus;
          NatureOperation:=FSTraitementDonnees.EditTiersNomProjetTraitement.Text;
     end;
     RubriqueArborescence(FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,RRubriqueFicheTechniqueCopie,RFicheTechnique,RTypeAvis);
end;

    if(FSTraitementDonnees.EditTableauSelection.Text='Fin')then
    begin
         FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

         if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
         begin
              SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
         end;
    end;

end;

procedure TFSTraitementDonnees.BitBtn18Click(Sender: TObject);
var  R:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,TypeEtat:string;
begin
     if ExisteCharInString('Client',FSTraitementDonnees.EditTiersFichierConserne.Text)then TypeEtat:='Ventes'
     else
     if ExisteCharInString('Fournisseur',FSTraitementDonnees.EditTiersFichierConserne.Text)then TypeEtat:='Achats'
     else TypeEtat:='Situation '+FSTraitementDonnees.EditTiersFichierConserne.Text+': ';

if(FSTraitementDonnees.EditTiersNomTiers.Text<>'')then
begin
     if(FSTraitementDonnees.AfficheTableauSelectionDonnees.Visible=false)then
     begin
          //if(FSTraitementDonnees.EditTiersNomTiers.Text='Tous')
          //then TitreEtat:='Situation financière de: '+FSTraitementDonnees.EditTiersFichierConserne.Text+', '
          //else TitreEtat:='Situation financière de: '+FSTraitementDonnees.EditTiersNomTiers.Text+', ';

          if(FSTraitementDonnees.EditTiersNomTiers.Text='Tous')
          then TitreEtat:=TypeEtat+': '+FSTraitementDonnees.EditTiersFichierConserne.Text+', '
          else TitreEtat:=TypeEtat+': '+FSTraitementDonnees.EditTiersNomTiers.Text+', ';

          if(FSTraitementDonnees.EditTiersNomProjetTraitement.Text<>'')then TitreEtat:=TitreEtat+'Structure: '+FSTraitementDonnees.EditTiersNomProjetTraitement.Text+', ';
          if(FSTraitementDonnees.EditTiersModePaiement.Text<>'Tous')then TitreEtat:=TitreEtat+FSTraitementDonnees.EditTiersModePaiement.Text+', ';
          if(FSTraitementDonnees.EditTiersDomiciliation.Text<>'Tous')then TitreEtat:=TitreEtat+FSTraitementDonnees.EditTiersDomiciliation.Text+', ';

          TitreEtat:=TitreEtat+'du: '+datetostr(FSTraitementDonnees.EditTiersDateDebut.Date)+' au: '+datetostr(FSTraitementDonnees.EditTiersDateFin.Date);

          GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauFinanceTiers.RowCount-2)+'.'+inttostr(FSTraitementDonnees.TableauFinanceTiers.RowCount-1);
          GrasACol:='0';
          CenterARow:='0';
          CenterACol:='0-4;9;13';
          RightARow:='';
          RightACol:='7;8;20';

          OptionsImpression(FSTraitementDonnees.TableauFinanceTiers,'Center',0,1,TitreEtat,FSTraitementDonnees.RBTiersAjustement.Checked,FSTraitementDonnees.RBTiersOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
     end
     else
     begin
          //if(FSTraitementDonnees.EditTiersNomTiers.Text='Tous')
          //then TitreEtat:='Situation financière de: '+FSTraitementDonnees.EditTiersFichierConserne.Text+', '
          //else TitreEtat:='Situation financière de: '+FSTraitementDonnees.EditTiersNomTiers.Text+', ';

          if(FSTraitementDonnees.EditTiersNomTiers.Text='Tous')
          then TitreEtat:=TypeEtat+': '+FSTraitementDonnees.EditTiersFichierConserne.Text+', '
          else TitreEtat:=TypeEtat+': '+FSTraitementDonnees.EditTiersNomTiers.Text+', ';

          if(FSTraitementDonnees.EditTiersNomProjetTraitement.Text<>'')then TitreEtat:=TitreEtat+'Structure: '+FSTraitementDonnees.EditTiersNomProjetTraitement.Text+', ';
          if(FSTraitementDonnees.EditTiersModePaiement.Text<>'Tous')then TitreEtat:=TitreEtat+FSTraitementDonnees.EditTiersModePaiement.Text+', ';
          if(FSTraitementDonnees.EditTiersDomiciliation.Text<>'Tous')then TitreEtat:=TitreEtat+FSTraitementDonnees.EditTiersDomiciliation.Text+', ';

          TitreEtat:=TitreEtat+'du: '+datetostr(FSTraitementDonnees.EditTiersDateDebut.Date)+' au: '+datetostr(FSTraitementDonnees.EditTiersDateFin.Date);

          if(FSTraitementDonnees.RBImprimerNonSelect.Checked=true)
          then GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauSelectionDonneesImprimer.RowCount-1)
          else GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauSelectionDonnees.RowCount-1);
          GrasACol:='0';
          CenterARow:='0';
          CenterACol:='0;2;3;4;5;7;8';
          RightARow:='';
          RightACol:='6';

          OptionsImpression(FSTraitementDonnees.TableauTitreSelectionDonnees,'Center',R,1,TitreEtat,FSTraitementDonnees.RBTiersAjustement.Checked,FSTraitementDonnees.RBTiersOrientationPapier.Text,'0','0','','','','',false,0,FSMenuPrincipal.ImageCodebarre,true,R);
          if(FSTraitementDonnees.RBImprimerNonSelect.Checked=true)
          then OptionsImpression(FSTraitementDonnees.TableauSelectionDonneesImprimer,'Center',R,1,TitreEtat,FSTraitementDonnees.RBTiersAjustement.Checked,FSTraitementDonnees.RBTiersOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,false,1,FSMenuPrincipal.ImageCodebarre,true,R)
          else OptionsImpression(FSTraitementDonnees.TableauSelectionDonnees,'Center',R,1,TitreEtat,FSTraitementDonnees.RBTiersAjustement.Checked,FSTraitementDonnees.RBTiersOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,false,1,FSMenuPrincipal.ImageCodebarre,true,R);

          GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauDetailMouvementSelection.RowCount-1);
          GrasACol:='0';
          CenterARow:='0';
          CenterACol:='0;1;3;4;13;14;15;18';
          RightARow:='';
          RightACol:='5-8;20;21';

          OptionsImpression(FSTraitementDonnees.TableauTitreDetailMouvementSelection,'Center',R,1,TitreEtat,FSTraitementDonnees.RBTiersAjustement.Checked,FSTraitementDonnees.RBTiersOrientationPapier.Text,'0','0','','','','',false,0,FSMenuPrincipal.ImageCodebarre,true,R);
          OptionsImpression(FSTraitementDonnees.TableauDetailMouvementSelection,'Center',R,1,TitreEtat,FSTraitementDonnees.RBTiersAjustement.Checked,FSTraitementDonnees.RBTiersOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
     end;

FSTraitementDonnees.AfficheTiersOptionPrint.Height:=25;
end
else
begin
     showmessage('Veuillez Sélectionner un compte tiers SVP !');
     FSTraitementDonnees.EditTiersNomTiers.SetFocus;
end;

end;

procedure TFSTraitementDonnees.EditTiersModePaiementSelect(
  Sender: TObject);
begin
InitialisationPageTraitementTiers;
SuspendreAffichage;

FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
begin
     SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
end;

end;

procedure TFSTraitementDonnees.EditTiersDomiciliationSelect(
  Sender: TObject);
begin
InitialisationPageTraitementTiers;
SuspendreAffichage;

FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
begin
     SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
end;
end;

procedure TFSTraitementDonnees.RBAfficherAvisAnnulesTiersClick(
  Sender: TObject);
begin
InitialisationPageTraitementTiers;
SuspendreAffichage;

FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
begin
     SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
end;

EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.TableauFinanceTiersClick(Sender: TObject);
var TypeData:string;
begin
     FSTraitementDonnees.TableauTiersListeTiers.Visible:=false;
     FSTraitementDonnees.TableauMoyenTransport.Visible:=false;
     FSTraitementDonnees.AfficheTiersTableauAfficheRubrique.Height:=25;
     FSTraitementDonnees.AfficheTiersOptionPrint.Height:=25;

     if(FSTraitementDonnees.TableauTiersProjetTraitement.Visible=true)then
     begin
          FSTraitementDonnees.TableauTiersProjetTraitement.Visible:=false;
          FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

          if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
          begin
               SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
          end;
     end;

     if(FSTraitementDonnees.RBRubriqueTrieTableauFinanceTiers.Checked=true)then
     begin
          FSTraitementDonnees.EditTiersRubriqueTrie.Text:=inttostr(FSTraitementDonnees.TableauFinanceTiers.Col);

          TypeData:='';

          if(FSTraitementDonnees.TableauFinanceTiers.Col=2)
          or(FSTraitementDonnees.TableauFinanceTiers.Col=3)
          then
          begin
               TypeData:='Date';
          end;

          if(FSTraitementDonnees.TableauFinanceTiers.Col=7)
          or(FSTraitementDonnees.TableauFinanceTiers.Col=8)
          then
          begin
               TypeData:='Num';
          end;

          FSTraitementDonnees.EditTypeDataTrieTiers.Text:=TypeData;

          FSTraitementDonnees.RBRubriqueTrieTableauFinanceTiers.Checked:=false;
          TrierTableauARowSpecial(FSTraitementDonnees.TableauFinanceTiers,2,FSTraitementDonnees.TableauFinanceTiers.RowCount-7,1,FSTraitementDonnees.EditTiersRubriqueTrie.Text,TypeData,FSTraitementDonnees.TiersTypeTrie.Caption);

          EnregistrerOptionsTraitementDonnees;

end;

if(Firstlaters(FSTraitementDonnees.TableauFinanceTiers.Cells[15,FSTraitementDonnees.TableauFinanceTiers.Row],8)='Maintenu')
or((FSTraitementDonnees.TableauFinanceTiers.Cells[15,FSTraitementDonnees.TableauFinanceTiers.Row]='')and(FSTraitementDonnees.TableauFinanceTiers.Cells[1,FSTraitementDonnees.TableauFinanceTiers.Row]=''))
then
begin
     FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Color:=clBtnFace;
end
else
if(FSTraitementDonnees.TableauFinanceTiers.Cells[15,FSTraitementDonnees.TableauFinanceTiers.Row]='En instance')then
begin
     FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Color:=clYellow;
end
else
begin
     FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Color:=clRed;
end;

if(FSTraitementDonnees.RBTailleColonneMax.Checked=true)then
begin
     FSTraitementDonnees.TableauFinanceTiers.ColWidths[FSTraitementDonnees.TableauFinanceTiers.Col]:=MinInt(FSTraitementDonnees.TableauFinanceTiers.ColWidths[FSTraitementDonnees.TableauFinanceTiers.Col],FSTraitementDonnees.IncrimenteEditTailleColonneMax.Position);
end;

end;

procedure TFSTraitementDonnees.BitAfficheAvisNonEnregistreContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
FSTraitementDonnees.AfficheControleSeries.Left:=FSTraitementDonnees.BitAfficheAvisNonEnregistre.Left;
FSTraitementDonnees.AfficheControleSeries.Top:=FSTraitementDonnees.BitAfficheAvisNonEnregistre.Top;
FSTraitementDonnees.AfficheControleSeries.Height:=84;
end;

procedure TFSTraitementDonnees.PageFinanceDomiciliationMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
FSTraitementDonnees.AfficheControleSeries.Height:=0;
end;

procedure TFSTraitementDonnees.EditLongueureSeriePieceChange(
  Sender: TObject);
begin
strtointeger(FSTraitementDonnees.EditLongueureSeriePiece.Text)
end;

procedure TFSTraitementDonnees.TableauAvisMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSTraitementDonnees.AfficheControleSeries.Height:=0;
end;

procedure TFSTraitementDonnees.RBAvisExecutesNonExecutesClick(
  Sender: TObject);
begin
SuspendreAffichage;

FSTraitementDonnees.CacherTableauAvis.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked;

if(FSTraitementDonnees.CacherTableauAvis.Visible=false)then
begin
     ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
     ,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
     SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
end;

EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBAvisExecutesClick(Sender: TObject);
begin
SuspendreAffichage;

FSTraitementDonnees.CacherTableauAvis.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked;

if(FSTraitementDonnees.CacherTableauAvis.Visible=false)then
begin
     ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
     ,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
     SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
end;

EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBAvisNonExecutesClick(Sender: TObject);
begin
SuspendreAffichage;

FSTraitementDonnees.CacherTableauAvis.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked;

if(FSTraitementDonnees.CacherTableauAvis.Visible=false)then
begin
     ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
     ,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
     SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
end;

EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.TableauAvisKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  R:integer; OKAvisExeste:boolean;
begin

if key in[VK_RETURN]then
begin
     ActionDateExecutionAvis;
end;

end;

procedure TFSTraitementDonnees.EditTiersCodeTiersEnter(Sender: TObject);
begin
FSTraitementDonnees.EditTiersNomTiers.SetFocus;
end;

procedure TFSTraitementDonnees.EditTiersNomTiersKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
InitialisationPageTraitementTiers;

FSTraitementDonnees.TimerAfficheTiers.Enabled:=false;
FSTraitementDonnees.TimerLancerAfficheTiers.Enabled:=false;
FSTraitementDonnees.TimerLancerAfficheTiers.Enabled:=true;
end;

procedure TFSTraitementDonnees.EditTiersNomTiersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSTraitementDonnees.TableauTiersListeTiers.SetFocus;
end;

end;

procedure TFSTraitementDonnees.TableauFinanceTiersDblClick(
  Sender: TObject);
begin

if((FSTraitementDonnees.EditTiersCodeTiers.Text='Tous')or(FSTraitementDonnees.EditTiersCodeTiers.Text=''))
and(FSTraitementDonnees.TableauFinanceTiers.Cells[9,FSTraitementDonnees.TableauFinanceTiers.Row]<>'')
then
begin
     FSTraitementDonnees.EditTiersCodeTiers.Text:=FSTraitementDonnees.TableauFinanceTiers.Cells[9,FSTraitementDonnees.TableauFinanceTiers.Row];
     FSTraitementDonnees.EditTiersNomTiers.Text:=FSTraitementDonnees.TableauFinanceTiers.Cells[10,FSTraitementDonnees.TableauFinanceTiers.Row];
     FSTraitementDonnees.EditTiersSupplementaire.Text:='';
     FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

     if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
     begin
           SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
     end;
end;

end;

procedure TFSTraitementDonnees.EditDesignationTypeAvisSelect(
  Sender: TObject);
begin
     FSTraitementDonnees.EditDesignationTypeAvisDomiciliation.Text:=FSTraitementDonnees.EditDesignationTypeAvis.Text;
     FSTraitementDonnees.EditDesignationTypeAvisTiers.Text:=FSTraitementDonnees.EditDesignationTypeAvis.Text;

     if(FSTraitementDonnees.EditPageSelect.Text='Domiciliation')then
     begin
          FSTraitementDonnees.EditPgeVisiterDomiciliation.Text:='';
          FSTraitementDonnees.PageFinanceDomiciliation.Show;
          FSTraitementDonnees.TableauAvis.SetFocus;
     end;

     if(FSTraitementDonnees.EditPageSelect.Text='Tiers')then
     begin
          FSTraitementDonnees.EditPgeVisiterTiers.Text:='';
          FSTraitementDonnees.PageFinanceTiers.Show;
          FSTraitementDonnees.TableauFinanceTiers.SetFocus;
     end;
end;

procedure TFSTraitementDonnees.FormResize(Sender: TObject);
begin
     FSTraitementDonnees.PagePrincipale.Width:=FSTraitementDonnees.Width-25;
     FSTraitementDonnees.PagePrincipale.Height:=FSTraitementDonnees.Height-42;

     FSTraitementDonnees.CachePageOption.Height:=FSTraitementDonnees.PagePrincipale.Height-28;
     FSTraitementDonnees.CachePagePieceManquante.Height:=FSTraitementDonnees.PagePrincipale.Height-28;
     FSTraitementDonnees.CachePageAutres.Height:=FSTraitementDonnees.PagePrincipale.Height-28;

     FSTraitementDonnees.CachePageOption.Width:=FSTraitementDonnees.PagePrincipale.Width-15;
     FSTraitementDonnees.CachePagePieceManquante.Width:=FSTraitementDonnees.PagePrincipale.Width-15;
     FSTraitementDonnees.CachePageAutres.Width:=FSTraitementDonnees.PagePrincipale.Width-15;
end;

procedure TFSTraitementDonnees.BitBtn1Click(Sender: TObject);
var  i,IndiceAvis:integer;  NumTypeAvis:integer; OKAvis:boolean; DesignationTypeAvis,CompteImputation,DebitCredit,TypeProces,FichierConserne,Adresse:string;
     LeHandle:HWND;
begin
if not AccesPrivilegies('FS Avis',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

FSAvis.Show;
LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:
ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:
FSAvis.Left:=FSMenuPrincipal.Left;
FSAvis.Top:=FSMenuPrincipal.Top;
FSAvis.Height:=FSMenuPrincipal.Height;
FSAvis.Width:=FSMenuPrincipal.Width;

FSAvis.PageSaisieAvis.Show;
FSAvis.AfficheSeriePieceAvis.Height:=0;
//FSAvis.AfficheSeriePiece.Height:=0;

//FSAvis.EditRechercheDateDebut.Date:=strtodate('01/01/'+ExerciceAnnee);
//FSAvis.EditRechercheDateFin.Date:=strtodate('31/12/'+ExerciceAnnee);

//FSAvis.EditTiersDateDebut.Date:=strtodate('01/01/'+ExerciceAnnee);
//FSAvis.EditTiersDateFin.Date:=strtodate('31/12/'+ExerciceAnnee);

FSAvis.EditModePaiement.ItemIndex:=0;
FSAvis.EditModePaiement.Text:='';
FSAvis.AfficheDomiciliation.Visible:=true;
FSAvis.EditDate.Date:=date;
FSAvis.EditDateExecutionAvis.Text:='';
FSAvis.EditNumPiece.Text:='';
FSAvis.EditDomiciliationAvis.Text:='';
FSAvis.EditMontantChiffre.Text:='';
FSAvis.EditMontantLettres.Text:='';
FSAvis.EditChargementCodeFichierConcerne.Text:='';
FSAvis.EditChargementFichierConcerne.Text:='';
FSAvis.EditChargementTypeProces.Text:='';
FSAvis.EditBenificiaire.Text:='';
FSAvis.EditNatureDepences.Text:='';
//FSAvis.EditSignataire.Text:='';
FSAvis.EditCompteImputation.Text:='';
FSAvis.EditDebitCreditDomiciliation.Text:='';
FSAvis.EditOrigine.Text:='';
FSAvis.EditNumProjet.Text:='';
FSAvis.EditNomProjet.Text:='';
FSAvis.EditNumFiche.Text:='';
FSAvis.EditDesignationFiche.Text:='';
FSAvis.EditNumRubrique.Text:='';
FSAvis.EditDesignationRubrique.Text:='';
FSAvis.EditNumPlanificateur.Text:='';
FSAvis.EditDesignationPlanificateur.Text:='';
FSAvis.RBPieceMaitenue.Checked:=true;
FSAvis.BitAfficheFicheTechnique.Kind:=bkRetry;
FSAvis.BitAfficheFicheTechnique.Caption:='.';
FSAvis.BitAfficheFicheTechnique.Cancel:=false;
FSAvis.AfficheProjet.Height:=26;
FSAvis.TableauSelections.Visible:=false;

TypeProces:='Business';   FichierConserne:=FSTraitementDonnees.TableauAvis.Cells[24,FSTraitementDonnees.TableauAvis.Row];
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     if(FichierConserne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConserne+'} recherché !');
end;

ChAvis:=Adresse;
assignfile(FAvis,ChAvis);
try
if FileExists(ChAvis)then
Reset(FAvis)
else Rewrite(FAvis);
Seek(FAvis,0);
i:=0;
IndiceAvis:=0;
FSAvis.EditNumAvis.Items.Text:='';
FSAvis.EditNumAvis.Items.Add('Aucun');
while not eof(FAvis)do
begin
     read(FAvis,RAvis);
     i:=i+1;
     FSAvis.EditNumAvis.Items.Add(Completezerogauche(inttostr(RAvis.NumAvis),'5'));
     if(RAvis.NumAvis=strtointeger(FSTraitementDonnees.TableauAvis.Cells[1,FSTraitementDonnees.TableauAvis.Row]))
     then IndiceAvis:=i;
end;
finally
Closefile(FAvis);
end;

FSAvis.EditNumAvis.ItemIndex:=IndiceAvis;

if(FSAvis.EditNumRubrique.Text='')and(FSAvis.EditNumFiche.Text='')then
begin
     DesignationTypeAvis:=FSAvis.EditTypeAvis.Text;
end
else
begin
     RubriqueArborescence(FSAvis.EditNumFiche.Text,FSAvis.EditNumRubrique.Text,RRubriqueFicheTechniqueCopie,RFicheTechnique,RTypeAvis);
     DesignationTypeAvis:=RTypeAvis.DesignationTypeAvis;
end;

FSAvis.EditBaseAvis.Text:=FSTraitementDonnees.TableauAvis.Cells[24,FSTraitementDonnees.TableauAvis.Row];

AfficerDataContrePartieAvis(DesignationTypeAvis,FSTraitementDonnees.TableauAvis.Cells[24,FSTraitementDonnees.TableauAvis.Row]);

AfficheAvis(FSAvis.EditNumAvis.Text,FSTraitementDonnees.TableauAvis.Cells[24,FSTraitementDonnees.TableauAvis.Row]);
end;

procedure TFSTraitementDonnees.FormShow(Sender: TObject);
var R,Rong:integer; Classement,TypeProces,FichierConserne,Adresse:string;    OKPointeurTiers:boolean;
begin
     ActiverNomForm(1,(Sender as TComponent).Name);

     ChargerOptionsTraitementDonnees;

     FSTraitementDonnees.AfficheOptionPrintFinanceProjets.Height:=31;
     FSTraitementDonnees.AfficheTiersOptionPrint.Height:=25;
     
     FSTraitementDonnees.RBAfficherInfoTiersSupplementaire.Checked:=AfficherInfoTiersSupplementaire;
     
     FSTraitementDonnees.CacherTableauDeBohrs.Left:=FSTraitementDonnees.PageTableauBohrs.Left-4;
     FSTraitementDonnees.CacherTableauDeBohrs.Top:=FSTraitementDonnees.PageTableauBohrs.Top-6;

     FSTraitementDonnees.CacherTableauAvis.Top:=FSTraitementDonnees.TableauAvis.Top;
     FSTraitementDonnees.CacherTableauAvis.Left:=FSTraitementDonnees.TableauAvis.Left;

     FSTraitementDonnees.CacherTableauFinanceTiers.Left:=FSTraitementDonnees.TableauFinanceTiers.Left;
     FSTraitementDonnees.CacherTableauFinanceTiers.Top:=FSTraitementDonnees.TableauFinanceTiers.Top;
     FSTraitementDonnees.CacherTableauFinanceTiers.Height:=FSTraitementDonnees.TableauFinanceTiers.Height;
     FSTraitementDonnees.CacherTableauFinanceTiers.Width:=FSTraitementDonnees.TableauFinanceTiers.Width;

     FSTraitementDonnees.RBAppliqueEnregistrementParametresReseaux.Checked:=false;
     FSTraitementDonnees.RBInclureValeurSousReseauxPrecedentePeriode.Checked:=FunctionInclureValeurSousReseauxPrecedentePeriode;
     FSTraitementDonnees.RBInclureValeurSousReseauxPrecedenteExercice.Checked:=FunctionInclureValeurSousReseauxPrecedenteExercice;
     FSTraitementDonnees.RBAppliqueEnregistrementParametresReseaux.Checked:=true;

     TitreFicheSaisie(FSTraitementDonnees,'Traitement de Données');

     FSTraitementDonnees.AffichePatienter.Top:=56;
     FSTraitementDonnees.AffichePatienter.Left:=360;

     FSTraitementDonnees.AfficheCacheBilan.Left:=FSTraitementDonnees.TableauMouvement.Left;
     FSTraitementDonnees.AfficheCacheBilan.Top:=FSTraitementDonnees.TableauMouvement.Top;

OpenFParc(RParc);
ChProjetFinance:=RParc.Parcours+'\'+Exercice+'FProjetFinance';
assignfile(FProjetFinance,ChProjetFinance);
try
if FileExists(ChProjetFinance)then
Reset(FProjetFinance)
else Rewrite(FProjetFinance);
Seek(FProjetFinance,0);
Rong:=0;
while not eof(FProjetFinance)do
begin
     read(FProjetFinance,RProjetFinance);
     if(Rong<=longueur(RProjetFinance.NumProjetFinance))then Rong:=longueur(RProjetFinance.NumProjetFinance);
end;
finally
CloseFile(FProjetFinance);
end;

Rong:=ValeAbsolue(Rong/5);

FSTraitementDonnees.EditRonStructure.Items.Text:='';
for R:=1to(Rong-1)do
begin
     Classement:=inttostr(R);
     if(R=1)
     then Classement:=Classement+'er'
     else Classement:=Classement+'ème';
     FSTraitementDonnees.EditRonStructure.Items.Add('Structure '+Classement+' Rong');
end;
FSTraitementDonnees.EditRonStructure.ItemIndex:=0;

TypeProces:='Business';   FichierConserne:='FTypeFichierTiers';
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     if(FichierConserne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConserne+'} recherché !');
end;

ChTypeFichierTiers:=Adresse;
assignfile(FTypeFichierTiers,ChTypeFichierTiers);
if FileExists(ChTypeFichierTiers)then
begin
     try
     Reset(FTypeFichierTiers);
     Seek(FTypeFichierTiers,0);
     OKPointeurTiers:=false;
     while not eof(FTypeFichierTiers)and(OKPointeurTiers=false)do
     begin
          read(FTypeFichierTiers,RTypeFichierTiers);
          ListeTiersPointeur(FSTraitementDonnees.TableauListeAvisTrouver,RTypeFichierTiers.TypeProces,RTypeFichierTiers.FichierConcerne,'','','',FSTiers.EditNbrKeyUp,FSTiers.EditNbrKeyUpMemo,FSTraitementDonnees.TimerLancerAfficheTiers,false,true);
          if(ListePointeurTableauTiers.Count>0)then OKPointeurTiers:=true;
     end;
     finally
     CloseFile(FTypeFichierTiers);
     end;
end;

AfficherIndiqueAdresseTypeMouvement(FSTraitementDonnees.TableauIndiqueAdresseListeMouvement,'');

end;

procedure TFSTraitementDonnees.RBPreciserNatureOperationAvisClick(
  Sender: TObject);
begin
FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
begin
     SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
end;

EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.EditDesignationTypeAvisDomiciliationEnter(
  Sender: TObject);
begin
SuspendreAffichage;

     FSTraitementDonnees.PageOption.Show;
     FSTraitementDonnees.EditPageSelect.Text:='Domiciliation';
     FSTraitementDonnees.EditDesignationTypeAvis.SetFocus;
end;

procedure TFSTraitementDonnees.EditDesignationTypeAvisTiersEnter(
  Sender: TObject);
begin
SuspendreAffichage;

     FSTraitementDonnees.PageOption.Show;
     FSTraitementDonnees.EditPageSelect.Text:='Tiers';
     FSTraitementDonnees.EditDesignationTypeAvis.SetFocus;
end;

procedure TFSTraitementDonnees.PageTableauBohrShow(Sender: TObject);
var  R,C:integer;
begin
     ProcListeMouvement(FSTraitementDonnees.TableauMouvement,'','','?','');

     FSTraitementDonnees.LabelTypeProces.Caption:=FSTraitementDonnees.TableauMouvement.Cells[4,FSTraitementDonnees.TableauMouvement.Row];
     FSTraitementDonnees.LabelFichierConcerne.Caption:=FSTraitementDonnees.TableauMouvement.Cells[5,FSTraitementDonnees.TableauMouvement.Row];
     ListeTypeFichierTiersBox(FSTraitementDonnees.TableauMouvement.Cells[4,FSTraitementDonnees.TableauMouvement.Row],FSTraitementDonnees.TableauMouvement.Cells[5,FSTraitementDonnees.TableauMouvement.Row],'',FSTraitementDonnees.EditTiersFichierConserneTableauBohr,FSTraitementDonnees.TitreEditTiersFichierConserneTableauBohr);
     FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked:=false;
     FSTraitementDonnees.EditIndiceRubriqueTriCol.Text:='2';

     FSTraitementDonnees.CacherTableauDeBohrs.Left:=FSTraitementDonnees.PageTableauBohrs.Left-4;
     FSTraitementDonnees.CacherTableauDeBohrs.Top:=FSTraitementDonnees.PageTableauBohrs.Top-6;
end;

procedure TFSTraitementDonnees.TableauMouvementClick(Sender: TObject);
var R,RowNewSelect:integer; OKTitreDataTiers,OKAutoSelect,OKInitialiseDebitCredit:boolean;  TypeProcesInt,FichierConcerneInt,Adresse,ListeFichierTiers,ListeFichierNonInclu:string;
begin
SuspendreAffichage;

     FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;
     if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=true)then IntiallisationTableauBohrs(true,true,true,true,true,true,true,true,false,true);

     FSTraitementDonnees.AffichePatienter.Visible:=false;

     FSTraitementDonnees.TableauTiersTableaudeBohrs.Visible:=false;
     FSTraitementDonnees.RBChargerPointeur.Checked:=true;

     if(FSTraitementDonnees.RBAutoSelectMouvementMemeType.Checked=true)then
     begin
           OKAutoSelect:=false;
           FSTraitementDonnees.LabelFichierConcerne.Caption:='';
           if(not FunctionFichierIncluImbriquer(FSTraitementDonnees.TableauMouvement.Cells[5,FSTraitementDonnees.TableauMouvement.Row],FSTraitementDonnees.LabelFichierConcerne.Caption,ListeFichierNonInclu))
           or(strtoboolean(FSTraitementDonnees.TableauMouvement.Cells[13,FSTraitementDonnees.TableauMouvement.Row])=false)then
           begin
                if(strtoboolean(FSTraitementDonnees.TableauMouvement.Cells[13,FSTraitementDonnees.TableauMouvement.Row])=true)then OKAutoSelect:=true;
                R:=1;
                while(R<=FSTraitementDonnees.TableauMouvement.RowCount-1)do
                begin
                     FSTraitementDonnees.TableauMouvement.Cells[20,R]:='';
                R:=R+1;
                end;
           end
           else
           begin
                if(strtoboolean(FSTraitementDonnees.TableauMouvement.Cells[13,FSTraitementDonnees.TableauMouvement.Row])=true)then
                begin
                     R:=1;
                     OKAutoSelect:=true;
                     while(R<=FSTraitementDonnees.TableauMouvement.RowCount-1)and(OKAutoSelect=true)do
                     begin
                          if(FSTraitementDonnees.TableauMouvement.Cells[20,R]='OK')then OKAutoSelect:=false;
                     R:=R+1;
                     end;
                end;
           end;
     end
     else
     begin
          R:=1;
          OKAutoSelect:=true;
          while(R<=FSTraitementDonnees.TableauMouvement.RowCount-1)and(OKAutoSelect=true)do
          begin
               if(FSTraitementDonnees.TableauMouvement.Cells[20,R]='OK')then OKAutoSelect:=false;
          R:=R+1;
          end;
     end;

     if(FSTraitementDonnees.LabelTypeProces.Caption<>FSTraitementDonnees.TableauMouvement.Cells[4,FSTraitementDonnees.TableauMouvement.Row])
     or(not FunctionFichierIncluImbriquer(FSTraitementDonnees.TableauMouvement.Cells[5,FSTraitementDonnees.TableauMouvement.Row],FSTraitementDonnees.LabelFichierConcerne.Caption,ListeFichierNonInclu))
     then
     begin
          FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text:='';
          FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text:='';
          FSTraitementDonnees.EditTiersSupplementaire.Text:='';
     end;

     if(OKAutoSelect=true)then
     begin
          FSTraitementDonnees.LabelTypeProces.Caption:=FSTraitementDonnees.TableauMouvement.Cells[4,FSTraitementDonnees.TableauMouvement.Row];
          FSTraitementDonnees.LabelFichierConcerne.Caption:=FSTraitementDonnees.TableauMouvement.Cells[5,FSTraitementDonnees.TableauMouvement.Row];
          ListeTypeFichierTiersBox(FSTraitementDonnees.TableauMouvement.Cells[4,FSTraitementDonnees.TableauMouvement.Row],FSTraitementDonnees.TableauMouvement.Cells[5,FSTraitementDonnees.TableauMouvement.Row],'',FSTraitementDonnees.EditTiersFichierConserneTableauBohr,FSTraitementDonnees.TitreEditTiersFichierConserneTableauBohr);
     end;      

     if(FSTraitementDonnees.RBAutoSelectMouvementMemeType.Checked=true)and(OKAutoSelect=true)and(strtoboolean(FSTraitementDonnees.TableauMouvement.Cells[13,FSTraitementDonnees.TableauMouvement.Row])=true)then
     begin
          ListeFichierTiers:='';
          FSTraitementDonnees.EditDebitCreditPositif.Text:='';
          for R:=1 to FSTraitementDonnees.TableauMouvement.RowCount-1 do
          begin
               if(FunctionFichierInclu(FSTraitementDonnees.EditTiersFichierConserneTableauBohr.Text,FSTraitementDonnees.TableauMouvement.Cells[5,R]))
               and(strtoboolean(FSTraitementDonnees.TableauMouvement.Cells[13,R])=true)
               then
               begin
                    FSTraitementDonnees.TableauMouvement.Cells[20,R]:='OK';
                    if(ListeFichierTiers='')
                    then ListeFichierTiers:=FSTraitementDonnees.TableauMouvement.Cells[5,R]
                    else
                    begin
                         if(Not FunctionFichierIncluImbriquer(FSTraitementDonnees.TableauMouvement.Cells[5,R],ListeFichierTiers,ListeFichierNonInclu))
                         then ListeFichierTiers:=ListeFichierTiers+';'+FSTraitementDonnees.TableauMouvement.Cells[5,R]
                         else
                         if(ListeFichierNonInclu<>'')then ListeFichierTiers:=ListeFichierTiers+';'+ListeFichierNonInclu;
                    end;
               end;
          end;
     end;

     if(ListeFichierTiers<>'')then
     begin
          ListeTypeFichierTiersBox(FSTraitementDonnees.TableauMouvement.Cells[4,FSTraitementDonnees.TableauMouvement.Row],ListeFichierTiers,'',FSTraitementDonnees.EditTiersFichierConserneTableauBohr,FSTraitementDonnees.TitreEditTiersFichierConserneTableauBohr);
          FSTraitementDonnees.LabelFichierConcerne.Caption:=ListeFichierTiers;
     end;

     OKInitialiseDebitCredit:=true;
     R:=1;
     while(R<=FSTraitementDonnees.TableauMouvement.RowCount-1)and(OKInitialiseDebitCredit=true)do
     begin
          if(FSTraitementDonnees.TableauMouvement.Cells[20,R]<>'')then
          begin
               OKInitialiseDebitCredit:=false;
               if(FSTraitementDonnees.EditDebitCreditPositif.Text='')then
               begin
                    FSTraitementDonnees.EditDebitCreditPositif.Text:=FSTraitementDonnees.TableauMouvement.Cells[19,R];
                    FSTraitementDonnees.EditRowFirstSelectDebitCredit.Text:=inttostr(R);
               end;
          end;
     R:=R+1;
     end;

     if(OKInitialiseDebitCredit=true)then
     begin
          FSTraitementDonnees.EditDebitCreditPositif.Text:='';
          FSTraitementDonnees.EditRowFirstSelectDebitCredit.Text:='';
     end;
     
     if(FSTraitementDonnees.TableauMouvement.Cells[18,FSTraitementDonnees.TableauMouvement.Row]='Marche')
     then FSTraitementDonnees.EditExtentionFichier.Text:='Marche'
     else FSTraitementDonnees.EditExtentionFichier.Text:='PlanComptable';

////////////////////////////////////////////////////////////////////////////////

if(FSTraitementDonnees.EditTypeProces.Text<>FSTraitementDonnees.LabelTypeProces.Caption)
and(FSTraitementDonnees.EditFichierConcerne.Text<>FSTraitementDonnees.LabelFichierConcerne.Caption)
then
begin
FSTraitementDonnees.EditTypeProces.Text:=FSTraitementDonnees.LabelTypeProces.Caption;
FSTraitementDonnees.EditFichierConcerne.Text:=FSTraitementDonnees.LabelFichierConcerne.Caption;

FSTraitementDonnees.TableauTitreDataTiers.ColCount:=7;
FSTraitementDonnees.TableauTitreDataTiers.RowCount:=2;
FSTraitementDonnees.TableauTitreDataTiers.Rows[0].Text:='';
FSTraitementDonnees.TableauTitreDataTiers.Rows[1].Text:='';
FSTraitementDonnees.TableauTitreDataTiers.Cells[0,0]:='Rubriques';
FSTraitementDonnees.TableauTitreDataTiers.Cells[0,1]:='Sélection';

FSTraitementDonnees.TableauTitreDataTiers.Cells[1,0]:='Identifiant 1';
FSTraitementDonnees.TableauTitreDataTiers.Cells[2,0]:='Identifiant 2';
FSTraitementDonnees.TableauTitreDataTiers.Cells[3,0]:='Identifiant 3';
FSTraitementDonnees.TableauTitreDataTiers.Cells[4,0]:='Identifiant 4';
FSTraitementDonnees.TableauTitreDataTiers.Cells[5,0]:='Identifiant 5';
FSTraitementDonnees.TableauTitreDataTiers.Cells[6,0]:='Identifiant 6';

TypeProcesInt:='Business';
FichierConcerneInt:='FTitreDataTiers';
Adresse:='';
if not(FunctionAdresseProces(TypeProcesInt,FichierConcerneInt,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     if(FichierConcerneInt<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConcerneInt+'} recherché !');
end;

ChTitreDataTiers:=Adresse;
assignfile(FTitreDataTiers,ChTitreDataTiers);
try
if FileExists(ChTitreDataTiers)then
Reset(FTitreDataTiers)
else Rewrite(FTitreDataTiers);
Seek(FTitreDataTiers,0);
OKTitreDataTiers:=false;
while not eof(FTitreDataTiers)and(OKTitreDataTiers=false)do
begin
     read(FTitreDataTiers,RTitreDataTiers);

     if(RTitreDataTiers.TypeProces=FSTraitementDonnees.EditTypeProces.Text)
     and(FunctionFichierInclu(RTitreDataTiers.FichierConcerne,FSTraitementDonnees.EditFichierConcerne.Text))
     then
     begin
          OKTitreDataTiers:=true;
          if(RTitreDataTiers.TitreData1.TitreData<>'')
          then FSTraitementDonnees.TableauTitreDataTiers.Cells[1,0]:=RTitreDataTiers.TitreData1.TitreData
          else FSTraitementDonnees.TableauTitreDataTiers.Cells[1,0]:='Identifiant 1';

          if(RTitreDataTiers.TitreData2.TitreData<>'')
          then FSTraitementDonnees.TableauTitreDataTiers.Cells[2,0]:=RTitreDataTiers.TitreData2.TitreData
          else FSTraitementDonnees.TableauTitreDataTiers.Cells[2,0]:='Identifiant 2';

          if(RTitreDataTiers.TitreData3.TitreData<>'')
          then FSTraitementDonnees.TableauTitreDataTiers.Cells[3,0]:=RTitreDataTiers.TitreData3.TitreData
          else FSTraitementDonnees.TableauTitreDataTiers.Cells[3,0]:='Identifiant 3';

          if(RTitreDataTiers.TitreData4.TitreData<>'')
          then FSTraitementDonnees.TableauTitreDataTiers.Cells[4,0]:=RTitreDataTiers.TitreData4.TitreData
          else FSTraitementDonnees.TableauTitreDataTiers.Cells[4,0]:='Identifiant 4';

          if(RTitreDataTiers.TitreData5.TitreData<>'')
          then FSTraitementDonnees.TableauTitreDataTiers.Cells[5,0]:=RTitreDataTiers.TitreData5.TitreData
          else FSTraitementDonnees.TableauTitreDataTiers.Cells[5,0]:='Identifiant 5';

          if(RTitreDataTiers.TitreData6.TitreData<>'')
          then FSTraitementDonnees.TableauTitreDataTiers.Cells[6,0]:=RTitreDataTiers.TitreData6.TitreData
          else FSTraitementDonnees.TableauTitreDataTiers.Cells[6,0]:='Identifiant 6';
     end;
end;
finally
CloseFile(FTitreDataTiers);
end;
AjusterColWidth(FSTraitementDonnees.TableauTitreDataTiers,'','');
end;
////////////////////////////////////////////////////////////////////////////////

if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=false)then
begin
     FSTraitementDonnees.Rapport.Text:='';

     if(FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked=true)then
     begin
          FSTraitementDonnees.AffichePatienter.Visible:=true;
          FSTraitementDonnees.TimerTempAttente.Enabled:=true;
     end; 

     if(FSTraitementDonnees.RBFixeColonne.Checked=true)then
     begin
          FSTraitementDonnees.TableauMouvement.FixedCols:=strtointeger(FSTraitementDonnees.EditFixeColonne.Text);
          FSTraitementDonnees.RBFixeColonne.Checked:=false;
     end;
end;

R:=1;
FSTraitementDonnees.RBInclureFinance.Checked:=false;
while(R<=FSTraitementDonnees.TableauMouvement.RowCount-1)and(FSTraitementDonnees.RBInclureFinance.Checked=false)do
begin
     if(FSTraitementDonnees.TableauMouvement.Cells[20,R]='OK')
     and(strtoboolean(FSTraitementDonnees.TableauMouvement.Cells[13,R])=true)then FSTraitementDonnees.RBInclureFinance.Checked:=true;
R:=R+1;
end;
   
end;

Procedure ActionTableauDeBohr;
var  SigneDebitCredit,R,C,l,T,F,h,S,RTotal,ColCountMax,REditFinance,REditTiers,Indice,NotTrieRow,RowCountTiers,RubriqueTrie,IndiceFinControleTrieRow,RIn,ROut,RowSelect,IBegin,IEnd,iPAP:integer; Solde,MontantTotalMouvement,MontantAvis,PourcentagePartCommune:real;
     OKMouvement,OKAvis,OKTypeAvis,OKTiers,OKFinance,OKPeriode,OKAnalyseListeMouvement,OKAnalyseSituation,OKAnalysePrelevement,AfficherPartieCommune:boolean;
     DebitCreditTypeMouvement,DebitCreditAvis,CompteImputation,TypeProcesRecherche,FichierconcerneRecherche,JourneauxAuxiliaireUtilise,NotRow,NotCol,DateInc,ListeOrdreListeMouvement,ListeNumPrelevement,ListeNumPrelevementUF,Index,DesignationGroupe,ListeFichierTiersGroupe,DataTexte,TypeProces,FichierConserne,TypeProcesInt,FichierConcerneInt,Adresse,TypeProcesControleReseaux,ListePositionMouvementJustifierParAvis,TypeProcess,TypeProcesTypeAvis,FichierConserneTypeAvis,AdresseTypeAvis,MoisAnterieur,AnneeAnterieur:string;
     TableauPointeurData:TableauPointeurDatas;
     RRegistreFormule0,RRegistreFormule1,RRegistreFormule2,RRegistreFormule3,RRegistreFormule4,RRegistreFormule5,RRegistreFormule6,RRegistreFormule7,RRegistreFormule8,RRegistreFormule9:RRegistreFormules;
     AccepteInfoVideNP,AccepteInfoVideNPUF,AccepteInfoVideMatricule,AccepteInfoVideCodeTiers,CumulerArticle:boolean;
     PositionTypeAvis,NumTypeAvis,PBeginDM,PEndDM:integer;
     A, B: cardinal;
     LeHandle:HWND;
     TMouvementPointeur:TMouvements;
     TRegistreListeNum:TRegistreListeNums;     
     i,Taille:integer;
     OKNumRegistre,CalculerAnterieur:boolean;
     AdresseMouvement,AdresseTypeMouvement,TypeAffichageFormuleNonVisible:string;
begin
     A:=GetTickCount;

     for R:=1to FSTraitementDonnees.TableauMouvement.RowCount-1 do
     begin
          FSTraitementDonnees.TableauMouvement.Cells[24,R]:='';
          FSTraitementDonnees.TableauMouvement.Cells[25,R]:='';
          FSTraitementDonnees.TableauMouvement.Cells[26,R]:='';
     end;

     AccelerationAffichageTableau(FSTraitementDonnees.TableauDeBohrTiers,true);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers,true);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauAnalysePeriodique,true);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauFinanceStructure,true);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,true);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,true);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauArborescenceArticle,true);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauTitreDataTiers,true);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauDetailFormuleListeMouvement,true);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauAnalysePeriodique,true);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauPeriode,true);

     FSTraitementDonnees.Rapport.Lines.Add('Début du rapport');

     AfficherPartieCommune:=FSTraitementDonnees.RBAfficherPartiesCommunes.Checked;

     ActivePointeurAutorisationPartageRegistreMultiple(FSTraitementDonnees.TableauMouvement.Cells[4,FSTraitementDonnees.TableauMouvement.Row],FSTraitementDonnees.TableauMouvement.Cells[5,FSTraitementDonnees.TableauMouvement.Row]);

     FSTraitementDonnees.TableauPositionMouvement.ColCount:=4;
     FSTraitementDonnees.TableauPositionMouvement.Cols[0].Text:='';
     FSTraitementDonnees.TableauPositionMouvement.Cols[1].Text:='';
     FSTraitementDonnees.TableauPositionMouvement.Cols[2].Text:='';
     FSTraitementDonnees.TableauPositionMouvement.Cols[3].Text:='';

     FSTraitementDonnees.TableauPositionMouvement.RowCount:=2;
     FSTraitementDonnees.TableauPositionMouvement.Rows[1].Text:='';
     S:=1;
     R:=0;
     while(S<=FSTraitementDonnees.TableauMouvement.RowCount-1)do
     begin
          if(FSTraitementDonnees.TableauMouvement.Cells[20,S]='OK')then
          begin
               R:=R+1;
               FSTraitementDonnees.TableauPositionMouvement.Cells[0,R]:=FSTraitementDonnees.TableauMouvement.Cells[1,S];
               FSTraitementDonnees.TableauPositionMouvement.Cells[1,R]:=FSTraitementDonnees.TableauMouvement.Cells[24,S];  //ListeOrdreListeMouvement
               FSTraitementDonnees.TableauPositionMouvement.Cells[2,R]:=FSTraitementDonnees.TableauMouvement.Cells[25,S];  //PBeginDM
               FSTraitementDonnees.TableauPositionMouvement.Cells[3,R]:=FSTraitementDonnees.TableauMouvement.Cells[26,S];  //PEndDM
          end;
     S:=S+1;
     end;

     if(R>0)then FSTraitementDonnees.TableauPositionMouvement.RowCount:=R+1
            else FSTraitementDonnees.TableauPositionMouvement.RowCount:=2;     
     

     DateInc:=datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date);
     C:=0;
     while(strtodate(DateInc)<=FSTraitementDonnees.EditDateFinTableauBohr.Date)do
     begin
          FSTraitementDonnees.TableauAnalysePeriodique.Cols[C+1].Text:=DateInc;
          C:=C+1;
          DateInc:=datetostr(strtodate(DateInc)+1);
     end;

     DataTexte:=FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row];

     FSTraitementDonnees.TableauAnalysePeriodique.ColCount:=C+1;
     FSTraitementDonnees.TableauAnalysePeriodique.Cols[0].Text:='Rubrique';
     FSTraitementDonnees.TableauAnalysePeriodique.RowCount:=3;
     FSTraitementDonnees.TableauAnalysePeriodique.Rows[1].Text:='';//DataTexte;
     FSTraitementDonnees.TableauAnalysePeriodique.Rows[2].Text:='Montant Avis';

     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.ColCount:=44;
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount:=2;
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Rows[1].Text:='';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[0].Text:='N°';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[1].Text:='Ordre';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[2].Text:='Num';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[3].Text:='P°TM';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[4].Text:='P°M';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[5].Text:='Date.Etablis.';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[6].Text:='Mode de payement';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[7].Text:='Code Type F';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[8].Text:='Type Proc';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[9].Text:='Fichier Tièrs Consern';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[10].Text:='Code Tiers';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[11].Text:='Tiers';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[12].Text:='M.Mouvement';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[13].Text:='Sélection';
     if(FSTraitementDonnees.RBDetailMouvement.Checked=true)
     then FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[14].Text:='Détail Mouvement'
     else FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[14].Text:='Date Exécution';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[15].Text:='C°Payés';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[16].Text:='Payés';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[17].Text:='C°Wilaya';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[18].Text:='Wilaya';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[19].Text:='C°Daira';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[20].Text:='Daira';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[21].Text:='C°Commune';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[22].Text:='Commune';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[23].Text:='C°Zone';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[24].Text:='Zone';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[25].Text:='Adresse';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[26].Text:='Exécution !';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[27].Text:='NumProjet ';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[28].Text:='Projet';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[29].Text:='Mode Paiement';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[30].Text:='Num Domiciliation';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[31].Text:='Domiciliation';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[32].Text:='Num Pièce';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[33].Text:='Num Avis';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[34].Text:='OdrMAp';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[35].Text:='Info Avis';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[36].Text:='M.Avis';

     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[37].Text:='Data1';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[38].Text:='Data2';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[39].Text:='Data3';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[40].Text:='Data4';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[41].Text:='Data5';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[42].Text:='Data6';
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cols[43].Text:='Référence Mouvement';

     FSTraitementDonnees.TableauDeBohrTiers.ColCount:=19;
     FSTraitementDonnees.TableauDeBohrTiers.Cols[0].Text:='N°';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[1].Text:='Code';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[2].Text:='Tiers';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[3].Text:='D.Antérieur';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[4].Text:='C.Antérieur';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[5].Text:='S.D.Antérieur';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[6].Text:='S.C.Antérieur';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[7].Text:='';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[8].Text:='D.Périodique';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[9].Text:='C.Périodique';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[10].Text:='S.D.Périodique';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[11].Text:='S.C.Périodique';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[12].Text:='';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[13].Text:='D.Global';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[14].Text:='C.Global';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[15].Text:='S.D.Global';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[16].Text:='S.C.Global';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[17].Text:='TypeProces';
     FSTraitementDonnees.TableauDeBohrTiers.Cols[18].Text:='FichierConcerne';

     FSTraitementDonnees.TableauDeBohrTiers.RowCount:=2;
     FSTraitementDonnees.TableauDeBohrTiers.Rows[1].Text:='';

     FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.ColCount:=17;
     FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.RowCount:=2;
     FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Rows[0].Text:=FSTraitementDonnees.TableauDeBohrTiers.Rows[0].Text;
     FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Rows[1].Text:='';

     FSTraitementDonnees.TableauFinanceStructure.ColCount:=11;
     FSTraitementDonnees.TableauFinanceStructure.Cols[0].Text:='N°';
     FSTraitementDonnees.TableauFinanceStructure.Cols[1].Text:='Type Reglement';
     FSTraitementDonnees.TableauFinanceStructure.Cols[2].Text:='';
     FSTraitementDonnees.TableauFinanceStructure.Cols[3].Text:='   D.Antérieur   ';
     FSTraitementDonnees.TableauFinanceStructure.Cols[4].Text:='   C.Antérieur   ';
     FSTraitementDonnees.TableauFinanceStructure.Cols[5].Text:='';
     FSTraitementDonnees.TableauFinanceStructure.Cols[6].Text:='   D.Périodique   ';
     FSTraitementDonnees.TableauFinanceStructure.Cols[7].Text:='   C.Périodique   ';
     FSTraitementDonnees.TableauFinanceStructure.Cols[8].Text:='';
     FSTraitementDonnees.TableauFinanceStructure.Cols[9].Text:='     D.Global     ';
     FSTraitementDonnees.TableauFinanceStructure.Cols[10].Text:='     C.Global     ';

     FSTraitementDonnees.Rapport.Lines.Add('Rapport Liste mouvement:');

ListePositionMouvementJustifierParAvis:=FonctionListePositionMouvementJustifierParAvis;
ExisteNuminTexteSpecial(ListePositionMouvementJustifierParAvis,TRegistreListeNum,Taille);

R:=0;
T:=0;
CalculerAnterieur:=true;

if(FSTraitementDonnees.RBAfficherArchiveTableauxBohrsTiers.Checked=true)then
begin
     MoisAnterieur:=Completezerogauche(MidelLaters(FSTraitementDonnees.EditMois.Text,2,3),'2');
     AnneeAnterieur:=FSTraitementDonnees.EditExerciceTableauBohr.Text;
     SoldePeriodeTableauBohrsTiers(FSTraitementDonnees.TableauDeBohrTiers,MoisAnterieur+AnneeAnterieur,R);
     FSTraitementDonnees.AffichePatienter.Visible:=false;
     Exit;
end
else
if(FSTraitementDonnees.RBUtiliserArchiveTableauBohrsTiers.Checked=true)then
begin
     if(strtointeger(MidelLaters(FSTraitementDonnees.EditMois.Text,2,3))>1)then
     begin
          MoisAnterieur:=Completezerogauche(inttostr(strtointeger(MidelLaters(FSTraitementDonnees.EditMois.Text,2,3))-1),'2');
          AnneeAnterieur:=FSTraitementDonnees.EditExerciceTableauBohr.Text;
     end
     else
     begin
          MoisAnterieur:='12';
          AnneeAnterieur:=inttostr(strtointeger(FSTraitementDonnees.EditExerciceTableauBohr.Text)-1);
     end;

     SoldeAnterieurTableauBohrsTiers(FSTraitementDonnees.TableauDeBohrTiers,MoisAnterieur+AnneeAnterieur,R,T,TableauPointeurData);
     CalculerAnterieur:=false;
end;

FSTraitementDonnees.EditOrdreListeMouvementAppartenant.Text:='';
MontantTotalMouvement:=0;
S:=1;
while(S<=FSTraitementDonnees.TableauMouvement.RowCount-1)do
begin
     ListeOrdreListeMouvement:='';
     PBeginDM:=999999999;
     PEndDM:=0;
     
     if(FSTraitementDonnees.TableauMouvement.Cells[20,S]='OK')
     and(FSTraitementDonnees.TableauMouvement.Cells[1,S]<>'Pr')
     and(FSTraitementDonnees.TableauMouvement.Cells[1,S]<>'ST')
     then
     begin  //?????????????????????????????????????????????????????????????????????
     DataTexte:=FSTraitementDonnees.TableauMouvement.Cells[3,S];

     if(FSTraitementDonnees.TableauAnalysePeriodique.Rows[1].Text='')
     then FSTraitementDonnees.TableauAnalysePeriodique.Rows[1].Text:=DataTexte
     else FSTraitementDonnees.TableauAnalysePeriodique.Rows[1].Text:=FSTraitementDonnees.TableauAnalysePeriodique.Rows[1].Text+'/'+DataTexte;

     TMouvementPointeur:=RemplireTMouvement(FSTraitementDonnees.TableauMouvement.Cells[0,S]);

     TypeProcesInt:='Business';
     FichierConcerneInt:='FListeMouvement';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProcesInt,FichierConcerneInt,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          if(FichierConcerneInt<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConcerneInt+'} recherché !');
     end;

     iAnnee:=Strtointeger(FSTraitementDonnees.EditExerciceTableauBohr.Text);
     ChListeMouvement:=IndiqueAdresseListeMouvement(FSTraitementDonnees.TableauMouvement.Cells[0,S],TypeProcesReseauxListeMouvement);
     assignfile(FListeMouvement,ChListeMouvement);
     if FileExists(ChListeMouvement)then
     begin
          try
          Reset(FListeMouvement);

          IndiquerPositionListeMouvementPeriodique(FSTraitementDonnees.TableauMouvement.Cells[0,S],FSTraitementDonnees.TableauMouvement.Cells[1,S],TypeProcess,datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date),datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date),IBegin,IEnd);

          if(FSTraitementDonnees.RBUtiliserArchiveTableauBohrsTiers.Checked=false)then IBegin:=0;

          FSTraitementDonnees.Rapport.Lines.Add(FSTraitementDonnees.TableauMouvement.Cells[3,S]+': ' +'IBegin('+inttostr(IBegin)+'), IEnd('+inttostr(IEnd)+')');

          iPAP:=IBegin;
          if(iPAP<=999999999)then
          begin
                Seek(FListeMouvement,iPAP);
                while not eof(FListeMouvement)and(iPAP<=IEnd)do
                begin
                     read(FListeMouvement,RListeMouvement); Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTBohr.Checked)then Exit;
                     iPAP:=iPAP+1;
                     PourcentagePartCommune:=1;

                     if(inttostr(RListeMouvement.PositionMouvement)=FSTraitementDonnees.TableauMouvement.Cells[1,S])
                     then OKMouvement:=true
                     else OKMouvement:=false;

                     if(OKMouvement=true)then
                     begin
                          if(FSTraitementDonnees.EditNumProjetTableauBohr.Text<>'')then
                          begin
                               if(RListeMouvement.NumProjetFinance='')then
                               begin
                                    if(AfficherPartieCommune=true)then
                                    begin
                                         PourcentagePartCommune:=FunctPourcentagePartieCommune(FSTraitementDonnees.EditNumProjetTableauBohr.Text);
                                         if(PourcentagePartCommune>0)then OKMouvement:=true else OKMouvement:=false;
                                    end
                                    else OKMouvement:=false;
                               end
                               else
                               begin
                                    if(Firstlaters(RListeMouvement.NumProjetFinance,longueur(FSTraitementDonnees.EditNumProjetTableauBohr.Text))=FSTraitementDonnees.EditNumProjetTableauBohr.Text)
                                    then OKMouvement:=true
                                    else OKMouvement:=false;
                               end;
                          end;
                     end;

                     if(OKMouvement=true)then
                     begin
                          if(FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text<>'')then
                          begin
                               OKMouvement:=TrouverGroupeTiers(FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text,RListeMouvement.CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);
                               if(ListeFichierTiersGroupe='')then ListeFichierTiersGroupe:=FSTraitementDonnees.TableauMouvement.Cells[5,S];
                               if(OKMouvement=true)
                               and(RListeMouvement.TypeProces=FSTraitementDonnees.TableauMouvement.Cells[4,S])
                               and(FunctionFichierInclu(RListeMouvement.FichierTiersConserne,ListeFichierTiersGroupe)=true)
                               then OKMouvement:=true
                               else OKMouvement:=false;
                          end;
                     end;

                     if(OKMouvement=true)then
                     begin
                          if(FSTraitementDonnees.EditTiersSupplementaire.Text<>'')then
                          begin
                               if(RListeMouvement.DataTiersSupplementaire=FSTraitementDonnees.EditTiersSupplementaire.Text)
                               then OKMouvement:=true
                               else OKMouvement:=false;
                          end;
                     end;

                     if(OKMouvement=true)then
                     begin
                          if(FSTraitementDonnees.EditInfoMoyenTransport.Text<>'')then
                          begin
                               RMoyenTransport:=ChercherMoyenTransport('','Mouvement',inttostr(RListeMouvement.PositionMouvement),'',inttostr(RListeMouvement.OrdreListeMouvement));

                               if(FSTraitementDonnees.EditTitreInfoMoyenTransportTBohrs.Text='Moyen transport')then
                               begin
                                    if(RMoyenTransport.MoyenTransport=FSTraitementDonnees.EditInfoMoyenTransport.Text)
                                    then OKMouvement:=true
                                    else OKMouvement:=false;
                               end
                               else
                               if(FSTraitementDonnees.EditTitreInfoMoyenTransportTBohrs.Text='Moyen transport')then
                               begin
                                    if(RMoyenTransport.MoyenTransport=FSTraitementDonnees.EditInfoMoyenTransport.Text)
                                    then OKMouvement:=true
                                    else OKMouvement:=false;
                               end
                               else
                               if(FSTraitementDonnees.EditTitreInfoMoyenTransportTBohrs.Text='Matricule')then
                               begin
                                    if(RMoyenTransport.MatriculeTransport=FSTraitementDonnees.EditInfoMoyenTransport.Text)
                                    then OKMouvement:=true
                                    else OKMouvement:=false;
                               end
                               else
                               if(FSTraitementDonnees.EditTitreInfoMoyenTransportTBohrs.Text='Chauffeur')then
                               begin
                                    if(RMoyenTransport.NomChauffeur+' '+RMoyenTransport.PrenomChauffeur=FSTraitementDonnees.EditInfoMoyenTransport.Text)
                                    then OKMouvement:=true
                                    else OKMouvement:=false;
                               end
                               else
                               if(FSTraitementDonnees.EditTitreInfoMoyenTransportTBohrs.Text='Pièce Identité')then
                               begin
                                    if(RMoyenTransport.PieceIdentite=FSTraitementDonnees.EditInfoMoyenTransport.Text)
                                    then OKMouvement:=true
                                    else OKMouvement:=false;
                               end;
                          end;
                     end;

                     if(OKMouvement=true)then
                     begin
                          DebitCreditTypeMouvement:=TMouvementPointeur[RListeMouvement.PositionMouvement].DebitCredit;

                          if(DebitCreditTypeMouvement='Débit')then
                          begin
                               C:=0;
                          end
                          else
                          begin
                               C:=1;
                          end;

                          begin
                               if(DebitCreditTypeMouvement=FSTraitementDonnees.EditDebitCreditPositif.Text)then
                               begin
                                    SigneDebitCredit:=1;
                               end
                               else
                               begin
                                    SigneDebitCredit:=-1;
                               end;
                          end;

                          OKTiers:=false;
                          l:=1;
                          while(l<=T)and(OKTiers=false)do
                          begin
                               if(TrouverGroupeTiers(RListeMouvement.CodeTiers,TableauPointeurData[l-1].Data1,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe))
                               and(RListeMouvement.TypeProces=TableauPointeurData[l-1].Data2)
                               and((FunctionFichierInclu(RListeMouvement.FichierTiersConserne,TableauPointeurData[l-1].Data3))or(FunctionFichierInclu(RListeMouvement.FichierTiersConserne,ListeFichierTiersGroupe)))
                               then
                               begin
                                    OKTiers:=true;
                                    REditTiers:=TableauPointeurData[l-1].RowPointeur;
                               end
                               else l:=l+1;
                          end;

                          if(OKTiers=false)then
                          begin
                               T:=T+1;
                               REditTiers:=T;
                               FSTraitementDonnees.TableauDeBohrTiers.Rows[REditTiers].Text:=inttostr(REditTiers);
                               FSTraitementDonnees.TableauDeBohrTiers.Cells[1,REditTiers]:=RListeMouvement.CodeTiers;
                               FSTraitementDonnees.TableauDeBohrTiers.Cells[2,REditTiers]:='';//ImporteDataProcesTiers(RListeMouvement.TypeProces,RListeMouvement.FichierTiersConserne,RListeMouvement.CodeTiers,PositionTiersRecherche);
                               if(FSTraitementDonnees.RBAfficherInfoTiersSupplementaire.Checked=true)and(RListeMouvement.DataTiersSupplementaire<>'')then FSTraitementDonnees.TableauDeBohrTiers.Cells[2,REditTiers]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[2,REditTiers]+' {'+RListeMouvement.DataTiersSupplementaire+'}';
                               FSTraitementDonnees.TableauDeBohrTiers.Cells[17,REditTiers]:=RListeMouvement.TypeProces;
                               FSTraitementDonnees.TableauDeBohrTiers.Cells[18,REditTiers]:=RListeMouvement.FichierTiersConserne;

                               setlength(TableauPointeurData,T);
                               TableauPointeurData[T-1].Data1:=RListeMouvement.CodeTiers;
                               TableauPointeurData[T-1].Data2:=RListeMouvement.TypeProces;
                               TableauPointeurData[T-1].Data3:=RListeMouvement.FichierTiersConserne;
                               TableauPointeurData[T-1].RowPointeur:=T;
                          end;

                          if(RListeMouvement.OKExecution=true)then
                          begin
                               if(inttostr(RListeMouvement.PositionTypeMouvement)=FSTraitementDonnees.TableauMouvement.Cells[0,S])
                               and(inttostr(RListeMouvement.PositionMouvement)=FSTraitementDonnees.TableauMouvement.Cells[1,S])
                               and(RListeMouvement.TypeProces=FSTraitementDonnees.TableauMouvement.Cells[4,S])
                               and(FunctionFichierInclu(RListeMouvement.FichierTiersConserne,FSTraitementDonnees.TableauMouvement.Cells[5,S])=true)
                               then OKMouvement:=true
                               else OKMouvement:=false;
                          end;
                     end;

                     if(OKMouvement=true)then
                     begin
                          if datecorrecte(RListeMouvement.DateMouvement)then
                          begin
                               if(strtodate(RListeMouvement.DateMouvement)>=strtodate(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)))
                               and(strtodate(RListeMouvement.DateMouvement)<=strtodate(datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date)))
                               then
                               begin
                                    OKMouvement:=true;
                               end
                               else
                               begin
                                    OKMouvement:=false;
                                    if(CalculerAnterieur=true)
                                    and(strtodate(RListeMouvement.DateMouvement)<strtodate(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)))then
                                    begin

                                         FSTraitementDonnees.TableauDeBohrTiers.Cells[C+3,REditTiers]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[C+3,REditTiers])+RListeMouvement.MontantMouvement*PourcentagePartCommune),'2','C','');

                                         if(FSTraitementDonnees.RBInclureListeMouvementNonJustifierParAvis.Checked=true)and(strtodate(RListeMouvement.DateMouvement)<strtodate('01/01/'+ExerciceAnnee))then
                                         begin
                                              OKNumRegistre:=false;
                                              i:=0;
                                              while(i<Taille)and(OKNumRegistre=false)do
                                              begin
                                                   if(TRegistreListeNum[i]=RListeMouvement.PositionMouvement)then OKNumRegistre:=true;
                                              i:=i+1;
                                              end;

                                              //if(ExisteNumInTexte(inttostr(RListeMouvement.PositionMouvement),ListePositionMouvementJustifierParAvis))
                                              if(OKNumRegistre=true)then
                                              begin
                                                   if(RListeMouvement.ListeNumAvis='')then OKMouvement:=true;
                                              end;
                                         end;

                                         FSTraitementDonnees.Rapport.Lines.Add('Mouvement antérieure: '+TMouvementPointeur[RListeMouvement.PositionMouvement].DesignationMouvement+' '+inttostr(RListeMouvement.NumListeMouvement)+' du '+RListeMouvement.DateMouvement+'. Montant: '+vergule(floattostr(RListeMouvement.MontantMouvement),'2','C',''));
                                    end;
                               end;
                          end
                          else OKMouvement:=false;
                     end;

                     if(OKMouvement=true)then
                     begin
                          FSTraitementDonnees.Rapport.Lines.Add('Mouvement périodique: '+TMouvementPointeur[RListeMouvement.PositionMouvement].DesignationMouvement+' '+inttostr(RListeMouvement.NumListeMouvement)+' du '+RListeMouvement.DateMouvement+'. Montant: '+vergule(floattostr(RListeMouvement.MontantMouvement),'2','C',''));

                          if(strtodate(RListeMouvement.DateMouvement)>=strtodate(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)))then
                          begin
                               FSTraitementDonnees.TableauDeBohrTiers.Cells[C+8,REditTiers]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[C+8,REditTiers])+RListeMouvement.MontantMouvement),'2','C','');
                          end;

                           R:=R+1;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Rows[R].Text:=inttostr(R);
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R]:=inttostr(RListeMouvement.OrdreListeMouvement);
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[2,R]:=inttostr(RListeMouvement.NumListeMouvement);
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[3,R]:=inttostr(RListeMouvement.PositionTypeMouvement);
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[4,R]:=inttostr(RListeMouvement.PositionMouvement);
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[5,R]:=RListeMouvement.DateMouvement;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[6,R]:=RListeMouvement.ModePaiement+' '+RListeMouvement.Domiciliation;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[7,R]:=RListeMouvement.CodeTypeFormule;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[8,R]:=RListeMouvement.TypeProces;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[9,R]:=RListeMouvement.FichierTiersConserne;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[10,R]:=RListeMouvement.CodeTiers;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[11,R]:='';//ImporteDataProcesTiers(RListeMouvement.TypeProces,RListeMouvement.FichierTiersConserne,RListeMouvement.CodeTiers,PositionTiersRecherche);
                           if(FSTraitementDonnees.RBAfficherInfoTiersSupplementaire.Checked=true)and(RListeMouvement.DataTiersSupplementaire<>'')then FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[11,R]:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[11,R]+' {'+RListeMouvement.DataTiersSupplementaire+'}';
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[12,R]:=Vergule(floattostr(RListeMouvement.MontantMouvement*SigneDebitCredit*PourcentagePartCommune),'2','C','');
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[13,R]:='OK';
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[14,R]:=TMouvementPointeur[RListeMouvement.PositionMouvement].DesignationMouvement+' N° '+inttostr(RListeMouvement.NumListeMouvement);
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[15,R]:=RListeMouvement.CodePaysExecutionMouvement;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[16,R]:=ChercherLocalisationGeographique(RListeMouvement.CodePaysExecutionMouvement,'FPays').IntitulleLocalisationGeographique;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[17,R]:=RListeMouvement.CodeWilayaExecutionMouvement;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[18,R]:=ChercherLocalisationGeographique(RListeMouvement.CodeWilayaExecutionMouvement,'FWilaya').IntitulleLocalisationGeographique;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[19,R]:=RListeMouvement.CodeDairaExecutionMouvement;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[20,R]:=ChercherLocalisationGeographique(RListeMouvement.CodeDairaExecutionMouvement,'FDaira').IntitulleLocalisationGeographique;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[21,R]:=RListeMouvement.CodeCommuneExecutionMouvement;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[22,R]:=ChercherLocalisationGeographique(RListeMouvement.CodeCommuneExecutionMouvement,'FCommune').IntitulleLocalisationGeographique;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[23,R]:=RListeMouvement.CodeZoneExecutionMouvement;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[24,R]:=ChercherLocalisationGeographique(RListeMouvement.CodeZoneExecutionMouvement,'FZone').IntitulleLocalisationGeographique;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[25,R]:=RListeMouvement.AdresseExecutionMouvement;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[26,R]:=booleantostr(RListeMouvement.OKExecution);
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[27,R]:=RListeMouvement.NumProjetFinance;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[28,R]:=ChercherProjetFinance(RListeMouvement.NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[29,R]:=RListeMouvement.ModePaiement;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[30,R]:=RListeMouvement.NumDomiciliation;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[31,R]:=RListeMouvement.Domiciliation;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[32,R]:=RListeMouvement.NumPiece;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[33,R]:=RListeMouvement.ListeNumAvis;
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[34,R]:='LM';
                           //MontantAvis:=CalculeMontantListeAvis(RListeMouvement.ListeNumAvis,'');
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[35,R]:='';//Vergule(floattostr(MontantAvis),'2','C','');
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[36,R]:='';

                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[37,R]:='';
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[38,R]:='';
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[39,R]:='';
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[40,R]:='';
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[41,R]:='';
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[42,R]:='';
                           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[43,R]:=RListeMouvement.ReferenceSourceListeMouvement;

                           MontantTotalMouvement:=MontantTotalMouvement+(RListeMouvement.MontantMouvement*SigneDebitCredit*PourcentagePartCommune);

                           h:=1;
                           OKPeriode:=false;
                           while(h<=FSTraitementDonnees.TableauAnalysePeriodique.ColCount-1)and(OKPeriode=false)do
                           begin
                                if(RListeMouvement.DateMouvement=FSTraitementDonnees.TableauAnalysePeriodique.Cells[h,0])then
                                begin
                                     OKPeriode:=true;
                                     FSTraitementDonnees.TableauAnalysePeriodique.Cells[h,1]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalysePeriodique.Cells[h,1])+
                                                                                              RListeMouvement.MontantMouvement),'2','C','');
                                end;
                           h:=h+1;
                           end;

                           if(PBeginDM>RListeMouvement.PositionDetailMouvementBegin)then PBeginDM:=RListeMouvement.PositionDetailMouvementBegin;
                           if(PEndDM<RListeMouvement.PositionDetailMouvementEnd)then PEndDM:=RListeMouvement.PositionDetailMouvementEnd;

                           if(ListeOrdreListeMouvement='')
                           then ListeOrdreListeMouvement:=inttostr(RListeMouvement.OrdreListeMouvement)
                           else ListeOrdreListeMouvement:=ListeOrdreListeMouvement+';'+inttostr(RListeMouvement.OrdreListeMouvement);
                     end;
                end;
          end;
          finally
          CloseFile(FListeMouvement);
          end;
     end;
     end; //???????????????????????????????????????????????????????????????????????

     if(PBeginDM=999999999)and(PEndDM=0)then begin PBeginDM:=0; PEndDM:=999999999; end;

     FSTraitementDonnees.TableauMouvement.Cells[24,S]:=ListeOrdreListeMouvement;
     FSTraitementDonnees.TableauMouvement.Cells[25,S]:=inttostr(PBeginDM);
     FSTraitementDonnees.TableauMouvement.Cells[26,S]:=inttostr(PEndDM);
     
S:=S+1;
LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
end;

     FSTraitementDonnees.Rapport.Lines.Add('');
     FSTraitementDonnees.Rapport.Lines.Add('Fin Rapport Liste mouvement:');
     FSTraitementDonnees.Rapport.Lines.Add('');

S:=1;
OKAnalysePrelevement:=false;
while(S<=FSTraitementDonnees.TableauMouvement.RowCount-1)and(OKAnalysePrelevement=false)do
begin
     if(FSTraitementDonnees.TableauMouvement.Cells[20,S]='OK')
     and(FSTraitementDonnees.TableauMouvement.Cells[1,S]='Pr')
     and(strtoboolean(FSTraitementDonnees.TableauMouvement.Cells[12,S])=true)
     and(strtoboolean(FSTraitementDonnees.TableauMouvement.Cells[13,S])=true)
     then
     begin
          OKAnalysePrelevement:=true;
          RowSelect:=S;
     end;
S:=S+1;
end;

if(FSTraitementDonnees.EditNumProjetTableauBohr.Text<>'')and(OKAnalysePrelevement=true)then
begin
     OKAnalysePrelevement:=ExisteNumProjetInAffectationCompteur(FSTraitementDonnees.EditNumProjetTableauBohr.Text);
end;

if(OKAnalysePrelevement=true)then
begin
     ListeOrdreListeMouvement:='';
     PBeginDM:=0;
     PEndDM:=999999999;
              
     TypeProcesInt:='Business';
     FichierConcerneInt:='FArchivePrelevementUniteFonds';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProcesInt,FichierConcerneInt,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          if(FichierConcerneInt<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConcerneInt+'} recherché !');
     end;

     ChPrelevementUniteFonds:=Adresse;
     assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
     if FileExists(ChPrelevementUniteFonds)then
     begin
          try
          if(FSTraitementDonnees.RBAppliquerIndexationArchivePrelevement.Checked=true)then
          begin
               IndiquerPositionPeriodiqueArchivePrelevement(FichierConcerneInt,'',datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date),datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date),IBegin,IEnd);
          end
          else
          begin
               IBegin:=0;
               IEnd:=999999999;
          end;

          if(FSTraitementDonnees.RBUtiliserArchiveTableauBohrsTiers.Checked=false)then IBegin:=0;

          FSTraitementDonnees.Rapport.Lines.Add('');
          FSTraitementDonnees.Rapport.Lines.Add('Rapport Prélèvement: IBegin: '+inttostr(IBegin)+', IEnd: '+inttostr(IEnd));

          Reset(FPrelevementUniteFonds);
          iPAP:=IBegin;
          Seek(FPrelevementUniteFonds,iPAP);
          while not eof(FPrelevementUniteFonds)and(iPAP<=IEnd)do
          begin
               read(FPrelevementUniteFonds,RPrelevementUniteFonds); Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTBohr.Checked)then Exit;
               iPAP:=iPAP+1;
               PourcentagePartCommune:=1;

               if(RPrelevementUniteFonds.ValeurPrelevement<>0)
               then OKMouvement:=true
               else OKMouvement:=false;

               if(OKMouvement=true)then
               begin
                    if(FSTraitementDonnees.EditNumProjetTableauBohr.Text<>'')then
                    begin
                         begin
                              if(Firstlaters(NumProjetFinancePrelevement(inttostr(RPrelevementUniteFonds.NumPrelevement),RPrelevementUniteFonds.Matricule),longueur(FSTraitementDonnees.EditNumProjetTableauBohr.Text))=FSTraitementDonnees.EditNumProjetTableauBohr.Text)
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end;
                    end;
               end;

               if(OKMouvement=true)then
               begin
                    if(RPrelevementUniteFonds.TypeProces=FSTraitementDonnees.TableauMouvement.Cells[4,RowSelect])
                    and(FunctionFichierInclu(RPrelevementUniteFonds.FichierConcerne,FSTraitementDonnees.TableauMouvement.Cells[5,RowSelect])=true)
                    then OKMouvement:=true
                    else OKMouvement:=false;
               end;

               if(OKMouvement=true)then
               begin
                    if(FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text<>'')then
                    begin
                         OKMouvement:=TrouverGroupeTiers(FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text,RPrelevementUniteFonds.CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);
                    end;
               end;

               if(OKMouvement=true)then
               begin
                    if(FSTraitementDonnees.EditInfoMoyenTransport.Text<>'')then
                    begin
                         RMoyenTransport:=ChercherMoyenTransport('','Prélèvement',inttostr(RPrelevementUniteFonds.NumPrelevement),RPrelevementUniteFonds.Matricule,inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds));

                         if(FSTraitementDonnees.EditTitreInfoMoyenTransportTBohrs.Text='Moyen transport')then
                         begin
                              if(RMoyenTransport.MoyenTransport=FSTraitementDonnees.EditInfoMoyenTransport.Text)
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end
                         else
                         if(FSTraitementDonnees.EditTitreInfoMoyenTransportTBohrs.Text='Moyen transport')then
                         begin
                              if(RMoyenTransport.MoyenTransport=FSTraitementDonnees.EditInfoMoyenTransport.Text)
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end
                         else
                         if(FSTraitementDonnees.EditTitreInfoMoyenTransportTBohrs.Text='Matricule')then
                         begin
                              if(RMoyenTransport.MatriculeTransport=FSTraitementDonnees.EditInfoMoyenTransport.Text)
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end
                         else
                         if(FSTraitementDonnees.EditTitreInfoMoyenTransportTBohrs.Text='Chauffeur')then
                         begin
                              if(RMoyenTransport.NomChauffeur+' '+RMoyenTransport.PrenomChauffeur=FSTraitementDonnees.EditInfoMoyenTransport.Text)
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end
                         else
                         if(FSTraitementDonnees.EditTitreInfoMoyenTransportTBohrs.Text='Pièce Identité')then
                         begin
                              if(RMoyenTransport.PieceIdentite=FSTraitementDonnees.EditInfoMoyenTransport.Text)
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end;
                    end;
               end;

               if(OKMouvement=true)then
               begin
                    DebitCreditTypeMouvement:='Crédit';

                    if(DebitCreditTypeMouvement='Débit')then
                    begin
                         C:=0;
                    end
                    else
                    begin
                         C:=1;
                    end;

                    if(DebitCreditTypeMouvement=FSTraitementDonnees.EditDebitCreditPositif.Text)then
                    begin
                         SigneDebitCredit:=1;
                    end
                    else
                    begin
                         SigneDebitCredit:=-1;
                    end;

                     OKTiers:=false;
                     l:=1;
                     while(l<=T)and(OKTiers=false)do
                     begin
                          if(TrouverGroupeTiers(RPrelevementUniteFonds.CodeTiers,TableauPointeurData[l-1].Data1,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe))
                          and(RPrelevementUniteFonds.TypeProces=TableauPointeurData[l-1].Data2)
                          and((FunctionFichierInclu(RPrelevementUniteFonds.FichierConcerne,TableauPointeurData[l-1].Data3))or(FunctionFichierInclu(RPrelevementUniteFonds.FichierConcerne,ListeFichierTiersGroupe)))
                          then
                          begin
                               OKTiers:=true;
                               REditTiers:=TableauPointeurData[l-1].RowPointeur;
                          end
                          else l:=l+1;
                     end;

                     if(OKTiers=false)then
                     begin
                          T:=T+1;
                          REditTiers:=T;
                          FSTraitementDonnees.TableauDeBohrTiers.Rows[REditTiers].Text:=inttostr(REditTiers);
                          FSTraitementDonnees.TableauDeBohrTiers.Cells[1,REditTiers]:=RPrelevementUniteFonds.CodeTiers;
                          FSTraitementDonnees.TableauDeBohrTiers.Cells[2,REditTiers]:='';//ImporteDataProcesTiers(RPrelevementUniteFonds.TypeProces,RPrelevementUniteFonds.FichierConcerne,RPrelevementUniteFonds.CodeTiers,PositionTiersRecherche);

                          FSTraitementDonnees.TableauDeBohrTiers.Cells[17,REditTiers]:=RPrelevementUniteFonds.TypeProces;
                          FSTraitementDonnees.TableauDeBohrTiers.Cells[18,REditTiers]:=RPrelevementUniteFonds.FichierConcerne;

                          setlength(TableauPointeurData,T);
                          TableauPointeurData[T-1].Data1:=RPrelevementUniteFonds.CodeTiers;
                          TableauPointeurData[T-1].Data2:=RPrelevementUniteFonds.TypeProces;
                          TableauPointeurData[T-1].Data3:=RPrelevementUniteFonds.FichierConcerne;
                          TableauPointeurData[T-1].RowPointeur:=T;
                     end;

                     if(RPrelevementUniteFonds.ValeurPrecise=false)and(RPrelevementUniteFonds.ValeurPrelevement>0)then
                     begin
                          if(RPrelevementUniteFonds.TypeProces=FSTraitementDonnees.TableauMouvement.Cells[4,RowSelect])
                          and(FunctionFichierInclu(RPrelevementUniteFonds.FichierConcerne,FSTraitementDonnees.TableauMouvement.Cells[5,RowSelect])=true)
                          then OKMouvement:=true
                          else OKMouvement:=false;
                     end
                     else OKMouvement:=false;
               end;

               if(OKMouvement=true)then
               begin
                    if(strtodate(RPrelevementUniteFonds.DatePrelevement)>=strtodate(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)))
                    and(strtodate(RPrelevementUniteFonds.DatePrelevement)<=strtodate(datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date)))
                    then
                    begin
                         OKMouvement:=true;
                    end
                    else
                    begin
                         OKMouvement:=false;
                         if(CalculerAnterieur=true)
                         and(strtodate(RPrelevementUniteFonds.DatePrelevement)<strtodate(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)))then
                         begin
                              FSTraitementDonnees.TableauDeBohrTiers.Cells[C+3,REditTiers]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[C+3,REditTiers])+RPrelevementUniteFonds.ValeurPrelevement*SigneDebitCredit*PourcentagePartCommune),'2','C','');

                              FSTraitementDonnees.Rapport.Lines.Add('Prélèvement antérieur: '+inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds)+'/'+inttostr(RPrelevementUniteFonds.NumPrelevement)+' du '+RPrelevementUniteFonds.DatePrelevement+'. Montant '+vergule(floattostr(RPrelevementUniteFonds.ValeurPrelevement),'2','C',''));
                         end;
                    end;
                end;

               if(OKMouvement=true)then
               begin
                    FSTraitementDonnees.Rapport.Lines.Add('Prélèvement périodique: '+inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds)+'/'+inttostr(RPrelevementUniteFonds.NumPrelevement)+' du '+RPrelevementUniteFonds.DatePrelevement+'. Montant '+vergule(floattostr(RPrelevementUniteFonds.ValeurPrelevement),'2','C',''));

                    FSTraitementDonnees.TableauDeBohrTiers.Cells[C+8,REditTiers]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[C+8,REditTiers])+RPrelevementUniteFonds.ValeurPrelevement*SigneDebitCredit*PourcentagePartCommune),'2','C','');

               R:=R+1;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Rows[R].Text:=inttostr(R);
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R]:=inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds);
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[2,R]:=inttostr(RPrelevementUniteFonds.NumPrelevement);
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[3,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[4,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[5,R]:=RPrelevementUniteFonds.DatePrelevement;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[6,R]:=RPrelevementUniteFonds.ModePaiement+' '+RPrelevementUniteFonds.Domiciliation;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[7,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[8,R]:=RPrelevementUniteFonds.TypeProces;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[9,R]:=RPrelevementUniteFonds.FichierConcerne;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[10,R]:=RPrelevementUniteFonds.CodeTiers;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[11,R]:='';//ImporteDataProcesTiers(RPrelevementUniteFonds.TypeProces,RPrelevementUniteFonds.FichierConcerne,RPrelevementUniteFonds.CodeTiers,PositionTiersRecherche);
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[12,R]:=Vergule(floattostr(RPrelevementUniteFonds.ValeurPrelevement*SigneDebitCredit*PourcentagePartCommune),'2','C','');
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[13,R]:='OK';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[14,R]:='Prélèvement N°: '+inttostr(RPrelevementUniteFonds.NumPrelevement);
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[15,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[16,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[17,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[18,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[19,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[20,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[21,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[22,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[23,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[24,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[25,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[26,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[27,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[28,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[29,R]:=RPrelevementUniteFonds.ModePaiement;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[30,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[31,R]:=RPrelevementUniteFonds.Domiciliation;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[32,R]:=RPrelevementUniteFonds.NumPiece;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[33,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[34,R]:='UF';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[35,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[36,R]:='';

               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[37,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[38,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[39,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[40,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[41,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[42,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[43,R]:='';

               MontantTotalMouvement:=MontantTotalMouvement+(RPrelevementUniteFonds.ValeurPrelevement*SigneDebitCredit*PourcentagePartCommune);

               h:=1;
               OKPeriode:=false;
               while(h<=FSTraitementDonnees.TableauAnalysePeriodique.ColCount-1)and(OKPeriode=false)do
               begin
                    if(RPrelevementUniteFonds.DatePrelevement=FSTraitementDonnees.TableauAnalysePeriodique.Cells[h,0])then
                    begin
                         OKPeriode:=true;
                         FSTraitementDonnees.TableauAnalysePeriodique.Cells[h,1]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalysePeriodique.Cells[h,1])+
                                                                                  RPrelevementUniteFonds.ValeurPrelevement*SigneDebitCredit*PourcentagePartCommune),'2','C','');
                    end;
               h:=h+1;
               end;

               end;
          end;
          finally
          CloseFile(FPrelevementUniteFonds);
          end;
     end;
end;

LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

S:=1;
OKAnalyseSituation:=false;
while(S<=FSTraitementDonnees.TableauMouvement.RowCount-1)and(OKAnalyseSituation=false)do
begin
     if(FSTraitementDonnees.TableauMouvement.Cells[20,S]='OK')
     and(FSTraitementDonnees.TableauMouvement.Cells[1,S]='ST')
     then
     begin
          OKAnalyseSituation:=true;
          RowSelect:=S;
     end;
S:=S+1;
end;

if(OKAnalyseSituation=true)then
begin
     ListeOrdreListeMouvement:='';
     PBeginDM:=0;
     PEndDM:=999999999; 

     TypeProcesInt:='Business';
     FichierConcerneInt:='FSituationMarche';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProcesInt,FichierConcerneInt,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          if(FichierConcerneInt<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConcerneInt+'} recherché !');
     end;

     ChSituationMarche:=Adresse;
     assignfile(FSituationMarche,ChSituationMarche);
     if FileExists(ChSituationMarche)then
     begin
          try
          FSTraitementDonnees.Rapport.Lines.Add('');
          FSTraitementDonnees.Rapport.Lines.Add('Rapport Situation Marche');

          Reset(FSituationMarche);
          Seek(FSituationMarche,0);
          while not eof(FSituationMarche)do
          begin
               read(FSituationMarche,RSituationMarche);  Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTBohr.Checked)then Exit;
               PourcentagePartCommune:=1;

               RMarcheCopie:=ChercherMarche(RSituationMarche.NSMarche);

               if(RSituationMarche.NSituationMarche<>0)
               then OKMouvement:=true
               else OKMouvement:=false;

               if(OKMouvement=true)then
               begin
                    if(FSTraitementDonnees.EditNumProjetTableauBohr.Text<>'')then
                    begin
                         if(RMarcheCopie.NumProjetFinance='')then
                         begin
                              if(AfficherPartieCommune=true)then
                              begin
                                   PourcentagePartCommune:=FunctPourcentagePartieCommune(FSTraitementDonnees.EditNumProjetTableauBohr.Text);
                                   if(PourcentagePartCommune>0)then OKMouvement:=true else OKMouvement:=false;
                              end
                              else OKMouvement:=false;
                         end
                         else
                         begin
                              if(Firstlaters(RMarcheCopie.NumProjetFinance,longueur(FSTraitementDonnees.EditNumProjetTableauBohr.Text))=FSTraitementDonnees.EditNumProjetTableauBohr.Text)
                              then OKMouvement:=true
                              else OKMouvement:=false;
                         end;
                    end;
               end;

               if(OKMouvement=true)then
               begin
                    if(strtoboolean(FSTraitementDonnees.TableauMouvement.Cells[12,RowSelect])=true)
                    and(strtoboolean(FSTraitementDonnees.TableauMouvement.Cells[13,RowSelect])=true)
                    and(RMarcheCopie.TypeProces=FSTraitementDonnees.TableauMouvement.Cells[4,RowSelect])
                    and(FunctionFichierInclu(RMarcheCopie.FichierConcerneTiers,FSTraitementDonnees.TableauMouvement.Cells[5,RowSelect])=true)
                    then OKMouvement:=true
                    else OKMouvement:=false;
               end;

               if(OKMouvement=true)then
               begin
                    if(FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text<>'')then
                    begin
                         OKMouvement:=TrouverGroupeTiers(FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text,RMarcheCopie.CodeMaitreOuvrage,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);
                    end;
               end;

               if(OKMouvement=true)then
               begin
                    DebitCreditTypeMouvement:=RMarcheCopie.DebitCredit;

                    if(DebitCreditTypeMouvement='Débit')then
                    begin
                         C:=0;
                    end
                    else
                    begin
                         C:=1;
                    end;

                    if(DebitCreditTypeMouvement=FSTraitementDonnees.EditDebitCreditPositif.Text)then
                    begin
                         SigneDebitCredit:=1;
                    end
                    else
                    begin
                         SigneDebitCredit:=-1;
                    end;

                     OKTiers:=false;
                     l:=1;
                     while(l<=T)and(OKTiers=false)do
                     begin
                          if(TrouverGroupeTiers(RMarcheCopie.CodeMaitreOuvrage,TableauPointeurData[l-1].Data1,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe))
                          and(RMarcheCopie.TypeProces=TableauPointeurData[l-1].Data2)
                          and(RMarcheCopie.FichierConcerneTiers=TableauPointeurData[l-1].Data3)
                          then
                          begin
                               OKTiers:=true;
                               REditTiers:=TableauPointeurData[l-1].RowPointeur;
                          end
                          else l:=l+1;
                     end;

                     if(OKTiers=false)then
                     begin
                          T:=T+1;
                          REditTiers:=T;
                          FSTraitementDonnees.TableauDeBohrTiers.Rows[REditTiers].Text:=inttostr(REditTiers);
                          FSTraitementDonnees.TableauDeBohrTiers.Cells[1,REditTiers]:=RMarcheCopie.CodeMaitreOuvrage;
                          FSTraitementDonnees.TableauDeBohrTiers.Cells[2,REditTiers]:='';//ImporteDataProcesTiers(RMarcheCopie.TypeProces,RMarcheCopie.FichierConcerneTiers,RMarcheCopie.CodeMaitreOuvrage,PositionTiersRecherche);

                          FSTraitementDonnees.TableauDeBohrTiers.Cells[17,REditTiers]:=RMarcheCopie.TypeProces;
                          FSTraitementDonnees.TableauDeBohrTiers.Cells[18,REditTiers]:=RMarcheCopie.FichierConcerneTiers;

                          setlength(TableauPointeurData,T);
                          TableauPointeurData[T-1].Data1:=RMarcheCopie.CodeMaitreOuvrage;
                          TableauPointeurData[T-1].Data2:=RMarcheCopie.TypeProces;
                          TableauPointeurData[T-1].Data3:=RMarcheCopie.FichierConcerneTiers;
                          TableauPointeurData[T-1].RowPointeur:=T;
                     end;

                     if(RSituationMarche.MontantSituationTTCNet>0)then
                     begin
                          if(RMarcheCopie.TypeProces=FSTraitementDonnees.TableauMouvement.Cells[4,RowSelect])
                          and(FunctionFichierInclu(RMarcheCopie.FichierConcerneTiers,FSTraitementDonnees.TableauMouvement.Cells[5,RowSelect])=true)
                          then OKMouvement:=true
                          else OKMouvement:=false;
                     end
                     else OKMouvement:=false;
               end;

               if(OKMouvement=true)then
               begin
                    if(strtodate(RSituationMarche.DateSituationMarche)>=strtodate(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)))
                    and(strtodate(RSituationMarche.DateSituationMarche)<=strtodate(datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date)))
                    then
                    begin
                         OKMouvement:=true;
                    end
                    else
                    begin
                         OKMouvement:=false;
                         if(CalculerAnterieur=true)
                         and(strtodate(RSituationMarche.DateSituationMarche)<strtodate(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)))then
                         begin
                              FSTraitementDonnees.TableauDeBohrTiers.Cells[C+3,REditTiers]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[C+3,REditTiers])+RSituationMarche.MontantSituationTTCNet*SigneDebitCredit*PourcentagePartCommune),'2','C','');
                         end;
                    end;
                end;

               if(OKMouvement=true)then
               begin
                    FSTraitementDonnees.Rapport.Lines.Add('Situation Marché: '+inttostr(RSituationMarche.NSituationMarche)+'/'+inttostr(RMarcheCopie.NSMarche)+'. Montant '+vergule(floattostr(RSituationMarche.MontantSituationTTCNet),'2','C',''));

                    FSTraitementDonnees.TableauDeBohrTiers.Cells[C+8,REditTiers]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[C+8,REditTiers])+RSituationMarche.MontantSituationTTCNet*SigneDebitCredit*PourcentagePartCommune),'2','C','');

               R:=R+1;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Rows[R].Text:=inttostr(R);
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R]:=Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2');
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[2,R]:=inttostr(RMarcheCopie.NSMarche);
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[3,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[4,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[5,R]:=RSituationMarche.DateSituationMarche;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[6,R]:=RSituationMarche.ModePaiement+' '+RSituationMarche.Domiciliation;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[7,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[8,R]:=RMarcheCopie.TypeProces;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[9,R]:=RMarcheCopie.FichierConcerneTiers;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[10,R]:=RMarcheCopie.CodeMaitreOuvrage;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[11,R]:='';//ImporteDataProcesTiers(RMarcheCopie.TypeProces,RMarcheCopie.FichierConcerneTiers,RMarcheCopie.CodeMaitreOuvrage,PositionTiersRecherche);
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[12,R]:=Vergule(floattostr(RSituationMarche.MontantSituationTTCNet*SigneDebitCredit*PourcentagePartCommune),'2','C','');
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[13,R]:='OK';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[14,R]:='Situation N°: '+Completezerogauche(Inttostr(RSituationMarche.NSituationMarche),'2')+'/'+lastlaters(RSituationMarche.DateSituationMarche,4)+' du marché N°:'+Completezerogauche(Inttostr(RMarcheCopie.NSMarche),'2')+'/'+lastlaters(RMarcheCopie.DateMarche,4);
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[15,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[16,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[17,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[18,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[19,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[20,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[21,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[22,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[23,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[24,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[25,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[26,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[27,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[28,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[29,R]:=RSituationMarche.ModePaiement;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[30,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[31,R]:=RSituationMarche.Domiciliation;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[32,R]:=RSituationMarche.NumPiece;
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[33,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[34,R]:='ST';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[35,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[36,R]:='';

               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[37,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[38,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[39,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[40,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[41,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[42,R]:='';
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[43,R]:='';

               MontantTotalMouvement:=MontantTotalMouvement+(RSituationMarche.MontantSituationTTCNet*SigneDebitCredit*PourcentagePartCommune);

               h:=1;
               OKPeriode:=false;
               while(h<=FSTraitementDonnees.TableauAnalysePeriodique.ColCount-1)and(OKPeriode=false)do
               begin
                    if(RSituationMarche.DateSituationMarche=FSTraitementDonnees.TableauAnalysePeriodique.Cells[h,0])then
                    begin
                         OKPeriode:=true;
                         FSTraitementDonnees.TableauAnalysePeriodique.Cells[h,1]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalysePeriodique.Cells[h,1])+
                                                                                  RSituationMarche.MontantSituationTTCNet*SigneDebitCredit*PourcentagePartCommune),'2','C','');
                    end;
               h:=h+1;
               end;

               end;
          end;
          finally
          CloseFile(FSituationMarche);
          end;
     end;
end;

LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

     if(R>0)then
     begin
          FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount:=R+4;
          FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Rows[R+1].Text:='';
          FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Rows[R+2].Text:='';
          FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Rows[R+3].Text:='';

          FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[11,R+2]:='Total:';
          FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[12,R+2]:=Vergule(floattostr(MontantTotalMouvement),'2','C','');

          FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[11,R+3]:='Solde:';
          FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[35,R+3]:='Trop-perçus';

     end
     else FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount:=2;

     FSTraitementDonnees.TableauPositionMouvement.ColCount:=4;
     FSTraitementDonnees.TableauPositionMouvement.Cols[0].Text:='';
     FSTraitementDonnees.TableauPositionMouvement.Cols[1].Text:='';
     FSTraitementDonnees.TableauPositionMouvement.Cols[2].Text:='';
     FSTraitementDonnees.TableauPositionMouvement.Cols[3].Text:='';

     FSTraitementDonnees.TableauPositionMouvement.RowCount:=2;
     FSTraitementDonnees.TableauPositionMouvement.Rows[1].Text:='';
     S:=1;
     R:=0;
     while(S<=FSTraitementDonnees.TableauMouvement.RowCount-1)do
     begin
          if(FSTraitementDonnees.TableauMouvement.Cells[20,S]='OK')then
          begin
               R:=R+1;
               FSTraitementDonnees.TableauPositionMouvement.Cells[0,R]:=FSTraitementDonnees.TableauMouvement.Cells[1,S];
               FSTraitementDonnees.TableauPositionMouvement.Cells[1,R]:=FSTraitementDonnees.TableauMouvement.Cells[24,S];  //ListeOrdreListeMouvement
               FSTraitementDonnees.TableauPositionMouvement.Cells[2,R]:=FSTraitementDonnees.TableauMouvement.Cells[25,S];  //PBeginDM
               FSTraitementDonnees.TableauPositionMouvement.Cells[3,R]:=FSTraitementDonnees.TableauMouvement.Cells[26,S];  //PEndDM
          end;
     S:=S+1;
     end;

     if(R>0)then FSTraitementDonnees.TableauPositionMouvement.RowCount:=R+1
            else FSTraitementDonnees.TableauPositionMouvement.RowCount:=2;

     NotRow:='';

     if(FSTraitementDonnees.RBDetailMouvement.Checked=true)
     then NotCol:='1;3;4;6-10;13;15-34'
     else NotCol:='1;3;4;6-10;13-34';

     for C:=1 to FSTraitementDonnees.TableauListeAppartenanceMouvementTB.ColCount-1 do
     if ExisteNumInTexte(inttostr(C),NotCol)then FSTraitementDonnees.TableauListeAppartenanceMouvementTB.ColWidths[C]:=0;

     IndiquerInfoListeAvis(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,33,35,36,12);
     
     IndiquerNomPrenomMultiTiers(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,8,9,10,'11','','37','38','39','40','41','42');
     AjusterColWidth(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,NotRow,NotCol);

     FSTraitementDonnees.Rapport.Lines.Add('Trie Liste Mouvements');
     RubriqueTrie:=strtointeger(FSTraitementDonnees.EditIndiceRubriqueTriCol.Text);
     IndiceFinControleTrieRow:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-4;
     TrierTableauARowSpecial(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,1,IndiceFinControleTrieRow,1,inttostr(RubriqueTrie),'Date','+');

     R:=1;
     ListeOrdreListeMouvement:='';
     ListeNumPrelevementUF:='';
     ListeNumPrelevement:='';
     while(R<=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-1)do
     begin
          if(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[13,R]='OK')
          then
          begin
               Index:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[34,R];

               if(Index='LM')then
               begin
                    if(ListeOrdreListeMouvement='')
                    then ListeOrdreListeMouvement:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R]
                    else ListeOrdreListeMouvement:=ListeOrdreListeMouvement+';'+FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R];
               end;

               if(Index='UF')then
               begin
                    if(ListeNumPrelevementUF='')
                    then ListeNumPrelevementUF:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R]
                    else ListeNumPrelevementUF:=ListeNumPrelevementUF+';'+FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R];

                    if(ListeNumPrelevement='')
                    then ListeNumPrelevement:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[2,R]
                    else ListeNumPrelevement:=ListeNumPrelevement+';'+FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[2,R];
               end;
          end;
     R:=R+1;
     end;

     if(FSTraitementDonnees.RBInclureDetailArticle.Checked=true)then
     begin  //??????????????????????????????????????????????????????????????????
     FSTraitementDonnees.Rapport.Lines.Add('Calcule auto appartenance Mouvements');
     RIn:=0;

     CalculeAutoAppartenanceMouvement(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,FSTraitementDonnees.TableauRecapitulatifDetailMouvements,FSTraitementDonnees.TableauPositionMouvement,ExerciceAnnee,ListeOrdreListeMouvement,FSTraitementDonnees.EditDebitCreditPositif.Text,'2','2','2',datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date),datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date),FSTraitementDonnees.EditOrdreListeMouvementAppartenant,13,5,RIn,ROut);

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);


     if(OKAnalysePrelevement=true)then
     begin
          FSTraitementDonnees.Rapport.Lines.Add('Détail article Prélèvement U.F.');
          AccepteInfoVideNP:=false;
          AccepteInfoVideNPUF:=false;
          AccepteInfoVideMatricule:=true;
          if(FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text='')
          then AccepteInfoVideCodeTiers:=true
          else AccepteInfoVideCodeTiers:=false;
          CumulerArticle:=true;

          RIn:=ROut;
          ListeDetailArticlePrelevementUniteFonds(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,ListeNumPrelevement,ListeNumPrelevementUF,'',FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text,datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date),datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date),AccepteInfoVideNP,AccepteInfoVideNPUF,AccepteInfoVideMatricule,AccepteInfoVideCodeTiers,CumulerArticle,RIn,FSTraitementDonnees.EditTiersNumProjetTraitement.Text,ROut);
     end;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

     FSTraitementDonnees.Rapport.Lines.Add('Trie Tableau Détail Mouvement');
     TrierTableauARowSpecial(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,1,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-3,1,'1','','+');

     NotRow:='';
     NotCol:='9-19;22';
     for C:=1 to FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColWidths[C]:=0;
     AjusterColWidth(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,NotRow,NotCol);
     end;//??????????????????????????????????????????????????????????????????

     R:=1;
     FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvement.Text:='';
     while(R<=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-1)do
     begin
          if(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[13,R]='OK')then
          begin
               Index:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[34,R];
               if(FSTraitementDonnees.EditOrdreListeMouvementAppartenant.Text='')
               then FSTraitementDonnees.EditOrdreListeMouvementAppartenant.Text:=Index+FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R]
               else FSTraitementDonnees.EditOrdreListeMouvementAppartenant.Text:=FSTraitementDonnees.EditOrdreListeMouvementAppartenant.Text+';'+Index+FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R];

               FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvement.Text:=floattostr(strtoreal(FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvement.Text)+strtoreal(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[12,R]));
          end;
     R:=R+1;
     end;

     FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvement.Text:=Vergule(FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvement.Text,'2','C','');

     FSTraitementDonnees.Rapport.Lines.Add('Arboréscence Article');

     if(FSTraitementDonnees.RBInclureArborescenceArticle.Checked=true)then //?????????????????????????????????????
     AfficheArborescenceArticleTD(FSTraitementDonnees.TableauArborescenceArticle,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,FSTraitementDonnees.TableauTitreArborescenceArticle,'F'+FSTraitementDonnees.EditChoisAffichage.Text+FSTraitementDonnees.EditExtentionFichier.Text);

     if(FSTraitementDonnees.RBInclureDetailArticle.Checked=true)then
     RemplireTableauDiagrammeArticle(FSTraitementDonnees.TypeAfficheRubriqueDiagrammeArticle.Text);
     ///////////////////////////////////////////////////////////////////////////

     FSTraitementDonnees.Rapport.Lines.Add('Fin Arboréscence Article');

     if(FSTraitementDonnees.RBInclureFinance.Checked=false)then
     begin
          R:=1;
          OKFinance:=false;
          while(R<=FSTraitementDonnees.TableauMouvement.RowCount-1)and(OKFinance=false)do
          begin
               if(FSTraitementDonnees.TableauMouvement.Cells[20,R]='OK')
               and(strtoboolean(FSTraitementDonnees.TableauMouvement.Cells[13,R])=true)then OKFinance:=true;
          R:=R+1;
          end;
     end
     else
     begin
          OKFinance:=true;
     end;

     OKFinance:=FSTraitementDonnees.RBInclureFinance.Checked;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

     if(OKFinance=true)then
     begin
           if not(FunctionAdresseProces('Business','FBaseAvis','',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                if('FBaseAvis'<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché '+'FBaseAvis'+' !');
           end;

           ProceTrieBaseAvisLocalReseaux;

           ChBaseAvis:=Adresse;
           assignfile(FBaseAvis,ChBaseAvis);
           try
           if FileExists(ChBaseAvis)then
           Reset(FBaseAvis)
           else Rewrite(FBaseAvis);
           Seek(FBaseAvis,0);
           F:=0;
           while not eof(FBaseAvis)do
           begin
                read(FBaseAvis,RBaseAvis);   Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTBohr.Checked)then Exit;

                IBegin:=RBaseAvis.RegistrePositionAvisParPeriode[strtointeger(Lastlaters(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date),4)),strtointeger(MidelLaters(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date),4,5))].PositionAvisBegin;
                //IEnd:=RBaseAvis.RegistrePositionAvisParPeriode[strtointeger(Lastlaters(datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date),4)),strtointeger(MidelLaters(datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date),4,5))].PositionAvisEnd;

                IEnd:=IndiquerIEndMax(RBaseAvis,datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date),datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date));

                if(FSTraitementDonnees.RBUtiliserArchiveTableauBohrsTiers.Checked=false)then IBegin:=0;

                FichierConserne:=RBaseAvis.DesignationBaseAvis;

                if(FunctionFichierInclu(FichierConserne,FSTraitementDonnees.EditBaseAvisFichierConcerne.Text))then
                begin
                     FSTraitementDonnees.Rapport.Lines.Add('Rapport '+FichierConserne+' (IBegin: '+inttostr(IBegin)+', IEnd: '+inttostr(IEnd)+')');

                     TypeProces:='Business';
                     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                     begin
                          if(FichierConserne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché {'+FichierConserne+'} !');
                     end;

                     TypeProcesControleReseaux:=TypeProcesReseaux;

                     ChAvis:=Adresse;
                     assignfile(FAvis,ChAvis);
                     if FileExists(ChAvis)then
                     begin
                          try
                          Reset(FAvis);
                          Seek(FAvis,IBegin);
                          iPAP:=IBegin;
                          while not eof(FAvis)and(iPAP<=IEnd)do
                          begin
                               read(FAvis,RAvis);   Application.ProcessMessages;  if(FSTraitementDonnees.RBSuspendreTBohr.Checked)then Exit;
                               iPAP:=iPAP+1;
                               PourcentagePartCommune:=1;

                               //ChercherTypeAvis('',RAvis.DesignationTypeAvis,'','','','',RTypeAvisCopie);

                               ///////////////////////////////////////////////////////////////////
                               if(RAvis.PositionTypeAvis>=0)then
                               begin
                                     TypeProcesTypeAvis:='Business';
                                     FichierConserneTypeAvis:='FTypeAvis';
                                     if not(FunctionAdresseProces(TypeProcesTypeAvis,FichierConserneTypeAvis,'',AdresseTypeAvis,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                                     begin
                                          if(FichierConserneTypeAvis<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConserneTypeAvis+'} recherché !');
                                     end;

                                     ChTypeAvis:=AdresseTypeAvis;
                                     assignfile(FTypeAvis,ChTypeAvis);
                                     if FileExists(ChTypeAvis)then
                                     begin
                                          Reset(FTypeAvis);
                                          Seek(FTypeAvis,RAvis.PositionTypeAvis);
                                          if not eof(FTypeAvis)then read(FTypeAvis,RTypeAvisCopie);
                                     end;
                                     CloseFile(FTypeAvis);
                               end
                               else
                               begin
                                    RTypeAvisCopie.NumTypeAvis:=0;
                                    RTypeAvisCopie.DesignationTypeAvis:='Inventaire';
                                    RTypeAvisCopie.CompteImputation:='';
                                    RTypeAvisCopie.DebitCredit:=RAvis.DebitCredit;
                                    RTypeAvisCopie.SigneDebitCredit:=1;
                                    RTypeAvisCopie.TypeProces:=RAvis.TypeProces;
                                    RTypeAvisCopie.FichierConserne:=RAvis.AvisConcerneTiers;
                                    RTypeAvisCopie.JourneauxAuxiliaireUtilise:='';
                               end;
                               ///////////////////////////////////////////////////////////////////

                               if(FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text<>'')then
                               begin
                                    OKAvis:=TrouverGroupeTiers(FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text,RAvis.CodeTiers,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe);

                                    if(OKAvis=true)
                                    and(RAvis.TypeProces=FSTraitementDonnees.TableauMouvement.Cells[4,FSTraitementDonnees.TableauMouvement.Row])
                                    and(FunctionFichierInclu(RAvis.AvisConcerneTiers,FSTraitementDonnees.EditTiersFichierConserneTableauBohr.Text)or FunctionFichierInclu(RAvis.AvisConcerneTiers,ListeFichierTiersGroupe))
                                    then OKAvis:=true
                                    else OKAvis:=false;
                               end
                               else OKAvis:=true;

                               if(OKAvis=true)then
                               begin
                                    OKAvis:=not RegistreInvisibleReseauxPointeur(RAvis.TypeProces,RAvis.AvisConcerneTiers,RAvis.CodeTiers,'','',RAutorisationPartageRegistreCopie);
                               end;

                               if(OKAvis=true)then
                               begin
                                    if(TypeProcesControleReseaux='Réseaux')then
                                    begin
                                         if(strtodate(RAvis.DateAvis)<strtodate('01/01/'+ExerciceAnnee))
                                         then OKAvis:=FSTraitementDonnees.RBInclureValeurSousReseauxPrecedenteExercice.Checked;

                                         if(OKAvis=true)then
                                         begin
                                              if(strtodate(RAvis.DateAvis)<strtodate(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)))
                                              then OKAvis:=FSTraitementDonnees.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
                                         end;
                                    end;
                               end;

                               if(OKAvis=true)then
                               begin
                                    DebitCreditTypeMouvement:=RTypeAvisCopie.DebitCredit;
                                    Indice:=RTypeAvisCopie.SigneDebitCredit;

                                    if(DebitCreditTypeMouvement='Débit')then
                                    begin
                                         C:=0;
                                    end
                                    else
                                    begin
                                         C:=1;
                                    end;

                                    if(RAvis.ValiditeAvis=true)
                                    then OKAvis:=true
                                    else OKAvis:=false;

                                    if(OKAvis=true)then
                                    begin
                                        if(RAvis.TypeProces=FSTraitementDonnees.TableauMouvement.Cells[4,FSTraitementDonnees.TableauMouvement.Row])
                                        and(FunctionFichierInclu(RAvis.AvisConcerneTiers,FSTraitementDonnees.LabelFichierConcerne.Caption)=true)
                                        then OKAvis:=true
                                        else OKAvis:=false;
                                    end;
                               end;

                               if(OKAvis=true)then
                               begin
                                    if(FSTraitementDonnees.EditNumProjetTableauBohr.Text<>'')then
                                    begin
                                         if(RAvis.NumProjetFinance='')then
                                         begin
                                              if(AfficherPartieCommune=true)then
                                              begin
                                                   PourcentagePartCommune:=FunctPourcentagePartieCommune(FSTraitementDonnees.EditNumProjetTableauBohr.Text);
                                                   if(PourcentagePartCommune>0)then OKAvis:=true else OKAvis:=false;
                                              end
                                              else OKAvis:=false;
                                         end
                                         else
                                         begin
                                              if(Firstlaters(RAvis.NumProjetFinance,longueur(FSTraitementDonnees.EditNumProjetTableauBohr.Text))=FSTraitementDonnees.EditNumProjetTableauBohr.Text)
                                              then OKAvis:=true
                                              else OKAvis:=false;
                                         end;
                                    end;
                               end;

                               if(OKAvis=true)then
                               begin
                                    OKTiers:=false;
                                    l:=1;
                                    while(l<=T)and(OKTiers=false)do
                                    begin
                                         if(TrouverGroupeTiers(RAvis.CodeTiers,TableauPointeurData[l-1].Data1,FSTraitementDonnees.RBActiverGroupeTiers.Checked,DesignationGroupe,ListeFichierTiersGroupe))
                                         and(RAvis.TypeProces=TableauPointeurData[l-1].Data2)
                                         and(FunctionFichierInclu(RAvis.AvisConcerneTiers,TableauPointeurData[l-1].Data3)or FunctionFichierInclu(RAvis.AvisConcerneTiers,ListeFichierTiersGroupe))then
                                         begin
                                              OKTiers:=true;
                                              REditTiers:=TableauPointeurData[l-1].RowPointeur;
                                         end
                                         else l:=l+1;
                                    end;

                                    if(OKTiers=false)
                                    and(TypeProcesControleReseaux='Réseaux')
                                    and(FSTraitementDonnees.RBNePasAfficherNewFinanceReseaux.Checked=true)then
                                    begin
                                         OKAvis:=false;
                                    end
                                    else
                                    begin
                                          if(OKTiers=false)then
                                          begin
                                               T:=T+1;
                                               REditTiers:=T;
                                               FSTraitementDonnees.TableauDeBohrTiers.Rows[REditTiers].Text:=inttostr(REditTiers);
                                               FSTraitementDonnees.TableauDeBohrTiers.Cells[1,REditTiers]:=RAvis.CodeTiers;
                                               FSTraitementDonnees.TableauDeBohrTiers.Cells[2,REditTiers]:='';//ImporteDataProcesTiers(RAvis.TypeProces,RAvis.AvisConcerneTiers,RAvis.CodeTiers,PositionTiersRecherche);

                                               FSTraitementDonnees.TableauDeBohrTiers.Cells[17,REditTiers]:=RAvis.TypeProces;
                                               FSTraitementDonnees.TableauDeBohrTiers.Cells[18,REditTiers]:=RAvis.AvisConcerneTiers;

                                               setlength(TableauPointeurData,T);
                                               TableauPointeurData[T-1].Data1:=RAvis.CodeTiers;
                                               TableauPointeurData[T-1].Data2:=RAvis.TypeProces;
                                               TableauPointeurData[T-1].Data3:=RAvis.AvisConcerneTiers;
                                               TableauPointeurData[T-1].RowPointeur:=T;
                                          end;

                                          R:=0;
                                          OKFinance:=false;
                                          while(R<=F)and(OKFinance=false)do
                                          begin
                                               if(RAvis.DesignationTypeAvis+' '+RAvis.ModePaiement=FSTraitementDonnees.TableauFinanceStructure.Cells[1,R])then
                                               begin
                                                    REditFinance:=R;
                                                    OKFinance:=true;
                                               end;
                                          R:=R+1;
                                          end;

                                          if(OKFinance=false)then
                                          begin
                                               F:=F+1;
                                               REditFinance:=F;
                                               FSTraitementDonnees.TableauFinanceStructure.Rows[REditFinance].Text:='';
                                               FSTraitementDonnees.TableauFinanceStructure.Cells[1,REditFinance]:=RAvis.DesignationTypeAvis+' '+RAvis.ModePaiement;
                                          end;

                                          if(strtodate(RAvis.DateAvis)>=strtodate(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)))
                                          and(strtodate(RAvis.DateAvis)<=strtodate(datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date)))
                                          then
                                          begin
                                               OKAvis:=true;
                                          end
                                          else
                                          begin
                                               OKAvis:=false;
                                               if(CalculerAnterieur=true)
                                               and(strtodate(RAvis.DateAvis)<strtodate(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)))then
                                               begin
                                                    FSTraitementDonnees.TableauDeBohrTiers.Cells[C+3,REditTiers]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[C+3,REditTiers])+(Indice*RAvis.Montant*PourcentagePartCommune)),'2','C','');
                                                    FSTraitementDonnees.TableauFinanceStructure.Cells[C+3,REditFinance]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[C+3,REditFinance])+(Indice*RAvis.Montant*PourcentagePartCommune)),'2','C','');

                                                    FSTraitementDonnees.Rapport.Lines.Add('Antérieuer: '+FichierConserne+': N° '+inttostr(RAvis.NumAvis)+' du '+RAvis.DateAvis+'. Montant '+vergule(floattostr(RAvis.Montant*PourcentagePartCommune),'2','C',''));
                                               end;
                                          end;
                                    end;
                               end;

                               if(OKAvis=true)then
                               begin
                                    FSTraitementDonnees.Rapport.Lines.Add('Période: '+FichierConserne+': N° '+inttostr(RAvis.NumAvis)+' du '+RAvis.DateAvis+'. Montant '+vergule(floattostr(RAvis.Montant*PourcentagePartCommune),'2','C',''));

                                    FSTraitementDonnees.TableauDeBohrTiers.Cells[C+8,REditTiers]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[C+8,REditTiers])+(Indice*RAvis.Montant*PourcentagePartCommune)),'2','C','');
                                    FSTraitementDonnees.TableauFinanceStructure.Cells[C+6,REditFinance]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[C+6,REditFinance])+(Indice*RAvis.Montant*PourcentagePartCommune)),'2','C','');

                                    h:=1;
                                    OKPeriode:=false;
                                    while(h<=FSTraitementDonnees.TableauAnalysePeriodique.ColCount-1)and(OKPeriode=false)do
                                    begin
                                         if(RAvis.DateAvis=FSTraitementDonnees.TableauAnalysePeriodique.Cells[h,0])then
                                         begin
                                              OKPeriode:=true;
                                              FSTraitementDonnees.TableauAnalysePeriodique.Cells[h,2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalysePeriodique.Cells[h,2])+
                                                                                                       (Indice*RAvis.Montant*PourcentagePartCommune)),'2','C','');
                                         end;
                                    h:=h+1;
                                    end;
                               end;
                          end;
                          finally
                          Closefile(FAvis);
                          end;
                     end;
                end;
           end;
           finally
           Closefile(FBaseAvis);
           end;
     end;
     ///////////////////////////////////////////////////////////////////////////

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

     AjusterColWidth(FSTraitementDonnees.TableauAnalysePeriodique,'','');

     FSTraitementDonnees.Rapport.Lines.Add('Fin d''analyse, début de traitement');

     AfficherDiagramme(FSTraitementDonnees.TableauAnalysePeriodique,2);
     AfficherDiagramme(FSTraitementDonnees.TableauDiagrammeArticle,0);

     FSTraitementDonnees.TableauDeBohrTiers.Rows[T+1].Text:='';
     FSTraitementDonnees.TableauDeBohrTiers.Rows[T+2].Text:='';
     FSTraitementDonnees.TableauDeBohrTiers.Cells[2,T+2]:='Total:';
     FSTraitementDonnees.TableauDeBohrTiers.Cells[7,T+2]:='Total:';
     FSTraitementDonnees.TableauDeBohrTiers.Cells[12,T+2]:='Total:';
     l:=1;
     while(l<=T)do
     begin
          Solde:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[3,l])-strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[4,l]);
          if(Solde<0)then
          begin
               C:=6;
               Indice:=(-1);
          end
          else
          begin
               C:=5;
               Indice:=(1);
          end;
          FSTraitementDonnees.TableauDeBohrTiers.Cells[C,l]:=Vergule(floattostr(Solde*Indice),'2','C','');

          Solde:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[8,l])-strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[9,l]);
          if(Solde<0)then
          begin
               C:=11;
               Indice:=(-1);
          end
          else
          begin
               C:=10;
               Indice:=(1);
          end;
          FSTraitementDonnees.TableauDeBohrTiers.Cells[C,l]:=Vergule(floattostr(Solde*Indice),'2','C','');

          FSTraitementDonnees.TableauDeBohrTiers.Cells[13,l]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[3,l])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[8,l])),'2','C','');
          FSTraitementDonnees.TableauDeBohrTiers.Cells[14,l]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[4,l])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[9,l])),'2','C','');

          Solde:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[5,l])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[10,l])-
                 strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[6,l])-strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[11,l]);
          if(Solde<0)then
          begin
               C:=16;
               Indice:=(-1);
          end
          else
          begin
               C:=15;
               Indice:=(1);
          end;
          FSTraitementDonnees.TableauDeBohrTiers.Cells[C,l]:=Vergule(floattostr(Solde*Indice),'2','C','');

          FSTraitementDonnees.TableauDeBohrTiers.Cells[3,T+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[3,T+2])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[3,l])),'2','C','');
          FSTraitementDonnees.TableauDeBohrTiers.Cells[4,T+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[4,T+2])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[4,l])),'2','C','');
          FSTraitementDonnees.TableauDeBohrTiers.Cells[5,T+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[5,T+2])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[5,l])),'2','C','');
          FSTraitementDonnees.TableauDeBohrTiers.Cells[6,T+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[6,T+2])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[6,l])),'2','C','');
          FSTraitementDonnees.TableauDeBohrTiers.Cells[8,T+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[8,T+2])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[8,l])),'2','C','');
          FSTraitementDonnees.TableauDeBohrTiers.Cells[9,T+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[9,T+2])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[9,l])),'2','C','');
          FSTraitementDonnees.TableauDeBohrTiers.Cells[10,T+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[10,T+2])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[10,l])),'2','C','');
          FSTraitementDonnees.TableauDeBohrTiers.Cells[11,T+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[11,T+2])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[11,l])),'2','C','');
          FSTraitementDonnees.TableauDeBohrTiers.Cells[13,T+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[13,T+2])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[13,l])),'2','C','');
          FSTraitementDonnees.TableauDeBohrTiers.Cells[14,T+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[14,T+2])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[14,l])),'2','C','');
          FSTraitementDonnees.TableauDeBohrTiers.Cells[15,T+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[15,T+2])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[15,l])),'2','C','');
          FSTraitementDonnees.TableauDeBohrTiers.Cells[16,T+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[16,T+2])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[16,l])),'2','C','');
     l:=l+1;
     end;

     if(T>0)then FSTraitementDonnees.TableauDeBohrTiers.RowCount:=T+3
            else FSTraitementDonnees.TableauDeBohrTiers.RowCount:=2;

     FSTraitementDonnees.TableauDeBohrTiers.ColWidths[17]:=0;
     FSTraitementDonnees.TableauDeBohrTiers.ColWidths[18]:=0;

     for C:=1 to FSTraitementDonnees.TableauDeBohrTiers.ColCount-1 do if ExisteNuminTexte(inttostr(C),FSTraitementDonnees.EditNotColTableauDeBohrTiers.Text)then FSTraitementDonnees.TableauDeBohrTiers.ColWidths[C]:=0;
     IndiquerNomPrenomMultiTiers(FSTraitementDonnees.TableauDeBohrTiers,17,18,1,'2','','37','38','39','40','41','42');
     AjusterColWidth(FSTraitementDonnees.TableauDeBohrTiers,'',FSTraitementDonnees.EditNotColTableauDeBohrTiers.Text); //17;18

     if(FSTraitementDonnees.RBAfficherSoldeSuperieur.Checked=true)then NotTrieRow:=4 else NotTrieRow:=3;
                                                                                                                                                    
     FSTraitementDonnees.Rapport.Lines.Add('Trie Tableau de bohr');

     if(strtointeger(FSTraitementDonnees.EditIndiceRubriqueTriCol.Text)<>0)
     then RubriqueTrie:=strtointeger(FSTraitementDonnees.EditIndiceRubriqueTriCol.Text)
     else RubriqueTrie:=1;
     TrierTableauARowSpecial(FSTraitementDonnees.TableauDeBohrTiers,1,FSTraitementDonnees.TableauDeBohrTiers.RowCount-NotTrieRow,1,FSTraitementDonnees.EditIndiceRubriqueTriCol.Text,FSTraitementDonnees.EditTypeDataTrie.Text,FSTraitementDonnees.EditTypeTrie.Text);

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

     FSTraitementDonnees.Rapport.Lines.Add('Traitement des soldes');
     TransfertTableauBohr(FSTraitementDonnees.TableauDeBohrTiers,FSTraitementDonnees.RBAfficherSoldeSuperieur.Checked,FSTraitementDonnees.EditSoldeMinimum.Text);

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

     for R:=1 to FSTraitementDonnees.TableauDeBohrTiers.RowCount-3 do
     begin
          FSTraitementDonnees.TableauDeBohrTiers.Cells[0,R]:=inttostr(R);
          for C:=1 to FSTraitementDonnees.TableauDeBohrTiers.ColCount-1 do
          begin
               if(C in[3,4,5,6,8,9,10,10,13,14,15,16])then
               if(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[C,R])=0)then FSTraitementDonnees.TableauDeBohrTiers.Cells[C,R]:='';
          end;
     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
     end;

     FSTraitementDonnees.TableauCumulMouvement.ColCount:=11;
     FSTraitementDonnees.TableauCumulMouvement.Cols[0].Text:='N°';
     FSTraitementDonnees.TableauCumulMouvement.Cols[1].Text:='Type Mouvement';
     FSTraitementDonnees.TableauCumulMouvement.Cols[2].Text:='';
     FSTraitementDonnees.TableauCumulMouvement.Cols[3].Text:='   D.Antérieur   ';
     FSTraitementDonnees.TableauCumulMouvement.Cols[4].Text:='   C.Antérieur   ';
     FSTraitementDonnees.TableauCumulMouvement.Cols[5].Text:='';
     FSTraitementDonnees.TableauCumulMouvement.Cols[6].Text:='   D.Périodique   ';
     FSTraitementDonnees.TableauCumulMouvement.Cols[7].Text:='   C.Périodique   ';
     FSTraitementDonnees.TableauCumulMouvement.Cols[8].Text:='';
     FSTraitementDonnees.TableauCumulMouvement.Cols[9].Text:='     D.Global     ';
     FSTraitementDonnees.TableauCumulMouvement.Cols[10].Text:='     C.Global     ';

     FSTraitementDonnees.TableauCumulMouvement.RowCount:=2;
     FSTraitementDonnees.TableauCumulMouvement.Rows[1].Text:='';
     FSTraitementDonnees.TableauCumulMouvement.Cells[1,1]:=DataTexte;
     FSTraitementDonnees.TableauCumulMouvement.Cells[2,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[2,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];
     FSTraitementDonnees.TableauCumulMouvement.Cells[3,1]:='';
     FSTraitementDonnees.TableauCumulMouvement.Cells[4,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[4,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];
     FSTraitementDonnees.TableauCumulMouvement.Cells[5,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[7,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];
     FSTraitementDonnees.TableauCumulMouvement.Cells[6,1]:='';
     FSTraitementDonnees.TableauCumulMouvement.Cells[7,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[9,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];
     FSTraitementDonnees.TableauCumulMouvement.Cells[8,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[12,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];
     FSTraitementDonnees.TableauCumulMouvement.Cells[9,1]:='';
     FSTraitementDonnees.TableauCumulMouvement.Cells[10,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[14,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];

     FSTraitementDonnees.TableauSoldeMouvement.ColCount:=11;
     FSTraitementDonnees.TableauSoldeMouvement.Cols[0].Text:='N°';
     FSTraitementDonnees.TableauSoldeMouvement.Cols[1].Text:='Type Mouvement';
     FSTraitementDonnees.TableauSoldeMouvement.Cols[2].Text:='';
     FSTraitementDonnees.TableauSoldeMouvement.Cols[3].Text:='   D.Antérieur   ';
     FSTraitementDonnees.TableauSoldeMouvement.Cols[4].Text:='   C.Antérieur   ';
     FSTraitementDonnees.TableauSoldeMouvement.Cols[5].Text:='';
     FSTraitementDonnees.TableauSoldeMouvement.Cols[6].Text:='   D.Périodique   ';
     FSTraitementDonnees.TableauSoldeMouvement.Cols[7].Text:='   C.Périodique   ';
     FSTraitementDonnees.TableauSoldeMouvement.Cols[8].Text:='';
     FSTraitementDonnees.TableauSoldeMouvement.Cols[9].Text:='     D.Global     ';
     FSTraitementDonnees.TableauSoldeMouvement.Cols[10].Text:='     C.Global     ';

     FSTraitementDonnees.TableauSoldeMouvement.RowCount:=2;
     FSTraitementDonnees.TableauSoldeMouvement.Rows[1].Text:='';
     FSTraitementDonnees.TableauSoldeMouvement.Cells[1,1]:='Solde';
     FSTraitementDonnees.TableauSoldeMouvement.Cells[2,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[2,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];
     FSTraitementDonnees.TableauSoldeMouvement.Cells[3,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[5,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];
     FSTraitementDonnees.TableauSoldeMouvement.Cells[4,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[6,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];
     FSTraitementDonnees.TableauSoldeMouvement.Cells[5,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[7,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];
     FSTraitementDonnees.TableauSoldeMouvement.Cells[6,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[10,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];
     FSTraitementDonnees.TableauSoldeMouvement.Cells[7,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[11,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];
     FSTraitementDonnees.TableauSoldeMouvement.Cells[8,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[12,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];
     FSTraitementDonnees.TableauSoldeMouvement.Cells[9,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[15,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];
     FSTraitementDonnees.TableauSoldeMouvement.Cells[10,1]:=FSTraitementDonnees.TableauDeBohrTiers.Cells[16,FSTraitementDonnees.TableauDeBohrTiers.RowCount-1];


     FSTraitementDonnees.TableauFinanceStructure.Rows[F+1].Text:='';
     FSTraitementDonnees.TableauFinanceStructure.Rows[F+2].Text:='';
     FSTraitementDonnees.TableauFinanceStructure.Cells[2,F+2]:='Total antérieur';
     FSTraitementDonnees.TableauFinanceStructure.Cells[5,F+2]:='Total Périodique';
     FSTraitementDonnees.TableauFinanceStructure.Cells[8,F+2]:='Total Global';

     l:=1;
     while(l<=F)do
     begin
          FSTraitementDonnees.TableauFinanceStructure.Cells[9,l]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[3,l])+strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[6,l])),'2','C','');
          FSTraitementDonnees.TableauFinanceStructure.Cells[10,l]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[4,l])+strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[7,l])),'2','C','');
          FSTraitementDonnees.TableauFinanceStructure.Cells[3,F+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[3,F+2])+strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[3,l])),'2','C','');
          FSTraitementDonnees.TableauFinanceStructure.Cells[4,F+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[4,F+2])+strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[4,l])),'2','C','');
          FSTraitementDonnees.TableauFinanceStructure.Cells[6,F+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[6,F+2])+strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[6,l])),'2','C','');
          FSTraitementDonnees.TableauFinanceStructure.Cells[7,F+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[7,F+2])+strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[7,l])),'2','C','');
          FSTraitementDonnees.TableauFinanceStructure.Cells[9,F+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[9,F+2])+strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[9,l])),'2','C','');
          FSTraitementDonnees.TableauFinanceStructure.Cells[10,F+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[10,F+2])+strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[10,l])),'2','C','');
     l:=l+1;
     end;

     if(F>0)then FSTraitementDonnees.TableauFinanceStructure.RowCount:=F+3
            else FSTraitementDonnees.TableauFinanceStructure.RowCount:=2;

     for R:=1 to FSTraitementDonnees.TableauFinanceStructure.RowCount-3 do
     begin
          FSTraitementDonnees.TableauFinanceStructure.Cells[0,R]:=inttostr(R);
          for C:=1 to FSTraitementDonnees.TableauFinanceStructure.ColCount-1 do
          begin
               if(C in[3,4,6,7,9,10])then
               if(strtoreal(FSTraitementDonnees.TableauFinanceStructure.Cells[C,R])=0)then FSTraitementDonnees.TableauFinanceStructure.Cells[C,R]:='';
          end;
     end;
     AjusterColWidth(FSTraitementDonnees.TableauFinanceStructure,'','');

     for C:= 0 to FSTraitementDonnees.TableauFinanceStructure.ColCount-1 do
     FSTraitementDonnees.TableauCumulMouvement.ColWidths[C]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[C];

     for C:= 0 to FSTraitementDonnees.TableauFinanceStructure.ColCount-1 do
     FSTraitementDonnees.TableauSoldeMouvement.ColWidths[C]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[C];

     FSTraitementDonnees.TableauAnalyseSoldePeriode.ColCount:=11;
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cols[0].Text:='N°';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cols[1].Text:='                ';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cols[2].Text:='                ';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cols[3].Text:='                ';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cols[4].Text:='                ';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cols[5].Text:='Rubriques';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cols[6].Text:='        Débit        ';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cols[7].Text:='        Crédit        ';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cols[8].Text:='                  ';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cols[9].Text:='                     ';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cols[10].Text:='                    ';

     FSTraitementDonnees.TableauAnalyseSoldePeriode.RowCount:=5;
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Rows[1].Text:='1';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Rows[2].Text:='2';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Rows[3].Text:='3';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Rows[4].Text:='4';

     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[5,1]:='Solde périodique Associer à l''antérieur';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[5,2]:='Solde périodique non Associer à l''antérieur ';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[5,3]:='';
     FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[5,4]:='Solde Total';

     l:=0;
     if(FSTraitementDonnees.RBAfficherSoldeSuperieur.Checked=true)
     then RowCountTiers:=FSTraitementDonnees.TableauDeBohrTiers.RowCount-3
     else RowCountTiers:=FSTraitementDonnees.TableauDeBohrTiers.RowCount-3;

     For R:=1 to RowCountTiers do
     begin
          OKTiers:=false;
          if(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[5,R])>0)and(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[11,R])>0)then
          begin
               if(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[11,R])>=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[5,R]))then
               begin
                    Solde:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[11,R])-strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[5,R]);
                    FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[7,1]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[7,1])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[5,R])),'2','C','');
                    FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[7,2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[7,2])+Solde),'2','C','');
               end
               else
               begin
                    FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[7,1]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[7,1])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[11,R])),'2','C','');
               end;
               OKTiers:=true;
          end
          else
          begin
               FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[7,2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[7,2])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[11,R])),'2','C','');
          end;

          if(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[6,R])>0)and(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[10,R])>0)then
          begin
               if(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[10,R])>=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[6,R]))then
               begin
                    Solde:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[10,R])-strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[6,R]);
                    FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[6,1]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[6,1])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[6,R])),'2','C','');
                    FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[6,2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[6,2])+Solde),'2','C','');
               end
               else
               begin
                    FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[6,1]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[6,1])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[10,R])),'2','C','');
               end;
               OKTiers:=true;
          end
          else
          begin
               FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[6,2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[6,2])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[10,R])),'2','C','');
          end;

          FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[6,4]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[6,4])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[10,R])),'2','C','');
          FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[7,4]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriode.Cells[7,4])+strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[11,R])),'2','C','');

          if(OKTiers=true)then
          begin
               l:=l+1;
               FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Rows[l].Text:=FSTraitementDonnees.TableauDeBohrTiers.Rows[R].Text;
               FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[0,l]:=inttostr(l);
          end;
     end;
     AjusterColWidth(FSTraitementDonnees.TableauAnalyseSoldePeriode,'','');

     if(l>0)then
     begin
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.RowCount:=l+3;
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Rows[l+1].Text:='';
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Rows[l+2].Text:='';
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[2,l+2]:='Total:';
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[7,l+2]:='Total:';
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[12,l+2]:='Total:';

          for R:=1 to l do
          begin
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[3,l+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[3,l+2])+strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[3,R])),'2','C','');
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[4,l+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[4,l+2])+strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[4,R])),'2','C','');
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[5,l+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[5,l+2])+strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[5,R])),'2','C','');
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[6,l+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[6,l+2])+strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[6,R])),'2','C','');
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[8,l+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[8,l+2])+strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[8,R])),'2','C','');
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[9,l+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[9,l+2])+strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[9,R])),'2','C','');
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[10,l+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[10,l+2])+strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[10,R])),'2','C','');
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[11,l+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[11,l+2])+strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[11,R])),'2','C','');
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[13,l+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[13,l+2])+strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[13,R])),'2','C','');
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[14,l+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[14,l+2])+strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[14,R])),'2','C','');
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[15,l+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[15,l+2])+strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[15,R])),'2','C','');
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[16,l+2]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[16,l+2])+strtoreal(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Cells[16,R])),'2','C','');
          end;
     end
     else FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.RowCount:=2;

     AjusterColWidth(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers,'','');


     if(FSTraitementDonnees.EditTableauSelect.Text='Bohr')then
     begin
          FSTraitementDonnees.TableauPeriode.ColCount:=11;
          FSTraitementDonnees.TableauPeriode.Cols[0].Text:='N°';
          FSTraitementDonnees.TableauPeriode.Cols[1].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[2].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[3].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[4].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[5].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[6].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[7].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[8].Text:='Antérieur';
          FSTraitementDonnees.TableauPeriode.Cols[9].Text:='Périodique';
          FSTraitementDonnees.TableauPeriode.Cols[10].Text:='Global';

          FSTraitementDonnees.TableauPeriode.RowCount:=2;
          FSTraitementDonnees.TableauPeriode.Rows[1].Text:='..';
          FSTraitementDonnees.TableauPeriode.Cells[0,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[1,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[2,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[3,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[4,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[5,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[6,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[7,1]:='Rubriques';
          FSTraitementDonnees.TableauPeriode.Cells[8,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date-1);
          FSTraitementDonnees.TableauPeriode.Cells[9,1]:='Analyse du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);
          FSTraitementDonnees.TableauPeriode.Cells[10,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);

          FSTraitementDonnees.TableauPeriode.ColWidths[0]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[0];
          FSTraitementDonnees.TableauPeriode.ColWidths[1]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[2]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[3]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[4]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[5]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[6]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[7]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[1]-77;
          FSTraitementDonnees.TableauPeriode.ColWidths[8]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[2]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[3]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[4];
          FSTraitementDonnees.TableauPeriode.ColWidths[9]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[5]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[6]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[7];
          FSTraitementDonnees.TableauPeriode.ColWidths[10]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[8]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[9]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[10];
          end;

     if(FSTraitementDonnees.EditTableauSelect.Text='Tiers')then
     begin
          FSTraitementDonnees.TableauPeriode.ColCount:=17;
          FSTraitementDonnees.TableauPeriode.Cols[0].Text:='N°';
          FSTraitementDonnees.TableauPeriode.Cols[1].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[2].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[3].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[4].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[5].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[6].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[7].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[8].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[9].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[10].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[11].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[12].Text:='Antérieur';
          FSTraitementDonnees.TableauPeriode.Cols[13].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[14].Text:='Périodique';
          FSTraitementDonnees.TableauPeriode.Cols[15].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[16].Text:='Global';

          FSTraitementDonnees.TableauPeriode.RowCount:=2;
          FSTraitementDonnees.TableauPeriode.Rows[1].Text:='..';
          FSTraitementDonnees.TableauPeriode.Cells[0,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[1,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[2,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[3,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[4,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[5,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[6,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[7,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[8,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[9,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[10,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[11,1]:='Tiers';
          FSTraitementDonnees.TableauPeriode.Cells[12,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date-1);;
          FSTraitementDonnees.TableauPeriode.Cells[13,1]:='........';
          FSTraitementDonnees.TableauPeriode.Cells[14,1]:='Analyse du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);;
          FSTraitementDonnees.TableauPeriode.Cells[15,1]:='........';
          FSTraitementDonnees.TableauPeriode.Cells[16,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);

          FSTraitementDonnees.TableauPeriode.ColWidths[0]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[0];
          FSTraitementDonnees.TableauPeriode.ColWidths[1]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[2]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[3]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[4]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[5]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[6]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[7]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[8]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[9]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[10]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[11]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[2]-99;
          FSTraitementDonnees.TableauPeriode.ColWidths[12]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[3]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[4]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[5]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[6];
          FSTraitementDonnees.TableauPeriode.ColWidths[13]:=40;
          FSTraitementDonnees.TableauPeriode.ColWidths[14]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[8]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[9]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[10]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[11];
          FSTraitementDonnees.TableauPeriode.ColWidths[15]:=40;
          FSTraitementDonnees.TableauPeriode.ColWidths[16]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[13]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[14]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[15]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[16];
     end;

     ////////////////////////////////////////////////////////////////////////////
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[0].Text:='N°';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[1].Text:='Ordre';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[2].Text:='Num';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[3].Text:='Date';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[4].Text:='P°TM';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[5].Text:='P°M';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[6].Text:='Mode de payement';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[7].Text:='Tiers';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[8].Text:='Type Mouvement';

     l:=8;
     for C:=1 to FSTraitementDonnees.TableauTitreDataTiers.ColCount-1 do
     begin
          if(FSTraitementDonnees.TableauTitreDataTiers.Cells[C,1]='OK')then
          begin
               l:=l+1;
               FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[l].Text:=CompleteZeroGauche(inttostr(C),'2')+FSTraitementDonnees.TableauTitreDataTiers.Cells[C,0];
          end;
     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
     end;

     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[l+1].Text:='';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[l+2].Text:='';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[l+3].Text:='';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[l+4].Text:='';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[l+5].Text:='';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[l+6].Text:='';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[l+7].Text:='';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[l+8].Text:='';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[l+9].Text:='';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[l+10].Text:='';

     FSTraitementDonnees.TableauDetailFormuleListeMouvement.ColCount:=l+11;

     FSTraitementDonnees.TableauDetailFormuleListeMouvement.RowCount:=2;
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Rows[1].Text:='';

     NotCol:='1';

     for R:=1 to FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-3 do
     begin
          FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[0,R+1]:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[0,R];
          FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[1,R+1]:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R];
          FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[2,R+1]:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[2,R];
          FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[3,R+1]:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[5,R];
          FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[4,R+1]:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[3,R];
          FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[5,R+1]:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[4,R];
          FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[6,R+1]:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[6,R];
          FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[7,R+1]:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[11,R];
          FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[8,R+1]:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[34,R];

          //RTiers:=ChercherTiers(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[8,R],FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[9,R],FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[10,R],'');
          RTiers.Data1:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[37,R];
          RTiers.Data2:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[38,R];
          RTiers.Data3:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[39,R];
          RTiers.Data4:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[40,R];
          RTiers.Data5:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[41,R];
          RTiers.Data6:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[42,R];

          for T:=9 to l do
          begin
               if(FSTraitementDonnees.RBInclureTitreDataTiers.Checked=true)then
               begin
                    if(Firstlaters(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0],2)='01')then FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=RTiers.Data1;
                    if(Firstlaters(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0],2)='02')then FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=RTiers.Data2;
                    if(Firstlaters(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0],2)='03')then FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=RTiers.Data3;
                    if(Firstlaters(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0],2)='04')then FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=RTiers.Data4;
                    if(Firstlaters(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0],2)='05')then FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=RTiers.Data5;
                    if(Firstlaters(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0],2)='06')then FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=RTiers.Data6;
               end
               else
               begin
                    if(Firstlaters(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0],2)='01')then
                    begin
                         if(FirstLaters('01'+RTiers.Data1,longueur(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0]))=FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0])
                         then FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=lastlaters(RTiers.Data1,longueur(RTiers.Data1)-(longueur(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0])-2))
                         else FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=RTiers.Data1;
                    end;
                    if(Firstlaters(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0],2)='02')then
                    begin
                         if(FirstLaters('02'+RTiers.Data2,longueur(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0]))=FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0])
                         then FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=lastlaters(RTiers.Data2,longueur(RTiers.Data2)-(longueur(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0])-2))
                         else FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=RTiers.Data2;
                    end;
                    if(Firstlaters(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0],2)='03')then
                    begin
                         if(FirstLaters('03'+RTiers.Data3,longueur(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0]))=FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0])
                         then FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=lastlaters(RTiers.Data3,longueur(RTiers.Data3)-(longueur(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0])-2))
                         else FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=RTiers.Data3;
                    end;
                    if(Firstlaters(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0],2)='04')then
                    begin
                         if(FirstLaters('04'+RTiers.Data4,longueur(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0]))=FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0])
                         then FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=lastlaters(RTiers.Data4,longueur(RTiers.Data4)-(longueur(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0])-2))
                         else FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=RTiers.Data4;
                    end;
                    if(Firstlaters(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0],2)='05')then
                    begin
                         if(FirstLaters('05'+RTiers.Data5,longueur(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0]))=FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0])
                         then FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=lastlaters(RTiers.Data5,longueur(RTiers.Data5)-(longueur(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0])-2))
                         else FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=RTiers.Data5;
                    end;
                    if(Firstlaters(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0],2)='06')then
                    begin
                         if(FirstLaters('06'+RTiers.Data6,longueur(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0]))=FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0])
                         then FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=lastlaters(RTiers.Data6,longueur(RTiers.Data6)-(longueur(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0])-2))
                         else FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,R]:=RTiers.Data6;
                    end;
               end;
          end;
     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
     end;
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.RowCount:=R+2;//FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount+1;
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Rows[FSTraitementDonnees.TableauDetailFormuleListeMouvement.RowCount-1].Text:='';
     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Rows[FSTraitementDonnees.TableauDetailFormuleListeMouvement.RowCount-2].Text:='';

     RTotal:=FSTraitementDonnees.TableauDetailFormuleListeMouvement.RowCount-1;

     for T:=9 to l do FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0]:=Lastlaters(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0],longueur(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[T,0])-2);

     if(FSTraitementDonnees.RBInclureDetailMouvementParFamilles.Checked=true)then
     begin
           TMouvementCopie:=RemplireTMouvement(FSTraitementDonnees.TableauMouvement.Cells[0,strtointeger(FSTraitementDonnees.EditRowFirstSelectDebitCredit.Text)]);

           TypeProces:='Business';
           if(strtointeger(FSTraitementDonnees.TableauMouvement.Cells[1,strtointeger(FSTraitementDonnees.EditRowFirstSelectDebitCredit.Text)])<=High(TMouvementCopie))
           then FichierConserne:=TMouvementCopie[strtointeger(FSTraitementDonnees.TableauMouvement.Cells[1,strtointeger(FSTraitementDonnees.EditRowFirstSelectDebitCredit.Text)])].CodeTypeFormuleBase
           else FichierConserne:='';
           if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                if(FichierConserne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConserne+'} recherché !');
           end;

           ChFormule:=Adresse;
           assignfile(FFormule,ChFormule);
           try
           if FileExists(ChFormule)then
           Reset(FFormule)
           else begin Rewrite(FFormule); exit end;
           seek(FFormule,0);
           R:=0;
           while not eof(FFormule)do
           begin
                Read(FFormule,RFormule);
                FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cols[R+l+1].Text:=RFormule.Libelle;
                if(RFormule.Active=false)or(RFormule.TypeAffichage='%')then
                begin
                     if(NotCol='')
                     then NotCol:=inttostr(R+l+1)
                     else NotCol:=NotCol+';'+inttostr(R+l+1);
                end;
           R:=R+1;
           end;
           finally
           CloseFile(FFormule);
           end;
      
           TMouvementCopie:=RemplireTMouvement('');
           TListeMouvementCopie:=RemplireTListeMouvement('',ExerciceAnnee,0,999999999,PBeginDM,PEndDM);
           TTypeMouvementCopie:=RemplireTTypeMouvement;

           ColCountMax:=R+l;
           FSTraitementDonnees.TableauDetailFormuleListeMouvement.Rows[RTotal].Text:='';
           for R:=1 to FSTraitementDonnees.TableauDetailFormuleListeMouvement.RowCount-3 do
           begin
                if(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[8,R]='LM')then
                begin
                     DetailFormuleListeMouvement(strtointeger(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[1,R]),TTypeMouvementCopie[strtointeger(FSTraitementDonnees.TableauMouvement.Cells[0,FSTraitementDonnees.TableauMouvement.Row])].DesignationTypeMouvement,TMouvementCopie[strtointeger(FSTraitementDonnees.TableauMouvement.Cells[1,FSTraitementDonnees.TableauMouvement.Row])].CodeTypeFormuleBase,RRegistreFormule0,RRegistreFormule1,RRegistreFormule2,RRegistreFormule3,RRegistreFormule4,RRegistreFormule5,RRegistreFormule6,RRegistreFormule7,RRegistreFormule8,RRegistreFormule9);

                     if(TMouvementCopie[strtointeger(FSTraitementDonnees.TableauMouvement.Cells[1,FSTraitementDonnees.TableauMouvement.Row])].DebitCredit=FSTraitementDonnees.EditDebitCreditPositif.Text)then //if(TMouvementCopie[strtointeger(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[5,R])].DebitCredit=FSTraitementDonnees.EditDebitCreditPositif.Text)then
                     begin
                          SigneDebitCredit:=1;
                     end
                     else
                     begin
                          SigneDebitCredit:=-1;
                     end;

                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+1,0]:=RRegistreFormule0.LibelleFormule;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+2,0]:=RRegistreFormule1.LibelleFormule;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+3,0]:=RRegistreFormule2.LibelleFormule;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+4,0]:=RRegistreFormule3.LibelleFormule;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+5,0]:=RRegistreFormule4.LibelleFormule;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+6,0]:=RRegistreFormule5.LibelleFormule;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+7,0]:=RRegistreFormule6.LibelleFormule;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+8,0]:=RRegistreFormule7.LibelleFormule;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+9,0]:=RRegistreFormule8.LibelleFormule;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+10,0]:=RRegistreFormule9.LibelleFormule;

                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+1,1]:=RRegistreFormule0.TypeAffichage;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+2,1]:=RRegistreFormule1.TypeAffichage;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+3,1]:=RRegistreFormule2.TypeAffichage;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+4,1]:=RRegistreFormule3.TypeAffichage;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+5,1]:=RRegistreFormule4.TypeAffichage;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+6,1]:=RRegistreFormule5.TypeAffichage;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+7,1]:=RRegistreFormule6.TypeAffichage;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+8,1]:=RRegistreFormule7.TypeAffichage;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+9,1]:=RRegistreFormule8.TypeAffichage;
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+10,1]:=RRegistreFormule9.TypeAffichage;

                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+1,R]:=Vergule(floattostr(RRegistreFormule0.ValeurFormule*SigneDebitCredit),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+2,R]:=Vergule(floattostr(RRegistreFormule1.ValeurFormule*SigneDebitCredit),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+3,R]:=Vergule(floattostr(RRegistreFormule2.ValeurFormule*SigneDebitCredit),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+4,R]:=Vergule(floattostr(RRegistreFormule3.ValeurFormule*SigneDebitCredit),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+5,R]:=Vergule(floattostr(RRegistreFormule4.ValeurFormule*SigneDebitCredit),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+6,R]:=Vergule(floattostr(RRegistreFormule5.ValeurFormule*SigneDebitCredit),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+7,R]:=Vergule(floattostr(RRegistreFormule6.ValeurFormule*SigneDebitCredit),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+8,R]:=Vergule(floattostr(RRegistreFormule7.ValeurFormule*SigneDebitCredit),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+9,R]:=Vergule(floattostr(RRegistreFormule8.ValeurFormule*SigneDebitCredit),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+10,R]:=Vergule(floattostr(RRegistreFormule9.ValeurFormule*SigneDebitCredit),'2','C','');

                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+1,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+1,RTotal])+(RRegistreFormule0.ValeurFormule*SigneDebitCredit));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+2,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+2,RTotal])+(RRegistreFormule1.ValeurFormule*SigneDebitCredit));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+3,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+3,RTotal])+(RRegistreFormule2.ValeurFormule*SigneDebitCredit));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+4,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+4,RTotal])+(RRegistreFormule3.ValeurFormule*SigneDebitCredit));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+5,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+5,RTotal])+(RRegistreFormule4.ValeurFormule*SigneDebitCredit));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+6,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+6,RTotal])+(RRegistreFormule5.ValeurFormule*SigneDebitCredit));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+7,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+7,RTotal])+(RRegistreFormule6.ValeurFormule*SigneDebitCredit));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+8,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+8,RTotal])+(RRegistreFormule7.ValeurFormule*SigneDebitCredit));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+9,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+9,RTotal])+(RRegistreFormule8.ValeurFormule*SigneDebitCredit));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+10,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+10,RTotal])+(RRegistreFormule9.ValeurFormule*SigneDebitCredit));
                end
                else
                begin
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+1,R]:=Vergule(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[12,R],'2','C','');

                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+2,R]:=Vergule(floattostr(0),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+3,R]:=Vergule(floattostr(0),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+4,R]:=Vergule(floattostr(0),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+5,R]:=Vergule(floattostr(0),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+6,R]:=Vergule(floattostr(0),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+7,R]:=Vergule(floattostr(0),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+8,R]:=Vergule(floattostr(0),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+9,R]:=Vergule(floattostr(0),'2','C','');
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+10,R]:=Vergule(floattostr(0),'2','C','');

                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+1,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+1,RTotal])+(strtoreal(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[l+1,R])));

                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+2,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+2,RTotal])+(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+2,R])));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+3,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+3,RTotal])+(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+3,R])));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+4,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+4,RTotal])+(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+4,R])));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+5,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+5,RTotal])+(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+5,R])));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+6,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+6,RTotal])+(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+6,R])));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+7,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+7,RTotal])+(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+7,R])));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+8,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+8,RTotal])+(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+8,R])));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+9,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+9,RTotal])+(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+9,R])));
                     FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+10,RTotal]:=floattostr(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+10,RTotal])+(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[l+10,R])));
                end;
           end;
                                                                                                                                                                       
           TypeAffichageFormuleNonVisible:=ListeTypeAffichageFormuleNonVisible(FSTraitementDonnees.TableauMouvement.Cells[8,FSTraitementDonnees.TableauMouvement.Row],'TableauFormules');
           for C:= l+1 to FSTraitementDonnees.TableauDetailFormuleListeMouvement.ColCount-1 do
           begin
                if(strtoreal(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[C,RTotal])=0)
                or(C>ColCountMax)
                or(ExisteCharInString(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[C,1],TypeAffichageFormuleNonVisible))
                then
                begin
                     if(NotCol='')
                     then NotCol:=inttostr(C)
                     else NotCol:=NotCol+';'+inttostr(C);
                end
                else FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[C,RTotal]:=Vergule(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[C,RTotal],'2','C','');
           end;

           for C:=1 to FSTraitementDonnees.TableauDetailFormuleListeMouvement.ColCount-1 do
           if ExisteNumInTexte(inttostr(C),NotCol)then FSTraitementDonnees.TableauDetailFormuleListeMouvement.ColWidths[C]:=0;

           FSTraitementDonnees.TableauDetailFormuleListeMouvement.RowHeights[1]:=1;
           FSTraitementDonnees.TableauDetailFormuleListeMouvement.FixedRows:=2;
           AjusterColWidth(FSTraitementDonnees.TableauDetailFormuleListeMouvement,'1',NotCol);
     end;
     ////////////////////////////////////////////////////////////////////////////

     AfficherParArticleRecherche(FSTraitementDonnees.EditCodeArticleRecherche.Text,true);

     FSTraitementDonnees.Rapport.Lines.Add('Fin de traitement.');

     FSTraitementDonnees.AffichePatienter.Visible:=false;

     B:=GetTickCount;
     FSTraitementDonnees.LabelTempsAttenteTableauBohrs.Caption:='Temps= '+inttostr(B-A)+' ms';

     begin
          FSTraitementDonnees.Show;
          LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:
          ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:
     end;

     if(FSTraitementDonnees.PageTableauBohr.Visible=false)then
     begin
          FSTraitementDonnees.PageTableauBohr.Visible:=true;
     end;

     if(FSTraitementDonnees.RBTailleColonneMax.Checked=true)then
     begin
          for C:=1 to FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColCount-1 do
          begin
               FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColWidths[C]:=MinInt(strtointeger(FSTraitementDonnees.EditTailleColonneMax.Text),FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColWidths[C]);
          end;
     end;

     AccelerationAffichageTableau(FSTraitementDonnees.TableauDeBohrTiers,false);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers,false);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauAnalysePeriodique,false);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauFinanceStructure,false);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,false);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,false);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauArborescenceArticle,false);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauTitreDataTiers,false);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauDetailFormuleListeMouvement,false);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauAnalysePeriodique,false);
     AccelerationAffichageTableau(FSTraitementDonnees.TableauPeriode,false);
     
     if(ListeNotCol(FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique)<>'')then NotCol:=ListeNotCol(FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique);

     for C:=1 to FSTraitementDonnees.TableauListeAppartenanceMouvementTB.ColCount-1 do if(ExisteNumInTexte(inttostr(C),NotCol))then FSTraitementDonnees.TableauListeAppartenanceMouvementTB.ColWidths[C]:=0;

     AppliquerActiveColsTableaux(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Name,NotRow,NotCol);

end;

procedure TFSTraitementDonnees.TableauDeBohrTiersClick(Sender: TObject);
var NotTrieRow:integer;
begin
FSTraitementDonnees.EditTableauSelect.Text:='Tiers';

     if(FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked=true)then
     begin
          FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked:=false;
          FSTraitementDonnees.EditIndiceRubriqueTriCol.Text:=inttostr(FSTraitementDonnees.TableauDeBohrTiers.Col);
          EnregistrerOptionsTraitementDonnees;
          if(FSTraitementDonnees.TableauDeBohrTiers.Col in[2,7,12])
          then FSTraitementDonnees.EditTypeDataTrie.Text:=''
          else FSTraitementDonnees.EditTypeDataTrie.Text:='Num';
          if(FSTraitementDonnees.RBAfficherSoldeSuperieur.Checked=true)then NotTrieRow:=4 else NotTrieRow:=3;
          TrierTableauARowSpecial(FSTraitementDonnees.TableauDeBohrTiers,1,FSTraitementDonnees.TableauDeBohrTiers.RowCount-NotTrieRow,1,FSTraitementDonnees.EditIndiceRubriqueTriCol.Text,FSTraitementDonnees.EditTypeDataTrie.Text,FSTraitementDonnees.EditTypeTrie.Text);
                                                                  
          EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditIndiceRubriqueTriCol.Name,FSTraitementDonnees.EditIndiceRubriqueTriCol.Text);
          EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditTypeDataTrie.Name,FSTraitementDonnees.EditTypeDataTrie.Text);
          EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditTypeTrie.Name,FSTraitementDonnees.EditTypeTrie.Text);
     end;

     if(FSTraitementDonnees.RBFixeColonne.Checked=true)then
     begin
          FSTraitementDonnees.TableauDeBohrTiers.FixedCols:=strtointeger(FSTraitementDonnees.EditFixeColonne.Text);
          FSTraitementDonnees.RBFixeColonne.Checked:=false;
     end;

     if(FSTraitementDonnees.EditTableauSelect.Text='Tiers')then
     begin
          FSTraitementDonnees.TableauPeriode.ColCount:=17;
          FSTraitementDonnees.TableauPeriode.Cols[0].Text:='N°';
          FSTraitementDonnees.TableauPeriode.Cols[1].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[2].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[3].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[4].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[5].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[6].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[7].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[8].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[9].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[10].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[11].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[12].Text:='Antérieur';
          FSTraitementDonnees.TableauPeriode.Cols[13].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[14].Text:='Périodique';
          FSTraitementDonnees.TableauPeriode.Cols[15].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[16].Text:='Global';

          FSTraitementDonnees.TableauPeriode.RowCount:=2;
          FSTraitementDonnees.TableauPeriode.Rows[1].Text:='..';
          FSTraitementDonnees.TableauPeriode.Cells[0,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[1,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[2,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[3,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[4,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[5,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[6,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[7,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[8,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[9,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[10,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[11,1]:='Tiers';
          FSTraitementDonnees.TableauPeriode.Cells[12,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date-1);;
          FSTraitementDonnees.TableauPeriode.Cells[13,1]:='........';
          FSTraitementDonnees.TableauPeriode.Cells[14,1]:='Analyse du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);;
          FSTraitementDonnees.TableauPeriode.Cells[15,1]:='........';
          FSTraitementDonnees.TableauPeriode.Cells[16,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);

          FSTraitementDonnees.TableauPeriode.ColWidths[0]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[0];
          FSTraitementDonnees.TableauPeriode.ColWidths[1]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[2]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[3]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[4]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[5]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[6]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[7]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[8]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[9]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[10]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[11]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[2]-99;
          FSTraitementDonnees.TableauPeriode.ColWidths[12]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[3]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[4]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[5]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[6];
          FSTraitementDonnees.TableauPeriode.ColWidths[13]:=40;
          FSTraitementDonnees.TableauPeriode.ColWidths[14]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[8]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[9]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[10]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[11];
          FSTraitementDonnees.TableauPeriode.ColWidths[15]:=40;
          FSTraitementDonnees.TableauPeriode.ColWidths[16]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[13]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[14]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[15]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[16];
     end;
end;

procedure TFSTraitementDonnees.RBIndiceRubriqueTriColClick(
  Sender: TObject);
begin
     FSTraitementDonnees.EditIndiceRubriqueTriCol.Text:='';
end;

procedure TFSTraitementDonnees.EditTypeTrieKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSTraitementDonnees.EditTiersDateDebutCloseUp(Sender: TObject);
begin
InitialisationPageTraitementTiers;
SuspendreAffichage;

FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
begin
     SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
end;
end;

procedure TFSTraitementDonnees.EditTiersDateFinCloseUp(Sender: TObject);
begin
InitialisationPageTraitementTiers;
SuspendreAffichage;

FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
begin
     SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
end;
end;

procedure TFSTraitementDonnees.EditRechercheDateDebutCloseUp(
  Sender: TObject);
begin
SuspendreAffichage;

FSTraitementDonnees.CacherTableauAvis.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked;

if(FSTraitementDonnees.CacherTableauAvis.Visible=false)then
begin
     ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
     SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
end;
end;

procedure TFSTraitementDonnees.EditRechercheDateFinCloseUp(
  Sender: TObject);
begin
SuspendreAffichage;

FSTraitementDonnees.CacherTableauAvis.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked;

if(FSTraitementDonnees.CacherTableauAvis.Visible=false)then
begin
     ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
     SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
end;
end;

Procedure TransfertTableauBohr(TableauDeBohrTiers:TStringGrid; RBAfficherSoldeSuperieur:boolean; SoldeMinimum:string);
var  R,l,T:integer;
begin
     if(RBAfficherSoldeSuperieur=true)then
     begin
          Application.ProcessMessages;
          FSTraitementDonnees.TableauDeBohrTiersAnnuler.ColCount:=TableauDeBohrTiers.ColCount;
          FSTraitementDonnees.TableauDeBohrTiersAnnuler.RowCount:=1;
          FSTraitementDonnees.TableauDeBohrTiersAnnuler.Rows[0].Text:='';
          FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[1,0]:='0000';
          FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[2,0]:='Cumul des Soldes Inférieurs à '+SoldeMinimum+' '+FSTraitementDonnees.EditSigleDevise.Text;

          FSTraitementDonnees.TableauDeBohrTiersTransfert.ColCount:=TableauDeBohrTiers.ColCount;
          FSTraitementDonnees.TableauDeBohrTiersTransfert.Rows[0].Text:=TableauDeBohrTiers.Rows[0].Text;
          l:=0;
          for R:=1 to TableauDeBohrTiers.RowCount-3 do
          begin
               if(strtoreal(TableauDeBohrTiers.Cells[15,R])>=strtoreal(SoldeMinimum))
               or(strtoreal(TableauDeBohrTiers.Cells[16,R])>=strtoreal(SoldeMinimum))
               then
               begin
                    FSTraitementDonnees.Rapport.Lines.Add('Transfert '+TableauDeBohrTiers.Cells[2,R]);
                    l:=l+1;
                    FSTraitementDonnees.TableauDeBohrTiersTransfert.Rows[l].Text:='';
                    FSTraitementDonnees.TableauDeBohrTiersTransfert.Rows[l].Text:=TableauDeBohrTiers.Rows[R].Text;
               end
               else
               begin
                    FSTraitementDonnees.Rapport.Lines.Add('Soldé '+TableauDeBohrTiers.Cells[2,R]);

                    FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[3,0]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[3,0])+strtoreal(TableauDeBohrTiers.Cells[3,R])),'2','C','');
                    FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[4,0]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[4,0])+strtoreal(TableauDeBohrTiers.Cells[4,R])),'2','C','');
                    FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[5,0]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[5,0])+strtoreal(TableauDeBohrTiers.Cells[5,R])),'2','C','');
                    FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[6,0]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[6,0])+strtoreal(TableauDeBohrTiers.Cells[6,R])),'2','C','');

                    FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[8,0]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[8,0])+strtoreal(TableauDeBohrTiers.Cells[8,R])),'2','C','');
                    FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[9,0]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[9,0])+strtoreal(TableauDeBohrTiers.Cells[9,R])),'2','C','');
                    FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[10,0]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[10,0])+strtoreal(TableauDeBohrTiers.Cells[10,R])),'2','C','');
                    FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[11,0]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[11,0])+strtoreal(TableauDeBohrTiers.Cells[11,R])),'2','C','');

                    FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[13,0]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[13,0])+strtoreal(TableauDeBohrTiers.Cells[13,R])),'2','C','');
                    FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[14,0]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[14,0])+strtoreal(TableauDeBohrTiers.Cells[14,R])),'2','C','');
                    FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[15,0]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[15,0])+strtoreal(TableauDeBohrTiers.Cells[15,R])),'2','C','');
                    FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[16,0]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDeBohrTiersAnnuler.Cells[16,0])+strtoreal(TableauDeBohrTiers.Cells[16,R])),'2','C','');
               end;
          end;
          l:=l+1;
          FSTraitementDonnees.TableauDeBohrTiersTransfert.Rows[l].Text:=FSTraitementDonnees.TableauDeBohrTiersAnnuler.Rows[0].Text;

          LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

          FSTraitementDonnees.Rapport.Lines.Add('Remplissage du tableau de bohr...');

          for R:=1 to l do
          begin
               FSTraitementDonnees.Rapport.Lines.Add('Remplissage: '+FSTraitementDonnees.TableauDeBohrTiersTransfert.Cells[2,R]);

               TableauDeBohrTiers.Rows[R].Text:='';
               TableauDeBohrTiers.Rows[R].Text:=FSTraitementDonnees.TableauDeBohrTiersTransfert.Rows[R].Text;
          end;
          T:=l;

          LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

          TableauDeBohrTiers.Rows[T+1].Text:='';
          TableauDeBohrTiers.Rows[T+2].Text:='';
          TableauDeBohrTiers.Cells[2,T+2]:='Total:';
          TableauDeBohrTiers.Cells[7,T+2]:='Total:';
          TableauDeBohrTiers.Cells[12,T+2]:='Total:';
          l:=1;
          while(l<=T)do
          begin
               TableauDeBohrTiers.Cells[3,T+2]:=Vergule(floattostr(strtoreal(TableauDeBohrTiers.Cells[3,T+2])+strtoreal(TableauDeBohrTiers.Cells[3,l])),'2','C','');
               TableauDeBohrTiers.Cells[4,T+2]:=Vergule(floattostr(strtoreal(TableauDeBohrTiers.Cells[4,T+2])+strtoreal(TableauDeBohrTiers.Cells[4,l])),'2','C','');
               TableauDeBohrTiers.Cells[5,T+2]:=Vergule(floattostr(strtoreal(TableauDeBohrTiers.Cells[5,T+2])+strtoreal(TableauDeBohrTiers.Cells[5,l])),'2','C','');
               TableauDeBohrTiers.Cells[6,T+2]:=Vergule(floattostr(strtoreal(TableauDeBohrTiers.Cells[6,T+2])+strtoreal(TableauDeBohrTiers.Cells[6,l])),'2','C','');
               TableauDeBohrTiers.Cells[8,T+2]:=Vergule(floattostr(strtoreal(TableauDeBohrTiers.Cells[8,T+2])+strtoreal(TableauDeBohrTiers.Cells[8,l])),'2','C','');
               TableauDeBohrTiers.Cells[9,T+2]:=Vergule(floattostr(strtoreal(TableauDeBohrTiers.Cells[9,T+2])+strtoreal(TableauDeBohrTiers.Cells[9,l])),'2','C','');
               TableauDeBohrTiers.Cells[10,T+2]:=Vergule(floattostr(strtoreal(TableauDeBohrTiers.Cells[10,T+2])+strtoreal(TableauDeBohrTiers.Cells[10,l])),'2','C','');
               TableauDeBohrTiers.Cells[11,T+2]:=Vergule(floattostr(strtoreal(TableauDeBohrTiers.Cells[11,T+2])+strtoreal(TableauDeBohrTiers.Cells[11,l])),'2','C','');
               TableauDeBohrTiers.Cells[13,T+2]:=Vergule(floattostr(strtoreal(TableauDeBohrTiers.Cells[13,T+2])+strtoreal(TableauDeBohrTiers.Cells[13,l])),'2','C','');
               TableauDeBohrTiers.Cells[14,T+2]:=Vergule(floattostr(strtoreal(TableauDeBohrTiers.Cells[14,T+2])+strtoreal(TableauDeBohrTiers.Cells[14,l])),'2','C','');
               TableauDeBohrTiers.Cells[15,T+2]:=Vergule(floattostr(strtoreal(TableauDeBohrTiers.Cells[15,T+2])+strtoreal(TableauDeBohrTiers.Cells[15,l])),'2','C','');
               TableauDeBohrTiers.Cells[16,T+2]:=Vergule(floattostr(strtoreal(TableauDeBohrTiers.Cells[16,T+2])+strtoreal(TableauDeBohrTiers.Cells[16,l])),'2','C','');
          l:=l+1;
          end;

          if(T>0)then TableauDeBohrTiers.RowCount:=T+3
                 else TableauDeBohrTiers.RowCount:=2;

          LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

          FSTraitementDonnees.TableauDeBohrTiersTransfert.RowCount:=TableauDeBohrTiers.RowCount-2;
          AjusterColWidth(FSTraitementDonnees.TableauDeBohrTiersTransfert,'','');

          for R:=1 to TableauDeBohrTiers.RowCount-3 do
          begin
               TableauDeBohrTiers.Cells[0,R]:=inttostr(R);
          end;
     end;
end;

procedure TFSTraitementDonnees.RBAfficherSoldeSuperieurClick(
  Sender: TObject);
begin
     FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;

     FSTraitementDonnees.EditSoldeMinimum.Enabled:=FSTraitementDonnees.RBAfficherSoldeSuperieur.Checked;
     if(FSTraitementDonnees.RBAfficherSoldeSuperieur.Checked=false)
     then
     begin
          FSTraitementDonnees.EditSoldeMinimum.Text:='';
          if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=false)then
          begin
               FSTraitementDonnees.AffichePatienter.Visible:=true;
               FSTraitementDonnees.TimerTempAttente.Enabled:=true;
          end;
     end
     else
     begin
          if(FSTraitementDonnees.EditSoldeMinimum.Text<>'')then
          begin
               if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=false)then ActionTableauDeBohr;
          end
          else FSTraitementDonnees.EditSoldeMinimum.SetFocus;
     end;
end;

procedure TFSTraitementDonnees.TableauCumulMouvementClick(Sender: TObject);
begin
FSTraitementDonnees.EditTableauSelect.Text:='Bohr';

FSTraitementDonnees.AfficheOptionPrintFinanceProjets.Height:=31;
end;

procedure TFSTraitementDonnees.TableauSoldeMouvementClick(Sender: TObject);
begin
FSTraitementDonnees.EditTableauSelect.Text:='Bohr';

FSTraitementDonnees.AfficheOptionPrintFinanceProjets.Height:=31;
end;

procedure TFSTraitementDonnees.EditSoldeMinimumExit(Sender: TObject);
begin
     FSTraitementDonnees.AffichePatienter.Visible:=true;
     FSTraitementDonnees.TimerTempAttente.Enabled:=true;
end;

procedure TFSTraitementDonnees.TableauAnalyseSoldePeriodeTiersClick(
  Sender: TObject);
var NotTrieRow:integer;
begin
FSTraitementDonnees.EditTableauSelect.Text:='Tiers antérieur';

     if(FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked=true)then
     begin
          FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked:=false;
          FSTraitementDonnees.EditIndiceRubriqueTriCol.Text:=inttostr(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Col);
          EnregistrerOptionsTraitementDonnees;
          if(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Col in[2,7,12])
          then FSTraitementDonnees.EditTypeDataTrie.Text:=''
          else FSTraitementDonnees.EditTypeDataTrie.Text:='Num';
          if(FSTraitementDonnees.RBAfficherSoldeSuperieur.Checked=true)then NotTrieRow:=4 else NotTrieRow:=3;
          TrierTableauARowSpecial(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers,1,FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.RowCount-NotTrieRow,1,FSTraitementDonnees.EditIndiceRubriqueTriCol.Text,FSTraitementDonnees.EditTypeDataTrie.Text,FSTraitementDonnees.EditTypeTrie.Text);
     end;

     if(FSTraitementDonnees.RBFixeColonne.Checked=true)then
     begin
          FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.FixedCols:=strtointeger(FSTraitementDonnees.EditFixeColonne.Text);
          FSTraitementDonnees.RBFixeColonne.Checked:=false;
     end;

if(FSTraitementDonnees.EditTableauSelect.Text='Tiers antérieur')then
     begin
          FSTraitementDonnees.TableauPeriode.ColCount:=17;
          FSTraitementDonnees.TableauPeriode.Cols[0].Text:='N°';
          FSTraitementDonnees.TableauPeriode.Cols[1].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[2].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[3].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[4].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[5].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[6].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[7].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[8].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[9].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[10].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[11].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[12].Text:='Antérieur';
          FSTraitementDonnees.TableauPeriode.Cols[13].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[14].Text:='Périodique';
          FSTraitementDonnees.TableauPeriode.Cols[15].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[16].Text:='Global';

          FSTraitementDonnees.TableauPeriode.RowCount:=2;
          FSTraitementDonnees.TableauPeriode.Rows[1].Text:='..';
          FSTraitementDonnees.TableauPeriode.Cells[0,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[1,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[2,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[3,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[4,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[5,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[6,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[7,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[8,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[9,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[10,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[11,1]:='Tiers';
          FSTraitementDonnees.TableauPeriode.Cells[12,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date-1);;
          FSTraitementDonnees.TableauPeriode.Cells[13,1]:='........';
          FSTraitementDonnees.TableauPeriode.Cells[14,1]:='Analyse du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);;
          FSTraitementDonnees.TableauPeriode.Cells[15,1]:='........';
          FSTraitementDonnees.TableauPeriode.Cells[16,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);

          FSTraitementDonnees.TableauPeriode.ColWidths[0]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[0];
          FSTraitementDonnees.TableauPeriode.ColWidths[1]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[2]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[3]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[4]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[5]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[6]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[7]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[8]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[9]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[10]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[11]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[2]-99;
          FSTraitementDonnees.TableauPeriode.ColWidths[12]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[3]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[4]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[5]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[6];
          FSTraitementDonnees.TableauPeriode.ColWidths[13]:=40;
          FSTraitementDonnees.TableauPeriode.ColWidths[14]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[8]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[9]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[10]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[11];
          FSTraitementDonnees.TableauPeriode.ColWidths[15]:=40;
          FSTraitementDonnees.TableauPeriode.ColWidths[16]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[13]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[14]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[15]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[16];
     end;
end;

procedure TFSTraitementDonnees.TabSheet1Show(Sender: TObject);
begin
FSTraitementDonnees.EditTableauSelect.Text:='Tiers';

if(FSTraitementDonnees.EditTableauSelect.Text='Tiers')then
     begin
          FSTraitementDonnees.TableauPeriode.ColCount:=17;
          FSTraitementDonnees.TableauPeriode.Cols[0].Text:='N°';
          FSTraitementDonnees.TableauPeriode.Cols[1].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[2].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[3].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[4].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[5].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[6].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[7].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[8].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[9].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[10].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[11].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[12].Text:='Antérieur';
          FSTraitementDonnees.TableauPeriode.Cols[13].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[14].Text:='Périodique';
          FSTraitementDonnees.TableauPeriode.Cols[15].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[16].Text:='Global';

          FSTraitementDonnees.TableauPeriode.RowCount:=2;
          FSTraitementDonnees.TableauPeriode.Rows[1].Text:='..';
          FSTraitementDonnees.TableauPeriode.Cells[0,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[1,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[2,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[3,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[4,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[5,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[6,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[7,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[8,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[9,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[10,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[11,1]:='Tiers';
          FSTraitementDonnees.TableauPeriode.Cells[12,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date-1);;
          FSTraitementDonnees.TableauPeriode.Cells[13,1]:='........';
          FSTraitementDonnees.TableauPeriode.Cells[14,1]:='Analyse du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);;
          FSTraitementDonnees.TableauPeriode.Cells[15,1]:='........';
          FSTraitementDonnees.TableauPeriode.Cells[16,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);

          FSTraitementDonnees.TableauPeriode.ColWidths[0]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[0];
          FSTraitementDonnees.TableauPeriode.ColWidths[1]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[2]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[3]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[4]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[5]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[6]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[7]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[8]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[9]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[10]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[11]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[2]-99;
          FSTraitementDonnees.TableauPeriode.ColWidths[12]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[3]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[4]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[5]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[6];
          FSTraitementDonnees.TableauPeriode.ColWidths[13]:=40;
          FSTraitementDonnees.TableauPeriode.ColWidths[14]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[8]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[9]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[10]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[11];
          FSTraitementDonnees.TableauPeriode.ColWidths[15]:=40;
          FSTraitementDonnees.TableauPeriode.ColWidths[16]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[13]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[14]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[15]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[16];
     end;
end;

procedure TFSTraitementDonnees.TabSheet2Show(Sender: TObject);
begin
FSTraitementDonnees.EditTableauSelect.Text:='Tiers antérieur';

if(FSTraitementDonnees.EditTableauSelect.Text='Tiers antérieur')then
     begin
          FSTraitementDonnees.TableauPeriode.ColCount:=17;
          FSTraitementDonnees.TableauPeriode.Cols[0].Text:='N°';
          FSTraitementDonnees.TableauPeriode.Cols[1].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[2].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[3].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[4].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[5].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[6].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[7].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[8].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[9].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[10].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[11].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[12].Text:='Antérieur';
          FSTraitementDonnees.TableauPeriode.Cols[13].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[14].Text:='Périodique';
          FSTraitementDonnees.TableauPeriode.Cols[15].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[16].Text:='Global';

          FSTraitementDonnees.TableauPeriode.RowCount:=2;
          FSTraitementDonnees.TableauPeriode.Rows[1].Text:='..';
          FSTraitementDonnees.TableauPeriode.Cells[0,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[1,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[2,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[3,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[4,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[5,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[6,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[7,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[8,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[9,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[10,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[11,1]:='Tiers';
          FSTraitementDonnees.TableauPeriode.Cells[12,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date-1);;
          FSTraitementDonnees.TableauPeriode.Cells[13,1]:='........';
          FSTraitementDonnees.TableauPeriode.Cells[14,1]:='Analyse du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);;
          FSTraitementDonnees.TableauPeriode.Cells[15,1]:='........';
          FSTraitementDonnees.TableauPeriode.Cells[16,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);

          FSTraitementDonnees.TableauPeriode.ColWidths[0]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[0];
          FSTraitementDonnees.TableauPeriode.ColWidths[1]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[2]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[3]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[4]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[5]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[6]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[7]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[8]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[9]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[10]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[11]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[2]-99;
          FSTraitementDonnees.TableauPeriode.ColWidths[12]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[3]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[4]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[5]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[6];
          FSTraitementDonnees.TableauPeriode.ColWidths[13]:=40;
          FSTraitementDonnees.TableauPeriode.ColWidths[14]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[8]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[9]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[10]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[11];
          FSTraitementDonnees.TableauPeriode.ColWidths[15]:=40;
          FSTraitementDonnees.TableauPeriode.ColWidths[16]:=FSTraitementDonnees.TableauDeBohrTiers.ColWidths[13]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[14]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[15]+
                                                            FSTraitementDonnees.TableauDeBohrTiers.ColWidths[16];
     end;
end;

procedure TFSTraitementDonnees.TabSheet3Show(Sender: TObject);
var  NotCol,NotRow:string;
begin
FSTraitementDonnees.EditTableauSelect.Text:='Bohr';

if(FSTraitementDonnees.EditTableauSelect.Text='Bohr')then
     begin
          FSTraitementDonnees.TableauPeriode.ColCount:=11;
          FSTraitementDonnees.TableauPeriode.Cols[0].Text:='N°';
          FSTraitementDonnees.TableauPeriode.Cols[1].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[2].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[3].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[4].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[5].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[6].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[7].Text:='';
          FSTraitementDonnees.TableauPeriode.Cols[8].Text:='Antérieur';
          FSTraitementDonnees.TableauPeriode.Cols[9].Text:='Périodique';
          FSTraitementDonnees.TableauPeriode.Cols[10].Text:='Global';

          FSTraitementDonnees.TableauPeriode.RowCount:=2;
          FSTraitementDonnees.TableauPeriode.Rows[1].Text:='..';
          FSTraitementDonnees.TableauPeriode.Cells[0,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[1,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[2,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[3,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[4,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[5,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[6,1]:='..';
          FSTraitementDonnees.TableauPeriode.Cells[7,1]:='Rubriques';
          FSTraitementDonnees.TableauPeriode.Cells[8,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date-1);
          FSTraitementDonnees.TableauPeriode.Cells[9,1]:='Analyse du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);
          FSTraitementDonnees.TableauPeriode.Cells[10,1]:='Analyse au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);

          FSTraitementDonnees.TableauPeriode.ColWidths[0]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[0];
          FSTraitementDonnees.TableauPeriode.ColWidths[1]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[2]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[3]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[4]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[5]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[6]:=15;
          FSTraitementDonnees.TableauPeriode.ColWidths[7]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[1]-77;
          FSTraitementDonnees.TableauPeriode.ColWidths[8]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[2]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[3]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[4];
          FSTraitementDonnees.TableauPeriode.ColWidths[9]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[5]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[6]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[7];
          FSTraitementDonnees.TableauPeriode.ColWidths[10]:=FSTraitementDonnees.TableauFinanceStructure.ColWidths[8]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[9]+
                                                           FSTraitementDonnees.TableauFinanceStructure.ColWidths[10];

          {FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColCount:=22;
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[9].Text:='          ';
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[10].Text:='          ';
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[11].Text:='          ';
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[12].Text:='          ';
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[13].Text:='          ';
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[14].Text:='          ';
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[15].Text:='          ';
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[16].Text:='          ';
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[17].Text:='          ';
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[18].Text:='          ';
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[19].Text:='          ';
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[20].Text:='          ';
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[21].Text:='          ';
          NotRow:='';
          NotCol:='9-19;22';
          AjusterColWidth(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,NotRow,NotCol); }
          end;
end;

procedure TFSTraitementDonnees.TableauAnalyseSoldePeriodeClick(
  Sender: TObject);
var NotTrieRow:integer;
begin
     if(FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked=true)then
     begin
          FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked:=false;
          FSTraitementDonnees.EditIndiceRubriqueTriCol.Text:=inttostr(FSTraitementDonnees.TableauAnalyseSoldePeriode.Col);
          EnregistrerOptionsTraitementDonnees;
          if(FSTraitementDonnees.TableauAnalyseSoldePeriode.Col in[6,7])
          then FSTraitementDonnees.EditTypeDataTrie.Text:='Num'
          else FSTraitementDonnees.EditTypeDataTrie.Text:='';
          NotTrieRow:=3;
          TrierTableauARowSpecial(FSTraitementDonnees.TableauAnalyseSoldePeriode,1,FSTraitementDonnees.TableauAnalyseSoldePeriode.RowCount-NotTrieRow,1,FSTraitementDonnees.EditIndiceRubriqueTriCol.Text,FSTraitementDonnees.EditTypeDataTrie.Text,FSTraitementDonnees.EditTypeTrie.Text);
     end;

     if(FSTraitementDonnees.RBFixeColonne.Checked=true)then
     begin
          FSTraitementDonnees.TableauAnalyseSoldePeriode.FixedCols:=strtointeger(FSTraitementDonnees.EditFixeColonne.Text);
          FSTraitementDonnees.RBFixeColonne.Checked:=false;
     end;
end;

procedure TFSTraitementDonnees.TabSheet4Show(Sender: TObject);
var  C:integer; NotRow,NotCol:string;
begin
     FSTraitementDonnees.EditTableauSelect.Text:='Mouvement';

     //FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColCount:=9;
     {FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[9].Text:='          ';
     FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[10].Text:='          ';
     FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[11].Text:='          ';
     FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[12].Text:='          ';
     FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[13].Text:='          ';
     FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[14].Text:='          ';
     FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[15].Text:='          ';
     FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[16].Text:='          ';
     FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[17].Text:='          '
     FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cols[18].Text:='          '}
     NotRow:='';
     NotCol:='9-19;22';
     for C:=1 to FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColCount-1 do
     if ExisteNumInTexte(inttostr(C),NotCol)then FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColWidths[C]:=0;
     AjusterColWidth(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,NotRow,NotCol);
end;

procedure TFSTraitementDonnees.TableauAnalysePeriodiqueClick(
  Sender: TObject);
begin
     ActiveDiagrammePeriode;
end;

Procedure AfficherDiagramme(TableauDiagramme:TStringGrid; IndiceNbrLaters:integer);
var  C,NbrLaters:integer; //TLineSeries  TPieSeries   TAreaSeries
begin
     FSTraitementDonnees.EditTitreEtat.Lines.Text:='';
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Tableau de Bohr '+FSTraitementDonnees.AfficheTableauDiagramme.Caption);
     FSTraitementDonnees.EditTitreEtat.Lines.Add('Période du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date));

     NbrLaters:=IndiceNbrLaters;

     FSTraitementDonnees.DiagrammeAnalysePeriodique1.Title.Text.Text:=FSTraitementDonnees.EditTitreEtat.Lines.Text;
     FSTraitementDonnees.Series1.Clear;
     for C:=1 to TableauDiagramme.ColCount-1 do
     begin
          if(IndiceNbrLaters=0) then NbrLaters:=MinInt(longueur(TableauDiagramme.Cells[C,0]),FSTraitementDonnees.IncrimenteEditMaxLongueurTitreAxe.Position);
          FSTraitementDonnees.Series1.Add(strtoreal(TableauDiagramme.Cells[C,TableauDiagramme.Row]),Firstlaters(TableauDiagramme.Cells[C,0],NbrLaters),clTeeColor);
     end;

     FSTraitementDonnees.DiagrammeAnalysePeriodique2.Title.Text.Text:=FSTraitementDonnees.EditTitreEtat.Lines.Text;
     FSTraitementDonnees.LineSeries1.Clear;
     for C:=1 to TableauDiagramme.ColCount-1 do
     begin
          if(IndiceNbrLaters=0) then NbrLaters:=MinInt(longueur(TableauDiagramme.Cells[C,0]),FSTraitementDonnees.IncrimenteEditMaxLongueurTitreAxe.Position);
          FSTraitementDonnees.LineSeries1.Add(strtoreal(TableauDiagramme.Cells[C,TableauDiagramme.Row]),Firstlaters(TableauDiagramme.Cells[C,0],NbrLaters),clTeeColor);
     end;

     FSTraitementDonnees.DiagrammeAnalysePeriodique3.Title.Text.Text:=FSTraitementDonnees.EditTitreEtat.Lines.Text;
     FSTraitementDonnees.BarSeries1.Clear;
     for C:=1 to TableauDiagramme.ColCount-1 do
     begin
          if(IndiceNbrLaters=0) then NbrLaters:=MinInt(longueur(TableauDiagramme.Cells[C,0]),FSTraitementDonnees.IncrimenteEditMaxLongueurTitreAxe.Position);
          FSTraitementDonnees.BarSeries1.Add(strtoreal(TableauDiagramme.Cells[C,TableauDiagramme.Row]),Firstlaters(TableauDiagramme.Cells[C,0],NbrLaters),clTeeColor);
     end;

     FSTraitementDonnees.DiagrammeAnalysePeriodique4.Title.Text.Text:=FSTraitementDonnees.EditTitreEtat.Lines.Text;
     FSTraitementDonnees.PieSeries1.Clear;
     for C:=1 to TableauDiagramme.ColCount-1 do
     begin
          if(IndiceNbrLaters=0) then NbrLaters:=MinInt(longueur(TableauDiagramme.Cells[C,0]),FSTraitementDonnees.IncrimenteEditMaxLongueurTitreAxe.Position);
          FSTraitementDonnees.PieSeries1.Add(strtoreal(TableauDiagramme.Cells[C,TableauDiagramme.Row]),Firstlaters(TableauDiagramme.Cells[C,0],NbrLaters),clTeeColor);
     end;
end;

procedure TFSTraitementDonnees.PageAnalysePeriodeShow(Sender: TObject);
begin
FSTraitementDonnees.EditTableauSelect.Text:='Diagramme';
end;

procedure TFSTraitementDonnees.TimerTempAttenteTimer(Sender: TObject);
var Temps,Resultat,Reste:integer; OKVisible,OKListeGroupeTiers:boolean;  TypeProcesInt,FichierConcerneInt,Adresse:string;  NbrTiers:integer; TimeBegin,TimeEnd,TimeTeste:string[8];
begin
     FSTraitementDonnees.TimerTempAttente.Enabled:=false;

     FSTraitementDonnees.Rapport.Text:='';

     TypeProcesInt:='Business';
     FichierConcerneInt:='FListeGroupeTiers';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProcesInt,FichierConcerneInt,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          if(FichierConcerneInt<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConcerneInt+'} recherché !');
     end;

     ChListeGroupeTiers:=Adresse;
     assignfile(FListeGroupeTiers,ChListeGroupeTiers);
     try
     if FileExists(ChListeGroupeTiers)then
     Reset(FListeGroupeTiers)
     else Rewrite(FListeGroupeTiers);
     Seek(FListeGroupeTiers,0);
     OKListeGroupeTiers:=false;
     NbrTiers:=0;
     while not eof(FListeGroupeTiers)and(OKListeGroupeTiers=false)do
     begin
          read(FListeGroupeTiers,RListeGroupeTiers);
          if(RListeGroupeTiers.CodeTiers<>'')then NbrTiers:=NbrTiers+1;

          if(NbrTiers>=2)then OKListeGroupeTiers:=true;
     end;
     finally
     CloseFile(FListeGroupeTiers);
     end;

     if(OKListeGroupeTiers=false)then FSTraitementDonnees.RBActiverGroupeTiers.Checked:=false;

     OKVisible:=false;
     FSTraitementDonnees.TableauAnalysePeriodique.Visible:=OKVisible;
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Visible:=OKVisible;
     FSTraitementDonnees.TableauDeBohrTiers.Visible:=OKVisible;
     FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Visible:=OKVisible;
     FSTraitementDonnees.TableauFinanceStructure.Visible:=OKVisible;

     ActionTableauDeBohr;

     OKVisible:=true;
     FSTraitementDonnees.TableauAnalysePeriodique.Visible:=OKVisible;
     FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Visible:=OKVisible;
     FSTraitementDonnees.TableauDeBohrTiers.Visible:=OKVisible;
     FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Visible:=OKVisible;
     FSTraitementDonnees.TableauFinanceStructure.Visible:=OKVisible;

     TimeEnd:=Timetostr(time);
     Temps:=((strtointeger(MidelLaters(TimeEnd,1,2))*3600)+(strtointeger(MidelLaters(TimeEnd,4,5))*60)+(strtointeger(MidelLaters(TimeEnd,7,8))*1))-
            ((strtointeger(MidelLaters(TimeBegin,1,2))*3600)+(strtointeger(MidelLaters(TimeBegin,4,5))*60)+(strtointeger(MidelLaters(TimeBegin,7,8))*1));

     application.Initialize;
end;

procedure TFSTraitementDonnees.TableauListeAppartenanceMouvementTBClick(
  Sender: TObject);
var NotTrieRow:integer;
begin
     if(FSTraitementDonnees.RBImprimeTableauSelect.Checked=true)then FSTraitementDonnees.EditNomTableauImprime.Text:='TableauListeAppartenanceMouvementTB';

     if(FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked=true)then
     begin
          FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked:=false;
          FSTraitementDonnees.EditIndiceRubriqueTriCol.Text:=inttostr(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Col);
          EnregistrerOptionsTraitementDonnees;
          if(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Col in[5])
          then FSTraitementDonnees.EditTypeDataTrie.Text:='Date'
          else
          if(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Col in[1,2,12])
          then FSTraitementDonnees.EditTypeDataTrie.Text:='Num'
          else FSTraitementDonnees.EditTypeDataTrie.Text:='';
          NotTrieRow:=4;
          TrierTableauARowSpecial(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,1,FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-NotTrieRow,1,FSTraitementDonnees.EditIndiceRubriqueTriCol.Text,FSTraitementDonnees.EditTypeDataTrie.Text,FSTraitementDonnees.EditTypeTrie.Text);
     end;

     if(FSTraitementDonnees.RBFixeColonne.Checked=true)then
     begin
          FSTraitementDonnees.TableauListeAppartenanceMouvementTB.FixedCols:=strtointeger(FSTraitementDonnees.EditFixeColonne.Text);
          FSTraitementDonnees.RBFixeColonne.Checked:=false;
     end;
end;

procedure TFSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemantContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
var  NomFichier:string;
begin
NomFichier:='Détail stock '+FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row]+' '+WithoutChar(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date),'/')+' au '+WithoutChar(datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date),'/')+'.txt';
TableauInFileTexte(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,NomFichier,FSCreateFichierTexte.RBCodificationRubriqes,FSCreateFichierTexte.RBLibelleRubriques,FSCreateFichierTexte.RBSignatureEntrepeise);
end;

procedure TFSTraitementDonnees.BitBtn2Click(Sender: TObject);
var  NomFichier:string;
begin
     NomFichier:='Tableau de Bohr Mouvement '+FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row]+
     'Période du '+WithoutChar(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date),'/')+' au '+WithoutChar(datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date),'/');


     TableauInFileTexte(FSTraitementDonnees.TableauDeBohrTiers,NomFichier,FSCreateFichierTexte.RBCodificationRubriqes,FSCreateFichierTexte.RBLibelleRubriques,FSCreateFichierTexte.RBSignatureEntrepeise);
end;

procedure TFSTraitementDonnees.BitBtn3Click(Sender: TObject);
var   R,k,l:integer;  CProduit:string[30];  OKProd:boolean;  Extention:string;
begin
R:=1;
k:=0;
Extention:='000000000000000';
while(R<=FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-1)do
begin
     if((FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[1,R]<>'')
     and(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[6,R]<>''))
     then
     begin
          CProduit:=Extention+FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[1,R];

          OKProd:=false;
          if(k>0)then
          begin
               l:=0;
               while(l<=K-1)and(OKProd=false)do
               begin
                    if(TApprovisionnement[l].CodeStock=CProduit)then
                    begin
                         OKProd:=true;
                         TApprovisionnement[l].Quantite:=TApprovisionnement[l].Quantite+strtoreal(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[6,R])
                    end;
               l:=l+1;
               end;
          end;

          if(OKProd=false)then
          begin
               k:=k+1;
               setlength(TApprovisionnement,k);
               TApprovisionnement[k-1].CodeStock:=CProduit;
               TApprovisionnement[k-1].Quantite:=strtoreal(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[6,R]);
          end;
     end;
R:=R+1;
end;

CalculeApprovisionnement(TApprovisionnement,k);
end;

procedure TFSTraitementDonnees.BitBtn6Click(Sender: TObject);
var  R:integer;  TitreEtat,SousTitreEtat:string;
begin
     FSMenuPrincipal.TitreEtat.Text:='';
     if(strtointeger(FSTraitementDonnees.EditNbrSerie.Text)<>0)then
     begin
          TitreEtat:='Etat de Raprochement ';
          if(FSTraitementDonnees.EditNomProjetTraitement.Text<>'')then TitreEtat:=TitreEtat+'Structure: '+FSTraitementDonnees.EditNomProjetTraitement.Text+'.';
          FSMenuPrincipal.TitreEtat.Lines.Add(TitreEtat);
          TitreEtat:=' Série N°( ';
          for R:=1 to FSTraitementDonnees.TableauSeriePiece.RowCount-1 do
          begin
               if(FSTraitementDonnees.TableauSeriePiece.Cells[1,R]='OK')then
               begin
                    TitreEtat:=TitreEtat+FSTraitementDonnees.TableauSeriePiece.Cells[0,R];
                    if(R<FSTraitementDonnees.TableauSeriePiece.RowCount-1)
                    then TitreEtat:=TitreEtat+'/'
                    else TitreEtat:=TitreEtat+' )';
               end;
          end;
          FSMenuPrincipal.TitreEtat.Lines.Add(TitreEtat);
     end
     else
     begin
          TitreEtat:='Situation financière ';
          if(FSTraitementDonnees.EditNomProjetTraitement.Text<>'')then TitreEtat:=TitreEtat+'Structure: '+FSTraitementDonnees.EditNomProjetTraitement.Text+'.';
          FSMenuPrincipal.TitreEtat.Lines.Add(TitreEtat);
     end;
     TitreEtat:='';
     if(FSTraitementDonnees.EditDesignationTypeAvis.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditDesignationTypeAvis.Text;
     if(FSTraitementDonnees.EditRechercheModePaiement.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditRechercheModePaiement.Text;
     if(FSTraitementDonnees.EditRechercheDomiciliation.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditRechercheDomiciliation.Text;
     if(TitreEtat<>'')then FSMenuPrincipal.TitreEtat.Lines.Add(TitreEtat);
     FSMenuPrincipal.TitreEtat.Lines.Add('Période du: '+datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date)+' au: '+datetostr(FSTraitementDonnees.EditRechercheDateFin.Date));

     TitreEtat:=FSMenuPrincipal.TitreEtat.Text;
     TableauToExcel(FSTraitementDonnees.TableauAvis,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

procedure TFSTraitementDonnees.BitSelectionClick(Sender: TObject);
var  R:integer;
begin
     if(FSTraitementDonnees.BitSelection.Caption='Sélectionner Tous')then
     begin
          FSTraitementDonnees.BitSelection.Caption:='Désélectionner Tous';
          R:=1;
          while(R<=FSTraitementDonnees.TableauSeriePiece.RowCount-1)do
          begin
               FSTraitementDonnees.TableauSeriePiece.Cells[1,R]:='OK';
          R:=R+1;
          end;
     end
     else
     begin
          FSTraitementDonnees.BitSelection.Caption:='Sélectionner Tous';
          R:=1;
          while(R<=FSTraitementDonnees.TableauSeriePiece.RowCount-1)do
          begin
               FSTraitementDonnees.TableauSeriePiece.Cells[1,R]:='';
          R:=R+1;
          end;
     end;
end;

procedure TFSTraitementDonnees.EditSourcePieceKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSTraitementDonnees.AfficheControleSeriesClick(Sender: TObject);
begin
     FSTraitementDonnees.AfficheControleSeries.Height:=0;
end;

procedure TFSTraitementDonnees.EditNumProjetEnter(Sender: TObject);
begin
     FSTraitementDonnees.TableauSelections.Visible:=true;
     FSTraitementDonnees.TableauSelections.Left:=FSTraitementDonnees.AfficheProjet.Left+FSTraitementDonnees.AfficheProjet.Width-FSTraitementDonnees.EditTableauSelection.Width-10;
     FSTraitementDonnees.TableauSelections.Top:=FSTraitementDonnees.AfficheProjet.Top+FSTraitementDonnees.EditNumProjet.Top;
     ListeProjetFinance(FSTraitementDonnees.TableauSelections,'','','10',false,'1','',false,false,'','');
     FSTraitementDonnees.TableauSelections.SetFocus;
     FSTraitementDonnees.EditTableauSelection.Text:='Projet';
end;

procedure TFSTraitementDonnees.EditNumFicheEnter(Sender: TObject);
begin
     FSTraitementDonnees.TableauSelections.Visible:=true;
     FSTraitementDonnees.TableauSelections.Left:=FSTraitementDonnees.AfficheProjet.Left+FSTraitementDonnees.AfficheProjet.Width-FSTraitementDonnees.EditTableauSelection.Width-10;
     FSTraitementDonnees.TableauSelections.Top:=FSTraitementDonnees.AfficheProjet.Top+FSTraitementDonnees.EditNumFiche.Top;
     ListeFicheTechnique(FSTraitementDonnees.TableauSelections,FSTraitementDonnees.EditNumProjet.Text,1,FSTraitementDonnees.RBFicheProjetPrecis.Checked);
     FSTraitementDonnees.TableauSelections.SetFocus;
     FSTraitementDonnees.EditTableauSelection.Text:='Fiche';
end;

procedure TFSTraitementDonnees.EditNumProjetKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(FSTraitementDonnees.TableauSelections.Visible=true)
          then FSTraitementDonnees.TableauSelections.SetFocus
          else FSTraitementDonnees.EditNumFiche.SetFocus;
     end;
end;

procedure TFSTraitementDonnees.EditNumFicheKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(FSTraitementDonnees.TableauSelections.Visible=true)
          then FSTraitementDonnees.TableauSelections.SetFocus
          else FSTraitementDonnees.EditNumRubrique.SetFocus;
     end;
end;

procedure TFSTraitementDonnees.EditNumRubriqueEnter(Sender: TObject);
begin
     FSTraitementDonnees.TableauSelections.Visible:=true;
     FSTraitementDonnees.TableauSelections.Left:=FSTraitementDonnees.AfficheProjet.Left+FSTraitementDonnees.AfficheProjet.Width-FSTraitementDonnees.EditTableauSelection.Width-10;
     FSTraitementDonnees.TableauSelections.Top:=FSTraitementDonnees.AfficheProjet.Top+FSTraitementDonnees.EditNumRubrique.Top;
     ListeRubriqueFicheTechnique(FSTraitementDonnees.TableauSelections,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFiche.Text);
     FSTraitementDonnees.TableauSelections.SetFocus;
     FSTraitementDonnees.EditTableauSelection.Text:='Rubrique';
end;

procedure TFSTraitementDonnees.EditNumRubriqueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(FSTraitementDonnees.TableauSelections.Visible=true)
          then FSTraitementDonnees.TableauSelections.SetFocus
          else FSTraitementDonnees.EditNumRubrique.SetFocus;
     end;
end;

procedure TFSTraitementDonnees.EditNumPlanificateurEnter(Sender: TObject);
var Quantite,Montant:real;
begin
     FSTraitementDonnees.TableauSelections.Visible:=true;
     FSTraitementDonnees.TableauSelections.Left:=FSTraitementDonnees.AfficheProjet.Left+FSTraitementDonnees.AfficheProjet.Width-FSTraitementDonnees.EditTableauSelection.Width-10;
     FSTraitementDonnees.TableauSelections.Top:=FSTraitementDonnees.AfficheProjet.Top+FSTraitementDonnees.EditNumPlanificateur.Top;   //FSTraitementDonnees.EditChargementTypeProces.Text,FSTraitementDonnees.EditChargementFichierConcerne.Text
     AffichePlanificateur(FSTraitementDonnees.TableauSelections,FSTraitementDonnees.EditNumRubrique.Text,'','','','',Quantite,Montant);
     FSTraitementDonnees.EditTableauSelection.Text:='Planificateur';
end;

procedure TFSTraitementDonnees.EditNumPlanificateurKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      if key in[VK_RETURN]then
     begin
          if(FSTraitementDonnees.TableauSelections.Visible=true)
          then FSTraitementDonnees.TableauSelections.SetFocus
          else FSTraitementDonnees.EditNumPlanificateur.SetFocus;
     end;
end;

procedure TFSTraitementDonnees.TableauSelectionsKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  i,NumTypeAvis,ChercheSigneDebitCredit:integer; Quantite,Montant:real;
     CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise,CodeTiers,NatureOperation,DesignationTypeAvis:string;
     OKPlanificationRubrique,OKPlanificationTiers,OKAvis:boolean;
begin

if key in[VK_ESCAPE]then
begin
     FSTraitementDonnees.TableauSelections.Visible:=false;

     if(FSTraitementDonnees.EditTableauSelection.Text='Planificateur')then
     begin
          //FSTraitementDonnees.EditNumProjet.Text:='';
          //FSTraitementDonnees.EditNomProjet.Text:='';
          //FSTraitementDonnees.EditNumFiche.Text:='';
          //FSTraitementDonnees.EditDesignationFiche.Text:='';
          //FSTraitementDonnees.EditNumRubrique.Text:='';
          //FSTraitementDonnees.EditDesignationRubrique.Text:='';
          FSTraitementDonnees.EditNumPlanificateur.Text:='';
          FSTraitementDonnees.EditDesignationPlanificateur.Text:='';
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Rubrique')then
     begin
          //FSTraitementDonnees.EditNumProjet.Text:='';
          //FSTraitementDonnees.EditNomProjet.Text:='';
          //FSTraitementDonnees.EditNumFiche.Text:='';
          //FSTraitementDonnees.EditDesignationFiche.Text:='';
          FSTraitementDonnees.EditNumRubrique.Text:='';
          FSTraitementDonnees.EditDesignationRubrique.Text:='';
          FSTraitementDonnees.EditNumPlanificateur.Text:='';
          FSTraitementDonnees.EditDesignationPlanificateur.Text:='';
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Fiche')then
     begin
          //FSTraitementDonnees.EditNumProjet.Text:='';
          //FSTraitementDonnees.EditNomProjet.Text:='';
          FSTraitementDonnees.EditNumFiche.Text:='';
          FSTraitementDonnees.EditDesignationFiche.Text:='';
          FSTraitementDonnees.EditNumRubrique.Text:='';
          FSTraitementDonnees.EditDesignationRubrique.Text:='';
          FSTraitementDonnees.EditNumPlanificateur.Text:='';
          FSTraitementDonnees.EditDesignationPlanificateur.Text:='';
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Projet')then
     begin
          FSTraitementDonnees.EditNumProjet.Text:='';
          FSTraitementDonnees.EditNomProjet.Text:='';
          FSTraitementDonnees.EditNumFiche.Text:='';
          FSTraitementDonnees.EditDesignationFiche.Text:='';
          FSTraitementDonnees.EditNumRubrique.Text:='';
          FSTraitementDonnees.EditDesignationRubrique.Text:='';
          FSTraitementDonnees.EditNumPlanificateur.Text:='';
          FSTraitementDonnees.EditDesignationPlanificateur.Text:='';
     end;
end;

if key in[VK_RETURN]then
begin
     NatureOperation:='';

     if(FSTraitementDonnees.EditTableauSelection.Text='Planificateur')then
     begin
          FSTraitementDonnees.EditNumPlanificateur.Text:=FSTraitementDonnees.TableauSelections.Cells[3,FSTraitementDonnees.TableauSelections.Row];
          FSTraitementDonnees.EditDesignationPlanificateur.Text:=FSTraitementDonnees.TableauSelections.Cells[4,FSTraitementDonnees.TableauSelections.Row];

          RubriqueArborescence('',FSTraitementDonnees.TableauSelections.Cells[2,FSTraitementDonnees.TableauSelections.Row],RRubriqueFicheTechnique,RFicheTechnique,RTypeAvis);
          if(FSTraitementDonnees.EditNumRubrique.Text='')then
          begin
               FSTraitementDonnees.EditNumRubrique.Text:=inttostr(RRubriqueFicheTechnique.NumRubrique);
               FSTraitementDonnees.EditDesignationRubrique.Text:=RRubriqueFicheTechnique.DesignationRubrique;
          end;
          if(FSTraitementDonnees.EditNumFiche.Text='')then
          begin
               FSTraitementDonnees.EditNumFiche.Text:=inttostr(RFicheTechnique.NumFicheTechnique);
               FSTraitementDonnees.EditDesignationFiche.Text:=RFicheTechnique.DesignationFicheTechnique;
          end;
          if(FSTraitementDonnees.EditNumProjet.Text='')then
          begin
               FSTraitementDonnees.EditNumProjet.Text:=RFicheTechnique.CodeProjet;
               FSTraitementDonnees.EditNomProjet.Text:=ChercherProjetFinance(RFicheTechnique.CodeProjet,PositionProjetFinancesRecherche).DesignationProjetFinance;
          end;

          FSTraitementDonnees.TableauSelections.Visible:=false;
          NatureOperation:=FSTraitementDonnees.EditDesignationPlanificateur.Text;
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Rubrique')then
     begin
          FSTraitementDonnees.EditNumRubrique.Text:=FSTraitementDonnees.TableauSelections.Cells[1,FSTraitementDonnees.TableauSelections.Row];
          FSTraitementDonnees.EditDesignationRubrique.Text:=FSTraitementDonnees.TableauSelections.Cells[2,FSTraitementDonnees.TableauSelections.Row];
          FSTraitementDonnees.EditNumPlanificateur.Text:='';
          FSTraitementDonnees.EditDesignationPlanificateur.Text:='';

          ExistePlanificationRubrique(FSTraitementDonnees.EditNumRubrique.Text,'',OKPlanificationRubrique,OKPlanificationTiers,CodeTiers);
          if(OKPlanificationRubrique=true)then
          begin
               AffichePlanificateur(FSTraitementDonnees.TableauSelections,FSTraitementDonnees.EditNumRubrique.Text,'','','','',Quantite,Montant);
               FSTraitementDonnees.TableauSelections.SetFocus;
               FSTraitementDonnees.EditTableauSelection.Text:='Planificateur';
          end
          else
          begin
               FSTraitementDonnees.EditNumPlanificateur.Text:='';
               FSTraitementDonnees.EditDesignationPlanificateur.Text:='';
               FSTraitementDonnees.TableauSelections.Visible:=false;
               FSTraitementDonnees.TableauSelections.Visible:=false;
          end;

          NatureOperation:=FSTraitementDonnees.EditDesignationRubrique.Text;
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Fiche')then
     begin
          FSTraitementDonnees.EditNumFiche.Text:=FSTraitementDonnees.TableauSelections.Cells[2,FSTraitementDonnees.TableauSelections.Row];
          FSTraitementDonnees.EditDesignationFiche.Text:=FSTraitementDonnees.TableauSelections.Cells[3,FSTraitementDonnees.TableauSelections.Row];

          FSTraitementDonnees.EditNumRubrique.Text:='';
          FSTraitementDonnees.EditDesignationRubrique.Text:='';
          FSTraitementDonnees.EditNumPlanificateur.Text:='';
          FSTraitementDonnees.EditDesignationPlanificateur.Text:='';
          FSTraitementDonnees.TableauSelections.Visible:=false;
          FSTraitementDonnees.EditNumRubrique.SetFocus;
          NatureOperation:=FSTraitementDonnees.EditDesignationFiche.Text;
     end;

     if(FSTraitementDonnees.EditTableauSelection.Text='Projet')then
     begin
          FSTraitementDonnees.EditNumProjet.Text:=FSTraitementDonnees.TableauSelections.Cells[1,FSTraitementDonnees.TableauSelections.Row];
          FSTraitementDonnees.EditNomProjet.Text:=FSTraitementDonnees.TableauSelections.Cells[2,FSTraitementDonnees.TableauSelections.Row];

          FSTraitementDonnees.EditNumFiche.Text:='';
          FSTraitementDonnees.EditDesignationFiche.Text:='';
          FSTraitementDonnees.EditNumRubrique.Text:='';
          FSTraitementDonnees.EditDesignationRubrique.Text:='';
          FSTraitementDonnees.EditNumPlanificateur.Text:='';
          FSTraitementDonnees.EditDesignationPlanificateur.Text:='';
          FSTraitementDonnees.TableauSelections.Visible:=false;
          FSTraitementDonnees.EditNumFiche.SetFocus;

          NatureOperation:=FSTraitementDonnees.EditNomProjet.Text;
     end;
     RubriqueArborescence(FSTraitementDonnees.EditNumFiche.Text,FSTraitementDonnees.EditNumRubrique.Text,RRubriqueFicheTechniqueCopie,RFicheTechnique,RTypeAvis);
end;
end;

procedure TFSTraitementDonnees.BitBtn5Click(Sender: TObject);
begin
     FSTraitementDonnees.EditNumProjet.Text:='';
     FSTraitementDonnees.EditNomProjet.Text:='';
     FSTraitementDonnees.EditNumFiche.Text:='';
     FSTraitementDonnees.EditDesignationFiche.Text:='';
     FSTraitementDonnees.EditNumRubrique.Text:='';
     FSTraitementDonnees.EditDesignationRubrique.Text:='';
     FSTraitementDonnees.EditNumPlanificateur.Text:='';
     FSTraitementDonnees.EditDesignationPlanificateur.Text:='';
     FSTraitementDonnees.EditTableauSelection.Text:='';
     FSTraitementDonnees.TableauSelections.Visible:=false;
end;

procedure TFSTraitementDonnees.EditNomProjetTraitementDblClick(
  Sender: TObject);
begin
     FSTraitementDonnees.PageOption.Show;
     FSTraitementDonnees.EditPageSelect.Text:='Domiciliation';
     FSTraitementDonnees.EditNumProjet.SetFocus;
end;

procedure TFSTraitementDonnees.EditTiersNomProjetTraitementDblClick(
  Sender: TObject);
begin
     FSTraitementDonnees.PageOption.Show;
     FSTraitementDonnees.EditPageSelect.Text:='Tiers';
     FSTraitementDonnees.EditNumProjet.SetFocus;
end;

procedure TFSTraitementDonnees.BitBtn7Click(Sender: TObject);
begin
     FSTraitementDonnees.EditNumProjetTraitement.Text:=FSTraitementDonnees.EditNumProjet.Text;
     FSTraitementDonnees.EditNomProjetTraitement.Text:=FSTraitementDonnees.EditNomProjet.Text;

     FSTraitementDonnees.EditTiersNumProjetTraitement.Text:=FSTraitementDonnees.EditNumProjet.Text;
     FSTraitementDonnees.EditTiersNomProjetTraitement.Text:=FSTraitementDonnees.EditNomProjet.Text;

     FSTraitementDonnees.TableauProjetTraitement.Visible:=false;
     FSTraitementDonnees.TableauTiersProjetTraitement.Visible:=false;
     
     if(FSTraitementDonnees.EditPageSelect.Text='Domiciliation')then
     begin
          FSTraitementDonnees.PageFinanceDomiciliation.Show;          
          FSTraitementDonnees.TableauAvis.SetFocus;
     end;

     if(FSTraitementDonnees.EditPageSelect.Text='Tiers')then
     begin
          FSTraitementDonnees.PageFinanceTiers.Show;
          FSTraitementDonnees.TableauFinanceTiers.SetFocus;
     end;
end;

procedure TFSTraitementDonnees.EditDesignationFicheTraitementEnter(
  Sender: TObject);
begin
     FSTraitementDonnees.EditNumFicheTraitement.Text:='';
     FSTraitementDonnees.EditDesignationFicheTraitement.Text:='';
     FSTraitementDonnees.EditNumRubriqueTraitement.Text:='';
     FSTraitementDonnees.EditDesignationRubriqueTraitement.Text:='';
     FSTraitementDonnees.EditNumPlanificateurTraitement.Text:='';
     FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text:='';

     FSTraitementDonnees.TableauProjetTraitement.Visible:=true;
     FSTraitementDonnees.TableauProjetTraitement.Left:=FSTraitementDonnees.AfficheTableauAvis.Left+FSTraitementDonnees.PanelEditNomProjetTraitement.Left+FSTraitementDonnees.PanelEditNomProjetTraitement.Width+8;
     FSTraitementDonnees.TableauProjetTraitement.Top:=FSTraitementDonnees.AfficheTableauAvis.Top+FSTraitementDonnees.PanelEditNomProjetTraitement.Top+FSTraitementDonnees.EditDesignationFicheTraitement.Top;
     ListeFicheTechnique(FSTraitementDonnees.TableauProjetTraitement,FSTraitementDonnees.EditNumProjetTraitement.Text,1,FSTraitementDonnees.RBFicheProjetPrecis.Checked);
     FSTraitementDonnees.TableauProjetTraitement.SetFocus;
     FSTraitementDonnees.EditTableauSelection.Text:='Fiche';

     FSTraitementDonnees.TableauProjetTraitement.ColCount:=FSTraitementDonnees.TableauProjetTraitement.ColCount+1;
     FSTraitementDonnees.TableauProjetTraitement.Cols[FSTraitementDonnees.TableauProjetTraitement.ColCount-1].Text:='Montant Calculé';
     FSTraitementDonnees.TableauProjetTraitement.ColWidths[FSTraitementDonnees.TableauProjetTraitement.ColCount-1]:=100;
     SyntheseDesProjetsParNature(FSTraitementDonnees.TableauProjetTraitement,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,2,FSTraitementDonnees.TableauProjetTraitement.ColCount-1,FSTraitementDonnees.EditTableauSelection.Text,datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.RBAfficherPartiesCommunes.Checked);
end;

procedure TFSTraitementDonnees.EditDesignationRubriqueTraitementEnter(
  Sender: TObject);
begin
     FSTraitementDonnees.EditNumRubriqueTraitement.Text:='';
     FSTraitementDonnees.EditDesignationRubriqueTraitement.Text:='';
     FSTraitementDonnees.EditNumPlanificateurTraitement.Text:='';
     FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text:='';

     FSTraitementDonnees.TableauProjetTraitement.Visible:=true;
     FSTraitementDonnees.TableauProjetTraitement.Left:=FSTraitementDonnees.AfficheTableauAvis.Left+FSTraitementDonnees.PanelEditNomProjetTraitement.Left+FSTraitementDonnees.PanelEditNomProjetTraitement.Width+8;
     FSTraitementDonnees.TableauProjetTraitement.Top:=FSTraitementDonnees.AfficheTableauAvis.Top+FSTraitementDonnees.PanelEditNomProjetTraitement.Top+FSTraitementDonnees.EditDesignationRubriqueTraitement.Top;
     ListeRubriqueFicheTechnique(FSTraitementDonnees.TableauProjetTraitement,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text);
     FSTraitementDonnees.TableauProjetTraitement.SetFocus;
     FSTraitementDonnees.EditTableauSelection.Text:='Rubrique';

     FSTraitementDonnees.TableauProjetTraitement.ColCount:=FSTraitementDonnees.TableauProjetTraitement.ColCount+1;
     FSTraitementDonnees.TableauProjetTraitement.Cols[FSTraitementDonnees.TableauProjetTraitement.ColCount-1].Text:='Montant Calculé';
     FSTraitementDonnees.TableauProjetTraitement.ColWidths[FSTraitementDonnees.TableauProjetTraitement.ColCount-1]:=100;
     SyntheseDesProjetsParNature(FSTraitementDonnees.TableauProjetTraitement,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,1,FSTraitementDonnees.TableauProjetTraitement.ColCount-1,FSTraitementDonnees.EditTableauSelection.Text,datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.RBAfficherPartiesCommunes.Checked);
end;

procedure TFSTraitementDonnees.EditDesignationPlanificateurTraitementEnter(
  Sender: TObject);
var    Quantite,Montant:real;
begin
     FSTraitementDonnees.EditNumPlanificateurTraitement.Text:='';
     FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text:='';
     
     FSTraitementDonnees.TableauProjetTraitement.Visible:=true;
     FSTraitementDonnees.TableauProjetTraitement.Left:=FSTraitementDonnees.AfficheTableauAvis.Left+FSTraitementDonnees.PanelEditNomProjetTraitement.Left+FSTraitementDonnees.PanelEditNomProjetTraitement.Width+8;
     FSTraitementDonnees.TableauProjetTraitement.Top:=FSTraitementDonnees.AfficheTableauAvis.Top+FSTraitementDonnees.PanelEditNomProjetTraitement.Top+FSTraitementDonnees.EditDesignationPlanificateurTraitement.Top;
     AffichePlanificateur(FSTraitementDonnees.TableauProjetTraitement,FSTraitementDonnees.EditNumRubriqueTraitement.Text,'','','','',Quantite,Montant);
     FSTraitementDonnees.EditTableauSelection.Text:='Planificateur';

     FSTraitementDonnees.TableauProjetTraitement.ColCount:=FSTraitementDonnees.TableauProjetTraitement.ColCount+1;
     FSTraitementDonnees.TableauProjetTraitement.Cols[FSTraitementDonnees.TableauProjetTraitement.ColCount-1].Text:='Montant Calculé';
     FSTraitementDonnees.TableauProjetTraitement.ColWidths[FSTraitementDonnees.TableauProjetTraitement.ColCount-1]:=100;
     SyntheseDesProjetsParNature(FSTraitementDonnees.TableauProjetTraitement,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,3,FSTraitementDonnees.TableauProjetTraitement.ColCount-1,FSTraitementDonnees.EditTableauSelection.Text,datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.RBAfficherPartiesCommunes.Checked);
end;

procedure TFSTraitementDonnees.BitBtn8Click(Sender: TObject);
begin
     FSTraitementDonnees.EditNumProjetTraitement.Text:='';
     FSTraitementDonnees.EditNomProjetTraitement.Text:='';
     FSTraitementDonnees.EditNumFicheTraitement.Text:='';
     FSTraitementDonnees.EditDesignationFicheTraitement.Text:='';
     FSTraitementDonnees.EditNumRubriqueTraitement.Text:='';
     FSTraitementDonnees.EditDesignationRubriqueTraitement.Text:='';
     FSTraitementDonnees.EditNumPlanificateurTraitement.Text:='';
     FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text:='';
     FSTraitementDonnees.EditTableauSelection.Text:='';
     FSTraitementDonnees.TableauProjetTraitement.Visible:=false;
end;

procedure TFSTraitementDonnees.EditTiersDesignationFicheTraitementEnter(
  Sender: TObject);
begin
     FSTraitementDonnees.TableauTiersProjetTraitement.Visible:=true;
     FSTraitementDonnees.TableauTiersProjetTraitement.Left:=FSTraitementDonnees.PanelEditTiersNomProjetTraitement.Left+FSTraitementDonnees.PanelEditTiersNomProjetTraitement.Width+8;
     FSTraitementDonnees.TableauTiersProjetTraitement.Top:=FSTraitementDonnees.PanelEditTiersNomProjetTraitement.Top+FSTraitementDonnees.EditTiersDesignationFicheTraitement.Top;
     ListeFicheTechnique(FSTraitementDonnees.TableauTiersProjetTraitement,FSTraitementDonnees.EditTiersNumProjetTraitement.Text,1,FSTraitementDonnees.RBFicheProjetPrecis.Checked);
     FSTraitementDonnees.TableauTiersProjetTraitement.SetFocus;
     FSTraitementDonnees.EditTableauSelection.Text:='Fiche';

     FSTraitementDonnees.TableauTiersProjetTraitement.ColCount:=FSTraitementDonnees.TableauTiersProjetTraitement.ColCount+1;
     FSTraitementDonnees.TableauTiersProjetTraitement.Cols[FSTraitementDonnees.TableauTiersProjetTraitement.ColCount-1].Text:='Montant Calculé';
     FSTraitementDonnees.TableauTiersProjetTraitement.ColWidths[FSTraitementDonnees.TableauTiersProjetTraitement.ColCount-1]:=100;
     SyntheseDesProjetsParNature(FSTraitementDonnees.TableauTiersProjetTraitement,FSTraitementDonnees.EditNumProjetTraitement.Text,'','',1,FSTraitementDonnees.TableauTiersProjetTraitement.ColCount-1,FSTraitementDonnees.EditTableauSelection.Text,datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.RBAfficherPartiesCommunes.Checked);
end;

procedure TFSTraitementDonnees.EditTiersDesignationRubriqueTraitementEnter(
  Sender: TObject);
begin
     FSTraitementDonnees.TableauTiersProjetTraitement.Visible:=true;
     FSTraitementDonnees.TableauTiersProjetTraitement.Left:=FSTraitementDonnees.PanelEditTiersNomProjetTraitement.Left+FSTraitementDonnees.PanelEditTiersNomProjetTraitement.Width+8;
     FSTraitementDonnees.TableauTiersProjetTraitement.Top:=FSTraitementDonnees.PanelEditTiersNomProjetTraitement.Top+FSTraitementDonnees.EditTiersDesignationRubriqueTraitement.Top;
     ListeRubriqueFicheTechnique(FSTraitementDonnees.TableauTiersProjetTraitement,FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text);
     FSTraitementDonnees.TableauTiersProjetTraitement.SetFocus;
     FSTraitementDonnees.EditTableauSelection.Text:='Rubrique';

     FSTraitementDonnees.TableauTiersProjetTraitement.ColCount:=FSTraitementDonnees.TableauTiersProjetTraitement.ColCount+1;
     FSTraitementDonnees.TableauTiersProjetTraitement.Cols[FSTraitementDonnees.TableauTiersProjetTraitement.ColCount-1].Text:='Montant Calculé';
     FSTraitementDonnees.TableauTiersProjetTraitement.ColWidths[FSTraitementDonnees.TableauTiersProjetTraitement.ColCount-1]:=100;
     SyntheseDesProjetsParNature(FSTraitementDonnees.TableauTiersProjetTraitement,FSTraitementDonnees.EditNumProjetTraitement.Text,'','',1,FSTraitementDonnees.TableauTiersProjetTraitement.ColCount-1,FSTraitementDonnees.EditTableauSelection.Text,datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.RBAfficherPartiesCommunes.Checked);
end;

procedure TFSTraitementDonnees.EditTiersDesignationPlanificateurTraitementEnter(
  Sender: TObject);
var    Quantite,Montant:real;
begin
     FSTraitementDonnees.TableauTiersProjetTraitement.Visible:=true;
     FSTraitementDonnees.TableauTiersProjetTraitement.Left:=FSTraitementDonnees.PanelEditTiersNomProjetTraitement.Left+FSTraitementDonnees.PanelEditTiersNomProjetTraitement.Width+8;
     FSTraitementDonnees.TableauTiersProjetTraitement.Top:=FSTraitementDonnees.PanelEditTiersNomProjetTraitement.Top+FSTraitementDonnees.EditTiersDesignationPlanificateurTraitement.Top;
     AffichePlanificateur(FSTraitementDonnees.TableauTiersProjetTraitement,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,'','','','',Quantite,Montant);
     FSTraitementDonnees.EditTableauSelection.Text:='Planificateur';

     FSTraitementDonnees.TableauTiersProjetTraitement.ColCount:=FSTraitementDonnees.TableauTiersProjetTraitement.ColCount+1;
     FSTraitementDonnees.TableauTiersProjetTraitement.Cols[FSTraitementDonnees.TableauTiersProjetTraitement.ColCount-1].Text:='Montant Calculé';
     FSTraitementDonnees.TableauTiersProjetTraitement.ColWidths[FSTraitementDonnees.TableauTiersProjetTraitement.ColCount-1]:=100;
     SyntheseDesProjetsParNature(FSTraitementDonnees.TableauTiersProjetTraitement,FSTraitementDonnees.EditNumProjetTraitement.Text,'','',1,FSTraitementDonnees.TableauTiersProjetTraitement.ColCount-1,FSTraitementDonnees.EditTableauSelection.Text,datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.RBAfficherPartiesCommunes.Checked);
end;

procedure TFSTraitementDonnees.BitBtn9Click(Sender: TObject);
begin
     FSTraitementDonnees.EditTiersNumProjetTraitement.Text:='';
     FSTraitementDonnees.EditTiersNomProjetTraitement.Text:='';
     FSTraitementDonnees.EditTiersNumFicheTraitement.Text:='';
     FSTraitementDonnees.EditTiersDesignationFicheTraitement.Text:='';
     FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text:='';
     FSTraitementDonnees.EditTiersDesignationRubriqueTraitement.Text:='';
     FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text:='';
     FSTraitementDonnees.EditTiersDesignationPlanificateurTraitement.Text:='';
     FSTraitementDonnees.EditTableauSelection.Text:='';
     FSTraitementDonnees.TableauTiersProjetTraitement.Visible:=false;
end;

procedure TFSTraitementDonnees.RBAfficherPartiesCommunesClick(
  Sender: TObject);
begin
     if(FSTraitementDonnees.RBAfficherPartiesCommunes.Checked=true)then
     begin
          FSTraitementDonnees.RBPartiesCommunesCumules.Enabled:=true;
          FSTraitementDonnees.RBPartiesCommunesCumules.Checked:=true;
          FSTraitementDonnees.RBAfficherPartiesCommunes.Caption:='Afficher les parties communes'
     end
     else
     begin
          FSTraitementDonnees.RBPartiesCommunesCumules.Enabled:=false;
          FSTraitementDonnees.RBPartiesCommunesCumules.Checked:=false;
          FSTraitementDonnees.RBAfficherPartiesCommunes.Caption:='Ne pas Afficher les parties communes';
     end;

     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBPartiesCommunesCumulesClick(
  Sender: TObject);
begin
     if(FSTraitementDonnees.RBPartiesCommunesCumules.Checked=true)
     then FSTraitementDonnees.RBPartiesCommunesCumules.Caption:='Parties communes détaillées'
     else FSTraitementDonnees.RBPartiesCommunesCumules.Caption:='Parties communes cumulées';

     EnregistrerOptionsTraitementDonnees;
end; 

procedure TFSTraitementDonnees.TableauProjetTraitementEnter(
  Sender: TObject);
begin
     FSTraitementDonnees.TableauAvis.RowCount:=2;
     FSTraitementDonnees.TableauAvis.Rows[1].Text:='';

     FSTraitementDonnees.TimerAfficheMessageImprimer.Enabled:=true;
end;

procedure TFSTraitementDonnees.RBDescendantRubriqueTrieTableauAvisClick(Sender: TObject);
begin
     FSTraitementDonnees.TypeTrie.Caption:='-';

     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBAscendantRubriqueTrieTableauAvisClick(Sender: TObject);
begin
     FSTraitementDonnees.TypeTrie.Caption:='+';

     EnregistrerOptionsTraitementDonnees;
end;

Procedure CummulePartieCumune(Tableau:TStringGrid);
var  R,l:integer;   TotalPartieCommuneDebit,TotalPartieCommuneCredit:real;   DesignationProjetFinance,SigneMultiple:string;  OKDesignationProjetFinance:boolean;
begin
     TotalPartieCommuneDebit:=0;
     TotalPartieCommuneCredit:=0;
     DesignationProjetFinance:='';
     OKDesignationProjetFinance:=true;
     R:=2;
     l:=0;
     while(R<=Tableau.RowCount-1)do
     begin
          if(firstlaters(Tableau.Cells[18,R],17)='Partie Commune à ')and(Firstlaters(Tableau.Cells[15,R],8)='Maintenu')then
          begin
               if(OKDesignationProjetFinance=true)and(DesignationProjetFinance='')then DesignationProjetFinance:=Tableau.Cells[18,R]
               else if(DesignationProjetFinance<>Tableau.Cells[18,R])then OKDesignationProjetFinance:=false;
               TotalPartieCommuneDebit:=TotalPartieCommuneDebit+strtoreal(Tableau.Cells[7,R]);
               TotalPartieCommuneCredit:=TotalPartieCommuneCredit+strtoreal(Tableau.Cells[8,R]);
               Tableau.Rows[R].Text:='Z';
               l:=l+1;
          end;
     R:=R+1;
     end;

     if(l>1)then SigneMultiple:='s' else SigneMultiple:='';

     DesignationProjetFinance:='Partie'+SigneMultiple+' Commune'+SigneMultiple+' à '+lastlaters(DesignationProjetFinance,longueur(DesignationProjetFinance)-17);

     TrierTableauARowSpecial(Tableau,2,Tableau.RowCount-1,0,FSTraitementDonnees.EditRubriqueTrie.Text,'','-');
     Tableau.RowCount:=Tableau.RowCount-(l-1);
     Tableau.Cells[1,Tableau.RowCount-1]:=inttostr(l)+' Partie'+SigneMultiple+' Commune'+SigneMultiple+' Cumulé'+SigneMultiple;
     Tableau.Cells[7,Tableau.RowCount-1]:=Vergule(floattostr(TotalPartieCommuneDebit),'2','C','');
     Tableau.Cells[8,Tableau.RowCount-1]:=Vergule(floattostr(TotalPartieCommuneCredit),'2','C','');
     Tableau.Cells[15,Tableau.RowCount-1]:='Maintenu';
     if(OKDesignationProjetFinance=true)
     then Tableau.Cells[18,Tableau.RowCount-1]:=inttostr(l)+' '+DesignationProjetFinance
     else Tableau.Cells[18,Tableau.RowCount-1]:=inttostr(l)+' Partie'+SigneMultiple+' Commune'+SigneMultiple+' <> %';
end;

procedure TFSTraitementDonnees.BitBtn10Click(Sender: TObject);
var  TitreEtat,SousTitreEtat,TypeEtat:string;
begin
     if(FSTraitementDonnees.EditTiersNomTiers.Text<>'')then
     begin
          //if(FSTraitementDonnees.EditTiersNomTiers.Text='Tous')
          //then TitreEtat:='Situation financière de: '+FSTraitementDonnees.EditTiersFichierConserne.Text+', '
          //else TitreEtat:='Situation financière de: '+FSTraitementDonnees.EditTiersNomTiers.Text+', ';

          if ExisteCharInString('Client',FSTraitementDonnees.EditTiersFichierConserne.Text)then TypeEtat:='Ventes'
          else
          if ExisteCharInString('Fournisseur',FSTraitementDonnees.EditTiersFichierConserne.Text)then TypeEtat:='Achats'
          else TypeEtat:='Situation '+FSTraitementDonnees.EditTiersFichierConserne.Text+': ';

          if(FSTraitementDonnees.EditTiersNomTiers.Text='Tous')
          then TitreEtat:=TypeEtat+': '+FSTraitementDonnees.EditTiersFichierConserne.Text+', '
          else TitreEtat:=TypeEtat+': '+FSTraitementDonnees.EditTiersNomTiers.Text+', ';
          
          if(FSTraitementDonnees.EditTiersNomProjetTraitement.Text<>'')then TitreEtat:=TitreEtat+'Structure: '+FSTraitementDonnees.EditTiersNomProjetTraitement.Text+', ';
          if(FSTraitementDonnees.EditTiersModePaiement.Text<>'Tous')then TitreEtat:=TitreEtat+FSTraitementDonnees.EditTiersModePaiement.Text+', ';
          if(FSTraitementDonnees.EditTiersDomiciliation.Text<>'Tous')then TitreEtat:=TitreEtat+FSTraitementDonnees.EditTiersDomiciliation.Text+', ';

          SousTitreEtat:='Période du: '+datetostr(FSTraitementDonnees.EditTiersDateDebut.Date)+' au: '+datetostr(FSTraitementDonnees.EditTiersDateFin.Date);;
          TableauToExcel(FSTraitementDonnees.TableauFinanceTiers,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
     end
     else
     begin
          showmessage('Veuillez Sélectionner un compte tiers SVP !');
          FSTraitementDonnees.EditTiersNomTiers.SetFocus;
     end;
end;

Procedure SyntheseDesProjetsParNature(TableauSynthese:TStringGrid; CodeProjet,NumFicheTechnique,NumRubrique:string; ColTypeSynthese,ColData:integer; TypeSynthese,DateFin:string; InclurePartiesCommunes:boolean);
var   R,PositionTypeAvis,NumTypeAvis,SigneDebitCredit:integer;    OKAvis,OKTypeSynthese,OKAutres:boolean;   PourcentagePartCommune,Solde,MontantPartieComune,Autres:real;
      CompteImputation,DebitCredit,FichierConserne,JourneauxAuxiliaireUtilise,TypeProces,Adresse,DataTypeSynthese:string;
begin
     TypeProces:='Business';   FichierConserne:='FAvis';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          if(FichierConserne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConserne+'} recherché !');
     end;

     ChAvis:=Adresse;
     assignfile(FAvis,ChAvis);
     try
     if FileExists(ChAvis)then
     Reset(FAvis)
     else Rewrite(FAvis);
     Seek(FAvis,0);
     Solde:=0;
     MontantPartieComune:=0;
     Autres:=0;
     while not eof(FAvis)do
     begin
          read(FAvis,RAvis);
          PourcentagePartCommune:=1;
          SigneDebitCredit:=1;
          IndiqueTypeAvis(RAvis.DesignationTypeAvis,PositionTypeAvis,NumTypeAvis,SigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise);

          if(DebitCredit='Crédit')then SigneDebitCredit:=SigneDebitCredit*(-1);

          OKAvis:=RAvis.ValiditeAvis;

          if(OKAvis=true)then
          begin
               if(strtodate(RAvis.DateAvis)<=strtodate(DateFin))
               then OKAvis:=true
               else OKAvis:=false;
          end;

          if(OKAvis=true)then
          begin
                if(RAvis.NumProjetFinance='')then
                begin
                     DataTypeSynthese:='';
                end
                else
                begin
                      if(OKAvis=true)and(TypeSynthese='Projet')then
                      begin
                           DataTypeSynthese:=RAvis.NumProjetFinance;
                      end;

                      if(TypeSynthese='Fiche')then
                      begin
                           RubriqueArborescence('',RAvis.NumRubrique,RRubriqueFicheTechniqueCopie,RFicheTechniqueCopie,RTypeAvisCopie);
                           DataTypeSynthese:=inttostr(RFicheTechniqueCopie.NumFicheTechnique);
                      end;

                      if(TypeSynthese='Rubrique')then
                      begin
                           DataTypeSynthese:=RAvis.NumRubrique;
                      end;

                      if(TypeSynthese='Planificateur')then
                      begin
                           DataTypeSynthese:=RAvis.NumPlanificateur;
                      end;
                end;
          end;

          if(InclurePartiesCommunes=false)then
          begin
               if(DataTypeSynthese='')then OKAvis:=false;
          end;

          if(OKAvis=true)then
          begin
               if(DataTypeSynthese='')then
               begin
                    OKTypeSynthese:=false;
                    if(TypeSynthese='Projet')then
                    begin
                         R:=1;
                         while(R<=TableauSynthese.RowCount-1)do
                         begin
                              if(TableauSynthese.Cells[ColTypeSynthese,R]<>'')then
                              begin
                                   PourcentagePartCommune:=FunctPourcentagePartieCommune(TableauSynthese.Cells[ColTypeSynthese,R]);
                                   TableauSynthese.Cells[ColData,R]:=Vergule(floattostr(strtoreal(TableauSynthese.Cells[ColData,R])+(SigneDebitCredit*RAvis.Montant*PourcentagePartCommune)),'2','C','');
                              end;
                         R:=R+1;
                         end;
                    end
                    else
                    if(NumFicheTechnique='')and(NumRubrique='')then
                    begin

                         PourcentagePartCommune:=FunctPourcentagePartieCommune(CodeProjet);
                         MontantPartieComune:=MontantPartieComune+(SigneDebitCredit*RAvis.Montant*PourcentagePartCommune);
                    end;
               end
               else
               begin
                    R:=1;
                    OKTypeSynthese:=false;
                    while(R<=TableauSynthese.RowCount-1)and(OKTypeSynthese=false)do
                    begin
                         if(TableauSynthese.Cells[ColTypeSynthese,R]<>'')then
                         begin
                              if(OKAvis=true)and(TypeSynthese='Projet')then
                              begin
                                   if(DataTypeSynthese=TableauSynthese.Cells[ColTypeSynthese,R])
                                   then OKTypeSynthese:=true
                                   else R:=R+1;
                              end
                              else
                              begin
                                   if(Firstlaters(RAvis.NumProjetFinance,longueur(CodeProjet))=CodeProjet)and(DataTypeSynthese=TableauSynthese.Cells[ColTypeSynthese,R])
                                   then OKTypeSynthese:=true
                                   else R:=R+1;
                              end;
                         end
                         else R:=R+1;
                    end;

                    if(OKTypeSynthese=false)then
                    begin
                         if(CodeProjet<>'')then
                         begin
                              if(Firstlaters(RAvis.NumProjetFinance,longueur(CodeProjet))=CodeProjet)
                              then OKAutres:=true
                              else OKAutres:=false;
                         end
                         else OKAutres:=true;

                         if(OKAutres=true)then
                         begin
                              if(NumFicheTechnique<>'')then
                              begin
                                   RubriqueArborescence('',RAvis.NumRubrique,RRubriqueFicheTechniqueCopie,RFicheTechniqueCopie,RTypeAvisCopie);
                                   if(inttostr(RFicheTechniqueCopie.NumFicheTechnique)=NumFicheTechnique)
                                   then OKAutres:=true
                                   else OKAutres:=false;
                              end;
                         end;

                         if(OKAutres=true)then
                         begin
                              if(NumRubrique<>'')then
                              begin
                                   if(RAvis.NumRubrique=NumRubrique)
                                   then OKAutres:=true
                                   else OKAutres:=false;
                              end;
                         end;

                         if(OKAutres=true)then Autres:=Autres+SigneDebitCredit*RAvis.Montant*PourcentagePartCommune;

                    end;
               end;
          end;

          if(OKAvis=true)and(OKTypeSynthese=true)then
          begin
               TableauSynthese.Cells[ColData,R]:=Vergule(floattostr(strtoreal(TableauSynthese.Cells[ColData,R])+(SigneDebitCredit*RAvis.Montant*PourcentagePartCommune)),'2','C','');
               Solde:=Solde+(SigneDebitCredit*RAvis.Montant*PourcentagePartCommune);
          end;
     end;
     finally
     CloseFile(FAvis);
     end;

     if(MontantPartieComune<>0)or(Autres<>0)then
     begin
          TableauSynthese.RowCount:=TableauSynthese.RowCount+4;
          TableauSynthese.Rows[TableauSynthese.RowCount-1].Text:='';
          TableauSynthese.Rows[TableauSynthese.RowCount-2].Text:='';
          TableauSynthese.Rows[TableauSynthese.RowCount-3].Text:='';
          TableauSynthese.Rows[TableauSynthese.RowCount-4].Text:='';

          TableauSynthese.Cells[ColData-1,TableauSynthese.RowCount-4]:='Parties Commune à '+floattostr(PourcentagePartCommune*100)+'%';
          TableauSynthese.Cells[ColData,TableauSynthese.RowCount-4]:=Vergule(floattostr(MontantPartieComune),'2','C','');

          TableauSynthese.Cells[ColData-1,TableauSynthese.RowCount-3]:='Autres ';
          TableauSynthese.Cells[ColData,TableauSynthese.RowCount-3]:=Vergule(floattostr(Autres),'2','C','');

          TableauSynthese.Cells[ColData-1,TableauSynthese.RowCount-1]:='Solde';
          TableauSynthese.Cells[ColData,TableauSynthese.RowCount-1]:=Vergule(floattostr(Solde+MontantPartieComune+Autres),'2','C','');
     end
     else
     begin
          TableauSynthese.RowCount:=TableauSynthese.RowCount+2;
          TableauSynthese.Rows[TableauSynthese.RowCount-1].Text:='';
          TableauSynthese.Rows[TableauSynthese.RowCount-2].Text:='';
          TableauSynthese.Cells[ColData-1,TableauSynthese.RowCount-1]:='Solde';
          TableauSynthese.Cells[ColData,TableauSynthese.RowCount-1]:=Vergule(floattostr(Solde),'2','C','');
     end;

     AjusterColWidth(TableauSynthese,'','');
end;

procedure TFSTraitementDonnees.TableauProjetTraitementContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
var  R:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;
begin
FSMenuPrincipal.TitreEtat.Text:='';
TitreEtat:='Situation financière ';
if(FSTraitementDonnees.EditNomProjetTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Structure: '+FSTraitementDonnees.EditNomProjetTraitement.Text+'.');
if(FSTraitementDonnees.EditDesignationFicheTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Fiche: '+FSTraitementDonnees.EditDesignationFicheTraitement.Text);
if(FSTraitementDonnees.EditDesignationRubriqueTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Rubrique: '+FSTraitementDonnees.EditDesignationRubriqueTraitement.Text);
if(FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Planificateur: '+FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text);
TitreEtat:='';
if(FSTraitementDonnees.EditDesignationTypeAvis.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditDesignationTypeAvis.Text;
if(FSTraitementDonnees.EditRechercheModePaiement.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditRechercheModePaiement.Text;
if(FSTraitementDonnees.EditRechercheDomiciliation.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditRechercheDomiciliation.Text;
if(TitreEtat<>'')then FSMenuPrincipal.TitreEtat.Lines.Add(TitreEtat);
FSMenuPrincipal.TitreEtat.Lines.Add('Période du: '+datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date)+' au: '+datetostr(FSTraitementDonnees.EditRechercheDateFin.Date));

GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauAvis.RowCount-2)+'.'+inttostr(FSTraitementDonnees.TableauAvis.RowCount-1);
GrasACol:='0';
CenterARow:='0';
CenterACol:='0';
RightARow:='';
RightACol:=inttostr(FSTraitementDonnees.TableauProjetTraitement.ColCount-1);

OptionsImpression(FSTraitementDonnees.TableauProjetTraitement,'Center',0,1,FSMenuPrincipal.TitreEtat.Text,FSTraitementDonnees.RBAjustement.Checked,FSTraitementDonnees.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSTraitementDonnees.TableauTiersProjetTraitementContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
var  R:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;
begin

TitreEtat:='Situation financière';

if(FSTraitementDonnees.EditTiersNomProjetTraitement.Text<>'')then TitreEtat:=TitreEtat+'Structure: '+FSTraitementDonnees.EditTiersNomProjetTraitement.Text+', ';
if(FSTraitementDonnees.EditTiersModePaiement.Text<>'Tous')then TitreEtat:=TitreEtat+FSTraitementDonnees.EditTiersModePaiement.Text+', ';
if(FSTraitementDonnees.EditTiersDomiciliation.Text<>'Tous')then TitreEtat:=TitreEtat+FSTraitementDonnees.EditTiersDomiciliation.Text+', ';

TitreEtat:=TitreEtat+'du: '+datetostr(FSTraitementDonnees.EditTiersDateDebut.Date)+' au: '+datetostr(FSTraitementDonnees.EditTiersDateFin.Date);

GrasARow:='0';
GrasACol:='0';
CenterARow:='0';
CenterACol:='0';
RightARow:='';
RightACol:=inttostr(FSTraitementDonnees.TableauTiersProjetTraitement.ColCount-1);

OptionsImpression(FSTraitementDonnees.TableauTiersProjetTraitement,'Center',0,1,TitreEtat,FSTraitementDonnees.RBTiersAjustement.Checked,FSTraitementDonnees.RBTiersOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSTraitementDonnees.TimerAfficheMessageImprimerTimer(
  Sender: TObject);
begin
     if(FSTraitementDonnees.TableauProjetTraitement.Visible=false)then
     begin
          FSTraitementDonnees.TimerAfficheMessageImprimer.Enabled:=false;
          FSTraitementDonnees.AfficheMessageImprimer.Visible:=false;
     end
     else
     begin
          FSTraitementDonnees.AfficheMessageImprimer.Visible:=true;

          if(FSTraitementDonnees.AfficheMessageImprimer.Color=$00E4E4E4)then
          begin
               FSTraitementDonnees.AfficheMessageImprimer.Color:=clWhite;
               FSTraitementDonnees.AfficheMessageImprimer.Font.Color:=clRed;
          end
          else
          begin
               FSTraitementDonnees.AfficheMessageImprimer.Color:=$00E4E4E4;
               FSTraitementDonnees.AfficheMessageImprimer.Font.Color:=clNavy;
          end;
     end;
end;

procedure TFSTraitementDonnees.AfficheMessageImprimerKeyPress(
  Sender: TObject; var Key: Char);
begin
     key:=#0;
end;

procedure TFSTraitementDonnees.AfficheMessageImprimerDblClick(
  Sender: TObject);
var  R:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;
begin
FSMenuPrincipal.TitreEtat.Text:='';
TitreEtat:='Situation financière ';
if(FSTraitementDonnees.EditNomProjetTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Structure: '+FSTraitementDonnees.EditNomProjetTraitement.Text+'.');
if(FSTraitementDonnees.EditDesignationFicheTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Fiche: '+FSTraitementDonnees.EditDesignationFicheTraitement.Text);
if(FSTraitementDonnees.EditDesignationRubriqueTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Rubrique: '+FSTraitementDonnees.EditDesignationRubriqueTraitement.Text);
if(FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Planificateur: '+FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text);
TitreEtat:='';
if(FSTraitementDonnees.EditDesignationTypeAvis.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditDesignationTypeAvis.Text;
if(FSTraitementDonnees.EditRechercheModePaiement.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditRechercheModePaiement.Text;
if(FSTraitementDonnees.EditRechercheDomiciliation.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditRechercheDomiciliation.Text;
if(TitreEtat<>'')then FSMenuPrincipal.TitreEtat.Lines.Add(TitreEtat);
FSMenuPrincipal.TitreEtat.Lines.Add('Période du: '+datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date)+' au: '+datetostr(FSTraitementDonnees.EditRechercheDateFin.Date));

GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauAvis.RowCount-2)+'.'+inttostr(FSTraitementDonnees.TableauAvis.RowCount-1);
GrasACol:='0';
CenterARow:='0';
CenterACol:='0';
RightARow:='';
RightACol:=inttostr(FSTraitementDonnees.TableauProjetTraitement.ColCount-1);

OptionsImpression(FSTraitementDonnees.TableauProjetTraitement,'Center',0,1,FSMenuPrincipal.TitreEtat.Text,FSTraitementDonnees.RBAjustement.Checked,FSTraitementDonnees.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSTraitementDonnees.AfficheMessageImprimerKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var  R:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;
begin
     key:=VK_RETURN;

FSMenuPrincipal.TitreEtat.Text:='';
TitreEtat:='Situation financière ';
if(FSTraitementDonnees.EditNomProjetTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Structure: '+FSTraitementDonnees.EditNomProjetTraitement.Text+'.');
if(FSTraitementDonnees.EditDesignationFicheTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Fiche: '+FSTraitementDonnees.EditDesignationFicheTraitement.Text);
if(FSTraitementDonnees.EditDesignationRubriqueTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Rubrique: '+FSTraitementDonnees.EditDesignationRubriqueTraitement.Text);
if(FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text<>'')then FSMenuPrincipal.TitreEtat.Lines.Add('Planificateur: '+FSTraitementDonnees.EditDesignationPlanificateurTraitement.Text);
TitreEtat:='';
if(FSTraitementDonnees.EditDesignationTypeAvis.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditDesignationTypeAvis.Text;
if(FSTraitementDonnees.EditRechercheModePaiement.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditRechercheModePaiement.Text;
if(FSTraitementDonnees.EditRechercheDomiciliation.Text<>'Tous')then TitreEtat:=TitreEtat+' '+FSTraitementDonnees.EditRechercheDomiciliation.Text;
if(TitreEtat<>'')then FSMenuPrincipal.TitreEtat.Lines.Add(TitreEtat);
FSMenuPrincipal.TitreEtat.Lines.Add('Période du: '+datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date)+' au: '+datetostr(FSTraitementDonnees.EditRechercheDateFin.Date));

GrasARow:='0;'+inttostr(FSTraitementDonnees.TableauAvis.RowCount-2)+'.'+inttostr(FSTraitementDonnees.TableauAvis.RowCount-1);
GrasACol:='0';
CenterARow:='0';
CenterACol:='0';
RightARow:='';
RightACol:=inttostr(FSTraitementDonnees.TableauProjetTraitement.ColCount-1);

OptionsImpression(FSTraitementDonnees.TableauProjetTraitement,'Center',0,1,FSMenuPrincipal.TitreEtat.Text,FSTraitementDonnees.RBAjustement.Checked,FSTraitementDonnees.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSTraitementDonnees.EditAnneeAfficheSelect(Sender: TObject);
begin
     FSTraitementDonnees.EditRechercheDateDebut.Date:=strtodate('01/01/'+FSTraitementDonnees.EditAnneeAffiche.Text);
     FSTraitementDonnees.EditRechercheDateFin.Date:=strtodate('31/12/'+FSTraitementDonnees.EditAnneeAffiche.Text);

     FSTraitementDonnees.CacherTableauAvis.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked;

     if(FSTraitementDonnees.CacherTableauAvis.Visible=false)then
     begin
          ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
          SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
     end;

      EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.TableauAvisKeyPress(Sender: TObject;
  var Key: Char);
var  R:integer;  OKAvisExeste:boolean;
begin
     if key in['c','C']then
     begin
          ActionDateExecutionAvis;
     end;
end;

Procedure ProcExecuterDateAvis;
var  R:integer;
begin
     FSOperationsAvis.TableauPositionAvisSelect.ColCount:=9;
     FSOperationsAvis.TableauPositionAvisSelect.Cols[0].Text:='Or';
     FSOperationsAvis.TableauPositionAvisSelect.Cols[1].Text:='Num Avis';
     FSOperationsAvis.TableauPositionAvisSelect.Cols[2].Text:='Date';
     FSOperationsAvis.TableauPositionAvisSelect.Cols[3].Text:='M.Débit';
     FSOperationsAvis.TableauPositionAvisSelect.Cols[4].Text:='M.Crédit';
     FSOperationsAvis.TableauPositionAvisSelect.Cols[5].Text:='Tièrs';
     FSOperationsAvis.TableauPositionAvisSelect.Cols[6].Text:='Opération';
     FSOperationsAvis.TableauPositionAvisSelect.Cols[7].Text:='P°';
     FSOperationsAvis.TableauPositionAvisSelect.Cols[8].Text:='Rows';

     FSOperationsAvis.TableauPositionAvisSelect.RowCount:=2;
     FSOperationsAvis.TableauPositionAvisSelect.Rows[1].Text:='';

     if(FSTraitementDonnees.TableauPositionAvisSelect.Cells[1,1]<>'')
     then
     begin
          FSOperationsAvis.Show;
          for R:=1 to FSTraitementDonnees.TableauPositionAvisSelect.RowCount-1 do
          begin
               FSOperationsAvis.TableauPositionAvisSelect.Cells[0,R]:=FSTraitementDonnees.TableauPositionAvisSelect.Cells[0,R];
               FSOperationsAvis.TableauPositionAvisSelect.Cells[1,R]:=FSTraitementDonnees.TableauPositionAvisSelect.Cells[1,R];
               FSOperationsAvis.TableauPositionAvisSelect.Cells[2,R]:=FSTraitementDonnees.TableauPositionAvisSelect.Cells[2,R];
               FSOperationsAvis.TableauPositionAvisSelect.Cells[3,R]:=FSTraitementDonnees.TableauPositionAvisSelect.Cells[3,R];
               FSOperationsAvis.TableauPositionAvisSelect.Cells[4,R]:=FSTraitementDonnees.TableauPositionAvisSelect.Cells[4,R];
               FSOperationsAvis.TableauPositionAvisSelect.Cells[5,R]:=FSTraitementDonnees.TableauPositionAvisSelect.Cells[5,R];
               FSOperationsAvis.TableauPositionAvisSelect.Cells[6,R]:=FSTraitementDonnees.TableauPositionAvisSelect.Cells[6,R];
               FSOperationsAvis.TableauPositionAvisSelect.Cells[7,R]:=FSTraitementDonnees.TableauPositionAvisSelect.Cells[7,R];
               FSOperationsAvis.TableauPositionAvisSelect.Cells[8,R]:=FSTraitementDonnees.TableauPositionAvisSelect.Cells[8,R];
          end;

          if(R=1)then FSOperationsAvis.EditNumAvis.Text:=FSOperationsAvis.TableauPositionAvisSelect.Cells[1,R]
                 else FSOperationsAvis.EditNumAvis.Text:=inttostr(R)+' avis séléctionnés !';

          FSOperationsAvis.TableauPositionAvisSelect.RowCount:=R;
          AjusterColWidth(FSOperationsAvis.TableauPositionAvisSelect,'','');

          if(datecorrecte(FSTraitementDonnees.TableauAvis.Cells[3,FSTraitementDonnees.TableauAvis.Row])=true)
          then FSOperationsAvis.EditDateAvisExecute.Text:=FSTraitementDonnees.TableauAvis.Cells[3,FSTraitementDonnees.TableauAvis.Row]
          else FSOperationsAvis.EditDateAvisExecute.Text:=datetostr(date);
          FSOperationsAvis.EditRowSelect.Text:=inttostr(FSTraitementDonnees.TableauAvis.Row);
          FSOperationsAvis.BitValiderAvisExecute.SetFocus;
     end
     else
     begin
          showmessage('Veuillez saisire la date d''établissement de l''Avis SVP !');
     end;
end;

procedure TFSTraitementDonnees.TableauAvisDblClick(Sender: TObject);
var  R:integer; OKAvisExeste:boolean;
begin
     if(FSTraitementDonnees.AfficheTableauDataIsoler.Visible=true)then
     begin
          if(FSTraitementDonnees.RBBoutEnBout.Checked=true)then
          begin
               if(FSTraitementDonnees.TableauAvis.Cells[1,FSTraitementDonnees.TableauAvis.Row]<>'')then
               begin
                    if(FSTraitementDonnees.EditBoutA.Text='')then FSTraitementDonnees.EditBoutA.Text:=inttostr(FSTraitementDonnees.TableauAvis.Row)
                    else if(strtointeger(FSTraitementDonnees.EditBoutA.Text)>FSTraitementDonnees.TableauAvis.Row)then FSTraitementDonnees.EditBoutA.Text:=inttostr(FSTraitementDonnees.TableauAvis.Row);
                    FSTraitementDonnees.EditBoutB.Text:=inttostr(FSTraitementDonnees.TableauAvis.Row);
               end;

               if(FSTraitementDonnees.EditBoutA.Text<>'')and(FSTraitementDonnees.EditBoutB.Text<>'')then
               begin
                     FSTraitementDonnees.EditNumLigneIsoler.Text:='';
                     R:=strtointeger(FSTraitementDonnees.EditBoutA.Text);
                     while(R<=FSTraitementDonnees.TableauAvis.RowCount-1)and(R<=strtointeger(FSTraitementDonnees.EditBoutB.Text))do
                     begin
                           if(FSTraitementDonnees.EditNumLigneIsoler.Text='')then
                           begin
                                FSTraitementDonnees.EditNumLigneIsoler.Text:=inttostr(R);
                           end
                           else
                           begin
                                if not(existenumintexte(inttostr(R),FSTraitementDonnees.EditNumLigneIsoler.Text))
                                then FSTraitementDonnees.EditNumLigneIsoler.Text:=FSTraitementDonnees.EditNumLigneIsoler.Text+';'+inttostr(R);
                           end;

                           DataTableauIsoler(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauDataIsoler,FSTraitementDonnees.EditNumLigneIsoler.Text);
                     R:=R+1;
                     end;
               end;
          end
          else
          begin
               if(FSTraitementDonnees.EditNumLigneIsoler.Text='')then
               begin
                    FSTraitementDonnees.EditNumLigneIsoler.Text:=inttostr(FSTraitementDonnees.TableauAvis.Row);
               end
               else
               begin
                    if not(existenumintexte(inttostr(FSTraitementDonnees.TableauAvis.Row),FSTraitementDonnees.EditNumLigneIsoler.Text))
                    then FSTraitementDonnees.EditNumLigneIsoler.Text:=FSTraitementDonnees.EditNumLigneIsoler.Text+';'+inttostr(FSTraitementDonnees.TableauAvis.Row);
               end;

               DataTableauIsoler(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauDataIsoler,FSTraitementDonnees.EditNumLigneIsoler.Text);
          end;
     end
     else
     begin
          ActionDateExecutionAvis;
     end;
end;

procedure TFSTraitementDonnees.BitRduireTableauAvisClick(Sender: TObject);
begin
     FSTraitementDonnees.AfficheTableauAfficheRubrique.Height:=25;
     if(FSTraitementDonnees.AfficheRedimensionneTableauAvis.Left=4)then
     begin
          FSTraitementDonnees.AfficheRedimensionneTableauAvis.Left:=FSTraitementDonnees.PanelDomiciliation.Left+FSTraitementDonnees.PanelDomiciliation.Width+4;
          FSTraitementDonnees.AfficheRedimensionneTableauAvis.Width:=FSTraitementDonnees.AfficheTableauAvis.Width-FSTraitementDonnees.AfficheRedimensionneTableauAvis.Left-4;
          FSTraitementDonnees.TableauAvis.Width:=FSTraitementDonnees.AfficheRedimensionneTableauAvis.Width-8;
     end
     else
     begin
          FSTraitementDonnees.AfficheRedimensionneTableauAvis.Left:=4;
          FSTraitementDonnees.AfficheRedimensionneTableauAvis.Width:=FSTraitementDonnees.AfficheTableauAvis.Width-8;
          FSTraitementDonnees.TableauAvis.Width:=FSTraitementDonnees.AfficheRedimensionneTableauAvis.Width-8;
     end;

     FSTraitementDonnees.CacherTableauAvis.Left:=FSTraitementDonnees.TableauAvis.Left;
     FSTraitementDonnees.CacherTableauAvis.Top:=FSTraitementDonnees.TableauAvis.Top;
     FSTraitementDonnees.CacherTableauAvis.Height:=FSTraitementDonnees.TableauAvis.Height;
     FSTraitementDonnees.CacherTableauAvis.Width:=FSTraitementDonnees.TableauAvis.Width;

     FSTraitementDonnees.BitAfficheCacheTableauAvis.Left:=ValeAbsolue((FSTraitementDonnees.CacherTableauAvis.Width/2)-(FSTraitementDonnees.BitAfficheCacheTableauAvis.Width/2));
     FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Left:=FSTraitementDonnees.BitAfficheCacheTableauAvis.Left;

     FSTraitementDonnees.AffichePatientez.Top:=230;
     FSTraitementDonnees.AffichePatientez.Left:=FSTraitementDonnees.AfficheRedimensionneTableauAvis.Left+FSTraitementDonnees.CacherTableauAvis.Left+FSTraitementDonnees.BitAfficheCacheTableauAvis.Left-ValeAbsolue((FSTraitementDonnees.AffichePatientez.Width-FSTraitementDonnees.BitAfficheCacheTableauAvis.Width)/2);
end;



Procedure CreatTableauConfigurationAffichageRubrique(TableauConfigurationAffichageRubrique,TableauAffichage:TStringGrid; RowRubrique:integer);
var   C:integer;
begin
     TableauConfigurationAffichageRubrique.ColCount:=2;
     TableauConfigurationAffichageRubrique.Cols[0].Text:='Rubrique Affichge';
     TableauConfigurationAffichageRubrique.Cols[1].Text:='Sélect';
     C:=1;
     while(C<=TableauAffichage.ColCount-1)do
     begin
          TableauConfigurationAffichageRubrique.Cells[0,C]:=TableauAffichage.Cells[C,RowRubrique];
          if(TableauAffichage.ColWidths[C]<=10)
          then TableauConfigurationAffichageRubrique.Cells[1,C]:=''
          else TableauConfigurationAffichageRubrique.Cells[1,C]:='OK';
     C:=C+1;
     end;
     TableauConfigurationAffichageRubrique.RowCount:=C;
     AjusterColWidth(TableauConfigurationAffichageRubrique,'','');
end;

procedure TFSTraitementDonnees.AfficheTableauAfficheRubriqueClick(
  Sender: TObject);
var  C:integer;  NotRow,NotCol:string; 
begin
     if(FSTraitementDonnees.AfficheTableauAfficheRubrique.Height=25)then
     begin
          FSTraitementDonnees.AfficheTableauAfficheRubrique.Height:=532;
          CreatTableauConfigurationAffichageRubrique(FSTraitementDonnees.TableauAfficheRubrique,FSTraitementDonnees.TableauAvis,0);
     end
     else
     begin
          FSTraitementDonnees.AfficheTableauAfficheRubrique.Height:=25;

          if(ListeNotCol(FSTraitementDonnees.TableauAfficheRubrique)<>'')then NotCol:=ListeNotCol(FSTraitementDonnees.TableauAfficheRubrique);

          for C:=1 to FSTraitementDonnees.TableauAvis.ColCount-1 do if(ExisteNumInTexte(inttostr(C),NotCol))then FSTraitementDonnees.TableauAvis.ColWidths[C]:=0;

          AjusterColWidth(FSTraitementDonnees.TableauAvis,NotRow,NotCol);

          ProcSauvgardeActiveColsTableaux(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAvis.Name);
     end;

     if(FSTraitementDonnees.AfficheTableauDataIsoler.Visible=true)then
     begin
          NotCol:='';
          for C:=1 to FSTraitementDonnees.TableauAvis.ColCount-1 do
          begin
               if FSTraitementDonnees.TableauAvis.ColWidths[C]<10 then
               begin
                    if(NotCol='')
                    then NotCol:=inttostr(C)
                    else NotCol:=NotCol+';'+inttostr(C)
               end;
          end;

          for C:=1 to FSTraitementDonnees.TableauDataIsoler.ColCount-1 do
          begin
               if existenumintexte(inttostr(C),NotCol)then FSTraitementDonnees.TableauDataIsoler.ColWidths[C]:=0;
          end;

          AjusterColWidth(FSTraitementDonnees.TableauDataIsoler,'',NotCol);

          ProcSauvgardeActiveColsTableaux(FSTraitementDonnees.TableauDataIsoler,FSTraitementDonnees.TableauDataIsoler.Name);
     end;
end;

procedure TFSTraitementDonnees.TableauAfficheRubriqueDblClick(
  Sender: TObject);
begin
     if(FSTraitementDonnees.TableauAfficheRubrique.Cells[1,FSTraitementDonnees.TableauAfficheRubrique.Row]='')
     then FSTraitementDonnees.TableauAfficheRubrique.Cells[1,FSTraitementDonnees.TableauAfficheRubrique.Row]:='OK'
     else FSTraitementDonnees.TableauAfficheRubrique.Cells[1,FSTraitementDonnees.TableauAfficheRubrique.Row]:='';
end;

Function ListeNotCol(TableauConfigurationAffichageRubrique:TStringGrid):string;
var   R:integer;  ListeCol:string;
begin
     R:=1;
     ListeCol:='';
     while(R<=TableauConfigurationAffichageRubrique.RowCount-1)do
     begin
          if(TableauConfigurationAffichageRubrique.Cells[1,R]<>'OK')then
          begin
               if(ListeCol='')
               then ListeCol:=ListeCol+inttostr(R)
               else ListeCol:=ListeCol+';'+inttostr(R);
          end;
     R:=R+1;
     end;

     ListeNotCol:=ListeCol;
end;

procedure TFSTraitementDonnees.RBTrieTableauFinanceTiersDescendantClick(Sender: TObject);
begin
     FSTraitementDonnees.TiersTypeTrie.Caption:='-';

     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBTrieTableauFinanceTiersAscendantClick(Sender: TObject);
begin
     FSTraitementDonnees.TiersTypeTrie.Caption:='+';

     EnregistrerOptionsTraitementDonnees;
end;
             
procedure TFSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemantClick(
  Sender: TObject);
var NotTrieRow:integer;  AdresseArchivePhoto:string;
begin
     if(FSTraitementDonnees.RBImprimeTableauSelect.Checked=true)then FSTraitementDonnees.EditNomTableauImprime.Text:='TableauDetaiMouvementAppartenanceMouvemant';

     if(FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked=true)then
     begin
          FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked:=false;
          FSTraitementDonnees.EditIndiceRubriqueTriCol.Text:=inttostr(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Col);
          EnregistrerOptionsTraitementDonnees;
          if(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Col in[6,7,8])
          then FSTraitementDonnees.EditTypeDataTrie.Text:='Num'
          else FSTraitementDonnees.EditTypeDataTrie.Text:='';
          NotTrieRow:=3;
          TrierTableauARowSpecial(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,1,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-NotTrieRow,1,FSTraitementDonnees.EditIndiceRubriqueTriCol.Text,FSTraitementDonnees.EditTypeDataTrie.Text,FSTraitementDonnees.EditTypeTrie.Text);
     end;

     if(FSTraitementDonnees.RBFixeColonne.Checked=true)then
     begin
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.FixedCols:=strtointeger(FSTraitementDonnees.EditFixeColonne.Text);
          FSTraitementDonnees.RBFixeColonne.Checked:=false;
     end;

     if(FSTraitementDonnees.AfficheIndiqueArchivePhoto.Visible=true)
     and(IndiqueAdresseArchivePhoto('','',FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[1,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Row],'',FSTraitementDonnees.TableauxListePositionArchivePhoto,AdresseArchivePhoto))then
     begin
          if FileExists(AdresseArchivePhoto)
          then FSTraitementDonnees.ArchivePhoto.Picture.LoadFromFile(AdresseArchivePhoto)
          else FSTraitementDonnees.ArchivePhoto.Picture:=FSArchivesPhotosCommentaires.PhotoVide.Picture;
     end
     else
     begin
          FSTraitementDonnees.ArchivePhoto.Picture:=FSArchivesPhotosCommentaires.PhotoVide.Picture;
     end;

     FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColWidths[FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Col]:=MinInt(FSTraitementDonnees.IncrimenteEditTailleColonneMax.Position,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColWidths[FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Col]);
end;

procedure TFSTraitementDonnees.AfficheTiersTableauAfficheRubriqueClick(
  Sender: TObject);
var  C:integer; NotRow,NotCol:string;
begin
     if(FSTraitementDonnees.AfficheTiersTableauAfficheRubrique.Height=25)then
     begin
          FSTraitementDonnees.AfficheTiersTableauAfficheRubrique.Height:=532;
          CreatTableauConfigurationAffichageRubrique(FSTraitementDonnees.TableauTiersAfficheRubrique,FSTraitementDonnees.TableauFinanceTiers,0);
     end
     else
     begin
          FSTraitementDonnees.AfficheTiersTableauAfficheRubrique.Height:=25;

          if(ListeNotCol(FSTraitementDonnees.TableauTiersAfficheRubrique)<>'')then NotCol:=ListeNotCol(FSTraitementDonnees.TableauTiersAfficheRubrique);

          for C:=1 to FSTraitementDonnees.TableauFinanceTiers.ColCount-1 do if(ExisteNumInTexte(inttostr(C),NotCol))then FSTraitementDonnees.TableauFinanceTiers.ColWidths[C]:=0;

          NotRow:='';
          AjusterColWidth(FSTraitementDonnees.TableauFinanceTiers,NotRow,NotCol);

          ProcSauvgardeActiveColsTableaux(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.TableauFinanceTiers.Name);
     end;
end;

procedure TFSTraitementDonnees.BitTiersRduireTableauAvisClick(
  Sender: TObject);
begin
     FSTraitementDonnees.AfficheTiersTableauAfficheRubrique.Height:=25;

     if(FSTraitementDonnees.AfficheTableauSelectionDonnees.Visible=false)then
     begin
           if(FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Left=4)then
           begin
                FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Left:=FSTraitementDonnees.PanelTiersDomiciliation.Left+FSTraitementDonnees.PanelTiersDomiciliation.Width+4;
                FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Width:=FSTraitementDonnees.AfficheTiersTableauAvis.Width-FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Left-4;
                FSTraitementDonnees.TableauFinanceTiers.Width:=FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Width-8;
           end
           else
           begin
                FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Left:=4;
                FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Width:=FSTraitementDonnees.PagePrincipale.Width-20;
                FSTraitementDonnees.TableauFinanceTiers.Width:=FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Width-8;
           end;
     end
     else
     begin
           if(FSTraitementDonnees.AfficheTableauSelectionDonnees.Left=4)then
           begin
                FSTraitementDonnees.AfficheTableauSelectionDonnees.Left:=FSTraitementDonnees.PanelTiersDomiciliation.Left+FSTraitementDonnees.PanelTiersDomiciliation.Width+4;
                FSTraitementDonnees.AfficheTableauSelectionDonnees.Width:=FSTraitementDonnees.AfficheTiersTableauAvis.Width-FSTraitementDonnees.PanelTiersDomiciliation.Width-12;
           end
           else
           begin
                FSTraitementDonnees.AfficheTableauSelectionDonnees.Left:=4;
                FSTraitementDonnees.AfficheTableauSelectionDonnees.Width:=FSTraitementDonnees.AfficheTiersTableauAvis.Width-9;
           end;

           FSTraitementDonnees.TableauDetailMouvementSelection.Width:=FSTraitementDonnees.AfficheTableauSelectionDonnees.Width-FSTraitementDonnees.TableauSelectionDonnees.Width-22;
           FSTraitementDonnees.AfficheDetailArticle.Width:=FSTraitementDonnees.TableauDetailMouvementSelection.Width;
     end;

     FSTraitementDonnees.CacherTableauFinanceTiers.Left:=FSTraitementDonnees.TableauFinanceTiers.Left;
     FSTraitementDonnees.CacherTableauFinanceTiers.Top:=FSTraitementDonnees.TableauFinanceTiers.Top;
     FSTraitementDonnees.CacherTableauFinanceTiers.Height:=FSTraitementDonnees.TableauFinanceTiers.Height;
     FSTraitementDonnees.CacherTableauFinanceTiers.Width:=FSTraitementDonnees.TableauFinanceTiers.Width;

     FSTraitementDonnees.BitAfficheCacheTableauFinanceTiers.Left:=ValeAbsolue((FSTraitementDonnees.CacherTableauFinanceTiers.Width/2)-(FSTraitementDonnees.BitAfficheCacheTableauFinanceTiers.Width/2));
     FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Left:=FSTraitementDonnees.BitAfficheCacheTableauFinanceTiers.Left;

     FSTraitementDonnees.AffichePatientez.Top:=230;
     FSTraitementDonnees.AffichePatientez.Left:=FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Left+FSTraitementDonnees.CacherTableauFinanceTiers.Left+FSTraitementDonnees.BitAfficheCacheTableauFinanceTiers.Left-ValeAbsolue((FSTraitementDonnees.AffichePatientez.Width-FSTraitementDonnees.BitAfficheCacheTableauFinanceTiers.Width)/2);
end;

procedure TFSTraitementDonnees.TableauTiersAfficheRubriqueDblClick(
  Sender: TObject);
begin
     if(FSTraitementDonnees.TableauTiersAfficheRubrique.Cells[1,FSTraitementDonnees.TableauTiersAfficheRubrique.Row]='')
     then FSTraitementDonnees.TableauTiersAfficheRubrique.Cells[1,FSTraitementDonnees.TableauTiersAfficheRubrique.Row]:='OK'
     else FSTraitementDonnees.TableauTiersAfficheRubrique.Cells[1,FSTraitementDonnees.TableauTiersAfficheRubrique.Row]:='';
end;

procedure TFSTraitementDonnees.BitAfficherTousRubriqueClick(Sender: TObject);
var   R:integer;
begin
     if(FSTraitementDonnees.BitAfficherTousRubrique.Caption='Sélectionner tous !')then
     begin
          FSTraitementDonnees.BitAfficherTousRubrique.Caption:='Désélectionner tous !';
          R:=1;
          while(R<=FSTraitementDonnees.TableauAfficheRubrique.RowCount-1)do
          begin
               FSTraitementDonnees.TableauAfficheRubrique.Cells[1,R]:='OK';
          R:=R+1;
          end;
     end
     else
     begin
          FSTraitementDonnees.BitAfficherTousRubrique.Caption:='Sélectionner tous !';
          R:=1;
          while(R<=FSTraitementDonnees.TableauAfficheRubrique.RowCount-1)do
          begin
               FSTraitementDonnees.TableauAfficheRubrique.Cells[1,R]:='';
          R:=R+1;
          end;
     end;
end;

procedure TFSTraitementDonnees.BitTiersAfficherTousRubriqueClick(Sender: TObject);
var   R:integer;
begin
     if(FSTraitementDonnees.BitTiersAfficherTousRubrique.Caption='Sélectionner tous !')then
     begin
          FSTraitementDonnees.BitTiersAfficherTousRubrique.Caption:='Désélectionner tous !';
          R:=1;
          while(R<=FSTraitementDonnees.TableauTiersAfficheRubrique.RowCount-1)do
          begin
               FSTraitementDonnees.TableauTiersAfficheRubrique.Cells[1,R]:='OK';
          R:=R+1;
          end;
     end
     else
     begin
          FSTraitementDonnees.BitTiersAfficherTousRubrique.Caption:='Sélectionner tous !';
          R:=1;
          while(R<=FSTraitementDonnees.TableauTiersAfficheRubrique.RowCount-1)do
          begin
               FSTraitementDonnees.TableauTiersAfficheRubrique.Cells[1,R]:='';
          R:=R+1;
          end;
     end;
end;

procedure TFSTraitementDonnees.BitBtn12Click(Sender: TObject);
begin
     FSTraitementDonnees.AfficheTableauSelectionDonnees.Visible:=false;
     FSTraitementDonnees.RapportTraitementMouvements.Visible:=false;
end;

procedure TFSTraitementDonnees.BitBtn13Click(Sender: TObject);
var  i,R,l:integer; DebitCredit,Index:string;  OKTraitement:boolean;
begin
     if(FSTraitementDonnees.RBListeMouvement.Checked=true)then Index:='LM';
     if(FSTraitementDonnees.RBPrelevement.Checked=true)then Index:='UF';
     if(FSTraitementDonnees.RBTousMouvementPrelevementSituationMarche.Checked=true)then Index:='';

     FSTraitementDonnees.AfficheTableauSelectionDonnees.Visible:=true;
     FSTraitementDonnees.AfficheTableauSelectionDonnees.Top:=FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Top;
     FSTraitementDonnees.AfficheTableauSelectionDonnees.Left:=FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Left;

     FSTraitementDonnees.TableauTitreDetailMouvementSelection.Cells[0,0]:='Détail des articles';
     FSTraitementDonnees.TableauDetailMouvementSelection.RowCount:=2;
     FSTraitementDonnees.TableauDetailMouvementSelection.Rows[1].Text:='';

     FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers.Text:='';
     FSTraitementDonnees.EditOrdreListeMouvementAppartenantTiers.Text:='';
     FSTraitementDonnees.EditListeAppartenanceCodeMouvement.Text:='';

     FSTraitementDonnees.TableauTitreSelectionDonnees.Cells[0,0]:='Liste des mouvements';
     FSTraitementDonnees.TableauSelectionDonnees.ColCount:=12;
     FSTraitementDonnees.TableauSelectionDonnees.Cols[0].Text:='N°';
     FSTraitementDonnees.TableauSelectionDonnees.Cols[1].Text:='Ordre';
     FSTraitementDonnees.TableauSelectionDonnees.Cols[2].Text:='Num';
     FSTraitementDonnees.TableauSelectionDonnees.Cols[3].Text:='Date';
     FSTraitementDonnees.TableauSelectionDonnees.Cols[4].Text:='N°Pièce';
     FSTraitementDonnees.TableauSelectionDonnees.Cols[5].Text:='Comptabilité';
     FSTraitementDonnees.TableauSelectionDonnees.Cols[6].Text:='Montant';
     FSTraitementDonnees.TableauSelectionDonnees.Cols[7].Text:='Sélect';
     FSTraitementDonnees.TableauSelectionDonnees.Cols[8].Text:='Index';
     FSTraitementDonnees.TableauSelectionDonnees.Cols[9].Text:='Réf.';
     FSTraitementDonnees.TableauSelectionDonnees.Cols[10].Text:='P°TM';
     FSTraitementDonnees.TableauSelectionDonnees.Cols[11].Text:='P°M';

     FSTraitementDonnees.TableauSelectionDonnees.RowCount:=2;
     FSTraitementDonnees.TableauSelectionDonnees.Rows[1].Text:='';

     R:=1;
     l:=0;
     DebitCredit:='';
     while(R<=FSTraitementDonnees.TableauFinanceTiers.RowCount-1)do
     begin
          if(Index<>'')then
          begin
               if(FSTraitementDonnees.TableauFinanceTiers.Cells[16,R]=Index)
               then OKTraitement:=true
               else OKTraitement:=false;
          end
          else
          begin
               if(FSTraitementDonnees.TableauFinanceTiers.Cells[16,R]='LM')
               or(FSTraitementDonnees.TableauFinanceTiers.Cells[16,R]='UF')
               then OKTraitement:=true
               else OKTraitement:=false;
          end;

          if(OKTraitement=true)then
          begin
               l:=l+1;
                FSTraitementDonnees.TableauSelectionDonnees.Cells[0,l]:=inttostr(l);
                FSTraitementDonnees.TableauSelectionDonnees.Cells[1,l]:=inttostr(strtointeger(FSTraitementDonnees.TableauFinanceTiers.Cells[1,R]));
                FSTraitementDonnees.TableauSelectionDonnees.Cells[2,l]:=inttostr(strtointeger(FSTraitementDonnees.TableauFinanceTiers.Cells[14,R]));
                FSTraitementDonnees.TableauSelectionDonnees.Cells[3,l]:=FSTraitementDonnees.TableauFinanceTiers.Cells[2,R];
                FSTraitementDonnees.TableauSelectionDonnees.Cells[4,l]:=FSTraitementDonnees.TableauFinanceTiers.Cells[6,R];
                FSTraitementDonnees.TableauSelectionDonnees.Cells[5,l]:=FSTraitementDonnees.TableauFinanceTiers.Cells[13,R];

                if((DebitCredit='')or(DebitCredit=FSTraitementDonnees.TableauFinanceTiers.Cells[13,R]))then DebitCredit:=FSTraitementDonnees.TableauFinanceTiers.Cells[13,R] else DebitCredit:='?';

                if(FSTraitementDonnees.TableauFinanceTiers.Cells[7,R]<>'')then
                begin
                     FSTraitementDonnees.TableauSelectionDonnees.Cells[6,l]:=FSTraitementDonnees.TableauFinanceTiers.Cells[7,R];
                end;

                if(FSTraitementDonnees.TableauFinanceTiers.Cells[8,R]<>'')then
                begin
                     FSTraitementDonnees.TableauSelectionDonnees.Cells[6,l]:=FSTraitementDonnees.TableauFinanceTiers.Cells[8,R];
                end;

                FSTraitementDonnees.TableauSelectionDonnees.Cells[7,l]:='';
                FSTraitementDonnees.TableauSelectionDonnees.Cells[8,l]:=FSTraitementDonnees.TableauFinanceTiers.Cells[16,R];
                FSTraitementDonnees.TableauSelectionDonnees.Cells[9,l]:=FSTraitementDonnees.TableauFinanceTiers.Cells[14,R];
                FSTraitementDonnees.TableauSelectionDonnees.Cells[10,l]:=FSTraitementDonnees.TableauFinanceTiers.Cells[27,R];
                FSTraitementDonnees.TableauSelectionDonnees.Cells[11,l]:=FSTraitementDonnees.TableauFinanceTiers.Cells[28,R];

                if(FSTraitementDonnees.TableauFinanceTiers.Cells[16,R]='LM')then
                begin
                     if not existenumintexte(FSTraitementDonnees.TableauFinanceTiers.Cells[28,R],FSTraitementDonnees.EditListeAppartenanceCodeMouvement.Text)then
                     begin
                          if(FSTraitementDonnees.EditListeAppartenanceCodeMouvement.Text='')
                          then FSTraitementDonnees.EditListeAppartenanceCodeMouvement.Text:=FSTraitementDonnees.TableauFinanceTiers.Cells[28,R]
                          else FSTraitementDonnees.EditListeAppartenanceCodeMouvement.Text:=FSTraitementDonnees.EditListeAppartenanceCodeMouvement.Text+';'+FSTraitementDonnees.TableauFinanceTiers.Cells[28,R];
                     end;
                end;
          end;
     R:=R+1;
     end;

     if(l>0)then
            begin
                 FSTraitementDonnees.TableauSelectionDonnees.RowCount:=l+3;
                 FSTraitementDonnees.TableauSelectionDonnees.Rows[FSTraitementDonnees.TableauSelectionDonnees.RowCount-1].Text:='';
                 FSTraitementDonnees.TableauSelectionDonnees.Rows[FSTraitementDonnees.TableauSelectionDonnees.RowCount-2].Text:='';

                 FSTraitementDonnees.TableauSelectionDonnees.Cells[5,FSTraitementDonnees.TableauSelectionDonnees.RowCount-1]:='Total:';
                 FSTraitementDonnees.TableauSelectionDonnees.Cells[6,FSTraitementDonnees.TableauSelectionDonnees.RowCount-1]:='';
            end
            else FSTraitementDonnees.TableauSelectionDonnees.RowCount:=2;

     FSTraitementDonnees.TableauSelectionDonnees.ColWidths[1]:=0;
     FSTraitementDonnees.TableauSelectionDonnees.ColWidths[9]:=0;
     AjusterColWidth(FSTraitementDonnees.TableauSelectionDonnees,'','');  //1;9

     FSTraitementDonnees.TableauPositionMouvementTiers.ColCount:=1;
     FSTraitementDonnees.TableauPositionMouvementTiers.Cols[0].Text:='P°M';
     FSTraitementDonnees.TableauPositionMouvementTiers.RowCount:=2;
     FSTraitementDonnees.TableauPositionMouvementTiers.Rows[1].Text:='';
     R:=0;
     i:=0;
     while(i<=100)do
     begin
          if existenumintexte(inttostr(i),FSTraitementDonnees.EditListeAppartenanceCodeMouvement.Text)then
          begin
               R:=R+1;
               FSTraitementDonnees.TableauPositionMouvementTiers.Rows[R].Text:=inttostr(i);
          end;
     i:=i+1;
     end;

     if(R>0)then FSTraitementDonnees.TableauPositionMouvementTiers.RowCount:=R+1
            else FSTraitementDonnees.TableauPositionMouvementTiers.RowCount:=2;

     FSTraitementDonnees.TableauSelectionDonneesImprimer.ColCount:=FSTraitementDonnees.TableauSelectionDonnees.ColCount;
     FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[0].Text:=FSTraitementDonnees.TableauSelectionDonnees.Rows[0].Text;
     FSTraitementDonnees.TableauSelectionDonneesImprimer.RowCount:=2;
     FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[1].Text:='';

     if(DebitCredit='?')then AfficherMessage('Anomalie dans l''homogénéité des mouvements {Débit, Crédit}!');
end;

procedure TFSTraitementDonnees.TableauSelectionDonneesDblClick(
  Sender: TObject);
var  R,C,l,Row:integer;  MontantTotal,CoutTotal,ValeurAjouterTotal:real; NotCol:string;
begin
     FSTraitementDonnees.AfficheDetailArticle.Visible:=true;
     FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers.Text:='';

     Row:=0;
     for R:=1 to FSTraitementDonnees.TableauSelectionDonnees.RowCount-3 do
     begin
          if(FSTraitementDonnees.TableauSelectionDonnees.Row=R)then
          begin
               if(FSTraitementDonnees.TableauSelectionDonnees.Cells[7,R]='')
               then FSTraitementDonnees.TableauSelectionDonnees.Cells[7,R]:='OK'
               else FSTraitementDonnees.TableauSelectionDonnees.Cells[7,R]:='';
          end;

          if(FSTraitementDonnees.TableauSelectionDonnees.Cells[7,R]='OK')then
          begin
               if(FSTraitementDonnees.EditDebitCreditPositifTiers.Text='')
               then FSTraitementDonnees.EditDebitCreditPositifTiers.Text:=FSTraitementDonnees.TableauSelectionDonnees.Cells[5,R];
               
               FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers.Text:=floattostr(strtoreal(FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers.Text)+strtoreal(FSTraitementDonnees.TableauSelectionDonnees.Cells[6,R]));
          end;
     end;
     FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers.Text:=Vergule(FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers.Text,'2','C','');

     FSTraitementDonnees.TableauSelectionDonnees.Cells[6,FSTraitementDonnees.TableauSelectionDonnees.RowCount-1]:=FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers.Text;
     AjusterColWidth(FSTraitementDonnees.TableauSelectionDonnees,'','');

     FSTraitementDonnees.TableauSelectionDonneesImprimer.ColCount:=FSTraitementDonnees.TableauSelectionDonnees.ColCount;
     FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[0].Text:=FSTraitementDonnees.TableauSelectionDonnees.Rows[0].Text;
     FSTraitementDonnees.TableauSelectionDonneesImprimer.RowCount:=2;
     FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[1].Text:='';

     R:=1;
     l:=0;
     While(R<=FSTraitementDonnees.TableauSelectionDonnees.RowCount-3)do
     begin
          if(FSTraitementDonnees.TableauSelectionDonnees.Cells[7,R]='OK')then
          begin
               l:=l+1;
               FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[l].Text:=FSTraitementDonnees.TableauSelectionDonnees.Rows[R].Text;
               FSTraitementDonnees.TableauSelectionDonneesImprimer.Cells[0,l]:=inttostr(l);
          end;
     R:=R+1;
     end;

     if(l=0)then FSTraitementDonnees.EditDebitCreditPositifTiers.Text:='';

     FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[l+1].Text:='';
     FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[l+2].Text:=FSTraitementDonnees.TableauSelectionDonnees.Rows[FSTraitementDonnees.TableauSelectionDonnees.RowCount-1].Text;

     FSTraitementDonnees.TableauSelectionDonneesImprimer.RowCount:=l+3;
     AjusterColWidth(FSTraitementDonnees.TableauSelectionDonneesImprimer,'','');

     FSTraitementDonnees.TableauDetailMouvementSelection.RowCount:=2;
     FSTraitementDonnees.TableauDetailMouvementSelection.Rows[1].Text:='';
     NotCol:='9-19;22;23';
     for C:=0 to FSTraitementDonnees.TableauDetailMouvementSelection.ColCount-1 do if(ExisteNuminTexte(inttostr(C),NotCol))then FSTraitementDonnees.TableauDetailMouvementSelection.ColWidths[C]:=0;
     AjusterColWidth(FSTraitementDonnees.TableauDetailMouvementSelection,'',NotCol);
end;

procedure TFSTraitementDonnees.TableauSelectionDonneesContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
var  R,C,l,Row:integer;  MontantTotal,CoutTotal,ValeurAjouterTotal:real; NotCol:string;
begin
     FSTraitementDonnees.AfficheDetailArticle.Visible:=true;
     FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers.Text:='';

     Row:=0;
     for R:=1 to FSTraitementDonnees.TableauSelectionDonnees.RowCount-3 do
     begin
          if(FSTraitementDonnees.TableauSelectionDonnees.Cells[7,R]='')
          then FSTraitementDonnees.TableauSelectionDonnees.Cells[7,R]:='OK'
          else FSTraitementDonnees.TableauSelectionDonnees.Cells[7,R]:='';

          if(FSTraitementDonnees.TableauSelectionDonnees.Cells[7,R]='OK')then
          begin
               if(FSTraitementDonnees.EditDebitCreditPositifTiers.Text='')
               then FSTraitementDonnees.EditDebitCreditPositifTiers.Text:=FSTraitementDonnees.TableauSelectionDonnees.Cells[5,R];

               FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers.Text:=floattostr(strtoreal(FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers.Text)+strtoreal(FSTraitementDonnees.TableauSelectionDonnees.Cells[6,R]));
          end;
     end;
     FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers.Text:=Vergule(FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers.Text,'2','C','');

     FSTraitementDonnees.TableauSelectionDonnees.Cells[6,FSTraitementDonnees.TableauSelectionDonnees.RowCount-1]:=FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers.Text;
     AjusterColWidth(FSTraitementDonnees.TableauSelectionDonnees,'','');

     FSTraitementDonnees.TableauSelectionDonneesImprimer.ColCount:=FSTraitementDonnees.TableauSelectionDonnees.ColCount;
     FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[0].Text:=FSTraitementDonnees.TableauSelectionDonnees.Rows[0].Text;
     FSTraitementDonnees.TableauSelectionDonneesImprimer.RowCount:=2;
     FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[1].Text:='';

     R:=1;
     l:=0;
     While(R<=FSTraitementDonnees.TableauSelectionDonnees.RowCount-3)do
     begin
          if(FSTraitementDonnees.TableauSelectionDonnees.Cells[7,R]='OK')then
          begin
               l:=l+1;
               FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[l].Text:=FSTraitementDonnees.TableauSelectionDonnees.Rows[R].Text;
               FSTraitementDonnees.TableauSelectionDonneesImprimer.Cells[0,l]:=inttostr(l);
          end;
     R:=R+1;
     end;

     if(l=0)then FSTraitementDonnees.EditDebitCreditPositifTiers.Text:='';

     FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[l+1].Text:='';
     FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[l+2].Text:=FSTraitementDonnees.TableauSelectionDonnees.Rows[FSTraitementDonnees.TableauSelectionDonnees.RowCount-1].Text;

     FSTraitementDonnees.TableauSelectionDonneesImprimer.RowCount:=l+3;
     AjusterColWidth(FSTraitementDonnees.TableauSelectionDonneesImprimer,'','');

     FSTraitementDonnees.TableauDetailMouvementSelection.RowCount:=2;
     FSTraitementDonnees.TableauDetailMouvementSelection.Rows[1].Text:='';
     NotCol:='9-19;22;23';
     for C:=0 to FSTraitementDonnees.TableauDetailMouvementSelection.ColCount-1 do if(ExisteNuminTexte(inttostr(C),NotCol))then FSTraitementDonnees.TableauDetailMouvementSelection.ColWidths[C]:=0;
     AjusterColWidth(FSTraitementDonnees.TableauDetailMouvementSelection,'',NotCol);
end;

procedure TFSTraitementDonnees.EditTiersAnneeAfficheSelect(
  Sender: TObject);
begin
SuspendreAffichage;

     FSTraitementDonnees.EditTiersDateDebut.Date:=strtodate('01/01/'+FSTraitementDonnees.EditTiersAnneeAffiche.Text);
     FSTraitementDonnees.EditTiersDateFin.Date:=strtodate('31/12/'+FSTraitementDonnees.EditTiersAnneeAffiche.Text);

     FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

     if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
     begin
          SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
     end;

     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.TableauSelectionDonneesClick(
  Sender: TObject);
var R:integer; ValeurAdd:real;  TypeData:string;
begin
     FSTraitementDonnees.RapportTraitementMouvements.Visible:=false;

if(FSTraitementDonnees.RBRubriqueTrieTableauArticle.Checked=true)then
begin
     FSTraitementDonnees.EditRubriqueTrie.Text:=inttostr(FSTraitementDonnees.TableauSelectionDonnees.Col);

     TypeData:='';

     if(FSTraitementDonnees.TableauSelectionDonnees.Col=3)
     then
     begin
          TypeData:='Date';
     end;

     if(FSTraitementDonnees.TableauSelectionDonnees.Col=1)
     or(FSTraitementDonnees.TableauSelectionDonnees.Col=4)
     or(FSTraitementDonnees.TableauSelectionDonnees.Col=6)
     then
     begin
          TypeData:='Num';
     end;

     FSTraitementDonnees.RBRubriqueTrieTableauArticle.Checked:=false;
     TrierTableauARowSpecial(FSTraitementDonnees.TableauSelectionDonnees,1,FSTraitementDonnees.TableauSelectionDonnees.RowCount-3,1,FSTraitementDonnees.EditRubriqueTrie.Text,TypeData,FSTraitementDonnees.TypeTrieArticle.Caption);
end;

FSTraitementDonnees.EditFunctionSoldeTiers.Text:='';
ValeurAdd:=0;
for R:=1 to  FSTraitementDonnees.TableauSelectionDonnees.RowCount-3 do
begin
     if(FSTraitementDonnees.TableauSelectionDonnees.Cells[7,R]='OK')then
     begin
          ValeurAdd:=ValeurAdd+strtoreal(FSTraitementDonnees.TableauSelectionDonnees.Cells[FSTraitementDonnees.TableauSelectionDonnees.Col,R]);
     end;
end;
FSTraitementDonnees.EditFunctionSoldeTiers.Text:=Vergule(floattostr(ValeurAdd),'2','C','');

end;

procedure TFSTraitementDonnees.RadioButton7Click(Sender: TObject);
begin
     FSTraitementDonnees.TypeTrieArticle.Caption:='-';
end;

procedure TFSTraitementDonnees.RadioButton5Click(Sender: TObject);
begin
     FSTraitementDonnees.TypeTrieArticle.Caption:='+';
end;

procedure TFSTraitementDonnees.TableauDetailMouvementSelectionClick(
  Sender: TObject);
var R:integer; ValeurAdd:real; TypeData:string;
begin

if(FSTraitementDonnees.RBRubriqueTrieTableauArticle.Checked=true)then
begin
     FSTraitementDonnees.EditRubriqueTrie.Text:=inttostr(FSTraitementDonnees.TableauDetailMouvementSelection.Col);

     TypeData:='';

     if(FSTraitementDonnees.TableauDetailMouvementSelection.Col=5)
     or(FSTraitementDonnees.TableauDetailMouvementSelection.Col=6)
     or(FSTraitementDonnees.TableauDetailMouvementSelection.Col=7)
     or(FSTraitementDonnees.TableauDetailMouvementSelection.Col=8)
     then
     begin
          TypeData:='Num';
     end;

     FSTraitementDonnees.RBRubriqueTrieTableauArticle.Checked:=false;
     TrierTableauARowSpecial(FSTraitementDonnees.TableauDetailMouvementSelection,1,FSTraitementDonnees.TableauDetailMouvementSelection.RowCount-3,1,FSTraitementDonnees.EditRubriqueTrie.Text,TypeData,FSTraitementDonnees.TypeTrieArticle.Caption);
end;

FSTraitementDonnees.EditFunctionSoldeTiers.Text:='';
ValeurAdd:=0;
for R:=1 to  FSTraitementDonnees.TableauDetailMouvementSelection.RowCount-3 do
begin
     ValeurAdd:=ValeurAdd+strtoreal(FSTraitementDonnees.TableauDetailMouvementSelection.Cells[FSTraitementDonnees.TableauDetailMouvementSelection.Col,R]);
end;
FSTraitementDonnees.EditFunctionSoldeTiers.Text:=Vergule(floattostr(ValeurAdd),'2','C','');

end;

procedure TFSTraitementDonnees.EditChoisAffichageSelect(Sender: TObject);
begin
     AfficheArborescenceArticleTD(FSTraitementDonnees.TableauArborescenceArticle,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,FSTraitementDonnees.TableauTitreArborescenceArticle,'F'+FSTraitementDonnees.EditChoisAffichage.Text+FSTraitementDonnees.EditExtentionFichier.Text);
end;

procedure TFSTraitementDonnees.EditChoisAffichageKeyPress(Sender: TObject;
  var Key: Char);
begin
      key:=#0;
end;

procedure TFSTraitementDonnees.RBDetailMouvementClick(
  Sender: TObject);
begin
     FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;
     if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=true)then
     begin
          IntiallisationTableauBohrs(true,true,true,true,true,true,true,true,false,true);
     end
     else
     begin
          FSTraitementDonnees.AffichePatienter.Visible:=true;
          FSTraitementDonnees.TimerTempAttente.Enabled:=true;
     end;
end;

procedure TFSTraitementDonnees.TableauArborescenceArticleClick(
  Sender: TObject);
begin
     if(FSTraitementDonnees.RBImprimeTableauSelect.Checked=true)then FSTraitementDonnees.EditNomTableauImprime.Text:='TableauArborescenceArticle';

     if(FSTraitementDonnees.RBFixeColonne.Checked=true)then
     begin
          FSTraitementDonnees.TableauArborescenceArticle.FixedCols:=strtointeger(FSTraitementDonnees.EditFixeColonne.Text);
          FSTraitementDonnees.RBFixeColonne.Checked:=false;
     end;
end;

procedure TFSTraitementDonnees.RBImprimeTableauSelectClick(
  Sender: TObject);
begin
     FSTraitementDonnees.EditNomTableauImprime.Text:='';
end;

procedure TFSTraitementDonnees.BitBtn14Click(Sender: TObject);
begin
     if(FSTraitementDonnees.DetailRapport.Visible=false)then
     begin
          FSTraitementDonnees.DetailRapport.Left:=FSTraitementDonnees.PageTableauBohrs.Left;
          FSTraitementDonnees.DetailRapport.Top:=FSTraitementDonnees.PageTableauBohrs.Top;
          FSTraitementDonnees.DetailRapport.Text:=FSTraitementDonnees.Rapport.Text;
          FSTraitementDonnees.DetailRapport.Visible:=true;
          FSTraitementDonnees.DetailRapport.SetFocus;
     end
     else
     begin
          FSTraitementDonnees.DetailRapport.Visible:=false;
     end;
end;

procedure TFSTraitementDonnees.DetailRapportExit(Sender: TObject);
begin
     FSTraitementDonnees.DetailRapport.Visible:=false;
end;

procedure TFSTraitementDonnees.EditExerciceTableauBohrKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      if(strtointeger(FSTraitementDonnees.EditExerciceTableauBohr.Text)>0)then
     begin
          FSTraitementDonnees.EditDateDebutTableauBohr.Date:=strtodate('01/01/'+FSTraitementDonnees.EditExerciceTableauBohr.Text);
          FSTraitementDonnees.EditDateFinTableauBohr.Date:=strtodate('31/12/'+FSTraitementDonnees.EditExerciceTableauBohr.Text);
          FSTraitementDonnees.EditDateDebutTableauBohr.SetFocus;
     end;
end;

procedure TFSTraitementDonnees.EditExerciceTableauBohrSelect(
  Sender: TObject);
begin
     FSTraitementDonnees.EditDateDebutTableauBohr.Date:=strtodate('01/01/'+FSTraitementDonnees.EditExerciceTableauBohr.Text);
     FSTraitementDonnees.EditDateFinTableauBohr.Date:=strtodate('31/12/'+FSTraitementDonnees.EditExerciceTableauBohr.Text);
     FSTraitementDonnees.EditDateDebutTableauBohr.SetFocus;

     FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;
     if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=true)then IntiallisationTableauBohrs(true,true,true,true,true,true,true,true,false,true);

     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.EditNomTiersTableaudeBohrsEnter(
  Sender: TObject);
begin
FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text:='';
FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text:='';
FSTraitementDonnees.EditTiersSupplementaire.Text:='';

FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;
if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=true)then IntiallisationTableauBohrs(true,true,true,true,true,true,true,true,false,true);
FSTraitementDonnees.TableauMoyenTransport.Visible:=false;
FSTraitementDonnees.TableauTiersTableaudeBohrs.Visible:=true;
FSTraitementDonnees.TableauTiersTableaudeBohrs.Top:=FSTraitementDonnees.PagePrincipale.Top+FSTraitementDonnees.PageEnglais.Top+FSTraitementDonnees.AfficheSelectData.Top+FSTraitementDonnees.EditNomTiersTableaudeBohrs.Top+FSTraitementDonnees.EditNomTiersTableaudeBohrs.Height+2;
FSTraitementDonnees.TableauTiersTableaudeBohrs.Left:=FSTraitementDonnees.PagePrincipale.Left+FSTraitementDonnees.PageEnglais.Left+FSTraitementDonnees.AfficheSelectData.Left+FSTraitementDonnees.EditNomTiersTableaudeBohrs.Left;

FSTraitementDonnees.TimerLancerAfficheTiers.Enabled:=true;
//ListeTiers(FSTraitementDonnees.TableauTiersTableaudeBohrs,FSTraitementDonnees.TableauMouvement.Cells[4,FSTraitementDonnees.TableauMouvement.Row],FSTraitementDonnees.EditTiersFichierConserneTableauBohr.Text,'','',FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text,true);
//ListeTiersPointeur(FSTraitementDonnees.TableauTiersTableaudeBohrs,FSTraitementDonnees.TableauMouvement.Cells[4,FSTraitementDonnees.TableauMouvement.Row],FSTraitementDonnees.EditTiersFichierConserneTableauBohr.Text,'','',FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text,false);
end;

procedure TFSTraitementDonnees.EditNomTiersTableaudeBohrsKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSTraitementDonnees.TableauTiersTableaudeBohrs.SetFocus;
end;

end;

procedure TFSTraitementDonnees.EditNomTiersTableaudeBohrsKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var OKTous:boolean;
begin
if(FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text='')then OKTous:=true else OKTous:=false;

FSTraitementDonnees.TimerAfficheTiers.Enabled:=false;
FSTraitementDonnees.TimerLancerAfficheTiers.Enabled:=false;
FSTraitementDonnees.TimerLancerAfficheTiers.Enabled:=true;
end;

procedure TFSTraitementDonnees.TableauTiersTableaudeBohrsKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(FSTraitementDonnees.TableauTiersTableaudeBohrs.Cells[1,FSTraitementDonnees.TableauTiersTableaudeBohrs.Row]='Tous')then
          begin
               FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text:='';
               FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text:='';
               FSTraitementDonnees.EditTiersSupplementaire.Text:='';
          end
          else
          begin
               FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text:=FSTraitementDonnees.TableauTiersTableaudeBohrs.Cells[1,FSTraitementDonnees.TableauTiersTableaudeBohrs.Row];
               FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text:=FSTraitementDonnees.TableauTiersTableaudeBohrs.Cells[2,FSTraitementDonnees.TableauTiersTableaudeBohrs.Row];
               FSTraitementDonnees.EditTiersSupplementaire.Text:='';
          end;

          FSTraitementDonnees.TableauTiersTableaudeBohrs.Visible:=false;

          if(FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked=true)then FSTraitementDonnees.TimerTempAttente.Enabled:=true;
     end;
end;

Procedure IntiallisationTableauBohrs(OKInitilliserTableauDeBohrTiers,OKInitilliserTableauAnalyseSoldePeriode,OKInitilliserTableauAnalyseSoldePeriodeTiers,OKInitilliserTableauFinanceStructure,OKInitilliserTableauListeAppartenanceMouvementTB,OKInitilliserTableauDetaiMouvementAppartenanceMouvemant,OKInitilliserTableauArborescenceArticle,OKInitilliserTableauAnalysePeriodique,OKInitilliserTableauTitreDataTiers,OKInitilliserTableauDetailFormuleListeMouvement:boolean);
begin
     if(OKInitilliserTableauDeBohrTiers=true)then
     begin
           FSTraitementDonnees.TableauDeBohrTiers.RowCount:=2;
           FSTraitementDonnees.TableauDeBohrTiers.Rows[1].Text:='';
     end;

     if(OKInitilliserTableauAnalyseSoldePeriode=true)then
     begin
           FSTraitementDonnees.TableauAnalyseSoldePeriode.RowCount:=2;
           FSTraitementDonnees.TableauAnalyseSoldePeriode.Rows[1].Text:='';
     end;

     if(OKInitilliserTableauAnalyseSoldePeriodeTiers=true)then
     begin
           FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.RowCount:=2;
           FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Rows[1].Text:='';
     end;

     if(OKInitilliserTableauFinanceStructure=true)then
     begin
           FSTraitementDonnees.TableauFinanceStructure.RowCount:=2;
           FSTraitementDonnees.TableauFinanceStructure.Rows[1].Text:='';
     end;

     if(OKInitilliserTableauListeAppartenanceMouvementTB=true)then
     begin
           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount:=2;
           FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Rows[1].Text:='';
     end;

     if(OKInitilliserTableauDetaiMouvementAppartenanceMouvemant=true)then
     begin
           FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount:=2;
           FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Rows[1].Text:='';
     end;

     if(OKInitilliserTableauArborescenceArticle=true)then
     begin
           FSTraitementDonnees.TableauArborescenceArticle.RowCount:=2;
           FSTraitementDonnees.TableauArborescenceArticle.Rows[1].Text:='';
     end;

     if(OKInitilliserTableauAnalysePeriodique=true)then
     begin
           FSTraitementDonnees.TableauAnalysePeriodique.RowCount:=2;
           FSTraitementDonnees.TableauAnalysePeriodique.Rows[1].Text:='';
     end;

     if(OKInitilliserTableauTitreDataTiers=true)then
     begin
           FSTraitementDonnees.TableauTitreDataTiers.RowCount:=2;
           FSTraitementDonnees.TableauTitreDataTiers.Rows[1].Text:='';
     end;

     if(OKInitilliserTableauDetailFormuleListeMouvement=true)then
     begin
           FSTraitementDonnees.TableauDetailFormuleListeMouvement.RowCount:=2;
           FSTraitementDonnees.TableauDetailFormuleListeMouvement.Rows[1].Text:='';
     end;

     FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvement.Text:='';
     AfficherDiagramme(FSTraitementDonnees.TableauAnalysePeriodique,2);
     AfficherDiagramme(FSTraitementDonnees.TableauDiagrammeArticle,0);

     FSTraitementDonnees.TableauMoyenTransport.Visible:=false;
end;

procedure TFSTraitementDonnees.TableauDetailFormuleListeMouvementClick(
  Sender: TObject);
var NotTrieRow:integer;
begin
     if(FSTraitementDonnees.RBImprimeTableauSelect.Checked=true)then FSTraitementDonnees.EditNomTableauImprime.Text:='TableauDetailFormuleListeMouvement';

     if(FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked=true)then
     begin
          FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked:=false;
          FSTraitementDonnees.EditIndiceRubriqueTriCol.Text:=inttostr(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Col);
          EnregistrerOptionsTraitementDonnees;
          if(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Col in[5])
          then FSTraitementDonnees.EditTypeDataTrie.Text:='Date'
          else
          if(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Col in[1,2,12])
          then FSTraitementDonnees.EditTypeDataTrie.Text:='Num'
          else FSTraitementDonnees.EditTypeDataTrie.Text:='';
          NotTrieRow:=3;
          TrierTableauARowSpecial(FSTraitementDonnees.TableauDetailFormuleListeMouvement,2,FSTraitementDonnees.TableauDetailFormuleListeMouvement.RowCount-NotTrieRow,1,FSTraitementDonnees.EditIndiceRubriqueTriCol.Text,FSTraitementDonnees.EditTypeDataTrie.Text,FSTraitementDonnees.EditTypeTrie.Text);
     end;
end;

procedure TFSTraitementDonnees.TableauTitreDataTiersDblClick(
  Sender: TObject);
begin
     if(FSTraitementDonnees.TableauTitreDataTiers.Cells[FSTraitementDonnees.TableauTitreDataTiers.Col,1]='OK')
     then FSTraitementDonnees.TableauTitreDataTiers.Cells[FSTraitementDonnees.TableauTitreDataTiers.Col,1]:=''
     else FSTraitementDonnees.TableauTitreDataTiers.Cells[FSTraitementDonnees.TableauTitreDataTiers.Col,1]:='OK';
end;

procedure TFSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemantDblClick(
  Sender: TObject);
var  R,C:integer; NotRow,NotCol:string;
begin
     if(FSTraitementDonnees.RBCacherColonneBlClick.Checked=true)then
     begin
          FSTraitementDonnees.RBCacherColonneBlClick.Checked:=false;
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColWidths[FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Col]:=-1;
     end
     else
     begin
          if(FSTraitementDonnees.EditCodeArticleRecherche.Text='')then
          begin
               FSTraitementDonnees.EditCodeArticleRecherche.Text:=FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[1,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Row];
               FSTraitementDonnees.EditArticleRecherche.Text:=FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[2,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Row]+' '+FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[3,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Row];

               AfficherParArticleRecherche(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[1,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Row],true);

               if(FSTraitementDonnees.RBDetailMouvement.Checked=true)
               then NotCol:='1;3;4;7-10;13;15-34'
               else NotCol:='1;3;4;7-10;13-34';

               NotRow:='';
               for R:=1 to FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-3 do
               begin
                    if(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowHeights[R]<=0)then
                    begin
                         if(NotRow<>'')
                         then NotRow:=NotRow+';'+inttostr(R)
                         else NotRow:=inttostr(R)
                    end;
               end;
               AjusterColWidth(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,NotRow,NotCol);
          end
          else
          begin
               FSTraitementDonnees.EditCodeArticleRecherche.Text:='';
               FSTraitementDonnees.EditArticleRecherche.Text:='';

               FSTraitementDonnees.AfficheOptionCompteConcerne.Height:=429;
               FSTraitementDonnees.BitAfficheOptionCompteConcerne.Kind:=bkNo;
               FSTraitementDonnees.BitAfficheOptionCompteConcerne.Caption:='Annuler la recherche Article';

               BitAfficheOptionCompteConcerneClick(FSTraitementDonnees.BitAfficheOptionCompteConcerne);
          end;
     end;
end;

procedure TFSTraitementDonnees.TableauArborescenceArticleDblClick(
  Sender: TObject);
begin
     if(FSTraitementDonnees.RBCacherColonneBlClick.Checked=true)then
     begin
          FSTraitementDonnees.RBCacherColonneBlClick.Checked:=false;
          FSTraitementDonnees.TableauArborescenceArticle.ColWidths[FSTraitementDonnees.TableauArborescenceArticle.Col]:=0;
     end;
end;

procedure TFSTraitementDonnees.TableauListeAppartenanceMouvementTBDblClick(
  Sender: TObject);
begin
     if(FSTraitementDonnees.RBCacherColonneBlClick.Checked=true)then
     begin
          FSTraitementDonnees.RBCacherColonneBlClick.Checked:=false;
          FSTraitementDonnees.TableauListeAppartenanceMouvementTB.ColWidths[FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Col]:=0;
     end;
end;

procedure TFSTraitementDonnees.TableauDetailFormuleListeMouvementDblClick(
  Sender: TObject);
begin
     if(FSTraitementDonnees.RBCacherColonneBlClick.Checked=true)then
     begin
          FSTraitementDonnees.RBCacherColonneBlClick.Checked:=false;
          FSTraitementDonnees.TableauDetailFormuleListeMouvement.ColWidths[FSTraitementDonnees.TableauDetailFormuleListeMouvement.Col]:=0;
     end;
end;

procedure TFSTraitementDonnees.TableauDeBohrTiersDblClick(Sender: TObject);
var  C:integer;
begin
     if(FSTraitementDonnees.RBCacherColonneBlClick.Checked=true)then
     begin
          FSTraitementDonnees.TableauDeBohrTiers.ColWidths[FSTraitementDonnees.TableauDeBohrTiers.Col]:=0;

          C:=1;
          FSTraitementDonnees.EditNotColTableauDeBohrTiers.Text:='';
          while(C<=FSTraitementDonnees.TableauDeBohrTiers.ColCount-1)do
          begin
               if(FSTraitementDonnees.TableauDeBohrTiers.ColWidths[C]=0)then
               if(FSTraitementDonnees.EditNotColTableauDeBohrTiers.Text='')
               then FSTraitementDonnees.EditNotColTableauDeBohrTiers.Text:=inttostr(C)
               else FSTraitementDonnees.EditNotColTableauDeBohrTiers.Text:=FSTraitementDonnees.EditNotColTableauDeBohrTiers.Text+';'+inttostr(C);
          C:=C+1;
          end;

          EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditNotColTableauDeBohrTiers.Name,FSTraitementDonnees.EditNotColTableauDeBohrTiers.Text);
          
          Exit;
     end;

     FSTraitementDonnees.EditTiersTypeProces.Text:=FSTraitementDonnees.TableauDeBohrTiers.Cells[17,FSTraitementDonnees.TableauDeBohrTiers.Row];
     FSTraitementDonnees.EditTiersFichierConserne.Text:=FSTraitementDonnees.TableauDeBohrTiers.Cells[18,FSTraitementDonnees.TableauDeBohrTiers.Row];
     FSTraitementDonnees.EditTiersCodeTiers.Text:=FSTraitementDonnees.TableauDeBohrTiers.Cells[1,FSTraitementDonnees.TableauDeBohrTiers.Row];
     FSTraitementDonnees.EditTiersNomTiers.Text:=FSTraitementDonnees.TableauDeBohrTiers.Cells[2,FSTraitementDonnees.TableauDeBohrTiers.Row];
     FSTraitementDonnees.EditTiersSupplementaire.Text:='';
     FSTraitementDonnees.EditTiersModePaiement.Text:='Tous';
     FSTraitementDonnees.EditTiersDomiciliation.Text:='Tous';
     FSTraitementDonnees.EditTiersAnneeAffiche.Text:=FSTraitementDonnees.EditExerciceTableauBohr.Text;
     FSTraitementDonnees.EditTiersDateDebut.Date:=FSTraitementDonnees.EditDateDebutTableauBohr.Date;
     FSTraitementDonnees.EditTiersDateFin.Date:=FSTraitementDonnees.EditDateFinTableauBohr.Date;
     FSTraitementDonnees.EditDesignationTypeAvisTiers.Text:='';
     FSTraitementDonnees.EditTiersNomProjetTraitement.Text:='';
     FSTraitementDonnees.EditTiersNumProjetTraitement.Text:='';
     FSTraitementDonnees.EditTiersDesignationFicheTraitement.Text:='';
     FSTraitementDonnees.EditTiersNumFicheTraitement.Text:='';
     FSTraitementDonnees.EditTiersDesignationFicheTraitement.Text:='';
     FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text:='';
     FSTraitementDonnees.EditTiersDesignationRubriqueTraitement.Text:='';
     FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text:='';
     FSTraitementDonnees.EditTiersDesignationPlanificateurTraitement.Text:='';

     FSTraitementDonnees.RBFichierConcerneChoisiTiers.Checked:=true;

     if(FSTraitementDonnees.EditTiersCodeTiers.Text<>'')then
     begin
          FSTraitementDonnees.AffichePatientez.Top:=230;
          FSTraitementDonnees.AffichePatientez.Left:=FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Left+FSTraitementDonnees.CacherTableauFinanceTiers.Left+FSTraitementDonnees.BitAfficheCacheTableauFinanceTiers.Left-ValeAbsolue((FSTraitementDonnees.AffichePatientez.Width-FSTraitementDonnees.BitAfficheCacheTableauFinanceTiers.Width)/2);

          FSTraitementDonnees.AffichePatientez.Visible:=true;
          FSTraitementDonnees.RBSuspendreTBohr.Checked:=false;
          FSTraitementDonnees.RBSuspendreTraitement.Checked:=false;
          FSTraitementDonnees.TimerAfficheDataDomiciliation.Enabled:=true;
     end
     else
     begin
          showmessage('Veuillez Sélectionner un compte tiers SVP !');
     end;

     FSTraitementDonnees.PageFinanceTiers.Show;

end;

Procedure AfficheArborescenceArticleTD(TableauArborescenceArticle,TableauArticle,TableauTitreArborescenceArticle:TStringGrid; FichierConcerne:string);
var   R,l,M:integer; OKCompte:boolean; NumCompteArborescence,CompteArborescence,TypeProces,Adresse:string; Diviseur,Montant,CoutTotal,ValeurAjouter:real;
begin
     TableauTitreArborescenceArticle.Cells[0,0]:='Détail Arborescence Article';

     TableauArborescenceArticle.ColCount:=10;
     TableauArborescenceArticle.Cols[0].Text:='N°';
     TableauArborescenceArticle.Cols[1].Text:='Code';
     TableauArborescenceArticle.Cols[2].Text:='Désignation';
     TableauArborescenceArticle.Cols[3].Text:='UM';
     TableauArborescenceArticle.Cols[4].Text:='Prix';
     TableauArborescenceArticle.Cols[5].Text:='Quantité';
     TableauArborescenceArticle.Cols[6].Text:='Montant';
     TableauArborescenceArticle.Cols[7].Text:='   ';
     TableauArborescenceArticle.Cols[8].Text:='Coût total';
     TableauArborescenceArticle.Cols[9].Text:='Valeur Ajouter';

     TableauArborescenceArticle.RowCount:=2;
     TableauArborescenceArticle.Rows[1].Text:='';

     R:=1;
     m:=0;
     Montant:=0;
     CoutTotal:=0;
     ValeurAjouter:=0;
     while(R<=TableauArticle.RowCount-3)do
     begin
          NumCompteArborescence:='???';
          CompteArborescence:='???';

          TypeProces:='Comptabilité';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
                if(FichierConcerne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConcerne+'} recherché !');
          end;

          OpenFParc(RParc);
          ChRegistreCompte:=Adresse;
          assignfile(FRegistreCompte,ChRegistreCompte);
          try
          if FileExists(ChRegistreCompte)
          then Reset(FRegistreCompte)else Rewrite(FRegistreCompte);
          Seek(FRegistreCompte,0);
          OKCompte:=false;
          while not eof(FRegistreCompte)and(OKCompte=false)do
          begin
               Read(FRegistreCompte,RRegistreCompte);

               if(RRegistreCompte.CodeCompte=firstlaters(TableauArticle.Cells[1,R],longueur(RRegistreCompte.CodeCompte)))then
               begin
                    OKCompte:=true;
                    NumCompteArborescence:=RRegistreCompte.CodeCompte;
                    CompteArborescence:=RRegistreCompte.Designation;
               end;
          end;
          finally
          CloseFile(FRegistreCompte);
          end;

          l:=1;
          OKCompte:=false;
          while(l<=m)and(OKCompte=false)do
          begin
               if(TableauArborescenceArticle.Cells[1,l]=NumCompteArborescence)then
               begin
                    OKCompte:=true;
                    Diviseur:=strtoreal(TableauArborescenceArticle.Cells[5,l])+strtoreal(TableauArticle.Cells[6,R]);
                    if(Diviseur>0)
                    then TableauArborescenceArticle.Cells[4,l]:=Vergule(floattostr(((strtoreal(TableauArborescenceArticle.Cells[4,l])*strtoreal(TableauArborescenceArticle.Cells[5,l]))+(strtoreal(TableauArticle.Cells[6,R])*strtoreal(TableauArticle.Cells[7,R])))/Diviseur),'2','C','')
                    else TableauArborescenceArticle.Cells[4,l]:='0';
                    TableauArborescenceArticle.Cells[5,l]:=Vergule(floattostr(strtoreal(TableauArborescenceArticle.Cells[5,l])+strtoreal(TableauArticle.Cells[6,R])),'2','C','');
                    TableauArborescenceArticle.Cells[6,l]:=Vergule(floattostr(strtoreal(TableauArborescenceArticle.Cells[6,l])+strtoreal(TableauArticle.Cells[8,R])),'2','C','');
                    TableauArborescenceArticle.Cells[8,l]:=Vergule(floattostr(strtoreal(TableauArborescenceArticle.Cells[8,l])+strtoreal(TableauArticle.Cells[20,R])),'2','C','');
                    TableauArborescenceArticle.Cells[9,l]:=Vergule(floattostr(strtoreal(TableauArborescenceArticle.Cells[9,l])+strtoreal(TableauArticle.Cells[21,R])),'2','C','');
                    Montant:=Montant+strtoreal(TableauArticle.Cells[8,R]);
                    CoutTotal:=CoutTotal+strtoreal(TableauArticle.Cells[20,R]);
                    ValeurAjouter:=ValeurAjouter+strtoreal(TableauArticle.Cells[21,R]);
               end;
          l:=l+1;
          end;

          if(OKCompte=false)then
          begin
               m:=m+1;
               TableauArborescenceArticle.Rows[m].Text:=inttostr(m);
               TableauArborescenceArticle.Cells[1,m]:=NumCompteArborescence;
               TableauArborescenceArticle.Cells[2,m]:=CompteArborescence;
               TableauArborescenceArticle.Cells[3,m]:=TableauArticle.Cells[4,R];
               TableauArborescenceArticle.Cells[4,m]:=TableauArticle.Cells[7,R];
               TableauArborescenceArticle.Cells[5,m]:=TableauArticle.Cells[6,R];
               TableauArborescenceArticle.Cells[6,m]:=Vergule(TableauArticle.Cells[8,R],'2','C','');
               TableauArborescenceArticle.Cells[8,m]:=Vergule(TableauArticle.Cells[20,R],'2','C','');
               TableauArborescenceArticle.Cells[9,m]:=Vergule(TableauArticle.Cells[21,R],'2','C','');
               Montant:=Montant+strtoreal(TableauArticle.Cells[8,R]);
               CoutTotal:=CoutTotal+strtoreal(TableauArticle.Cells[20,R]);
               ValeurAjouter:=ValeurAjouter+strtoreal(TableauArticle.Cells[21,R]);
          end;
     R:=R+1;
     end;

     if(m>0)then
            begin
                 TableauArborescenceArticle.RowCount:=m+3;
                 TableauArborescenceArticle.Rows[m+2].Text:='';
                 TableauArborescenceArticle.Rows[m+1].Text:='';

                 TableauArborescenceArticle.Cells[5,m+2]:='Total';
                 TableauArborescenceArticle.Cells[6,m+2]:=Vergule(floattostr(Montant),'2','C','');
                 TableauArborescenceArticle.Cells[8,m+2]:=Vergule(floattostr(CoutTotal),'2','C','');
                 TableauArborescenceArticle.Cells[9,m+2]:=Vergule(floattostr(ValeurAjouter),'2','C','');
            end
            else TableauArborescenceArticle.RowCount:=2;

     Ajustercolwidth(TableauArborescenceArticle,'','');
end;

procedure TFSTraitementDonnees.EditTitreInfoMoyenTransportKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSTraitementDonnees.EditInfoMoyenTransportEnter(
  Sender: TObject);
begin
     FSTraitementDonnees.TableauMoyenTransport.Left:=FSTraitementDonnees.EditInfoMoyenTransport.Left;
     FSTraitementDonnees.TableauMoyenTransport.Top:=FSTraitementDonnees.EditInfoMoyenTransport.Top+
                                                    FSTraitementDonnees.EditInfoMoyenTransport.Height+2;
     FSTraitementDonnees.TableauMoyenTransport.Visible:=true;
     FSTraitementDonnees.EditInfoMoyenTransport.Text:='';
     ProcListeMoyenTransport(FSTraitementDonnees.TableauMoyenTransport,'','','','',FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text);

     FSTraitementDonnees.TableauMoyenTransport.SetFocus;
end;

procedure TFSTraitementDonnees.TableauMoyenTransportKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var   C:integer;  AColInfo:string;
begin
     if key in[VK_RETURN]then
     begin
          FSTraitementDonnees.EditInfoMoyenTransport.Text:='';

          if(FSTraitementDonnees.EditTitreInfoMoyenTransportTBohrs.Text='Moyen transport')then AColInfo:='5';
          if(FSTraitementDonnees.EditTitreInfoMoyenTransportTBohrs.Text='Matricule')then AColInfo:='6';
          if(FSTraitementDonnees.EditTitreInfoMoyenTransportTBohrs.Text='Chauffeur')then AColInfo:='7;8';
          if(FSTraitementDonnees.EditTitreInfoMoyenTransportTBohrs.Text='Pièce Identité')then AColInfo:='9';

          for C:=1 to FSTraitementDonnees.TableauMoyenTransport.ColCount-1 do
          begin
               if existenumintexte(inttostr(C),AColInfo)then
               if(FSTraitementDonnees.EditInfoMoyenTransport.Text='')
               then FSTraitementDonnees.EditInfoMoyenTransport.Text:=FSTraitementDonnees.TableauMoyenTransport.Cells[C,FSTraitementDonnees.TableauMoyenTransport.Row]
               else FSTraitementDonnees.EditInfoMoyenTransport.Text:=FSTraitementDonnees.EditInfoMoyenTransport.Text+' '+FSTraitementDonnees.TableauMoyenTransport.Cells[C,FSTraitementDonnees.TableauMoyenTransport.Row]
          end;

          FSTraitementDonnees.TableauMoyenTransport.Visible:=false;
     end;
end;

procedure TFSTraitementDonnees.EditTitreInfoMoyenTransportTBohrsKeyPress(
  Sender: TObject; var Key: Char);
begin
     key:=#0;
end;

procedure TFSTraitementDonnees.EditTitreInfoMoyenTransportTBohrsChange(
  Sender: TObject);
begin
     FSTraitementDonnees.EditInfoMoyenTransport.Text:='';
     FSTraitementDonnees.EditInfoMoyenTransport.SetFocus;
end;

procedure TFSTraitementDonnees.TableauMoyenTransportExit(Sender: TObject);
begin
     FSTraitementDonnees.TableauMoyenTransport.Visible:=false;
end;

procedure TFSTraitementDonnees.TableauMouvementDblClick(Sender: TObject);
var R:integer; OKInitialiseDebitCredit:boolean;   ListeFichierNonInclu:string;
begin
     if(FSTraitementDonnees.RBCacherColonneBlClick.Checked=true)then
     begin
          FSTraitementDonnees.RBCacherColonneBlClick.Checked:=false;
          FSTraitementDonnees.TableauMouvement.ColWidths[FSTraitementDonnees.TableauMouvement.Col]:=0;
          exit;
     end;

     if(FSTraitementDonnees.RBAutoSelectMouvementMemeType.Checked=false)then
     begin
           if(FSTraitementDonnees.TableauMouvement.Cells[20,FSTraitementDonnees.TableauMouvement.Row]='OK')then
           begin
                FSTraitementDonnees.TableauMouvement.Cells[20,FSTraitementDonnees.TableauMouvement.Row]:='';

                if(FSTraitementDonnees.EditRowFirstSelectDebitCredit.Text=inttostr(FSTraitementDonnees.TableauMouvement.Row))then
                begin
                     FSTraitementDonnees.EditRowFirstSelectDebitCredit.Text:='';
                     FSTraitementDonnees.EditDebitCreditPositif.Text:='';
                end;
           end
           else
           begin
                if(FunctionFichierIncluImbriquer(FSTraitementDonnees.TableauMouvement.Cells[5,FSTraitementDonnees.TableauMouvement.Row],FSTraitementDonnees.LabelFichierConcerne.Caption,ListeFichierNonInclu)=true)then
                begin
                     if(FSTraitementDonnees.EditRowFirstSelectDebitCredit.Text<>'')then
                     begin
                          if(FSTraitementDonnees.TableauMouvement.Cells[9,FSTraitementDonnees.TableauMouvement.Row]=FSTraitementDonnees.TableauMouvement.Cells[9,strtointeger(FSTraitementDonnees.EditRowFirstSelectDebitCredit.Text)])then
                          begin
                               FSTraitementDonnees.TableauMouvement.Cells[20,FSTraitementDonnees.TableauMouvement.Row]:='OK';
                          end
                          else
                          begin
                               if NonOui('Formule de calcule incompatible ! {'+FSTraitementDonnees.TableauMouvement.Cells[9,FSTraitementDonnees.TableauMouvement.Row]+' et '+FSTraitementDonnees.TableauMouvement.Cells[9,strtointeger(FSTraitementDonnees.EditRowFirstSelectDebitCredit.Text)]+'} '+'Voulez vous sélectionner quand-même !')
                               then FSTraitementDonnees.TableauMouvement.Cells[20,FSTraitementDonnees.TableauMouvement.Row]:='OK';
                          end;
                     end
                     else FSTraitementDonnees.TableauMouvement.Cells[20,FSTraitementDonnees.TableauMouvement.Row]:='OK';
                end
                else showmessage('Fichier Tièrs incompatible !');
           end;

           OKInitialiseDebitCredit:=true;
           R:=1;
           while(R<=FSTraitementDonnees.TableauMouvement.RowCount-1)and(OKInitialiseDebitCredit=true)do
           begin
                if(FSTraitementDonnees.TableauMouvement.Cells[20,R]<>'')then
                begin
                     OKInitialiseDebitCredit:=false;
                     if(FSTraitementDonnees.EditDebitCreditPositif.Text='')then
                     begin
                          FSTraitementDonnees.EditDebitCreditPositif.Text:=FSTraitementDonnees.TableauMouvement.Cells[19,R];
                          FSTraitementDonnees.EditRowFirstSelectDebitCredit.Text:=inttostr(R);
                     end;
                end;
           R:=R+1;
           end;

           if(OKInitialiseDebitCredit=true)then
           begin
                FSTraitementDonnees.EditDebitCreditPositif.Text:='';
                FSTraitementDonnees.EditRowFirstSelectDebitCredit.Text:='';
           end;
     end;

R:=1;
FSTraitementDonnees.RBInclureFinance.Checked:=false;
while(R<=FSTraitementDonnees.TableauMouvement.RowCount-1)and(FSTraitementDonnees.RBInclureFinance.Checked=false)do
begin
     if(FSTraitementDonnees.TableauMouvement.Cells[20,R]='OK')
     and(strtoboolean(FSTraitementDonnees.TableauMouvement.Cells[13,R])=true)then FSTraitementDonnees.RBInclureFinance.Checked:=true;
R:=R+1;
end;

end;

procedure TFSTraitementDonnees.EditMoisSelect(Sender: TObject);
begin
     FSTraitementDonnees.EditDateDebutTableauBohr.Date:=strtodate('01/'+Completezerogauche(MidelLaters(FSTraitementDonnees.EditMois.Text,2,3),'2')+'/'+FSTraitementDonnees.EditExerciceTableauBohr.Text);
     FSTraitementDonnees.EditDateFinTableauBohr.Date:=strtodate(Completezerogauche(inttostr(LastDay(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date))),'2')+'/'+Completezerogauche(MidelLaters(FSTraitementDonnees.EditMois.Text,2,3),'2')+'/'+FSTraitementDonnees.EditExerciceTableauBohr.Text);

     FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;
     if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=true)then IntiallisationTableauBohrs(true,true,true,true,true,true,true,true,false,true);
end;

procedure TFSTraitementDonnees.EditNumLigneIsolerEnter(Sender: TObject);
begin
     FSTraitementDonnees.TableauDataIsoler.RowCount:=2;
     FSTraitementDonnees.TableauDataIsoler.Rows[1].Text:='';
end;

Procedure DataTableauIsoler(TableauSource,TableauCible:TStringGrid; ListeNumLigne:string);
var  R,l,C,CSolde:integer;  NotCol:string;   TotalDebit,TotalCredit,Solde:real;
begin
     TableauCible.RowCount:=2;
     TableauCible.Rows[1].Text:='';

     TableauCible.ColCount:=TableauSource.ColCount;
     TableauCible.Rows[0].Text:=TableauSource.Rows[0].Text;

     TotalDebit:=0;
     TotalCredit:=0;
     Solde:=0;

     l:=0;
     for R:=1 to TableauSource.RowCount-1 do
     begin
          if existenumintexte(inttostr(R),ListeNumLigne)then
          begin
               l:=l+1;
               for C:=0 to TableauSource.ColCount-1 do
               begin
                    TableauCible.Cells[C,l]:=TableauSource.Cells[C,R];
               end;

               if(TableauCible.Cells[15,l]<>'Annuler')then
               begin
                    TotalDebit:=TotalDebit+strtoreal(TableauCible.Cells[7,l]);
                    TotalCredit:=TotalCredit+strtoreal(TableauCible.Cells[8,l]);
               end;
          end;
     end;
     Solde:=TotalDebit-TotalCredit;

     if(Solde>=0)then CSolde:=7 else begin CSolde:=8; Solde:=Solde*(-1); end;

     if(l>0)then TableauCible.RowCount:=l+1
            else TableauCible.RowCount:=2;

     NotCol:='';
     for C:=1 to TableauSource.ColCount-1 do
     begin
          if TableauSource.ColWidths[C]<10 then
          begin
               if(NotCol='')
               then NotCol:=inttostr(C)
               else NotCol:=NotCol+';'+inttostr(C)
          end;
     end;

     for C:=1 to TableauCible.ColCount-1 do
     begin
          if existenumintexte(inttostr(C),NotCol)then TableauCible.ColWidths[C]:=0;
     end;

     TableauCible.RowCount:=TableauCible.RowCount+3;
     TableauCible.Rows[TableauCible.RowCount-3].Text:='';
     TableauCible.Rows[TableauCible.RowCount-2].Text:='';
     TableauCible.Rows[TableauCible.RowCount-1].Text:='';
     TableauCible.Cells[6,TableauCible.RowCount-2]:='Total:';
     TableauCible.Cells[7,TableauCible.RowCount-2]:=Vergule(floattostr(TotalDebit),'2','C','');
     TableauCible.Cells[8,TableauCible.RowCount-2]:=Vergule(floattostr(TotalCredit),'2','C','');

     TableauCible.Cells[6,TableauCible.RowCount-1]:='Solde:';
     TableauCible.Cells[CSolde,TableauCible.RowCount-1]:=Vergule(floattostr(Solde),'2','C','');

     AjusterColWidth(TableauCible,'',NotCol);
end;

procedure TFSTraitementDonnees.EditNumLigneIsolerExit(Sender: TObject);
begin
     DataTableauIsoler(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauDataIsoler,FSTraitementDonnees.EditNumLigneIsoler.Text);
end;

procedure TFSTraitementDonnees.BitBtn16Click(Sender: TObject);
begin
     FSTraitementDonnees.TimerControleCouleur.Enabled:=false;
     FSTraitementDonnees.AfficheTableauDataIsoler.Visible:=false;
end;

procedure TFSTraitementDonnees.BitBtn17Click(Sender: TObject);
begin
     FSTraitementDonnees.AfficheTableauDataIsoler.Top:=FSTraitementDonnees.AfficheTableauAvis.Top;
     FSTraitementDonnees.AfficheTableauDataIsoler.Left:=FSTraitementDonnees.AfficheTableauAvis.Left;
     FSTraitementDonnees.AfficheTableauDataIsoler.Visible:=true;
     FSTraitementDonnees.TimerControleCouleur.Enabled:=true;

     FSTraitementDonnees.TableauDataIsoler.RowCount:=2;
     FSTraitementDonnees.TableauDataIsoler.Rows[1].Text:='';

     FSTraitementDonnees.EditNumLigneIsoler.Text:='';

     FSTraitementDonnees.EditNumLigneIsoler.SetFocus;
end;

procedure TFSTraitementDonnees.EditNumLigneIsolerKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSTraitementDonnees.TableauDataIsoler.SetFocus;
     end;
end;

procedure TFSTraitementDonnees.RBAvisRisqueZeroClick(Sender: TObject);
begin
SuspendreAffichage;

FSTraitementDonnees.CacherTableauAvis.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked;

if(FSTraitementDonnees.CacherTableauAvis.Visible=false)then
begin
     ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
     ,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
     SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
end;

EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.TimerControleCouleurTimer(Sender: TObject);
begin
     if(FSTraitementDonnees.PagePieceManquante.Showing=true)then
     begin
          if(FSTraitementDonnees.EditTableauColor.Text='Pièces Egarées')then
          begin
               if(FSTraitementDonnees.TableauxPieceManquanteAutreTiers.FixedColor=clBtnFace)then
               begin
                    FSTraitementDonnees.TableauxPieceManquanteAutreTiers.FixedColor:=$00C4FFFF;
               end
               else
               begin
                    FSTraitementDonnees.TableauxPieceManquanteAutreTiers.FixedColor:=clBtnFace;
               end;
          end;

          if(FSTraitementDonnees.EditTableauColor.Text='Pièces Manquantes')then
          begin
               if(FSTraitementDonnees.TableauSeriePieceTriePiece.FixedColor=clBtnFace)then
               begin
                    FSTraitementDonnees.TableauSeriePieceTriePiece.FixedColor:=$00C4FFFF;
               end
               else
               begin
                    FSTraitementDonnees.TableauSeriePieceTriePiece.FixedColor:=clBtnFace;
               end;
          end;
     end;

     if(FSTraitementDonnees.AfficheTableauPositionAvisSelect.Visible=true)then
     begin
          if(FSTraitementDonnees.AfficheTableauPositionAvisSelect.Color=$00E4E4E4)then
          begin
               FSTraitementDonnees.AfficheTableauPositionAvisSelect.Color:=clWhite;
               FSTraitementDonnees.AfficheTableauPositionAvisSelect.Font.Color:=clRed;
          end
          else
          begin
               FSTraitementDonnees.AfficheTableauPositionAvisSelect.Color:=$00E4E4E4;
               FSTraitementDonnees.AfficheTableauPositionAvisSelect.Font.Color:=clNavy;
          end;
     end;

     if(FSTraitementDonnees.AfficheTableauDataIsoler.Visible=true)then
     begin
          if(FSTraitementDonnees.AfficheTableauDataIsoler.Color=$00E4E4E4)then
          begin
               FSTraitementDonnees.AfficheTableauDataIsoler.Color:=clWhite;
               FSTraitementDonnees.AfficheTableauDataIsoler.Font.Color:=clRed;
          end
          else
          begin
               FSTraitementDonnees.AfficheTableauDataIsoler.Color:=$00E4E4E4;
               FSTraitementDonnees.AfficheTableauDataIsoler.Font.Color:=clNavy;
          end;
     end;
end;

procedure TFSTraitementDonnees.BitBtn19Click(Sender: TObject);
begin
     FSTraitementDonnees.TimerControleCouleur.Enabled:=false;
     FSTraitementDonnees.AfficheTableauPositionAvisSelect.Visible:=false;
     ProcExecuterDateAvis;    
end;

procedure TFSTraitementDonnees.BitBtn21Click(Sender: TObject);
begin
     FSTraitementDonnees.AfficheTableauPositionAvisSelect.Top:=FSTraitementDonnees.AfficheTableauAvis.Top;
     FSTraitementDonnees.AfficheTableauPositionAvisSelect.Left:=FSTraitementDonnees.AfficheTableauAvis.Left;

     FSTraitementDonnees.AfficheTableauPositionAvisSelect.Visible:=true;
     FSTraitementDonnees.TimerControleCouleur.Enabled:=true;

     FSTraitementDonnees.TableauPositionAvisSelect.ColCount:=9;
     FSTraitementDonnees.TableauPositionAvisSelect.Cols[0].Text:='Or';
     FSTraitementDonnees.TableauPositionAvisSelect.Cols[1].Text:='Num Avis';
     FSTraitementDonnees.TableauPositionAvisSelect.Cols[2].Text:='Date';
     FSTraitementDonnees.TableauPositionAvisSelect.Cols[3].Text:='M.Débit';
     FSTraitementDonnees.TableauPositionAvisSelect.Cols[4].Text:='M.Crédit';
     FSTraitementDonnees.TableauPositionAvisSelect.Cols[5].Text:='Tièrs';
     FSTraitementDonnees.TableauPositionAvisSelect.Cols[6].Text:='Opération';
     FSTraitementDonnees.TableauPositionAvisSelect.Cols[7].Text:='P°';
     FSTraitementDonnees.TableauPositionAvisSelect.Cols[8].Text:='Rows';

     FSTraitementDonnees.TableauPositionAvisSelect.RowCount:=2;
     FSTraitementDonnees.TableauPositionAvisSelect.Rows[1].Text:='';

     FSTraitementDonnees.TableauAvis.SetFocus;
end;

procedure TFSTraitementDonnees.BitBtn22Click(Sender: TObject);
begin
     FSTraitementDonnees.TimerControleCouleur.Enabled:=false;
     FSTraitementDonnees.AfficheTableauPositionAvisSelect.Visible:=false;

     ListeAvisPointeur(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked);
     SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRubriqueTrie.Text,FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
end;

Procedure ActionDateExecutionAvis;
var  R:integer; OKAvisExeste:boolean;
begin
     if(FSTraitementDonnees.TableauAvis.Cells[1,FSTraitementDonnees.TableauAvis.Row]<>'')
     and(FSTraitementDonnees.TableauAvis.Cells[1,FSTraitementDonnees.TableauAvis.Row]<>'Solde au:')
     then
          begin
                if(FSTraitementDonnees.AfficheTableauPositionAvisSelect.Visible=true)then
                begin
                     R:=1;
                     OKAvisExeste:=false;
                     while(R<=FSTraitementDonnees.TableauPositionAvisSelect.RowCount-1)and(OKAvisExeste=false)do
                     begin
                          if(FSTraitementDonnees.TableauPositionAvisSelect.Cells[1,R]=FSTraitementDonnees.TableauAvis.Cells[1,FSTraitementDonnees.TableauAvis.Row])then
                          begin
                               OKAvisExeste:=true;
                          end;
                     R:=R+1;
                     end;

                     if(OKAvisExeste=false)then
                     begin
                           if(FSTraitementDonnees.TableauPositionAvisSelect.Cells[0,1]<>'')
                           then R:=FSTraitementDonnees.TableauPositionAvisSelect.RowCount-1
                           else R:=0;

                           R:=R+1;
                           FSTraitementDonnees.TableauPositionAvisSelect.Cells[0,R]:=inttostr(R);
                           FSTraitementDonnees.TableauPositionAvisSelect.Cells[1,R]:=FSTraitementDonnees.TableauAvis.Cells[1,FSTraitementDonnees.TableauAvis.Row];
                           FSTraitementDonnees.TableauPositionAvisSelect.Cells[2,R]:=FSTraitementDonnees.TableauAvis.Cells[2,FSTraitementDonnees.TableauAvis.Row];
                           FSTraitementDonnees.TableauPositionAvisSelect.Cells[3,R]:=FSTraitementDonnees.TableauAvis.Cells[7,FSTraitementDonnees.TableauAvis.Row];
                           FSTraitementDonnees.TableauPositionAvisSelect.Cells[4,R]:=FSTraitementDonnees.TableauAvis.Cells[8,FSTraitementDonnees.TableauAvis.Row];
                           FSTraitementDonnees.TableauPositionAvisSelect.Cells[5,R]:=FSTraitementDonnees.TableauAvis.Cells[10,FSTraitementDonnees.TableauAvis.Row];
                           FSTraitementDonnees.TableauPositionAvisSelect.Cells[6,R]:=FSTraitementDonnees.TableauAvis.Cells[11,FSTraitementDonnees.TableauAvis.Row];
                           FSTraitementDonnees.TableauPositionAvisSelect.Cells[7,R]:=FSTraitementDonnees.TableauAvis.Cells[23,FSTraitementDonnees.TableauAvis.Row];
                           FSTraitementDonnees.TableauPositionAvisSelect.Cells[8,R]:=inttostr(FSTraitementDonnees.TableauAvis.Row);

                           FSTraitementDonnees.TableauPositionAvisSelect.RowCount:=R+1;
                           AjusterColWidth(FSTraitementDonnees.TableauPositionAvisSelect,'','');

                           FSTraitementDonnees.TableauAvis.Cells[3,FSTraitementDonnees.TableauAvis.Row]:='  Sélectionné !';
                     end
                     else
                     begin
                          showmessage('l''avis est déjà sélectionné !');
                     end;
                end
                else
                begin
                     FSTraitementDonnees.TableauPositionAvisSelect.RowCount:=2;
                     FSTraitementDonnees.TableauPositionAvisSelect.Rows[1].Text:='';
                     R:=1;
                     FSTraitementDonnees.TableauPositionAvisSelect.Cells[0,R]:=inttostr(R);
                     FSTraitementDonnees.TableauPositionAvisSelect.Cells[1,R]:=FSTraitementDonnees.TableauAvis.Cells[1,FSTraitementDonnees.TableauAvis.Row];
                     FSTraitementDonnees.TableauPositionAvisSelect.Cells[2,R]:=FSTraitementDonnees.TableauAvis.Cells[2,FSTraitementDonnees.TableauAvis.Row];
                     FSTraitementDonnees.TableauPositionAvisSelect.Cells[3,R]:=FSTraitementDonnees.TableauAvis.Cells[7,FSTraitementDonnees.TableauAvis.Row];
                     FSTraitementDonnees.TableauPositionAvisSelect.Cells[4,R]:=FSTraitementDonnees.TableauAvis.Cells[8,FSTraitementDonnees.TableauAvis.Row];
                     FSTraitementDonnees.TableauPositionAvisSelect.Cells[5,R]:=FSTraitementDonnees.TableauAvis.Cells[10,FSTraitementDonnees.TableauAvis.Row];
                     FSTraitementDonnees.TableauPositionAvisSelect.Cells[6,R]:=FSTraitementDonnees.TableauAvis.Cells[11,FSTraitementDonnees.TableauAvis.Row];
                     FSTraitementDonnees.TableauPositionAvisSelect.Cells[7,R]:=FSTraitementDonnees.TableauAvis.Cells[23,FSTraitementDonnees.TableauAvis.Row];
                     FSTraitementDonnees.TableauPositionAvisSelect.Cells[8,R]:=inttostr(FSTraitementDonnees.TableauAvis.Row);

                     AjusterColWidth(FSTraitementDonnees.TableauPositionAvisSelect,'','');

                     ProcExecuterDateAvis;
                end;
          end
          else
          begin
               showmessage('Sélectionner un avis SVP !');
          end;
end;

procedure TFSTraitementDonnees.EditTypeFormuleCompteurArticleEnter(
  Sender: TObject);
begin
     FSTraitementDonnees.TableauTypeFormuleCompteurArticle.Visible:=true;
     ListeTypeFormule(FSTraitementDonnees.TableauTypeFormuleCompteurArticle);
end;

procedure TFSTraitementDonnees.TableauTypeFormuleCompteurArticleDblClick(
  Sender: TObject);
begin
     FSTraitementDonnees.EditCodeTypeFormuleCompteurArticle.Text:=FSTraitementDonnees.TableauTypeFormuleCompteurArticle.Cells[2,FSTraitementDonnees.TableauTypeFormuleCompteurArticle.Row];
     FSTraitementDonnees.EditTypeFormuleCompteurArticle.Text:=FSTraitementDonnees.TableauTypeFormuleCompteurArticle.Cells[3,FSTraitementDonnees.TableauTypeFormuleCompteurArticle.Row];
     FSTraitementDonnees.TableauTypeFormuleCompteurArticle.Visible:=false;
end;

procedure TFSTraitementDonnees.EditTypeFormuleCompteurArticleKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_ESCAPE]then
     begin
          FSTraitementDonnees.EditCodeTypeFormuleCompteurArticle.Text:='';
          FSTraitementDonnees.EditTypeFormuleCompteurArticle.Text:='';
     end;
end;

procedure TFSTraitementDonnees.BitBtn23Click(Sender: TObject);
var  i,R,iPLM,IndiceAvis,NumListeMouvement:integer;  NumTypeAvis:integer; OKAvis,OKMouvement:boolean; DesignationTypeAvis,CompteImputation,DebitCredit,TypeProces,FichierConserne,Adresse:string;
     DateMouvementDebut,DateMouvementFin,OKExecution:string;
     LeHandle:HWND;
begin
if not AccesPrivilegies('FS Avis',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

if(firstlaters(FSTraitementDonnees.TableauFinanceTiers.Cells[24,FSTraitementDonnees.TableauFinanceTiers.Row],5)='FAvis')then
begin
      FSAvis.Show;
      LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:
      ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:
      FSAvis.Left:=FSMenuPrincipal.Left;
      FSAvis.Top:=FSMenuPrincipal.Top;
      FSAvis.Height:=FSMenuPrincipal.Height;
      FSAvis.Width:=FSMenuPrincipal.Width;

      FSAvis.PageSaisieAvis.Show;
      FSAvis.AfficheSeriePieceAvis.Height:=0;
      //FSAvis.AfficheSeriePiece.Height:=0;

      //FSAvis.EditRechercheDateDebut.Date:=strtodate('01/01/'+ExerciceAnnee);
      //FSAvis.EditRechercheDateFin.Date:=strtodate('31/12/'+ExerciceAnnee);

      //FSAvis.EditTiersDateDebut.Date:=strtodate('01/01/'+ExerciceAnnee);
      //FSAvis.EditTiersDateFin.Date:=strtodate('31/12/'+ExerciceAnnee);

      FSAvis.EditModePaiement.ItemIndex:=0;
      FSAvis.EditModePaiement.Text:='';
      FSAvis.AfficheDomiciliation.Visible:=true;
      FSAvis.EditDate.Date:=date;
      FSAvis.EditDateExecutionAvis.Text:='';
      FSAvis.EditNumPiece.Text:='';
      FSAvis.EditDomiciliationAvis.Text:='';
      FSAvis.EditMontantChiffre.Text:='';
      FSAvis.EditMontantLettres.Text:='';
      FSAvis.EditChargementCodeFichierConcerne.Text:='';
      FSAvis.EditChargementFichierConcerne.Text:='';
      FSAvis.EditChargementTypeProces.Text:='';
      FSAvis.EditBenificiaire.Text:='';
      FSAvis.EditNatureDepences.Text:='';
      //FSAvis.EditSignataire.Text:='';
      FSAvis.EditCompteImputation.Text:='';
      FSAvis.EditDebitCreditDomiciliation.Text:='';
      FSAvis.EditOrigine.Text:='';
      FSAvis.EditNumProjet.Text:='';
      FSAvis.EditNomProjet.Text:='';
      FSAvis.EditNumFiche.Text:='';
      FSAvis.EditDesignationFiche.Text:='';
      FSAvis.EditNumRubrique.Text:='';
      FSAvis.EditDesignationRubrique.Text:='';
      FSAvis.EditNumPlanificateur.Text:='';
      FSAvis.EditDesignationPlanificateur.Text:='';
      FSAvis.RBPieceMaitenue.Checked:=true;
      FSAvis.BitAfficheFicheTechnique.Kind:=bkRetry;
      FSAvis.BitAfficheFicheTechnique.Caption:='.';
      FSAvis.BitAfficheFicheTechnique.Cancel:=false;
      FSAvis.AfficheProjet.Height:=26;
      FSAvis.TableauSelections.Visible:=false;

      TypeProces:='Business';   FichierConserne:=FSTraitementDonnees.TableauFinanceTiers.Cells[24,FSTraitementDonnees.TableauFinanceTiers.Row];
      if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
      begin
           if(FichierConserne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConserne+'} recherché !');
      end;

      ChAvis:=Adresse;
      assignfile(FAvis,ChAvis);
      try
      if FileExists(ChAvis)then
      Reset(FAvis)
      else Rewrite(FAvis);
      Seek(FAvis,0);
      i:=0;
      IndiceAvis:=0;
      FSAvis.EditNumAvis.Items.Text:='';
      FSAvis.EditNumAvis.Items.Add('Aucun');
      while not eof(FAvis)do
      begin
           read(FAvis,RAvis);
           i:=i+1;
           FSAvis.EditNumAvis.Items.Add(Completezerogauche(inttostr(RAvis.NumAvis),'5'));
           if(RAvis.NumAvis=strtointeger(FSTraitementDonnees.TableauFinanceTiers.Cells[1,FSTraitementDonnees.TableauFinanceTiers.Row]))
           then IndiceAvis:=i;
      end;
      finally
      Closefile(FAvis);
      end;

      FSAvis.EditNumAvis.ItemIndex:=IndiceAvis;

      if(FSAvis.EditNumRubrique.Text='')and(FSAvis.EditNumFiche.Text='')then
      begin
           DesignationTypeAvis:=FSAvis.EditTypeAvis.Text;
      end
      else
      begin
           RubriqueArborescence(FSAvis.EditNumFiche.Text,FSAvis.EditNumRubrique.Text,RRubriqueFicheTechniqueCopie,RFicheTechnique,RTypeAvis);
           DesignationTypeAvis:=RTypeAvis.DesignationTypeAvis;
      end;

      FSAvis.EditBaseAvis.Text:=FSTraitementDonnees.TableauFinanceTiers.Cells[24,FSTraitementDonnees.TableauFinanceTiers.Row];

      AfficerDataContrePartieAvis(DesignationTypeAvis,FSTraitementDonnees.TableauFinanceTiers.Cells[24,FSTraitementDonnees.TableauFinanceTiers.Row]);

      AfficheAvis(FSAvis.EditNumAvis.Text,FSTraitementDonnees.TableauFinanceTiers.Cells[24,FSTraitementDonnees.TableauFinanceTiers.Row]);
end;

if(FSTraitementDonnees.TableauFinanceTiers.Cells[24,FSTraitementDonnees.TableauFinanceTiers.Row]='FListeMouvement')then
begin
     ChListeMouvement:=IndiqueAdresseListeMouvement(FSTraitementDonnees.TableauFinanceTiers.Cells[19,FSTraitementDonnees.TableauFinanceTiers.Row],TypeProcesReseauxListeMouvement);
     assignfile(FListeMouvement,ChListeMouvement);
     if FileExists(ChListeMouvement)then
     begin
          try
          Reset(FListeMouvement);
          iPLM:=strtointeger(FSTraitementDonnees.TableauFinanceTiers.Cells[23,FSTraitementDonnees.TableauFinanceTiers.Row]);
          Seek(FListeMouvement,iPLM);
          if not eof(FListeMouvement)then
          begin
               read(FListeMouvement,RListeMouvement);
               NumListeMouvement:=RListeMouvement.NumListeMouvement;

               FSFicheSaisie.Show;
               LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:
               ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:

               FSFicheSaisie.RBActiverReaffichageListeMouvement.Checked:=false;
               FSFicheSaisie.RBListeDetailMouvementParMois.Checked:=false;
               FSFicheSaisie.EditAnnee.Text:=lastlaters(RListeMouvement.DateMouvement,4);
               FSFicheSaisie.EditMois.ItemIndex:=strtointeger(midellaters(RListeMouvement.DateMouvement,4,5))-1;

               FSFicheSaisie.EditChercheDateDetailMouvement.Date:=strtodate(RListeMouvement.DateMouvement);
               FSFicheSaisie.EditChercheDateDetailMouvement.Visible:=true;

               FSFicheSaisie.RBListeDetailMouvementParDate.Checked:=false;
               ProcActionTypeMouvement(inttostr(RListeMouvement.PositionTypeMouvement),false);
               ProcActionMouvement(inttostr(RListeMouvement.PositionTypeMouvement),inttostr(RListeMouvement.PositionMouvement),false);
               FSFicheSaisie.RBListeDetailMouvementParDate.Checked:=true;

               R:=1;
               OKMouvement:=false;
               while(R<=FSFicheSaisie.TableauListeMouvement.RowCount-1)and(OKMouvement=false)do
               begin
                    if(strtointeger(FSFicheSaisie.TableauListeMouvement.Cells[2,R])=NumListeMouvement)then
                    begin
                         OKMouvement:=true;
                         FSFicheSaisie.TableauListeMouvement.Row:=R;

                    end;
               R:=R+1;
               end;

               FSFicheSaisie.TableauListeMouvement.SetFocus;

          end;
          finally
          closefile(FListeMouvement);
          end;
     end;
end;

if(FSTraitementDonnees.TableauFinanceTiers.Cells[24,FSTraitementDonnees.TableauFinanceTiers.Row]='FPrelevement')then
begin

end;

if(FSTraitementDonnees.TableauFinanceTiers.Cells[24,FSTraitementDonnees.TableauFinanceTiers.Row]='FSituation')then
begin

end;

end;

procedure TFSTraitementDonnees.EditBaseAvisFichierConcerneKeyPress(
  Sender: TObject; var Key: Char);
begin
if(key='+')then
begin
      FSTraitementDonnees.EditOperationBaseAvisFichierTiersConserne.Text:=key;
      FSTraitementDonnees.EditAddBaseAvisFichierTiersConserne.Text:=FSTraitementDonnees.EditBaseAvisFichierConcerne.Text;
end;
key:=#0;
end;

procedure TFSTraitementDonnees.EditBaseAvisFichierConcerneSelect(
  Sender: TObject);
begin
     if(FSTraitementDonnees.EditOperationBaseAvisFichierTiersConserne.Text='+')then
     begin
          if(FSTraitementDonnees.EditAddBaseAvisFichierTiersConserne.Text<>'')then
          begin
               FSTraitementDonnees.EditAddBaseAvisFichierTiersConserne.Text:=FSTraitementDonnees.EditAddBaseAvisFichierTiersConserne.Text+';'+FSTraitementDonnees.EditBaseAvisFichierConcerne.Text;
          end;

     FSTraitementDonnees.TimerADDBaseAvisFichierConcerne.Enabled:=true;
     end;
end;

procedure TFSTraitementDonnees.TimerADDBaseAvisFichierConcerneTimer(
  Sender: TObject);
begin
     FSTraitementDonnees.TimerADDBaseAvisFichierConcerne.Enabled:=false;

     if(FSTraitementDonnees.EditOperationBaseAvisFichierTiersConserne.Text='+')then
     begin
          if(FSTraitementDonnees.EditAddBaseAvisFichierTiersConserne.Text<>'')then
          begin
               FSTraitementDonnees.EditBaseAvisFichierConcerne.Text:=FSTraitementDonnees.EditAddBaseAvisFichierTiersConserne.Text;
          end;

     FSTraitementDonnees.EditOperationBaseAvisFichierTiersConserne.Text:='';
     FSTraitementDonnees.EditAddBaseAvisFichierTiersConserne.Text:='';
     end;
end;

Procedure AfficheTraitementTiers;
var  TypeProces,FichierConserne,Adresse:string;
     LeHandle:HWND;
     R,EcartExercice:integer;
begin
     FSTraitementDonnees.Show;
     LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:
     ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:
     FSTraitementDonnees.PageTraitementDonnees.Show;
     FSTraitementDonnees.PageFinanceTiers.Show;

if(FSTraitementDonnees.EditPgeVisiterTiers.Text='Visite Tiers')then exit;

FSTraitementDonnees.EditPgeVisiterTiers.Text:='Visite Tiers';

FSTraitementDonnees.EditExerciceTableauBohr.Items.Text:='';
FSTraitementDonnees.EditAnneeAffiche.Items.Text:='';
FSTraitementDonnees.EditTiersAnneeAffiche.Items.Text:='';

EcartExercice:=strtointeger(Lastlaters(datetostr(date),4))-strtointeger(ExerciceAnnee);

for R:=-1 to EcartExercice do
begin
     FSTraitementDonnees.EditExerciceTableauBohr.Items.Add(inttostr(strtointeger(ExerciceAnnee)+R));
     FSTraitementDonnees.EditAnneeAffiche.Items.Add(inttostr(strtointeger(ExerciceAnnee)+R));
     FSTraitementDonnees.EditTiersAnneeAffiche.Items.Add(inttostr(strtointeger(ExerciceAnnee)+R));
end;

FSTraitementDonnees.EditExerciceTableauBohr.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditExerciceTableauBohr.Name);
if(FSTraitementDonnees.EditExerciceTableauBohr.Text='')then FSTraitementDonnees.EditExerciceTableauBohr.ItemIndex:=1;
FSTraitementDonnees.EditDateDebutTableauBohr.Date:=strtodate('01/01/'+FSTraitementDonnees.EditExerciceTableauBohr.Text);
FSTraitementDonnees.EditDateFinTableauBohr.Date:=strtodate('31/12/'+FSTraitementDonnees.EditExerciceTableauBohr.Text);

FSTraitementDonnees.EditAnneeAffiche.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditAnneeAffiche.Name);
if(FSTraitementDonnees.EditAnneeAffiche.Text='')then FSTraitementDonnees.EditAnneeAffiche.ItemIndex:=1;
FSTraitementDonnees.EditRechercheDateDebut.Date:=strtodate('01/01/'+FSTraitementDonnees.EditAnneeAffiche.Text);
FSTraitementDonnees.EditRechercheDateFin.Date:=strtodate('31/12/'+FSTraitementDonnees.EditAnneeAffiche.Text);

FSTraitementDonnees.EditTiersAnneeAffiche.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditTiersAnneeAffiche.Name);
if(FSTraitementDonnees.EditTiersAnneeAffiche.Text='')then FSTraitementDonnees.EditTiersAnneeAffiche.ItemIndex:=1;
FSTraitementDonnees.EditTiersDateDebut.Date:=strtodate('01/01/'+FSTraitementDonnees.EditTiersAnneeAffiche.Text);
FSTraitementDonnees.EditTiersDateFin.Date:=strtodate('31/12/'+FSTraitementDonnees.EditTiersAnneeAffiche.Text);

FSTraitementDonnees.AfficheSeriePiece.Height:=0;

TypeProces:='Business';   FichierConserne:='FTypeAvis';
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     if(FichierConserne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConserne+'} recherché !');
end;

ChTypeAvis:=Adresse;
assignfile(FTypeAvis,ChTypeAvis);
try
if FileExists(ChTypeAvis)then
Reset(FTypeAvis)
else Rewrite(FTypeAvis);
Seek(FTypeAvis,0);
FSTraitementDonnees.EditDesignationTypeAvis.Items.Text:='';
FSTraitementDonnees.EditDesignationTypeAvis.Items.Add('Tous');
while not eof(FTypeAvis)do
begin
     read(FTypeAvis,RTypeAvis);
     FSTraitementDonnees.EditDesignationTypeAvis.Items.Add(RTypeAvis.DesignationTypeAvis);
end;
finally
CloseFile(FTypeAvis);
end;

FSTraitementDonnees.EditDesignationTypeAvis.ItemIndex:=0;
FSTraitementDonnees.EditDesignationTypeAvisDomiciliation.Text:=FSTraitementDonnees.EditDesignationTypeAvis.Text;
FSTraitementDonnees.EditDesignationTypeAvisTiers.Text:=FSTraitementDonnees.EditDesignationTypeAvis.Text;

if(FSTraitementDonnees.EditTiersNomTiers.Text='')then  ////////////////////////////Traitement Tiers .........................
begin
     TypeProces:='Business';   FichierConserne:='FDomiciliation';
     if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          if(FichierConserne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConserne+'} recherché !');
     end;

     ChDomiciliation:=Adresse;
     assignfile(FDomiciliation,ChDomiciliation);
     try
     if FileExists(ChDomiciliation)then
     Reset(FDomiciliation)
     else Rewrite(FDomiciliation);
     Seek(FDomiciliation,0);
     FSTraitementDonnees.EditTiersDomiciliation.Items.Text:='';
     FSTraitementDonnees.EditTiersDomiciliation.Items.Add('Tous');
     while not eof(FDomiciliation)do
     begin
          read(FDomiciliation,RDomiciliation);
          FSTraitementDonnees.EditTiersDomiciliation.Items.Add(RDomiciliation.DesignationDomiciliation);
     end;
     finally
     CloseFile(FDomiciliation);
     end;
     FSTraitementDonnees.EditTiersDomiciliation.ItemIndex:=0;
     ListeTypeFichierTiersBox(FSTraitementDonnees.EditTiersTypeProces.Text,'','',FSTraitementDonnees.EditTiersFichierConserne,FSTraitementDonnees.TitreEditTiersFichierConserne);
end
else
begin
     FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

     if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
     begin
          SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
     end;
end; ///////////////////////////////////////////////////////////////////////////

FSTraitementDonnees.SetFocus;

ChargerOptionsTraitementDonnees;
end;

Procedure AfficheTraitementDomiciliation;
var  TypeProces,FichierConserne,Adresse:string;
     LeHandle:HWND;
begin
FSTraitementDonnees.Show; FormeAvantPlan(FSMenuPrincipal,FSTraitementDonnees,FSMenuPrincipal.RBFormeAvantPlan.Checked);
LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:
ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:
FSTraitementDonnees.Left:=FSMenuPrincipal.Left;
FSTraitementDonnees.Top:=FSMenuPrincipal.Top;
FSTraitementDonnees.Height:=FSMenuPrincipal.Height;
FSTraitementDonnees.Width:=FSMenuPrincipal.Width;

FSTraitementDonnees.PageTraitementDonnees.Show;
FSTraitementDonnees.PageFinanceDomiciliation.Show;

if(FSTraitementDonnees.EditPgeVisiterDomiciliation.Text='Visite Domiciliation')then exit;

FSTraitementDonnees.EditPgeVisiterDomiciliation.Text:='Visite Domiciliation';

FSTraitementDonnees.EditExerciceTableauBohr.Items.Text:='';
FSTraitementDonnees.EditExerciceTableauBohr.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-3));
FSTraitementDonnees.EditExerciceTableauBohr.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-2));
FSTraitementDonnees.EditExerciceTableauBohr.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-1));
FSTraitementDonnees.EditExerciceTableauBohr.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-0));
FSTraitementDonnees.EditExerciceTableauBohr.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditExerciceTableauBohr.Name);
if(FSTraitementDonnees.EditExerciceTableauBohr.Text='')then FSTraitementDonnees.EditExerciceTableauBohr.ItemIndex:=3;
FSTraitementDonnees.EditDateDebutTableauBohr.Date:=strtodate('01/01/'+FSTraitementDonnees.EditExerciceTableauBohr.Text);
FSTraitementDonnees.EditDateFinTableauBohr.Date:=strtodate('31/12/'+FSTraitementDonnees.EditExerciceTableauBohr.Text);

FSTraitementDonnees.EditAnneeAffiche.Items.Text:='';
FSTraitementDonnees.EditAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-3));
FSTraitementDonnees.EditAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-2));
FSTraitementDonnees.EditAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-1));
FSTraitementDonnees.EditAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-0));
FSTraitementDonnees.EditAnneeAffiche.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditAnneeAffiche.Name);
if(FSTraitementDonnees.EditAnneeAffiche.Text='')then FSTraitementDonnees.EditAnneeAffiche.ItemIndex:=3;
FSTraitementDonnees.EditRechercheDateDebut.Date:=strtodate('01/01/'+FSTraitementDonnees.EditAnneeAffiche.Text);
FSTraitementDonnees.EditRechercheDateFin.Date:=strtodate('31/12/'+FSTraitementDonnees.EditAnneeAffiche.Text);

FSTraitementDonnees.EditTiersAnneeAffiche.Items.Text:='';
FSTraitementDonnees.EditTiersAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-3));
FSTraitementDonnees.EditTiersAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-2));
FSTraitementDonnees.EditTiersAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-1));
FSTraitementDonnees.EditTiersAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-0));
FSTraitementDonnees.EditTiersAnneeAffiche.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditTiersAnneeAffiche.Name);
if(FSTraitementDonnees.EditTiersAnneeAffiche.Text='')then FSTraitementDonnees.EditTiersAnneeAffiche.ItemIndex:=3;
FSTraitementDonnees.EditTiersDateDebut.Date:=strtodate('01/01/'+FSTraitementDonnees.EditTiersAnneeAffiche.Text);
FSTraitementDonnees.EditTiersDateFin.Date:=strtodate('31/12/'+FSTraitementDonnees.EditTiersAnneeAffiche.Text);



FSTraitementDonnees.AfficheSeriePiece.Height:=0;
TypeProces:='Business';   FichierConserne:='FTypeAvis';
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     if(FichierConserne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché +{'+FichierConserne+'} !');
end;
ChTypeAvis:=Adresse;
assignfile(FTypeAvis,ChTypeAvis);
try
if FileExists(ChTypeAvis)then
Reset(FTypeAvis)
else Rewrite(FTypeAvis);
Seek(FTypeAvis,0);
FSTraitementDonnees.EditDesignationTypeAvis.Items.Text:='';
FSTraitementDonnees.EditDesignationTypeAvis.Items.Add('Tous');
while not eof(FTypeAvis)do
begin
     read(FTypeAvis,RTypeAvis);
     FSTraitementDonnees.EditDesignationTypeAvis.Items.Add(RTypeAvis.DesignationTypeAvis);
end;
finally
CloseFile(FTypeAvis);
end;

FSTraitementDonnees.EditDesignationTypeAvis.ItemIndex:=0;
FSTraitementDonnees.EditDesignationTypeAvisDomiciliation.Text:=FSTraitementDonnees.EditDesignationTypeAvis.Text;
FSTraitementDonnees.EditDesignationTypeAvisTiers.Text:=FSTraitementDonnees.EditDesignationTypeAvis.Text;

FSTraitementDonnees.SetFocus;

ChargerOptionsTraitementDonnees;
end;

Procedure AfficheTableauDeBohrs;
var  C:integer; NotCol:string;
     LeHandle:HWND;
begin
OpenFParc(RParc);
ChUniteFonds:=RParc.Parcours+'\'+Exercice+'FUniteFonds';
assignfile(FUniteFonds,ChUniteFonds);
if FileExists(ChUniteFonds)then
begin
     try
     Reset(FUniteFonds);
     Seek(FUniteFonds,0);
     if not eof(FUniteFonds)then
     begin
          read(FUniteFonds,RUniteFonds);
          FSTraitementDonnees.EditDesignationDevise.Text:=RUniteFonds.DesignationDevise;
          FSTraitementDonnees.EditSigleDevise.Text:=RUniteFonds.SigleDevise;
     end;
     finally
     CloseFile(FUniteFonds);
     end;
end;

FSTraitementDonnees.Show;
LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:
ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:
FSTraitementDonnees.PageTraitementDonnees.Show;
FSTraitementDonnees.PageTableauBohr.Show;

//if(FSTraitementDonnees.EditPgeVisiterTableauBohrs.Text='Visite Tableau Bohrs')then exit;

FSTraitementDonnees.EditPgeVisiterTableauBohrs.Text:='Visite Tableau Bohrs';

ProcListeMouvement(FSTraitementDonnees.TableauMouvement,'','','?','');

FSTraitementDonnees.TableauDeBohrTiers.RowCount:=2;
FSTraitementDonnees.TableauDeBohrTiers.Rows[1].Text:='';

FSTraitementDonnees.TableauAnalyseSoldePeriode.RowCount:=2;
FSTraitementDonnees.TableauAnalyseSoldePeriode.Rows[1].Text:='';

FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.RowCount:=2;
FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers.Rows[1].Text:='';

FSTraitementDonnees.TableauFinanceStructure.RowCount:=2;
FSTraitementDonnees.TableauFinanceStructure.Rows[1].Text:='';

FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount:=2;
FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Rows[1].Text:='';

FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount:=2;
FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Rows[1].Text:='';

FSTraitementDonnees.TableauArborescenceArticle.RowCount:=2;
FSTraitementDonnees.TableauArborescenceArticle.Rows[1].Text:='';

FSTraitementDonnees.TableauAnalysePeriodique.RowCount:=2;
FSTraitementDonnees.TableauAnalysePeriodique.Rows[1].Text:='';

FSTraitementDonnees.AfficheSeriePiece.Height:=0;

FSTraitementDonnees.EditExerciceTableauBohr.Items.Text:='';
FSTraitementDonnees.EditExerciceTableauBohr.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-3));
FSTraitementDonnees.EditExerciceTableauBohr.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-2));
FSTraitementDonnees.EditExerciceTableauBohr.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-1));
FSTraitementDonnees.EditExerciceTableauBohr.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-0));
FSTraitementDonnees.EditExerciceTableauBohr.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditExerciceTableauBohr.Name);
if(FSTraitementDonnees.EditExerciceTableauBohr.Text='')then FSTraitementDonnees.EditExerciceTableauBohr.ItemIndex:=3;
FSTraitementDonnees.EditMois.ItemIndex:=(strtointeger(MidelLaters(datetostr(Date),4,5))-1);

FSTraitementDonnees.EditDateDebutTableauBohr.Date:=strtodate('01/'+Completezerogauche(MidelLaters(FSTraitementDonnees.EditMois.Text,2,3),'2')+'/'+FSTraitementDonnees.EditExerciceTableauBohr.Text);
FSTraitementDonnees.EditDateFinTableauBohr.Date:=strtodate(Completezerogauche(inttostr(LastDay(datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date))),'2')+'/'+Completezerogauche(MidelLaters(FSTraitementDonnees.EditMois.Text,2,3),'2')+'/'+FSTraitementDonnees.EditExerciceTableauBohr.Text);

{FSTraitementDonnees.EditDateDebutTableauBohr.Date:=strtodate('01/01/'+FSTraitementDonnees.EditExerciceTableauBohr.Text);
FSTraitementDonnees.EditDateFinTableauBohr.Date:=strtodate('31/12/'+FSTraitementDonnees.EditExerciceTableauBohr.Text);}

FSTraitementDonnees.EditAnneeAffiche.Items.Text:='';
FSTraitementDonnees.EditAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-3));
FSTraitementDonnees.EditAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-2));
FSTraitementDonnees.EditAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-1));
FSTraitementDonnees.EditAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-0));
FSTraitementDonnees.EditAnneeAffiche.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditAnneeAffiche.Name);
if(FSTraitementDonnees.EditAnneeAffiche.Text='')then FSTraitementDonnees.EditAnneeAffiche.ItemIndex:=3;
FSTraitementDonnees.EditRechercheDateDebut.Date:=strtodate('01/01/'+FSTraitementDonnees.EditAnneeAffiche.Text);
FSTraitementDonnees.EditRechercheDateFin.Date:=strtodate('31/12/'+FSTraitementDonnees.EditAnneeAffiche.Text);

FSTraitementDonnees.EditTiersAnneeAffiche.Items.Text:='';
FSTraitementDonnees.EditTiersAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-3));
FSTraitementDonnees.EditTiersAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-2));
FSTraitementDonnees.EditTiersAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-1));
FSTraitementDonnees.EditTiersAnneeAffiche.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-0));
FSTraitementDonnees.EditTiersAnneeAffiche.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditTiersAnneeAffiche.Name);
if(FSTraitementDonnees.EditTiersAnneeAffiche.Text='')then FSTraitementDonnees.EditTiersAnneeAffiche.ItemIndex:=3;
FSTraitementDonnees.EditTiersDateDebut.Date:=strtodate('01/01/'+FSTraitementDonnees.EditTiersAnneeAffiche.Text);
FSTraitementDonnees.EditTiersDateFin.Date:=strtodate('31/12/'+FSTraitementDonnees.EditTiersAnneeAffiche.Text);

FSTraitementDonnees.TableauTitreDataTiers.ColCount:=7;
FSTraitementDonnees.TableauTitreDataTiers.RowCount:=2;
FSTraitementDonnees.TableauTitreDataTiers.Rows[0].Text:='';
FSTraitementDonnees.TableauTitreDataTiers.Rows[1].Text:='';
FSTraitementDonnees.TableauTitreDataTiers.Cells[0,0]:='Rubriques';
FSTraitementDonnees.TableauTitreDataTiers.Cells[0,1]:='Sélection';
FSTraitementDonnees.EditTypeProces.Text:='';
FSTraitementDonnees.EditFichierConcerne.Text:='';

FSTraitementDonnees.SetFocus;

ChargerOptionsTraitementDonnees;
end;


procedure TFSTraitementDonnees.EditNomProjetTableauBohrEnter(
  Sender: TObject);
begin
SuspendreAffichage;

FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;
if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=true)then IntiallisationTableauBohrs(true,true,true,true,true,true,true,true,false,true);
FSTraitementDonnees.TableauProjetTableauBohr.Visible:=true;
FSTraitementDonnees.TableauProjetTableauBohr.Left:=FSTraitementDonnees.EditNomProjetTableauBohr.Left;
FSTraitementDonnees.TableauProjetTableauBohr.Top:=FSTraitementDonnees.EditNomProjetTableauBohr.Top+
                                                  FSTraitementDonnees.EditNomProjetTableauBohr.Height+3;
FSTraitementDonnees.TableauProjetTableauBohr.SetFocus;
ListeProjetFinance(FSTraitementDonnees.TableauProjetTableauBohr,'','','10',false,'1','',false,true,'','');
end;

procedure TFSTraitementDonnees.TableauProjetTableauBohrDblClick(
  Sender: TObject);
begin
     FSTraitementDonnees.EditNumProjetTableauBohr.Text:=FSTraitementDonnees.TableauProjetTableauBohr.Cells[1,FSTraitementDonnees.TableauProjetTableauBohr.Row];
     FSTraitementDonnees.EditNomProjetTableauBohr.Text:=FSTraitementDonnees.TableauProjetTableauBohr.Cells[2,FSTraitementDonnees.TableauProjetTableauBohr.Row];
     FSTraitementDonnees.TableauProjetTableauBohr.Visible:=false;
end;

procedure TFSTraitementDonnees.BitBtn24Click(Sender: TObject);
begin
     FSTraitementDonnees.AfficheIndiqueArchivePhoto.Visible:=true;
end;

procedure TFSTraitementDonnees.ArchivePhotoDblClick(Sender: TObject);
begin
     AfficherPhotoPleinEcarn(FSTraitementDonnees.ArchivePhoto);
end;

procedure TFSTraitementDonnees.BitBtn78Click(Sender: TObject);
begin
     FSTraitementDonnees.AfficheIndiqueArchivePhoto.Visible:=false;
end;

procedure TFSTraitementDonnees.TableauMoyenTransportMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSTraitementDonnees.TableauTiersTableaudeBohrsMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     //DeplacerObjet(Sender);
end;

procedure TFSTraitementDonnees.AfficheSeriePieceMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSTraitementDonnees.AfficheTableauDataIsolerMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSTraitementDonnees.AfficheTableauPositionAvisSelectMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSTraitementDonnees.TableauProjetTraitementMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSTraitementDonnees.TableauTypeFormuleCompteurArticleMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSTraitementDonnees.BitBtn25Click(Sender: TObject);
begin
     ListeTiersPointeur(FSTraitementDonnees.TableauTiersListeTiers,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,'','',FSTraitementDonnees.EditTiersNomTiers.Text,FSTiers.EditNbrKeyUp,FSTiers.EditNbrKeyUpMemo,FSTraitementDonnees.TimerLancerAfficheTiers,true,FSTraitementDonnees.RBChargerPointeur.Checked)
end;

procedure TFSTraitementDonnees.TimerAfficheTiersTimer(Sender: TObject);
begin
     FSTraitementDonnees.TimerAfficheTiers.Enabled:=false;

     if(FSTraitementDonnees.TableauTiersListeTiers.Visible=true)then
     begin
          ListeTiersPointeur(FSTraitementDonnees.TableauTiersListeTiers,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,'','',FSTraitementDonnees.EditTiersNomTiers.Text,FSTiers.EditNbrKeyUp,FSTiers.EditNbrKeyUpMemo,FSTraitementDonnees.TimerLancerAfficheTiers,true,FSTraitementDonnees.RBChargerPointeur.Checked)
     end
     else
     if(FSTraitementDonnees.TableauTiersTableaudeBohrs.Visible=true)then
     begin
          ListeTiersPointeur(FSTraitementDonnees.TableauTiersTableaudeBohrs,FSTraitementDonnees.TableauMouvement.Cells[4,FSTraitementDonnees.TableauMouvement.Row],FSTraitementDonnees.EditTiersFichierConserneTableauBohr.Text,'','',FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text,FSTiers.EditNbrKeyUp,FSTiers.EditNbrKeyUpMemo,FSTraitementDonnees.TimerLancerAfficheTiers,true,FSTraitementDonnees.RBChargerPointeur.Checked);
     end;

     FSTraitementDonnees.RBChargerPointeur.Checked:=false;
end;

procedure TFSTraitementDonnees.TimerLancerAfficheTiersTimer(
  Sender: TObject);
begin
     FSTraitementDonnees.TimerLancerAfficheTiers.Enabled:=false;
     FSTraitementDonnees.TimerAfficheTiers.Enabled:=true;
end;

procedure TFSTraitementDonnees.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:integer;
begin
     ActiverNomForm(0,(Sender as TComponent).Name);

     for i:=0 to ListePointeurTableauTiers.Count-1 do TTableauTiersPointeur(ListePointeurTableauTiers.Items[i]).Free;
     ListePointeurTableauTiers.Free;

     FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked:=false;
     FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked:=false;
end;

procedure TFSTraitementDonnees.EditTiersFichierConserneTableauBohrSelect(
  Sender: TObject);
var R:integer;  OKAutoSelect:boolean;
begin
     FSTraitementDonnees.RBChargerPointeur.Checked:=true;
     FSTraitementDonnees.TableauTiersTableaudeBohrs.Visible:=true;

     FSTraitementDonnees.TableauTiersTableaudeBohrs.Top:=FSTraitementDonnees.PagePrincipale.Top+FSTraitementDonnees.PageEnglais.Top+FSTraitementDonnees.AfficheSelectData.Top+FSTraitementDonnees.EditNomTiersTableaudeBohrs.Top+FSTraitementDonnees.EditNomTiersTableaudeBohrs.Height+2;
     FSTraitementDonnees.TableauTiersTableaudeBohrs.Left:=FSTraitementDonnees.PagePrincipale.Left+FSTraitementDonnees.PageEnglais.Left+FSTraitementDonnees.AfficheSelectData.Left+FSTraitementDonnees.EditNomTiersTableaudeBohrs.Left;
     FSTraitementDonnees.TimerLancerAfficheTiers.Enabled:=true;

     R:=1;
     OKAutoSelect:=true;
     while(R<=FSTraitementDonnees.TableauMouvement.RowCount-1)and(OKAutoSelect=true)do
     begin
          if(FSTraitementDonnees.TableauMouvement.Cells[20,R]='OK')then OKAutoSelect:=false;
     R:=R+1;
     end;

     if(OKAutoSelect=true)then
     begin
          for R:=1 to FSTraitementDonnees.TableauMouvement.RowCount-1 do
          begin
               if(FunctionFichierInclu(FSTraitementDonnees.EditTiersFichierConserneTableauBohr.Text,FSTraitementDonnees.TableauMouvement.Cells[5,R]))
               and(strtoboolean(FSTraitementDonnees.TableauMouvement.Cells[13,R])=true)
               then
               begin
                    FSTraitementDonnees.TableauMouvement.Cells[20,R]:='OK';
               end;
          end;
     end;
end;

procedure TFSTraitementDonnees.BitAfficheCacheTableauAvisClick(Sender: TObject);
begin
     FSTraitementDonnees.AffichePatientez.Top:=230;
     FSTraitementDonnees.AffichePatientez.Left:=FSTraitementDonnees.AfficheRedimensionneTableauAvis.Left+FSTraitementDonnees.CacherTableauAvis.Left+FSTraitementDonnees.BitAfficheCacheTableauAvis.Left-ValeAbsolue((FSTraitementDonnees.AffichePatientez.Width-FSTraitementDonnees.BitAfficheCacheTableauAvis.Width)/2);
     FSTraitementDonnees.AffichePatientez.Visible:=true;
     FSTraitementDonnees.RBSuspendreTBohr.Checked:=false;
     FSTraitementDonnees.RBSuspendreTraitement.Checked:=false;
     FSTraitementDonnees.TimerAfficheDataDomiciliation.Enabled:=true;
end;

procedure TFSTraitementDonnees.TimerAfficheDataDomiciliationTimer(
  Sender: TObject);
var  IndiceRubriqueTrie:integer;
begin
     FSTraitementDonnees.TimerAfficheDataDomiciliation.Enabled:=false;

     if(FSTraitementDonnees.PageFinanceDomiciliation.Visible=true)then
     begin
          FSTraitementDonnees.RBAucun.Checked:=true;

          IndiceRubriqueTrie:=strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text);

          ListeAvisPointeurSpeciale(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.EditDesignationTypeAvis.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditRechercheDomiciliation.Text,datetostr(FSTraitementDonnees.EditRechercheDateDebut.Date),datetostr(FSTraitementDonnees.EditRechercheDateFin.Date),FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditNumFicheTraitement.Text,FSTraitementDonnees.EditNumRubriqueTraitement.Text,FSTraitementDonnees.EditNumPlanificateurTraitement.Text,'','','',FSTraitementDonnees.EditTiersSupplementaire.Text,IndiceRubriqueTrie,FSTraitementDonnees.RBAfficherAvisAnnules.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked,FSTraitementDonnees.RBAfficherPartiesCommunes.Checked,FSTraitementDonnees.RBPartiesCommunesCumules.Checked
          ,FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked,FSTraitementDonnees.RBJustifierAvis.Checked,FSTraitementDonnees.RBNonJustifieAvis.Checked,FSTraitementDonnees.RBAfficherValeurNulle.Checked,FSTraitementDonnees.RBAfficherInfoTiersSupplementaire.Checked);
          SoldeListeAvis(FSTraitementDonnees.TableauAvis,FSTraitementDonnees.TableauAfficheRubrique,'',FSTraitementDonnees.EditRechercheDomiciliation.Text,FSTraitementDonnees.EditRechercheModePaiement.Text,FSTraitementDonnees.EditNumProjetTraitement.Text,FSTraitementDonnees.EditDesignationTypeAvis.Text,inttostr(IndiceRubriqueTrie),FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text,FSTraitementDonnees.TypeTrie.Caption);
          if(FSTraitementDonnees.RBSuspendreTraitement.Checked=false)then FSTraitementDonnees.CacherTableauAvis.Visible:=false;
     end;

     if(FSTraitementDonnees.PageFinanceTiers.Visible=true)then
     begin
          if(FSTraitementDonnees.RBAucun.Checked=true)then FSTraitementDonnees.RBTousMouvementPrelevementSituationMarche.Checked:=true;

          IndiceRubriqueTrie:=strtointeger(FSTraitementDonnees.EditTiersRubriqueTrie.Text);

          SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,IndiceRubriqueTrie,FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
          if(FSTraitementDonnees.RBSuspendreTraitement.Checked=false)then FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=false;
     end;

     if(FSTraitementDonnees.PageTableauBohr.Visible=true)then
     begin
          if(FSTraitementDonnees.RBAucun.Checked=true)then FSTraitementDonnees.RBTousMouvementPrelevementSituationMarche.Checked:=true;

          IndiceRubriqueTrie:=strtointeger(FSTraitementDonnees.EditIndiceRubriqueTriCol.Text);

          if(FSTraitementDonnees.RBSuspendreTBohr.Checked=false)then  FSTraitementDonnees.CacherTableauDeBohrs.Visible:=false;
          FSTraitementDonnees.AffichePatienter.Visible:=true;
          FSTraitementDonnees.TimerTempAttente.Enabled:=true;
     end;

     application.Initialize;

     FSTraitementDonnees.AffichePatientez.Visible:=false;
end;

procedure TFSTraitementDonnees.RBNePlusAfficheCacheTableauAvisClick(
  Sender: TObject);
begin
     FSTraitementDonnees.CacherTableauAvis.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked;
end;

procedure TFSTraitementDonnees.BitAfficheCacheTableauFinanceTiersClick(Sender: TObject);
begin
     if(FSTraitementDonnees.EditTiersCodeTiers.Text<>'')then
     begin
          FSTraitementDonnees.AffichePatientez.Top:=230;
          FSTraitementDonnees.AffichePatientez.Left:=FSTraitementDonnees.AfficheTiersRedimensionneTableauAvis.Left+FSTraitementDonnees.CacherTableauFinanceTiers.Left+FSTraitementDonnees.BitAfficheCacheTableauFinanceTiers.Left-ValeAbsolue((FSTraitementDonnees.AffichePatientez.Width-FSTraitementDonnees.BitAfficheCacheTableauFinanceTiers.Width)/2);

          FSTraitementDonnees.AffichePatientez.Visible:=true;
          FSTraitementDonnees.RBSuspendreTBohr.Checked:=false;
          FSTraitementDonnees.RBSuspendreTraitement.Checked:=false;
          FSTraitementDonnees.TimerAfficheDataDomiciliation.Enabled:=true;
     end
     else
     begin
          showmessage('Veuillez Sélectionner un compte tiers SVP !');
     end;
end;

procedure TFSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiersClick(
  Sender: TObject);
begin
     FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;
end;

procedure TFSTraitementDonnees.BitBtn28Click(Sender: TObject);
begin
     FSTraitementDonnees.RBNePlusAfficheCacheTableauAvis.Checked:=false;
     FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked:=false;
end;

procedure TFSTraitementDonnees.AfficheIndiqueArchivePhotoMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSTraitementDonnees.BitAfficheCacheTableauDeBohrsClick(
  Sender: TObject);
var  R:integer;  OKSelect:boolean;
begin
     R:=1;
     OKSelect:=false;
     while(R<=FSTraitementDonnees.TableauMouvement.RowCount-1)and(OKSelect=false)do
     begin
          if(FSTraitementDonnees.TableauMouvement.Cells[20,R]='OK')then OKSelect:=true;
     R:=R+1;
     end;

     if(OKSelect=true)then
     begin
          FSTraitementDonnees.AffichePatientez.Top:=230;
          FSTraitementDonnees.AffichePatientez.Left:=FSTraitementDonnees.CacherTableauDeBohrs.Left+FSTraitementDonnees.BitAfficheCacheTableauDeBohrs.Left-ValeAbsolue((FSTraitementDonnees.AffichePatientez.Width-FSTraitementDonnees.BitAfficheCacheTableauDeBohrs.Width)/2);
          FSTraitementDonnees.AffichePatientez.Visible:=true;
          FSTraitementDonnees.RBSuspendreTBohr.Checked:=false;
          FSTraitementDonnees.RBSuspendreTraitement.Checked:=false;
          FSTraitementDonnees.TimerAfficheDataDomiciliation.Enabled:=true;
     end
     else
     begin
          showmessage('Aucun mouvement sélectionné !');
          FSTraitementDonnees.TableauMouvement.SetFocus;
     end;
end;

procedure TFSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrsClick(
  Sender: TObject);
begin
     FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;
end;

procedure TFSTraitementDonnees.BitBtn27Click(Sender: TObject);
begin
     FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=false;
     FSTraitementDonnees.AffichePatientez.Visible:=false;
end;

procedure TFSTraitementDonnees.BitBtn26Click(Sender: TObject);
begin
     FSTraitementDonnees.CacherTableauAvis.Visible:=false;
     FSTraitementDonnees.AffichePatientez.Visible:=false;
end;

procedure TFSTraitementDonnees.BitBtn15Click(Sender: TObject);
begin
     FSTraitementDonnees.CacherTableauDeBohrs.Visible:=false;
     FSTraitementDonnees.AffichePatientez.Visible:=false;
end;

procedure TFSTraitementDonnees.EditDateDebutTableauBohrChange(
  Sender: TObject);
begin
SuspendreAffichage;

     FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;
     if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=true)then IntiallisationTableauBohrs(true,true,true,true,true,true,true,true,false,true);
end;

procedure TFSTraitementDonnees.EditDateFinTableauBohrChange(
  Sender: TObject);
begin
SuspendreAffichage;

     FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;
     if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=true)then IntiallisationTableauBohrs(true,true,true,true,true,true,true,true,false,true);
end;

procedure TFSTraitementDonnees.EditMoisChange(Sender: TObject);
begin
SuspendreAffichage;

     FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;
     if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=true)then IntiallisationTableauBohrs(true,true,true,true,true,true,true,true,false,true);
end;

procedure TFSTraitementDonnees.EditExerciceTableauBohrChange(
  Sender: TObject);
begin
SuspendreAffichage;

     FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;
     if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=true)then IntiallisationTableauBohrs(true,true,true,true,true,true,true,true,false,true);
end;

procedure TFSTraitementDonnees.EditTiersFichierConserneTableauBohrChange(
  Sender: TObject);
begin
SuspendreAffichage;

     FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;
     if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=true)then IntiallisationTableauBohrs(true,true,true,true,true,true,true,true,false,true);
end;

procedure TFSTraitementDonnees.FormCreate(Sender: TObject);
begin
     ListePointeurTableauTiers:=TList.Create;
end;

procedure TFSTraitementDonnees.RBInclureTitreDataTiersClick(
  Sender: TObject);
begin
     FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;
     if(FSTraitementDonnees.CacherTableauDeBohrs.Visible=true)then IntiallisationTableauBohrs(true,true,true,true,true,true,true,true,false,true);

     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.EditDebitCreditPositifKeyPress(
  Sender: TObject; var Key: Char);
begin
     key:=#0;
end;

procedure TFSTraitementDonnees.EditDebitCreditPositifChange(
  Sender: TObject);
begin
     FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;
end;

procedure TFSTraitementDonnees.BitBilanClick(Sender: TObject);
var R:integer;
begin
     if(FSTraitementDonnees.AfficheCacheBilan.Visible=true)then
     begin
          FSTraitementDonnees.AfficheCacheBilan.Visible:=false;
          FSTraitementDonnees.EditCodeAcces.Text:='';
          for R:=1 to FSTraitementDonnees.TableauMouvement.RowCount-1 do
          begin
                FSTraitementDonnees.TableauMouvement.Cells[20,R]:='';
          end;
          FSTraitementDonnees.EditDebitCreditPositif.Text:='';
     end
     else
     begin
           if(FSTraitementDonnees.EditCodeAcces.Text=FSMenuPrincipal.EditCodeFondateurParDefaut.Text)then
           begin
                 FSTraitementDonnees.EditCodeAcces.Text:='';

                 FSTraitementDonnees.CacherTableauDeBohrs.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked;

                 FSTraitementDonnees.AfficheCacheBilan.Caption:='Bilan du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);
                 FSTraitementDonnees.AfficheCacheBilan.Visible:=true;

                 for R:=1 to FSTraitementDonnees.TableauMouvement.RowCount-1 do
                 begin
                      if(strtoboolean(FSTraitementDonnees.TableauMouvement.Cells[13,R])=true)
                      then
                      begin
                           FSTraitementDonnees.TableauMouvement.Cells[20,R]:='OK';
                      end;
                 end;
                 FSTraitementDonnees.EditDebitCreditPositif.Text:='Crédit';
           end
           else
           begin
                showmessage('Opération non autorisé !');
                FSTraitementDonnees.EditCodeAcces.Text:='';
                FSTraitementDonnees.EditCodeAcces.SetFocus;
           end;
     end;
end;

procedure TFSTraitementDonnees.EditCodeAccesKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if(FSTraitementDonnees.EditCodeAcces.Text=FSMenuPrincipal.EditCodeFondateurParDefaut.Text)then
     begin
          FSTraitementDonnees.BitBilan.SetFocus;
     end;
end;

procedure TFSTraitementDonnees.BitBtn29Click(Sender: TObject);
var  TitreEtat,SousTitreEtat,TypeEtat:string;
begin
     if ExisteCharInString('Vente',FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row])then TypeEtat:='Ventes'
     else if ExisteCharInString('Achat',FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row])then TypeEtat:='Achats'
     else TypeEtat:=FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row];



if(FSTraitementDonnees.EditTableauSelect.Text='Bohr')then
begin
     TitreEtat:='';                  
     TitreEtat:='Tableau '+TypeEtat;//'Tableau de Bohr '+'Mouvement: '+FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row]+' Période du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);

     SousTitreEtat:='';
     if(FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text<>'')
     then SousTitreEtat:='Tiers: '+FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text;

     if(FSTraitementDonnees.EditInfoMoyenTransport.Text<>'')then
     SousTitreEtat:=SousTitreEtat+' Transport: '+FSTraitementDonnees.EditInfoMoyenTransport.Text;

     TableauToExcel(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

if(FSTraitementDonnees.EditTableauSelect.Text='Tiers')then
begin
     TitreEtat:='';
     TitreEtat:='Tableau '+TypeEtat;//'Tableau de Bohr par tiers '+'Mouvement: '+FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row]+' Période du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);

     SousTitreEtat:='';
     if(FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text<>'')
     then SousTitreEtat:='Tiers: '+FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text;

     if(FSTraitementDonnees.EditInfoMoyenTransport.Text<>'')then
     SousTitreEtat:=SousTitreEtat+' Transport: '+FSTraitementDonnees.EditInfoMoyenTransport.Text;
     
     TableauToExcel(FSTraitementDonnees.TableauDeBohrTiers,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

if(FSTraitementDonnees.EditTableauSelect.Text='Tiers antérieur')then
begin
     TitreEtat:='';
     TitreEtat:='Tableau '+TypeEtat;//'Tableau de Bohr par tiers Antérieur '+'Mouvement: '+FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row]+' Période du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);

     SousTitreEtat:='';

     if(FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text<>'')
     then SousTitreEtat:='Tiers: '+FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text;

     if(FSTraitementDonnees.EditInfoMoyenTransport.Text<>'')then
     SousTitreEtat:=SousTitreEtat+' Transport: '+FSTraitementDonnees.EditInfoMoyenTransport.Text;

     TableauToExcel(FSTraitementDonnees.TableauAnalyseSoldePeriodeTiers,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

if(FSTraitementDonnees.EditTableauSelect.Text='Mouvement')then
begin
     TitreEtat:='';
     TitreEtat:='Tableau '+TypeEtat;//'Tableau de Bohr '+'Mouvement: '+FSTraitementDonnees.TableauMouvement.Cells[3,FSTraitementDonnees.TableauMouvement.Row]+' Période du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date);

     SousTitreEtat:='';
     if(FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text<>'')
     then SousTitreEtat:='Tiers: '+FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text;

     if(FSTraitementDonnees.EditInfoMoyenTransport.Text<>'')then
     SousTitreEtat:=SousTitreEtat+' Transport: '+FSTraitementDonnees.EditInfoMoyenTransport.Text;


     if(FSTraitementDonnees.RBImprimeTableauSelect.Checked=true)then
     begin
          if(FSTraitementDonnees.EditNomTableauImprime.Text='TableauDetaiMouvementAppartenanceMouvemant')then
          begin
               TableauToExcel(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
          end;

          if(FSTraitementDonnees.EditNomTableauImprime.Text='TableauRecapitulatifDetailMouvements')then
          begin
               FSTraitementDonnees.EditTitreEtat.Lines.Text:='';
               FSTraitementDonnees.EditTitreEtat.Lines.Add('Situation Financière');
               FSTraitementDonnees.EditTitreEtat.Lines.Add('du '+datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date)+' au '+datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date));
               TitreEtat:=FSTraitementDonnees.EditTitreEtat.Lines.Text;
               TableauToExcel(FSTraitementDonnees.TableauRecapitulatifDetailMouvements,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
          end;

          if(FSTraitementDonnees.EditNomTableauImprime.Text='TableauArborescenceArticle')then
          begin
               TableauToExcel(FSTraitementDonnees.TableauArborescenceArticle,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
          end;

          if(FSTraitementDonnees.EditNomTableauImprime.Text='TableauListeAppartenanceMouvementTB')then
          begin
               TableauToExcel(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
          end;

          if(FSTraitementDonnees.EditNomTableauImprime.Text='TableauDetailFormuleListeMouvement')then
          begin
               TableauToExcel(FSTraitementDonnees.TableauDetailFormuleListeMouvement,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
          end;
     end
     else
     begin
          TableauToExcel(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
     end;
end;

end;

procedure TFSTraitementDonnees.DetailRapportKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_ESCAPE]then
     begin
          FSTraitementDonnees.TableauDeBohrTiers.SetFocus;
     end;
end;

procedure TFSTraitementDonnees.RBJustifierAvisNonJustifieAvisClick(
  Sender: TObject);
begin
SuspendreAffichage;

     FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
begin
     SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
end;

EnregistrerOptionsTraitementDonnees;

end;

procedure TFSTraitementDonnees.RBJustifierAvisClick(Sender: TObject);
begin
SuspendreAffichage;

     FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
begin
     SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
end;

EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBNonJustifieAvisClick(Sender: TObject);
begin
SuspendreAffichage;

     FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
begin
     SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
end;

EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.TableauDiagrammeArticleClick(
  Sender: TObject);
begin
     ActiveDiagrammeArticle;
end;

Procedure RemplireTableauDiagrammeArticle(TitreRubrique:string);//Code ou Disignation);
var  R:integer;
begin
     FSTraitementDonnees.TableauDiagrammeArticle.ColCount:=FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-3;
     FSTraitementDonnees.TableauDiagrammeArticle.RowCount:=2;
     FSTraitementDonnees.TableauDiagrammeArticle.Rows[1].Text:='Articles';

     R:=1;
     While(R<=FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-3)do
     begin
          if(TitreRubrique='Code')
          then FSTraitementDonnees.TableauDiagrammeArticle.Cols[R].Text:=FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[1,R]
          else FSTraitementDonnees.TableauDiagrammeArticle.Cols[R].Text:=FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[2,R]+' '+
                                                                         FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[3,R];
          FSTraitementDonnees.TableauDiagrammeArticle.Cells[R,1]:=FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[8,R];

     R:=R+1;
     end;

     FSTraitementDonnees.TableauDiagrammeCompte.ColCount:=FSTraitementDonnees.TableauArborescenceArticle.RowCount-3;
     FSTraitementDonnees.TableauDiagrammeCompte.RowCount:=2;
     FSTraitementDonnees.TableauDiagrammeCompte.Rows[1].Text:=FSTraitementDonnees.EditChoisAffichage.Text;
     R:=1;
     While(R<=FSTraitementDonnees.TableauArborescenceArticle.RowCount-3)do
     begin
          if(TitreRubrique='Code')
          then FSTraitementDonnees.TableauDiagrammeCompte.Cols[R].Text:=FSTraitementDonnees.TableauArborescenceArticle.Cells[1,R]
          else FSTraitementDonnees.TableauDiagrammeCompte.Cols[R].Text:=FSTraitementDonnees.TableauArborescenceArticle.Cells[2,R];
          FSTraitementDonnees.TableauDiagrammeCompte.Cells[R,1]:=FSTraitementDonnees.TableauArborescenceArticle.Cells[6,R];

     R:=R+1;
     end;
end;

procedure TFSTraitementDonnees.TableauDiagrammeCompteClick(
  Sender: TObject);
begin
     ActiveDiagrammeCompte;
end;

procedure TFSTraitementDonnees.TypeAfficheRubriqueDiagrammeArticleKeyPress(
  Sender: TObject; var Key: Char);
begin
     key:=#0;
end;

procedure TFSTraitementDonnees.TypeAfficheRubriqueDiagrammeArticleChange(
  Sender: TObject);
begin
     RemplireTableauDiagrammeArticle(FSTraitementDonnees.TypeAfficheRubriqueDiagrammeArticle.Text);

     if(FSTraitementDonnees.PageDiagrammePeriode.Showing=true)then AfficherDiagramme(FSTraitementDonnees.TableauAnalysePeriodique,2);
     if(FSTraitementDonnees.PageDiagrammeArticle.Showing=true)then AfficherDiagramme(FSTraitementDonnees.TableauDiagrammeArticle,0);
     if(FSTraitementDonnees.PageDiagrammeCompte.Showing=true)then AfficherDiagramme(FSTraitementDonnees.TableauDiagrammeCompte,0);
end;

procedure TFSTraitementDonnees.IncrimenteEditMaxLongueurTitreAxeClick(
  Sender: TObject; Button: TUDBtnType);
begin
     if(FSTraitementDonnees.PageDiagrammePeriode.Showing=true)then AfficherDiagramme(FSTraitementDonnees.TableauAnalysePeriodique,2);
     if(FSTraitementDonnees.PageDiagrammeArticle.Showing=true)then AfficherDiagramme(FSTraitementDonnees.TableauDiagrammeArticle,0);
     if(FSTraitementDonnees.PageDiagrammeCompte.Showing=true)then AfficherDiagramme(FSTraitementDonnees.TableauDiagrammeCompte,0);
end;

procedure TFSTraitementDonnees.PageDiagrammePeriodeShow(Sender: TObject);
begin
     ActiveDiagrammePeriode;
end;

procedure TFSTraitementDonnees.PageDiagrammeArticleShow(Sender: TObject);
begin
     ActiveDiagrammeArticle;
end;

procedure TFSTraitementDonnees.PageDiagrammeCompteShow(Sender: TObject);
begin
     ActiveDiagrammeCompte;
end;

Procedure ActiveDiagrammePeriode;
var  C:integer;                                                          
begin
     FSTraitementDonnees.IncrimenteEditMaxLongueurTitreAxe.Position:=2;

     if(FSTraitementDonnees.TableauAnalysePeriodique.Row=1)then FSTraitementDonnees.AfficheTableauDiagramme.Caption:='Mouvement';
     if(FSTraitementDonnees.TableauAnalysePeriodique.Row=2)then FSTraitementDonnees.AfficheTableauDiagramme.Caption:='Finance';
     AfficherDiagramme(FSTraitementDonnees.TableauAnalysePeriodique,2);
end;

Procedure ActiveDiagrammeArticle;
begin
     FSTraitementDonnees.IncrimenteEditMaxLongueurTitreAxe.Position:=10;
     FSTraitementDonnees.AfficheTableauDiagramme.Caption:='Articles';
     AfficherDiagramme(FSTraitementDonnees.TableauDiagrammeArticle,0);
end;

Procedure ActiveDiagrammeCompte;
begin
     FSTraitementDonnees.IncrimenteEditMaxLongueurTitreAxe.Position:=10;
     FSTraitementDonnees.AfficheTableauDiagramme.Caption:=FSTraitementDonnees.EditChoisAffichage.Text;
     AfficherDiagramme(FSTraitementDonnees.TableauDiagrammeCompte,0);
end;

procedure TFSTraitementDonnees.PageDiagrammeCompteContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     ActiveDiagrammeCompte;
end;

procedure TFSTraitementDonnees.RBInclureValeurSousReseauxPrecedentePeriodeClick(
  Sender: TObject);
begin
     if(FSTraitementDonnees.RBAppliqueEnregistrementParametresReseaux.Checked=false)then Exit;

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     try
     if FileExists(ChActiverPublicationReseaux)then
     Reset(FActiverPublicationReseaux)
     else Rewrite(FActiverPublicationReseaux);
     Seek(FActiverPublicationReseaux,0);
     read(FActiverPublicationReseaux,RActiverPublicationReseaux);
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedentePeriode:=FSTraitementDonnees.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedenteExercice:=FSTraitementDonnees.RBInclureValeurSousReseauxPrecedenteExercice.Checked;
     Seek(FActiverPublicationReseaux,0);
     write(FActiverPublicationReseaux,RActiverPublicationReseaux);
     finally
     CloseFile(FActiverPublicationReseaux);
     end;

     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBInclureValeurSousReseauxPrecedenteExerciceClick(
  Sender: TObject);
begin
     if(FSTraitementDonnees.RBAppliqueEnregistrementParametresReseaux.Checked=false)then Exit;

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     try
     if FileExists(ChActiverPublicationReseaux)then
     Reset(FActiverPublicationReseaux)
     else Rewrite(FActiverPublicationReseaux);
     Seek(FActiverPublicationReseaux,0);
     read(FActiverPublicationReseaux,RActiverPublicationReseaux);
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedentePeriode:=FSTraitementDonnees.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedenteExercice:=FSTraitementDonnees.RBInclureValeurSousReseauxPrecedenteExercice.Checked;
     Seek(FActiverPublicationReseaux,0);
     write(FActiverPublicationReseaux,RActiverPublicationReseaux);
     finally
     CloseFile(FActiverPublicationReseaux);
     end;

     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.TableauNumPieceClick(Sender: TObject);
var  TypeData:string;
begin

if(FSTraitementDonnees.RBRubriqueTrieTableauTriePiece.Checked=true)then
begin
     FSTraitementDonnees.EditRubriqueTrieTriePiece.Text:=inttostr(FSTraitementDonnees.TableauNumPiece.Col);

     TypeData:='';

     if(FSTraitementDonnees.TableauNumPiece.Col=1)
     then
     begin
          TypeData:='Date';
     end;

     if(FSTraitementDonnees.TableauNumPiece.Col=2)
     then
     begin
          TypeData:='Num';
     end;

     FSTraitementDonnees.EditTypeDataTrieTriePiece.Text:=TypeData;

     FSTraitementDonnees.RBRubriqueTrieTableauTriePiece.Checked:=false;
     TrierTableauARowSpecial(FSTraitementDonnees.TableauNumPiece,1,FSTraitementDonnees.TableauNumPiece.RowCount-1,1,FSTraitementDonnees.EditRubriqueTrieTriePiece.Text,TypeData,FSTraitementDonnees.TypeTrieTriePiece.Caption);
end;
end;

Procedure CompleteNumPiece;
var  R,C,l,m,n,LExiste,LMax,CMax,SeriePiece,NumPiece,LongueurSerie,NumCherche:integer;  OKSeriePiece:boolean;
begin
     FSTraitementDonnees.TableauxPieceManquanteAutreTiers.ColCount:=6;
     FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cols[0].Text:='N';
     FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cols[1].Text:='Date';
     FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cols[2].Text:='Num Pièce';
     FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cols[3].Text:='C.Tiers';
     FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cols[4].Text:='Tiers';
     FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cols[5].Text:='Source';

     FSTraitementDonnees.TableauxPieceManquanteAutreTiers.RowCount:=2;
     FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Rows[1].Text:='';
     m:=0;

     CMax:=2;
     FSTraitementDonnees.TableauSeriePieceTriePiece.ColCount:=CMax+1;
     FSTraitementDonnees.TableauSeriePieceTriePiece.Cols[0].Text:='Série';
     FSTraitementDonnees.TableauSeriePieceTriePiece.Cols[1].Text:='Début Série';
     FSTraitementDonnees.TableauSeriePieceTriePiece.Cols[2].Text:='Fin Série';

     FSTraitementDonnees.TableauSeriePieceTriePiece.RowCount:=2;
     FSTraitementDonnees.TableauSeriePieceTriePiece.Rows[1].Text:='';

     LExiste:=0;
     LMax:=0;
     R:=1;
     while(R<=FSTraitementDonnees.TableauNumPiece.RowCount-1)do
     begin
          if(strtointeger(FSTraitementDonnees.TableauNumPiece.Cells[2,R])>0)then
          begin
                NumPiece:=strtointeger(FSTraitementDonnees.TableauNumPiece.Cells[2,R]);
                LongueurSerie:=longueur(inttostr(NumPiece))-strtointeger(FSTraitementDonnees.EditNbrChiffreOrdrePieceTriePiece.Text);
                SeriePiece:=strtointeger(Firstlaters(inttostr(NumPiece),LongueurSerie));
                l:=1;
                OKSeriePiece:=false;
                while(l<=LMax)and(OKSeriePiece=false)do
                begin
                     if(strtointeger(FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[0,l])=SeriePiece)then
                     begin
                          OKSeriePiece:=true;
                          LExiste:=l;
                     end;
                l:=l+1;
                end;

                if(OKSeriePiece=false)then
                begin
                     LMax:=LMax+1;
                     FSTraitementDonnees.TableauSeriePieceTriePiece.Rows[LMax].Text:='';
                     FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[0,LMax]:=inttostr(SeriePiece);
                     FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[1,LMax]:=inttostr(NumPiece);
                     FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[2,LMax]:=inttostr(NumPiece);
                end
                else
                begin
                     if(NumPiece<strtointeger(FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[1,LExiste]))then FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[1,LExiste]:=inttostr(NumPiece);
                     if(NumPiece>strtointeger(FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[2,LExiste]))then FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[2,LExiste]:=inttostr(NumPiece);
                end;
          end;
     R:=R+1;
     end;

     if(LMax>0)then FSTraitementDonnees.TableauSeriePieceTriePiece.RowCount:=LMax+1
               else FSTraitementDonnees.TableauSeriePieceTriePiece.RowCount:=2;

     TrierTableauARowSpecial(FSTraitementDonnees.TableauSeriePieceTriePiece,1,FSTraitementDonnees.TableauSeriePieceTriePiece.RowCount-1,0,'0','Num','+');

     l:=1;
     while(l<=LMax)do
     begin
          C:=2;
          NumCherche:=strtointeger(FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[1,l])+1;
          while(NumCherche<=strtointeger(FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[2,l])-1)do
          begin
               R:=1;
               OKSeriePiece:=false;
               while(R<=FSTraitementDonnees.TableauNumPiece.RowCount-1)and(OKSeriePiece=false)do
               begin
                    if(ExisteNumValeinTexte(inttostr(NumCherche),FSTraitementDonnees.TableauNumPiece.Cells[2,R]))then
                    begin
                         OKSeriePiece:=true;
                    end;
               R:=R+1;
               end;

               if(OKSeriePiece=false)then
               begin
                    C:=C+1;
                    FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[C,0]:='Pièce '+inttostr(C-2);
                    FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[C,l]:=inttostr(NumCherche);

                    if(C>CMax)then CMax:=C;

                    R:=1;
                    OKSeriePiece:=false;
                    while(R<=FSTraitementDonnees.TableauToutesNumPiece.RowCount-1)and(OKSeriePiece=false)do
                    begin
                         if(ExisteNumValeinTexte(inttostr(NumCherche),FSTraitementDonnees.TableauToutesNumPiece.Cells[2,R]))then
                         begin
                              OKSeriePiece:=true;
                              m:=m+1;
                              FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Rows[m].Text:=inttostr(m);
                              FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cells[1,m]:=FSTraitementDonnees.TableauToutesNumPiece.Cells[1,R];
                              FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cells[2,m]:=FSTraitementDonnees.TableauToutesNumPiece.Cells[2,R];
                              FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cells[3,m]:=FSTraitementDonnees.TableauToutesNumPiece.Cells[3,R];
                              FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cells[4,m]:=FSTraitementDonnees.TableauToutesNumPiece.Cells[4,R];
                              FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cells[5,m]:=FSTraitementDonnees.TableauToutesNumPiece.Cells[5,R];
                         end;
                    R:=R+1;
                    end;
               end;

          NumCherche:=NumCherche+1;
          end;
          FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[0,l]:='Série: '+FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[0,l];
     l:=l+1;
     end;

     R:=1;
     while(R<=FSTraitementDonnees.TableauToutesNumPiece.RowCount-1)do
     begin
          if(FSTraitementDonnees.TableauToutesNumPiece.Cells[3,R]=FSTraitementDonnees.EditTiersCodeTiers.Text)
          and(FSTraitementDonnees.TableauToutesNumPiece.Cells[2,R]='')
          then
          begin
               m:=m+1;
               FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Rows[m].Text:=inttostr(m);
               FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cells[1,m]:=FSTraitementDonnees.TableauToutesNumPiece.Cells[1,R];
               FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cells[2,m]:=FSTraitementDonnees.TableauToutesNumPiece.Cells[2,R];
               FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cells[3,m]:=FSTraitementDonnees.TableauToutesNumPiece.Cells[3,R];
               FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cells[4,m]:=FSTraitementDonnees.TableauToutesNumPiece.Cells[4,R];
               FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cells[5,m]:=FSTraitementDonnees.TableauToutesNumPiece.Cells[5,R];
          end;
     R:=R+1;
     end;

     if(m>0)then FSTraitementDonnees.TableauxPieceManquanteAutreTiers.RowCount:=m+1
            else FSTraitementDonnees.TableauxPieceManquanteAutreTiers.RowCount:=2;

     l:=1;
     while(l<=LMax)do
     begin
          for n:=3 to CMax do if(FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[n,l]='')then FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[n,l]:='/';
     l:=l+1;
     end;
     
     if(CMax>0)then FSTraitementDonnees.TableauSeriePieceTriePiece.ColCount:=CMax+1
               else FSTraitementDonnees.TableauSeriePieceTriePiece.ColCount:=2;
     FSTraitementDonnees.TableauSeriePieceTriePiece.FixedCols:=3;

     AjusterColWidth(FSTraitementDonnees.TableauSeriePieceTriePiece,'','');
     AjusterColWidth(FSTraitementDonnees.TableauxPieceManquanteAutreTiers,'','');
end;

procedure TFSTraitementDonnees.RadioButton8Click(Sender: TObject);
begin
     FSTraitementDonnees.TypeTrieTriePiece.Caption:='-';
end;

procedure TFSTraitementDonnees.RadioButton9Click(Sender: TObject);
begin
     FSTraitementDonnees.TypeTrieTriePiece.Caption:='+';
end;

procedure TFSTraitementDonnees.AfficheOptionPrintPieceTrieClick(
  Sender: TObject);
begin
if(FSTraitementDonnees.AfficheOptionPrintPieceTrie.Height=25)
then FSTraitementDonnees.AfficheOptionPrintPieceTrie.Height:=223
else FSTraitementDonnees.AfficheOptionPrintPieceTrie.Height:=25;
end;

procedure TFSTraitementDonnees.BitPiecesManquantesClick(Sender: TObject);
var  R:integer; TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;
begin
     FSTraitementDonnees.AfficheTiersOptionPrint.Height:=25;

     FSTraitementDonnees.AfficheOptionPrintPieceTrie.Height:=25;
     TitreEtat:='Pièces manquantes Tiers: '+FSTraitementDonnees.EditTiersNomTiers.Text+' au: '+datetostr(FSTraitementDonnees.EditTiersDateFin.Date);
     R:=0;
     GrasARow:='0';
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0-'+inttostr(FSTraitementDonnees.TableauSeriePieceTriePiece.ColCount-1);
     RightARow:='';
     RightACol:='';

     OptionsImpression(FSTraitementDonnees.TableauSeriePieceTriePiece,'Center',0,1,TitreEtat,FSTraitementDonnees.RBAjustementPieceTrie.Checked,FSTraitementDonnees.RBOrientationPapierPieceTrie.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSTraitementDonnees.BitBtn32Click(Sender: TObject);
begin
     FSTraitementDonnees.AfficheTableauxPieceManquanteAutreTiers.Visible:=true;
end;

procedure TFSTraitementDonnees.AfficheOptionPrintPieceTrieEgareClick(
  Sender: TObject);
begin
if(FSTraitementDonnees.AfficheOptionPrintPieceTrieEgare.Height=25)
then FSTraitementDonnees.AfficheOptionPrintPieceTrieEgare.Height:=223
else FSTraitementDonnees.AfficheOptionPrintPieceTrieEgare.Height:=25;
end;

procedure TFSTraitementDonnees.BitBtn33Click(Sender: TObject);
var  R:integer; TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;
begin
     FSTraitementDonnees.AfficheOptionPrintPieceTrieEgare.Height:=25;
     TitreEtat:='Pièces Egarées: '+FSTraitementDonnees.EditTiersNomTiers.Text+' au: '+datetostr(FSTraitementDonnees.EditTiersDateFin.Date);
     R:=0;
     GrasARow:='0';
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0;2';
     RightARow:='';
     RightACol:='';

     OptionsImpression(FSTraitementDonnees.TableauxPieceManquanteAutreTiers,'Center',0,1,TitreEtat,FSTraitementDonnees.RBAjustementPieceTrieEgare.Checked,FSTraitementDonnees.RBOrientationPapierPieceTrieEgare.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSTraitementDonnees.PagePieceManquanteShow(Sender: TObject);
begin
     FSTraitementDonnees.AfficheOptionPrintPieceTrie.Height:=25;
     FSTraitementDonnees.AfficheOptionPrintPieceTrieEgare.Height:=25;

     FSTraitementDonnees.PagePieceManquante.Enabled:= AccesPrivilegies('FS Paramètres avancés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',false);
     FSTraitementDonnees.CachePagePieceManquante.Visible:=Not FSTraitementDonnees.PagePieceManquante.Enabled;
end;

procedure TFSTraitementDonnees.TableauxPieceManquanteAutreTiersClick(
  Sender: TObject);
var  R,C:integer;  OKNumPiece:boolean;  TypeData:string;
begin
     FSTraitementDonnees.TimerControleCouleur.Enabled:=false;
     FSTraitementDonnees.EditTableauColor.Text:='';
     FSTraitementDonnees.TableauxPieceManquanteAutreTiers.FixedColor:=clBtnFace;
     FSTraitementDonnees.TableauSeriePieceTriePiece.FixedColor:=clBtnFace;

if(FSTraitementDonnees.RBRubriqueTrieTableauTriePiece.Checked=true)then
begin
     FSTraitementDonnees.EditRubriqueTrieTriePiece.Text:=inttostr(FSTraitementDonnees.TableauNumPiece.Col);

     TypeData:='';

     if(FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Col=1)
     then
     begin
          TypeData:='Date';
     end;

     if(FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Col=2)
     then
     begin
          TypeData:='Num';
     end;

     FSTraitementDonnees.EditTypeDataTrieTriePiece.Text:=TypeData;

     FSTraitementDonnees.RBRubriqueTrieTableauTriePiece.Checked:=false;
     TrierTableauARowSpecial(FSTraitementDonnees.TableauxPieceManquanteAutreTiers,1,FSTraitementDonnees.TableauxPieceManquanteAutreTiers.RowCount-1,1,FSTraitementDonnees.EditRubriqueTrieTriePiece.Text,TypeData,FSTraitementDonnees.TypeTrieTriePiece.Caption);
end
else
begin
     if(FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cells[2,FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Row]<>'')then
     begin
          R:=1;
          OKNumPiece:=false;
          while(R<=FSTraitementDonnees.TableauSeriePieceTriePiece.RowCount-1)and(OKNumPiece=false)do
          begin
               C:=3;
               while(C<=FSTraitementDonnees.TableauSeriePieceTriePiece.ColCount-1)and(OKNumPiece=false)do
               begin
                    if(strtointeger(FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[C,R])=strtointeger(FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cells[2,FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Row]))then
                    begin
                         OKNumPiece:=true;
                         FSTraitementDonnees.TableauSeriePieceTriePiece.Row:=R;
                         FSTraitementDonnees.TableauSeriePieceTriePiece.Col:=C;
                         FSTraitementDonnees.EditTableauColor.Text:='Pièces Manquantes';
                         FSTraitementDonnees.TimerControleCouleur.Enabled:=true;
                    end;
               C:=C+1;
               end;
          R:=R+1;
          end;
     end;
end;

end;

procedure TFSTraitementDonnees.TableauSeriePieceTriePieceClick(
  Sender: TObject);
var  R:integer;  OKNumPiece:boolean;
begin
     FSTraitementDonnees.TimerControleCouleur.Enabled:=false;
     FSTraitementDonnees.EditTableauColor.Text:='';
     FSTraitementDonnees.TableauxPieceManquanteAutreTiers.FixedColor:=clBtnFace;
     FSTraitementDonnees.TableauSeriePieceTriePiece.FixedColor:=clBtnFace;

     if(strtointeger(FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[TableauSeriePieceTriePiece.Col,TableauSeriePieceTriePiece.Row])<>0)then
     begin
          R:=1;
          OKNumPiece:=false;
          while(R<=FSTraitementDonnees.TableauxPieceManquanteAutreTiers.RowCount-1)and(OKNumPiece=false)do
          begin
               if(strtointeger(FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Cells[2,R])=strtointeger(FSTraitementDonnees.TableauSeriePieceTriePiece.Cells[TableauSeriePieceTriePiece.Col,TableauSeriePieceTriePiece.Row]))then
               begin
                    OKNumPiece:=true;
                    FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Row:=R;
                    FSTraitementDonnees.TableauxPieceManquanteAutreTiers.Col:=2;
                    FSTraitementDonnees.EditTableauColor.Text:='Pièces Egarées';
                    FSTraitementDonnees.TimerControleCouleur.Enabled:=true;
               end;
          R:=R+1;
          end;
     end;
end;

procedure TFSTraitementDonnees.TimerCompleteNumPieceTimer(Sender: TObject);
begin
     FSTraitementDonnees.TimerCompleteNumPiece.Enabled:=false;
     CompleteNumPiece;
end;

procedure TFSTraitementDonnees.PageEnglaisChange(Sender: TObject);
begin
     FSTraitementDonnees.TimerControleCouleur.Enabled:=false;
end;

procedure TFSTraitementDonnees.EditFunctionSoldeTiersDblClick(
  Sender: TObject);
var R:integer; DebitAvis,CreditAvis,DebitCreditAvis,DebitMouvement,CreditMouvement,DebitCreditMouvement,DebitPrelevement,CreditPrelevement,DebitCreditPrelevement,DebitSituation,CreditSituation,DebitCreditSituation:real;
begin
     FSTraitementDonnees.EditFunctionSoldeTiers.Text:=Vergule(floattostr(SoldeTiers(FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.RBActiverGroupeTiers.Checked,DebitAvis,CreditAvis,DebitCreditAvis,DebitMouvement,CreditMouvement,DebitCreditMouvement,DebitPrelevement,CreditPrelevement,DebitCreditPrelevement,DebitSituation,CreditSituation,DebitCreditSituation)),'2','C','');

     FSTraitementDonnees.TableatDetailSoldeTiers.ColCount:=5;
     FSTraitementDonnees.TableatDetailSoldeTiers.Cols[0].Text:='Opération';
     FSTraitementDonnees.TableatDetailSoldeTiers.Cols[1].Text:='Débit';
     FSTraitementDonnees.TableatDetailSoldeTiers.Cols[2].Text:='Crédit';
     FSTraitementDonnees.TableatDetailSoldeTiers.Cols[3].Text:='DébitCrédit';
     FSTraitementDonnees.TableatDetailSoldeTiers.Cols[4].Text:='Solde';

     R:=0;

     R:=R+1;
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[0,R]:='Avis';
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[1,R]:=Vergule(floattostr(DebitAvis),'2','C','');
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[2,R]:=Vergule(floattostr(CreditAvis),'2','C','');
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[3,R]:=Vergule(floattostr(DebitCreditAvis),'2','C','');
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[4,R]:=Vergule(floattostr(DebitAvis-CreditAvis-DebitCreditAvis),'2','C','');

     R:=R+1;
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[0,R]:='Mouvement';
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[1,R]:=Vergule(floattostr(DebitMouvement),'2','C','');
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[2,R]:=Vergule(floattostr(CreditMouvement),'2','C','');
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[3,R]:=Vergule(floattostr(DebitCreditMouvement),'2','C','');
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[4,R]:=Vergule(floattostr(DebitMouvement-CreditMouvement-DebitCreditMouvement),'2','C','');

     R:=R+1;
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[0,R]:='Prelevement';
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[1,R]:=Vergule(floattostr(DebitPrelevement),'2','C','');
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[2,R]:=Vergule(floattostr(CreditPrelevement),'2','C','');
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[3,R]:=Vergule(floattostr(DebitCreditPrelevement),'2','C','');
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[4,R]:=Vergule(floattostr(DebitPrelevement-CreditPrelevement-DebitCreditPrelevement),'2','C','');

     R:=R+1;
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[0,R]:='Situation';
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[1,R]:=Vergule(floattostr(DebitSituation),'2','C','');
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[2,R]:=Vergule(floattostr(CreditSituation),'2','C','');
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[3,R]:=Vergule(floattostr(DebitCreditSituation),'2','C','');
     FSTraitementDonnees.TableatDetailSoldeTiers.Cells[4,R]:=Vergule(floattostr(DebitSituation-CreditSituation-DebitCreditSituation),'2','C','');

     FSTraitementDonnees.TableatDetailSoldeTiers.RowCount:=R+1;

     AjusterColWidth(FSTraitementDonnees.TableatDetailSoldeTiers,'','');
end;

procedure TFSTraitementDonnees.TableauTiersListeTiersDblClick(
  Sender: TObject);
begin
     FSTraitementDonnees.EditTiersCodeTiers.Text:=FSTraitementDonnees.TableauTiersListeTiers.Cells[1,FSTraitementDonnees.TableauTiersListeTiers.Row];
     FSTraitementDonnees.EditTiersNomTiers.Text:=FSTraitementDonnees.TableauTiersListeTiers.Cells[2,FSTraitementDonnees.TableauTiersListeTiers.Row];
     FSTraitementDonnees.EditTiersSupplementaire.Text:='';
     
     if(ExisteCodeTiersInGroupe(FSTraitementDonnees.EditTiersCodeTiers.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,RListeGroupeTiersCopie,RGroupeTiersCopie)=true)then
     begin
          FSTraitementDonnees.EditTiersFichierConserne.Text:=RGroupeTiersCopie.FichierConcerneTiers;
     end;

     if(FSTraitementDonnees.RBAutoBaseAvisFichierConcerne.Checked=true)
     then FSTraitementDonnees.EditBaseAvisFichierConcerne.Text:=IndiqueBaseAvis(FSTraitementDonnees.EditTiersFichierConserne.Text);

     FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;

     if(FSTraitementDonnees.CacherTableauFinanceTiers.Visible=false)then
     begin
          SituationTiers(FSTraitementDonnees.TableauFinanceTiers,FSTraitementDonnees.EditTiersModePaiement.Text,FSTraitementDonnees.EditTiersDomiciliation.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditTiersNumFicheTraitement.Text,FSTraitementDonnees.EditTiersNumRubriqueTraitement.Text,FSTraitementDonnees.EditTiersNumPlanificateurTraitement.Text,FSTraitementDonnees.EditTiersTypeProces.Text,FSTraitementDonnees.EditTiersFichierConserne.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,strtointeger(FSTraitementDonnees.EditRubriqueTrie.Text),FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked,FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked,FSTraitementDonnees.RBAvisExecutes.Checked,FSTraitementDonnees.RBAvisNonExecutes.Checked);
     end;
     FSTraitementDonnees.TableauTiersListeTiers.Visible:=false;
end;

procedure TFSTraitementDonnees.TableauFinanceTiersKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSTraitementDonnees.RBAutoSelectMouvementMemeTypeClick(
  Sender: TObject);
var  R:integer;
begin
     SuspendreAffichage;

     FSTraitementDonnees.RBInclureFinance.Checked:=false;
     FSTraitementDonnees.RBInclureFinance.Enabled:=Not FSTraitementDonnees.RBAutoSelectMouvementMemeType.Checked;

     R:=1;
     while(R<=FSTraitementDonnees.TableauMouvement.RowCount-1)do
     begin
          FSTraitementDonnees.TableauMouvement.Cells[20,R]:='';
          R:=R+1;
     end;
end;

procedure TFSTraitementDonnees.RBSelectionPassageSourisDataIsoleClick(
  Sender: TObject);
begin
     FSTraitementDonnees.EditBoutA.Text:='';
     FSTraitementDonnees.EditBoutB.Text:='';

     FSTraitementDonnees.TableauDataIsoler.RowCount:=2;
     FSTraitementDonnees.TableauDataIsoler.Rows[1].Text:='';

     FSTraitementDonnees.EditNumLigneIsoler.Text:='';
end;

procedure TFSTraitementDonnees.RBBoutEnBoutClick(Sender: TObject);
begin
     FSTraitementDonnees.EditBoutA.Text:='';
     FSTraitementDonnees.EditBoutB.Text:='';

     FSTraitementDonnees.TableauDataIsoler.RowCount:=2;
     FSTraitementDonnees.TableauDataIsoler.Rows[1].Text:='';

     FSTraitementDonnees.EditNumLigneIsoler.Text:='';  
end;

procedure TFSTraitementDonnees.RBAutoSelectMouvementMemeTypeContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     FSTraitementDonnees.RBInclureFinance.Checked:=Not FSTraitementDonnees.RBInclureFinance.Checked;
end;

procedure TFSTraitementDonnees.PageFinanceTiersContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin

SuspendreAffichage;

end;

Procedure SuspendreAffichage;
begin
     if(FSTraitementDonnees.PageTableauBohr.Visible=true)and(FSTraitementDonnees.AffichePatientez.Visible=true)then
     begin
          FSTraitementDonnees.RBSuspendreTBohr.Checked:=true;

     end;

     if(FSTraitementDonnees.PageFinanceDomiciliation.Visible=true)and(FSTraitementDonnees.AffichePatientez.Visible=true)then
     begin
          FSTraitementDonnees.RBSuspendreTraitement.Checked:=true;

     end;

     if(FSTraitementDonnees.PageFinanceTiers.Visible=true)and(FSTraitementDonnees.AffichePatientez.Visible=true)then
     begin
          FSTraitementDonnees.RBSuspendreTraitement.Checked:=true;
     end;
end;

procedure TFSTraitementDonnees.BitBtn30Click(Sender: TObject);
var  R,C,l,Row:integer;  MontantTotal,CoutTotal,ValeurAjouterTotal:real; NotCol:string;
begin
     FSTraitementDonnees.RapportTraitementMouvements.Visible:=true;
     FSTraitementDonnees.AfficheDetailArticle.Visible:=false;

     Row:=0;
     FSTraitementDonnees.EditOrdreListeMouvementAppartenantTiers.Text:='';
     ProcSelectListeAppartenance(FSTraitementDonnees.TableauSelectionDonnees,FSTraitementDonnees.TableauDetailMouvementSelection,FSTraitementDonnees.TableauRecapitulatifDetailMouvements,FSTraitementDonnees.TableauPositionMouvementTiers,FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers,FSTraitementDonnees.EditOrdreListeMouvementAppartenantTiers,FSTraitementDonnees.EditNumAvisAppartenanceMouvement,FSTraitementDonnees.EditTiersAnneeAffiche.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,datetostr(FSTraitementDonnees.EditTiersDateDebut.Date),datetostr(FSTraitementDonnees.EditTiersDateFin.Date),FSTraitementDonnees.EditTiersNumProjetTraitement.Text,FSTraitementDonnees.EditDebitCreditPositifTiers.Text,R,7,6,8,3,1,9,1,33,Row,Row);

     FSTraitementDonnees.TableauSelectionDonnees.Cells[6,FSTraitementDonnees.TableauSelectionDonnees.RowCount-1]:=FSTraitementDonnees.EditMontantGlobaleAppartenanceMouvementTiers.Text;
     AjusterColWidth(FSTraitementDonnees.TableauSelectionDonnees,'','');

     FSTraitementDonnees.TableauSelectionDonneesImprimer.ColCount:=FSTraitementDonnees.TableauSelectionDonnees.ColCount;
     FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[0].Text:=FSTraitementDonnees.TableauSelectionDonnees.Rows[0].Text;
     FSTraitementDonnees.TableauSelectionDonneesImprimer.RowCount:=2;
     FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[1].Text:='';

     R:=1;
     l:=0;
     While(R<=FSTraitementDonnees.TableauSelectionDonnees.RowCount-3)do
     begin
          if(FSTraitementDonnees.TableauSelectionDonnees.Cells[7,R]='OK')then
          begin
               l:=l+1;
               FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[l].Text:=FSTraitementDonnees.TableauSelectionDonnees.Rows[R].Text;
               FSTraitementDonnees.TableauSelectionDonneesImprimer.Cells[0,l]:=inttostr(l);
          end;
     R:=R+1;
     end;

     FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[l+1].Text:='';
     FSTraitementDonnees.TableauSelectionDonneesImprimer.Rows[l+2].Text:=FSTraitementDonnees.TableauSelectionDonnees.Rows[FSTraitementDonnees.TableauSelectionDonnees.RowCount-1].Text;

     FSTraitementDonnees.TableauSelectionDonneesImprimer.RowCount:=l+3;
     AjusterColWidth(FSTraitementDonnees.TableauSelectionDonneesImprimer,'','');

     MontantTotal:=0;
     CoutTotal:=0;
     ValeurAjouterTotal:=0;
     R:=1;
     While(R<=FSTraitementDonnees.TableauDetailMouvementSelection.RowCount-3)do
     begin
          FSTraitementDonnees.TableauDetailMouvementSelection.Cells[7,R]:=Vergule(floattostr(RrixAppliqerFormuleCalcule(FSTraitementDonnees.EditCodeTypeFormuleCompteurArticle.Text,FSTraitementDonnees.TableauDetailMouvementSelection.Cells[1,R],FSFicheSaisie.EditNbrChiffreApresVergulePrix.Text,strtoreal(FSTraitementDonnees.TableauDetailMouvementSelection.Cells[7,R]))),'2','C','');

          FSTraitementDonnees.TableauDetailMouvementSelection.Cells[8,R]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDetailMouvementSelection.Cells[6,R])*strtoreal(FSTraitementDonnees.TableauDetailMouvementSelection.Cells[7,R])),'2','C','');

          FSTraitementDonnees.TableauDetailMouvementSelection.Cells[20,R]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDetailMouvementSelection.Cells[6,R])*strtoreal(FSTraitementDonnees.TableauDetailMouvementSelection.Cells[5,R])),'2','C','');

          FSTraitementDonnees.TableauDetailMouvementSelection.Cells[21,R]:=Vergule(floattostr(strtoreal(FSTraitementDonnees.TableauDetailMouvementSelection.Cells[8,R])-strtoreal(FSTraitementDonnees.TableauDetailMouvementSelection.Cells[20,R])),'2','C','');

          MontantTotal:=MontantTotal+strtoreal(FSTraitementDonnees.TableauDetailMouvementSelection.Cells[8,R]);
          CoutTotal:=CoutTotal+strtoreal(FSTraitementDonnees.TableauDetailMouvementSelection.Cells[20,R]);
          ValeurAjouterTotal:=ValeurAjouterTotal+strtoreal(FSTraitementDonnees.TableauDetailMouvementSelection.Cells[21,R]);

     R:=R+1;
     end;

     FSTraitementDonnees.TableauDetailMouvementSelection.Cells[8,FSTraitementDonnees.TableauDetailMouvementSelection.RowCount-1]:=Vergule(floattostr(MontantTotal),'2','C','');
     FSTraitementDonnees.TableauDetailMouvementSelection.Cells[20,FSTraitementDonnees.TableauDetailMouvementSelection.RowCount-1]:=Vergule(floattostr(CoutTotal),'2','C','');
     FSTraitementDonnees.TableauDetailMouvementSelection.Cells[21,FSTraitementDonnees.TableauDetailMouvementSelection.RowCount-1]:=Vergule(floattostr(ValeurAjouterTotal),'2','C','');

     NotCol:='9-19;22;23';
     for C:=0 to FSTraitementDonnees.TableauDetailMouvementSelection.ColCount-1 do if(ExisteNuminTexte(inttostr(C),NotCol))then FSTraitementDonnees.TableauDetailMouvementSelection.ColWidths[C]:=0;
     AjusterColWidth(FSTraitementDonnees.TableauDetailMouvementSelection,'',NotCol);

     
end;

Procedure InitialisationPageTraitementTiers;
begin
     SuspendreAffichage;
     
     FSTraitementDonnees.TimerAfficheTiers.Enabled:=false;
     FSTraitementDonnees.TimerLancerAfficheTiers.Enabled:=false;
     FSTraitementDonnees.TimerLancerAfficheTiers.Enabled:=true;

     FSTraitementDonnees.AfficheTableauSelectionDonnees.Visible:=false;
     FSTraitementDonnees.RapportTraitementMouvements.Visible:=false;

     FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=not FSTraitementDonnees.RBNePlusAfficheCacheTableauFinanceTiers.Checked;
end;

procedure TFSTraitementDonnees.EditTiersDateDebutChange(Sender: TObject);
begin
InitialisationPageTraitementTiers;
end;

procedure TFSTraitementDonnees.EditTiersDateFinChange(Sender: TObject);
begin
InitialisationPageTraitementTiers;
end;

procedure TFSTraitementDonnees.EditTiersSupplementaireEnter(
  Sender: TObject);
var  FichierConcerne:string;
begin
     FSTraitementDonnees.TableauTiersSupplementaire.Visible:=true;
     FichierConcerne:='FTiersSupplementaire '+FSTraitementDonnees.FichierConcerneBaseTiersSupplementaire.Text;
     ListeTiersPointeur(FSTraitementDonnees.TableauTiersSupplementaire,FSTraitementDonnees.EditTypeProcesTiersSupplementaire.Text,FichierConcerne,'','',FSTraitementDonnees.EditTiersSupplementaire.Text,FSTiers.EditNbrKeyUp,FSTiers.EditNbrKeyUpMemo,FSTraitementDonnees.TimerLancerAfficheTiers,true,true);
end;

procedure TFSTraitementDonnees.EditTiersSupplementaireKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var FichierConcerne:string;
begin
     if(FSTraitementDonnees.TableauTiersSupplementaire.Visible=true)then
     begin
          FichierConcerne:='FTiersSupplementaire '+FSTraitementDonnees.FichierConcerneBaseTiersSupplementaire.Text;
          ListeTiersPointeur(FSTraitementDonnees.TableauTiersSupplementaire,FSTraitementDonnees.EditTypeProcesTiersSupplementaire.Text,FichierConcerne,'','',FSTraitementDonnees.EditTiersSupplementaire.Text,FSTiers.EditNbrKeyUp,FSTiers.EditNbrKeyUpMemo,FSTraitementDonnees.TimerLancerAfficheTiers,true,true);
     end;
end;

procedure TFSTraitementDonnees.EditTiersSupplementaireKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key in[VK_RETURN]then
begin
     if(FSTraitementDonnees.TableauTiersSupplementaire.Visible=true)
     then FSTraitementDonnees.TableauTiersSupplementaire.SetFocus
     else
     begin
          if(FSTraitementDonnees.EditPageSelect.Text='Tiers')then
          begin
               FSTraitementDonnees.EditPgeVisiterTiers.Text:='';
               FSTraitementDonnees.PageFinanceTiers.Show;
               FSTraitementDonnees.TableauFinanceTiers.SetFocus;
          end;

          if(FSTraitementDonnees.EditPageSelect.Text='Domiciliation')then
          begin
               FSTraitementDonnees.EditPgeVisiterDomiciliation.Text:='';
               FSTraitementDonnees.PageFinanceDomiciliation.Show;
               FSTraitementDonnees.TableauAvis.SetFocus;
          end;

          if(FSTraitementDonnees.EditPageSelect.Text='Tableau bohr')then
          begin
               FSTraitementDonnees.EditPgeVisiterTiers.Text:='';
               FSTraitementDonnees.PageTableauBohr.Show;
               FSTraitementDonnees.EditExerciceTableauBohr.SetFocus;
          end;
     end;
end;
end;

procedure TFSTraitementDonnees.TableauTiersSupplementaireKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key in[VK_RETURN]then
begin
      FSTraitementDonnees.EditTiersSupplementaire.Text:=FSTraitementDonnees.TableauTiersSupplementaire.Cells[2,FSTraitementDonnees.TableauTiersSupplementaire.Row];

      FSTraitementDonnees.BitValiderChargeTiersSupplementaire.SetFocus;
end;
end;

procedure TFSTraitementDonnees.BitBtn34Click(Sender: TObject);
begin
     FSTraitementDonnees.AfficheInfoTiersSupplementaire.Visible:=true;
     FSTraitementDonnees.EditPageSelect.Text:='Tiers';
     FSTraitementDonnees.EditTypeProcesTiersSupplementaire.Text:=FSTraitementDonnees.EditTiersTypeProces.Text;
     FSTraitementDonnees.FichierConcerneBaseTiersSupplementaire.Text:=FSTraitementDonnees.EditTiersFichierConserne.Text;
     FSTraitementDonnees.EditTiersSupplementaire.SetFocus;
end;

procedure TFSTraitementDonnees.BitBtn35Click(Sender: TObject);
begin
     FSTraitementDonnees.AfficheInfoTiersSupplementaire.Visible:=true;
     FSTraitementDonnees.EditPageSelect.Text:='Tableau Bohr';
     FSTraitementDonnees.EditTypeProcesTiersSupplementaire.Text:=FSTraitementDonnees.TableauMouvement.Cells[4,FSTraitementDonnees.TableauMouvement.Row];
     ListeTypeFichierTiersBox(FSTraitementDonnees.TableauMouvement.Cells[4,FSTraitementDonnees.TableauMouvement.Row],FSTraitementDonnees.LabelFichierConcerne.Caption,'',FSTraitementDonnees.FichierConcerneBaseTiersSupplementaire,FSTraitementDonnees.TitreFichierConcerneBaseTiersSupplementaire);
     FSTraitementDonnees.EditTiersSupplementaire.SetFocus;
end;

procedure TFSTraitementDonnees.BitValiderChargeTiersSupplementaireClick(Sender: TObject);
begin
      FSTraitementDonnees.AfficheInfoTiersSupplementaire.Visible:=false;

      if(FSTraitementDonnees.EditTiersSupplementaire.Text='')then exit;

      if(FSTraitementDonnees.EditPageSelect.Text='Tiers')then
      begin
           FSTraitementDonnees.EditPgeVisiterTiers.Text:='';
           FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=true;
           FSTraitementDonnees.BitAfficheCacheTableauFinanceTiers.SetFocus;

           FSTraitementDonnees.EditTiersNomTiers.Text:=ImporteDataProcesTiers(FSTraitementDonnees.EditTypeProcesTiersSupplementaire.Text,FSTraitementDonnees.FichierConcerneBaseTiersSupplementaire.Text,FSTraitementDonnees.EditTiersCodeTiers.Text,PositionTiersRecherche)+' {'+FSTraitementDonnees.EditTiersSupplementaire.Text+'}';
      end;

      if(FSTraitementDonnees.EditPageSelect.Text='Domiciliation')then
      begin
           FSTraitementDonnees.EditPgeVisiterDomiciliation.Text:='';
           FSTraitementDonnees.CacherTableauAvis.Visible:=true;
           FSTraitementDonnees.BitAfficheCacheTableauAvis.SetFocus;
      end;

      if(FSTraitementDonnees.EditPageSelect.Text='Tableau Bohr')then
      begin
           FSTraitementDonnees.EditPgeVisiterTiers.Text:='';
           FSTraitementDonnees.CacherTableauDeBohrs.Visible:=true;
           FSTraitementDonnees.BitAfficheCacheTableauDeBohrs.SetFocus;

           FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text:=ImporteDataProcesTiers(FSTraitementDonnees.EditTypeProcesTiersSupplementaire.Text,FSTraitementDonnees.FichierConcerneBaseTiersSupplementaire.Text,FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text,PositionTiersRecherche)+' {'+FSTraitementDonnees.EditTiersSupplementaire.Text+'}';
      end;
end;

procedure TFSTraitementDonnees.TableauTiersSupplementaireClick(
  Sender: TObject);
begin
     FSTraitementDonnees.EditTiersSupplementaire.Text:=FSTraitementDonnees.TableauTiersSupplementaire.Cells[2,FSTraitementDonnees.TableauTiersSupplementaire.Row];
end;

procedure TFSTraitementDonnees.AfficheInfoTiersSupplementaireMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSTraitementDonnees.TableauTiersTableaudeBohrsDblClick(
  Sender: TObject);
begin
//if key in[VK_RETURN]then
     begin
          if(FSTraitementDonnees.TableauTiersTableaudeBohrs.Cells[1,FSTraitementDonnees.TableauTiersTableaudeBohrs.Row]='Tous')then
          begin
               FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text:='';
               FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text:='';
               FSTraitementDonnees.EditTiersSupplementaire.Text:='';
          end
          else
          begin
               FSTraitementDonnees.EditCodeTiersTableaudeBohrs.Text:=FSTraitementDonnees.TableauTiersTableaudeBohrs.Cells[1,FSTraitementDonnees.TableauTiersTableaudeBohrs.Row];
               FSTraitementDonnees.EditNomTiersTableaudeBohrs.Text:=FSTraitementDonnees.TableauTiersTableaudeBohrs.Cells[2,FSTraitementDonnees.TableauTiersTableaudeBohrs.Row];
               FSTraitementDonnees.EditTiersSupplementaire.Text:='';
          end;

          FSTraitementDonnees.TableauTiersTableaudeBohrs.Visible:=false;

          if(FSTraitementDonnees.RBNePlusAfficheCacheTableauDeBohrs.Checked=true)then FSTraitementDonnees.TimerTempAttente.Enabled:=true;
     end;
end;

procedure TFSTraitementDonnees.TableauDataIsolerClick(Sender: TObject);
var  R,RDebutRow,RRouCountMoint:integer;  TypeData:string;  OKAvisTrouver:boolean;
begin

if(FSTraitementDonnees.RBRubriqueTrieTableauAvis.Checked=true)then
begin
     FSTraitementDonnees.EditRubriqueTrie.Text:=inttostr(FSTraitementDonnees.TableauDataIsoler.Col);

     TypeData:='';

     if(FSTraitementDonnees.TableauDataIsoler.Col=2)
     or(FSTraitementDonnees.TableauDataIsoler.Col=3)
     then
     begin
          TypeData:='Date';
     end;

     if(FSTraitementDonnees.TableauDataIsoler.Col=7)
     or(FSTraitementDonnees.TableauDataIsoler.Col=8)
     then
     begin
          TypeData:='Num';
     end;

     FSTraitementDonnees.EditTypeDataTrieDomiciliation.Text:=TypeData;

     FSTraitementDonnees.RBRubriqueTrieTableauAvis.Checked:=false;

     if(FSTraitementDonnees.TableauDataIsoler.Cells[6,1]='Solde au: ')
     then RDebutRow:=2
     else RDebutRow:=1;
     RRouCountMoint:=4;
     TrierTableauARowSpecial(FSTraitementDonnees.TableauDataIsoler,RDebutRow,FSTraitementDonnees.TableauDataIsoler.RowCount-RRouCountMoint,1,FSTraitementDonnees.EditRubriqueTrie.Text,TypeData,FSTraitementDonnees.TypeTrie.Caption);
end;
end;

procedure TFSTraitementDonnees.EditTiersModePaiementKeyPress(
  Sender: TObject; var Key: Char);
var   i:integer;  OKBoxListe,OKControle:boolean; iNO:string;
begin
     i:=0;
     if(FSTraitementDonnees.EditTiersModePaiement.ItemIndex>0)then iNO:=inttostr(FSTraitementDonnees.EditTiersModePaiement.ItemIndex) else iNO:='';
     OKBoxListe:=false;
     while(i<=FSTraitementDonnees.EditTiersModePaiement.Items.Count)and(OKBoxListe=false)do
     begin
          if(iNO<>'')then
          begin
               if(i=strtointeger(iNO))
               then OKControle:=false
               else OKControle:=true;
          end
          else OKControle:=true;

          if(OKControle=true)and(AnsiUpperCase(firstlaters(FSTraitementDonnees.EditTiersModePaiement.Items.Strings[i],longueur(key)))=AnsiUpperCase(key))then
          begin
               OKBoxListe:=true;
               FSTraitementDonnees.EditTiersModePaiement.ItemIndex:=i;
               FSTraitementDonnees.EditTiersModePaiement.Text:=FSTraitementDonnees.EditTiersModePaiement.Items.Strings[i];
          end;
     i:=i+1;
     end;

     if(OKBoxListe=false)then begin FSTraitementDonnees.EditTiersModePaiement.ItemIndex:=0; FSTraitementDonnees.EditTiersModePaiement.Text:=''; end;
     if(FSTraitementDonnees.RBBoxListeAutres.Checked=false)then key:=#0;
end;

procedure TFSTraitementDonnees.EditTiersDomiciliationKeyPress(
  Sender: TObject; var Key: Char);
var   i:integer;  OKBoxListe,OKControle:boolean; iNO:string;
begin
     i:=0;
     if(FSTraitementDonnees.EditTiersDomiciliation.ItemIndex>0)then iNO:=inttostr(FSTraitementDonnees.EditTiersDomiciliation.ItemIndex) else iNO:='';
     OKBoxListe:=false;
     while(i<=FSTraitementDonnees.EditTiersDomiciliation.Items.Count)and(OKBoxListe=false)do
     begin
          if(iNO<>'')then
          begin
               if(i=strtointeger(iNO))
               then OKControle:=false
               else OKControle:=true;
          end
          else OKControle:=true;

          if(OKControle=true)and(AnsiUpperCase(firstlaters(FSTraitementDonnees.EditTiersDomiciliation.Items.Strings[i],longueur(key)))=AnsiUpperCase(key))then
          begin
               OKBoxListe:=true;
               FSTraitementDonnees.EditTiersDomiciliation.ItemIndex:=i;
               FSTraitementDonnees.EditTiersDomiciliation.Text:=FSTraitementDonnees.EditTiersDomiciliation.Items.Strings[i];
          end;
     i:=i+1;
     end;

     if(OKBoxListe=false)then begin FSTraitementDonnees.EditTiersDomiciliation.ItemIndex:=0; FSTraitementDonnees.EditTiersDomiciliation.Text:=''; end;
     if(FSTraitementDonnees.RBBoxListeAutres.Checked=false)then key:=#0;
end;

procedure TFSTraitementDonnees.EditRechercheModePaiementKeyPress(
  Sender: TObject; var Key: Char);
var   i:integer;  OKBoxListe,OKControle:boolean; iNO:string;
begin
     i:=0;
     if(FSTraitementDonnees.EditRechercheModePaiement.ItemIndex>0)then iNO:=inttostr(FSTraitementDonnees.EditRechercheModePaiement.ItemIndex) else iNO:='';
     OKBoxListe:=false;
     while(i<=FSTraitementDonnees.EditRechercheModePaiement.Items.Count)and(OKBoxListe=false)do
     begin
          if(iNO<>'')then
          begin
               if(i=strtointeger(iNO))
               then OKControle:=false
               else OKControle:=true;
          end
          else OKControle:=true;

          if(OKControle=true)and(AnsiUpperCase(firstlaters(FSTraitementDonnees.EditRechercheModePaiement.Items.Strings[i],longueur(key)))=AnsiUpperCase(key))then
          begin
               OKBoxListe:=true;
               FSTraitementDonnees.EditRechercheModePaiement.ItemIndex:=i;
               FSTraitementDonnees.EditRechercheModePaiement.Text:=FSTraitementDonnees.EditRechercheModePaiement.Items.Strings[i];
          end;
     i:=i+1;
     end;

     if(OKBoxListe=false)then begin FSTraitementDonnees.EditRechercheModePaiement.ItemIndex:=0; FSTraitementDonnees.EditRechercheModePaiement.Text:=''; end;
     if(FSTraitementDonnees.RBBoxListeAutres.Checked=false)then key:=#0;
end;

procedure TFSTraitementDonnees.EditRechercheDomiciliationKeyPress(
  Sender: TObject; var Key: Char);
var   i:integer;  OKBoxListe,OKControle:boolean; iNO:string;
begin
     i:=0;
     if(FSTraitementDonnees.EditRechercheDomiciliation.ItemIndex>0)then iNO:=inttostr(FSTraitementDonnees.EditRechercheDomiciliation.ItemIndex) else iNO:='';
     OKBoxListe:=false;
     while(i<=FSTraitementDonnees.EditRechercheDomiciliation.Items.Count)and(OKBoxListe=false)do
     begin
          if(iNO<>'')then
          begin
               if(i=strtointeger(iNO))
               then OKControle:=false
               else OKControle:=true;
          end
          else OKControle:=true;

          if(OKControle=true)and(AnsiUpperCase(firstlaters(FSTraitementDonnees.EditRechercheDomiciliation.Items.Strings[i],longueur(key)))=AnsiUpperCase(key))then
          begin
               OKBoxListe:=true;
               FSTraitementDonnees.EditRechercheDomiciliation.ItemIndex:=i;
               FSTraitementDonnees.EditRechercheDomiciliation.Text:=FSTraitementDonnees.EditRechercheDomiciliation.Items.Strings[i];
          end;
     i:=i+1;
     end;

     if(OKBoxListe=false)then begin FSTraitementDonnees.EditRechercheDomiciliation.ItemIndex:=0; FSTraitementDonnees.EditRechercheDomiciliation.Text:=''; end;
     if(FSTraitementDonnees.RBBoxListeAutres.Checked=false)then key:=#0;
end;

procedure TFSTraitementDonnees.EditTiersTypeProcesKeyPress(Sender: TObject;
  var Key: Char);
var   i:integer;  OKBoxListe,OKControle:boolean; iNO:string;
begin
     i:=0;
     if(FSTraitementDonnees.EditTiersTypeProces.ItemIndex>0)then iNO:=inttostr(FSTraitementDonnees.EditTiersTypeProces.ItemIndex) else iNO:='';
     OKBoxListe:=false;
     while(i<=FSTraitementDonnees.EditTiersTypeProces.Items.Count)and(OKBoxListe=false)do
     begin
          if(iNO<>'')then
          begin
               if(i=strtointeger(iNO))
               then OKControle:=false
               else OKControle:=true;
          end
          else OKControle:=true;

          if(OKControle=true)and(AnsiUpperCase(firstlaters(FSTraitementDonnees.EditTiersTypeProces.Items.Strings[i],longueur(key)))=AnsiUpperCase(key))then
          begin
               OKBoxListe:=true;
               FSTraitementDonnees.EditTiersTypeProces.ItemIndex:=i;
               FSTraitementDonnees.EditTiersTypeProces.Text:=FSTraitementDonnees.EditTiersTypeProces.Items.Strings[i];
          end;
     i:=i+1;
     end;

     if(OKBoxListe=false)then begin FSTraitementDonnees.EditTiersTypeProces.ItemIndex:=0; FSTraitementDonnees.EditTiersTypeProces.Text:=''; end;
     if(FSTraitementDonnees.RBBoxListeAutres.Checked=false)then key:=#0;
end;

procedure TFSTraitementDonnees.EditTiersFichierConserneKeyPress(
  Sender: TObject; var Key: Char);
var   i:integer;  OKBoxListe,OKControle:boolean; iNO:string;
begin
     i:=0;
     if(FSTraitementDonnees.EditTiersFichierConserne.ItemIndex>0)then iNO:=inttostr(FSTraitementDonnees.EditTiersFichierConserne.ItemIndex) else iNO:='';
     OKBoxListe:=false;
     while(i<=FSTraitementDonnees.EditTiersFichierConserne.Items.Count)and(OKBoxListe=false)do
     begin
          if(iNO<>'')then
          begin
               if(i=strtointeger(iNO))
               then OKControle:=false
               else OKControle:=true;
          end
          else OKControle:=true;

          if(OKControle=true)and(AnsiUpperCase(firstlaters(FSTraitementDonnees.EditTiersFichierConserne.Items.Strings[i],longueur(key)))=AnsiUpperCase(key))then
          begin
               OKBoxListe:=true;
               FSTraitementDonnees.EditTiersFichierConserne.ItemIndex:=i;
               FSTraitementDonnees.EditTiersFichierConserne.Text:=FSTraitementDonnees.EditTiersFichierConserne.Items.Strings[i];
          end;
     i:=i+1;
     end;

     if(OKBoxListe=false)then begin FSTraitementDonnees.EditTiersFichierConserne.ItemIndex:=0; FSTraitementDonnees.EditTiersFichierConserne.Text:=''; end;
     if(FSTraitementDonnees.RBBoxListeAutres.Checked=false)then key:=#0;
end;

procedure TFSTraitementDonnees.BitBtn36Click(Sender: TObject);
var  i,R,iPLM,IndiceAvis,NumListeMouvement,PBeginDM,PEndDM:integer;  NumTypeAvis:integer; OKAvis,OKMouvement:boolean; DesignationTypeAvis,CompteImputation,DebitCredit,TypeProces,FichierConserne,Adresse:string;
     DateMouvementDebut,DateMouvementFin,OKExecution:string;
     LeHandle:HWND;
begin

R:=FSTraitementDonnees.TableauDetailFormuleListeMouvement.Row;

if(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[8,R]='LM')then
begin

     TListeMouvementCopie:=RemplireTListeMouvement(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[4,R],ExerciceAnnee,0,999999999,PBeginDM,PEndDM);
     if(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[1,R]<>'')then
     begin
          if(TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[1,R])].OrdreListeMouvement=strtointeger(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[1,R]))then
          begin
               NumListeMouvement:=TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[1,R])].NumListeMouvement;

               FSFicheSaisie.Show;
               LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:
               ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:

               FSFicheSaisie.RBActiverReaffichageListeMouvement.Checked:=false;
               FSFicheSaisie.RBListeDetailMouvementParMois.Checked:=false;
               FSFicheSaisie.EditAnnee.Text:=lastlaters(TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[1,R])].DateMouvement,4);
               FSFicheSaisie.EditMois.ItemIndex:=strtointeger(midellaters(TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[1,R])].DateMouvement,4,5))-1;

               FSFicheSaisie.EditChercheDateDetailMouvement.Date:=strtodate(TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[1,R])].DateMouvement);
               FSFicheSaisie.EditChercheDateDetailMouvement.Visible:=true;

               FSFicheSaisie.RBListeDetailMouvementParDate.Checked:=false;
               ProcActionTypeMouvement(inttostr(TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[1,R])].PositionTypeMouvement),false);
               ProcActionMouvement(inttostr(TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[1,R])].PositionTypeMouvement),inttostr(TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[1,R])].PositionMouvement),false);
               FSFicheSaisie.RBListeDetailMouvementParDate.Checked:=true;

               R:=1;
               OKMouvement:=false;
               while(R<=FSFicheSaisie.TableauListeMouvement.RowCount-1)and(OKMouvement=false)do
               begin
                    if(strtointeger(FSFicheSaisie.TableauListeMouvement.Cells[2,R])=NumListeMouvement)then
                    begin
                         OKMouvement:=true;
                         FSFicheSaisie.TableauListeMouvement.Row:=R;

                    end;
               R:=R+1;
               end;

               FSFicheSaisie.TableauListeMouvement.SetFocus;

          end;
     end;
end;

if(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[8,R]='UF')then
begin

end;

if(FSTraitementDonnees.TableauDetailFormuleListeMouvement.Cells[8,R]='ST')then
begin

end;

end;

procedure TFSTraitementDonnees.BitBtn37Click(Sender: TObject);
var  i,R,iPLM,IndiceAvis,NumListeMouvement,PBeginDM,PEndDM:integer;  NumTypeAvis:integer; OKAvis,OKMouvement:boolean; DesignationTypeAvis,CompteImputation,DebitCredit,TypeProces,FichierConserne,Adresse:string;
     DateMouvementDebut,DateMouvementFin,OKExecution:string;
     LeHandle:HWND;
begin

R:=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Row;

if(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[34,R]='LM')then
begin
     TListeMouvementCopie:=RemplireTListeMouvement(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[3,R],ExerciceAnnee,0,999999999,PBeginDM,PEndDM);
     if(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R]<>'')then
     begin
          if(TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R])].OrdreListeMouvement=strtointeger(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R]))then
          begin
               NumListeMouvement:=TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R])].NumListeMouvement;

               FSFicheSaisie.Show;
               LeHandle:=GetForegroundWindow();  // Obtenir le HWND de la fenêtre active:
               ShowWindow(LeHandle,SW_MAXIMIZE); // Agrandir la fenêtre:

               FSFicheSaisie.RBActiverReaffichageListeMouvement.Checked:=false;
               FSFicheSaisie.RBListeDetailMouvementParMois.Checked:=false;
               FSFicheSaisie.EditAnnee.Text:=lastlaters(TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R])].DateMouvement,4);
               FSFicheSaisie.EditMois.ItemIndex:=strtointeger(midellaters(TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R])].DateMouvement,4,5))-1;

               FSFicheSaisie.EditChercheDateDetailMouvement.Date:=strtodate(TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R])].DateMouvement);
               FSFicheSaisie.EditChercheDateDetailMouvement.Visible:=true;

               FSFicheSaisie.RBListeDetailMouvementParDate.Checked:=false;
               ProcActionTypeMouvement(inttostr(TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R])].PositionTypeMouvement),false);
               ProcActionMouvement(inttostr(TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R])].PositionTypeMouvement),inttostr(TListeMouvementCopie[strtointeger(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R])].PositionMouvement),false);
               FSFicheSaisie.RBListeDetailMouvementParDate.Checked:=true;

               R:=1;
               OKMouvement:=false;
               while(R<=FSFicheSaisie.TableauListeMouvement.RowCount-1)and(OKMouvement=false)do
               begin
                    if(strtointeger(FSFicheSaisie.TableauListeMouvement.Cells[2,R])=NumListeMouvement)then
                    begin
                         OKMouvement:=true;
                         FSFicheSaisie.TableauListeMouvement.Row:=R;

                    end;
               R:=R+1;
               end;

               FSFicheSaisie.TableauListeMouvement.SetFocus;

          end;
     end;
end;

if(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[8,R]='UF')then
begin

end;

if(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[8,R]='ST')then
begin

end;

end;

procedure TFSTraitementDonnees.EditRechercheKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     
if key in[VK_RETURN,VK_ESCAPE]then
begin
     FSTraitementDonnees.TableauCompteConcerne.SetFocus;
     FSTraitementDonnees.AfficheOptionCompteConcerne.Visible:=false;
end;

if key in[VK_DOWN]then
begin
     if(FSTraitementDonnees.RBParCodeSFamille.Checked=true)then FSTraitementDonnees.RBParCodeArticle.Checked:=true
     else
     if(FSTraitementDonnees.RBParCodeArticle.Checked=true)then FSTraitementDonnees.RBParDesignationArticle.Checked:=true
     else
     if(FSTraitementDonnees.RBParDesignationArticle.Checked=true)then FSTraitementDonnees.RBParCodeSFamille.Checked:=true
end;

if key in[VK_UP]then 
begin
     if(FSTraitementDonnees.RBParDesignationArticle.Checked=true)then FSTraitementDonnees.RBParCodeArticle.Checked:=true
     else
     if(FSTraitementDonnees.RBParCodeArticle.Checked=true)then FSTraitementDonnees.RBParCodeSFamille.Checked:=true
     else
     if(FSTraitementDonnees.RBParCodeSFamille.Checked=true)then FSTraitementDonnees.RBParDesignationArticle.Checked:=true     
     
end;

end;

procedure TFSTraitementDonnees.EditRechercheKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var    CodeSFamille,CodeArticle,DesignationArticle,NotCol:string; RowOut,C:integer;
begin

CodeSFamille:='';
CodeArticle:='';
DesignationArticle:='';

if(FSTraitementDonnees.RBParCodeSFamille.Checked=true)then CodeSFamille:=FSTraitementDonnees.EditRecherche.Text;
if(FSTraitementDonnees.RBParCodeArticle.Checked=true)then CodeArticle:=FSTraitementDonnees.EditRecherche.Text;
if(FSTraitementDonnees.RBParDesignationArticle.Checked=true)then DesignationArticle:=FSTraitementDonnees.EditRecherche.Text;

ProcAfficheStockArticleListe(FSTraitementDonnees.TableauCompteConcerne,FSTraitementDonnees.EditTypeStock.Text,FSTraitementDonnees.EditNumProjet.Text,FSTraitementDonnees.EditCompteConserne.Text,CodeSFamille,CodeArticle,DesignationArticle,'',FSTraitementDonnees.RBDistingueDesigRef.Checked,0,RowOut);

if(FSTraitementDonnees.RBActiverRechercheBasePrincipale.Checked=true)then
begin
     ProcAfficheStockArticleListe(FSTraitementDonnees.TableauCompteConcerne,FSTraitementDonnees.EditTypeStock.Text,'',FSTraitementDonnees.EditCompteConserne.Text,CodeSFamille,CodeArticle,DesignationArticle,'',FSTraitementDonnees.RBDistingueDesigRef.Checked,RowOut,RowOut);
end;

NotCol:='5;6;8-'+inttostr(FSTraitementDonnees.TableauCompteConcerne.ColCount-1);
for C:=0 to FSTraitementDonnees.TableauCompteConcerne.ColCount-1 do if(Existenumintexte(inttostr(C),NotCol))then FSTraitementDonnees.TableauCompteConcerne.ColWidths[C]:=0;
AjusterColWidth(FSTraitementDonnees.TableauCompteConcerne,'',NotCol);

end;

procedure TFSTraitementDonnees.RBParCodeSFamilleClick(Sender: TObject);
begin
     FSTraitementDonnees.EditRecherche.Text:='';
     FSTraitementDonnees.EditRecherche.SetFocus;
end;

procedure TFSTraitementDonnees.RBParCodeArticleClick(Sender: TObject);
begin
     FSTraitementDonnees.EditRecherche.Text:='';
     FSTraitementDonnees.EditRecherche.SetFocus;
end;

procedure TFSTraitementDonnees.RBParDesignationArticleClick(
  Sender: TObject);
begin
     FSTraitementDonnees.EditRecherche.Text:='';
     FSTraitementDonnees.EditRecherche.SetFocus;
end;

procedure TFSTraitementDonnees.RBActiverRechercheBasePrincipaleClick(
  Sender: TObject);
var    CodeSFamille,CodeArticle,DesignationArticle,NotCol:string; RowOut,C:integer;
begin

CodeSFamille:='';
CodeArticle:='';
DesignationArticle:='';

if(FSTraitementDonnees.RBParCodeSFamille.Checked=true)then CodeSFamille:=FSTraitementDonnees.EditRecherche.Text;
if(FSTraitementDonnees.RBParCodeArticle.Checked=true)then CodeArticle:=FSTraitementDonnees.EditRecherche.Text;
if(FSTraitementDonnees.RBParDesignationArticle.Checked=true)then DesignationArticle:=FSTraitementDonnees.EditRecherche.Text;

ProcAfficheStockArticleListe(FSTraitementDonnees.TableauCompteConcerne,FSTraitementDonnees.EditTypeStock.Text,FSTraitementDonnees.EditNumProjet.Text,FSTraitementDonnees.EditCompteConserne.Text,CodeSFamille,CodeArticle,DesignationArticle,'',FSTraitementDonnees.RBDistingueDesigRef.Checked,0,RowOut);

if(FSTraitementDonnees.RBActiverRechercheBasePrincipale.Checked=true)then
begin
     ProcAfficheStockArticleListe(FSTraitementDonnees.TableauCompteConcerne,FSTraitementDonnees.EditTypeStock.Text,'',FSTraitementDonnees.EditCompteConserne.Text,CodeSFamille,CodeArticle,DesignationArticle,'',FSTraitementDonnees.RBDistingueDesigRef.Checked,RowOut,RowOut);
end;

NotCol:='5;6;8-'+inttostr(FSTraitementDonnees.TableauCompteConcerne.ColCount-1);
for C:=0 to FSTraitementDonnees.TableauCompteConcerne.ColCount-1 do if(Existenumintexte(inttostr(C),NotCol))then FSTraitementDonnees.TableauCompteConcerne.ColWidths[C]:=0;
AjusterColWidth(FSTraitementDonnees.TableauCompteConcerne,'',NotCol);
end;

procedure TFSTraitementDonnees.RBDistingueDesigRefClick(Sender: TObject);
var    CodeSFamille,CodeArticle,DesignationArticle,NotCol:string; RowOut,C:integer;
begin

CodeSFamille:='';
CodeArticle:='';
DesignationArticle:='';

if(FSTraitementDonnees.RBParCodeSFamille.Checked=true)then CodeSFamille:=FSTraitementDonnees.EditRecherche.Text;
if(FSTraitementDonnees.RBParCodeArticle.Checked=true)then CodeArticle:=FSTraitementDonnees.EditRecherche.Text;
if(FSTraitementDonnees.RBParDesignationArticle.Checked=true)then DesignationArticle:=FSTraitementDonnees.EditRecherche.Text;

ProcAfficheStockArticleListe(FSTraitementDonnees.TableauCompteConcerne,FSTraitementDonnees.EditTypeStock.Text,FSTraitementDonnees.EditNumProjet.Text,FSTraitementDonnees.EditCompteConserne.Text,CodeSFamille,CodeArticle,DesignationArticle,'',FSTraitementDonnees.RBDistingueDesigRef.Checked,0,RowOut);

if(FSTraitementDonnees.RBActiverRechercheBasePrincipale.Checked=true)then
begin
     ProcAfficheStockArticleListe(FSTraitementDonnees.TableauCompteConcerne,FSTraitementDonnees.EditTypeStock.Text,'',FSTraitementDonnees.EditCompteConserne.Text,CodeSFamille,CodeArticle,DesignationArticle,'',FSTraitementDonnees.RBDistingueDesigRef.Checked,RowOut,RowOut);
end;

NotCol:='5;6;8-'+inttostr(FSTraitementDonnees.TableauCompteConcerne.ColCount-1);
for C:=0 to FSTraitementDonnees.TableauCompteConcerne.ColCount-1 do if(Existenumintexte(inttostr(C),NotCol))then FSTraitementDonnees.TableauCompteConcerne.ColWidths[C]:=0;
AjusterColWidth(FSTraitementDonnees.TableauCompteConcerne,'',NotCol);
end;

Procedure SelectArticle;
begin
     FSTraitementDonnees.EditCodeArticleRecherche.Text:=FSTraitementDonnees.TableauCompteConcerne.Cells[1,FSTraitementDonnees.TableauCompteConcerne.Row];
     FSTraitementDonnees.EditArticleRecherche.Text:=FSTraitementDonnees.TableauCompteConcerne.Cells[2,FSTraitementDonnees.TableauCompteConcerne.Row]+' '+
                                                    FSTraitementDonnees.TableauCompteConcerne.Cells[3,FSTraitementDonnees.TableauCompteConcerne.Row];

     FSTraitementDonnees.AfficheOptionCompteConcerne.Height:=53;
     FSTraitementDonnees.BitAfficheOptionCompteConcerne.Caption:='Ouvrir la recherche Article';
end;

procedure TFSTraitementDonnees.TableauCompteConcerneKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     SelectArticle;
end;

procedure TFSTraitementDonnees.TableauCompteConcerneDblClick(
  Sender: TObject);
begin
     SelectArticle;
end;

procedure TFSTraitementDonnees.BitAfficheOptionCompteConcerneClick(Sender: TObject);
var  R,C:integer;  NotCol:string;   QuantiteGlobal,MontantGlobal,CoutGlobal,ValeurAjouterGlobal:real;
begin
     AccelerationAffichageTableau(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,true);

     FSTraitementDonnees.TableauCompteConcerne.RowCount:=2;
     FSTraitementDonnees.TableauCompteConcerne.Rows[1].Text:='';

     if(FSTraitementDonnees.AfficheOptionCompteConcerne.Height=429)then
     begin
          FSTraitementDonnees.AfficheOptionCompteConcerne.Height:=53;
          FSTraitementDonnees.BitAfficheOptionCompteConcerne.Kind:=bkHelp;
          FSTraitementDonnees.BitAfficheOptionCompteConcerne.Caption:='Ouvrir la recherche Article';

          FSTraitementDonnees.EditRecherche.Text:='';
          FSTraitementDonnees.EditCodeArticleRecherche.Text:='';
          FSTraitementDonnees.EditArticleRecherche.Text:='';

          QuantiteGlobal:=0;
          MontantGlobal:=0;
          CoutGlobal:=0;
          ValeurAjouterGlobal:=0;
          for R:=1 to FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-3 do
          begin
               FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowHeights[R]:=24;
               QuantiteGlobal:=QuantiteGlobal+strtoreal(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[6,R]);
               MontantGlobal:=MontantGlobal+strtoreal(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[8,R]);
               CoutGlobal:=CoutGlobal+strtoreal(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[20,R]);
               ValeurAjouterGlobal:=ValeurAjouterGlobal+strtoreal(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[21,R]);
          end;
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[6,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-1]:=Vergule(floattostr(QuantiteGlobal),'2','C','');
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[8,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-1]:=Vergule(floattostr(MontantGlobal),'2','C','');
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[20,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-1]:=Vergule(floattostr(CoutGlobal),'2','C','');
          FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[21,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-1]:=Vergule(floattostr(ValeurAjouterGlobal),'2','C','');

          MontantGlobal:=0;
          for R:=1 to FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-3 do
          begin
               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowHeights[R]:=24;
               MontantGlobal:=MontantGlobal+strtoreal(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[12,R]);
          end;
          FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[12,FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-1]:=Vergule(floattostr(MontantGlobal),'2','C','');

          NotCol:='';
          for C:=1 to FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColCount-1 do
          begin
               if(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColWidths[C]<=0)then
               begin
                    if(NotCol='')
                    then NotCol:=inttostr(C)
                    else NotCol:=NotCol+';'+inttostr(C);
               end;
          end;
          AjusterColWidth(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,'',NotCol);

          NotCol:='';
          for C:=1 to FSTraitementDonnees.TableauListeAppartenanceMouvementTB.ColCount-1 do
          begin
               if(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.ColWidths[C]<=0)then
               begin
                    if(NotCol='')
                    then NotCol:=inttostr(C)
                    else NotCol:=NotCol+';'+inttostr(C);
               end;
          end;
          AjusterColWidth(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,'',NotCol);
     end
     else
     begin
          FSTraitementDonnees.AfficheOptionCompteConcerne.Height:=429;
          FSTraitementDonnees.BitAfficheOptionCompteConcerne.Kind:=bkNo;
          FSTraitementDonnees.BitAfficheOptionCompteConcerne.Caption:='Annuler la recherche Article';
          if(FSTraitementDonnees.PageRecherche.Visible=true)then FSTraitementDonnees.EditRecherche.SetFocus;
     end;

     AccelerationAffichageTableau(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,false);
end;

Procedure AfficherParArticleRecherche(CodeArticleRecherche:string; OKRowHeightsZero:boolean);
var  R,C,RArticleRecherche:integer;   QuantiteGlobal,MontantGlobal,CoutGlobal,ValeurAjouterGlobal:real; NotRow,NotCol:string;
begin
     AccelerationAffichageTableau(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,true);

     if(CodeArticleRecherche<>'')then
     begin
          RArticleRecherche:=0;
          R:=1;
          NotRow:='';
          QuantiteGlobal:=0;
          MontantGlobal:=0;
          CoutGlobal:=0;
          ValeurAjouterGlobal:=0;
          while(R<=FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-3)do
          begin
               if(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[1,R]<>CodeArticleRecherche)then
               begin
                    if(OKRowHeightsZero=true)then
                    begin
                         FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowHeights[R]:=-1;
                         if(NotRow='')
                         then NotRow:=inttostr(R)
                         else NotRow:=NotRow+';'+inttostr(R);
                    end;
               end
               else
               begin
                    RArticleRecherche:=R;

                    QuantiteGlobal:=QuantiteGlobal+strtoreal(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[6,R]);
                    MontantGlobal:=MontantGlobal+strtoreal(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[8,R]);
                    CoutGlobal:=CoutGlobal+strtoreal(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[20,R]);
                    ValeurAjouterGlobal:=ValeurAjouterGlobal+strtoreal(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[21,R]);
               end;
          R:=R+1;
          end;

          NotCol:='';
          for C:=1 to FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColCount-1 do
          begin
               if(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.ColWidths[C]<=0)then
               begin
                    if(NotCol='')
                    then NotCol:=inttostr(C)
                    else NotCol:=NotCol+';'+inttostr(C);
               end;
          end;

          AjusterColWidth(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,NotRow,NotCol);

          if(RArticleRecherche<>0)then
          begin
               if(OKRowHeightsZero=true)then
               begin
                    FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[6,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-1]:=Vergule(floattostr(QuantiteGlobal),'2','C','');
                    FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[8,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-1]:=Vergule(floattostr(MontantGlobal),'2','C','');
                    FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[20,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-1]:=Vergule(floattostr(CoutGlobal),'2','C','');
                    FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[21,FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.RowCount-1]:=Vergule(floattostr(ValeurAjouterGlobal),'2','C','');
               end;

               FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Row:=RArticleRecherche;

               MontantGlobal:=0;
               R:=1;
               while(R<=FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-3)do
               begin
                    if(not ExisteNumInTexte(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[1,R],FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant.Cells[22,RArticleRecherche]))
                    then FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowHeights[R]:=FSTraitementDonnees.Incrimentation.Position
                    else
                    begin
                         FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowHeights[R]:=24;
                         MontantGlobal:=MontantGlobal+strtoreal(FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[12,R]);
                    end;
               R:=R+1;
               end;

               FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Cells[12,FSTraitementDonnees.TableauListeAppartenanceMouvementTB.RowCount-1]:=Vergule(floattostr(MontantGlobal),'2','C','')
          end;
     end;

     AccelerationAffichageTableau(FSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemant,false);
end;

procedure TFSTraitementDonnees.TableauListeAppartenanceMouvementTBContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     AjusterColWiDth(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,'','');
end;

procedure TFSTraitementDonnees.TableauMouvementDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauDeBohrTiersDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauAnalyseSoldePeriodeDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauAnalyseSoldePeriodeTiersDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauFinanceStructureDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauListeAppartenanceMouvementTBDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauDetaiMouvementAppartenanceMouvemantDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauArborescenceArticleDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauTitreDataTiersDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauDetailFormuleListeMouvementDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauAnalysePeriodiqueDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauTiersTableaudeBohrsDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauTiersSupplementaireDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauMoyenTransportDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauProjetTableauBohrDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauAvisDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauProjetTraitementDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauSeriePieceDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauDataIsolerDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauPositionAvisSelectDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauDetailMouvementSelectionDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauTypeFormuleCompteurArticleDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauTiersProjetTraitementDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauTiersListeTiersDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauFinanceTiersDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauIndiqueAdresseListeMouvementDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableatDetailSoldeTiersDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauxPieceManquanteAutreTiersDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.TableauSeriePieceTriePieceDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSTraitementDonnees.PageOptionShow(Sender: TObject);
begin
     FSTraitementDonnees.PageOption.Enabled:= AccesPrivilegies('FS Paramètres avancés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',false);
     FSTraitementDonnees.CachePageOption.Visible:=Not FSTraitementDonnees.PageOption.Enabled;
end;

procedure TFSTraitementDonnees.BitBtn38Click(Sender: TObject);
var   i,R:integer; ExerciceNew,DebitCredit:string;   OKTiers:boolean;   Montant:real;
begin
     if(FSTraitementDonnees.RBAutoSelectMouvementMemeType.Checked=true)
     and(strtodate(datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date))=strtodate('31/12/'+Exerciceannee))
     then
     begin
          TypeProces:='Business';   FichierConcerne:='FAvis';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
          end;
          ExerciceNew:=inttostr(strtointeger(Exerciceannee)+1);
          ChAvis:=ConvertirAdresseExerciceAnnee(Adresse,Exerciceannee,ExerciceNew);
          assignfile(FAvis,ChAvis);
          if FileExists(ChAvis)then
          begin
               try
               Reset(FAvis);
               i:=0;
               Seek(FAvis,i);
               while not eof(FAvis)do
               begin
                    read(FAvis,RAvis);

                    if(RAvis.DateAvis='31/12/'+Exerciceannee)
                    and(RAvis.NatureDepense='Inventaire au 31/12/'+Exerciceannee)then
                    begin
                         R:=1;
                         OKTiers:=false;
                         while(R<=FSTraitementDonnees.TableauDeBohrTiers.RowCount-4)and(OKTiers=false)do
                         begin
                              if(FSTraitementDonnees.TableauDeBohrTiers.Cells[17,R]=RAvis.TypeProces)
                              and(FSTraitementDonnees.TableauDeBohrTiers.Cells[18,R]=RAvis.AvisConcerneTiers)
                              and(FSTraitementDonnees.TableauDeBohrTiers.Cells[1,R]=RAvis.CodeTiers)
                              then
                              begin
                                   OKTiers:=true;
                                   if(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[15,R])>0)then
                                   begin
                                        DebitCredit:='Débit';
                                        Montant:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[15,R]);
                                   end
                                   else
                                   if(strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[16,R])>0)then
                                   begin
                                        DebitCredit:='Crédit';
                                        Montant:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[16,R]);
                                   end
                                   else
                                   begin
                                        DebitCredit:='Débit';
                                        Montant:=0;
                                   end;;

                                   RAvis.Montant:=Montant;
                                   RAvis.DebitCredit:=DebitCredit;
                                   Seek(FAvis,i);
                                   write(FAvis,RAvis);
                              end;
                         R:=R+1;
                         end;
                    end;
                    i:=i+1;
               end;
               finally
               CloseFile(FAvis);
               end;
          end;
     end
     else
     begin
          if(FSTraitementDonnees.RBAutoSelectMouvementMemeType.Checked=false)then
          begin
               showmessage('L''analyse doit étre automatique !');
          end
          else
          if(strtodate(datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date))<>strtodate('31/12/'+Exerciceannee))
          then
          begin
               showmessage('Veuillez sélectionner l''exercice du 01/01/'+Exerciceannee+' au 31/12/'+Exerciceannee);
          end;
     end;
end;

procedure TFSTraitementDonnees.BitBtn39Click(Sender: TObject);
var  i,iTiers,R:integer; PeriodeTableauBohrs,TypeProces,FichierConcerne,Adresse:string;  OKTiers:boolean;
begin
     PeriodeTableauBohrs:=Completezerogauche(MidelLaters(FSTraitementDonnees.EditMois.Text,2,3),'2')+FSTraitementDonnees.EditExerciceTableauBohr.Text;
     TypeProces:='Business';
     FichierConcerne:='FTableauBohrs '+PeriodeTableauBohrs;
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          if(FichierConcerne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConcerne+'} recherché !');
     end;

     ChTableauBohrs:=Adresse;
     assignfile(FTableauBohrs,ChTableauBohrs);
     try
     if FileExists(ChTableauBohrs)then
     begin
          Reset(FTableauBohrs);

          if NonOui('Voulez vous recrié la période ?')then
          begin
               Seek(FTableauBohrs,0);
               Truncate(FTableauBohrs);
          end;
     end
     else
     begin
          if NonOui('la période de '+PeriodeTableauBohrs+' n''est pas comptabilisé ! voulez vous la comptabiliser')then
          begin
               Rewrite(FTableauBohrs);
          end
          else Exit;
     end;

     R:=1;
     i:=0;
     iTiers:=0;
     while(R<=FSTraitementDonnees.TableauDeBohrTiers.RowCount-4)do
     begin
          Seek(FTableauBohrs,0);
          OKTiers:=false;
          while not eof(FTableauBohrs)and(OKTiers=false)do
          begin
               read(FTableauBohrs,RTableauBohrs);

               if(RTableauBohrs.PeriodeTableauBohrs=PeriodeTableauBohrs)
               and(RTableauBohrs.TypeProces=FSTraitementDonnees.TableauDeBohrTiers.Cells[17,R])
               and(RTableauBohrs.FichierConcerneTiers=FSTraitementDonnees.TableauDeBohrTiers.Cells[18,R])
               and(RTableauBohrs.CodeTiers=FSTraitementDonnees.TableauDeBohrTiers.Cells[1,R])
               then
               begin
                    OKTiers:=true;
                    iTiers:=i;
               end;
          end;

          if(OKTiers=true) then i:=iTiers;

          RTableauBohrs.PositionTableauBohrs:=i;
          RTableauBohrs.PeriodeTableauBohrs:=PeriodeTableauBohrs;
          RTableauBohrs.TypeProces:=FSTraitementDonnees.TableauDeBohrTiers.Cells[17,R];
          RTableauBohrs.FichierConcerneTiers:=FSTraitementDonnees.TableauDeBohrTiers.Cells[18,R];
          RTableauBohrs.CodeTiers:=FSTraitementDonnees.TableauDeBohrTiers.Cells[1,R];

          RTableauBohrs.DebitAnterier:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[3,R]);
          RTableauBohrs.CreditAnterieur:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[4,R]);
          RTableauBohrs.SoldeDebitAnterieur:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[5,R]);
          RTableauBohrs.SoldeCreditAnterieur:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[6,R]);

          RTableauBohrs.DebitPeriode:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[8,R]);
          RTableauBohrs.CreditPeriode:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[9,R]);
          RTableauBohrs.SoldeDebitPeriode:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[10,R]);
          RTableauBohrs.SoldeCreditPeriode:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[11,R]);

          RTableauBohrs.DebitFinPeriode:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[13,R]);
          RTableauBohrs.CreditFinPeriode:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[14,R]);
          RTableauBohrs.SoldeDebitFinPeriode:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[15,R]);
          RTableauBohrs.SoldeCreditFinPeriode:=strtoreal(FSTraitementDonnees.TableauDeBohrTiers.Cells[16,R]);

          Seek(FTableauBohrs,i);
          Write(FTableauBohrs,RTableauBohrs);

          i:=i+1;
     R:=R+1;
     end;
     finally
     CloseFile(FTableauBohrs);
     end;

     if(Completezerogauche(MidelLaters(FSTraitementDonnees.EditMois.Text,2,3),'2')='12')then
     begin
           TypeProces:='Business';
           FichierConcerne:='FTableauBohrs '+PeriodeTableauBohrs;
           Adresse:='';
           if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                if(FichierConcerne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConcerne+'} recherché !');
           end;

           ChTableauBohrs:=Adresse;
           assignfile(FTableauBohrs,ChTableauBohrs);
           if FileExists(ChTableauBohrs)then
           begin
                try
                Reset(FTableauBohrs);

                ChTableauBohrsCopie:=ConvertirAdresseExerciceAnnee(Adresse,Exerciceannee,Inttostr(strtointeger(Exerciceannee)+1));
                assignfile(FTableauBohrsCopie,ChTableauBohrsCopie);
                try
                if FileExists(ChTableauBohrsCopie)
                then Reset(FTableauBohrsCopie)
                else Rewrite(FTableauBohrsCopie);
                Truncate(FTableauBohrsCopie);

                i:=0;
                Seek(FTableauBohrs,0);
                while not eof(FTableauBohrs)do
                begin
                     read(FTableauBohrs,RTableauBohrsCopie);

                     Seek(FTableauBohrsCopie,i);
                     Write(FTableauBohrsCopie,RTableauBohrsCopie);
                end;
                finally
                CloseFile(FTableauBohrsCopie);
                end;
                finally
                CloseFile(FTableauBohrs);
                end;
           end;
     end;

     FSTraitementDonnees.AfficherTableauBohrs.Left:=FSTraitementDonnees.PageTableauBohrs.Left;
     FSTraitementDonnees.AfficherTableauBohrs.Top:=FSTraitementDonnees.PageTableauBohrs.Top;
     FSTraitementDonnees.AfficherTableauBohrs.Visible:=true;
     ListeTablauxBohrsTiers(FSTraitementDonnees.TableauxdeBohrsPeriode,PeriodeTableauBohrs);
     FSTraitementDonnees.TableauxdeBohrsPeriode.SetFocus;
end;

Procedure SoldeTableauBohrs(PeriodeTableauBohrs,TypeProcesTiers,FichierConcerneTiers,CodeTiers:string; var DebitAnterier,CreditAnterieur,SoldeDebitAnterieur,SoldeCreditAnterieur,DebitPeriode,CreditPeriode,SoldeDebitPeriode,SoldeCreditPeriode,DebitFinPeriode,CreditFinPeriode,SoldeDebitFinPeriode,SoldeCreditFinPeriode:real);
var  OKTiers:boolean;
begin
     DebitAnterier:=0;
     CreditAnterieur:=0;
     SoldeDebitAnterieur:=0;
     SoldeCreditAnterieur:=0;

     DebitPeriode:=0;
     CreditPeriode:=0;
     SoldeDebitPeriode:=0;
     SoldeCreditPeriode:=0;

     DebitFinPeriode:=0;
     CreditFinPeriode:=0;
     SoldeDebitFinPeriode:=0;
     SoldeCreditFinPeriode:=0;

     TypeProces:='Business';
     FichierConcerne:='FTableauBohrs '+PeriodeTableauBohrs;
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          if(FichierConcerne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConcerne+'} recherché !');
     end;

     ChTableauBohrs:=Adresse;
     assignfile(FTableauBohrs,ChTableauBohrs);
     if FileExists(ChTableauBohrs)then
     begin
           try
           Reset(FTableauBohrs);
           Seek(FTableauBohrs,0);
           OKTiers:=false;
           while not eof(FTableauBohrs)and(OKTiers=false)do
           begin
                read(FTableauBohrs,RTableauBohrs);

                if(RTableauBohrs.PeriodeTableauBohrs=PeriodeTableauBohrs)
                and(RTableauBohrs.TypeProces=TypeProcesTiers)
                and(RTableauBohrs.FichierConcerneTiers=FichierConcerneTiers)
                and(RTableauBohrs.CodeTiers=CodeTiers)
                then
                begin
                     OKTiers:=true;

                     DebitAnterier:=RTableauBohrs.DebitAnterier;
                     CreditAnterieur:=RTableauBohrs.CreditAnterieur;
                     SoldeDebitAnterieur:=RTableauBohrs.SoldeDebitAnterieur;
                     SoldeCreditAnterieur:=RTableauBohrs.SoldeCreditAnterieur;

                     DebitPeriode:=RTableauBohrs.DebitPeriode;
                     CreditPeriode:=RTableauBohrs.CreditPeriode;
                     SoldeDebitPeriode:=RTableauBohrs.SoldeDebitPeriode;
                     SoldeCreditPeriode:=RTableauBohrs.SoldeCreditPeriode;

                     DebitFinPeriode:=RTableauBohrs.DebitFinPeriode;
                     CreditFinPeriode:=RTableauBohrs.CreditFinPeriode;
                     SoldeDebitFinPeriode:=RTableauBohrs.SoldeDebitFinPeriode;
                     SoldeCreditFinPeriode:=RTableauBohrs.SoldeCreditFinPeriode;
                end;
           end;
           finally
           CloseFile(FTableauBohrs);
           end;
     end;
end;

procedure TFSTraitementDonnees.BitBtn40Click(Sender: TObject);
begin
     FSTraitementDonnees.AfficherTableauBohrs.Visible:=false;
end;

Procedure ListeTablauxBohrsTiers(TableauBohrs:TStringGrid; PeriodeTableauBohrs:string);
var  R,C:integer;  NotCol:string;
begin
     TableauBohrs.ColCount:=20;
     TableauBohrs.Cols[0].Text:='P°';
     TableauBohrs.Cols[1].Text:='Période';
     TableauBohrs.Cols[2].Text:='Type Proces';
     TableauBohrs.Cols[3].Text:='Fichier Concerne';
     TableauBohrs.Cols[4].Text:='CodeTiers';
     TableauBohrs.Cols[5].Text:='Tiers';
     TableauBohrs.Cols[6].Text:='Débit Antérier';
     TableauBohrs.Cols[7].Text:='Crédit Antérier';
     TableauBohrs.Cols[8].Text:='Solde D/Antérier';
     TableauBohrs.Cols[9].Text:='Solde C/Antérier';
     TableauBohrs.Cols[10].Text:='...';
     TableauBohrs.Cols[11].Text:='Débit Période';
     TableauBohrs.Cols[12].Text:='Crédit Période';
     TableauBohrs.Cols[13].Text:='Solde D/Période';
     TableauBohrs.Cols[14].Text:='Solde C/Période';
     TableauBohrs.Cols[15].Text:='...';
     TableauBohrs.Cols[16].Text:='Débit Fin Période';
     TableauBohrs.Cols[17].Text:='Crédit Fin Période';
     TableauBohrs.Cols[18].Text:='Solde D/Fin Période';
     TableauBohrs.Cols[19].Text:='Solde C/Fin Période';

     TableauBohrs.RowCount:=2;
     TableauBohrs.Rows[1].Text:='';

     TypeProces:='Business';
     FichierConcerne:='FTableauBohrs '+PeriodeTableauBohrs;
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          if(FichierConcerne<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier {'+FichierConcerne+'} recherché !');
     end;

     ChTableauBohrs:=Adresse;
     assignfile(FTableauBohrs,ChTableauBohrs);
     R:=0;
     if FileExists(ChTableauBohrs)then
     begin
           try
           Reset(FTableauBohrs);
           Seek(FTableauBohrs,0);
           while not eof(FTableauBohrs)do
           begin
                read(FTableauBohrs,RTableauBohrs);
                R:=R+1;
                TableauBohrs.Rows[R].Text:='';
                TableauBohrs.Cells[0,R]:=inttostr(RTableauBohrs.PositionTableauBohrs);
                TableauBohrs.Cells[1,R]:=RTableauBohrs.PeriodeTableauBohrs;
                TableauBohrs.Cells[2,R]:=RTableauBohrs.TypeProces;
                TableauBohrs.Cells[3,R]:=RTableauBohrs.FichierConcerneTiers;
                TableauBohrs.Cells[4,R]:=RTableauBohrs.CodeTiers;
                TableauBohrs.Cells[5,R]:='';

                TableauBohrs.Cells[6,R]:=Vergule(Floattostr(RTableauBohrs.DebitAnterier),'2','C','');
                TableauBohrs.Cells[7,R]:=Vergule(Floattostr(RTableauBohrs.CreditAnterieur),'2','C','');
                TableauBohrs.Cells[8,R]:=Vergule(Floattostr(RTableauBohrs.SoldeDebitAnterieur),'2','C','');
                TableauBohrs.Cells[9,R]:=Vergule(Floattostr(RTableauBohrs.SoldeCreditAnterieur),'2','C','');

                TableauBohrs.Cells[10,R]:='...';

                TableauBohrs.Cells[11,R]:=Vergule(Floattostr(RTableauBohrs.DebitPeriode),'2','C','');
                TableauBohrs.Cells[12,R]:=Vergule(Floattostr(RTableauBohrs.CreditPeriode),'2','C','');
                TableauBohrs.Cells[13,R]:=Vergule(Floattostr(RTableauBohrs.SoldeDebitPeriode),'2','C','');
                TableauBohrs.Cells[14,R]:=Vergule(Floattostr(RTableauBohrs.SoldeCreditPeriode),'2','C','');

                TableauBohrs.Cells[15,R]:='...';

                TableauBohrs.Cells[16,R]:=Vergule(Floattostr(RTableauBohrs.DebitFinPeriode),'2','C','');
                TableauBohrs.Cells[17,R]:=Vergule(Floattostr(RTableauBohrs.CreditFinPeriode),'2','C','');
                TableauBohrs.Cells[18,R]:=Vergule(Floattostr(RTableauBohrs.SoldeDebitFinPeriode),'2','C','');
                TableauBohrs.Cells[19,R]:=Vergule(Floattostr(RTableauBohrs.SoldeCreditFinPeriode),'2','C','');

           end;
           finally
           CloseFile(FTableauBohrs);
           end;
     end;

     if(R>0)then  TableauBohrs.RowCount:=R+1
            else  TableauBohrs.RowCount:=2;

     IndiquerNomPrenomMultiTiers(TableauBohrs,2,3,4,'5','','','','','','','');

     NotCol:='2;3';
     for C:=1 to  TableauBohrs.ColCount-1 do if ExisteNuminTexte(inttostr(C),NotCol)then TableauBohrs.ColWidths[C]:=0;
     AjusterColWidth(TableauBohrs,'',NotCol);
end;

procedure TFSTraitementDonnees.BitBtn39ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
var  PeriodeTableauBohrs:string;
begin
     PeriodeTableauBohrs:=Completezerogauche(MidelLaters(FSTraitementDonnees.EditMois.Text,2,3),'2')+FSTraitementDonnees.EditExerciceTableauBohr.Text;
     FSTraitementDonnees.AfficherTableauBohrs.Left:=FSTraitementDonnees.PageTableauBohrs.Left;
     FSTraitementDonnees.AfficherTableauBohrs.Top:=FSTraitementDonnees.PageTableauBohrs.Top;
     FSTraitementDonnees.AfficherTableauBohrs.Visible:=true;
     ListeTablauxBohrsTiers(FSTraitementDonnees.TableauxdeBohrsPeriode,PeriodeTableauBohrs);
     FSTraitementDonnees.TableauxdeBohrsPeriode.SetFocus;
end;

procedure TFSTraitementDonnees.TableauxdeBohrsPeriodeClick(
  Sender: TObject);
begin
     if(FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked=true)then
     begin
          FSTraitementDonnees.RBIndiceRubriqueTriCol.Checked:=false;
          FSTraitementDonnees.EditIndiceRubriqueTriCol.Text:=inttostr(FSTraitementDonnees.TableauxdeBohrsPeriode.Col);
          EnregistrerOptionsTraitementDonnees;
          if(FSTraitementDonnees.TableauDeBohrTiers.Col in[1,2,3,4,5,10,15])
          then FSTraitementDonnees.EditTypeDataTrie.Text:=''
          else FSTraitementDonnees.EditTypeDataTrie.Text:='Num';
          TrierTableauARowSpecial(FSTraitementDonnees.TableauxdeBohrsPeriode,1,FSTraitementDonnees.TableauxdeBohrsPeriode.RowCount-1,1,FSTraitementDonnees.EditIndiceRubriqueTriCol.Text,FSTraitementDonnees.EditTypeDataTrie.Text,FSTraitementDonnees.EditTypeTrie.Text);
     end;
end;

procedure TFSTraitementDonnees.AfficheTableauListeAppartenanceMouvementTBAfficheRubriqueClick(
  Sender: TObject);
var  C:integer; NotRow,NotCol:string;
begin
     if(FSTraitementDonnees.AfficheTableauListeAppartenanceMouvementTBAfficheRubrique.Height=25)then
     begin
          FSTraitementDonnees.AfficheTableauListeAppartenanceMouvementTBAfficheRubrique.Height:=465;
          FSTraitementDonnees.AfficheTableauListeAppartenanceMouvementTBAfficheRubrique.Width:=355;
          CreatTableauConfigurationAffichageRubrique(FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique,FSTraitementDonnees.TableauListeAppartenanceMouvementTB,0);
     end
     else
     begin
          FSTraitementDonnees.AfficheTableauListeAppartenanceMouvementTBAfficheRubrique.Height:=25;
          FSTraitementDonnees.AfficheTableauListeAppartenanceMouvementTBAfficheRubrique.Width:=211;

          if(ListeNotCol(FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique)<>'')then NotCol:=ListeNotCol(FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique);

          for C:=1 to FSTraitementDonnees.TableauListeAppartenanceMouvementTB.ColCount-1 do if(ExisteNumInTexte(inttostr(C),NotCol))then FSTraitementDonnees.TableauListeAppartenanceMouvementTB.ColWidths[C]:=0;

          NotRow:='';
          AjusterColWidth(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,NotRow,NotCol);

          ProcSauvgardeActiveColsTableaux(FSTraitementDonnees.TableauListeAppartenanceMouvementTB,FSTraitementDonnees.TableauListeAppartenanceMouvementTB.Name);
     end;
end;

procedure TFSTraitementDonnees.BitTableauListeAppartenanceMouvementTBAfficherTousRubriqueClick(
  Sender: TObject);
var   R:integer;
begin
     if(FSTraitementDonnees.BitTableauListeAppartenanceMouvementTBAfficherTousRubrique.Caption='Sélectionner tous !')then
     begin
          FSTraitementDonnees.BitTableauListeAppartenanceMouvementTBAfficherTousRubrique.Caption:='Désélectionner tous !';
          R:=1;
          while(R<=FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique.RowCount-1)do
          begin
               FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique.Cells[1,R]:='OK';
          R:=R+1;
          end;
     end
     else
     begin
          FSTraitementDonnees.BitTableauListeAppartenanceMouvementTBAfficherTousRubrique.Caption:='Sélectionner tous !';
          R:=1;
          while(R<=FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique.RowCount-1)do
          begin
               FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique.Cells[1,R]:='';
          R:=R+1;
          end;
     end;
end;

procedure TFSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubriqueDblClick(
  Sender: TObject);
begin
     if(FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique.Cells[1,FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique.Row]='')
     then FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique.Cells[1,FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique.Row]:='OK'
     else FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique.Cells[1,FSTraitementDonnees.TableauListeAppartenanceMouvementTBAfficheRubrique.Row]:='';
end;

procedure TFSTraitementDonnees.TabSheet8Show(Sender: TObject);
begin
     FSTraitementDonnees.EditTableauSelect.Text:='Mouvement';
end;

Procedure EnregistrerOptionsTraitementDonnees;
var  FichierTexte:TextFile;  AdresseFichierTexte,TexteLigne:string;
begin
     if(FSTraitementDonnees.RBOpererEnregistrerOptionsTraitementDonnees.Checked=false)then Exit;

     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBAfficherMonvementAvecLocalisationGeo.Name,booleantostr(FSTraitementDonnees.RBAfficherMonvementAvecLocalisationGeo.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBAfficherPartiesCommunes.Name,booleantostr(FSTraitementDonnees.RBAfficherPartiesCommunes.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBPartiesCommunesCumules.Name,booleantostr(FSTraitementDonnees.RBPartiesCommunesCumules.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBInclureListeMouvementNonJustifierParAvis.Name,booleantostr(FSTraitementDonnees.RBInclureListeMouvementNonJustifierParAvis.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBAutoBaseAvisFichierConcerne.Name,booleantostr(FSTraitementDonnees.RBAutoBaseAvisFichierConcerne.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBActiverGroupeTiers.Name,booleantostr(FSTraitementDonnees.RBActiverGroupeTiers.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBPreciserTypeAvis.Name,booleantostr(FSTraitementDonnees.RBPreciserTypeAvis.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBPreciserNatureOperationAvis.Name,booleantostr(FSTraitementDonnees.RBPreciserNatureOperationAvis.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBPreciserNatureOperationMouvement.Name,booleantostr(FSTraitementDonnees.RBPreciserNatureOperationMouvement.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBPreciserDetailOperationMouvement.Name,booleantostr(FSTraitementDonnees.RBPreciserDetailOperationMouvement.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Name,booleantostr(FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBPreciserDestinationMouvement.Name,booleantostr(FSTraitementDonnees.RBPreciserDestinationMouvement.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBPreciserMarcheRealisation.Name,booleantostr(FSTraitementDonnees.RBPreciserMarcheRealisation.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBNePasAfficherNewFinanceReseaux.Name,booleantostr(FSTraitementDonnees.RBNePasAfficherNewFinanceReseaux.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBModePayementNumAvis.Name,booleantostr(FSTraitementDonnees.RBModePayementNumAvis.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBModePayementModePayement.Name,booleantostr(FSTraitementDonnees.RBModePayementModePayement.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBModePayementDateAvis.Name,booleantostr(FSTraitementDonnees.RBModePayementDateAvis.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBModePayementDateExecution.Name,booleantostr(FSTraitementDonnees.RBModePayementDateExecution.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBAfficherValeurNulle.Name,booleantostr(FSTraitementDonnees.RBAfficherValeurNulle.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBAppliquerIndexationArchivePrelevement.Name,booleantostr(FSTraitementDonnees.RBAppliquerIndexationArchivePrelevement.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBInclureValeurSousReseauxPrecedentePeriode.Name,booleantostr(FSTraitementDonnees.RBInclureValeurSousReseauxPrecedentePeriode.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBInclureValeurSousReseauxPrecedenteExercice.Name,booleantostr(FSTraitementDonnees.RBInclureValeurSousReseauxPrecedenteExercice.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBAppliqueEnregistrementParametresReseaux.Name,booleantostr(FSTraitementDonnees.RBAppliqueEnregistrementParametresReseaux.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Name,booleantostr(FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBJustifierAvis.Name,booleantostr(FSTraitementDonnees.RBJustifierAvis.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBNonJustifieAvis.Name,booleantostr(FSTraitementDonnees.RBNonJustifieAvis.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBTabulation.Name,booleantostr(FSTraitementDonnees.RBTabulation.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Name,booleantostr(FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBRubriqueTrieTableauFinanceTiers.Name,booleantostr(FSTraitementDonnees.RBRubriqueTrieTableauFinanceTiers.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBTrieTableauFinanceTiersDescendant.Name,booleantostr(FSTraitementDonnees.RBTrieTableauFinanceTiersDescendant.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBTrieTableauFinanceTiersAscendant.Name,booleantostr(FSTraitementDonnees.RBTrieTableauFinanceTiersAscendant.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBInclureTitreDataTiers.Name,booleantostr(FSTraitementDonnees.RBInclureTitreDataTiers.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBInclureDetailMouvementParFamilles.Name,booleantostr(FSTraitementDonnees.RBInclureDetailMouvementParFamilles.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBAfficherAvisAnnules.Name,booleantostr(FSTraitementDonnees.RBAfficherAvisAnnules.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBAvisRisqueZero.Name,booleantostr(FSTraitementDonnees.RBAvisRisqueZero.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBAvisNonExecutes.Name,booleantostr(FSTraitementDonnees.RBAvisNonExecutes.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBAvisExecutes.Name,booleantostr(FSTraitementDonnees.RBAvisExecutes.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBAvisExecutesNonExecutes.Name,booleantostr(FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBAscendantRubriqueTrieTableauAvis.Name,booleantostr(FSTraitementDonnees.RBAscendantRubriqueTrieTableauAvis.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBDescendantRubriqueTrieTableauAvis.Name,booleantostr(FSTraitementDonnees.RBDescendantRubriqueTrieTableauAvis.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBAfficheMoyenTransport.Name,booleantostr(FSTraitementDonnees.RBAfficheMoyenTransport.Checked));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.RBInclureDetailArticle.Name,booleantostr(FSTraitementDonnees.RBInclureDetailArticle.Checked));

     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditRonStructure.Name,FSTraitementDonnees.EditRonStructure.Text);
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.IncrimenteEditTailleColonneMax.Name,inttostr(FSTraitementDonnees.IncrimenteEditTailleColonneMax.Position));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.IncrimentEditDataTiersNIF.Name,inttostr(FSTraitementDonnees.IncrimentEditDataTiersNIF.Position));
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditTiersAnneeAffiche.Name,FSTraitementDonnees.EditTiersAnneeAffiche.Text);
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditTiersRubriqueTrie.Name,FSTraitementDonnees.EditTiersRubriqueTrie.Text);
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditExerciceTableauBohr.Name,FSTraitementDonnees.EditExerciceTableauBohr.Text);
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditAnneeAffiche.Name,FSTraitementDonnees.EditAnneeAffiche.Text);
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditRubriqueTrie.Name,FSTraitementDonnees.EditRubriqueTrie.Text);
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditTypeDataTrieTiers.Name,FSTraitementDonnees.EditTypeDataTrieTiers.Text);
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.TiersTypeTrie.Name,FSTraitementDonnees.TiersTypeTrie.Caption);
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditIndiceRubriqueTriCol.Name,FSTraitementDonnees.EditIndiceRubriqueTriCol.Text);
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditNotColTableauDeBohrTiers.Name,FSTraitementDonnees.EditNotColTableauDeBohrTiers.Text);
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditIndiceRubriqueTriCol.Name,FSTraitementDonnees.EditIndiceRubriqueTriCol.Text);
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditTypeDataTrie.Name,FSTraitementDonnees.EditTypeDataTrie.Text);
     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditTypeTrie.Name,FSTraitementDonnees.EditTypeTrie.Text);

     FSTraitementDonnees.FichierMemo.Clear;

     OpenFParc(RParc);
     AdresseFichierTexte:=RParc.Parcours+'\'+'FRegistreOptionsTraitementDonnees.txt';
     AssignFile(FichierTexte,AdresseFichierTexte);
     if FileExists(AdresseFichierTexte)then
     begin
          try
          Reset(FichierTexte);

          while not eof(FichierTexte)do
          begin
               Readln(FichierTexte,TexteLigne);
               FSTraitementDonnees.FichierMemo.Lines.Add(TexteLigne)
          end;
          finally
          CloseFile(FichierTexte);
          end;
     end;
end;

Procedure ChargerOptionsTraitementDonnees;
var  FichierTexte:TextFile; AdresseFichierTexte,TexteLigne:string;
begin
     FSTraitementDonnees.RBOpererEnregistrerOptionsTraitementDonnees.Checked:=false;

     FSTraitementDonnees.FichierMemo.Clear;

     OpenFParc(RParc);
     AdresseFichierTexte:=RParc.Parcours+'\'+'FRegistreOptionsTraitementDonnees.txt';
     AssignFile(FichierTexte,AdresseFichierTexte);
     if FileExists(AdresseFichierTexte)then
     begin
          try
          Reset(FichierTexte);

          while not eof(FichierTexte)do
          begin
               Readln(FichierTexte,TexteLigne);
               FSTraitementDonnees.FichierMemo.Lines.Add(TexteLigne);
          end;
          finally
          CloseFile(FichierTexte);
          end;
     end;

     FSTraitementDonnees.RBAfficherMonvementAvecLocalisationGeo.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBAfficherMonvementAvecLocalisationGeo.Name));
     FSTraitementDonnees.RBAfficherPartiesCommunes.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBAfficherPartiesCommunes.Name));
     FSTraitementDonnees.RBPartiesCommunesCumules.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBPartiesCommunesCumules.Name));
     FSTraitementDonnees.RBInclureListeMouvementNonJustifierParAvis.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBInclureListeMouvementNonJustifierParAvis.Name));
     FSTraitementDonnees.RBAutoBaseAvisFichierConcerne.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBAutoBaseAvisFichierConcerne.Name));
     FSTraitementDonnees.RBActiverGroupeTiers.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBActiverGroupeTiers.Name));
     FSTraitementDonnees.RBPreciserTypeAvis.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBPreciserTypeAvis.Name));
     FSTraitementDonnees.RBPreciserNatureOperationAvis.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBPreciserNatureOperationAvis.Name));
     FSTraitementDonnees.RBPreciserNatureOperationMouvement.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBPreciserNatureOperationMouvement.Name));
     FSTraitementDonnees.RBPreciserDetailOperationMouvement.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBPreciserDetailOperationMouvement.Name));
     FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvement.Name));
     FSTraitementDonnees.RBPreciserDestinationMouvement.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBPreciserDestinationMouvement.Name));
     FSTraitementDonnees.RBPreciserMarcheRealisation.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBPreciserMarcheRealisation.Name));
     FSTraitementDonnees.RBNePasAfficherNewFinanceReseaux.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBNePasAfficherNewFinanceReseaux.Name));
     FSTraitementDonnees.RBModePayementNumAvis.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBModePayementNumAvis.Name));
     FSTraitementDonnees.RBModePayementModePayement.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBModePayementModePayement.Name));
     FSTraitementDonnees.RBModePayementDateAvis.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBModePayementDateAvis.Name));
     FSTraitementDonnees.RBModePayementDateExecution.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBModePayementDateExecution.Name));
     FSTraitementDonnees.RBAfficherValeurNulle.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBAfficherValeurNulle.Name));
     FSTraitementDonnees.RBAppliquerIndexationArchivePrelevement.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBAppliquerIndexationArchivePrelevement.Name));
     FSTraitementDonnees.RBInclureValeurSousReseauxPrecedentePeriode.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBInclureValeurSousReseauxPrecedentePeriode.Name));
     FSTraitementDonnees.RBInclureValeurSousReseauxPrecedenteExercice.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBInclureValeurSousReseauxPrecedenteExercice.Name));
     FSTraitementDonnees.RBAppliqueEnregistrementParametresReseaux.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBAppliqueEnregistrementParametresReseaux.Name));
     FSTraitementDonnees.RBBoxListeAutres.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBBoxListeAutres.Name));
     FSTraitementDonnees.RBAfficheMoyenTransport.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBAfficheMoyenTransport.Name));
     FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBJustifierAvisNonJustifieAvis.Name));
     FSTraitementDonnees.RBJustifierAvis.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBJustifierAvis.Name));
     FSTraitementDonnees.RBNonJustifieAvis.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBNonJustifieAvis.Name));
     FSTraitementDonnees.RBTabulation.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBTabulation.Name));
     FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBAfficherAvisAnnulesTiers.Name));
     FSTraitementDonnees.RBRubriqueTrieTableauFinanceTiers.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBRubriqueTrieTableauFinanceTiers.Name));
     FSTraitementDonnees.RBTrieTableauFinanceTiersDescendant.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBTrieTableauFinanceTiersDescendant.Name));
     FSTraitementDonnees.RBTrieTableauFinanceTiersAscendant.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBTrieTableauFinanceTiersAscendant.Name));
     FSTraitementDonnees.RBInclureTitreDataTiers.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBInclureTitreDataTiers.Name));
     FSTraitementDonnees.RBInclureDetailMouvementParFamilles.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBInclureDetailMouvementParFamilles.Name));
     FSTraitementDonnees.RBAfficherAvisAnnules.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBAfficherAvisAnnules.Name));
     FSTraitementDonnees.RBAvisRisqueZero.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBAvisRisqueZero.Name));
     FSTraitementDonnees.RBAvisNonExecutes.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBAvisNonExecutes.Name));
     FSTraitementDonnees.RBAvisExecutes.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBAvisExecutes.Name));
     FSTraitementDonnees.RBAvisExecutesNonExecutes.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBAvisExecutesNonExecutes.Name));
     FSTraitementDonnees.RBAscendantRubriqueTrieTableauAvis.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBAscendantRubriqueTrieTableauAvis.Name));
     FSTraitementDonnees.RBDescendantRubriqueTrieTableauAvis.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBDescendantRubriqueTrieTableauAvis.Name));
     FSTraitementDonnees.RBInclureDetailArticle.Checked:=strtoboolean(FindDataOptionsTraitementDonnees(FSTraitementDonnees.RBInclureDetailArticle.Name));

     FSTraitementDonnees.EditRonStructure.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditRonStructure.Name);
     FSTraitementDonnees.EditTiersAnneeAffiche.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditTiersAnneeAffiche.Name);
     FSTraitementDonnees.EditTiersRubriqueTrie.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditTiersRubriqueTrie.Name);
     FSTraitementDonnees.EditExerciceTableauBohr.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditExerciceTableauBohr.Name);
     FSTraitementDonnees.EditAnneeAffiche.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditAnneeAffiche.Name);
     FSTraitementDonnees.EditRubriqueTrie.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditRubriqueTrie.Name);
     FSTraitementDonnees.EditTypeDataTrieTiers.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditTypeDataTrieTiers.Name);
     FSTraitementDonnees.TiersTypeTrie.Caption:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.TiersTypeTrie.Name);
     FSTraitementDonnees.EditIndiceRubriqueTriCol.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditIndiceRubriqueTriCol.Name);
     FSTraitementDonnees.EditNotColTableauDeBohrTiers.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditNotColTableauDeBohrTiers.Name);
     FSTraitementDonnees.EditIndiceRubriqueTriCol.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditIndiceRubriqueTriCol.Name);
     FSTraitementDonnees.EditTypeDataTrie.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditTypeDataTrie.Name);
     FSTraitementDonnees.EditTypeTrie.Text:=FindDataOptionsTraitementDonnees(FSTraitementDonnees.EditTypeTrie.Name);

     FSTraitementDonnees.IncrimenteEditTailleColonneMax.Position:=strtointeger(FindDataOptionsTraitementDonnees(FSTraitementDonnees.IncrimenteEditTailleColonneMax.Name));
     FSTraitementDonnees.IncrimentEditDataTiersNIF.Position:=strtointeger(FindDataOptionsTraitementDonnees(FSTraitementDonnees.IncrimentEditDataTiersNIF.Name));

     FSTraitementDonnees.AutoriserEnregistrementOptionsTraitementDonnees.Checked:=true;

     FSTraitementDonnees.RBOpererEnregistrerOptionsTraitementDonnees.Checked:=true;
end;

Function FindDataOptionsTraitementDonnees(TitreOptionIn:string):string;
var  FichierTexte:TextFile; AdresseFichierTexte,TexteLigne,TitreOptionTeste,DataOptionTeste:string;
     OKData:boolean;
begin
     FindDataOptionsTraitementDonnees:='';

     OpenFParc(RParc);
     AdresseFichierTexte:=RParc.Parcours+'\'+'FRegistreOptionsTraitementDonnees.txt';
     AssignFile(FichierTexte,AdresseFichierTexte);
     if FileExists(AdresseFichierTexte)then
     begin
          try
          Reset(FichierTexte);

          OKData:=false;
          while not eof(FichierTexte)and(OKData=false)do
          begin
               Readln(FichierTexte,TexteLigne);
               DataOptionsFicheSaisie(TexteLigne,TitreOptionTeste,DataOptionTeste);
               if(TitreOptionTeste=TitreOptionIn)then
               begin
                    OKData:=true;
                    FindDataOptionsTraitementDonnees:=DataOptionTeste;
              end;
         end;
         finally
         CloseFile(FichierTexte);
         end;
     end;
end;

Procedure EnregistrementOptionsTraitementDonnees(TitreOptionIn,DataOptionIn:string);
var  i:integer; FichierTexte:TextFile; AdresseFichierTexte,TexteLigne,TitreOptionTeste,DataOptionTeste:string;
     OKData:boolean;
     Source:file;
begin
     FSTraitementDonnees.FichierMemo.Clear;

     OpenFParc(RParc);
     AdresseFichierTexte:=RParc.Parcours+'\'+'FRegistreOptionsTraitementDonnees.txt';
     AssignFile(FichierTexte,AdresseFichierTexte);
     if FileExists(AdresseFichierTexte)then
     begin
          try
          Reset(FichierTexte);
          while not eof(FichierTexte)do
          begin
               Readln(FichierTexte,TexteLigne);
               FSTraitementDonnees.FichierMemo.Lines.Add(TexteLigne);
          end;
          finally
          CloseFile(FichierTexte);
          end;
     end;

     i:=0;
     OKData:=false;
     while(i<=FSTraitementDonnees.FichierMemo.Lines.Capacity)and(OKData=false)do
     begin
          TexteLigne:=FSTraitementDonnees.FichierMemo.Lines.Strings[i];
          DataOptionsTraitementDonnees(TexteLigne,TitreOptionTeste,DataOptionTeste);
          if(TitreOptionTeste=TitreOptionIn)
          then OKData:=true
          else i:=i+1;
     end;
     
     TexteLigne:='§'+TitreOptionIn+'§'+DataOptionIn;

     if(OKData=true)then
     begin
          FSTraitementDonnees.FichierMemo.Lines.Delete(i);
          FSTraitementDonnees.FichierMemo.Lines.Insert(i,TexteLigne);
     end
     else
     begin
          FSTraitementDonnees.FichierMemo.Lines.Add(TexteLigne);
     end;

     if FileExists(AdresseFichierTexte)then
     begin
          AssignFile(Source,AdresseFichierTexte);
          Erase(Source);
     end;

     FSTraitementDonnees.FichierMemo.Lines.SaveToFile(AdresseFichierTexte);

end;

Procedure DataOptionsTraitementDonnees(TexteLigne:string; var TitreOptionOut,DataOptionOut:string);
var  i,LTexte:integer;
begin
//  §TitreOption§Option
     TitreOptionOut:='';
     DataOptionOut:='';
     LTexte:=longueur(TexteLigne);

     if(LTexte>0)then
     begin
          if(TexteLigne[1]='§')then
          begin
               i:=2;
               while(i<=LTexte)and(TexteLigne[i]<>'§')do
               begin
                    TitreOptionOut:=TitreOptionOut+TexteLigne[i];
               i:=i+1;
               end;

               if(TexteLigne[i]='§')then
               begin
                    i:=i+1;
                    while(i<=LTexte)and(TexteLigne[i]<>'§')do
                    begin
                         DataOptionOut:=DataOptionOut+TexteLigne[i];
                    i:=i+1;
                    end;
               end;
          end;
     end;
end;

procedure TFSTraitementDonnees.RBAfficherMonvementAvecLocalisationGeoClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBInclureListeMouvementNonJustifierParAvisClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBAutoBaseAvisFichierConcerneClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.EditRonStructureChange(Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBPreciserTypeAvisClick(Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBPreciserNatureOperationMouvementClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBPreciserDetailOperationMouvementClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBPreciserDetailOperationQuantiteMouvementClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBPreciserDestinationMouvementClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBPreciserMarcheRealisationClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBNePasAfficherNewFinanceReseauxClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBModePayementNumAvisClick(Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBModePayementModePayementClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBAfficherValeurNulleClick(Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBAppliquerIndexationArchivePrelevementClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBAppliqueEnregistrementParametresReseauxClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBAfficheMoyenTransportClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.IncrimentEditDataTiersNIFClick(Sender: TObject;
  Button: TUDBtnType);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.IncrimenteEditTailleColonneMaxClick(
  Sender: TObject; Button: TUDBtnType);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBModePayementDateAvisClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBModePayementDateExecutionClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBActiverGroupeTiersClick(Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBTabulationClick(Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.RBInclureDetailMouvementParFamillesClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

procedure TFSTraitementDonnees.PageAutresShow(Sender: TObject);
begin
     FSTraitementDonnees.PageAutres.Enabled:= AccesPrivilegies('FS Paramètres avancés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',false);
     FSTraitementDonnees.CachePageAutres.Visible:=Not FSTraitementDonnees.PageAutres.Enabled;
end;

procedure TFSTraitementDonnees.BitBtn41Click(Sender: TObject);
begin
     FSTraitementDonnees.CacherTableauFinanceTiers.Visible:=true;
end;

procedure TFSTraitementDonnees.AffichePatientezDblClick(Sender: TObject);
begin
     if(FSTraitementDonnees.RBSuspendreTraitement.Checked=true) then FSTraitementDonnees.AffichePatientez.Visible:=false;
end;

procedure TFSTraitementDonnees.TableauRecapitulatifDetailMouvementsClick(
  Sender: TObject);
begin
     if(FSTraitementDonnees.RBImprimeTableauSelect.Checked=true)then FSTraitementDonnees.EditNomTableauImprime.Text:='TableauRecapitulatifDetailMouvements';
end;

procedure TFSTraitementDonnees.TableauDeBohrTiersContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     FSTraitementDonnees.RBCacherColonneBlClick.Checked:=false;
     FSTraitementDonnees.EditNotColTableauDeBohrTiers.Text:='';
     AjusterColWidth(FSTraitementDonnees.TableauDeBohrTiers,'',FSTraitementDonnees.EditNotColTableauDeBohrTiers.Text);

     EnregistrementOptionsTraitementDonnees(FSTraitementDonnees.EditNotColTableauDeBohrTiers.Name,FSTraitementDonnees.EditNotColTableauDeBohrTiers.Text);
end;


procedure TFSTraitementDonnees.RBInclureDetailArticleClick(
  Sender: TObject);
begin
     EnregistrerOptionsTraitementDonnees;
end;

end.
