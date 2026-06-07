unit UnitFSPrelevement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, ComCtrls, StdCtrls, Mask, Buttons, TeEngine,
  Series, TeeProcs, Chart;

type
  TFSPrelevement = class(TForm)
    PagePrincipale: TPageControl;
    PagePrelevementCompteursUniteFonds: TTabSheet;
    PageDetailArticleUniteFonds: TTabSheet;
    AffichePrelevementCompteur: TPanel;
    Panel1: TPanel;
    TableauDetailTypeUniteFonds: TStringGrid;
    TableauPrelevementCompteur: TStringGrid;
    EditNumPrelevementCompteur: TEdit;
    Bevel4: TBevel;
    Label7: TLabel;
    AfficheSaisiePrelevement: TPanel;
    Bevel1: TBevel;
    Panel5: TPanel;
    Bevel2: TBevel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditDateIn: TMaskEdit;
    EditEquipe: TEdit;
    EditHeureIn: TMaskEdit;
    EditDateFin: TMaskEdit;
    EditHeureFin: TMaskEdit;
    Panel6: TPanel;
    Bevel3: TBevel;
    Label1: TLabel;
    Label3: TLabel;
    EditCompteur: TEdit;
    EditArticle: TEdit;
    Panel7: TPanel;
    EditValeurPrelevement: TEdit;
    RadioGroup1: TRadioGroup;
    RBPrelevementIndice: TRadioButton;
    RBPrelevementMouvement: TRadioButton;
    RBInitialIndice: TRadioButton;
    EditTypePrelevement: TLabel;
    AffichePrelevementUniteFonds: TPanel;
    Label9: TLabel;
    Bevel5: TBevel;
    TableauPrelevementUniteFonds: TStringGrid;
    EditNumPrelevementUF: TEdit;
    AfficheSaisiePrelevementUniteFonds: TPanel;
    Bevel8: TBevel;
    Panel9: TPanel;
    Bevel6: TBevel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EditDateInUniteFonds: TMaskEdit;
    EditEquipeUniteFonds: TEdit;
    EditHeureInUniteFonds: TMaskEdit;
    EditDateFinUniteFonds: TMaskEdit;
    EditHeureFinUniteFonds: TMaskEdit;
    Panel11: TPanel;
    Panel10: TPanel;
    Bevel7: TBevel;
    Label13: TLabel;
    EditUniteFonds: TEdit;
    AfficheOperationsPrelevement: TPanel;
    BitArchiverPrelevement: TBitBtn;
    AfficheResultat: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    EditMontantCompteur: TMemo;
    EditMontantUniteFonds: TMemo;
    EditSoldePrelevement: TMemo;
    BitBtn2: TBitBtn;
    AfficheArchivePrelevement: TPanel;
    BitBtn3: TBitBtn;
    OperationPrelevement: TBitBtn;
    Bevel10: TBevel;
    TimerSoldePrelevement: TTimer;
    AfficheTiers: TPanel;
    TableauTiers: TStringGrid;
    EditMontatntDetailTypeUniteFonds: TMemo;
    Panel13: TPanel;
    TableauDetailTiers: TStringGrid;
    EditMontatntDetailTiers: TMemo;
    Label16: TLabel;
    Label17: TLabel;
    AfficheModePaiementUniteFonds: TPanel;
    Label18: TLabel;
    EditModePaiement: TEdit;
    EditNumPiece: TEdit;
    EditDomiciliation: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Bevel11: TBevel;
    TitreTiers: TLabel;
    EditCodeTiers: TEdit;
    EditTiers: TEdit;
    RadioGroup2: TRadioGroup;
    RBCumuleTiers: TRadioButton;
    RBDetailPieceTiers: TRadioButton;
    AfficheListePieceTiers: TPanel;
    TableauListePieceTiers: TStringGrid;
    EditAfficheCodeTiers: TEdit;
    Label21: TLabel;
    Bevel9: TBevel;
    EditAfficheTiers: TEdit;
    BitBtn5: TBitBtn;
    EditNumPrelevementUniteFonds: TEdit;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel14: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    ChoisirFont: TFontDialog;
    BitBtn6: TBitBtn;
    Label22: TLabel;
    EditPeriodePrelevement: TEdit;
    Label23: TLabel;
    EditNumEquipePrelevement: TEdit;
    EditEquipePrelevement: TEdit;
    Bevel12: TBevel;
    Label24: TLabel;
    EditCumuleSelectionTypeUniteFonds: TMemo;
    BitImprimerPrelevement: TBitBtn;
    BitAnnulerPrelevement: TBitBtn;
    BitOperationPrelevement: TBitBtn;
    SeparateurAfficheOperationsPrelevement: TPanel;
    MemoTitreEtat: TMemo;
    TableauTitreDetailTypeUniteFonds: TStringGrid;
    TableauTitreDetailTiers: TStringGrid;
    TableauTitrePrelevementCompteur: TStringGrid;
    TableauTitrePrelevementUniteFonds: TStringGrid;
    TableauTitreDetailArticle: TStringGrid;
    Panel2: TPanel;
    Panel15: TPanel;
    TabSheet2: TTabSheet;
    RadioGroup3: TRadioGroup;
    RBDetailCompteur: TCheckBox;
    RBDetailUniteFonds: TCheckBox;
    RBDetailTypeUniteFonds: TCheckBox;
    RBDetailTiers: TCheckBox;
    RBDetailArticle: TCheckBox;
    RadioGroup4: TRadioGroup;
    RBAjusterDetailCompteur: TCheckBox;
    RBAjusterDetailUniteFonds: TCheckBox;
    RBAjusterDetailTypeUniteFonds: TCheckBox;
    RBAjusterDetailTiers: TCheckBox;
    RBAjusterDetailArticle: TCheckBox;
    RadioGroup5: TRadioGroup;
    ClasseDetailCompteur: TEdit;
    ClasseDetailUniteFonds: TEdit;
    ClasseDetailTypeUniteFonds: TEdit;
    ClasseDetailTiers: TEdit;
    ClasseDetailArticle: TEdit;
    AfficheImprimerEtat: TPanel;
    BitImprimeEtatPrelevement: TBitBtn;
    TableauEffectifEquipe: TStringGrid;
    TableauTitreEffectifEquipe: TStringGrid;
    RBDetailEquipe: TCheckBox;
    ClasseDetailEquipe: TEdit;
    RBAjusterDetailEquipe: TCheckBox;
    RBDetailUtilisateur: TCheckBox;
    ClasseDetailUtilisateur: TEdit;
    RBAjusterDetailUtilisateur: TCheckBox;
    StaticText2: TStaticText;
    RBOrientationPapierPrelevement: TComboBox;
    RBNbrEquipe: TCheckBox;
    TableauEquipe: TStringGrid;
    TableauTitreEquipe: TStringGrid;
    RBNbrEquipeImprimer: TCheckBox;
    EditNumPrelevementTiers: TEdit;
    EditNumPrelevementFinTiers: TEdit;
    Diagramme: TChart;
    BitBtn90: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Series1: TBarSeries;
    RadioGroup6: TRadioGroup;
    RBTypeUFond: TRadioButton;
    RBUFond: TRadioButton;
    AfficheDetailCompteurs: TPanel;
    TableauDetailCompteurs: TStringGrid;
    BitBtn4: TBitBtn;
    BitBtn10: TBitBtn;
    AfficheDetailUniteFonds: TPanel;
    TableauDetailUniteFonds: TStringGrid;
    BitBtn11: TBitBtn;
    AfficheOperationDetailUF: TPanel;
    BitBtn12: TBitBtn;
    Bevel13: TBevel;
    BitAfficheOperationDetailUF: TBitBtn;
    EditNomEffectif: TEdit;
    EditMatricule: TEdit;
    Label25: TLabel;
    TableauChercheEffectif: TStringGrid;
    TableauChercheEquipe: TStringGrid;
    AfficheAffectationEffectifEquipe: TPanel;
    TableauAffectationEffectifEquipe: TStringGrid;
    AfficherOperationAffectationEffectifEquipe: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Bevel14: TBevel;
    EditNumAffectationEffectifEquipe: TEdit;
    EditNumCompteurAffecter: TEdit;
    EditNumUniteFonds: TEdit;
    EditValeurAffecter: TEdit;
    BitBtn15: TBitBtn;
    BitAffectationEffectifEquipe: TBitBtn;
    TableauSelection: TStringGrid;
    EditTrierAffectationEffectifEquipe: TEdit;
    EditFondRoulement: TMemo;
    Label30: TLabel;
    RBDetailFondRoulement: TCheckBox;
    ClasseDetailFondRoulement: TEdit;
    RBAjusterDetailFondRoulement: TCheckBox;
    TableauTitreAffectationEffectifEquipe: TStringGrid;
    EditCompteurAffecter: TEdit;
    EditUniteFondsAffecter: TEdit;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TableauDetailArticle: TStringGrid;
    EditMontantArticle: TMemo;
    Label15: TLabel;
    EditExtentionFichier: TComboBox;
    EditChoisAffichage: TComboBox;
    Label31: TLabel;
    TableauArborescenceArticle: TStringGrid;
    Bevel15: TBevel;
    Label32: TLabel;
    RBDetailArborescenceArticle: TCheckBox;
    ClasseDetailArborescenceArticle: TEdit;
    RBAjusterDetailArborescenceArticle: TCheckBox;
    TableauTitreArborescenceArticle: TStringGrid;
    AfficheNouveauTiers: TPanel;
    Bevel24: TBevel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Bevel26: TBevel;
    Label49: TLabel;
    Label50: TLabel;
    EditNomTiersNew: TEdit;
    EditPrenomTiersNew: TEdit;
    EditAdresseTiersNew: TEdit;
    BitBtn13: TBitBtn;
    BitValiderNouveauTiers: TBitBtn;
    EditCompteTiersRecherche: TEdit;
    EditCodeTiersNew: TEdit;
    TableauCompteTiers: TStringGrid;
    PageRecapitulatif: TTabSheet;
    TableauRecapitulatif: TStringGrid;
    TableauTitreRecapitulatif: TStringGrid;
    Panel20: TPanel;
    RBDetailRecapitulatif: TCheckBox;
    ClasseDetailRecapitulatif: TEdit;
    RBAjusterDetailRecapitulatif: TCheckBox;
    Label33: TLabel;
    EditNbrChiffreApreVerguleCompteur: TEdit;
    UpDown1: TUpDown;
    EditRechercheTiers: TEdit;
    TableauListeDetailArticleUnitesFonds: TStringGrid;
    AfficheOperationTableauListeDetailArticleUnitesFonds: TPanel;
    BitBtn18: TBitBtn;
    BitOperationTableauListeDetailArticleUnitesFonds: TBitBtn;
    Bevel16: TBevel;
    TableauDetailArticleTiers: TStringGrid;
    AfficheDetaildesArticlesArchive: TPanel;
    Bevel19: TBevel;
    Bevel20: TBevel;
    BitBtn19: TBitBtn;
    TableauDetailArticlePrelevementArchive: TStringGrid;
    BitBtn20: TBitBtn;
    EditMontantRestantArchive: TEdit;
    AfficheRechercheTiersPrelevement: TPanel;
    EditRechercheNomPrenomTiers: TEdit;
    RBAutoriseModificationUnitesFonds: TCheckBox;
    Bevel21: TBevel;
    Bevel22: TBevel;
    EditNumStructure: TEdit;
    EditStructure: TEdit;
    Label35: TLabel;
    EditModifierPrelevement: TEdit;
    RBSuppressionAutorisee: TCheckBox;
    RBDetailArticleCumuleArticle: TCheckBox;
    BitBtn14: TBitBtn;
    Bevel23: TBevel;
    Bevel25: TBevel;
    Bevel27: TBevel;
    BitBtn21: TBitBtn;
    AfficheDetaildesArticles: TPanel;
    Bevel18: TBevel;
    Label34: TLabel;
    TableauDetailArticlePrelevement: TStringGrid;
    EditMontantRestant: TEdit;
    EditNbrChiffreApresVergule: TEdit;
    UpDown2: TUpDown;
    AfficheOperationMoyenTransport: TPanel;
    Bevel62: TBevel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label76: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Bevel28: TBevel;
    EditPositionMoyenTransport: TEdit;
    EditMoyenTransport: TEdit;
    EditMatriculeTransport: TEdit;
    EditNomChauffeur: TEdit;
    EditPrenomChauffeur: TEdit;
    EditPieceIdentite: TEdit;
    EditTypeFiche: TEdit;
    EditNumMovementPrelevement: TEdit;
    EditNumFiche: TEdit;
    BitBtn24: TBitBtn;
    EditCodeTiersValider: TEdit;
    EditMatriculeEffectifValider: TEdit;
    Bevel29: TBevel;
    BitValiderDetailArticlePrelevement: TBitBtn;
    Bevel30: TBevel;
    Bevel17: TBevel;
    Bevel31: TBevel;
    EditValeurPrelevementUniteFonds: TMemo;
    BitBtn16: TBitBtn;
    Bevel32: TBevel;
    TabSheet5: TTabSheet;
    TableauEtatStockPrelevement: TStringGrid;
    RBDetailArticleSimple: TCheckBox;
    EditCalculeValeur: TComboBox;
    Label36: TLabel;
    RBEmargementPageSepare: TCheckBox;
    RBTrieRubriqueSelect: TCheckBox;
    TimerLancerAfficheTiers: TTimer;
    TimerAfficheTiers: TTimer;
    RBChargerPointeur: TCheckBox;
    AffichePatienterArchivePrelevement: TPanel;
    EditPatienterArchivePrelevement: TEdit;
    TimerArchivePrelevement: TTimer;
    TableauEffectifEquipeArchivage: TStringGrid;
    EditARowTableauPrelevementUniteFonds: TEdit;
    AfficheDataCompteur: TPanel;
    EditControleMontantCompteurTableauPrelevementCompteur: TEdit;
    EditControleMontantCompteurTableauDetailTiers: TEdit;
    AfficheDataUnitesFonds: TPanel;
    EditControleMontantUFTableauPrelevementUniteFonds: TEdit;
    EditControleMontantUFTableauDetailTiers: TEdit;
    AfficheSolde: TPanel;
    EditControleSoldeTableauEffectifEquipe: TEdit;
    EditControleSoldeAfficherPrelevement: TEdit;
    TableauTitreUtilisateur: TStringGrid;
    TableauUtilisateur: TStringGrid;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    AfficheValiderEcart: TPanel;
    EditEcartAutorise: TEdit;
    BitValiderEcart: TBitBtn;
    AffichePatienterSVP: TPanel;
    EditSoldeCompteur: TMemo;
    Label48: TLabel;
    EditSoldeUnitesFonds: TMemo;
    Label51: TLabel;
    EditSoldedesSoldes: TMemo;
    Label52: TLabel;
    RBArchiveModifier: TCheckBox;
    EditValeurPrelevementAttribueTiers: TEdit;
    Label53: TLabel;
    Label54: TLabel;
    EditValeurPrelevementNonAttribueTiers: TEdit;
    AfficheTravauxPrelevementAchever: TPanel;
    BitPrint: TBitBtn;
    BitSave: TBitBtn;
    TableauControleAttributionArticleAuxUnitesFonds: TStringGrid;
    BitBtn1: TBitBtn;
    Bevel33: TBevel;
    Bevel34: TBevel;
    EditNumPrelevementMax: TEdit;
    AfficheOperationTableauDetailArticleTiers: TPanel;
    Bevel35: TBevel;
    BitBtn17: TBitBtn;
    BitOperationTableauDetailArticleTiers: TBitBtn;
    BitChargementEffectif: TBitBtn;
    Bevel36: TBevel;
    BitBtn22: TBitBtn;
    EditSourceCommande: TEdit;
    RBAutoriserValidationSansJustifierArticles: TCheckBox;
    EditNumUniteFondsSelect: TEdit;
    Bevel37: TBevel;
    RBUnTableauParPage: TCheckBox;
    EditListeNumPrelevementUF: TEdit;
    EditNbrListeNumPrelevementUFNew: TEdit;
    EditNbrListeNumPrelevementUFAdd: TEdit;
    RNCummulerMemeUniteFonds: TCheckBox;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    AfficheEcartsEtatsPrincipal: TPanel;
    AfficheDataCompteurPrincipal: TPanel;
    Label60: TLabel;
    EditControleMontantCompteurTableauPrelevementCompteurPrincipal: TEdit;
    EditControleMontantCompteurTableauDetailTiersPrincipal: TEdit;
    EditSoldeCompteurPrincipal: TMemo;
    Panel21: TPanel;
    AfficheDataUnitesFondsPrincipal: TPanel;
    Label63: TLabel;
    EditControleMontantUFTableauPrelevementUniteFondsPrincipal: TEdit;
    EditControleMontantUFTableauDetailTiersPrincipal: TEdit;
    EditSoldeUnitesFondsPrincipal: TMemo;
    Panel22: TPanel;
    AfficheSoldePrincipal: TPanel;
    Label66: TLabel;
    EditControleSoldeTableauEffectifEquipePrincipal: TEdit;
    EditControleSoldeAfficherPrelevementPrincipal: TEdit;
    EditSoldedesSoldesPrincipal: TMemo;
    Panel23: TPanel;
    Panel19: TPanel;
    AfficheEcartsEtatsRecap: TPanel;
    AfficheDataCompteurRecap: TPanel;
    Label58: TLabel;
    EditControleMontantCompteurTableauPrelevementCompteurRecap: TEdit;
    EditControleMontantCompteurTableauDetailTiersRecap: TEdit;
    EditSoldeCompteurRecap: TMemo;
    Panel18: TPanel;
    AfficheDataUnitesFondsRecap: TPanel;
    Label59: TLabel;
    EditControleMontantUFTableauPrelevementUniteFondsRecap: TEdit;
    EditControleMontantUFTableauDetailTiersRecap: TEdit;
    EditSoldeUnitesFondsRecap: TMemo;
    Panel24: TPanel;
    AfficheSoldeRecap: TPanel;
    Label61: TLabel;
    EditControleSoldeTableauEffectifEquipeRecap: TEdit;
    EditControleSoldeAfficherPrelevementRecap: TEdit;
    EditSoldedesSoldesRecap: TMemo;
    Panel25: TPanel;
    Panel26: TPanel;
    RBIndiceRubriqueTriCol: TCheckBox;
    EditIndiceRubriqueTriCol: TEdit;
    EditTypeDataTrie: TEdit;
    EditTypeTrie: TComboBox;
    RBValeurPrecise: TCheckBox;
    Bevel38: TBevel;
    Bevel39: TBevel;
    AfficheOptionTableauDetailArticle: TPanel;
    BitBtn23: TBitBtn;
    BitBtn25: TBitBtn;
    Bevel40: TBevel;
    Label62: TLabel;
    Bevel41: TBevel;
    EditQteInitialeDetailArticle: TEdit;
    EditQteEntreeDetailArticle: TEdit;
    Label64: TLabel;
    EditQteSortieDetailArticle: TEdit;
    Label65: TLabel;
    EditStockDetailArticle: TEdit;
    Label67: TLabel;
    Label68: TLabel;
    EditDesignationDetailArticle: TEdit;
    Bevel42: TBevel;
    EditCodeDetailArticle: TEdit;
    EditTypeProces: TEdit;
    EditFichierConcerne: TEdit;
    RBRechercheTiersMotsCles: TCheckBox;
    AfficheAttenteAffichePrelevement: TPanel;
    EditAttenteAffichePrelevement: TEdit;
    ProgressAttenteAffichePrelevement: TProgressBar;
    PourcentageAttenteAffichePrelevement: TLabel;
    TimerProgressAttenteAffichePrelevement: TTimer;
    BitBtn9: TBitBtn;
    RBControlerPrelevementAChaqueOperation: TCheckBox;
    OKEffectifEquipe: TCheckBox;
    OKAffectationEffectifEquipe: TCheckBox;
    OKPrelevementUniteFonds: TCheckBox;
    OKDetailArticle: TCheckBox;
    OKArborescenceArticle: TCheckBox;
    OKDetailTypeUniteFonds: TCheckBox;
    OKDetailTiers: TCheckBox;
    OKEtatStockPrelevement: TCheckBox;
    OKRecapitulatif: TCheckBox;
    RBControlerSoldeAChaqueOperation: TCheckBox;
    RBRecherchePrelevementActive: TCheckBox;
    procedure TableauPrelevementCompteurClick(Sender: TObject);
    procedure TableauPrelevementCompteurKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditValeurPrelevementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBPrelevementIndiceClick(Sender: TObject);
    procedure RBPrelevementMouvementClick(Sender: TObject);
    procedure BitArchiverPrelevementClick(Sender: TObject);
    procedure RBInitialIndiceClick(Sender: TObject);
    procedure TableauPrelevementUniteFondsKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableauPrelevementUniteFondsClick(Sender: TObject);
    procedure OperationPrelevementClick(Sender: TObject);
    procedure TimerSoldePrelevementTimer(Sender: TObject);
    procedure TableauTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumPieceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDomiciliationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure EditValeurPrelevementKeyPress(Sender: TObject;
      var Key: Char);
    procedure RBCumuleTiersClick(Sender: TObject);
    procedure RBDetailPieceTiersClick(Sender: TObject);
    procedure TableauListePieceTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure TableauDetailTypeUniteFondsDblClick(Sender: TObject);
    procedure BitOperationPrelevementClick(Sender: TObject);
    procedure BitImprimerPrelevementClick(Sender: TObject);
    procedure BitAnnulerPrelevementClick(Sender: TObject);
    procedure BitImprimeEtatPrelevementClick(Sender: TObject);
    procedure RBDetailCompteurClick(Sender: TObject);
    procedure RBDetailUniteFondsClick(Sender: TObject);
    procedure RBDetailTypeUniteFondsClick(Sender: TObject);
    procedure RBDetailTiersClick(Sender: TObject);
    procedure RBDetailArticleClick(Sender: TObject);
    procedure RBNbrEquipeClick(Sender: TObject);
    procedure RBNbrEquipeImprimerClick(Sender: TObject);
    procedure TableauPrelevementCompteurKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure PageDetailArticleUniteFondsShow(Sender: TObject);
    procedure PagePrelevementCompteursUniteFondsShow(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TableauDetailArticleKeyPress(Sender: TObject; var Key: Char);
    procedure TableauDetailArticleClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure TableauPrelevementUniteFondsKeyPress(Sender: TObject;
      var Key: Char);
    procedure TableauDetailUniteFondsClick(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitAfficheOperationDetailUFClick(Sender: TObject);
    procedure TableauDetailUniteFondsKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditNomEffectifEnter(Sender: TObject);
    procedure TableauChercheEffectifKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauChercheEffectifDblClick(Sender: TObject);
    procedure EditEquipePrelevementEnter(Sender: TObject);
    procedure TableauChercheEquipeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauChercheEquipeDblClick(Sender: TObject);
    procedure TableauAffectationEffectifEquipeClick(Sender: TObject);
    procedure TableauAffectationEffectifEquipeKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauAffectationEffectifEquipeKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitAffectationEffectifEquipeClick(Sender: TObject);
    procedure TableauSelectionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumAffectationEffectifEquipeKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditNumCompteurAffecterEnter(Sender: TObject);
    procedure EditNumCompteurAffecterKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditNumUniteFondsEnter(Sender: TObject);
    procedure EditNumUniteFondsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValeurAffecterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBDetailFondRoulementClick(Sender: TObject);
    procedure EditChoisAffichageKeyPress(Sender: TObject; var Key: Char);
    procedure RBDetailArborescenceArticleClick(Sender: TObject);
    procedure EditExtentionFichierSelect(Sender: TObject);
    procedure EditChoisAffichageSelect(Sender: TObject);
    procedure EditExtentionFichierKeyPress(Sender: TObject; var Key: Char);
    procedure TableauCompteTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitValiderNouveauTiersClick(Sender: TObject);
    procedure TableauTiersKeyPress(Sender: TObject; var Key: Char);
    procedure TableauTiersClick(Sender: TObject);
    procedure EditCodeTiersNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomTiersNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPrenomTiersNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAdresseTiersNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn13Click(Sender: TObject);
    procedure RBDetailRecapitulatifClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure PageRecapitulatifShow(Sender: TObject);
    procedure TableauDetailArticlePrelevementKeyPress(Sender: TObject;
      var Key: Char);
    procedure TableauDetailArticlePrelevementKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitOperationTableauListeDetailArticleUnitesFondsClick(Sender: TObject);
    procedure TableauListeDetailArticleUnitesFondsKeyPress(Sender: TObject;
      var Key: Char);
    procedure TableauDetailTiersClick(Sender: TObject);
    procedure TableauDetailArticlePrelevementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauDetailArticlePrelevementDblClick(Sender: TObject);
    procedure TableauDetailTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure TableauDetailArticlePrelevementArchiveDblClick(
      Sender: TObject);
    procedure TableauDetailArticlePrelevementArchiveKeyDown(
      Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TableauDetailArticlePrelevementArchiveKeyPress(
      Sender: TObject; var Key: Char);
    procedure TableauDetailArticlePrelevementArchiveKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EditRechercheNomPrenomTiersKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditRechercheNomPrenomTiersKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure AfficheRechercheTiersPrelevementExit(Sender: TObject);
    procedure TableauTiersDblClick(Sender: TObject);
    procedure AfficheSaisiePrelevementUniteFondsClick(Sender: TObject);
    procedure RBDetailArticleCumuleArticleClick(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure EditMoyenTransportKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMatriculeTransportKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomChauffeurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPrenomChauffeurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPieceIdentiteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitValiderDetailArticlePrelevementClick(Sender: TObject);
    procedure AfficheOperationMoyenTransportEnter(Sender: TObject);
    procedure EditValeurPrelevementUniteFondsKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditValeurPrelevementUniteFondsKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtn16Click(Sender: TObject);
    procedure TableauListeDetailArticleUnitesFondsDblClick(
      Sender: TObject);
    procedure EditValeurPrelevementUniteFondsKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditCalculeValeurKeyPress(Sender: TObject; var Key: Char);
    procedure EditCalculeValeurChange(Sender: TObject);
    procedure RBEmargementPageSepareClick(Sender: TObject);
    procedure AfficheSaisiePrelevementMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableauChercheEquipeMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableauChercheEffectifMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TimerLancerAfficheTiersTimer(Sender: TObject);
    procedure TimerAfficheTiersTimer(Sender: TObject);
    procedure EditRechercheNomPrenomTiersEnter(Sender: TObject);
    procedure TimerArchivePrelevementTimer(Sender: TObject);
    procedure TableauPrelevementUniteFondsEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditCodeTiersEnter(Sender: TObject);
    procedure BitValiderEcartClick(Sender: TObject);
    procedure RBAutoriseModificationUnitesFondsClick(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure BitSaveClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditNumPrelevementCompteurKeyPress(Sender: TObject;
      var Key: Char);
    procedure TableauDetailArticleTiersKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitOperationTableauDetailArticleTiersClick(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure TableauDetailArticleTiersClick(Sender: TObject);
    procedure BitChargementEffectifClick(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure TableauControleAttributionArticleAuxUnitesFondsDblClick(
      Sender: TObject);
    procedure AfficheListePieceTiersMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheDetailUniteFondsMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheSaisiePrelevementUniteFondsMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableauTiersMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AfficheRechercheTiersPrelevementMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableauListeDetailArticleUnitesFondsContextPopup(
      Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure TableauListeDetailArticleUnitesFondsClick(Sender: TObject);
    procedure TableauDetailTiersContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure RNCummulerMemeUniteFondsClick(Sender: TObject);
    procedure TableauPrelevementUniteFondsContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure EditQteInitialeDetailArticleKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauPrelevementCompteurDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauChercheEquipeDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauChercheEffectifDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauPrelevementUniteFondsDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauDetailUniteFondsDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauCompteTiersDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauDetailArticlePrelevementDrawCell(Sender: TObject;
      ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauTiersDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TableauListePieceTiersDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauControleAttributionArticleAuxUnitesFondsDrawCell(
      Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure TableauDetailCompteursDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauAffectationEffectifEquipeDrawCell(Sender: TObject;
      ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauDetailTypeUniteFondsDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauDetailTiersDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauDetailArticleTiersDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauDetailArticlePrelevementArchiveDrawCell(
      Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure TableauDetailArticleDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauArborescenceArticleDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauEtatStockPrelevementDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauUtilisateurDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauEffectifEquipeDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauRecapitulatifDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauListeDetailArticleUnitesFondsDrawCell(Sender: TObject;
      ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauSelectionDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure TimerProgressAttenteAffichePrelevementTimer(Sender: TObject);
    procedure AfficheAttenteAffichePrelevementExit(Sender: TObject);
    procedure AfficheAttenteAffichePrelevementEnter(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSPrelevement: TFSPrelevement;

Procedure NumClasse(EditClasse:TEdit; OKClassement:boolean);
Function  ControleNext(EditClasse:TEdit):boolean;
Function  CumuleAnterieurMouvementCompteur(NumPrelevement,NumCompteur:integer):real;
Procedure DetailMouvementCompteur(TableauDetail:TStringGrid; NumPrelevement,NumPrelevementFin,Matricule,NumCompteur,CodeArticle:string);
Procedure ListeEffectifEquipePrelevement(Tableau:TStringGrid; NumPrelevement:string);
Procedure CummuleQtePrelevementJustifiser(NumPrelevement,NumPrelevementUF,Matricule,CodeTiers,CodeArticle:string; InclureDivers:boolean;  var  QuantiteGlobale,QuantiteJustifier:real);
Procedure ListeDetailArticlePrelevementUniteFonds(TableauDetailArticlePrelevementUniteFonds:TStringGrid; ListeNumPrelevement,ListeNumPrelevementUniteFonds,Matricule,CodeTiers,DateDebut,DateFin:string; AccepteInfoVideNP,AccepteInfoVideNPUF,AccepteInfoVideMatricule,AccepteInfoVideCodeTiers,CumulerArticle:boolean; NbrRowIn:integer; NumStructure:string; var NbrRowOut:integer);
Procedure ProcEditValeurPrelevementUniteFondsKeyDown(ActiverAffichage:boolean; var NumPrelevementUniteFonds,ARow:integer);
Function  IndiqueNumStructurePrelevement(NumPrelevement:integer):string;
Procedure InitialisationFichePrelevement;
Procedure ListePrelevementUnitesFonds(TableauPrelevementUnitesFonds:TStringGrid; NumPrelevement,MatriculeEffectif,ValeurPrecise,DateMouvementDebut,DateMouvementFin:string);
Procedure TruncateFicheInitialePrelevement;
Procedure MiseAJourDetailArticleDiversTiers(NumPrelevement,NumPrelevementUF,NumEquipe,Matricule,DatePrelevement,HeurePrelevement,TypeProces,FichierConcerneTiers,CodeTiers,CodeArticle:string; QuantiteJustifier,PrixUnitaire,CoutUnitaire:real);
Procedure MiseAJourPrelevementUFDiversTiers(NumPrelevement,NumEquipe,Matricule,DatePrelevement,HeurePrelevement,TypeProces,FichierConcerneTiers,CodeTiers,CodeArticle:string; ValeurPrelevement:real; var NumPrelevementUF:integer);
Procedure ExecuterMiseAJourDetailArticleDiversTiers;
Procedure MiseAJourPrelevement(NumPrelevement,Matricule:string; MontantPrelevement,MontantFondRoulement,MontantUnitesFonds,SoldePrelevement:real; OKControleArchive:boolean);
Procedure AfficherDetailArticlePrelevementMoyenTransport(CodeTiers:string);
Procedure ValiderDetailArticlesMoyentransport(ActiverAffichage:boolean; NumPrelevementUF:integer);
Procedure ListeEtatStockPrelevement(TableauEtatStockPrelevement,TableauCompteur:TStringGrid; NumStructure:string);
Procedure AfficheEtatStockPrelevement(TableauEtatStockPrelevement:TStringGrid; NumStructure,NumPrelevement,Matricule:string);
Procedure AfficherEnregistrementParametrePrintPrelevement;
Procedure EnregistrementParametrePrintPrelevement;
Function ControleAttributionArticleAuxUnitesFonds(TableauDetailUniteFonds:TStringGrid; NumPrelevementCompteur,Matricule,NumUniteFonds:string):boolean;
Procedure ValeurArticlesAttributionAuxUnitesFonds(NumPrelevementCompteur,Matricule,NumPrelevementUF,CodeArticle,CodeTiers:string; InclureDivers:boolean; var ValeurUF,ValeurGlobale:real);
Procedure ProcTableauDetailArticlePrelevementDblClick;
Procedure AfficherSoldeControle;
Procedure CreationRegistreEtatStockPrelevement;
Procedure MiseAJourRegistreEtatStockPrelevement;
Procedure EnregistrerCreationMiseAJourRegistreEtatStockPrelevement;
Procedure AfficheEtatStockPrelevementCreation(TableauEtatStockPrelevement:TStringGrid; NumStructure,NumPrelevement,Matricule:string);

implementation

Uses UnitInitialisation, API_LiberationProcessus, UnitFSMenuPrincipal, UnitFSNowPrelevement, UnitFSAvis, UnitFSTiers, UnitFSGenerateurBase,
     UnitSuppression, UnitFSFicheSaisie, UnitFSTraitementDonnees, UnitFSMoyenTransport,
     UnitFSListePrelevement, UnitFSAffichage, UnitFSTravauxFinAnnee, UnitFSParametresAvances;

var
   RParc:RInstalle;
   FParc:FInstalle;
   ParcInstalle:string250;

   RRegistre:REnregistrement;
   FRegistre:FEnregistrement;
   ChEnregistrement:string250;

   TUtilisateur:TUtilisateurs;
   RUtilisateur:RUtilisateurs;
   FUtilisateur:FUtilisateurs;
   ChUtilisateur:string250;

   TPosteMenu:TPosteMenus;
   RPosteMenu:RPosteMenus;
   FPosteMenu:FPosteMenus;
   ChPosteMenu:string250;

   TAccesPrivilegie:TAccesPrivilegies;
   RAccesPrivilegie:RAccesPrivilegies;
   FAccesPrivilegie:FAccesPrivilegies;
   ChAccesPrivilegie:string250;

   TPrelevement:TPrelevements;
   RPrelevement:RPrelevements;
   FPrelevement:FPrelevements;
   ChPrelevement:string250;

   TCompteur:TCompteurs;
   RCompteur:RCompteurs;
   FCompteur:FCompteurs;
   ChCompteur:string250;

   TPrelevementCompteur,TArchivePrelevementCompteur,TCopiePrelevementCompteur:TRegistrePrelevementCompteurs;
   RPrelevementCompteur,RArchivePrelevementCompteur,RCopiePrelevementCompteur:RRegistrePrelevementCompteurs;
   FPrelevementCompteur,FArchivePrelevementCompteur,FCopiePrelevementCompteur:FRegistrePrelevementCompteurs;
   ChPrelevementCompteur,ChArchivePrelevementCompteur,ChCopiePrelevementCompteur:string250;


   TEquipe:TEquipes;
   REquipe:REquipes;
   FEquipe:FEquipes;
   ChEquipe:string250;

   TEffectifEquipe:TEffectifEquipes;
   REffectifEquipe:REffectifEquipes;
   FEffectifEquipe:FEffectifEquipes;
   ChEffectifEquipe:string250;

   TPrelevementEffectifEquipe,TArchivePrelevementEffectifEquipe:TRegistrePrelevementEffectifEquipes;
   RPrelevementEffectifEquipe,RArchivePrelevementEffectifEquipe:RRegistrePrelevementEffectifEquipes;
   FPrelevementEffectifEquipe,FArchivePrelevementEffectifEquipe:FRegistrePrelevementEffectifEquipes;
   ChPrelevementEffectifEquipe,ChArchivePrelevementEffectifEquipe:string250;

   TTypeUniteFonds:TTypeUniteFondss;
   RTypeUniteFonds:RTypeUniteFondss;
   FTypeUniteFonds:FTypeUniteFondss;
   ChTypeUniteFonds:string250;

   TUniteFonds:TUniteFondss;
   RUniteFonds:RUniteFondss;
   FUniteFonds:FUniteFondss;
   ChUniteFonds:string250;

   TPrelevementUniteFonds,TPrelevementUniteFondsCopie,TArchivePrelevementUniteFonds:TRegistrePrelevementUniteFondss;
   RPrelevementUniteFonds,RPrelevementUniteFondsCopie,RArchivePrelevementUniteFonds:RRegistrePrelevementUniteFondss;
   FPrelevementUniteFonds,FPrelevementUniteFondsCopie,FArchivePrelevementUniteFonds:FRegistrePrelevementUniteFondss;
   ChPrelevementUniteFonds,ChPrelevementUniteFondsCopie,ChArchivePrelevementUniteFonds:string250;

   TAvis:TAviss;
   RAvis:RAviss;
   FAvis:FAviss;
   ChAvis:string250;

   TTypeAvis:TTypeAviss;
   RTypeAvis:RTypeAviss;
   FTypeAvis:FTypeAviss;
   ChTypeAvis:string250;

{$R *.dfm}

Procedure DetailMouvementCompteur(TableauDetail:TStringGrid; NumPrelevement,NumPrelevementFin,Matricule,NumCompteur,CodeArticle:string);
var  i:integer;  OKPrelevement:boolean;    FichierConcerne,PositionPrelevement:string; ValeurMouvement,ValeurSortie,PrelevementSortie,Solde:real;
begin
     TableauDetail.Cols[0].Text:='N°';
     TableauDetail.Cols[1].Text:='Date';
     TableauDetail.Cols[2].Text:='Heure';
     TableauDetail.Cols[3].Text:='N°Ct';
     TableauDetail.Cols[4].Text:='Compteur';
     TableauDetail.Cols[5].Text:='Code Article';
     TableauDetail.Cols[6].Text:='Désignation';
     TableauDetail.Cols[7].Text:='Entrée';
     TableauDetail.Cols[8].Text:='Sortie';
     TableauDetail.RowCount:=2;
     TableauDetail.Rows[1].Text:='';

     if(NumPrelevement<>'')and(NumPrelevementFin='')then
     begin
          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);
          if(RPrelevement.Archiver=false)
          then FichierConcerne:='FPrelevementCompteur'
          else FichierConcerne:='FArchivePrelevementCompteur';
     end
     else
     begin
          FichierConcerne:='FArchivePrelevementCompteur';
     end;

     TableauDetail.Cells[5,i]:='Solde:';
     PrelevementSortie:=0;
     ValeurMouvement:=0;
     ValeurSortie:=0;

     OpenFParc(RParc);
     ChPrelevementCompteur:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FPrelevementCompteur,ChPrelevementCompteur);
     try
     if FileExists(ChPrelevementCompteur)then
     Reset(FPrelevementCompteur)
     else Rewrite(FPrelevementCompteur);
     Seek(FPrelevementCompteur,0);
     i:=1;
     while not eof(FPrelevementCompteur)do
     begin
          read(FPrelevementCompteur,RPrelevementCompteur);

          OKPrelevement:=false;

          if(RPrelevementCompteur.ValeurMouvement<>0)
          or(RPrelevementCompteur.ValeurPrelevement<>RPrelevementCompteur.ValeurInitiale)
          then OKPrelevement:=true
          else OKPrelevement:=false;

          if(OKPrelevement=true)then
          begin
               if(NumCompteur<>'')then
               begin
                    if(RPrelevementCompteur.NumCompteur=strtointeger(NumCompteur))
                    then OKPrelevement:=true
                    else OKPrelevement:=false;
               end;
          end;

          if(OKPrelevement=true)then
          begin
               if(CodeArticle<>'')then
               begin
                    if(RPrelevementCompteur.CodeArticle=CodeArticle)
                    then OKPrelevement:=true
                    else OKPrelevement:=false;
               end;
          end;

          if(OKPrelevement=true)then
          begin
               if(Matricule<>'')then
               begin
                    if(RPrelevementCompteur.Matricule=Matricule)
                    then OKPrelevement:=true
                    else OKPrelevement:=false;
               end;
          end;

          if(OKPrelevement=true)then
          begin
               if(NumPrelevement<>'')and(NumPrelevementFin<>'')then
               begin
                    if(RPrelevementCompteur.NumPrelevement<strtointeger(NumPrelevement))then
                    begin
                         OKPrelevement:=false;
                         PrelevementSortie:=0;
                         RCompteur:=ChercherCompteur(RPrelevementCompteur.NumCompteur);

                         TableauDetail.Cells[7,1]:=Vergule(floattostr(strtoreal(TableauDetail.Cells[7,1])+RPrelevementCompteur.ValeurMouvement),'2','C','');

                         if(RCompteur.TypeIndicePrelevement='Cumul des Sorties.')then
                         begin
                              PrelevementSortie:=RPrelevementCompteur.ValeurPrelevement-RPrelevementCompteur.ValeurInitiale;
                         end;

                         if(RCompteur.TypeIndicePrelevement='Stock restant.')then
                         begin
                              PrelevementSortie:=RPrelevementCompteur.ValeurPrelevement;
                         end;

                         if(RCompteur.TypeIndicePrelevement='Stock Sortant.')then
                         begin
                              PrelevementSortie:=RPrelevementCompteur.ValeurInitiale+RPrelevementCompteur.ValeurMouvement-RPrelevementCompteur.ValeurPrelevement;
                         end;

                         TableauDetail.Cells[8,1]:=Vergule(Floattostr(strtoreal(TableauDetail.Cells[8,1])+PrelevementSortie),'2','C','');
                    end;
               end;
          end;

          if(OKPrelevement=true)then
          begin
               if(NumPrelevement<>'')and(NumPrelevementFin='')then
               begin
                    if(RPrelevementCompteur.NumPrelevement<=strtointeger(NumPrelevement))
                    then OKPrelevement:=true
                    else OKPrelevement:=false;
               end
               else
               begin
                    if(RPrelevementCompteur.NumPrelevement>=strtointeger(NumPrelevement))
                    and(RPrelevementCompteur.NumPrelevement<=strtointeger(NumPrelevementFin))
                    then OKPrelevement:=true
                    else OKPrelevement:=false;
               end;
          end;

          if(OKPrelevement=true)then
          begin
               i:=i+1;
               TableauDetail.Rows[i].Text:=inttostr(i);
               TableauDetail.Cells[1,i]:=RPrelevementCompteur.DatePrelevement;
               TableauDetail.Cells[2,i]:=RPrelevementCompteur.HeurePrelevement;
               TableauDetail.Cells[3,i]:=inttostr(RPrelevementCompteur.NumCompteur);

               RCompteur:=ChercherCompteur(RPrelevementCompteur.NumCompteur);
               TableauDetail.Cells[4,i]:=RCompteur.DesignationCompteur;

               TableauDetail.Cells[5,i]:=RPrelevementCompteur.CodeArticle;
               TableauDetail.Cells[6,i]:=ChercherStockArticle('Article','',RPrelevementCompteur.CodeArticle,'',OKStockRecherche,RubriqueRecherche).Design;
               TableauDetail.Cells[7,i]:=Vergule(floattostr(RPrelevementCompteur.ValeurMouvement),'2','C','');

               PrelevementSortie:=0;

               if(RCompteur.TypeIndicePrelevement='Cumul des Sorties.')then
               begin
                    PrelevementSortie:=RPrelevementCompteur.ValeurPrelevement-RPrelevementCompteur.ValeurInitiale;
               end;

               if(RCompteur.TypeIndicePrelevement='Stock restant.')then
               begin
                    PrelevementSortie:=RPrelevementCompteur.ValeurPrelevement;
               end;

               if(RCompteur.TypeIndicePrelevement='Stock Sortant.')then
               begin
                    PrelevementSortie:=RPrelevementCompteur.ValeurInitiale+RPrelevementCompteur.ValeurMouvement-RPrelevementCompteur.ValeurPrelevement;
               end;

               TableauDetail.Cells[8,i]:=Vergule(floattostr(PrelevementSortie),'2','C','');

               ValeurMouvement:=ValeurMouvement+RPrelevementCompteur.ValeurMouvement;
               ValeurSortie:=ValeurSortie+PrelevementSortie;
          end;
     end;
     finally
     CloseFile(FPrelevementCompteur);
     end;

     if(i>0)then TableauDetail.RowCount:=i+1
            else TableauDetail.RowCount:=2;

     TableauDetail.RowCount:=TableauDetail.RowCount+3;
     TableauDetail.Rows[TableauDetail.RowCount-3].Text:='';
     TableauDetail.Rows[TableauDetail.RowCount-2].Text:='';
     TableauDetail.Rows[TableauDetail.RowCount-1].Text:='';

     TableauDetail.Cells[6,TableauDetail.RowCount-2]:='Total:';
     TableauDetail.Cells[7,TableauDetail.RowCount-2]:=Vergule(floattostr(ValeurMouvement),'2','C','');;
     TableauDetail.Cells[8,TableauDetail.RowCount-2]:=Vergule(floattostr(ValeurSortie),'2','C','');;

     Solde:=ValePrecis(strtoreal(TableauDetail.Cells[7,1])-strtoreal(TableauDetail.Cells[8,1]),2);

     if(Solde>=0)then
     begin
          TableauDetail.Cells[7,1]:=Vergule(floattostr(Solde),'2','C','');
          TableauDetail.Cells[8,1]:='';
          ValeurMouvement:=ValeurMouvement+Solde;
     end
     else
     begin
          TableauDetail.Cells[7,1]:='';
          TableauDetail.Cells[8,1]:=Vergule(floattostr((-1)*Solde),'2','C','');
          ValeurSortie:=ValeurSortie+Solde;
     end;

     TableauDetail.Cells[6,TableauDetail.RowCount-1]:='Solde:';
     Solde:=ValePrecis(ValeurMouvement-ValeurSortie,2);
     if(Solde>=0)
     then TableauDetail.Cells[7,TableauDetail.RowCount-1]:=Vergule(floattostr(Solde),'2','C','')
     else TableauDetail.Cells[8,TableauDetail.RowCount-1]:=Vergule(floattostr((-1)*Solde),'2','C','');

     AjusterColWidth(TableauDetail,'','');
     TrierTableauARowSpecial(TableauDetail,1,TableauDetail.RowCount-3,1,'1','Date','+');
end;

Function CumuleAnterieurMouvementCompteur(NumPrelevement,NumCompteur:integer):real;
var  FichierConcerne:string; CumuleMouvement:real;
begin
     FichierConcerne:='FArchivePrelevementCompteur';
     OpenFParc(RParc);
     ChCopiePrelevementCompteur:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FCopiePrelevementCompteur,ChCopiePrelevementCompteur);
     try
     if FileExists(ChCopiePrelevementCompteur)then
     Reset(FCopiePrelevementCompteur)
     else Rewrite(FCopiePrelevementCompteur);
     Seek(FCopiePrelevementCompteur,0);
     CumuleMouvement:=0;
     while not eof(FCopiePrelevementCompteur)do
     begin
          read(FCopiePrelevementCompteur,RCopiePrelevementCompteur);
          if(RCopiePrelevementCompteur.NumPrelevement<NumPrelevement)
          and(RCopiePrelevementCompteur.NumCompteur=NumCompteur)
          then
          begin
               CumuleMouvement:=CumuleMouvement+RCopiePrelevementCompteur.ValeurMouvement;
          end;
     end;
     finally
     CloseFile(FCopiePrelevementCompteur);
     end;

     CumuleAnterieurMouvementCompteur:=CumuleMouvement;
end;

Procedure NumClasse(EditClasse:TEdit; OKClassement:boolean);
var   Ordre:integer;
begin

if(OKClassement=true)then
begin
     Ordre:=0;
     if(EditClasse<>FSPrelevement.ClasseDetailCompteur)then if(Ordre<=strtointeger(FSPrelevement.ClasseDetailCompteur.Text))then Ordre:=strtointeger(FSPrelevement.ClasseDetailCompteur.Text)+1;
     if(EditClasse<>FSPrelevement.ClasseDetailUniteFonds)then if(Ordre<=strtointeger(FSPrelevement.ClasseDetailUniteFonds.Text))then Ordre:=strtointeger(FSPrelevement.ClasseDetailUniteFonds.Text)+1;
     if(EditClasse<>FSPrelevement.ClasseDetailFondRoulement)then if(Ordre<=strtointeger(FSPrelevement.ClasseDetailFondRoulement.Text))then Ordre:=strtointeger(FSPrelevement.ClasseDetailFondRoulement.Text)+1;
     if(EditClasse<>FSPrelevement.ClasseDetailTypeUniteFonds)then if(Ordre<=strtointeger(FSPrelevement.ClasseDetailTypeUniteFonds.Text))then Ordre:=strtointeger(FSPrelevement.ClasseDetailTypeUniteFonds.Text)+1;
     if(EditClasse<>FSPrelevement.ClasseDetailTiers)then if(Ordre<=strtointeger(FSPrelevement.ClasseDetailTiers.Text))then Ordre:=strtointeger(FSPrelevement.ClasseDetailTiers.Text)+1;
     if(EditClasse<>FSPrelevement.ClasseDetailArticle)then if(Ordre<=strtointeger(FSPrelevement.ClasseDetailArticle.Text))then Ordre:=strtointeger(FSPrelevement.ClasseDetailArticle.Text)+1;
     if(EditClasse<>FSPrelevement.ClasseDetailArborescenceArticle)then if(Ordre<=strtointeger(FSPrelevement.ClasseDetailArborescenceArticle.Text))then Ordre:=strtointeger(FSPrelevement.ClasseDetailArborescenceArticle.Text)+1;
     if(EditClasse<>FSPrelevement.ClasseDetailRecapitulatif)then if(Ordre<=strtointeger(FSPrelevement.ClasseDetailRecapitulatif.Text))then Ordre:=strtointeger(FSPrelevement.ClasseDetailRecapitulatif.Text)+1;
     FSPrelevement.ClasseDetailEquipe.Text:=inttostr(strtointeger(FSPrelevement.ClasseDetailEquipe.Text)+1);
     FSPrelevement.ClasseDetailUtilisateur.Text:=inttostr(strtointeger(FSPrelevement.ClasseDetailUtilisateur.Text)+1);

     EditClasse.Text:=inttostr(Ordre);
end
else
begin
     Ordre:=strtointeger(EditClasse.Text);
     EditClasse.Text:='';
     if(EditClasse<>FSPrelevement.ClasseDetailCompteur)then if(strtointeger(FSPrelevement.ClasseDetailCompteur.Text)>Ordre)then FSPrelevement.ClasseDetailCompteur.Text:=inttostr(strtointeger(FSPrelevement.ClasseDetailCompteur.Text)-1);
     if(EditClasse<>FSPrelevement.ClasseDetailUniteFonds)then if(strtointeger(FSPrelevement.ClasseDetailUniteFonds.Text)>Ordre)then FSPrelevement.ClasseDetailUniteFonds.Text:=inttostr(strtointeger(FSPrelevement.ClasseDetailUniteFonds.Text)-1);
     if(EditClasse<>FSPrelevement.ClasseDetailFondRoulement)then if(strtointeger(FSPrelevement.ClasseDetailFondRoulement.Text)>Ordre)then FSPrelevement.ClasseDetailFondRoulement.Text:=inttostr(strtointeger(FSPrelevement.ClasseDetailFondRoulement.Text)-1);
     if(EditClasse<>FSPrelevement.ClasseDetailTypeUniteFonds)then if(strtointeger(FSPrelevement.ClasseDetailTypeUniteFonds.Text)>Ordre)then FSPrelevement.ClasseDetailTypeUniteFonds.Text:=inttostr(strtointeger(FSPrelevement.ClasseDetailTypeUniteFonds.Text)-1);
     if(EditClasse<>FSPrelevement.ClasseDetailTiers)then if(strtointeger(FSPrelevement.ClasseDetailTiers.Text)>Ordre)then FSPrelevement.ClasseDetailTiers.Text:=inttostr(strtointeger(FSPrelevement.ClasseDetailTiers.Text)-1);
     if(EditClasse<>FSPrelevement.ClasseDetailArticle)then if(strtointeger(FSPrelevement.ClasseDetailArticle.Text)>Ordre)then FSPrelevement.ClasseDetailArticle.Text:=inttostr(strtointeger(FSPrelevement.ClasseDetailArticle.Text)-1);
     if(EditClasse<>FSPrelevement.ClasseDetailArborescenceArticle)then if(strtointeger(FSPrelevement.ClasseDetailArborescenceArticle.Text)>Ordre)then FSPrelevement.ClasseDetailArborescenceArticle.Text:=inttostr(strtointeger(FSPrelevement.ClasseDetailArborescenceArticle.Text)-1);
     if(EditClasse<>FSPrelevement.ClasseDetailRecapitulatif)then if(strtointeger(FSPrelevement.ClasseDetailRecapitulatif.Text)>Ordre)then FSPrelevement.ClasseDetailRecapitulatif.Text:=inttostr(strtointeger(FSPrelevement.ClasseDetailRecapitulatif.Text)-1);
     FSPrelevement.ClasseDetailEquipe.Text:=inttostr(strtointeger(FSPrelevement.ClasseDetailEquipe.Text)-1);
     FSPrelevement.ClasseDetailUtilisateur.Text:=inttostr(strtointeger(FSPrelevement.ClasseDetailUtilisateur.Text)-1);
end;

end;

Function ControleNext(EditClasse:TEdit):boolean;
begin
     ControleNext:=true;
     
     if(FSPrelevement.RBUnTableauParPage.Checked=false)then
     begin
          if(EditClasse<>FSPrelevement.ClasseDetailCompteur)then if(strtointeger(FSPrelevement.ClasseDetailCompteur.Text)>strtointeger(EditClasse.Text))then if(FSPrelevement.RBDetailCompteur.Checked=true)then ControleNext:=false;
          if(EditClasse<>FSPrelevement.ClasseDetailUniteFonds)then if(strtointeger(FSPrelevement.ClasseDetailUniteFonds.Text)>strtointeger(EditClasse.Text))then if(FSPrelevement.RBDetailUniteFonds.Checked=true)then ControleNext:=false;
          if(EditClasse<>FSPrelevement.ClasseDetailFondRoulement)then if(strtointeger(FSPrelevement.ClasseDetailFondRoulement.Text)>strtointeger(EditClasse.Text))then if(FSPrelevement.RBDetailFondRoulement.Checked=true)then ControleNext:=false;
          if(EditClasse<>FSPrelevement.ClasseDetailTypeUniteFonds)then if(strtointeger(FSPrelevement.ClasseDetailTypeUniteFonds.Text)>strtointeger(EditClasse.Text))then if(FSPrelevement.RBDetailTypeUniteFonds.Checked=true)then ControleNext:=false;
          if(EditClasse<>FSPrelevement.ClasseDetailTiers)then if(strtointeger(FSPrelevement.ClasseDetailTiers.Text)>strtointeger(EditClasse.Text))then if(FSPrelevement.RBDetailTiers.Checked=true)then ControleNext:=false;
          if(EditClasse<>FSPrelevement.ClasseDetailArticle)then if(strtointeger(FSPrelevement.ClasseDetailArticle.Text)>strtointeger(EditClasse.Text))then if(FSPrelevement.RBDetailArticle.Checked=true)then ControleNext:=false;
          if(EditClasse<>FSPrelevement.ClasseDetailArborescenceArticle)then if(strtointeger(FSPrelevement.ClasseDetailArborescenceArticle.Text)>strtointeger(EditClasse.Text))then if(FSPrelevement.RBDetailArborescenceArticle.Checked=true)then ControleNext:=false;
          if(EditClasse<>FSPrelevement.ClasseDetailRecapitulatif)then if(strtointeger(FSPrelevement.ClasseDetailRecapitulatif.Text)>strtointeger(EditClasse.Text))then if(FSPrelevement.RBDetailRecapitulatif.Checked=true)then ControleNext:=false;
          if(EditClasse<>FSPrelevement.ClasseDetailEquipe)then if(strtointeger(FSPrelevement.ClasseDetailEquipe.Text)>strtointeger(EditClasse.Text))then if(FSPrelevement.RBDetailEquipe.Checked=true)then ControleNext:=false;
          if(EditClasse<>FSPrelevement.ClasseDetailUtilisateur)then if(strtointeger(FSPrelevement.ClasseDetailUtilisateur.Text)>strtointeger(EditClasse.Text))then if(FSPrelevement.RBDetailUtilisateur.Checked=true)then ControleNext:=false;
     end;
end;

procedure TFSPrelevement.TableauPrelevementCompteurClick(Sender: TObject);
begin
FSPrelevement.AfficheDetailCompteurs.Visible:=false;
FSPrelevement.TableauChercheEquipe.Visible:=false;
FSPrelevement.TableauChercheEffectif.Visible:=false;
FSPrelevement.TableauTiers.Visible:=false;

FSPrelevement.AfficheSaisiePrelevement.Visible:=false;
FSPrelevement.AfficheSaisiePrelevementUniteFonds.Visible:=false;
FSPrelevement.AfficheListePieceTiers.Visible:=false;
FSPrelevement.AfficheArchivePrelevement.Visible:=false;
end;

procedure TFSPrelevement.TableauPrelevementCompteurKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var NbrCompteurPlanifier,NbrCompteurAffecter:integer;   OKSelectEffectif:boolean; Notification,PositionPrelevement:string;
begin

if key in[VK_RETURN]then
begin
     if(FSPrelevement.TableauPrelevementCompteur.Cells[1,FSPrelevement.TableauPrelevementCompteur.Row]<>'')then
     begin
          if(FSPrelevement.RBAutoriseModificationUnitesFonds.Checked=false)then
          begin
               if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,PositionPrelevement)=true)then
               begin
                    Showmessage('Le Prélevement est déja archivé !');
                    exit;
               end;
          end;

          if(ControleTotalAffectationCompteur(FSPrelevement.EditNumPrelevementCompteur.Text,NbrCompteurPlanifier,NbrCompteurAffecter)=false)then
          begin
               if(NbrCompteurAffecter=0)then
               begin
                    OKSelectEffectif:=true;
               end
               else
               begin
                    OKSelectEffectif:=false;
                    Notification:='Affectation Compteur non achevé !';
               end;
          end
          else
          begin
               if(FSPrelevement.EditMatricule.Text<>'')
               then OKSelectEffectif:=true
               else
               begin
                    OKSelectEffectif:=false;
                    Notification:='Veuillez sélectionner un effectif SVP !';
                    FSPrelevement.EditNomEffectif.SetFocus;
               end;
          end;

          if(OKSelectEffectif=false)then
          begin
               Showmessage(Notification);
               Exit;
          end;

          FSPrelevement.AfficheSaisiePrelevement.Visible:=true;
          FSPrelevement.EditTypePrelevement.Caption:=FSPrelevement.TableauPrelevementCompteur.Cells[9,FSPrelevement.TableauPrelevementCompteur.Row];
          FSPrelevement.EditEquipe.Text:=FSPrelevement.TableauPrelevementCompteur.Cells[3,FSPrelevement.TableauPrelevementCompteur.Row];
          FSPrelevement.EditDateIn.Text:=FSPrelevement.TableauPrelevementCompteur.Cells[12,FSPrelevement.TableauPrelevementCompteur.Row];
          FSPrelevement.EditHeureIn.Text:=FSPrelevement.TableauPrelevementCompteur.Cells[13,FSPrelevement.TableauPrelevementCompteur.Row];
          FSPrelevement.EditDateFin.Text:=FSPrelevement.TableauPrelevementCompteur.Cells[16,FSPrelevement.TableauPrelevementCompteur.Row];
          FSPrelevement.EditHeureFin.Text:=FSPrelevement.TableauPrelevementCompteur.Cells[17,FSPrelevement.TableauPrelevementCompteur.Row];
          FSPrelevement.EditCompteur.Text:=FSPrelevement.TableauPrelevementCompteur.Cells[6,FSPrelevement.TableauPrelevementCompteur.Row];
          FSPrelevement.EditArticle.Text:=FSPrelevement.TableauPrelevementCompteur.Cells[10,FSPrelevement.TableauPrelevementCompteur.Row];
          FSPrelevement.EditValeurPrelevement.Text:=FSPrelevement.TableauPrelevementCompteur.Cells[18,FSPrelevement.TableauPrelevementCompteur.Row];
          FSPrelevement.EditValeurPrelevement.SetFocus;
          FSPrelevement.RBPrelevementIndice.Checked:=true;
          if(strtoreal(FSPrelevement.EditValeurPrelevement.Text)=0)then FSPrelevement.EditValeurPrelevement.Text:='';
     end;
end;

end;

procedure TFSPrelevement.EditValeurPrelevementKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var i,ARow,R:integer; QuantiteInitiale:real; OKPrelevement,OKMatriculeEffectif,OKPointerArchive:boolean; FichierConcerne,NumPrelevement,NumPrelevementFin,DateDebut,HeureDebut,DateFin,HeureFin,NumStructure,Matricule,PositionPrelevement:string;
begin

if key in[VK_UP]then
begin
     if(FSPrelevement.RBPrelevementIndice.Checked=true)then FSPrelevement.RBInitialIndice.Checked:=true
     else
     if(FSPrelevement.RBPrelevementMouvement.Checked=true)then FSPrelevement.RBPrelevementIndice.Checked:=true
     else
     if(FSPrelevement.RBInitialIndice.Checked=true)then FSPrelevement.RBPrelevementMouvement.Checked:=true;
end;

if key in[VK_DOWN]then
begin
     if(FSPrelevement.RBPrelevementIndice.Checked=true)then FSPrelevement.RBPrelevementMouvement.Checked:=true
     else
     if(FSPrelevement.RBPrelevementMouvement.Checked=true)then FSPrelevement.RBInitialIndice.Checked:=true
     else
     if(FSPrelevement.RBInitialIndice.Checked=true)then FSPrelevement.RBPrelevementIndice.Checked:=true;
end;

if key in[VK_RETURN]then
begin
     if(FSPrelevement.RBPrelevementIndice.Checked=true)then
     begin
          if(FSPrelevement.EditTypePrelevement.Caption='Stock restant.')
          or(FSPrelevement.EditTypePrelevement.Caption='Stock Sortant.')
          then
          begin
               if(strtoreal(FSPrelevement.EditValeurPrelevement.Text)>strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[14,FSPrelevement.TableauPrelevementCompteur.Row])+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[15,FSPrelevement.TableauPrelevementCompteur.Row]))then
               begin
                    showmessage('Le Type: '+FSPrelevement.EditTypePrelevement.Caption+', Recueille une Valeur Inférieur ou égale au cumul de la valeur Initiale et de Mouvement SVP !');
                    FSPrelevement.EditValeurPrelevement.SetFocus;
                    Exit;
               end;
          end;

          if(FSPrelevement.EditTypePrelevement.Caption='Cumul des Sorties.')then
          begin
               if(strtoreal(FSPrelevement.EditValeurPrelevement.Text)<strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[14,FSPrelevement.TableauPrelevementCompteur.Row]))then
               begin
                    showmessage('Le Type: '+FSPrelevement.EditTypePrelevement.Caption+', Recueille une Valeur Supérieur au Mouvement SVP !');
                    FSPrelevement.EditValeurPrelevement.SetFocus;
                    Exit;
               end;
          end;
     end;

     ARow:=FSPrelevement.TableauPrelevementCompteur.Row;

     RPrelevement:=ChercherPrelevement(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text),ExerciceAnnee,FSPrelevement.EditMatricule.Text,PositionPrelevement);
     if(RPrelevement.Archiver=false)then
     begin
          FichierConcerne:='FPrelevementCompteur';
          OKPointerArchive:=false;
     end
     else
     begin
          FichierConcerne:='FArchivePrelevementCompteur';
          OKPointerArchive:=true;
     end;

     NumPrelevement:=FSPrelevement.TableauPrelevementCompteur.Cells[1,FSPrelevement.TableauPrelevementCompteur.Row];
     NumPrelevementFin:='';
     DateDebut:=FSPrelevement.TableauPrelevementCompteur.Cells[12,FSPrelevement.TableauPrelevementCompteur.Row];
     HeureDebut:=FSPrelevement.TableauPrelevementCompteur.Cells[13,FSPrelevement.TableauPrelevementCompteur.Row];
     DateFin:=FSPrelevement.TableauPrelevementCompteur.Cells[16,FSPrelevement.TableauPrelevementCompteur.Row];
     HeureFin:=FSPrelevement.TableauPrelevementCompteur.Cells[17,FSPrelevement.TableauPrelevementCompteur.Row];

     ///////////////////////////     PrelevementCompteur     ///////////////////
     OpenFParc(RParc);
     ChPrelevementCompteur:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FPrelevementCompteur,ChPrelevementCompteur);
     try
     if FileExists(ChPrelevementCompteur)then
     Reset(FPrelevementCompteur)
     else Rewrite(FPrelevementCompteur);
     Seek(FPrelevementCompteur,0);
     i:=0;
     OKPrelevement:=false;
     while not eof(FPrelevementCompteur)and(OKPrelevement=false)do
     begin
          read(FPrelevementCompteur,RPrelevementCompteur);

          if(FSPrelevement.EditMatricule.Text<>'')then
          begin
               if(RPrelevementCompteur.Matricule=FSPrelevement.EditMatricule.Text)
               then OKMatriculeEffectif:=true
               else OKMatriculeEffectif:=false;
          end
          else OKMatriculeEffectif:=true;

          if(OKMatriculeEffectif=true)
          and(RPrelevementCompteur.NumPrelevement=strtointeger(NumPrelevement))
          and(RPrelevementCompteur.NumCompteur=strtointeger(FSPrelevement.TableauPrelevementCompteur.Cells[4,FSPrelevement.TableauPrelevementCompteur.Row]))
          then
          begin
               OKPrelevement:=true;
               Seek(FPrelevementCompteur,i);

               if(FSPrelevement.RBPrelevementIndice.Checked=true)
               then RPrelevementCompteur.ValeurPrelevement:=strtoreal(FSPrelevement.EditValeurPrelevement.Text);

               if(FSPrelevement.RBPrelevementMouvement.Checked=true)then
               begin
                    RPrelevementCompteur.ValeurMouvement:=strtoreal(FSPrelevement.EditValeurPrelevement.Text);
               end;

               if(FSPrelevement.RBInitialIndice.Checked=true)
               then RPrelevementCompteur.ValeurInitiale:=strtoreal(FSPrelevement.EditValeurPrelevement.Text);

               write(FPrelevementCompteur,RPrelevementCompteur);
          end;
          i:=i+1;
     end;
     finally
     CloseFile(FPrelevementCompteur);
     end;
     ///////////////////////////////////////////////////////////////////////////

     PrelevementCompteurs(FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditNumPrelevementCompteur,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text);
     AfficheDetailArticle(FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.EditMontantArticle,NumPrelevement,NumPrelevementFin);
     AfficheArborescenceArticle(FSPrelevement.TableauArborescenceArticle,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreArborescenceArticle,'F'+FSPrelevement.EditChoisAffichage.Text+FSPrelevement.EditExtentionFichier.Text);
     //ListeEtatStockPrelevement(FSPrelevement.TableauEtatStockPrelevement,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.EditNumStructure.Text);



     ////////////////////////     RegistreEtatStockPrelevement     /////////////
     RPrelevement:=ChercherPrelevement(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text),ExerciceAnnee,FSPrelevement.EditMatricule.Text,PositionPrelevement);
     if(RPrelevement.Archiver=false)then
     begin
          FichierConcerne:='FRegistreEtatStockPrelevement';
          OKPointerArchive:=false;
     end
     else
     begin
          FichierConcerne:='FArchiveRegistreEtatStockPrelevement';
          OKPointerArchive:=true;
     end;

     OpenFParc(RParc);
     ChRegistreEtatStockPrelevement:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FRegistreEtatStockPrelevement,ChRegistreEtatStockPrelevement);
     try
     if FileExists(ChRegistreEtatStockPrelevement)then
     Reset(FRegistreEtatStockPrelevement)
     else Rewrite(FRegistreEtatStockPrelevement);
     Seek(FRegistreEtatStockPrelevement,0);
     i:=0;
     while not eof(FRegistreEtatStockPrelevement)do
     begin
          read(FRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);

          if(RRegistreEtatStockPrelevement.Matricule=FSPrelevement.EditMatricule.Text)
          and(RRegistreEtatStockPrelevement.NumPrelevement=strtointeger(NumPrelevement))
          then
          begin
               RRegistreEtatStockPrelevement.QuantiteEntree:=0;
               RRegistreEtatStockPrelevement.QuantiteSortie:=0;
               RRegistreEtatStockPrelevement.QuantiteStock:=0;
               QuantiteInitiale:=0;

               R:=1;
               while(R<=FSPrelevement.TableauPrelevementCompteur.RowCount-3)do
               begin
                    if(RRegistreEtatStockPrelevement.CodeArticle=FSPrelevement.TableauPrelevementCompteur.Cells[8,R])then
                    begin
                         RRegistreEtatStockPrelevement.QuantiteEntree:=RRegistreEtatStockPrelevement.QuantiteEntree+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[15,R]);

                         RCompteurCopie:=ChercherCompteur(strtointeger(FSPrelevement.TableauPrelevementCompteur.Cells[4,R]));

                         if(RCompteurCopie.TypeIndicePrelevement='Stock restant.')then
                         begin
                              RRegistreEtatStockPrelevement.QuantiteSortie:=RRegistreEtatStockPrelevement.QuantiteSortie+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[14,R])+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[15,R])-strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[18,R]);
                              QuantiteInitiale:=QuantiteInitiale+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[14,R]);
                         end
                         else
                         if(RCompteurCopie.TypeIndicePrelevement='Cumul des Sorties.')then
                         begin
                              RRegistreEtatStockPrelevement.QuantiteSortie:=RRegistreEtatStockPrelevement.QuantiteSortie+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[18,R])-strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[14,R]);
                         end
                         else
                         if(RCompteurCopie.TypeIndicePrelevement='Stock Sortant.')then
                         begin
                              RRegistreEtatStockPrelevement.QuantiteSortie:=RRegistreEtatStockPrelevement.QuantiteSortie+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[18,R]);
                              QuantiteInitiale:=QuantiteInitiale+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[14,R]);
                         end;
                    end;
               R:=R+1;
               end;

               if(QuantiteInitiale>0)then RRegistreEtatStockPrelevement.QuantiteInitiale:=QuantiteInitiale;
               RRegistreEtatStockPrelevement.QuantiteStock:=RRegistreEtatStockPrelevement.QuantiteInitiale+RRegistreEtatStockPrelevement.QuantiteEntree-RRegistreEtatStockPrelevement.QuantiteSortie;

               Seek(FRegistreEtatStockPrelevement,i);
               write(FRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);
          end;
     i:=i+1;
     end;
     finally
     CloseFile(FRegistreEtatStockPrelevement);
     end;
     ///////////////////////////////////////////////////////////////////////////
     NumStructure:=FSPrelevement.EditNumStructure.Text;
     Matricule:=FSPrelevement.EditMatricule.Text;
     AfficheEtatStockPrelevement(FSPrelevement.TableauEtatStockPrelevement,NumStructure,NumPrelevement,Matricule);
     FSPrelevement.TableauPrelevementCompteur.Row:=ARow;
     FSPrelevement.TableauPrelevementCompteur.SetFocus;
     FSPrelevement.AfficheSaisiePrelevement.Visible:=false;

     FSPrelevement.EditSoldePrelevement.Text:=Vergule(floattostr(ValePrecis(strtoreal(FSPrelevement.EditMontantUniteFonds.Text)-strtoreal(FSPrelevement.EditMontantCompteur.Text)-strtoreal(FSPrelevement.EditFondRoulement.Text),2)),'2','C','');
     MiseAJourPrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,strtoreal(FSPrelevement.EditMontantCompteur.Text),strtoreal(FSPrelevement.EditFondRoulement.Text),strtoreal(FSPrelevement.EditMontantUniteFonds.Text),strtoreal(FSPrelevement.EditSoldePrelevement.Text),true);
     PrelevementEffectifEquipe(TableauEquipe,TableauTitreEquipe,TableauEffectifEquipe,TableauTitreEffectifEquipe,TableauUtilisateur,TableauTitreUtilisateur,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text);

     AfficherSoldeControle;
end;
end;

procedure TFSPrelevement.RBPrelevementIndiceClick(Sender: TObject);
begin
FSPrelevement.EditValeurPrelevement.Text:=FSPrelevement.TableauPrelevementCompteur.Cells[18,FSPrelevement.TableauPrelevementCompteur.Row];
FSPrelevement.EditValeurPrelevement.SetFocus;

if(strtoreal(FSPrelevement.EditValeurPrelevement.Text)=0)then FSPrelevement.EditValeurPrelevement.Text:='';
end;

procedure TFSPrelevement.RBPrelevementMouvementClick(Sender: TObject);
begin

FSPrelevement.EditValeurPrelevement.Text:=FSPrelevement.TableauPrelevementCompteur.Cells[15,FSPrelevement.TableauPrelevementCompteur.Row];
FSPrelevement.EditValeurPrelevement.SetFocus;

if(strtoreal(FSPrelevement.EditValeurPrelevement.Text)=0)then FSPrelevement.EditValeurPrelevement.Text:='';
end;

procedure TFSPrelevement.BitArchiverPrelevementClick(Sender: TObject);
var  PositionPrelevement:string;
begin
     FSPrelevement.AfficheOperationsPrelevement.Height:=81;

     if(FSPrelevement.BitArchiverPrelevement.Caption='Archiver le Prélèvement')then
     begin
          if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,PositionPrelevement)=false)then
          begin
               if(FSPrelevement.EditNumEquipePrelevement.Text<>'')and(FSPrelevement.EditMatricule.Text='')then
               begin
                    if(strtoreal(FSPrelevement.EditSoldeCompteur.Text)>strtoreal(FSPrelevement.EditEcartAutorise.Text))
                    or(strtoreal(FSPrelevement.EditSoldeUnitesFonds.Text)>strtoreal(FSPrelevement.EditEcartAutorise.Text))
                    then
                    begin
                         FSPrelevement.BitPrint.Visible:=false;
                         FSPrelevement.BitSave.Visible:=true;
                         FSPrelevement.BitChargementEffectif.Visible:=false;
                         FSPrelevement.AfficheTravauxPrelevementAchever.Visible:=true;
                         FSPrelevement.TableauControleAttributionArticleAuxUnitesFonds.Visible:=false;
                    end
                    else
                    begin
                         FSPrelevement.AfficheArchivePrelevement.Visible:=true;
                         FSPrelevement.AffichePatienterArchivePrelevement.Visible:=false;
                         FSPrelevement.OperationPrelevement.Kind:=FSPrelevement.BitArchiverPrelevement.Kind;
                         FSPrelevement.OperationPrelevement.Caption:=FSPrelevement.BitArchiverPrelevement.Caption;
                         FSPrelevement.AfficheArchivePrelevement.Caption:='Vouler vous '+FSPrelevement.BitArchiverPrelevement.Caption+' ?';
                    end;
               end
               else
               begin
                    Showmessage('Veuillez sélectionner l''affichage global avant l''archivage SVP !');
                    FSPrelevement.EditEquipePrelevement.SetFocus;
               end;
          end
          else
          begin
               Showmessage('Le Prélevement est déja archivé !');
          end;
     end;

     if(FSPrelevement.BitArchiverPrelevement.Caption='Nouvel Indexation')then
     begin
          FSPrelevement.Close;
          NowPrelevement;
     end;

end;

procedure TFSPrelevement.RBInitialIndiceClick(Sender: TObject);
begin
FSPrelevement.EditValeurPrelevement.Text:=FSPrelevement.TableauPrelevementCompteur.Cells[14,FSPrelevement.TableauPrelevementCompteur.Row];
FSPrelevement.EditValeurPrelevement.SetFocus;

if(strtoreal(FSPrelevement.EditValeurPrelevement.Text)=0)then FSPrelevement.EditValeurPrelevement.Text:='';
end;

procedure TFSPrelevement.TableauPrelevementUniteFondsKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var  CodeTiers,NomTiers,Notification,PositionPrelevement:string;  NbrCompteurPlanifier,NbrCompteurAffecter:integer;   OKSelectEffectif:boolean;
begin

if key in[VK_RETURN]then
begin
     if(FSPrelevement.TableauPrelevementUniteFonds.Cells[1,FSPrelevement.TableauPrelevementUniteFonds.Row]<>'')then
     begin
          if(FSPrelevement.RBAutoriseModificationUnitesFonds.Checked=false)then
          begin
               if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,PositionPrelevement)=true)then
               begin
                    Showmessage('Le Prélevement est déja archivé !');
                    exit;
               end;
          end;

          if(ControleTotalAffectationCompteur(FSPrelevement.EditNumPrelevementCompteur.Text,NbrCompteurPlanifier,NbrCompteurAffecter)=false)then
          begin
               if(NbrCompteurAffecter=0)then
               begin
                    OKSelectEffectif:=true;
               end
               else
               begin
                    OKSelectEffectif:=false;
                    Notification:='Affectation Compteur non achevé !';
               end;
          end
          else
          begin
               if(FSPrelevement.EditMatricule.Text<>'')
               then OKSelectEffectif:=true
               else
               begin
                    OKSelectEffectif:=false;
                    Notification:='Veuillez sélectionner un effectif SVP !';
                    FSPrelevement.EditNomEffectif.SetFocus;
               end;
          end;

          if(OKSelectEffectif=false)then
          begin
               Showmessage(Notification);
               Exit;
          end;

          if(strtoboolean(FSPrelevement.TableauPrelevementUniteFonds.Cells[10,FSPrelevement.TableauPrelevementUniteFonds.Row])=true)then
          begin
               FSPrelevement.AfficheSaisiePrelevementUniteFonds.Visible:=true;
               FSPrelevement.EditARowTableauPrelevementUniteFonds.Text:=inttostr(FSPrelevement.TableauPrelevementUniteFonds.Row);
               FSPrelevement.EditEquipeUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[3,FSPrelevement.TableauPrelevementUniteFonds.Row];
               FSPrelevement.EditDateInUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
               FSPrelevement.EditHeureInUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
               FSPrelevement.EditDateFinUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
               FSPrelevement.EditHeureFinUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
               FSPrelevement.EditNumUniteFondsSelect.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[6,FSPrelevement.TableauPrelevementUniteFonds.Row];
               FSPrelevement.EditUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[9,FSPrelevement.TableauPrelevementUniteFonds.Row];

               if(strtoreal(FSPrelevement.TableauPrelevementUniteFonds.Cells[17,FSPrelevement.TableauPrelevementUniteFonds.Row])>0)
               then FSPrelevement.EditValeurPrelevementUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[17,FSPrelevement.TableauPrelevementUniteFonds.Row]
               else FSPrelevement.EditValeurPrelevementUniteFonds.Text:='';

               FSPrelevement.EditValeurPrelevementUniteFonds.SetFocus;

               FSPrelevement.AfficheModePaiementUniteFonds.Height:=0;
               FSPrelevement.RBValeurPrecise.Checked:=strtoboolean(FSPrelevement.TableauPrelevementUniteFonds.Cells[10,FSPrelevement.TableauPrelevementUniteFonds.Row]);

               TiersDivers(FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row],FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row],CodeTiers,NomTiers);
               FSPrelevement.EditCodeTiers.Text:=CodeTiers;
               FSPrelevement.EditTiers.Text:=NomTiers;
               FSPrelevement.EditModePaiement.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[14,FSPrelevement.TableauPrelevementUniteFonds.Row];
               FSPrelevement.EditNumPiece.Text:='';
               FSPrelevement.EditDomiciliation.Text:='';
               FSPrelevement.EditNumPrelevementUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[0,FSPrelevement.TableauPrelevementUniteFonds.Row];

               AfficherDetailArticlePrelevementMoyenTransport(FSPrelevement.EditCodeTiers.Text);
          end
          else
          begin

               FSPrelevement.EditRechercheTiers.Text:='';
               FSPrelevement.EditRechercheNomPrenomTiers.Text:='';
               FSPrelevement.TableauTiers.Visible:=true;

               FSPrelevement.AfficheRechercheTiersPrelevement.Left:=FSPrelevement.TableauTiers.Left;
               FSPrelevement.AfficheRechercheTiersPrelevement.Top:=FSPrelevement.TableauTiers.Top-FSPrelevement.AfficheRechercheTiersPrelevement.Height-2;

               FSPrelevement.AfficheRechercheTiersPrelevement.Visible:=true;
               FSPrelevement.EditRechercheNomPrenomTiers.Text:='';
               FSPrelevement.EditRechercheNomPrenomTiers.SetFocus;
          end;
     end;
end;

end;

Procedure ProcEditValeurPrelevementUniteFondsKeyDown(ActiverAffichage:boolean; var NumPrelevementUniteFonds,ARow:integer);
var i,itrouver:integer; OKPrelevement,OKMatriculeEffectif,OKPointerArchive:boolean;
    FichierConcerne,Matricule,NumPrelevement,NumPrelevementFin,DateDebut,HeureDebut,DateFin,HeureFin,PositionPrelevement:string;
begin
     FSPrelevement.AfficheAttenteAffichePrelevement.Visible:=true;
     FSPrelevement.ProgressAttenteAffichePrelevement.Min:=0;
     FSPrelevement.ProgressAttenteAffichePrelevement.Max:=100;
     FSPrelevement.ProgressAttenteAffichePrelevement.Position:=1;
     FSPrelevement.EditAttenteAffichePrelevement.SetFocus;
     FSPrelevement.PagePrincipale.Enabled:=false;

     FSPrelevement.AfficheDetailUniteFonds.Visible:=false;

     ARow:=FSPrelevement.TableauPrelevementUniteFonds.Row;

     if(ARow<>strtointeger(FSPrelevement.EditARowTableauPrelevementUniteFonds.Text))then
     begin
          showmessage('Attention ! Attribution de l''unité de fonds non conforme (Row)!');
          Exit;
     end;

     if(FSPrelevement.EditNumUniteFondsSelect.Text<>FSPrelevement.TableauPrelevementUniteFonds.Cells[6,FSPrelevement.TableauPrelevementUniteFonds.Row])then
     begin
          showmessage('Attention ! Attribution de l''unité de fonds non conforme (Num UF)!');
          Exit;
     end;

     NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
     NumPrelevementFin:='';
     Matricule:=FSPrelevement.EditMatricule.Text;
     DateDebut:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
     HeureDebut:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
     DateFin:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
     HeureFin:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];

     //FichierConcerne:='F'+FSPrelevement.EditModifierPrelevement.Text+'PrelevementUniteFonds';

     RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);
     if(RPrelevement.Archiver=false)then
     begin
          FichierConcerne:='FPrelevementUniteFonds';
          OKPointerArchive:=false;
     end
     else
     begin
          FichierConcerne:='FArchivePrelevementUniteFonds';
          OKPointerArchive:=true;
     end;

     OpenFParc(RParc);
     ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
     try
     if FileExists(ChPrelevementUniteFonds)then
     Reset(FPrelevementUniteFonds)
     else Rewrite(FPrelevementUniteFonds);
     Seek(FPrelevementUniteFonds,0);
     i:=0;
     itrouver:=0;
     OKPrelevement:=false;
     while not eof(FPrelevementUniteFonds)and(OKPrelevement=false)do
     begin
          read(FPrelevementUniteFonds,RPrelevementUniteFonds);

          if(FSPrelevement.EditNumPrelevementUniteFonds.Text<>'')then
          begin
               if(FSPrelevement.EditMatricule.Text<>'')then
               begin
                    if(RPrelevementUniteFonds.Matricule=FSPrelevement.EditMatricule.Text)
                    then OKMatriculeEffectif:=true
                    else OKMatriculeEffectif:=false;
               end
               else OKMatriculeEffectif:=true;

               if(OKMatriculeEffectif=true)
               and(RPrelevementUniteFonds.NumPrelevementUniteFonds=strtointeger(FSPrelevement.EditNumPrelevementUniteFonds.Text))
               and(RPrelevementUniteFonds.NumPrelevement=strtointeger(NumPrelevement))
               and(RPrelevementUniteFonds.NumUniteFonds=strtointeger(FSPrelevement.TableauPrelevementUniteFonds.Cells[6,FSPrelevement.TableauPrelevementUniteFonds.Row]))
               and(RPrelevementUniteFonds.Matricule=FSPrelevement.EditMatricule.Text)
               then
               begin
                    OKPrelevement:=true;
                    itrouver:=i;  
               end;
          end;
     i:=i+1;
     end;

     if(OKPrelevement=true)then i:=itrouver;

     if(OKPrelevement=false)then
     begin
          RPrelevementUniteFonds.NumPrelevementUniteFonds:=i;
          RPrelevementUniteFonds.NumPrelevement:=strtointeger(FSPrelevement.TableauPrelevementUniteFonds.Cells[1,FSPrelevement.TableauPrelevementUniteFonds.Row]);
          RPrelevementUniteFonds.CodeUtilisateur:=FSPrelevement.TableauPrelevementUniteFonds.Cells[2,FSPrelevement.TableauPrelevementUniteFonds.Row];
          RPrelevementUniteFonds.NumEquipe:=strtointeger(FSPrelevement.TableauPrelevementUniteFonds.Cells[3,FSPrelevement.TableauPrelevementUniteFonds.Row]);
          RPrelevementUniteFonds.Matricule:=FSPrelevement.EditMatricule.Text;
          RPrelevementUniteFonds.DatePrelevement:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
          RPrelevementUniteFonds.HeurePrelevement:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
          RPrelevementUniteFonds.NumUniteFonds:=strtointeger(FSPrelevement.TableauPrelevementUniteFonds.Cells[6,FSPrelevement.TableauPrelevementUniteFonds.Row]);
          RPrelevementUniteFonds.ValeurPrecise:=strtoboolean(FSPrelevement.TableauPrelevementUniteFonds.Cells[10,FSPrelevement.TableauPrelevementUniteFonds.Row]);
          RPrelevementUniteFonds.TypeProces:=FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row];
          RPrelevementUniteFonds.FichierConcerne:=FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row];
          RPrelevementUniteFonds.CodeTiers:=FSPrelevement.EditCodeTiers.Text;
          RPrelevementUniteFonds.ModePaiement:=FSPrelevement.EditModePaiement.Text;
          RPrelevementUniteFonds.NumPiece:=FSPrelevement.EditNumPiece.Text;
          RPrelevementUniteFonds.Domiciliation:=FSPrelevement.EditDomiciliation.Text;
     end;

     RPrelevementUniteFonds.CodeTiers:=FSPrelevement.EditCodeTiers.Text;
     RPrelevementUniteFonds.ValeurPrelevement:=strtoreal(FSPrelevement.EditValeurPrelevementUniteFonds.Text);
     Seek(FPrelevementUniteFonds,i);
     write(FPrelevementUniteFonds,RPrelevementUniteFonds);
     NumPrelevementUniteFonds:=RPrelevementUniteFonds.NumPrelevementUniteFonds;

     finally
     CloseFile(FPrelevementUniteFonds);
     end;

     if(ActiverAffichage=true)then
     begin
          ProcPrelevementUniteFonds(FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,FSPrelevement.TableauPrelevementUniteFonds.Cells[6,FSPrelevement.TableauPrelevementUniteFonds.Row]);
          if(FSPrelevement.RBControlerPrelevementAChaqueOperation.Checked=true)then AfficheDetailTypeUniteFonds(FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds);
          if(FSPrelevement.RBControlerPrelevementAChaqueOperation.Checked=true)then AfficheDetailTiers(FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditFondRoulement,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,FSPrelevement.RBCumuleTiers.Checked);
          if(FSPrelevement.RBControlerPrelevementAChaqueOperation.Checked=true)then AfficheDetailArticle(FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.EditMontantArticle,NumPrelevement,NumPrelevementFin);

          FSPrelevement.TableauPrelevementUniteFonds.Row:=ARow;
          FSPrelevement.AfficheSaisiePrelevementUniteFonds.Visible:=false;

          FSPrelevement.EditSoldePrelevement.Text:=Vergule(floattostr(ValePrecis(strtoreal(FSPrelevement.EditMontantUniteFonds.Text)-strtoreal(FSPrelevement.EditMontantCompteur.Text)-strtoreal(FSPrelevement.EditFondRoulement.Text),2)),'2','C','');
          if(FSPrelevement.RBControlerPrelevementAChaqueOperation.Checked=true)then MiseAJourPrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,strtoreal(FSPrelevement.EditMontantCompteur.Text),strtoreal(FSPrelevement.EditFondRoulement.Text),strtoreal(FSPrelevement.EditMontantUniteFonds.Text),strtoreal(FSPrelevement.EditSoldePrelevement.Text),true);

          if(FSPrelevement.RBControlerSoldeAChaqueOperation.Checked=true)then PrelevementEffectifEquipe(FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text);

          AfficherSoldeControle;
     end;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
     FSPrelevement.AfficheAttenteAffichePrelevement.Visible:=false;
     FSPrelevement.PagePrincipale.Enabled:=true;
end;

procedure TFSPrelevement.BitBtn2Click(Sender: TObject);
begin
FSPrelevement.AfficheSaisiePrelevement.Visible:=false;
FSPrelevement.AfficheSaisiePrelevementUniteFonds.Visible:=false;
FSPrelevement.AfficheListePieceTiers.Visible:=false;
FSPrelevement.TableauPrelevementUniteFonds.SetFocus;
end;

procedure TFSPrelevement.TableauPrelevementUniteFondsClick(
  Sender: TObject);
var  OKChargerPointeur:boolean;
begin
     if(FSPrelevement.EditTypeProces.Text<>FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row])
     and(FSPrelevement.EditFichierConcerne.Text<>FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row])
     then
     begin
          FSPrelevement.RBChargerPointeur.Checked:=true;
          OKChargerPointeur:=true;
     end
     else OKChargerPointeur:=false;

     FSPrelevement.EditTypeProces.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row];
     FSPrelevement.EditFichierConcerne.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row];

     FSPrelevement.AfficheSaisiePrelevement.Visible:=false;
     FSPrelevement.AfficheSaisiePrelevementUniteFonds.Visible:=false;
     FSPrelevement.AfficheArchivePrelevement.Visible:=false;
     FSPrelevement.TableauTiers.Visible:=false;
     FSPrelevement.AfficheListePieceTiers.Visible:=false;

     if(OKChargerPointeur=true)then
     begin
          FSPrelevement.TimerAfficheTiers.Enabled:=false;
          FSPrelevement.TimerLancerAfficheTiers.Enabled:=false;
          FSPrelevement.TimerLancerAfficheTiers.Enabled:=true;
     end;
end;

procedure TFSPrelevement.OperationPrelevementClick(Sender: TObject);
var  i,E,NbrNewArticle,NbrChargeArticle:integer;  NumPrelevement,EcartNumPUF,PositionPrelevement,SigneMouvement,TypeProcesPrelevement,FichierConcernePrelevement,AdressePrelevement:string;  var  confirme:boolean;
     MontantPrelevement,MontantFondRoulement,MontantUnitesFonds,SoldePrelevement,QuantiteAOperer:real;
     RegistrePositionPrelevementCompteur,RegistrePositionPrelevementUniteFonds,RegistrePositionPrelevementEffectifEquipe,RegistrePositionRegistreAffectationEffectifEquipe,RegistrePositionDetailArticlePrelevementUniteFonds,RegistrePositionMoyenTransportPrelevement,RegistrePositionEtatStockPrelevement,RegistrePositionAutre2,RegistrePositionAutre3:RRegistrePositionArchives;
begin

if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,PositionPrelevement)=true)then
begin
     Showmessage('Le Prélevement est déja archivé !');
     Exit;
end;

FSPrelevement.AffichePatienterArchivePrelevement.Left:=8;
FSPrelevement.AffichePatienterArchivePrelevement.Top:=8;
FSPrelevement.AffichePatienterArchivePrelevement.Visible:=true;
FSPrelevement.EditPatienterArchivePrelevement.SetFocus;

FSPrelevement.TimerArchivePrelevement.Enabled:=true;

PrelevementEffectifEquipe(FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text);
end;

procedure TFSPrelevement.TimerSoldePrelevementTimer(Sender: TObject);
begin
     Application.ProcessMessages;
     
if(strtoreal(FSPrelevement.EditSoldePrelevement.Text)<0)then
begin
     if(FSPrelevement.AfficheArchivePrelevement.Visible=true)then
     begin
          if FSPrelevement.AfficheArchivePrelevement.Color=clred then
          begin
               FSPrelevement.AfficheArchivePrelevement.Color:=clyellow;
               FSPrelevement.AfficheArchivePrelevement.Font.Color:=clred;
          end
          else
          begin
               FSPrelevement.AfficheArchivePrelevement.Color:=clred;
               FSPrelevement.AfficheArchivePrelevement.Font.Color:=clyellow;
          end;
     end;

     if(FSPrelevement.EditSoldePrelevement.Visible=true)then
     begin
          if FSPrelevement.EditSoldePrelevement.Color=$002501EF then
          begin
               FSPrelevement.EditSoldePrelevement.Color:=$009582FF;
          end
          else
          begin
               FSPrelevement.EditSoldePrelevement.Color:=$002501EF;
          end;
     end; 
end
else
begin
     if(FSPrelevement.AfficheArchivePrelevement.Visible=true)then
     begin
          FSPrelevement.AfficheArchivePrelevement.Color:=$0080FFFF;
          FSPrelevement.AfficheArchivePrelevement.Font.Color:=clWindowText;
     end;

     if(FSPrelevement.EditSoldePrelevement.Visible=true)then
     begin
          FSPrelevement.EditSoldePrelevement.Color:=ClLime;
     end;
end
end;

procedure TFSPrelevement.TableauTiersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var i,NbrTiers:integer;  OKTiers:boolean;  FichierConcerne,PositionPrelevement:string;
begin

if key in[VK_ESCAPE]then
begin
     FSPrelevement.TableauTiers.Visible:=false;
     FSPrelevement.TableauPrelevementUniteFonds.SetFocus;
end;

if key in[VK_RETURN]then
begin
     if(FSPrelevement.TableauTiers.Cells[1,FSPrelevement.TableauTiers.Row]<>'')then
     begin
          if(FSPrelevement.AfficheSaisiePrelevementUniteFonds.Visible=false)then
          begin
                FSPrelevement.AfficheSaisiePrelevementUniteFonds.Visible:=true;
                FSPrelevement.EditARowTableauPrelevementUniteFonds.Text:=inttostr(FSPrelevement.TableauPrelevementUniteFonds.Row);
                FSPrelevement.EditEquipeUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[3,FSPrelevement.TableauPrelevementUniteFonds.Row];
                FSPrelevement.EditDateInUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
                FSPrelevement.EditHeureInUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
                FSPrelevement.EditDateFinUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
                FSPrelevement.EditHeureFinUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
                FSPrelevement.EditNumUniteFondsSelect.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[6,FSPrelevement.TableauPrelevementUniteFonds.Row];
                FSPrelevement.EditUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[9,FSPrelevement.TableauPrelevementUniteFonds.Row];

                FSPrelevement.TableauListePieceTiers.RowCount:=2;
                FSPrelevement.TableauListePieceTiers.Rows[1].Text:='';
                FSPrelevement.TableauListePieceTiers.Cols[1].Text:='NumPUF';
                FSPrelevement.TableauListePieceTiers.Cols[2].Text:='TypeProces';
                FSPrelevement.TableauListePieceTiers.Cols[3].Text:='FichierConcerne';
                FSPrelevement.TableauListePieceTiers.Cols[4].Text:='CodeTiers';
                FSPrelevement.TableauListePieceTiers.Cols[5].Text:='ModePaiement';
                FSPrelevement.TableauListePieceTiers.Cols[6].Text:='NumPiece';
                FSPrelevement.TableauListePieceTiers.Cols[7].Text:='Domiciliation';
                FSPrelevement.TableauListePieceTiers.Cols[8].Text:='Montant';

                NbrTiers:=1;
                FSPrelevement.TableauListePieceTiers.Rows[NbrTiers].Text:=inttostr(NbrTiers);
                FSPrelevement.TableauListePieceTiers.Cells[1,NbrTiers]:='Autre';
                FSPrelevement.TableauListePieceTiers.Cells[2,NbrTiers]:='Autre';
                FSPrelevement.TableauListePieceTiers.Cells[3,NbrTiers]:='Autre';
                FSPrelevement.TableauListePieceTiers.Cells[4,NbrTiers]:='Autre';
                FSPrelevement.TableauListePieceTiers.Cells[5,NbrTiers]:='Autre';
                FSPrelevement.TableauListePieceTiers.Cells[6,NbrTiers]:='Autre';
                FSPrelevement.TableauListePieceTiers.Cells[7,NbrTiers]:='Autre';
                FSPrelevement.TableauListePieceTiers.Cells[8,NbrTiers]:='Autre';

                FSPrelevement.EditAfficheCodeTiers.Text:=FSPrelevement.TableauTiers.Cells[1,FSPrelevement.TableauTiers.Row];
                FSPrelevement.EditAfficheTiers.Text:=FSPrelevement.TableauTiers.Cells[2,FSPrelevement.TableauTiers.Row];

                //FichierConcerne:='F'+FSPrelevement.EditModifierPrelevement.Text+'PrelevementUniteFonds';

                RPrelevement:=ChercherPrelevement(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text),ExerciceAnnee,FSPrelevement.EditMatricule.Text,PositionPrelevement);
                if(RPrelevement.Archiver=false)
                then FichierConcerne:='FPrelevementUniteFonds'
                else FichierConcerne:='FArchivePrelevementUniteFonds';

                OpenFParc(RParc);
                ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+FichierConcerne;
                assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
                try
                if FileExists(ChPrelevementUniteFonds)then
                Reset(FPrelevementUniteFonds)
                else Rewrite(FPrelevementUniteFonds);
                Seek(FPrelevementUniteFonds,0);
                i:=0;
                while not eof(FPrelevementUniteFonds)do
                begin
                     i:=i+1;
                     read(FPrelevementUniteFonds,RPrelevementUniteFonds);
                     if(RPrelevementUniteFonds.NumPrelevement=strtointeger(FSPrelevement.TableauPrelevementUniteFonds.Cells[1,FSPrelevement.TableauPrelevementUniteFonds.Row]))
                     and(RPrelevementUniteFonds.NumUniteFonds=strtointeger(FSPrelevement.TableauPrelevementUniteFonds.Cells[6,FSPrelevement.TableauPrelevementUniteFonds.Row]))
                     and(RPrelevementUniteFonds.CodeTiers=FSPrelevement.TableauTiers.Cells[1,FSPrelevement.TableauTiers.Row])
                     and(RPrelevementUniteFonds.Matricule=FSPrelevement.EditMatricule.Text)
                     then
                     begin
                          NbrTiers:=NbrTiers+1;
                          FSPrelevement.TableauListePieceTiers.Rows[NbrTiers].Text:=inttostr(NbrTiers);
                          FSPrelevement.TableauListePieceTiers.Cells[1,NbrTiers]:=inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds);
                          FSPrelevement.TableauListePieceTiers.Cells[2,NbrTiers]:=RPrelevementUniteFonds.TypeProces;
                          FSPrelevement.TableauListePieceTiers.Cells[3,NbrTiers]:=RPrelevementUniteFonds.FichierConcerne;
                          FSPrelevement.TableauListePieceTiers.Cells[4,NbrTiers]:=RPrelevementUniteFonds.CodeTiers;
                          FSPrelevement.TableauListePieceTiers.Cells[5,NbrTiers]:=RPrelevementUniteFonds.ModePaiement;
                          FSPrelevement.TableauListePieceTiers.Cells[6,NbrTiers]:=RPrelevementUniteFonds.NumPiece;
                          FSPrelevement.TableauListePieceTiers.Cells[7,NbrTiers]:=RPrelevementUniteFonds.Domiciliation;
                          FSPrelevement.TableauListePieceTiers.Cells[8,NbrTiers]:=Vergule(floattostr(RPrelevementUniteFonds.ValeurPrelevement),'2','C','');
                     end;
                end;
                finally
                CloseFile(FPrelevementUniteFonds);
                end;

                if(NbrTiers>1)
                then
                begin
                     FSPrelevement.AfficheListePieceTiers.Visible:=true;
                     FSPrelevement.EditNumPrelevementUniteFonds.Text:='';
                     FSPrelevement.AfficheModePaiementUniteFonds.Height:=137;
                     FSPrelevement.TableauListePieceTiers.RowCount:=NbrTiers+1;
                     FSPrelevement.TableauListePieceTiers.SetFocus;
                     FSPrelevement.TableauListePieceTiers.ColWidths[1]:=0;
                     FSPrelevement.TableauListePieceTiers.ColWidths[2]:=0;
                     FSPrelevement.TableauListePieceTiers.ColWidths[3]:=0;
                     FSPrelevement.TableauListePieceTiers.ColWidths[4]:=0;
                     FSPrelevement.TableauListePieceTiers.FixedCols:=5;
                     AjusterColWidth(FSPrelevement.TableauListePieceTiers,'','1;2;3;4');
                end
                else
                begin
                     FSPrelevement.AfficheListePieceTiers.Visible:=false;
                     FSPrelevement.EditNumPrelevementUniteFonds.Text:='';
                     FSPrelevement.AfficheModePaiementUniteFonds.Height:=137;
                     FSPrelevement.EditModePaiement.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[14,FSPrelevement.TableauPrelevementUniteFonds.Row];
                     FSPrelevement.EditNumPiece.Text:='';
                     FSPrelevement.EditDomiciliation.Text:='';
                     FSPrelevement.EditValeurPrelevementUniteFonds.Text:='';
                     FSPrelevement.RBValeurPrecise.Checked:=strtoboolean(FSPrelevement.TableauPrelevementUniteFonds.Cells[10,FSPrelevement.TableauPrelevementUniteFonds.Row]);
                     FSPrelevement.EditCodeTiers.Text:=FSPrelevement.TableauTiers.Cells[1,FSPrelevement.TableauTiers.Row];
                     FSPrelevement.EditTiers.Text:=FSPrelevement.TableauTiers.Cells[2,FSPrelevement.TableauTiers.Row];
                     FSPrelevement.EditNumPiece.SetFocus;
                end;

                AfficherDetailArticlePrelevementMoyenTransport(FSPrelevement.EditCodeTiers.Text);
          end
          else
          begin
               FSPrelevement.EditCodeTiers.Text:=FSPrelevement.TableauTiers.Cells[1,FSPrelevement.TableauTiers.Row];
               FSPrelevement.EditTiers.Text:=FSPrelevement.TableauTiers.Cells[2,FSPrelevement.TableauTiers.Row];
               FSPrelevement.EditNumPiece.SetFocus;
          end;

     end
     else
     begin
          Showmessage('Aucun Tiers n''est sélectionné !');
     end;

     FSPrelevement.TableauTiers.Visible:=false;      
end;
end;

procedure TFSPrelevement.EditNumPieceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSPrelevement.EditDomiciliation.SetFocus;
end;

end;

procedure TFSPrelevement.EditDomiciliationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSPrelevement.EditValeurPrelevementUniteFonds.SetFocus;
end;

end;

procedure TFSPrelevement.BitBtn3Click(Sender: TObject);
begin
FSPrelevement.AfficheArchivePrelevement.Visible:=false;
end;

procedure TFSPrelevement.EditValeurPrelevementKeyPress(Sender: TObject;
  var Key: Char);
begin

if key in['.',';']then key:=',';

if key in['p','P']then FSPrelevement.RBPrelevementIndice.Checked:=true;
if key in['m','M']then FSPrelevement.RBPrelevementMouvement.Checked:=true;
if key in['i','I']then FSPrelevement.RBInitialIndice.Checked:=true;

if(key in['a'..'Z'])then key:=#0;

end;

procedure TFSPrelevement.RBCumuleTiersClick(Sender: TObject);
var  NumPrelevement,NumPrelevementFin:string;
begin
NumPrelevement:=FSPrelevement.EditNumPrelevementTiers.Text;
NumPrelevementFin:=FSPrelevement.EditNumPrelevementFinTiers.Text;
AfficheDetailTiers(FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditFondRoulement,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,FSPrelevement.RBCumuleTiers.Checked);
end;

procedure TFSPrelevement.RBDetailPieceTiersClick(Sender: TObject);
var  NumPrelevement,NumPrelevementFin:string;
begin
NumPrelevement:=FSPrelevement.EditNumPrelevementTiers.Text;
NumPrelevementFin:=FSPrelevement.EditNumPrelevementFinTiers.Text;
AfficheDetailTiers(FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditFondRoulement,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,FSPrelevement.RBCumuleTiers.Checked);
end;

procedure TFSPrelevement.TableauListePieceTiersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin 
          if(FSPrelevement.TableauListePieceTiers.Cells[1,FSPrelevement.TableauListePieceTiers.Row]='Autre')then
          begin
               FSPrelevement.AfficheModePaiementUniteFonds.Height:=137;
               FSPrelevement.EditNumPrelevementUniteFonds.Text:='';
               FSPrelevement.EditCodeTiers.Text:=FSPrelevement.EditAfficheCodeTiers.Text;
               FSPrelevement.EditTiers.Text:=FSPrelevement.EditAfficheTiers.Text;
               FSPrelevement.EditModePaiement.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[14,FSPrelevement.TableauPrelevementUniteFonds.Row];
               FSPrelevement.EditNumPiece.Text:='';
               FSPrelevement.EditDomiciliation.Text:='';
               FSPrelevement.EditValeurPrelevementUniteFonds.Text:='';
               FSPrelevement.AfficheListePieceTiers.Visible:=false;
               FSPrelevement.EditNumPiece.SetFocus;
          end
          else
          begin
               FSPrelevement.AfficheModePaiementUniteFonds.Height:=137;
               FSPrelevement.EditNumPrelevementUniteFonds.Text:=FSPrelevement.TableauListePieceTiers.Cells[1,FSPrelevement.TableauListePieceTiers.Row];
               FSPrelevement.EditCodeTiers.Text:=FSPrelevement.EditAfficheCodeTiers.Text;
               FSPrelevement.EditTiers.Text:=FSPrelevement.EditAfficheTiers.Text;
               FSPrelevement.EditModePaiement.Text:=FSPrelevement.TableauListePieceTiers.Cells[5,FSPrelevement.TableauListePieceTiers.Row];
               FSPrelevement.EditNumPiece.Text:=FSPrelevement.TableauListePieceTiers.Cells[6,FSPrelevement.TableauListePieceTiers.Row];
               FSPrelevement.EditDomiciliation.Text:=FSPrelevement.TableauListePieceTiers.Cells[7,FSPrelevement.TableauListePieceTiers.Row];

               if(Strtoreal(FSPrelevement.TableauListePieceTiers.Cells[8,FSPrelevement.TableauListePieceTiers.Row])>0)
               then FSPrelevement.EditValeurPrelevementUniteFonds.Text:=FSPrelevement.TableauListePieceTiers.Cells[8,FSPrelevement.TableauListePieceTiers.Row]
               else FSPrelevement.EditValeurPrelevementUniteFonds.Text:='';

               FSPrelevement.RBValeurPrecise.Checked:=strtoboolean(FSPrelevement.TableauPrelevementUniteFonds.Cells[10,FSPrelevement.TableauPrelevementUniteFonds.Row]);
               FSPrelevement.AfficheListePieceTiers.Visible:=false;
               FSPrelevement.EditNumPiece.SetFocus;
          end;

          AfficherDetailArticlePrelevementMoyenTransport(FSPrelevement.EditCodeTiers.Text);
     end;
end;

procedure TFSPrelevement.BitBtn5Click(Sender: TObject);
begin
FSPrelevement.AfficheSaisiePrelevement.Visible:=false;
FSPrelevement.AfficheSaisiePrelevementUniteFonds.Visible:=false;
FSPrelevement.AfficheListePieceTiers.Visible:=false;
FSPrelevement.TableauPrelevementUniteFonds.SetFocus;
end;

procedure TFSPrelevement.BitBtn6Click(Sender: TObject);
var  NotCol:string;
begin
FSPrelevement.ChoisirFont.Font.Charset:=FSPrelevement.TableauPrelevementCompteur.Font.Charset;
FSPrelevement.ChoisirFont.Font.Color:=FSPrelevement.TableauPrelevementCompteur.Font.Color;
FSPrelevement.ChoisirFont.Font.Height:=FSPrelevement.TableauPrelevementCompteur.Font.Height;
FSPrelevement.ChoisirFont.Font.Name:=FSPrelevement.TableauPrelevementCompteur.Font.Name;
FSPrelevement.ChoisirFont.Font.Pitch:=FSPrelevement.TableauPrelevementCompteur.Font.Pitch;
FSPrelevement.ChoisirFont.Font.Size:=FSPrelevement.TableauPrelevementCompteur.Font.Size;
FSPrelevement.ChoisirFont.Font.Style:=FSPrelevement.TableauPrelevementCompteur.Font.Style;

FSPrelevement.ChoisirFont.Execute;

FSPrelevement.Font:=FSPrelevement.ChoisirFont.Font;      

FSPrelevement.TableauPrelevementCompteur.Font:=FSPrelevement.ChoisirFont.Font;
NotCol:=IndiquerNotCol(FSPrelevement.TableauPrelevementCompteur);//'1;2;3;4;5;7;8;9;10;12;13;16;17;21';
AjusterColWidth(FSPrelevement.TableauPrelevementCompteur,'',NotCol);

FSPrelevement.TableauPrelevementUniteFonds.Font:=FSPrelevement.ChoisirFont.Font;
NotCol:=IndiquerNotCol(FSPrelevement.TableauPrelevementUniteFonds);//'1;2;3;4;5;6;7;8;10;11;12;13;14;15;16';
AjusterColWidth(FSPrelevement.TableauPrelevementUniteFonds,'',NotCol);

FSPrelevement.TableauTitreDetailTypeUniteFonds.Font:=FSPrelevement.ChoisirFont.Font;
NotCol:=IndiquerNotCol(FSPrelevement.TableauTitreDetailTypeUniteFonds);//'';
AjusterColWidth(FSPrelevement.TableauTitreDetailTypeUniteFonds,'',NotCol);

FSPrelevement.TableauDetailTypeUniteFonds.Font:=FSPrelevement.ChoisirFont.Font;
NotCol:=IndiquerNotCol(FSPrelevement.TableauDetailTypeUniteFonds);//'';
AjusterColWidth(FSPrelevement.TableauDetailTypeUniteFonds,'',NotCol);

FSPrelevement.TableauTitreDetailTiers.Font:=FSPrelevement.ChoisirFont.Font;
NotCol:=IndiquerNotCol(FSPrelevement.TableauTitreDetailTiers);//'';
AjusterColWidth(FSPrelevement.TableauTitreDetailTiers,'',NotCol);

FSPrelevement.TableauDetailTiers.Font:=FSPrelevement.ChoisirFont.Font;
NotCol:=IndiquerNotCol(FSPrelevement.TableauDetailTiers);//'';
AjusterColWidth(FSPrelevement.TableauDetailTiers,'',NotCol);

FSPrelevement.TableauDetailArticle.Font:=FSPrelevement.ChoisirFont.Font;
NotCol:=IndiquerNotCol(FSPrelevement.TableauDetailArticle);//'';
AjusterColWidth(FSPrelevement.TableauDetailArticle,'',NotCol);

FSPrelevement.TableauAffectationEffectifEquipe.Font:=FSPrelevement.ChoisirFont.Font;
NotCol:=IndiquerNotCol(FSPrelevement.TableauAffectationEffectifEquipe);//'1-4;6;8';
AjusterColWidth(FSPrelevement.TableauAffectationEffectifEquipe,'',NotCol);

FSPrelevement.EditNumPrelevementCompteur.Font:=FSPrelevement.ChoisirFont.Font;
FSPrelevement.EditPeriodePrelevement.Font:=FSPrelevement.ChoisirFont.Font;
FSPrelevement.EditNumEquipePrelevement.Font:=FSPrelevement.ChoisirFont.Font;
FSPrelevement.EditEquipePrelevement.Font:=FSPrelevement.ChoisirFont.Font;
FSPrelevement.EditCumuleSelectionTypeUniteFonds.Font:=FSPrelevement.ChoisirFont.Font;

end;

procedure TFSPrelevement.TableauDetailTypeUniteFondsDblClick(
  Sender: TObject);
var  R:integer;
begin

FSPrelevement.EditCumuleSelectionTypeUniteFonds.Text:='';

if(FSPrelevement.TableauDetailTypeUniteFonds.Cells[5,FSPrelevement.TableauDetailTypeUniteFonds.Row]='')
then FSPrelevement.TableauDetailTypeUniteFonds.Cells[5,FSPrelevement.TableauDetailTypeUniteFonds.Row]:='OK'
else FSPrelevement.TableauDetailTypeUniteFonds.Cells[5,FSPrelevement.TableauDetailTypeUniteFonds.Row]:='';

for R:=1 to FSPrelevement.TableauDetailTypeUniteFonds.RowCount-4 do
begin
     if(FSPrelevement.TableauDetailTypeUniteFonds.Cells[5,R]='OK')then
     begin
          FSPrelevement.EditCumuleSelectionTypeUniteFonds.Text:=
          Vergule(Floattostr(strtoreal(FSPrelevement.EditCumuleSelectionTypeUniteFonds.Text)+
          strtoreal(FSPrelevement.TableauDetailTypeUniteFonds.Cells[4,R])),'2','C','');
     end;
end;

FSPrelevement.TableauDetailTypeUniteFonds.Cells[4,FSPrelevement.TableauDetailTypeUniteFonds.RowCount-1]:=FSPrelevement.EditCumuleSelectionTypeUniteFonds.Text;

end;

procedure TFSPrelevement.BitOperationPrelevementClick(Sender: TObject);
var  E:integer;  PositionPrelevement:string;  OKPrelevementArchiver:boolean;
begin

if(FSPrelevement.AfficheOperationsPrelevement.Height=81)
then
begin
     FSPrelevement.AfficheOperationsPrelevement.Height:=FSPrelevement.PagePrincipale.Height-FSPrelevement.AfficheOperationsPrelevement.Top-30;

     if(FSPrelevement.EditMatricule.Text<>'')then
     begin
          if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,PositionPrelevement)=false)
          then FSPrelevement.BitArchiverPrelevement.Caption:='Archiver le Prélèvement'
          else FSPrelevement.BitArchiverPrelevement.Caption:='Nouvel Indexation';
     end
     else
     begin
          E:=1;
          OKPrelevementArchiver:=true;
          while(E<=FSPrelevement.TableauEffectifEquipeArchivage.RowCount-1)and(OKPrelevementArchiver=true)do
          begin
               OKPrelevementArchiver:=OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.TableauEffectifEquipeArchivage.Cells[3,E],PositionPrelevement);
          E:=E+1;
          end;

          if(OKPrelevementArchiver=false)
          then FSPrelevement.BitArchiverPrelevement.Caption:='Archiver le Prélèvement'
          else FSPrelevement.BitArchiverPrelevement.Caption:='Nouvel Indexation';
     end;
end
else
begin
     FSPrelevement.AfficheOperationsPrelevement.Height:=81;
end;

end;

procedure TFSPrelevement.BitImprimerPrelevementClick(Sender: TObject);
var R,C,CUF,DebutRow,NbrEquipe:integer;   TitreEtat,NotCol,PositionPrelevement:string;
begin
FSPrelevement.AfficheOperationsPrelevement.Height:=81;

if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,PositionPrelevement)=false)then
begin

     if(FSPrelevement.RBNbrEquipe.Checked=false)then
     begin
          FSPrelevement.MemoTitreEtat.Text:='';
          FSPrelevement.MemoTitreEtat.Lines.Add('Prélèvement N°: '+Completezerogauche(FSPrelevement.EditNumPrelevementCompteur.Text,'5'));
          FSPrelevement.MemoTitreEtat.Lines.Add(FSPrelevement.EditPeriodePrelevement.Text);
          FSPrelevement.MemoTitreEtat.Lines.Add('Equipe N°: '+FSPrelevement.EditNumEquipePrelevement.Text+'/'+FSPrelevement.EditEquipePrelevement.Text);

          TitreEtat:=FSPrelevement.MemoTitreEtat.Text;

          FSPrelevement.TableauPrelevementCompteur.Cols[15].Text:='   Entrées   ';
          FSPrelevement.TableauPrelevementCompteur.Cols[18].Text:='   Indice.Fin   ';
          FSPrelevement.TableauPrelevementCompteur.Cols[20].Text:='   Observation   ';

          NotCol:='1;2;3;4;5;7;8;9;10;12;13;16;17;19';
          for C:=0 to FSPrelevement.TableauPrelevementCompteur.ColCount-1 do
          begin
               if existenumintexte(inttostr(C),NotCol)then FSPrelevement.TableauPrelevementCompteur.ColWidths[C]:=0;
          end;
          AjusterColWidth(FSPrelevement.TableauPrelevementCompteur,'',NotCol);

          FSPrelevement.TableauPrelevementUniteFonds.Cols[17].Text:='Nombre';
          FSPrelevement.TableauPrelevementUniteFonds.Cols[18].Text:='   Montant   ';

          NotCol:='1;2;3;4;5;6;7;8;10;11;12;13;14;15;16';
          for C:=0 to FSPrelevement.TableauPrelevementUniteFonds.ColCount-1 do
          begin
               if existenumintexte(inttostr(C),NotCol)then FSPrelevement.TableauPrelevementUniteFonds.ColWidths[C]:=0;
          end;
          AjusterColWidth(FSPrelevement.TableauPrelevementUniteFonds,'',NotCol);
     end
     else
     begin
          OpenFParc(RParc);
          ChEquipe:=RParc.Parcours+'\'+Exercice+'FEquipe';
          assignfile(FEquipe,ChEquipe);
          try
          if FileExists(ChEquipe)then
          Reset(FEquipe)
          else Rewrite(FEquipe);
          Seek(FEquipe,0);
          C:=14;
          CUF:=16;
          NbrEquipe:=0;
          while not eof(FEquipe)do
          begin
               read(FEquipe,REquipe);
               NbrEquipe:=NbrEquipe+1;
               C:=C+3;
               FSPrelevement.TableauPrelevementCompteur.Cols[C-2].Text:='...';
               FSPrelevement.TableauPrelevementCompteur.Cols[C-1].Text:='Entrées '+inttostr(REquipe.NumEquipe);
               FSPrelevement.TableauPrelevementCompteur.Cols[C].Text:='     Indice '+inttostr(REquipe.NumEquipe)+'     ';

               for R:=1 to FSPrelevement.TableauPrelevementCompteur.RowCount-3 do
               begin
                    FSPrelevement.TableauPrelevementCompteur.Cells[C-2,R]:='...';
               end;

               CUF:=CUF+3;
               FSPrelevement.TableauPrelevementUniteFonds.Cols[CUF-2].Text:='...';
               FSPrelevement.TableauPrelevementUniteFonds.Cols[CUF-1].Text:='Nombre '+inttostr(REquipe.NumEquipe);
               FSPrelevement.TableauPrelevementUniteFonds.Cols[CUF].Text:='  Montant '+inttostr(REquipe.NumEquipe)+'  ';

               for R:=1 to FSPrelevement.TableauPrelevementUniteFonds.RowCount-3 do
               begin
                    FSPrelevement.TableauPrelevementUniteFonds.Cells[C-2,R]:='...';
               end;
          end;
          finally
          CloseFile(FEquipe);
          end;

          FSPrelevement.TableauPrelevementCompteur.ColCount:=C+1;
          NotCol:='1;2;3;4;5;7;8;9;10;12;13';
          for C:=0 to FSPrelevement.TableauPrelevementCompteur.ColCount-1 do
          begin
               if existenumintexte(inttostr(C),NotCol)then FSPrelevement.TableauPrelevementCompteur.ColWidths[C]:=0;
          end;
          AjusterColWidth(FSPrelevement.TableauPrelevementCompteur,'',NotCol);

          CUF:=CUF+3;
          FSPrelevement.TableauPrelevementUniteFonds.Cols[CUF-2].Text:='...';
          FSPrelevement.TableauPrelevementUniteFonds.Cols[CUF-1].Text:='Observation';
          FSPrelevement.TableauPrelevementUniteFonds.ColCount:=CUF+1;
          NotCol:='1;2;3;4;5;6;7;8;10;11;12;13;14;15;16';
          for C:=0 to FSPrelevement.TableauPrelevementUniteFonds.ColCount-1 do
          begin
               if existenumintexte(inttostr(C),NotCol)then FSPrelevement.TableauPrelevementUniteFonds.ColWidths[C]:=0;
          end;
          AjusterColWidth(FSPrelevement.TableauPrelevementUniteFonds,'',NotCol);


          FSPrelevement.MemoTitreEtat.Text:='';
          FSPrelevement.MemoTitreEtat.Lines.Add('Prélèvement N°: ');
          for C:=0 to NbrEquipe-1 do
          begin
               if(C=0)then FSPrelevement.MemoTitreEtat.Lines.Text:=FSPrelevement.MemoTitreEtat.Lines.Text+Completezerogauche(inttostr(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text)+C),'5')
                      else FSPrelevement.MemoTitreEtat.Lines.Text:=FSPrelevement.MemoTitreEtat.Lines.Text+'/'+Completezerogauche(inttostr(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text)+C),'5');
          end;

          TitreEtat:=FSPrelevement.MemoTitreEtat.Text;

     end;

     OptionsImpression(FSPrelevement.TableauTitrePrelevementCompteur,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     OptionsImpression(FSPrelevement.TableauPrelevementCompteur,'Center',DebutRow,1,TitreEtat,true,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','0','0','','11;14',False,2,FSMenuPrincipal.ImageCodebarre,true,DebutRow);

     OptionsImpression(FSPrelevement.TableauTitrePrelevementUniteFonds,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     OptionsImpression(FSPrelevement.TableauPrelevementUniteFonds,'Center',DebutRow,1,TitreEtat,true,FSPrelevement.RBOrientationPapierPrelevement.Text,'0;'+inttostr(FSPrelevement.TableauPrelevementUniteFonds.RowCount-1),'0','0','0','0','13;17;18',false,2,FSMenuPrincipal.ImageCodebarre,true,DebutRow);

     OptionsImpression(FSPrelevement.TableauTitreUtilisateur,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     OptionsImpression(FSPrelevement.TableauUtilisateur,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailUtilisateur.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','0','1','','',False,1,FSMenuPrincipal.ImageCodebarre,true,DebutRow);

     if(FSPrelevement.RBNbrEquipe.Checked=false)then
     begin
          OptionsImpression(FSPrelevement.TableauTitreEffectifEquipe,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          OptionsImpression(FSPrelevement.TableauEffectifEquipe,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailArticle.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','0','6','','',true,1,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     end
     else
     begin
          OptionsImpression(FSPrelevement.TableauTitreEquipe,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          OptionsImpression(FSPrelevement.TableauEquipe,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailArticle.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','0','0;1','','',true,1,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     end;

     FSPrelevement.Close;
end
else
begin

end;

end;

procedure TFSPrelevement.BitAnnulerPrelevementClick(Sender: TObject);
var NbrCompteurPlanifier,NbrCompteurAffecter:integer;   OKSelectEffectif:boolean; Notification,PositionPrelevement:string;
begin
     FSPrelevement.AfficheOperationsPrelevement.Height:=81;

     if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,PositionPrelevement)=true)then
     begin
          Showmessage('Le Prélevement est déja archivé !');
          exit;
     end;

     if(ControleTotalAffectationCompteur(FSPrelevement.EditNumPrelevementCompteur.Text,NbrCompteurPlanifier,NbrCompteurAffecter)=false)then
     begin
          if(NbrCompteurAffecter=0)then
          begin
               OKSelectEffectif:=true;
          end
          else
          begin
               OKSelectEffectif:=false;
               Notification:='Affectation Compteur non achevé !';
          end;
     end
     else
     begin
          if(FSPrelevement.EditMatricule.Text<>'')
          then OKSelectEffectif:=true
          else
          begin
               OKSelectEffectif:=false;
               Notification:='Veuillez sélectionner un effectif SVP !';
               FSPrelevement.EditNomEffectif.SetFocus;
          end;
     end;

     if(OKSelectEffectif=false)then
     begin

     end;

     if(FSPrelevement.EditNumPrelevementCompteur.Text<>'')
     then
     begin
          FSPrelevement.AfficheArchivePrelevement.Visible:=true;
          FSPrelevement.OperationPrelevement.Kind:=FSPrelevement.BitAnnulerPrelevement.Kind;
          FSPrelevement.OperationPrelevement.Caption:=FSPrelevement.BitAnnulerPrelevement.Caption;
          FSPrelevement.AfficheArchivePrelevement.Caption:='Vouler vous '+FSPrelevement.BitAnnulerPrelevement.Caption+' ?';
     end
     else
     begin
          Showmessage('Aucun Prélèvement n''est Sélectionné !');
     end;

end;

procedure TFSPrelevement.BitImprimeEtatPrelevementClick(Sender: TObject);
var DebutRow,EcartTableau,Ordre,MaxOrdre:integer;  TitreEtat:string;  ImprimeEtat:boolean;
begin
EnregistrementParametrePrintPrelevement;

DebutRow:=0;
ImprimeEtat:=false;

TitreEtat:='Rapport Financier du prélèvement N°: '+Completezerogauche(FSPrelevement.EditNumPrelevementCompteur.Text,'2')+' du '+FSPrelevement.EditPeriodePrelevement.Text;

if(FSPrelevement.EditMatricule.Text<>'')
then TitreEtat:=TitreEtat+' {'+FSPrelevement.EditNomEffectif.Text+'}'
else TitreEtat:=TitreEtat+' {'+FSPrelevement.EditEquipePrelevement.Text+'}';

EcartTableau:=2;

MaxOrdre:=10;

for Ordre:=1 to MaxOrdre do
begin
     if(FSPrelevement.RBDetailCompteur.Checked=true)and(strtointeger(FSPrelevement.ClasseDetailCompteur.Text)=Ordre)then
     begin
          ImprimeEtat:=ControleNext(FSPrelevement.ClasseDetailCompteur);

          OptionsImpression(FSPrelevement.TableauTitrePrelevementCompteur,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          OptionsImpression(FSPrelevement.TableauPrelevementCompteur,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailCompteur.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0;'+inttostr(FSPrelevement.TableauPrelevementCompteur.RowCount-1),'0','0','0','','11;14;15;18;19;20',ImprimeEtat,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     end;

     if(FSPrelevement.RBDetailUniteFonds.Checked=true)and(strtointeger(FSPrelevement.ClasseDetailUniteFonds.Text)=Ordre)then
     begin
          ImprimeEtat:=ControleNext(FSPrelevement.ClasseDetailUniteFonds);

          OptionsImpression(FSPrelevement.TableauTitrePrelevementUniteFonds,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          OptionsImpression(FSPrelevement.TableauPrelevementUniteFonds,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailUniteFonds.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0;'+inttostr(FSPrelevement.TableauPrelevementUniteFonds.RowCount-1),'0','0','0','','13;17;18',ImprimeEtat,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     end;

     if(FSPrelevement.RBDetailFondRoulement.Checked=true)and(strtointeger(FSPrelevement.ClasseDetailFondRoulement.Text)=Ordre)then
     begin
          ImprimeEtat:=ControleNext(FSPrelevement.ClasseDetailFondRoulement);

          OptionsImpression(FSPrelevement.TableauTitreAffectationEffectifEquipe,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          OptionsImpression(FSPrelevement.TableauAffectationEffectifEquipe,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailUniteFonds.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0;'+inttostr(FSPrelevement.TableauAffectationEffectifEquipe.RowCount-1),'0','0','0','','13;17;18',ImprimeEtat,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     end;

     if(FSPrelevement.RBDetailTypeUniteFonds.Checked=true)and(strtointeger(FSPrelevement.ClasseDetailTypeUniteFonds.Text)=Ordre)then
     begin
          ImprimeEtat:=ControleNext(FSPrelevement.ClasseDetailTypeUniteFonds);

          OptionsImpression(FSPrelevement.TableauTitreDetailTypeUniteFonds,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          OptionsImpression(FSPrelevement.TableauDetailTypeUniteFonds,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailTypeUniteFonds.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0;'+inttostr(FSPrelevement.TableauDetailTypeUniteFonds.RowCount-2)+';'+inttostr(FSPrelevement.TableauDetailTypeUniteFonds.RowCount-1),'0','0','0','','3;4',ImprimeEtat,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     end;

     if(FSPrelevement.RBDetailTiers.Checked=true)and(strtointeger(FSPrelevement.ClasseDetailTiers.Text)=Ordre)then
     begin
          ImprimeEtat:=ControleNext(FSPrelevement.ClasseDetailTiers);

          OptionsImpression(FSPrelevement.TableauTitreDetailTiers,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',false,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          OptionsImpression(FSPrelevement.TableauDetailTiers,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailTiers.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0;'+inttostr(FSPrelevement.TableauDetailTiers.RowCount-1),'0','0','0','','6',ImprimeEtat,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     end;

     if(FSPrelevement.RBDetailArticle.Checked=true)and(strtointeger(FSPrelevement.ClasseDetailArticle.Text)=Ordre)then
     begin
          ImprimeEtat:=ControleNext(FSPrelevement.ClasseDetailArticle);

          if(FSPrelevement.RBDetailArticleSimple.Checked=true)then
          begin
               FSPrelevement.TableauTitreDetailArticle.Cells[0,0]:='Détail article '+FSPrelevement.EditCalculeValeur.Text;
               OptionsImpression(FSPrelevement.TableauTitreDetailArticle,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
               OptionsImpression(FSPrelevement.TableauEtatStockPrelevement,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailArticle.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','0','0','','4-13',ImprimeEtat,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          end
          else
          begin
               FSPrelevement.TableauTitreDetailArticle.Cells[0,0]:='Détail article';
               OptionsImpression(FSPrelevement.TableauTitreDetailArticle,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
               OptionsImpression(FSPrelevement.TableauDetailArticle,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailArticle.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0;'+inttostr(FSPrelevement.TableauDetailArticle.RowCount-1),'0','0','0','','3;4;5;6;7;8',ImprimeEtat,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          end;
     end;

     if(FSPrelevement.RBDetailArborescenceArticle.Checked=true)and(strtointeger(FSPrelevement.ClasseDetailArborescenceArticle.Text)=Ordre)then
     begin
          ImprimeEtat:=ControleNext(FSPrelevement.ClasseDetailArborescenceArticle);

          OptionsImpression(FSPrelevement.TableauTitreArborescenceArticle,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          OptionsImpression(FSPrelevement.TableauArborescenceArticle,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailArborescenceArticle.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0;'+inttostr(FSPrelevement.TableauArborescenceArticle.RowCount-1),'0','0','0','','3;4;5;6;7;8',ImprimeEtat,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     end;

     if(FSPrelevement.RBDetailRecapitulatif.Checked=true)and(strtointeger(FSPrelevement.ClasseDetailRecapitulatif.Text)=Ordre)then
     begin
          ImprimeEtat:=ControleNext(FSPrelevement.ClasseDetailRecapitulatif);

          OptionsImpression(FSPrelevement.TableauTitreRecapitulatif,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          OptionsImpression(FSPrelevement.TableauRecapitulatif,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailRecapitulatif.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0;'+inttostr(FSPrelevement.TableauRecapitulatif.RowCount-1),'0','0','0','','2',ImprimeEtat,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     end;


     if(FSPrelevement.RBDetailUtilisateur.Checked=true)and(strtointeger(FSPrelevement.ClasseDetailUtilisateur.Text)=Ordre)then
     begin
          ImprimeEtat:=ControleNext(FSPrelevement.ClasseDetailUtilisateur);

          OptionsImpression(FSPrelevement.TableauTitreUtilisateur,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          OptionsImpression(FSPrelevement.TableauUtilisateur,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailUtilisateur.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','0','1','','3',ImprimeEtat,1,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     end;

     if(FSPrelevement.RBDetailEquipe.Checked=true)and(strtointeger(FSPrelevement.ClasseDetailEquipe.Text)=Ordre)then
     begin
          ImprimeEtat:=ControleNext(FSPrelevement.ClasseDetailEquipe);

          if(FSPrelevement.RBNbrEquipeImprimer.Checked=false)then
          begin
               OptionsImpression(FSPrelevement.TableauTitreEffectifEquipe,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
               OptionsImpression(FSPrelevement.TableauEffectifEquipe,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailEquipe.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','0','6','','8',ImprimeEtat,1,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          end
          else
          begin
               OptionsImpression(FSPrelevement.TableauTitreEquipe,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
               OptionsImpression(FSPrelevement.TableauEquipe,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailEquipe.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','0','6','','',ImprimeEtat,1,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          end;
     end;
end;

if(FSPrelevement.RBEmargementPageSepare.Checked=true)then
begin
     ImprimeEtat:=false;

     OptionsImpression(FSPrelevement.TableauTitreUtilisateur,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     OptionsImpression(FSPrelevement.TableauUtilisateur,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailUtilisateur.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','0','1','','3',ImprimeEtat,1,FSMenuPrincipal.ImageCodebarre,true,DebutRow);

     ImprimeEtat:=true;

     if(FSPrelevement.RBNbrEquipeImprimer.Checked=false)then
     begin
          OptionsImpression(FSPrelevement.TableauTitreEffectifEquipe,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          OptionsImpression(FSPrelevement.TableauEffectifEquipe,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailEquipe.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','0','6','','8',ImprimeEtat,1,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     end
     else
     begin
          OptionsImpression(FSPrelevement.TableauTitreEquipe,'Center',DebutRow,1,TitreEtat,False,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','','','','',False,0,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
          OptionsImpression(FSPrelevement.TableauEquipe,'Center',DebutRow,1,TitreEtat,FSPrelevement.RBAjusterDetailEquipe.Checked,FSPrelevement.RBOrientationPapierPrelevement.Text,'0','0','0','6','','',ImprimeEtat,1,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
     end;
end;


end;

procedure TFSPrelevement.RBDetailCompteurClick(Sender: TObject);
begin

NumClasse(FSPrelevement.ClasseDetailCompteur,FSPrelevement.RBDetailCompteur.Checked)

end;

procedure TFSPrelevement.RBDetailUniteFondsClick(Sender: TObject);
begin

NumClasse(FSPrelevement.ClasseDetailUniteFonds,FSPrelevement.RBDetailUniteFonds.Checked)

end;

procedure TFSPrelevement.RBDetailTypeUniteFondsClick(Sender: TObject);
begin

NumClasse(FSPrelevement.ClasseDetailTypeUniteFonds,FSPrelevement.RBDetailTypeUniteFonds.Checked);

end;

procedure TFSPrelevement.RBDetailTiersClick(Sender: TObject);
begin

NumClasse(FSPrelevement.ClasseDetailTiers,FSPrelevement.RBDetailTiers.Checked);

end;

procedure TFSPrelevement.RBDetailArticleClick(Sender: TObject);
begin

NumClasse(FSPrelevement.ClasseDetailArticle,FSPrelevement.RBDetailArticle.Checked);

end;

procedure TFSPrelevement.RBNbrEquipeClick(Sender: TObject);
begin

if(FSPrelevement.RBNbrEquipe.Checked=true)
then FSPrelevement.RBNbrEquipe.Caption:='Global.'
else FSPrelevement.RBNbrEquipe.Caption:='Individuel.';

end;

procedure TFSPrelevement.RBNbrEquipeImprimerClick(Sender: TObject);
begin

if(FSPrelevement.RBNbrEquipeImprimer.Checked=true)
then FSPrelevement.RBNbrEquipeImprimer.Caption:='Global.'
else FSPrelevement.RBNbrEquipeImprimer.Caption:='Individuel.';

end;

procedure TFSPrelevement.TableauPrelevementCompteurKeyPress(
  Sender: TObject; var Key: Char);
begin

if key in['d','D']then
begin
     FSPrelevement.AfficheDetailCompteurs.Visible:=true;
     DetailMouvementCompteur(FSPrelevement.TableauDetailCompteurs,FSPrelevement.EditNumPrelevementTiers.Text,FSPrelevement.EditNumPrelevementFinTiers.Text,FSPrelevement.EditMatricule.Text,FSPrelevement.TableauPrelevementCompteur.Cells[4,FSPrelevement.TableauPrelevementCompteur.Row],'');
end;

end;

procedure TFSPrelevement.BitBtn4Click(Sender: TObject);
begin
FSPrelevement.AfficheDetailCompteurs.Visible:=false;
end;

procedure TFSPrelevement.BitBtn7Click(Sender: TObject);
var   R:integer;
begin

if(FSPrelevement.RBTypeUFond.Checked=true)then
begin
     FSPrelevement.Diagramme.Visible:=true;
     FSPrelevement.Series1.Clear;
     FSPrelevement.Diagramme.Title.Text.Text:='Type Unités de Fonds '+FSPrelevement.EditPeriodePrelevement.Text;
     for R:=1 to FSPrelevement.TableauDetailTypeUniteFonds.RowCount-4 do
     begin
          if(strtoreal(FSPrelevement.TableauDetailTypeUniteFonds.Cells[4,R])<>0)then
          FSPrelevement.Series1.Add(strtoreal(FSPrelevement.TableauDetailTypeUniteFonds.Cells[4,R]),FSPrelevement.TableauDetailTypeUniteFonds.Cells[2,R],clTeeColor);
     end;
end;

if(FSPrelevement.RBUFond.Checked=true)then
begin
     FSPrelevement.Diagramme.Visible:=true;
     FSPrelevement.Series1.Clear;
     FSPrelevement.Diagramme.Title.Text.Text:='Unités de Fonds '+FSPrelevement.EditPeriodePrelevement.Text;
     for R:=1 to FSPrelevement.TableauPrelevementUniteFonds.RowCount-3 do
     begin
          if(strtoreal(FSPrelevement.TableauPrelevementUniteFonds.Cells[18,R])<>0)then
          FSPrelevement.Series1.Add(strtoreal(FSPrelevement.TableauPrelevementUniteFonds.Cells[18,R]),FSPrelevement.TableauPrelevementUniteFonds.Cells[9,R],clTeeColor);
     end;
end;

end;

procedure TFSPrelevement.BitBtn8Click(Sender: TObject);
begin
FSPrelevement.Diagramme.Visible:=false;
end;

procedure TFSPrelevement.PageDetailArticleUniteFondsShow(Sender: TObject);
begin
FSPrelevement.AfficheTravauxPrelevementAchever.Visible:=false;
FSPrelevement.Diagramme.Visible:=false;
FSPrelevement.AfficheDetailCompteurs.Visible:=false;
FSPrelevement.AfficheDetaildesArticlesArchive.Visible:=false;
end;

procedure TFSPrelevement.PagePrelevementCompteursUniteFondsShow(
  Sender: TObject);
begin
FSPrelevement.AfficheTravauxPrelevementAchever.Visible:=false;
FSPrelevement.AfficheDetailCompteurs.Visible:=false;
end;

procedure TFSPrelevement.TabSheet1Show(Sender: TObject);
begin
FSPrelevement.AfficheTravauxPrelevementAchever.Visible:=false;
FSPrelevement.AfficheDetailCompteurs.Visible:=false;
end;

procedure TFSPrelevement.TabSheet2Show(Sender: TObject);
var PositionPrelevement:string; OKMiseAJourDiversClient:boolean;
begin
FSPrelevement.AfficheDetailCompteurs.Visible:=false;

AfficherEnregistrementParametrePrintPrelevement;

OKMiseAJourDiversClient:=false;

if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,PositionPrelevement)=true)then
begin
     if(FSPrelevement.RBAutoriseModificationUnitesFonds.Checked=true)then
     begin
          if(strtoreal(FSPrelevement.EditSoldeCompteur.Text)>strtoreal(FSPrelevement.EditEcartAutorise.Text))
          or(strtoreal(FSPrelevement.EditSoldeUnitesFonds.Text)>strtoreal(FSPrelevement.EditEcartAutorise.Text))
          then OKMiseAJourDiversClient:=true;
     end;
end
else
begin
     if(strtoreal(FSPrelevement.EditSoldeCompteur.Text)>strtoreal(FSPrelevement.EditEcartAutorise.Text))
     or(strtoreal(FSPrelevement.EditSoldeUnitesFonds.Text)>strtoreal(FSPrelevement.EditEcartAutorise.Text))
     then OKMiseAJourDiversClient:=true;
end;

if(OKMiseAJourDiversClient=true)then
begin
     FSPrelevement.BitPrint.Visible:=true;
     FSPrelevement.BitSave.Visible:=false;
     FSPrelevement.BitChargementEffectif.Visible:=false;

     FSPrelevement.AfficheTravauxPrelevementAchever.Visible:=true;
     FSPrelevement.TableauControleAttributionArticleAuxUnitesFonds.Visible:=false;
end
else
begin
     if(FSPrelevement.RBArchiveModifier.Checked=true)
     then ControleEtatPrelevement;
end;

end;

procedure TFSPrelevement.TableauDetailArticleKeyPress(Sender: TObject;
  var Key: Char);
begin

if key in['m','M']then
begin
     FSPrelevement.AfficheOptionTableauDetailArticle.Visible:=true;

     FSPrelevement.EditCodeDetailArticle.Text:=FSPrelevement.TableauDetailArticle.Cells[1,FSPrelevement.TableauDetailArticle.Row];
     FSPrelevement.EditDesignationDetailArticle.Text:=FSPrelevement.TableauDetailArticle.Cells[2,FSPrelevement.TableauDetailArticle.Row];
     FSPrelevement.EditQteInitialeDetailArticle.Text:=FSPrelevement.TableauDetailArticle.Cells[4,FSPrelevement.TableauDetailArticle.Row];
     FSPrelevement.EditQteEntreeDetailArticle.Text:=FSPrelevement.TableauDetailArticle.Cells[5,FSPrelevement.TableauDetailArticle.Row];
     FSPrelevement.EditQteSortieDetailArticle.Text:=FSPrelevement.TableauDetailArticle.Cells[6,FSPrelevement.TableauDetailArticle.Row];
     FSPrelevement.EditStockDetailArticle.Text:=FSPrelevement.TableauDetailArticle.Cells[7,FSPrelevement.TableauDetailArticle.Row];

     FSPrelevement.EditQteInitialeDetailArticle.SetFocus;
end;

if key in['d','D']then
begin
     FSPrelevement.AfficheDetailCompteurs.Visible:=true;
     DetailMouvementCompteur(FSPrelevement.TableauDetailCompteurs,FSPrelevement.EditNumPrelevementTiers.Text,FSPrelevement.EditNumPrelevementFinTiers.Text,FSPrelevement.EditMatricule.Text,'',FSPrelevement.TableauDetailArticle.Cells[1,FSPrelevement.TableauDetailArticle.Row]);
end;

end;

procedure TFSPrelevement.TableauDetailArticleClick(Sender: TObject);
begin
FSPrelevement.AfficheDetailCompteurs.Visible:=false;
FSPrelevement.AfficheOptionTableauDetailArticle.Visible:=false;
end;

procedure TFSPrelevement.BitBtn10Click(Sender: TObject);
var  TitreEtat:string; DebutRow:integer;
begin

TitreEtat:='Détail Stock '+FSPrelevement.EditPeriodePrelevement.Text;
OptionsImpression(FSPrelevement.TableauDetailCompteurs,'Center',1,1,TitreEtat,true,'Automatique','0','0','0','0;1;2;3;5','','7;8',true,2,FSMenuPrincipal.ImageCodebarre,true,DebutRow);
end;

procedure TFSPrelevement.BitBtn11Click(Sender: TObject);
begin
FSPrelevement.AfficheOperationDetailUF.Visible:=false;
FSPrelevement.AfficheDetailUniteFonds.Visible:=false;
FSPrelevement.TableauPrelevementUniteFonds.SetFocus;
end;

procedure TFSPrelevement.TableauPrelevementUniteFondsKeyPress(
  Sender: TObject; var Key: Char);
var  i,C,NbrUniteFonds,NbrCompteurPlanifier,NbrCompteurAffecter:integer;
     FichierConcerne,CodeTiers,NomTiers,Notification,NotRow,NotCol,PositionPrelevement:string;  OKSelectEffectif:boolean;
begin

if key in ['m','M','n','N','d','D','s','S','c','C']then
begin
     if(FSPrelevement.RBAutoriseModificationUnitesFonds.Checked=false)then
     begin
          if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,PositionPrelevement)=true)then
          begin
               Showmessage('Le Prélevement est déja archivé !');
               exit;
          end;
     end;

     if(ControleTotalAffectationCompteur(FSPrelevement.EditNumPrelevementCompteur.Text,NbrCompteurPlanifier,NbrCompteurAffecter)=false)then
     begin
          if(NbrCompteurAffecter=0)then
          begin
               OKSelectEffectif:=true;
          end
          else
          begin
               OKSelectEffectif:=false;
               Notification:='Affectation Compteur non achevé !';
          end;
     end
     else
     begin
          if(FSPrelevement.EditMatricule.Text<>'')
          then OKSelectEffectif:=true
          else
          begin
               OKSelectEffectif:=false;
               Notification:='Veuillez sélectionner un effectif SVP !';
               FSPrelevement.EditNomEffectif.SetFocus;
          end;
     end;

     if(OKSelectEffectif=false)then
     begin
          Showmessage(Notification);
          Exit;
     end;
end;

if key in ['n','N']then
begin
     if(FSPrelevement.TableauPrelevementUniteFonds.Cells[1,FSPrelevement.TableauPrelevementUniteFonds.Row]<>'')then
     begin
          if(strtoboolean(FSPrelevement.TableauPrelevementUniteFonds.Cells[10,FSPrelevement.TableauPrelevementUniteFonds.Row])=true)then
          begin
               FSPrelevement.AfficheSaisiePrelevementUniteFonds.Visible:=true;
               FSPrelevement.EditARowTableauPrelevementUniteFonds.Text:=inttostr(FSPrelevement.TableauPrelevementUniteFonds.Row);
               FSPrelevement.EditEquipeUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[3,FSPrelevement.TableauPrelevementUniteFonds.Row];
               FSPrelevement.EditDateInUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
               FSPrelevement.EditHeureInUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
               FSPrelevement.EditDateFinUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
               FSPrelevement.EditHeureFinUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
               FSPrelevement.EditUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[9,FSPrelevement.TableauPrelevementUniteFonds.Row];

               if(strtoreal(FSPrelevement.TableauPrelevementUniteFonds.Cells[17,FSPrelevement.TableauPrelevementUniteFonds.Row])>0)
               then FSPrelevement.EditValeurPrelevementUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[17,FSPrelevement.TableauPrelevementUniteFonds.Row]
               else FSPrelevement.EditValeurPrelevementUniteFonds.Text:='';

               FSPrelevement.EditValeurPrelevementUniteFonds.SetFocus;

               FSPrelevement.AfficheModePaiementUniteFonds.Height:=0;
               FSPrelevement.RBValeurPrecise.Checked:=strtoboolean(FSPrelevement.TableauPrelevementUniteFonds.Cells[10,FSPrelevement.TableauPrelevementUniteFonds.Row]);

               TiersDivers(FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row],FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row],CodeTiers,NomTiers);
               FSPrelevement.EditCodeTiers.Text:=CodeTiers;
               FSPrelevement.EditTiers.Text:=NomTiers;
               FSPrelevement.EditModePaiement.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[14,FSPrelevement.TableauPrelevementUniteFonds.Row];
               FSPrelevement.EditNumPiece.Text:='';
               FSPrelevement.EditDomiciliation.Text:='';
               FSPrelevement.EditNumPrelevementUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[0,FSPrelevement.TableauPrelevementUniteFonds.Row];
          end
          else
          begin
               ListeTiers(FSPrelevement.TableauTiers,FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row],FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row],'','','',false);
               FSPrelevement.TableauTiers.SetFocus;
          end;
     end;
end;

if key in ['m','M','d','D','s','S']then
begin
     FSPrelevement.RBSuppressionAutorisee.Checked:= not strtoboolean(FSPrelevement.TableauPrelevementUniteFonds.Cells[10,FSPrelevement.TableauPrelevementUniteFonds.Row]);
     if(key in ['s','S'])and(strtoboolean(FSPrelevement.TableauPrelevementUniteFonds.Cells[10,FSPrelevement.TableauPrelevementUniteFonds.Row])=true)then
     begin
          Showmessage('Suppression non autorisée !');
          OKSelectEffectif:=false;
     end
     else OKSelectEffectif:=true;

     if(OKSelectEffectif=true)then
     begin
          FSPrelevement.AfficheDetailUniteFonds.Visible:=true;
          FSPrelevement.TableauDetailUniteFonds.RowCount:=2;
          FSPrelevement.TableauDetailUniteFonds.Rows[1].Text:='';

          FSPrelevement.TableauDetailUniteFonds.ColCount:=10;
          FSPrelevement.TableauDetailUniteFonds.Cols[1].Text:='NumPUF';
          FSPrelevement.TableauDetailUniteFonds.Cols[2].Text:='TypeProces';
          FSPrelevement.TableauDetailUniteFonds.Cols[3].Text:='FichierConcerne';
          FSPrelevement.TableauDetailUniteFonds.Cols[4].Text:='CodeTiers';
          FSPrelevement.TableauDetailUniteFonds.Cols[5].Text:='Tiers';
          FSPrelevement.TableauDetailUniteFonds.Cols[6].Text:='ModePaiement';
          FSPrelevement.TableauDetailUniteFonds.Cols[7].Text:='NumPiece';
          FSPrelevement.TableauDetailUniteFonds.Cols[8].Text:='Domiciliation';
          FSPrelevement.TableauDetailUniteFonds.Cols[9].Text:='Valeure';

          NbrUniteFonds:=0;

          //FichierConcerne:='F'+FSPrelevement.EditModifierPrelevement.Text+'PrelevementUniteFonds';

          RPrelevement:=ChercherPrelevement(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text),ExerciceAnnee,FSPrelevement.EditMatricule.Text,PositionPrelevement);
          if(RPrelevement.Archiver=false)
          then FichierConcerne:='FPrelevementUniteFonds'
          else FichierConcerne:='FArchivePrelevementUniteFonds';

          OpenFParc(RParc);
          ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+FichierConcerne;
          assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
          try
          if FileExists(ChPrelevementUniteFonds)then
          Reset(FPrelevementUniteFonds)
          else Rewrite(FPrelevementUniteFonds);
          Seek(FPrelevementUniteFonds,0);
          i:=0;
          while not eof(FPrelevementUniteFonds)do
          begin
               i:=i+1;
               read(FPrelevementUniteFonds,RPrelevementUniteFonds);
               if(RPrelevementUniteFonds.NumPrelevement=strtointeger(FSPrelevement.TableauPrelevementUniteFonds.Cells[1,FSPrelevement.TableauPrelevementUniteFonds.Row]))
               and(RPrelevementUniteFonds.NumUniteFonds=strtointeger(FSPrelevement.TableauPrelevementUniteFonds.Cells[6,FSPrelevement.TableauPrelevementUniteFonds.Row]))
               and(RPrelevementUniteFonds.Matricule=FSPrelevement.EditMatricule.Text)
               and(RPrelevementUniteFonds.ValeurPrelevement<>0)
               then
               begin
                    NbrUniteFonds:=NbrUniteFonds+1;
                    FSPrelevement.TableauDetailUniteFonds.Rows[NbrUniteFonds].Text:=inttostr(NbrUniteFonds);
                    FSPrelevement.TableauDetailUniteFonds.Cells[1,NbrUniteFonds]:=inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds);
                    FSPrelevement.TableauDetailUniteFonds.Cells[2,NbrUniteFonds]:=RPrelevementUniteFonds.TypeProces;
                    FSPrelevement.TableauDetailUniteFonds.Cells[3,NbrUniteFonds]:=RPrelevementUniteFonds.FichierConcerne;
                    FSPrelevement.TableauDetailUniteFonds.Cells[4,NbrUniteFonds]:=RPrelevementUniteFonds.CodeTiers;
                    FSPrelevement.TableauDetailUniteFonds.Cells[5,NbrUniteFonds]:=ImporteDataProcesTiers(RPrelevementUniteFonds.TypeProces,RPrelevementUniteFonds.FichierConcerne,RPrelevementUniteFonds.CodeTiers,PositionTiersRecherche);
                    FSPrelevement.TableauDetailUniteFonds.Cells[6,NbrUniteFonds]:=RPrelevementUniteFonds.ModePaiement;
                    FSPrelevement.TableauDetailUniteFonds.Cells[7,NbrUniteFonds]:=RPrelevementUniteFonds.NumPiece;
                    FSPrelevement.TableauDetailUniteFonds.Cells[8,NbrUniteFonds]:=RPrelevementUniteFonds.Domiciliation;
                    FSPrelevement.TableauDetailUniteFonds.Cells[9,NbrUniteFonds]:=Vergule(floattostr(RPrelevementUniteFonds.ValeurPrelevement),'2','C','');
               end;
          end;
          finally
          CloseFile(FPrelevementUniteFonds);
          end;

          if(NbrUniteFonds>0)
          then
          begin
               FSPrelevement.TableauDetailUniteFonds.RowCount:=NbrUniteFonds+1;
               FSPrelevement.TableauDetailUniteFonds.SetFocus;
               NotRow:='';
               NotCol:='2;6-8';
               for C:=1 to FSPrelevement.TableauDetailUniteFonds.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSPrelevement.TableauDetailUniteFonds.ColWidths[C]:=0;
               AjusterColWidth(FSPrelevement.TableauDetailUniteFonds,NotRow,NotCol);
          end
          else
          begin
               FSPrelevement.TableauDetailUniteFonds.RowCount:=2;
          end;
     end
     else
     begin
          Showmessage('Opération invalide !');
     end;
end;

if key in ['c','C']then
begin
     if(ControleAttributionArticleAuxUnitesFonds(FSPrelevement.TableauDetailUniteFonds,FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,FSPrelevement.TableauPrelevementUniteFonds.Cells[6,FSPrelevement.TableauPrelevementUniteFonds.Row])=true)then
     begin
          FSPrelevement.AfficheDetailUniteFonds.Visible:=true;
     end
     else
     begin
          AfficherMessage('Aucune anomalie !');
     end;
end;

end;

procedure TFSPrelevement.TableauDetailUniteFondsClick(Sender: TObject);
var  TypeData:string;
begin
FSPrelevement.AfficheOperationDetailUF.Visible:=false;

if(FSPrelevement.RBTrieRubriqueSelect.Checked=true)then
begin
     FSPrelevement.RBTrieRubriqueSelect.Checked:=false;
     TypeData:='';
     case FSPrelevement.TableauDetailUniteFonds.Col of
     1: TypeData:='Num';
     9: TypeData:='Num';
     end;
     TrierTableauARowSpecial(FSPrelevement.TableauDetailUniteFonds,1,FSPrelevement.TableauDetailUniteFonds.RowCount-1,1,inttostr(FSPrelevement.TableauDetailUniteFonds.Col),TypeData,'+');
end;

end;

procedure TFSPrelevement.BitBtn12Click(Sender: TObject);
begin
FSPrelevement.AfficheOperationDetailUF.Visible:=false;
end;

procedure TFSPrelevement.BitAfficheOperationDetailUFClick(Sender: TObject);
var i,C,NbrUniteFonds,RowSelect,NumPrelevementUF:integer; Confirme:boolean;
    FichierConcerne,NumPrelevement,NumPrelevementFin,Matricule,DateDebut,HeureDebut,DateFin,HeureFin,NotRow,NotCol,PositionPrelevement,NumStructure:string;
begin
NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
NumPrelevementFin:='';
Matricule:=FSPrelevement.EditMatricule.Text;
DateDebut:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
HeureDebut:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
DateFin:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
HeureFin:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];

RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);
if(RPrelevement.Archiver=false)
then FichierConcerne:='FPrelevementUniteFonds'
else FichierConcerne:='FArchivePrelevementUniteFonds';

RowSelect:=FSPrelevement.TableauPrelevementUniteFonds.Row;
AnnulationFPrelevementUniteFonds(FichierConcerne,strtointeger(NumPrelevement),Matricule,strtointeger(FSPrelevement.TableauDetailUniteFonds.Cells[1,FSPrelevement.TableauDetailUniteFonds.Row]),Confirme);

if(Confirme=true)then
begin
     if(RPrelevement.Archiver=false)
     then FichierConcerne:='FDetailArticlePrelevementUniteFonds'
     else FichierConcerne:='FArchiveDetailArticlePrelevementUniteFonds';
     AnnulationFDetailArticlePrelevementUniteFonds(FichierConcerne,strtointeger(NumPrelevement),Matricule,strtointeger(FSPrelevement.TableauDetailUniteFonds.Cells[1,FSPrelevement.TableauDetailUniteFonds.Row]),Confirme);
end;

ProcPrelevementUniteFonds(FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,FSPrelevement.TableauPrelevementUniteFonds.Cells[6,FSPrelevement.TableauPrelevementUniteFonds.Row]);
AfficheDetailTypeUniteFonds(FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds);
//AfficheDetailTiers(FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditFondRoulement,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,FSPrelevement.RBCumuleTiers.Checked);
AfficheDetailArticle(FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.EditMontantArticle,NumPrelevement,NumPrelevementFin);
FSPrelevement.EditSoldePrelevement.Text:=Vergule(floattostr(ValePrecis(strtoreal(FSPrelevement.EditMontantUniteFonds.Text)-strtoreal(FSPrelevement.EditMontantCompteur.Text)-strtoreal(FSPrelevement.EditFondRoulement.Text),2)),'2','C','');
MiseAJourPrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,strtoreal(FSPrelevement.EditMontantCompteur.Text),strtoreal(FSPrelevement.EditFondRoulement.Text),strtoreal(FSPrelevement.EditMontantUniteFonds.Text),strtoreal(FSPrelevement.EditSoldePrelevement.Text),true);

ExecuterMiseAJourDetailArticleDiversTiers;

AfficheDetailTiers(FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditFondRoulement,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,FSPrelevement.RBCumuleTiers.Checked);

FSPrelevement.TableauPrelevementUniteFonds.Row:=RowSelect;

if(FSPrelevement.AfficheDetailUniteFonds.Visible=true)then
begin
          FSPrelevement.TableauDetailUniteFonds.RowCount:=2;
          FSPrelevement.TableauDetailUniteFonds.Rows[1].Text:='';
          FSPrelevement.TableauDetailUniteFonds.Cols[1].Text:='NumPUF';
          FSPrelevement.TableauDetailUniteFonds.Cols[2].Text:='TypeProces';
          FSPrelevement.TableauDetailUniteFonds.Cols[3].Text:='FichierConcerne';
          FSPrelevement.TableauDetailUniteFonds.Cols[4].Text:='CodeTiers';
          FSPrelevement.TableauDetailUniteFonds.Cols[5].Text:='Tiers';
          FSPrelevement.TableauDetailUniteFonds.Cols[6].Text:='ModePaiement';
          FSPrelevement.TableauDetailUniteFonds.Cols[7].Text:='NumPiece';
          FSPrelevement.TableauDetailUniteFonds.Cols[8].Text:='Domiciliation';
          FSPrelevement.TableauDetailUniteFonds.Cols[9].Text:='Valeure';

          NbrUniteFonds:=0;

          RPrelevement:=ChercherPrelevement(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text),ExerciceAnnee,FSPrelevement.EditMatricule.Text,PositionPrelevement);
          if(RPrelevement.Archiver=false)
          then FichierConcerne:='FPrelevementUniteFonds'
          else FichierConcerne:='FArchivePrelevementUniteFonds';

          OpenFParc(RParc);
          ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+FichierConcerne;
          assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
          try
          if FileExists(ChPrelevementUniteFonds)then
          Reset(FPrelevementUniteFonds)
          else Rewrite(FPrelevementUniteFonds);
          Seek(FPrelevementUniteFonds,0);
          i:=0;
          while not eof(FPrelevementUniteFonds)do
          begin
               i:=i+1;
               read(FPrelevementUniteFonds,RPrelevementUniteFonds);
               if(RPrelevementUniteFonds.NumPrelevement=strtointeger(FSPrelevement.TableauPrelevementUniteFonds.Cells[1,FSPrelevement.TableauPrelevementUniteFonds.Row]))
               and(RPrelevementUniteFonds.NumUniteFonds=strtointeger(FSPrelevement.TableauPrelevementUniteFonds.Cells[6,FSPrelevement.TableauPrelevementUniteFonds.Row]))
               and(RPrelevementUniteFonds.Matricule=FSPrelevement.EditMatricule.Text)
               and(RPrelevementUniteFonds.ValeurPrelevement<>0)
               then
               begin
                    NbrUniteFonds:=NbrUniteFonds+1;
                    FSPrelevement.TableauDetailUniteFonds.Rows[NbrUniteFonds].Text:=inttostr(NbrUniteFonds);
                    FSPrelevement.TableauDetailUniteFonds.Cells[1,NbrUniteFonds]:=inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds);
                    FSPrelevement.TableauDetailUniteFonds.Cells[2,NbrUniteFonds]:=RPrelevementUniteFonds.TypeProces;
                    FSPrelevement.TableauDetailUniteFonds.Cells[3,NbrUniteFonds]:=RPrelevementUniteFonds.FichierConcerne;
                    FSPrelevement.TableauDetailUniteFonds.Cells[4,NbrUniteFonds]:=RPrelevementUniteFonds.CodeTiers;
                    FSPrelevement.TableauDetailUniteFonds.Cells[5,NbrUniteFonds]:=ImporteDataProcesTiers(RPrelevementUniteFonds.TypeProces,RPrelevementUniteFonds.FichierConcerne,RPrelevementUniteFonds.CodeTiers,PositionTiersRecherche);
                    FSPrelevement.TableauDetailUniteFonds.Cells[6,NbrUniteFonds]:=RPrelevementUniteFonds.ModePaiement;
                    FSPrelevement.TableauDetailUniteFonds.Cells[7,NbrUniteFonds]:=RPrelevementUniteFonds.NumPiece;
                    FSPrelevement.TableauDetailUniteFonds.Cells[8,NbrUniteFonds]:=RPrelevementUniteFonds.Domiciliation;
                    FSPrelevement.TableauDetailUniteFonds.Cells[9,NbrUniteFonds]:=Vergule(floattostr(RPrelevementUniteFonds.ValeurPrelevement),'2','C','');
               end;
          end;
          finally
          CloseFile(FPrelevementUniteFonds);
          end;

          if(NbrUniteFonds>1)
          then
          begin
               FSPrelevement.TableauDetailUniteFonds.RowCount:=NbrUniteFonds+1;
               FSPrelevement.TableauDetailUniteFonds.SetFocus;
               NotRow:='';
               NotCol:='2;6-8';
               for C:=1 to FSPrelevement.TableauDetailUniteFonds.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSPrelevement.TableauDetailUniteFonds.ColWidths[C]:=0;
               AjusterColWidth(FSPrelevement.TableauDetailUniteFonds,NotRow,NotCol);
          end
          else
          begin
               FSPrelevement.TableauDetailUniteFonds.RowCount:=2;
          end;
end;

if(FSPrelevement.TableauDetailUniteFonds.Enabled=true)then FSPrelevement.TableauDetailUniteFonds.SetFocus;
FSPrelevement.AfficheOperationDetailUF.Visible:=false;
end;

procedure TFSPrelevement.TableauDetailUniteFondsKeyPress(Sender: TObject;
  var Key: Char);
var  CodeTiers,NomTiers:string;
begin

if(key in['m','M'])then
begin
     FSPrelevement.AfficheSaisiePrelevementUniteFonds.Visible:=true;
     FSPrelevement.EditARowTableauPrelevementUniteFonds.Text:=inttostr(FSPrelevement.TableauPrelevementUniteFonds.Row);
     if(FSPrelevement.RBSuppressionAutorisee.Checked=false)
     then FSPrelevement.AfficheModePaiementUniteFonds.Height:=0
     else FSPrelevement.AfficheModePaiementUniteFonds.Height:=137;

     FSPrelevement.RBValeurPrecise.Checked:=strtoboolean(FSPrelevement.TableauPrelevementUniteFonds.Cells[10,FSPrelevement.TableauPrelevementUniteFonds.Row]);

     FSPrelevement.EditARowTableauPrelevementUniteFonds.Text:=inttostr(FSPrelevement.TableauPrelevementUniteFonds.Row);
     FSPrelevement.EditEquipeUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[3,FSPrelevement.TableauPrelevementUniteFonds.Row];
     FSPrelevement.EditDateInUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
     FSPrelevement.EditHeureInUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
     FSPrelevement.EditDateFinUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
     FSPrelevement.EditHeureFinUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
     FSPrelevement.EditNumUniteFondsSelect.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[6,FSPrelevement.TableauPrelevementUniteFonds.Row];
     FSPrelevement.EditUniteFonds.Text:=FSPrelevement.TableauPrelevementUniteFonds.Cells[9,FSPrelevement.TableauPrelevementUniteFonds.Row];

     if(strtoreal(FSPrelevement.TableauDetailUniteFonds.Cells[9,FSPrelevement.TableauDetailUniteFonds.Row])>0)
     then FSPrelevement.EditValeurPrelevementUniteFonds.Text:=FSPrelevement.TableauDetailUniteFonds.Cells[9,FSPrelevement.TableauDetailUniteFonds.Row]
     else FSPrelevement.EditValeurPrelevementUniteFonds.Text:='';

     FSPrelevement.EditCodeTiers.Text:=FSPrelevement.TableauDetailUniteFonds.Cells[4,FSPrelevement.TableauDetailUniteFonds.Row];;
     FSPrelevement.EditTiers.Text:=FSPrelevement.TableauDetailUniteFonds.Cells[5,FSPrelevement.TableauDetailUniteFonds.Row];;
     FSPrelevement.EditModePaiement.Text:=FSPrelevement.TableauDetailUniteFonds.Cells[6,FSPrelevement.TableauDetailUniteFonds.Row];
     FSPrelevement.EditNumPiece.Text:=FSPrelevement.TableauDetailUniteFonds.Cells[7,FSPrelevement.TableauDetailUniteFonds.Row];
     FSPrelevement.EditDomiciliation.Text:=FSPrelevement.TableauDetailUniteFonds.Cells[8,FSPrelevement.TableauDetailUniteFonds.Row];
     FSPrelevement.EditNumPrelevementUniteFonds.Text:=FSPrelevement.TableauDetailUniteFonds.Cells[1,FSPrelevement.TableauDetailUniteFonds.Row];

     FSPrelevement.EditValeurPrelevementUniteFonds.SetFocus;

     AfficherDetailArticlePrelevementMoyenTransport(FSPrelevement.EditCodeTiers.Text);
end;

if(key in['s','S'])and(FSPrelevement.RBSuppressionAutorisee.Checked=true)then
begin
     if(FSPrelevement.TableauDetailUniteFonds.Cells[1,FSPrelevement.TableauDetailUniteFonds.Row]<>'')then
     begin
          FSPrelevement.AfficheOperationDetailUF.Visible:=true;
          FSPrelevement.BitAfficheOperationDetailUF.Kind:=bkCancel;
          FSPrelevement.BitAfficheOperationDetailUF.Caption:='Supprimer';
          FSPrelevement.AfficheOperationDetailUF.Caption:='Voulez vous supprimer le Fonds !';
          FSPrelevement.BitAfficheOperationDetailUF.SetFocus;
     end
     else
     begin
          showmessage('Pas de données !');
     end;
end;

end;

procedure TFSPrelevement.EditNomEffectifEnter(Sender: TObject);
var  R:integer;  OKRow:boolean;
begin
     FSPrelevement.TableauChercheEquipe.Visible:=false;

     if(FSPrelevement.EditMatricule.Text<>'')
     and((strtoreal(FSPrelevement.EditSoldeCompteur.Text)>strtoreal(FSPrelevement.EditEcartAutorise.Text))
     or(strtoreal(FSPrelevement.EditSoldeUnitesFonds.Text)>strtoreal(FSPrelevement.EditEcartAutorise.Text)))
     then
     begin
          FSPrelevement.BitPrint.Visible:=false;
          FSPrelevement.BitSave.Visible:=false;
          FSPrelevement.BitChargementEffectif.Visible:=true;

          FSPrelevement.EditSourceCommande.Text:='Effectif';
          FSPrelevement.AfficheTravauxPrelevementAchever.Visible:=true;
          FSPrelevement.TableauControleAttributionArticleAuxUnitesFonds.Visible:=false;
     end
     else
     begin
           FSPrelevement.TableauChercheEffectif.Visible:=true;
           FSPrelevement.TableauChercheEffectif.Left:=FSPrelevement.EditNomEffectif.Left;
           FSPrelevement.TableauChercheEffectif.Top:=FSPrelevement.EditNomEffectif.Top+FSPrelevement.EditNomEffectif.Height+2;
           ListeEffectifEquipePrelevement(FSPrelevement.TableauChercheEffectif,FSPrelevement.EditNumPrelevementCompteur.Text);
           //ListeEffectifEquipe(FSPrelevement.TableauChercheEffectif,FSPrelevement.EditNumEquipePrelevement.Text);
           FSPrelevement.TableauChercheEffectif.SetFocus;

           R:=1;
           OKRow:=false;
           while(R<=FSPrelevement.TableauChercheEffectif.RowCount-1)and(OKRow=false)do
           begin
                if(FSPrelevement.TableauChercheEffectif.Cells[3,R]=FSPrelevement.EditMatricule.Text)then
                begin
                     FSPrelevement.TableauChercheEffectif.Row:=R;
                     OKRow:=true;
                end;
           R:=R+1;
           end;
     end;
end;

procedure TFSPrelevement.TableauChercheEffectifKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          
     end;
end;

procedure TFSPrelevement.TableauChercheEffectifDblClick(Sender: TObject);
var   NumPrelevement,NumPrelevementFin,NumStructure,Matricule:string;
begin
     if(FSPrelevement.TableauChercheEffectif.Cells[1,FSPrelevement.TableauChercheEffectif.Row]='OK')then
     begin
          FSPrelevement.EditMatricule.Text:=FSPrelevement.TableauChercheEffectif.Cells[3,FSPrelevement.TableauChercheEffectif.Row];
          FSPrelevement.EditNomEffectif.Text:=FSPrelevement.TableauChercheEffectif.Cells[4,FSPrelevement.TableauChercheEffectif.Row];
          FSPrelevement.TableauChercheEffectif.Visible:=false;

          NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
          NumPrelevementFin:='';
          Matricule:=FSPrelevement.EditMatricule.Text;

          AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
          FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,NumStructure);

          FSPrelevement.EditNumStructure.Text:=NumStructure;
          FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
          ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);

          if(FSListePrelevement.Showing)then SelectRowListePrelevement(FSListePrelevement.TableauListePrelevement,NumPrelevement,Matricule,false);
     end;
end;

procedure TFSPrelevement.EditEquipePrelevementEnter(Sender: TObject);
begin
     FSPrelevement.TableauChercheEffectif.Visible:=false;

     if(FSPrelevement.EditMatricule.Text<>'')
     and((strtoreal(FSPrelevement.EditSoldeCompteur.Text)>strtoreal(FSPrelevement.EditEcartAutorise.Text))
     or(strtoreal(FSPrelevement.EditSoldeUnitesFonds.Text)>strtoreal(FSPrelevement.EditEcartAutorise.Text)))
     then
     begin
          FSPrelevement.BitPrint.Visible:=false;
          FSPrelevement.BitSave.Visible:=false;
          FSPrelevement.BitChargementEffectif.Visible:=true;

          FSPrelevement.EditSourceCommande.Text:='Equipe';
          FSPrelevement.AfficheTravauxPrelevementAchever.Visible:=true;
          FSPrelevement.TableauControleAttributionArticleAuxUnitesFonds.Visible:=false;
     end
     else
     begin
          FSPrelevement.EditMatricule.Text:='';
          FSPrelevement.EditNomEffectif.Text:='';

          FSPrelevement.TableauChercheEquipe.Visible:=true;
          FSPrelevement.TableauChercheEquipe.Left:=FSPrelevement.EditEquipePrelevement.Left;
          FSPrelevement.TableauChercheEquipe.Top:=FSPrelevement.EditEquipePrelevement.Top+FSPrelevement.EditEquipePrelevement.Height+2;
          ListeEquipe(FSPrelevement.TableauChercheEquipe,'');
          FSPrelevement.TableauChercheEquipe.SetFocus;
     end;
end;

procedure TFSPrelevement.TableauChercheEquipeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          
     end;
end;

procedure TFSPrelevement.TableauChercheEquipeDblClick(Sender: TObject);
var   NumPrelevement,NumPrelevementFin,NumStructure,Matricule:string;
begin
     FSPrelevement.EditNumEquipePrelevement.Text:=FSPrelevement.TableauChercheEquipe.Cells[1,FSPrelevement.TableauChercheEquipe.Row];
     FSPrelevement.EditEquipePrelevement.Text:=FSPrelevement.TableauChercheEquipe.Cells[3,FSPrelevement.TableauChercheEquipe.Row];
     FSPrelevement.TableauChercheEquipe.Visible:=false;

     NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
     NumPrelevementFin:='';
     Matricule:=FSPrelevement.EditMatricule.Text;

     AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
     FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,NumStructure);

     FSPrelevement.EditNumStructure.Text:=NumStructure;
     FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
     ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);

     if(FSListePrelevement.Showing)then SelectRowListePrelevement(FSListePrelevement.TableauListePrelevement,NumPrelevement,Matricule,false);
end;

procedure TFSPrelevement.TableauAffectationEffectifEquipeClick(
  Sender: TObject);
begin
     FSPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=false;
     FSPrelevement.TableauSelection.Visible:=false;
end;

procedure TFSPrelevement.TableauAffectationEffectifEquipeKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var NbrCompteurPlanifier,NbrCompteurAffecter:integer;   OKSelectEffectif:boolean; Notification,PositionPrelevement:string;
begin
     if(FSPrelevement.RBAutoriseModificationUnitesFonds.Checked=false)then
     begin
          if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,PositionPrelevement)=true)then
          begin
               Showmessage('Le Prélevement est déja archivé !');
               exit;
          end;
     end;

     if(ControleTotalAffectationCompteur(FSPrelevement.EditNumPrelevementCompteur.Text,NbrCompteurPlanifier,NbrCompteurAffecter)=false)then
     begin
          if(NbrCompteurAffecter=0)then
          begin
               OKSelectEffectif:=true;
          end
          else
          begin
               OKSelectEffectif:=false;
               Notification:='Affectation Compteur non achevé !';
          end;
     end
     else
     begin
          if(FSPrelevement.EditMatricule.Text<>'')
          then OKSelectEffectif:=true
          else
          begin
               OKSelectEffectif:=false;
               Notification:='Veuillez sélectionner un effectif SVP !';
               FSPrelevement.EditNomEffectif.SetFocus;
          end;
     end;

     if(OKSelectEffectif=false)then
     begin
          Showmessage(Notification);
          Exit;
     end;

     if key in[VK_RETURN]then
     begin
          FSPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=true;
          FSPrelevement.BitAffectationEffectifEquipe.Kind:=bkAll;
          FSPrelevement.BitAffectationEffectifEquipe.Caption:='Valider';

          FSPrelevement.EditNumAffectationEffectifEquipe.Text:='';
          FSPrelevement.EditNumCompteurAffecter.Text:='';
          FSPrelevement.EditNumUniteFonds.Text:='';
          FSPrelevement.EditValeurAffecter.Text:='';

          FSPrelevement.EditNumCompteurAffecter.SetFocus;
     end;
end;

procedure TFSPrelevement.TableauAffectationEffectifEquipeKeyPress(
  Sender: TObject; var Key: Char);
var  PositionPrelevement:string;
begin
     if(FSPrelevement.RBAutoriseModificationUnitesFonds.Checked=false)then
     begin
          if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,PositionPrelevement)=true)then
          begin
               Showmessage('Le Prélevement est déja archivé !');
          exit;
          end;
     end;

     if key in['n','N']then
     begin
          FSPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=true;
          FSPrelevement.BitAffectationEffectifEquipe.Kind:=bkAll;
          FSPrelevement.BitAffectationEffectifEquipe.Caption:='Valider';

          FSPrelevement.EditNumAffectationEffectifEquipe.Text:='';
          FSPrelevement.EditNumCompteurAffecter.Text:='';
          FSPrelevement.EditNumUniteFonds.Text:='';
          FSPrelevement.EditValeurAffecter.Text:='';

          FSPrelevement.EditNumCompteurAffecter.SetFocus;
     end;

     if key in['m','M']then
     begin
          FSPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=true;
          FSPrelevement.BitAffectationEffectifEquipe.Kind:=bkAll;
          FSPrelevement.BitAffectationEffectifEquipe.Caption:='Valider';

          FSPrelevement.EditNumAffectationEffectifEquipe.Text:=FSPrelevement.TableauAffectationEffectifEquipe.Cells[1,FSPrelevement.TableauAffectationEffectifEquipe.Row];
          FSPrelevement.EditNumCompteurAffecter.Text:=FSPrelevement.TableauAffectationEffectifEquipe.Cells[4,FSPrelevement.TableauAffectationEffectifEquipe.Row];;
          FSPrelevement.EditNumUniteFonds.Text:=FSPrelevement.TableauAffectationEffectifEquipe.Cells[6,FSPrelevement.TableauAffectationEffectifEquipe.Row];;
          FSPrelevement.EditValeurAffecter.Text:=FSPrelevement.TableauAffectationEffectifEquipe.Cells[9,FSPrelevement.TableauAffectationEffectifEquipe.Row];;

          FSPrelevement.EditNumCompteurAffecter.SetFocus;
     end;

     if key in['s','S']then
     begin
          FSPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=true;
          FSPrelevement.BitAffectationEffectifEquipe.Kind:=bkCancel;
          FSPrelevement.BitAffectationEffectifEquipe.Caption:='Supprimer';

          FSPrelevement.EditNumAffectationEffectifEquipe.Text:=FSPrelevement.TableauAffectationEffectifEquipe.Cells[1,FSPrelevement.TableauAffectationEffectifEquipe.Row];
          FSPrelevement.EditNumCompteurAffecter.Text:=FSPrelevement.TableauAffectationEffectifEquipe.Cells[4,FSPrelevement.TableauAffectationEffectifEquipe.Row];;
          FSPrelevement.EditNumUniteFonds.Text:=FSPrelevement.TableauAffectationEffectifEquipe.Cells[6,FSPrelevement.TableauAffectationEffectifEquipe.Row];;
          FSPrelevement.EditValeurAffecter.Text:=FSPrelevement.TableauAffectationEffectifEquipe.Cells[9,FSPrelevement.TableauAffectationEffectifEquipe.Row];;

          FSPrelevement.BitAffectationEffectifEquipe.SetFocus;
     end;
end;

procedure TFSPrelevement.BitBtn15Click(Sender: TObject);
begin
     FSPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=false;
     FSPrelevement.TableauSelection.Visible:=false;
end;

procedure TFSPrelevement.BitAffectationEffectifEquipeClick(
  Sender: TObject);
var   i,iSelect:integer;   OKAffectation,OKPointerArchive:boolean;  NumStructure,FichierConcerne,PositionPrelevement:string;
begin
     if(FSPrelevement.BitAffectationEffectifEquipe.Caption='Valider')then
     begin
          RPrelevement:=ChercherPrelevement(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text),ExerciceAnnee,FSPrelevement.EditMatricule.Text,PositionPrelevement);
          if(RPrelevement.Archiver=false)then
          begin
               FichierConcerne:='FRegistreAffectationEffectifEquipe';
               OKPointerArchive:=false;
          end
          else
          begin
               FichierConcerne:='FArchiveRegistreAffectationEffectifEquipe';
               OKPointerArchive:=true;
          end;

          OpenFParc(RParc);
          ChRegistreAffectationEffectifEquipe:=RParc.Parcours+'\'+Exercice+FichierConcerne;
          assignfile(FRegistreAffectationEffectifEquipe,ChRegistreAffectationEffectifEquipe);
          try
          if FileExists(ChRegistreAffectationEffectifEquipe)then
          Reset(FRegistreAffectationEffectifEquipe)
          else Rewrite(FRegistreAffectationEffectifEquipe);
          Seek(FRegistreAffectationEffectifEquipe,0);
          i:=0;
          OKAffectation:=false;
          while not eof(FRegistreAffectationEffectifEquipe)and(OKAffectation=false)do
          begin
               read(FRegistreAffectationEffectifEquipe,RRegistreAffectationEffectifEquipe);

               if(inttostr(RRegistreAffectationEffectifEquipe.NumAffectationEffectifEquipe)=FSPrelevement.EditNumAffectationEffectifEquipe.Text)then
               begin
                    OKAffectation:=true;
                    iSelect:=i;
               end;
          i:=i+1;
          end;

          if(OKAffectation=true)then i:=iSelect;

          Seek(FRegistreAffectationEffectifEquipe,i);
          RRegistreAffectationEffectifEquipe.NumAffectationEffectifEquipe:=i;
          RRegistreAffectationEffectifEquipe.NumPrelevement:=strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text);
          RRegistreAffectationEffectifEquipe.CodeUtilisateur:=FSMenuPrincipal.EditCodeUtilisateur.Text;
          RRegistreAffectationEffectifEquipe.NumEquipe:=strtointeger(FSPrelevement.EditNumEquipePrelevement.Text);
          RRegistreAffectationEffectifEquipe.Matricule:=FSPrelevement.EditMatricule.Text;
          RRegistreAffectationEffectifEquipe.RCompteurAffecter:=ChercherCompteur(strtointeger(FSPrelevement.EditNumCompteurAffecter.Text));
          RRegistreAffectationEffectifEquipe.RUniteFondsAffecter:=ChercherUniteFonds(FSPrelevement.EditNumUniteFonds.Text);
          RRegistreAffectationEffectifEquipe.ValeurAffecter:=strtoreal(FSPrelevement.EditValeurAffecter.Text);
          
          Write(FRegistreAffectationEffectifEquipe,RRegistreAffectationEffectifEquipe);

          finally
          CloseFile(FRegistreAffectationEffectifEquipe);
          end;
     end;

     if(FSPrelevement.BitAffectationEffectifEquipe.Caption='Supprimer')then
     begin
          DeleteFRegistreAffectationEffectifEquipe(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text),FSPrelevement.EditMatricule.Text,FSPrelevement.EditNumAffectationEffectifEquipe.Text,'','',OKAffectation);
     end;

     ListeAffectationEffectifEquipe(FSPrelevement.TableauAffectationEffectifEquipe,FSPrelevement.TableauTitreAffectationEffectifEquipe,FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditNumEquipePrelevement.Text,FSPrelevement.EditMatricule.Text,FSPrelevement.EditFondRoulement,NumStructure);

     FSPrelevement.EditSoldePrelevement.Text:=Vergule(floattostr(ValePrecis(strtoreal(FSPrelevement.EditMontantUniteFonds.Text)-strtoreal(FSPrelevement.EditMontantCompteur.Text)-strtoreal(FSPrelevement.EditFondRoulement.Text),2)),'2','C','');
     MiseAJourPrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,strtoreal(FSPrelevement.EditMontantCompteur.Text),strtoreal(FSPrelevement.EditFondRoulement.Text),strtoreal(FSPrelevement.EditMontantUniteFonds.Text),strtoreal(FSPrelevement.EditSoldePrelevement.Text),true);
     
     TrierTableauARowSpecial(FSPrelevement.TableauAffectationEffectifEquipe,1,FSPrelevement.TableauAffectationEffectifEquipe.RowCount-3,1,FSPrelevement.EditTrierAffectationEffectifEquipe.Text,'','+');
     FSPrelevement.TableauAffectationEffectifEquipe.SetFocus;
     FSPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=false;
end;

procedure TFSPrelevement.TableauSelectionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(FSPrelevement.TableauSelection.Cells[0,0]='U.F')then
          begin
               FSPrelevement.EditNumUniteFonds.Text:=FSPrelevement.TableauSelection.Cells[1,FSPrelevement.TableauSelection.Row];
               FSPrelevement.EditUniteFondsAffecter.Text:=FSPrelevement.TableauSelection.Cells[4,FSPrelevement.TableauSelection.Row];
               FSPrelevement.TableauSelection.Visible:=false;
               FSPrelevement.EditValeurAffecter.SetFocus;
          end;
          
          if(FSPrelevement.TableauSelection.Cells[0,0]='C.A')then
          begin
               FSPrelevement.EditNumCompteurAffecter.Text:=FSPrelevement.TableauSelection.Cells[1,FSPrelevement.TableauSelection.Row];
               FSPrelevement.EditCompteurAffecter.Text:=FSPrelevement.TableauSelection.Cells[3,FSPrelevement.TableauSelection.Row];
               FSPrelevement.TableauSelection.Visible:=false;
               FSPrelevement.EditNumUniteFonds.SetFocus;
          end;
     end;
end;

procedure TFSPrelevement.EditNumAffectationEffectifEquipeKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrelevement.EditNumCompteurAffecter.SetFocus;
     end;
end;

procedure TFSPrelevement.EditNumCompteurAffecterEnter(Sender: TObject);
var  R,RowSelect:integer;
begin
     FSPrelevement.TableauSelection.Visible:=true;
     FSPrelevement.TableauSelection.Left:=FSPrelevement.AfficherOperationAffectationEffectifEquipe.Left+FSPrelevement.EditNumCompteurAffecter.Left;
     FSPrelevement.TableauSelection.Top:=FSPrelevement.AfficherOperationAffectationEffectifEquipe.Top+FSPrelevement.EditNumCompteurAffecter.Top+FSPrelevement.EditNumCompteurAffecter.Height+2;
     FSPrelevement.TableauSelection.SetFocus;

     ProcAfficheListeCompteur(FSPrelevement.TableauSelection,'','');

     R:=1;
     RowSelect:=0;
     while(R<=FSPrelevement.TableauSelection.RowCount-1)and(RowSelect=0)do
     begin
          if(FSPrelevement.TableauSelection.Cells[1,R]=FSPrelevement.EditNumCompteurAffecter.Text)then RowSelect:=R;
     R:=R+1;
     end;

     if(RowSelect>0)then FSPrelevement.TableauSelection.Row:=RowSelect;

     FSPrelevement.TableauSelection.Cells[0,0]:='C.A';
end;

procedure TFSPrelevement.EditNumCompteurAffecterKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrelevement.EditNumUniteFonds.SetFocus;
     end;
end;

procedure TFSPrelevement.EditNumUniteFondsEnter(Sender: TObject);
var  R,RowSelect:integer;
begin
     FSPrelevement.TableauSelection.Visible:=true;
     FSPrelevement.TableauSelection.Left:=FSPrelevement.AfficherOperationAffectationEffectifEquipe.Left+FSPrelevement.EditNumUniteFonds.Left;
     FSPrelevement.TableauSelection.Top:=FSPrelevement.AfficherOperationAffectationEffectifEquipe.Top+FSPrelevement.EditNumUniteFonds.Top+FSPrelevement.EditNumUniteFonds.Height+2;
     FSPrelevement.TableauSelection.SetFocus;

     ListeUniteFonds(FSPrelevement.TableauSelection,'');

     R:=1;
     RowSelect:=0;
     while(R<=FSPrelevement.TableauSelection.RowCount-1)and(RowSelect=0)do
     begin
          if(FSPrelevement.TableauSelection.Cells[1,R]=FSPrelevement.EditNumUniteFonds.Text)then RowSelect:=R;
     R:=R+1;
     end;

     if(RowSelect>0)then FSPrelevement.TableauSelection.Row:=RowSelect;

     FSPrelevement.TableauSelection.Cells[0,0]:='U.F';
end;

procedure TFSPrelevement.EditNumUniteFondsKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrelevement.EditValeurAffecter.SetFocus;
     end;
end;

procedure TFSPrelevement.EditValeurAffecterKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrelevement.BitAffectationEffectifEquipe.SetFocus;
     end;
end;

procedure TFSPrelevement.RBDetailFondRoulementClick(Sender: TObject);
begin
     NumClasse(FSPrelevement.ClasseDetailFondRoulement,FSPrelevement.RBDetailFondRoulement.Checked)
end;

Procedure ListeEffectifEquipePrelevement(Tableau:TStringGrid; NumPrelevement:string);
var i:integer;    OKEffectif:boolean; FichierConcerne,PositionPrelevement:string;
begin
Tableau.ColCount:=13;
Tableau.Cols[0].Text:='N°';
Tableau.Cols[1].Text:='Sélect.';
Tableau.Cols[2].Text:='NumEquipe';
Tableau.Cols[3].Text:='Matricle';
Tableau.Cols[4].Text:='Nom et Prénom';
Tableau.Cols[5].Text:='Adresse';
Tableau.Cols[6].Text:='Date et lieur Nais.';
Tableau.Cols[7].Text:='NSS';
Tableau.Cols[8].Text:='Date entrée';
Tableau.Cols[9].Text:='Date sortie';
Tableau.Cols[10].Text:='SF';
Tableau.Cols[11].Text:='Sex';
Tableau.Cols[12].Text:='NPEfEp';

Tableau.RowCount:=2;
Tableau.Rows[1].Text:='';

RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,'',PositionPrelevement);
if(RPrelevement.Archiver=false)
then FichierConcerne:='FPrelevementEffectifEquipe'
else FichierConcerne:='FArchivePrelevementEffectifEquipe';


OpenFParc(RParc);
ChPrelevementEffectifEquipe:=RParc.Parcours+'\'+Exercice+FichierConcerne;
assignfile(FPrelevementEffectifEquipe,ChPrelevementEffectifEquipe);
try
if FileExists(ChPrelevementEffectifEquipe)then
Reset(FPrelevementEffectifEquipe)
else Rewrite(FPrelevementEffectifEquipe);
Seek(FPrelevementEffectifEquipe,0);
i:=0;
while not eof(FPrelevementEffectifEquipe)do
begin
     read(FPrelevementEffectifEquipe,RPrelevementEffectifEquipe);

     if(NumPrelevement<>'')then
     begin
          if(RPrelevementEffectifEquipe.NumPrelevement=strtointeger(NumPrelevement))
          then OKEffectif:=true
          else OKEffectif:=false;
     end
     else OKEffectif:=false;

     if(OKEffectif=true)then
     begin
          i:=i+1;
          Tableau.Rows[i].Text:=inttostr(i);
          Tableau.Cells[1,i]:='OK';
          Tableau.Cells[2,i]:=inttostr(RPrelevementEffectifEquipe.NumEquipe);
          Tableau.Cells[3,i]:=RPrelevementEffectifEquipe.Matricule;
          RPersonnel:=CherchePersonnel(RPrelevementEffectifEquipe.Matricule);
          Tableau.Cells[4,i]:=RPersonnel.Nom+' '+RPersonnel.Prenom;
          Tableau.Cells[5,i]:=RPersonnel.Adresse;
          Tableau.Cells[6,i]:=RPersonnel.DateNais+' à '+RPersonnel.LieuNais;
          Tableau.Cells[7,i]:=RPersonnel.NSS;
          Tableau.Cells[8,i]:=RPersonnel.DateEntree;
          Tableau.Cells[9,i]:=RPersonnel.DateSortie;
          Tableau.Cells[10,i]:=RPersonnel.SituationF+'/'+inttostr(RPersonnel.NbrEnfantTotal);
          Tableau.Cells[11,i]:=RPersonnel.Sex;
          Tableau.Cells[12,i]:=inttostr(RPrelevementEffectifEquipe.NumPrelevementEffectifEquipe);
     end;
end;
finally
CloseFile(FPrelevementEffectifEquipe);
end;

if(i>0)then Tableau.RowCount:=i+1
       else Tableau.RowCount:=2;

Tableau.ColWidths[2]:=0;
AjusterColWidth(Tableau,'','2');

end;

procedure TFSPrelevement.EditChoisAffichageKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSPrelevement.RBDetailArborescenceArticleClick(Sender: TObject);
begin
     NumClasse(FSPrelevement.ClasseDetailArborescenceArticle,FSPrelevement.RBDetailArborescenceArticle.Checked);
end;

procedure TFSPrelevement.EditExtentionFichierSelect(Sender: TObject);
begin
     AfficheArborescenceArticle(FSPrelevement.TableauArborescenceArticle,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreArborescenceArticle,'F'+FSPrelevement.EditChoisAffichage.Text+FSPrelevement.EditExtentionFichier.Text);
end;

procedure TFSPrelevement.EditChoisAffichageSelect(Sender: TObject);
begin
     AfficheArborescenceArticle(FSPrelevement.TableauArborescenceArticle,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreArborescenceArticle,'F'+FSPrelevement.EditChoisAffichage.Text+FSPrelevement.EditExtentionFichier.Text);
end;

procedure TFSPrelevement.EditExtentionFichierKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSPrelevement.TableauCompteTiersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var TypeProces,FichierConcerne,Adresse:string;    OrdreTiers:Integer;
begin
     if key in[VK_RETURN]then
     begin
          TypeProces:=FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row];
          FichierConcerne:=FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row];
          Adresse:='';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
               Exit;
          end;

          FSPrelevement.EditCompteTiersRecherche.Text:=FSPrelevement.TableauCompteTiers.Cells[1,FSPrelevement.TableauCompteTiers.Row];
          ChTiers:=Adresse;
          assignfile(FTiers,ChTiers);
          try
          if FileExists(ChTiers)then
          Reset(FTiers)
          else Rewrite(FTiers);
          Seek(FTiers,0);
          OrdreTiers:=1;
          while not eof(FTiers)do
          begin
               read(FTiers,RTiers);
               if(FSPrelevement.EditCompteTiersRecherche.Text<>'')then
               begin
                    if(Firstlaters(RTiers.CodeTiers,6)=FSPrelevement.EditCompteTiersRecherche.Text)then
                    begin
                         if(strtointeger(lastlaters(RTiers.CodeTiers,4))>=OrdreTiers)then OrdreTiers:=strtointeger(lastlaters(RTiers.CodeTiers,4))+1;
                    end;
               end
               else
               begin
                    if(strtointeger(lastlaters(RTiers.CodeTiers,4))>=OrdreTiers)then OrdreTiers:=strtointeger(lastlaters(RTiers.CodeTiers,4))+1;
               end;
          end;
          finally
          closefile(FTiers);
          end;

          FSPrelevement.EditCodeTiersNew.Text:=FSPrelevement.EditCompteTiersRecherche.Text+Completezerogauche(inttostr(OrdreTiers),'4');
          FSPrelevement.EditNomTiersNew.SetFocus;
          FSPrelevement.TableauCompteTiers.Visible:=false;
     end;
end;

procedure TFSPrelevement.BitValiderNouveauTiersClick(Sender: TObject);
var  i,R,RowCout:integer;  TypeProces,FichierConcerne,Adresse:string;   OKTiers,Confirme,OKCompteTiers:boolean;
begin
     TypeProces:=FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row];
     FichierConcerne:=FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row];
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
          Exit;
     end;

     ChTiers:=Adresse;
     assignfile(FTiers,ChTiers);
     try
     if FileExists(ChTiers)then
     Reset(FTiers)
     else Rewrite(FTiers);
     Seek(FTiers,0);
     OKTiers:=false;
     i:=0;
     while not eof(FTiers)and(OKTiers=false)do
     begin
          read(FTiers,RTiers);
          if(RTiers.CodeTiers=FSPrelevement.EditCodeTiersNew.Text)then
          begin
               OKTiers:=true;
          end
          else i:=i+1;
     end;

     Seek(FTiers,i);
     RTiers.CodeTiers:=FSPrelevement.EditCodeTiersNew.Text;
     RTiers.NomTiers:=FSPrelevement.EditNomTiersNew.Text;
     RTiers.PrenomTiers:=FSPrelevement.EditPrenomTiersNew.Text;
     RTiers.DateNaisTiers:='';
     RTiers.LieuNaisTiers:='';
     RTiers.NaturePieceIdentiteTiers:='';
     RTiers.NumPieceIdentiteTiers:='';
     RTiers.FonctionTiers:='';
     RTiers.AdresseTiers:=FSPrelevement.EditAdresseTiersNew.Text;
     RTiers.NumTelephoneTiers:='';
     RTiers.CodeAgenceBanqueTiers:='';
     RTiers.RIBBanqueTiers:='';
     RTiers.Data1:='';
     RTiers.Data2:='';
     RTiers.Data3:='';
     RTiers.Data4:='';
     RTiers.Data5:='';
     RTiers.Data6:='';
     write(FTiers,RTiers);

     finally
     Closefile(FTiers);
     end;

     ListeTiers(FSPrelevement.TableauTiers,FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row],FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row],'','','',true);
     FSPrelevement.TableauTiers.SetFocus;
     FSPrelevement.AfficheNouveauTiers.Visible:=false;
end;

procedure TFSPrelevement.TableauTiersKeyPress(Sender: TObject;
  var Key: Char);
var i,R,RowCout,OrdreClient:integer;  TypeProces,FichierConcerne,Adresse,CompteTiers:string;   OKTiers,Confirme,OKCompteTiers:boolean;
begin

if key in['r','R','?']then
begin
     FSPrelevement.AfficheRechercheTiersPrelevement.Left:=FSPrelevement.TableauTiers.Left;
     FSPrelevement.AfficheRechercheTiersPrelevement.Top:=FSPrelevement.TableauTiers.Top-FSPrelevement.AfficheRechercheTiersPrelevement.Height-2;

     FSPrelevement.AfficheRechercheTiersPrelevement.Visible:=true;
     FSPrelevement.EditRechercheNomPrenomTiers.Text:='';
     FSPrelevement.EditRechercheNomPrenomTiers.SetFocus;
end;

if key in['n','N','+']then
begin
     Key:=#0;
     FSPrelevement.AfficheNouveauTiers.Left:=FSPrelevement.TableauTiers.Left;
     FSPrelevement.AfficheNouveauTiers.Top:=FSPrelevement.TableauTiers.Top-FSPrelevement.AfficheNouveauTiers.Height-2;
     FSPrelevement.AfficheNouveauTiers.Visible:=true;
     FSPrelevement.EditCodeTiersNew.Text:='';
     FSPrelevement.EditNomTiersNew.Text:='';
     FSPrelevement.EditPrenomTiersNew.Text:='';
     FSPrelevement.EditAdresseTiersNew.Text:='';
     FSPrelevement.EditCompteTiersRecherche.Text:='';
     FSPrelevement.EditNomTiersNew.SetFocus;

     TypeProces:=FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row];
     FichierConcerne:=FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row];
     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
          Exit;
     end;

     if(FSPrelevement.EditCompteTiersRecherche.Text='')then
     begin
          FSPrelevement.TableauCompteTiers.ColCount:=4;
          FSPrelevement.TableauCompteTiers.Cols[0].Text:='N°';
          FSPrelevement.TableauCompteTiers.Cols[1].Text:='Code';
          FSPrelevement.TableauCompteTiers.Cols[2].Text:='Nom';
          FSPrelevement.TableauCompteTiers.Cols[3].Text:='Prénom';

          FSPrelevement.TableauCompteTiers.RowCount:=2;
          FSPrelevement.TableauCompteTiers.Rows[1].Text:='';

          ChTiers:=Adresse;
          assignfile(FTiers,ChTiers);
          try
          if FileExists(ChTiers)then
          Reset(FTiers)
          else Rewrite(FTiers);
          Seek(FTiers,0);
          OKTiers:=false;
          i:=0;
          RowCout:=0;
          FSPrelevement.EditCompteTiersRecherche.Text:='';
          while not eof(FTiers)and(OKTiers=false)do
          begin
               read(FTiers,RTiers);

               if(RTiers.CodeTiers<>'')then
               begin
                    if(longueur(RTiers.CodeTiers)=10)
                    then CompteTiers:=Firstlaters(RTiers.CodeTiers,6)
                    else CompteTiers:='';

                    if(FSPrelevement.EditCompteTiersRecherche.Text='')then FSPrelevement.EditCompteTiersRecherche.Text:=CompteTiers;

                    R:=1;
                    OKCompteTiers:=false;
                    While(R<=FSPrelevement.TableauCompteTiers.RowCount-1)and(OKCompteTiers=false)do
                    begin
                         if(FSPrelevement.TableauCompteTiers.Cells[1,R]=CompteTiers)then
                         begin
                              OKCompteTiers:=true;
                         end;
                    R:=R+1;
                    end;

                    if(OKCompteTiers=false)then
                    begin
                         RowCout:=RowCout+1;
                         FSPrelevement.TableauCompteTiers.Rows[RowCout].Text:=inttostr(RowCout);
                         FSPrelevement.TableauCompteTiers.Cells[1,RowCout]:=CompteTiers;
                         if(ChercherCompteComptable(CompteTiers,'','PlanComptable',RRegistreCompte))
                         then FSPrelevement.TableauCompteTiers.Cells[2,RowCout]:=RRegistreCompte.Designation
                         else FSPrelevement.TableauCompteTiers.Cells[2,RowCout]:=FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row];
                    end;
               end;
          end;
          finally
          closefile(FTiers);
          end;

          if(RowCout>1)then
          begin
               FSPrelevement.TableauCompteTiers.Visible:=true;
               FSPrelevement.TableauCompteTiers.RowCount:=RowCout+1;
               AjusterColWidth(FSPrelevement.TableauCompteTiers,'','');
               FSPrelevement.TableauCompteTiers.SetFocus;
          end
          else
          begin
               FSPrelevement.TableauCompteTiers.Visible:=false;
               ChClient:=Adresse;
               assignfile(FClient,ChClient);
               try
               if FileExists(ChClient)then
               Reset(FClient)
               else Rewrite(FClient);
               Seek(FClient,0);
               OrdreClient:=1;
               while not eof(FClient)do
               begin
                    read(FClient,RClient);
                    if(FSPrelevement.EditCompteTiersRecherche.Text<>'')then
                    begin
                         if(Firstlaters(RClient.CodeTiers,6)=FSPrelevement.EditCompteTiersRecherche.Text)then
                         begin
                              if(strtointeger(lastlaters(RClient.CodeTiers,4))>=OrdreClient)then OrdreClient:=strtointeger(lastlaters(RClient.CodeTiers,4))+1;
                         end;
                    end
                    else
                    begin
                         if(strtointeger(lastlaters(RClient.CodeTiers,4))>=OrdreClient)then OrdreClient:=strtointeger(lastlaters(RClient.CodeTiers,4))+1;
                    end;
               end;
               finally
               closefile(FClient);
               end;

               FSPrelevement.EditCodeTiersNew.Text:=FSPrelevement.EditCompteTiersRecherche.Text+Completezerogauche(inttostr(OrdreClient),'4');
               FSPrelevement.EditNomTiersNew.SetFocus;
          end;
     end;
end;
end;

procedure TFSPrelevement.TableauTiersClick(Sender: TObject);
begin
     FSPrelevement.AfficheNouveauTiers.Visible:=false;
end;

procedure TFSPrelevement.EditCodeTiersNewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrelevement.EditNomTiersNew.SetFocus;
     end;
end;

procedure TFSPrelevement.EditNomTiersNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSPrelevement.EditPrenomTiersNew.SetFocus;
end;

end;

procedure TFSPrelevement.EditPrenomTiersNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSPrelevement.EditAdresseTiersNew.SetFocus;
end;

end;

procedure TFSPrelevement.EditAdresseTiersNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSPrelevement.BitValiderNouveauTiers.SetFocus;
end;

end;

procedure TFSPrelevement.BitBtn13Click(Sender: TObject);
begin
     FSPrelevement.AfficheNouveauTiers.Visible:=false;
     FSPrelevement.TableauCompteTiers.Visible:=false;
end;

procedure TFSPrelevement.RBDetailRecapitulatifClick(Sender: TObject);
begin
     NumClasse(FSPrelevement.ClasseDetailRecapitulatif,FSPrelevement.RBDetailRecapitulatif.Checked);
end;

procedure TFSPrelevement.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var NumPrelevement,NumPrelevementFin,NumStructure:string;
begin
     NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
     NumPrelevementFin:='';

     AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
     FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,NumStructure);

     FSPrelevement.EditNumStructure.Text:=NumStructure;
     FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
     ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);
end;

procedure TFSPrelevement.PageRecapitulatifShow(Sender: TObject);
var  R:integer;
begin
     FSPrelevement.AfficheAttenteAffichePrelevement.Visible:=true;
     FSPrelevement.ProgressAttenteAffichePrelevement.Min:=0;
     FSPrelevement.ProgressAttenteAffichePrelevement.Position:=0;
     FSPrelevement.EditAttenteAffichePrelevement.SetFocus;
     FSPrelevement.PagePrincipale.Enabled:=false;

     FSPrelevement.AfficheTravauxPrelevementAchever.Visible:=false;
     AfficherRecapitulatif(FSPrelevement.TableauRecapitulatif,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement);

     ListeDetailArticlePrelevementUniteFonds(FSPrelevement.TableauListeDetailArticleUnitesFonds,FSPrelevement.EditNumPrelevementCompteur.Text,'',FSPrelevement.EditMatricule.Text,'','','',false,true,true,true,FSPrelevement.RBDetailArticleCumuleArticle.Checked,0,FSPrelevement.EditNumStructure.Text,R);

     FSPrelevement.AfficheAttenteAffichePrelevement.Visible:=false;
     FSPrelevement.PagePrincipale.Enabled:=true;
end;

Procedure AfficherDetailArticlePrelevementMoyenTransport(CodeTiers:string);
var  R,l:integer;   MontantTotal,QuantiteGlobale,QuantiteJustifier:real; OKInclureDivers:boolean;
begin
     if(AnsiUpperCase(CodeTiers)=AnsiUpperCase('Divers'))
     then OKInclureDivers:=true
     else OKInclureDivers:=false;

     FSPrelevement.TableauDetailArticlePrelevement.ColCount:=11;
     FSPrelevement.TableauDetailArticlePrelevement.Cols[0].Text:='N°';
     FSPrelevement.TableauDetailArticlePrelevement.Cols[1].Text:='Code';
     FSPrelevement.TableauDetailArticlePrelevement.Cols[2].Text:='ARticle';
     FSPrelevement.TableauDetailArticlePrelevement.Cols[3].Text:='UM';
     FSPrelevement.TableauDetailArticlePrelevement.Cols[4].Text:='Prix U.';
     FSPrelevement.TableauDetailArticlePrelevement.Cols[5].Text:='Qte.Prélever';
     FSPrelevement.TableauDetailArticlePrelevement.Cols[6].Text:='Qte.Justifier';
     FSPrelevement.TableauDetailArticlePrelevement.Cols[7].Text:='Qte à justifier';
     FSPrelevement.TableauDetailArticlePrelevement.Cols[8].Text:='Montant';
     FSPrelevement.TableauDetailArticlePrelevement.Cols[9].Text:='';
     FSPrelevement.TableauDetailArticlePrelevement.Cols[10].Text:='Qte Restante';

     FSPrelevement.TableauDetailArticlePrelevement.RowCount:=2;
     FSPrelevement.TableauDetailArticlePrelevement.Rows[1].Text:='';

     R:=1;
     l:=0;
     MontantTotal:=0;
     while(R<=FSPrelevement.TableauDetailArticle.RowCount-3)do
     begin
          if(strtoreal(FSPrelevement.TableauDetailArticle.Cells[6,R])<>0)then
          begin
                l:=l+1;
                FSPrelevement.TableauDetailArticlePrelevement.Rows[l].Text:=inttostr(l);
                FSPrelevement.TableauDetailArticlePrelevement.Cells[1,l]:=FSPrelevement.TableauDetailArticle.Cells[1,R];
                FSPrelevement.TableauDetailArticlePrelevement.Cells[2,l]:=FSPrelevement.TableauDetailArticle.Cells[2,R];
                RStock:=ChercherStockArticle('Article','',FSPrelevement.TableauDetailArticle.Cells[1,R],'',OKStockRecherche,RubriqueRecherche);
                FSPrelevement.TableauDetailArticlePrelevement.Cells[3,l]:=RStock.UM;
                FSPrelevement.TableauDetailArticlePrelevement.Cells[4,l]:=Vergule(FSPrelevement.TableauDetailArticle.Cells[3,R],FSPrelevement.EditNbrChiffreApresVergule.Text,'C','');
                FSPrelevement.TableauDetailArticlePrelevement.Cells[5,l]:=Vergule(FSPrelevement.TableauDetailArticle.Cells[6,R],FSPrelevement.EditNbrChiffreApresVergule.Text,'C','');

                CummuleQtePrelevementJustifiser(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditNumPrelevementUniteFonds.Text,FSPrelevement.EditMatricule.Text,FSPrelevement.EditCodeTiers.Text,FSPrelevement.TableauDetailArticlePrelevement.Cells[1,l],OKInclureDivers,QuantiteGlobale,QuantiteJustifier);

                FSPrelevement.TableauDetailArticlePrelevement.Cells[6,l]:=Vergule(floattostr(QuantiteGlobale-QuantiteJustifier),FSPrelevement.EditNbrChiffreApresVergule.Text,'C','');
                FSPrelevement.TableauDetailArticlePrelevement.Cells[7,l]:=Vergule(floattostr(QuantiteJustifier),FSPrelevement.EditNbrChiffreApresVergule.Text,'C','');
                FSPrelevement.TableauDetailArticlePrelevement.Cells[8,l]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[7,l])*strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[4,l])),FSPrelevement.EditNbrChiffreApresVergule.Text,'C','');
                FSPrelevement.TableauDetailArticlePrelevement.Cells[9,l]:='';
                FSPrelevement.TableauDetailArticlePrelevement.Cells[10,l]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[5,l])-
                                                                          strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[6,l])-
                                                                          strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[7,l])),FSPrelevement.EditNbrChiffreApresVergule.Text,'C','');

                MontantTotal:=MontantTotal+strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,l]);
          end;
     R:=R+1;
     end;

     if(l>0)then
            begin
                 FSPrelevement.TableauDetailArticlePrelevement.RowCount:=l+3;

                 FSPrelevement.TableauDetailArticlePrelevement.Rows[FSPrelevement.TableauDetailArticlePrelevement.RowCount-1].Text:='';
                 FSPrelevement.TableauDetailArticlePrelevement.Rows[FSPrelevement.TableauDetailArticlePrelevement.RowCount-2].Text:='';

                 FSPrelevement.TableauDetailArticlePrelevement.Cells[7,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1]:='Total:';
                 FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1]:=Vergule(floattostr(MontantTotal),FSPrelevement.EditNbrChiffreApresVergule.Text,'C','');
            end
            else FSPrelevement.TableauDetailArticlePrelevement.RowCount:=2;

     AjusterColWidth(FSPrelevement.TableauDetailArticlePrelevement,'','');

     if(strtoreal(FSPrelevement.EditValeurPrelevementUniteFonds.Text)>0)
     then FSPrelevement.EditMontantRestant.Text:=Vergule('-'+FSPrelevement.EditValeurPrelevementUniteFonds.Text,FSPrelevement.EditNbrChiffreApresVergule.Text,'C','')
     else FSPrelevement.EditMontantRestant.Text:=Vergule(floattostr(strtoreal(FSPrelevement.EditSoldePrelevement.Text)-strtoreal(FSPrelevement.EditValeurPrelevementUniteFonds.Text)),FSPrelevement.EditNbrChiffreApresVergule.Text,'C','');

     FSPrelevement.TableauDetailArticlePrelevement.Col:=7;

     ///////////////////////////  MOYEN TRANSPORT /////////////////////////////
      AfficherDetailMoyenTransport('','Prélèvement',FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditNumPrelevementUniteFonds.Text,FSPrelevement.EditMatricule.Text,CodeTiers,
                                  FSPrelevement.EditPositionMoyenTransport,
                                  FSPrelevement.EditTypeFiche,
                                  FSPrelevement.EditNumMovementPrelevement,
                                  FSPrelevement.EditNumFiche,
                                  FSPrelevement.EditMatriculeEffectifValider,
                                  FSPrelevement.EditMoyenTransport,
                                  FSPrelevement.EditMatriculeTransport,
                                  FSPrelevement.EditNomChauffeur,
                                  FSPrelevement.EditPrenomChauffeur,
                                  FSPrelevement.EditPieceIdentite,
                                  FSPrelevement.EditCodeTiersValider);
      ////////////////////////////////////////////////////////////////////////////
end;

procedure TFSPrelevement.TableauDetailArticlePrelevementKeyPress(
  Sender: TObject; var Key: Char);
begin
     if(AnsiUpperCase(FSPrelevement.EditCodeTiers.Text)=AnsiUpperCase('Divers'))then
     begin
          FSPrelevement.EditValeurPrelevementUniteFonds.SetFocus;
          showmessage('Opération divers non autorisée !');
          Exit;
     end;

     if key in['.',';',':']then key:=DecimalSeparator;
     
     if not(FSPrelevement.TableauDetailArticlePrelevement.Col in[7])
     or(FSPrelevement.TableauDetailArticlePrelevement.Row>FSPrelevement.TableauDetailArticlePrelevement.RowCount-3)
     then
     begin
          key:=#0;
          FSPrelevement.TableauDetailArticlePrelevement.Col:=7;
     end;

     if Not(key in['0'..'9',DecimalSeparator])then  key:=#0;
end;

Procedure CummuleQtePrelevementJustifiser(NumPrelevement,NumPrelevementUF,Matricule,CodeTiers,CodeArticle:string; InclureDivers:boolean;  var  QuantiteGlobale,QuantiteJustifier:real);
var  OKPrelevementUF:boolean;  FichierConcerne,PositionPrelevement:string;
begin
     QuantiteGlobale:=0;
     QuantiteJustifier:=0;

     RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);
     if(RPrelevement.Archiver=false)
     then FichierConcerne:='FDetailArticlePrelevementUniteFonds'
     else FichierConcerne:='FArchiveDetailArticlePrelevementUniteFonds';

     OpenFParc(RParc);
     ChDetailArticlePrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FDetailArticlePrelevementUniteFonds,ChDetailArticlePrelevementUniteFonds);
     try
     if FileExists(ChDetailArticlePrelevementUniteFonds)then
     Reset(FDetailArticlePrelevementUniteFonds)
     else Rewrite(FDetailArticlePrelevementUniteFonds);
     Seek(FDetailArticlePrelevementUniteFonds,0);
     while not eof(FDetailArticlePrelevementUniteFonds)do
     begin
          read(FDetailArticlePrelevementUniteFonds,RDetailArticlePrelevementUniteFonds);

          if(InclureDivers=false)then
          begin
               if(RDetailArticlePrelevementUniteFonds.CodeTiers<>'Divers')
               then OKPrelevementUF:=true
               else OKPrelevementUF:=false;
          end
          else OKPrelevementUF:=true;

          if(OKPrelevementUF=true)then
          begin
               if(NumPrelevement<>'')then
               begin
                    if(inttostr(RDetailArticlePrelevementUniteFonds.NumPrelevement)=NumPrelevement)
                    then OKPrelevementUF:=true
                    else OKPrelevementUF:=false;
               end
               else OKPrelevementUF:=false;
          end;

          if(OKPrelevementUF=true)then
          begin
               if(Matricule<>'')then
               begin
                    if(RDetailArticlePrelevementUniteFonds.Matricule=Matricule)
                    then OKPrelevementUF:=true
                    else OKPrelevementUF:=false;
               end;
          end;

          if(OKPrelevementUF=true)then
          begin
               if(CodeArticle<>'')then
               begin
                    if(RDetailArticlePrelevementUniteFonds.CodeArticle=CodeArticle)
                    then OKPrelevementUF:=true
                    else OKPrelevementUF:=false;
               end
               else OKPrelevementUF:=false;
          end;

          if(OKPrelevementUF=true)then
          begin
               QuantiteGlobale:=QuantiteGlobale+RDetailArticlePrelevementUniteFonds.QuantiteJustifier;
                
               if(NumPrelevementUF<>'')then
               begin
                    if(RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds=strtointeger(NumPrelevementUF))
                    and(RDetailArticlePrelevementUniteFonds.CodeTiers=CodeTiers)
                    then OKPrelevementUF:=true
                    else OKPrelevementUF:=false;
               end
               else
               begin
                    OKPrelevementUF:=false;
               end;

               if(OKPrelevementUF=true)then
               begin
                    QuantiteJustifier:=QuantiteJustifier+RDetailArticlePrelevementUniteFonds.QuantiteJustifier;
               end;
          end;
     end;
     finally
     CloseFile(FDetailArticlePrelevementUniteFonds);
     end;
end;

Procedure ValiderDetailArticlesMoyentransport(ActiverAffichage:boolean; NumPrelevementUF:integer);
var  R,i,iSelect:integer;  OKArticle:boolean;  FichierConcerne,PositionPrelevement:string;
begin
     FSPrelevement.AfficheAttenteAffichePrelevement.Visible:=true;
     FSPrelevement.ProgressAttenteAffichePrelevement.Min:=0;
     FSPrelevement.ProgressAttenteAffichePrelevement.Position:=0;
     FSPrelevement.EditAttenteAffichePrelevement.SetFocus;
     FSPrelevement.PagePrincipale.Enabled:=false;

     RPrelevement:=ChercherPrelevement(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text),ExerciceAnnee,FSPrelevement.EditMatricule.Text,PositionPrelevement);
     if(RPrelevement.Archiver=false)
     then FichierConcerne:='FDetailArticlePrelevementUniteFonds'
     else FichierConcerne:='FArchiveDetailArticlePrelevementUniteFonds';

     OpenFParc(RParc);
     ChDetailArticlePrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FDetailArticlePrelevementUniteFonds,ChDetailArticlePrelevementUniteFonds);
     try
     if FileExists(ChDetailArticlePrelevementUniteFonds)then
     Reset(FDetailArticlePrelevementUniteFonds)
     else Rewrite(FDetailArticlePrelevementUniteFonds);

     FSPrelevement.ProgressAttenteAffichePrelevement.Max:=FSPrelevement.TableauDetailArticlePrelevement.RowCount-1;

     R:=1;
     while(R<=FSPrelevement.TableauDetailArticlePrelevement.RowCount-1)do
     begin
              Seek(FDetailArticlePrelevementUniteFonds,0);   FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;
              iSelect:=0;
              i:=0;
              OKArticle:=false;
              while not eof(FDetailArticlePrelevementUniteFonds)and(OKArticle=false)do
              begin
                   read(FDetailArticlePrelevementUniteFonds,RDetailArticlePrelevementUniteFonds);
                   if(RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds=NumPrelevementUF)
                   and(inttostr(RDetailArticlePrelevementUniteFonds.NumPrelevement)=FSPrelevement.EditNumPrelevementCompteur.Text)
                   and(RDetailArticlePrelevementUniteFonds.Matricule=FSPrelevement.EditMatricule.Text)
                   and(RDetailArticlePrelevementUniteFonds.CodeTiers=FSPrelevement.EditCodeTiers.Text)
                   and(RDetailArticlePrelevementUniteFonds.CodeArticle=FSPrelevement.TableauDetailArticlePrelevement.Cells[1,R])
                   then
                   begin
                        iSelect:=i;
                        OKArticle:=true;
                   end;
              i:=i+1;
              end;

              if(OKArticle=true)or(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[7,R])>0)then
              begin
                   if(OKArticle=true)then i:=iSelect;
                   Seek(FDetailArticlePrelevementUniteFonds,i);
                   RDetailArticlePrelevementUniteFonds.PositionDetailArticlePrelevementUniteFonds:=i;
                   RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds:=NumPrelevementUF;
                   RDetailArticlePrelevementUniteFonds.NumPrelevement:=strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text);
                   RDetailArticlePrelevementUniteFonds.NumEquipe:=strtointeger(FSPrelevement.EditNumEquipePrelevement.Text);
                   RDetailArticlePrelevementUniteFonds.Matricule:=FSPrelevement.EditMatricule.Text;
                   RDetailArticlePrelevementUniteFonds.DatePrelevement:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
                   RDetailArticlePrelevementUniteFonds.HeurePrelevement:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
                   RDetailArticlePrelevementUniteFonds.TypeProces:=FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row];
                   RDetailArticlePrelevementUniteFonds.FichierConcerne:=FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row];
                   RDetailArticlePrelevementUniteFonds.CodeTiers:=FSPrelevement.EditCodeTiers.Text;
                   RDetailArticlePrelevementUniteFonds.CodeArticle:=FSPrelevement.TableauDetailArticlePrelevement.Cells[1,R];
                   RDetailArticlePrelevementUniteFonds.QuantiteJustifier:=strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[7,R]);
                   RDetailArticlePrelevementUniteFonds.PrixUnitaire:=strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[4,R]);
                   RDetailArticlePrelevementUniteFonds.CoutUnitaire:=0;

                   write(FDetailArticlePrelevementUniteFonds,RDetailArticlePrelevementUniteFonds);
              end;

     R:=R+1;   
     end;
     finally
     CloseFile(FDetailArticlePrelevementUniteFonds);
     end;

     ////////////////////////////  MOYEN TRANSPORT   //////////////////////////
     if(FSPrelevement.EditPositionMoyenTransport.Text<>'')
     or((FSPrelevement.EditValeurPrelevementUniteFonds.Text<>'')
         and((FSPrelevement.EditMoyenTransport.Text<>'')
         or(FSPrelevement.EditMatriculeTransport.Text<>'')
         or(FSPrelevement.EditNomChauffeur.Text<>'')
         or(FSPrelevement.EditPrenomChauffeur.Text<>'')
         or(FSPrelevement.EditPieceIdentite.Text<>'')))
     then
     begin
          FSPrelevement.EditTypeFiche.Text:='Prélèvement';
          FSPrelevement.EditNumFiche.Text:=inttostr(NumPrelevementUF);
          
          ValiderMoyenTransport(FSPrelevement.EditPositionMoyenTransport.Text,
                                FSPrelevement.EditTypeFiche.Text,
                                FSPrelevement.EditNumMovementPrelevement.Text,
                                FSPrelevement.EditNumFiche.Text,
                                FSPrelevement.EditMoyenTransport.Text,
                                FSPrelevement.EditMatriculeTransport.Text,
                                FSPrelevement.EditNomChauffeur.Text,
                                FSPrelevement.EditPrenomChauffeur.Text,
                                FSPrelevement.EditPieceIdentite.Text,
                                FSPrelevement.EditCodeTiersValider.Text,
                                FSPrelevement.EditMatricule.Text);

          if(ActiverAffichage=true)then AfficherDetailMoyenTransport('',FSPrelevement.EditTypeFiche.Text,FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditNumPrelevementUniteFonds.Text,FSPrelevement.EditMatricule.Text,FSPrelevement.EditCodeTiers.Text,
                                        FSPrelevement.EditPositionMoyenTransport,
                                        FSPrelevement.EditTypeFiche,
                                        FSPrelevement.EditNumMovementPrelevement,
                                        FSPrelevement.EditNumFiche,
                                        FSPrelevement.EditMatriculeEffectifValider,
                                        FSPrelevement.EditMoyenTransport,
                                        FSPrelevement.EditMatriculeTransport,
                                        FSPrelevement.EditNomChauffeur,
                                        FSPrelevement.EditPrenomChauffeur,
                                        FSPrelevement.EditPieceIdentite,
                                        FSPrelevement.EditCodeTiersValider);
     end;

     if(ActiverAffichage=true)then AfficheDetailArticle(FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.EditMontantArticle,FSPrelevement.EditNumPrelevementCompteur.Text,'');

     FSPrelevement.AfficheAttenteAffichePrelevement.Visible:=false;
     FSPrelevement.PagePrincipale.Enabled:=true;
end;

procedure TFSPrelevement.TableauDetailArticlePrelevementKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var  R,l:integer;   MontantTotal,MontantRow:real;  AnomalieTexte:string;
begin
    if(AnsiUpperCase(FSPrelevement.EditCodeTiers.Text)=AnsiUpperCase('Divers'))then
    begin
         FSPrelevement.EditValeurPrelevementUniteFonds.SetFocus;
         showmessage('Opération divers non autorisée !');
         Exit;
    end;

     R:=FSPrelevement.TableauDetailArticlePrelevement.Row;

     if(R>FSPrelevement.TableauDetailArticlePrelevement.RowCount-3)then Exit;

     FSPrelevement.TableauDetailArticlePrelevement.Cells[10,R]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[5,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[6,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[7,R])),'2','C','');

     MontantRow:=strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[7,R])*strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[4,R]);
     FSPrelevement.TableauDetailArticlePrelevement.Cells[8,R]:=Vergule(floattostr(MontantRow),'2','C','');

     l:=1;
     MontantTotal:=0;
     while(l<=FSPrelevement.TableauDetailArticlePrelevement.RowCount-3)do
     begin
          MontantTotal:=MontantTotal+strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,l]);

     l:=l+1;
     end;
     FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1]:=Vergule(floattostr(MontantTotal),'2','C','');

     if(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[10,R])<0)
     or((strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1])+strtoreal(FSPrelevement.EditMontantRestant.Text))>0)
     then
     begin
          if(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[10,R])<0)then AnomalieTexte:='Quantité dépassé !';
          if((strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1])+strtoreal(FSPrelevement.EditMontantRestant.Text))>0)then AnomalieTexte:='Fonds dépassé !';

          showmessage(AnomalieTexte);

          FSPrelevement.TableauDetailArticlePrelevement.Cells[7,R]:='';
          FSPrelevement.TableauDetailArticlePrelevement.Cells[10,R]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[5,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[6,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[7,R])),'2','C','');

          MontantRow:=strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[7,R])*strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[4,R]);
          FSPrelevement.TableauDetailArticlePrelevement.Cells[8,R]:=Vergule(floattostr(MontantRow),'2','C','');

          l:=1;
          MontantTotal:=0;
          while(l<=FSPrelevement.TableauDetailArticlePrelevement.RowCount-3)do
          begin
               MontantTotal:=MontantTotal+strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,l]);

          l:=l+1;
          end;
          FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1]:=Vergule(floattostr(MontantTotal),'2','C','');
     end;

     AjusterColWidth(FSPrelevement.TableauDetailArticlePrelevement,'','');
end;

Procedure ListeDetailArticlePrelevementUniteFonds(TableauDetailArticlePrelevementUniteFonds:TStringGrid; ListeNumPrelevement,ListeNumPrelevementUniteFonds,Matricule,CodeTiers,DateDebut,DateFin:string; AccepteInfoVideNP,AccepteInfoVideNPUF,AccepteInfoVideMatricule,AccepteInfoVideCodeTiers,CumulerArticle:boolean; NbrRowIn:integer; NumStructure:string; var NbrRowOut:integer);
var   RNumPrelevement,RNumPrelevementUF,R,l,C,IBegin,IEnd,iPAP,SigneDebitCredit,iSFS,IndiceCodeStock:integer;
      OKArticle,OKIndexSousFamilleStock:boolean;
      MontantTotal,QuantiteActuelle:real;
      FichierConcerne,NotCol,PositionPrelevement,TypeProcesInt,FichierConcerneInt,Adresse,DebitCreditPrelevement,SousFamilleStock:string;
      TableauPointeurData:TableauPointeurDatas;
      TRegistreListeNumPrelevement,TRegistreListeNumPrelevementUF:TRegistreListeNums;
begin
     TStockArticleCopie:=RemplireTStockArticle('Article',NumStructure,FSTraitementDonnees.Rapport,ArrayIndexSousFamilleStock);
     //RStock:=ChercherStockArticle('Article',NumStructure,RDetailArticlePrelevementUniteFonds.CodeArticle,'',OKStockRecherche,RubriqueRecherche);

     FSPrelevement.ProgressAttenteAffichePrelevement.Min:=0;
     FSPrelevement.ProgressAttenteAffichePrelevement.Position:=0;
     FSPrelevement.AfficheAttenteAffichePrelevement.Visible:=true;
     if(FSPrelevement.Showing=true)then FSPrelevement.EditAttenteAffichePrelevement.SetFocus;
     FSPrelevement.PagePrincipale.Enabled:=false;

     ExisteNuminTexteSpecial(ListeNumPrelevement,TRegistreListeNumPrelevement,RNumPrelevement);
     ExisteNuminTexteSpecial(ListeNumPrelevementUniteFonds,TRegistreListeNumPrelevementUF,RNumPrelevementUF);

     if(NbrRowIn=0)then
     begin
           TableauDetailArticlePrelevementUniteFonds.ColCount:=22;
           TableauDetailArticlePrelevementUniteFonds.Cols[0].Text:='N°';
           TableauDetailArticlePrelevementUniteFonds.Cols[1].Text:='Code Article';
           TableauDetailArticlePrelevementUniteFonds.Cols[2].Text:='Article';
           TableauDetailArticlePrelevementUniteFonds.Cols[3].Text:='Réf';
           TableauDetailArticlePrelevementUniteFonds.Cols[4].Text:='U.M';
           TableauDetailArticlePrelevementUniteFonds.Cols[5].Text:='Coût';
           TableauDetailArticlePrelevementUniteFonds.Cols[6].Text:='Quantité';
           TableauDetailArticlePrelevementUniteFonds.Cols[7].Text:='Prix U.';
           TableauDetailArticlePrelevementUniteFonds.Cols[8].Text:='Montant';
           TableauDetailArticlePrelevementUniteFonds.Cols[9].Text:='P°';
           TableauDetailArticlePrelevementUniteFonds.Cols[10].Text:='N°Prel.UF';
           TableauDetailArticlePrelevementUniteFonds.Cols[11].Text:='N°Prel';
           TableauDetailArticlePrelevementUniteFonds.Cols[12].Text:='N°Equipe';
           TableauDetailArticlePrelevementUniteFonds.Cols[13].Text:='Matricule';
           TableauDetailArticlePrelevementUniteFonds.Cols[14].Text:='Date';
           TableauDetailArticlePrelevementUniteFonds.Cols[15].Text:='Heure';
           TableauDetailArticlePrelevementUniteFonds.Cols[16].Text:='Type Preces';
           TableauDetailArticlePrelevementUniteFonds.Cols[17].Text:='Fichier Concerne';
           TableauDetailArticlePrelevementUniteFonds.Cols[18].Text:='Code Tires';
           TableauDetailArticlePrelevementUniteFonds.Cols[19].Text:='Tiers';
           TableauDetailArticlePrelevementUniteFonds.Cols[20].Text:='Coût total';
           TableauDetailArticlePrelevementUniteFonds.Cols[21].Text:='Valeur Ajouter';

           TableauDetailArticlePrelevementUniteFonds.RowCount:=2;
           TableauDetailArticlePrelevementUniteFonds.Rows[1].Text:='';

           setlength(TableauPointeurData,0);
     end
     else
     begin
          setlength(TableauPointeurData,NbrRowIn+1);
          for R:=1 to NbrRowIn do
          begin
               TableauPointeurData[R-1].Data1:=TableauDetailArticlePrelevementUniteFonds.Cells[1,R];
               TableauPointeurData[R-1].RowPointeur:=R;
          end;
     end;

     l:=NbrRowIn;

     if(strtointeger(ListeNumPrelevement)<>0)then
     begin
          FSTraitementDonnees.Rapport.Lines.Add('Rechérche prélèvement !');
          RPrelevement:=ChercherPrelevement(strtointeger(ListeNumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);
          if(RPrelevement.Archiver=false)
          then FichierConcerneInt:='FDetailArticlePrelevementUniteFonds'
          else FichierConcerneInt:='FArchiveDetailArticlePrelevementUniteFonds';
     end
     else FichierConcerneInt:='FArchiveDetailArticlePrelevementUniteFonds';

     FSTraitementDonnees.Rapport.Lines.Add(FichierConcerneInt+': Prélèvement N° '+inttostr(RPrelevement.NumPrelevement)+' du '+RPrelevement.DatePrelevement);

     TypeProcesInt:='Business';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProcesInt,FichierConcerneInt,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerneInt+' recherché !');
     end;

     if(FSTraitementDonnees.RBAppliquerIndexationArchivePrelevement.Checked=true)then
     begin
          IndiquerPositionPeriodiqueArchivePrelevement(FichierConcerneInt,ListeNumPrelevement,datetostr(FSTraitementDonnees.EditDateDebutTableauBohr.Date),datetostr(FSTraitementDonnees.EditDateFinTableauBohr.Date),IBegin,IEnd);
     end
     else
     begin
          IBegin:=0;
          IEnd:=999999999;
     end;

     DebitCreditPrelevement:=FSTraitementDonnees.EditDebitCreditPositif.Text;
     if(DebitCreditPrelevement=FSTraitementDonnees.EditDebitCreditPositif.Text)then
     begin
          SigneDebitCredit:=1;
     end
     else
     begin
          SigneDebitCredit:=-1;
     end;

     FSTraitementDonnees.Rapport.Lines.Add('Détail Article Prélèvement Unite de Fonds, IBegin: '+inttostr(IBegin)+' IEnd: '+inttostr(IEnd));

     ChDetailArticlePrelevementUniteFonds:=Adresse;
     assignfile(FDetailArticlePrelevementUniteFonds,ChDetailArticlePrelevementUniteFonds);
     if FileExists(ChDetailArticlePrelevementUniteFonds)then
     begin
           try
           Reset(FDetailArticlePrelevementUniteFonds);
           iPAP:=IBegin;
           Seek(FDetailArticlePrelevementUniteFonds,iPAP);
           MontantTotal:=0;                                       

           FSPrelevement.ProgressAttenteAffichePrelevement.Max:=MinInt(IEnd-IBegin,FileSize(FDetailArticlePrelevementUniteFonds));

           while not eof(FDetailArticlePrelevementUniteFonds)and(iPAP<=IEnd)do
           begin
                read(FDetailArticlePrelevementUniteFonds,RDetailArticlePrelevementUniteFonds); Application.ProcessMessages; if(FSTraitementDonnees.RBSuspendreTBohr.Checked)then Exit;
                iPAP:=iPAP+1;

                SousFamilleStock:=Firstlaters(RDetailArticlePrelevementUniteFonds.CodeArticle,6);
                iSFS:=0;
                IndiceCodeStock:=0;
                OKIndexSousFamilleStock:=false;
                while(iSFS<=High(ArrayIndexSousFamilleStock))and(OKIndexSousFamilleStock=false)do
                begin
                     if(ArrayIndexSousFamilleStock[iSFS]=SousFamilleStock)then
                     begin
                          OKIndexSousFamilleStock:=true;
                          IndiceCodeStock:=strtoint(inttostr(iSFS)+lastlaters(RDetailArticlePrelevementUniteFonds.CodeArticle,4));
                     end;
                iSFS:=iSFS+1;
                end;

                FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;

                if(RDetailArticlePrelevementUniteFonds.QuantiteJustifier<>0)
                then OKArticle:=true
                else OKArticle:=false;

                if(OKArticle=true)then
                begin
                     if(ListeNumPrelevement<>'')then
                     begin
                          OKArticle:=false;
                          R:=0;
                          while(R<=RNumPrelevement-1)and(OKArticle=false)do
                          begin
                               if(RDetailArticlePrelevementUniteFonds.NumPrelevement=TRegistreListeNumPrelevement[R])then OKArticle:=true;
                          R:=R+1;
                          end;
                     end
                     else OKArticle:=AccepteInfoVideNP;
                end;

                if(OKArticle=true)then
                begin
                     if(ListeNumPrelevementUniteFonds<>'')then
                     begin
                          OKArticle:=false;
                          R:=0;
                          while(R<=RNumPrelevementUF-1)and(OKArticle=false)do
                          begin
                               if(RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds=TRegistreListeNumPrelevementUF[R])then OKArticle:=true;
                          R:=R+1;
                          end;
                     end
                     else OKArticle:=AccepteInfoVideNPUF;
                end;

                if(OKArticle=true)then
                begin
                     if(Matricule<>'')then
                     begin
                          if(RDetailArticlePrelevementUniteFonds.Matricule=Matricule)
                          then OKArticle:=true
                          else OKArticle:=false;
                     end
                     else OKArticle:=AccepteInfoVideMatricule;
                end;

                if(OKArticle=true)then
                begin
                     if(CodeTiers<>'')then
                     begin
                          if(RDetailArticlePrelevementUniteFonds.CodeTiers=CodeTiers)
                          then OKArticle:=true
                          else OKArticle:=false;
                     end
                     else OKArticle:=AccepteInfoVideCodeTiers;
                end;

                if(OKArticle=true)then
                begin
                     if(Datecorrecte(DateDebut)=true)then
                     begin
                          if(Datecorrecte(RDetailArticlePrelevementUniteFonds.DatePrelevement)=true)then
                          begin
                               if(strtodate(RDetailArticlePrelevementUniteFonds.DatePrelevement))>=strtodate(DateDebut)
                               then OKArticle:=true
                               else OKArticle:=false;
                          end
                          else OKArticle:=false;
                     end;
                end;

                if(OKArticle=true)then
                begin
                     if(Datecorrecte(DateFin)=true)then
                     begin
                          if(Datecorrecte(RDetailArticlePrelevementUniteFonds.DatePrelevement)=true)then
                          begin
                               if(strtodate(RDetailArticlePrelevementUniteFonds.DatePrelevement))<=strtodate(DateFin)
                               then OKArticle:=true
                               else OKArticle:=false;
                          end
                          else OKArticle:=false;
                     end;
                end;

                QuantiteActuelle:=RDetailArticlePrelevementUniteFonds.QuantiteJustifier*SigneDebitCredit;

                if(OKArticle=true)and(CumulerArticle=true)then
                begin
                     R:=1;
                     while(R<=l)and(OKArticle=true)do
                     begin
                          Application.ProcessMessages;

                          if(RDetailArticlePrelevementUniteFonds.CodeArticle=TableauPointeurData[R-1].Data1)then
                          begin
                               OKArticle:=false;

                               TableauDetailArticlePrelevementUniteFonds.Cells[5,R]:=
                               Vergule(floattostr(((strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[6,R])*strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[5,R]))
                              +(QuantiteActuelle*RDetailArticlePrelevementUniteFonds.CoutUnitaire))/(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[6,R])+QuantiteActuelle)),'2','C','');

                               TableauDetailArticlePrelevementUniteFonds.Cells[7,R]:=
                               Vergule(floattostr(((strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[6,R])*strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[7,R]))
                              +(QuantiteActuelle*RDetailArticlePrelevementUniteFonds.PrixUnitaire))/(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[6,R])+QuantiteActuelle)),'2','C','');

                               TableauDetailArticlePrelevementUniteFonds.Cells[6,R]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[6,R])+QuantiteActuelle),'2','C','');
                               TableauDetailArticlePrelevementUniteFonds.Cells[8,R]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[8,R])+(QuantiteActuelle*RDetailArticlePrelevementUniteFonds.PrixUnitaire)),'2','C','');
                               TableauDetailArticlePrelevementUniteFonds.Cells[20,R]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[20,R])+(QuantiteActuelle*RDetailArticlePrelevementUniteFonds.CoutUnitaire)),'2','C','');

                               MontantTotal:=MontantTotal+(QuantiteActuelle*RDetailArticlePrelevementUniteFonds.PrixUnitaire);

                               //RStock:=ChercherStockArticle('Article',NumStructure,RDetailArticlePrelevementUniteFonds.CodeArticle,'',OKStockRecherche,RubriqueRecherche);
                               FSTraitementDonnees.Rapport.Lines.Add('Mise à jour Détail article prélèvement: '+RDetailArticlePrelevementUniteFonds.DatePrelevement+' '+RDetailArticlePrelevementUniteFonds.CodeArticle+' '+TStockArticleCopie[IndiceCodeStock].Design+' '+TStockArticleCopie[IndiceCodeStock].Ref+' '+Vergule(floattostr(QuantiteActuelle),'2','C','')+' '+TStockArticleCopie[IndiceCodeStock].UM);
                          end;
                     R:=R+1;
                     end;
                end;

                if(OKArticle=true)then
                begin
                     l:=l+1;
                     TableauDetailArticlePrelevementUniteFonds.Rows[l].Text:=inttostr(l);
                     TableauDetailArticlePrelevementUniteFonds.Cells[1,l]:=RDetailArticlePrelevementUniteFonds.CodeArticle;
                     //RStock:=ChercherStockArticle('Article',NumStructure,RDetailArticlePrelevementUniteFonds.CodeArticle,'',OKStockRecherche,RubriqueRecherche);
                     TableauDetailArticlePrelevementUniteFonds.Cells[2,l]:=TStockArticleCopie[IndiceCodeStock].Design;
                     TableauDetailArticlePrelevementUniteFonds.Cells[3,l]:=TStockArticleCopie[IndiceCodeStock].Ref;
                     TableauDetailArticlePrelevementUniteFonds.Cells[4,l]:=TStockArticleCopie[IndiceCodeStock].UM;
                     TableauDetailArticlePrelevementUniteFonds.Cells[5,l]:=Vergule(floattostr(TStockArticleCopie[IndiceCodeStock].CoutUnitaire),'2','C','');
                     TableauDetailArticlePrelevementUniteFonds.Cells[6,l]:=Vergule(floattostr(QuantiteActuelle),'2','C','');
                     TableauDetailArticlePrelevementUniteFonds.Cells[7,l]:=Vergule(floattostr(RDetailArticlePrelevementUniteFonds.PrixUnitaire),'2','C','');
                     TableauDetailArticlePrelevementUniteFonds.Cells[8,l]:=Vergule(floattostr(QuantiteActuelle*RDetailArticlePrelevementUniteFonds.PrixUnitaire),'2','C','');
                     TableauDetailArticlePrelevementUniteFonds.Cells[9,l]:=inttostr(RDetailArticlePrelevementUniteFonds.PositionDetailArticlePrelevementUniteFonds);
                     TableauDetailArticlePrelevementUniteFonds.Cells[10,l]:=inttostr(RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds);
                     TableauDetailArticlePrelevementUniteFonds.Cells[11,l]:=inttostr(RDetailArticlePrelevementUniteFonds.NumPrelevement);
                     TableauDetailArticlePrelevementUniteFonds.Cells[12,l]:=inttostr(RDetailArticlePrelevementUniteFonds.NumEquipe);
                     TableauDetailArticlePrelevementUniteFonds.Cells[13,l]:=RDetailArticlePrelevementUniteFonds.Matricule;
                     TableauDetailArticlePrelevementUniteFonds.Cells[14,l]:=RDetailArticlePrelevementUniteFonds.DatePrelevement;
                     TableauDetailArticlePrelevementUniteFonds.Cells[15,l]:=RDetailArticlePrelevementUniteFonds.HeurePrelevement;
                     TableauDetailArticlePrelevementUniteFonds.Cells[16,l]:=RDetailArticlePrelevementUniteFonds.TypeProces;
                     TableauDetailArticlePrelevementUniteFonds.Cells[17,l]:=RDetailArticlePrelevementUniteFonds.FichierConcerne;
                     TableauDetailArticlePrelevementUniteFonds.Cells[18,l]:=RDetailArticlePrelevementUniteFonds.CodeTiers;
                     TableauDetailArticlePrelevementUniteFonds.Cells[19,l]:=ImporteDataProcesTiers(RDetailArticlePrelevementUniteFonds.TypeProces,RDetailArticlePrelevementUniteFonds.FichierConcerne,RDetailArticlePrelevementUniteFonds.CodeTiers,PositionTiersRecherche);
                     TableauDetailArticlePrelevementUniteFonds.Cells[20,l]:=Vergule(floattostr(QuantiteActuelle*RDetailArticlePrelevementUniteFonds.CoutUnitaire),'2','C','');;
                     TableauDetailArticlePrelevementUniteFonds.Cells[21,l]:='';

                     MontantTotal:=MontantTotal+(QuantiteActuelle*RDetailArticlePrelevementUniteFonds.PrixUnitaire);

                     setlength(TableauPointeurData,l);
                     TableauPointeurData[l-1].Data1:=RDetailArticlePrelevementUniteFonds.CodeArticle;
                     TableauPointeurData[l-1].RowPointeur:=l;
      AffichageProgressif(FSAffichage.AfficheTexte4,'Tiers: '+RDetailArticlePrelevementUniteFonds.CodeTiers+'  Article: '+RDetailArticlePrelevementUniteFonds.CodeArticle+' '+TStockArticleCopie[IndiceCodeStock].Design+' '+TStockArticleCopie[IndiceCodeStock].Ref,false,false);
                     FSTraitementDonnees.Rapport.Lines.Add('Nouveau Détail article prélèvement: '+RDetailArticlePrelevementUniteFonds.DatePrelevement+' '+RDetailArticlePrelevementUniteFonds.CodeArticle+' '+TStockArticleCopie[IndiceCodeStock].Design+' '+TStockArticleCopie[IndiceCodeStock].Ref+' '+Vergule(floattostr(QuantiteActuelle),'2','C','')+' '+TStockArticleCopie[IndiceCodeStock].UM);
                     FSTraitementDonnees.RapportTraitementMouvements.Lines.Add('Détail prélèvement: '+RDetailArticlePrelevementUniteFonds.DatePrelevement+' '+RDetailArticlePrelevementUniteFonds.CodeArticle+' '+TStockArticleCopie[IndiceCodeStock].Design+' '+TStockArticleCopie[IndiceCodeStock].Ref+' '+Vergule(floattostr(QuantiteActuelle),'2','C','')+' '+TStockArticleCopie[IndiceCodeStock].UM);
                end;
           LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
           end;
           finally
           CloseFile(FDetailArticlePrelevementUniteFonds);
           end;
           LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
     end;

     if(l>0)then
            begin
                 TableauDetailArticlePrelevementUniteFonds.RowCount:=l+3;
                 TableauDetailArticlePrelevementUniteFonds.Rows[TableauDetailArticlePrelevementUniteFonds.RowCount-1].Text:='';
                 TableauDetailArticlePrelevementUniteFonds.Rows[TableauDetailArticlePrelevementUniteFonds.RowCount-2].Text:='';

                 TableauDetailArticlePrelevementUniteFonds.Cells[5,TableauDetailArticlePrelevementUniteFonds.RowCount-1]:='Total:';

                 R:=1;
                 while(R<=l)do
                 begin
                      Application.ProcessMessages;

                      TableauDetailArticlePrelevementUniteFonds.Cells[21,R]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[8,R])-
                                                                              (strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[20,R]))),'2','C','');

                      TableauDetailArticlePrelevementUniteFonds.Cells[6,l+2]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[6,l+2])+strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[6,R])),'2','C','');

                      TableauDetailArticlePrelevementUniteFonds.Cells[8,l+2]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[8,l+2])+
                                                                              (strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[8,R]))),'2','C','');

                      TableauDetailArticlePrelevementUniteFonds.Cells[20,l+2]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[20,l+2])+
                                                                              (strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[20,R]))),'2','C','');

                      TableauDetailArticlePrelevementUniteFonds.Cells[21,l+2]:=Vergule(floattostr(strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[21,l+2])+
                                                                              (strtoreal(TableauDetailArticlePrelevementUniteFonds.Cells[21,R]))),'2','C','');

                 R:=R+1;
                 end;
            end
            else TableauDetailArticlePrelevementUniteFonds.RowCount:=2;

            LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

     TableauDetailArticlePrelevementUniteFonds.Cells[6,TableauDetailArticlePrelevementUniteFonds.RowCount-1]:=Vergule(TableauDetailArticlePrelevementUniteFonds.Cells[6,TableauDetailArticlePrelevementUniteFonds.RowCount-1],'2','C','');
     TableauDetailArticlePrelevementUniteFonds.Cells[8,TableauDetailArticlePrelevementUniteFonds.RowCount-1]:=Vergule(TableauDetailArticlePrelevementUniteFonds.Cells[8,TableauDetailArticlePrelevementUniteFonds.RowCount-1],'2','C','');
     TableauDetailArticlePrelevementUniteFonds.Cells[20,TableauDetailArticlePrelevementUniteFonds.RowCount-1]:=Vergule(TableauDetailArticlePrelevementUniteFonds.Cells[20,TableauDetailArticlePrelevementUniteFonds.RowCount-1],'2','C','');
     TableauDetailArticlePrelevementUniteFonds.Cells[21,TableauDetailArticlePrelevementUniteFonds.RowCount-1]:=Vergule(TableauDetailArticlePrelevementUniteFonds.Cells[21,TableauDetailArticlePrelevementUniteFonds.RowCount-1],'2','C','');

     NbrRowOut:=l;

     NotCol:='9-19;22;23';
     for C:=0 to TableauDetailArticlePrelevementUniteFonds.ColCount-1 do if(ExisteNuminTexte(inttostr(C),NotCol))then TableauDetailArticlePrelevementUniteFonds.ColWidths[C]:=0;
     AjusterColWidth(TableauDetailArticlePrelevementUniteFonds,'',NotCol);

     setlength(TRegistreListeNumPrelevement,0);
     setlength(TRegistreListeNumPrelevementUF,0);

     FSPrelevement.AfficheAttenteAffichePrelevement.Visible:=false;
     FSPrelevement.PagePrincipale.Enabled:=true;

end;

procedure TFSPrelevement.BitBtn18Click(Sender: TObject);
begin
     FSPrelevement.AfficheOperationTableauListeDetailArticleUnitesFonds.Visible:=false;
end;

procedure TFSPrelevement.BitOperationTableauListeDetailArticleUnitesFondsClick(Sender: TObject);
var R:integer; OKConfirme:boolean; FichierConcerne,PositionPrelevement:string;
    NumPrelevement,NumPrelevementFin,NumStructure:string;
begin                                                    //and(FSPrelevement.EditMatricule.Text<>'')
     if(FSPrelevement.EditNumPrelevementCompteur.Text<>'')then
     begin
          if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,PositionPrelevement)=false)
          then FichierConcerne:='FDetailArticlePrelevementUniteFonds'
          else FichierConcerne:='FArchiveDetailArticlePrelevementUniteFonds';


          if(FSPrelevement.BitOperationTableauListeDetailArticleUnitesFonds.Caption='Supprimer')then
          begin
               DeleteFDetailArticlePrelevementUniteFonds(FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[9,FSPrelevement.TableauListeDetailArticleUnitesFonds.Row],FichierConcerne,OKConfirme);
          end;

          AfficheDetailArticle(FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.EditMontantArticle,FSPrelevement.EditNumPrelevementCompteur.Text,'');
          ExecuterMiseAJourDetailArticleDiversTiers;
          ListeDetailArticlePrelevementUniteFonds(FSPrelevement.TableauListeDetailArticleUnitesFonds,FSPrelevement.EditNumPrelevementCompteur.Text,'',FSPrelevement.EditMatricule.Text,'','','',false,true,true,true,FSPrelevement.RBDetailArticleCumuleArticle.Checked,0,FSPrelevement.EditNumStructure.Text,R);
          FSPrelevement.TableauListeDetailArticleUnitesFonds.SetFocus;

          NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
          NumPrelevementFin:='';
          AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
          FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,NumStructure);

          FSPrelevement.EditNumStructure.Text:=NumStructure;
          FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
          ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);
     end
     else
     begin
          if(FSPrelevement.RBAutoriseModificationUnitesFonds.Checked=false)then AfficherMessage('Suppression non autorisé !')
          else
          if(FSPrelevement.EditNumPrelevementCompteur.Text='')then AfficherMessage('Suppression non autorisé ! aucun prélèvement sélectionné !')
          else
          if(FSPrelevement.EditMatricule.Text='')then AfficherMessage('Suppression non autorisé ! veuillez choisir un matricule !');
     end;

     FSPrelevement.AfficheOperationTableauListeDetailArticleUnitesFonds.Visible:=false;
end;

procedure TFSPrelevement.TableauListeDetailArticleUnitesFondsKeyPress(
  Sender: TObject; var Key: Char);
begin
     if(FSPrelevement.RBDetailArticleCumuleArticle.Checked=false)then
     begin
           if key in['s','S']then
           begin
                FSPrelevement.AfficheOperationTableauListeDetailArticleUnitesFonds.Visible:=true;
                FSPrelevement.BitOperationTableauListeDetailArticleUnitesFonds.Kind:=bkCancel;
                FSPrelevement.BitOperationTableauListeDetailArticleUnitesFonds.Caption:='Supprimer';

                FSPrelevement.AfficheOperationTableauListeDetailArticleUnitesFonds.Caption:='Supprimer l''enregistrement ?';

                FSPrelevement.BitOperationTableauListeDetailArticleUnitesFonds.SetFocus;
           end;
     end
     else
     begin
          showmessage('Suppression impossible! affichage cumulé !');
     end;
end;

procedure TFSPrelevement.TableauDetailTiersClick(Sender: TObject);
var R:integer; OKNP,OKNPUF,OKMatricule,OKCodeTiers:boolean;   NumPrelevementUF:string;
begin
     FSPrelevement.AfficheOperationTableauDetailArticleTiers.Visible:=false;
     FSPrelevement.AfficheDetaildesArticlesArchive.Visible:=false;

     OKNP:=true;
     OKNPUF:=true;
     OKMatricule:=true;
     OKCodeTiers:=false;

     if(FSPrelevement.RBDetailPieceTiers.Checked=true)
     then NumPrelevementUF:=FSPrelevement.TableauDetailTiers.Cells[1,FSPrelevement.TableauDetailTiers.Row]
     else NumPrelevementUF:='';

     ListeDetailArticlePrelevementUniteFonds(FSPrelevement.TableauDetailArticleTiers,FSPrelevement.EditNumPrelevementCompteur.Text,NumPrelevementUF,FSPrelevement.EditMatricule.Text,FSPrelevement.TableauDetailTiers.Cells[4,FSPrelevement.TableauDetailTiers.Row],'','',OKNP,OKNPUF,OKMatricule,OKCodeTiers,FSPrelevement.RBDetailArticleCumuleArticle.Checked,0,FSPrelevement.EditNumStructure.Text,R);
end;

procedure TFSPrelevement.TableauDetailArticlePrelevementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if(AnsiUpperCase(FSPrelevement.EditCodeTiers.Text)=AnsiUpperCase('Divers'))then
     begin
          FSPrelevement.EditValeurPrelevementUniteFonds.SetFocus;
          showmessage('Opération divers non autorisée !');
          Exit;
     end; 

     if key in[VK_RETURN]then
     begin
          if(FSPrelevement.TableauDetailArticlePrelevement.Row<FSPrelevement.TableauDetailArticlePrelevement.RowCount-2)
          then FSPrelevement.TableauDetailArticlePrelevement.Row:=FSPrelevement.TableauDetailArticlePrelevement.Row+1
          else FSPrelevement.BitValiderDetailArticlePrelevement.SetFocus;
     end;

     if key in[VK_INSERT,VK_ADD]then
     begin
          ProcTableauDetailArticlePrelevementDblClick;
     end;

     if key in[VK_SUBTRACT]then
     begin
          if(FSPrelevement.TableauDetailArticlePrelevement.Col=7)then FSPrelevement.TableauDetailArticlePrelevement.Cells[7,FSPrelevement.TableauDetailArticlePrelevement.Row]:='';
     end;
end;

procedure TFSPrelevement.TableauDetailArticlePrelevementDblClick(
  Sender: TObject);

begin
     ProcTableauDetailArticlePrelevementDblClick;
end;

procedure TFSPrelevement.TableauDetailTiersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  R,l,NbrCompteurPlanifier,NbrCompteurAffecter:integer;   MontantTotal,QuantiteGlobale,QuantiteJustifier:real;
     OKSelectEffectif:boolean; Notification:string;
begin
     if key in[VK_RETURN]then
     begin
          if(ControleTotalAffectationCompteur(FSPrelevement.EditNumPrelevementCompteur.Text,NbrCompteurPlanifier,NbrCompteurAffecter)=false)then
          begin
               if(NbrCompteurAffecter=0)then
               begin
                    OKSelectEffectif:=true;
               end
               else
               begin
                    OKSelectEffectif:=false;
                    Notification:='Affectation Compteur non achevé !';
               end;
          end
          else
          begin
               if(FSPrelevement.EditMatricule.Text<>'')
               then OKSelectEffectif:=true
               else
               begin
                    OKSelectEffectif:=false;
                    Notification:='Veuillez sélectionner un effectif SVP !';
                    FSPrelevement.PagePrelevementCompteursUniteFonds.Show;
                    FSPrelevement.EditNomEffectif.SetFocus;
               end;
          end;

          if(OKSelectEffectif=false)then
          begin
               Showmessage(Notification);
               Exit;
          end;

          if(OKSelectEffectif=true)
          and(FSPrelevement.RBDetailPieceTiers.Checked=true)then
          begin
               FSPrelevement.AfficheDetaildesArticlesArchive.Visible:=true;

               TableauDetailArticlePrelevementArchive.ColCount:=11;
               TableauDetailArticlePrelevementArchive.Cols[0].Text:='N°';
               TableauDetailArticlePrelevementArchive.Cols[1].Text:='Code';
               TableauDetailArticlePrelevementArchive.Cols[2].Text:='ARticle';
               TableauDetailArticlePrelevementArchive.Cols[3].Text:='UM';
               TableauDetailArticlePrelevementArchive.Cols[4].Text:='Prix U.';
               TableauDetailArticlePrelevementArchive.Cols[5].Text:='Qte.Prélever';
               TableauDetailArticlePrelevementArchive.Cols[6].Text:='Qte.Justifier';
               TableauDetailArticlePrelevementArchive.Cols[7].Text:='Qte à justifier';
               TableauDetailArticlePrelevementArchive.Cols[8].Text:='Montant';
               TableauDetailArticlePrelevementArchive.Cols[9].Text:='';
               TableauDetailArticlePrelevementArchive.Cols[10].Text:='Qte Restante';

               FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount:=2;
               FSPrelevement.TableauDetailArticlePrelevementArchive.Rows[1].Text:='';

               R:=1;
               l:=0;
               MontantTotal:=0;
               while(R<=FSPrelevement.TableauDetailArticle.RowCount-3)do
               begin
                    if(strtoreal(FSPrelevement.TableauDetailArticle.Cells[6,R])<>0)then
                    begin
                          l:=l+1;
                          FSPrelevement.TableauDetailArticlePrelevementArchive.Rows[l].Text:=inttostr(l);
                          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[1,l]:=FSPrelevement.TableauDetailArticle.Cells[1,R];
                          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[2,l]:=FSPrelevement.TableauDetailArticle.Cells[2,R];
                          RStock:=ChercherStockArticle('Article','',FSPrelevement.TableauDetailArticle.Cells[1,R],'',OKStockRecherche,RubriqueRecherche);
                          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[3,l]:=RStock.UM;
                          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[4,l]:=Vergule(FSPrelevement.TableauDetailArticle.Cells[3,R],'2','C','');
                          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[5,l]:=Vergule(FSPrelevement.TableauDetailArticle.Cells[6,R],'2','C','');

                          CummuleQtePrelevementJustifiser(FSPrelevement.TableauDetailTiers.Cells[2,FSPrelevement.TableauDetailTiers.Row],FSPrelevement.TableauDetailTiers.Cells[1,FSPrelevement.TableauDetailTiers.Row],FSPrelevement.EditMatricule.Text,FSPrelevement.TableauDetailTiers.Cells[4,FSPrelevement.TableauDetailTiers.Row],FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[1,l],false,QuantiteGlobale,QuantiteJustifier);

                          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[6,l]:=Vergule(floattostr(QuantiteGlobale-QuantiteJustifier),'2','C','');
                          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,l]:=Vergule(floattostr(QuantiteJustifier),'2','C','');
                          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,l]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,l])*strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[4,l])),'2','C','');
                          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[9,l]:='';
                          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[10,l]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[5,l])-
                                                                                    strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[6,l])-
                                                                                    strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,l])),'2','C','');

                          MontantTotal:=MontantTotal+strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,l]);
                    end;
               R:=R+1;
               end;

               if(l>0)then
                      begin
                           FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount:=l+3;

                           FSPrelevement.TableauDetailArticlePrelevementArchive.Rows[FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1].Text:='';
                           FSPrelevement.TableauDetailArticlePrelevementArchive.Rows[FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-2].Text:='';

                           FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1]:='Total:';
                           FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1]:=Vergule(floattostr(MontantTotal),'2','C','');
                      end
                      else FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount:=2;

               AjusterColWidth(FSPrelevement.TableauDetailArticlePrelevementArchive,'','');

               if(strtoreal(FSPrelevement.TableauDetailTiers.Cells[7,FSPrelevement.TableauDetailTiers.Row])>0)
               then FSPrelevement.EditMontantRestantArchive.Text:=Vergule('-'+FSPrelevement.TableauDetailTiers.Cells[7,FSPrelevement.TableauDetailTiers.Row],'2','C','')
               else FSPrelevement.EditMontantRestantArchive.Text:=Vergule(floattostr(strtoreal(FSPrelevement.EditSoldePrelevement.Text)-strtoreal(FSPrelevement.TableauDetailTiers.Cells[7,FSPrelevement.TableauDetailTiers.Row])),'2','C','');

               FSPrelevement.TableauDetailArticlePrelevementArchive.Col:=7;
               FSPrelevement.TableauDetailArticlePrelevementArchive.SetFocus;
          end
          else
          begin
               showmessage('Veuillez sélectionner Détail par pièce Tiers !');
          end;
     end;
end;

procedure TFSPrelevement.BitBtn19Click(Sender: TObject);
begin
     FSPrelevement.AfficheDetaildesArticlesArchive.Visible:=false;
end;

procedure TFSPrelevement.BitBtn20Click(Sender: TObject);
var  R,i,iSelect:integer;  OKArticle:boolean;     NumPrelevementUF,FichierConcerne,PositionPrelevement:string;
     OKNP,OKNPUF,OKMatricule,OKCodeTiers:boolean; 
begin
     if(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1])>0)
     then FSPrelevement.EditValeurPrelevementUniteFonds.Text:=FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1]
     else FSPrelevement.EditValeurPrelevementUniteFonds.Text:='';
     NumPrelevementUF:=FSPrelevement.TableauDetailTiers.Cells[1,FSPrelevement.TableauDetailTiers.Row];

     RPrelevement:=ChercherPrelevement(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text),ExerciceAnnee,FSPrelevement.EditMatricule.Text,PositionPrelevement);
     if(RPrelevement.Archiver=false)
     then FichierConcerne:='FDetailArticlePrelevementUniteFonds'
     else FichierConcerne:='FArchiveDetailArticlePrelevementUniteFonds';

     OpenFParc(RParc);
     ChDetailArticlePrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FDetailArticlePrelevementUniteFonds,ChDetailArticlePrelevementUniteFonds);
     try
     if FileExists(ChDetailArticlePrelevementUniteFonds)then
     Reset(FDetailArticlePrelevementUniteFonds)
     else Rewrite(FDetailArticlePrelevementUniteFonds);

     R:=1;
     while(R<=FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1)do
     begin
              Seek(FDetailArticlePrelevementUniteFonds,0);
              iSelect:=0;
              i:=0;
              OKArticle:=false;
              while not eof(FDetailArticlePrelevementUniteFonds)and(OKArticle=false)do
              begin                                                                            
                   read(FDetailArticlePrelevementUniteFonds,RDetailArticlePrelevementUniteFonds);
                   if(RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds=strtointeger(NumPrelevementUF))
                   and(inttostr(RDetailArticlePrelevementUniteFonds.NumPrelevement)=FSPrelevement.EditNumPrelevementCompteur.Text)
                   and(RDetailArticlePrelevementUniteFonds.Matricule=FSPrelevement.EditMatricule.Text)
                   and(RDetailArticlePrelevementUniteFonds.CodeTiers=FSPrelevement.TableauDetailTiers.Cells[4,FSPrelevement.TableauDetailTiers.Row])
                   and(RDetailArticlePrelevementUniteFonds.CodeArticle=FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[1,R])
                   then
                   begin
                        iSelect:=i;
                        OKArticle:=true;
                   end;
              i:=i+1;
              end;

              if(OKArticle=true)or(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,R])>0)then
              begin
                   if(OKArticle=true)then i:=iSelect;
                   Seek(FDetailArticlePrelevementUniteFonds,i);
                   RDetailArticlePrelevementUniteFonds.PositionDetailArticlePrelevementUniteFonds:=i;
                   RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds:=strtointeger(NumPrelevementUF);
                   RDetailArticlePrelevementUniteFonds.NumPrelevement:=strtointeger(FSPrelevement.TableauDetailTiers.Cells[2,FSPrelevement.TableauDetailTiers.Row]);
                   RDetailArticlePrelevementUniteFonds.NumEquipe:=strtointeger(FSPrelevement.EditNumEquipePrelevement.Text);
                   RDetailArticlePrelevementUniteFonds.Matricule:=FSPrelevement.EditMatricule.Text;
                   RDetailArticlePrelevementUniteFonds.DatePrelevement:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
                   RDetailArticlePrelevementUniteFonds.HeurePrelevement:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
                   RDetailArticlePrelevementUniteFonds.TypeProces:=FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row];
                   RDetailArticlePrelevementUniteFonds.FichierConcerne:=FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row];
                   RDetailArticlePrelevementUniteFonds.CodeTiers:=FSPrelevement.TableauDetailTiers.Cells[4,FSPrelevement.TableauDetailTiers.Row];
                   RDetailArticlePrelevementUniteFonds.CodeArticle:=FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[1,R];
                   RDetailArticlePrelevementUniteFonds.QuantiteJustifier:=strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,R]);
                   RDetailArticlePrelevementUniteFonds.PrixUnitaire:=strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[4,R]);

                   write(FDetailArticlePrelevementUniteFonds,RDetailArticlePrelevementUniteFonds);
              end;

     R:=R+1;
     end;
     finally
     CloseFile(FDetailArticlePrelevementUniteFonds);
     end;

     OKNP:=true;
     OKNPUF:=true;
     OKMatricule:=true;
     OKCodeTiers:=false;

     if(FSPrelevement.RBDetailPieceTiers.Checked=true)
     then NumPrelevementUF:=FSPrelevement.TableauDetailTiers.Cells[1,FSPrelevement.TableauDetailTiers.Row]
     else NumPrelevementUF:='';

     ListeDetailArticlePrelevementUniteFonds(FSPrelevement.TableauDetailArticleTiers,FSPrelevement.EditNumPrelevementCompteur.Text,NumPrelevementUF,FSPrelevement.EditMatricule.Text,FSPrelevement.TableauDetailTiers.Cells[4,FSPrelevement.TableauDetailTiers.Row],'','',OKNP,OKNPUF,OKMatricule,OKCodeTiers,FSPrelevement.RBDetailArticleCumuleArticle.Checked,0,FSPrelevement.EditNumStructure.Text,R);

     FSPrelevement.AfficheDetaildesArticlesArchive.Visible:=false;
end;

procedure TFSPrelevement.TableauDetailArticlePrelevementArchiveDblClick(
  Sender: TObject);
var  R,l:integer;   MontantTotal,Quantite:real;  AnomalieTexte:string;
begin
     if(FSPrelevement.TableauDetailArticlePrelevementArchive.Col=7)then
     begin
          if(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,FSPrelevement.TableauDetailArticlePrelevementArchive.Row])>0)then begin showmessage('La valeur doit être nulle !'); exit; end;

          if(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[4,FSPrelevement.TableauDetailArticlePrelevementArchive.Row])>0)
          then Quantite:=(-1)*strtoreal(Vergule(floattostr((strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1])+strtoreal(FSPrelevement.EditMontantRestantArchive.Text))/strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[4,FSPrelevement.TableauDetailArticlePrelevementArchive.Row])),'2','C',''))
          else Quantite:=0;

          l:=Longueur(inttostr(ValeAbsolue(Quantite)))+3;

          if(Quantite>strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[10,FSPrelevement.TableauDetailArticlePrelevementArchive.Row]))then Quantite:=strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[10,FSPrelevement.TableauDetailArticlePrelevementArchive.Row]);

          if(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[4,FSPrelevement.TableauDetailArticlePrelevementArchive.Row])>0)then
          begin
               if((strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1])+strtoreal(FSPrelevement.EditMontantRestantArchive.Text))/strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[4,FSPrelevement.TableauDetailArticlePrelevementArchive.Row])<0)
               then FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,FSPrelevement.TableauDetailArticlePrelevementArchive.Row]:=Vergule(firstlaters(floattostr(Quantite),l),'2','C','')
               else FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,FSPrelevement.TableauDetailArticlePrelevementArchive.Row]:='0,00';
          end
          else FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,FSPrelevement.TableauDetailArticlePrelevementArchive.Row]:='0,00';
     end;

     R:=FSPrelevement.TableauDetailArticlePrelevementArchive.Row;

     if(R>FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-3)then Exit;

     FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[10,R]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[5,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[6,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,R])),'2','C','');

     FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,R]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,R])*strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[4,R])),'2','C','');

     l:=1;
     MontantTotal:=0;
     while(l<=FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-3)do
     begin
          MontantTotal:=MontantTotal+strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,l]);

     l:=l+1;
     end;
     FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1]:=Vergule(floattostr(MontantTotal),'2','C','');

     if(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[10,R])<0)
     or((strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1])+strtoreal(FSPrelevement.EditMontantRestantArchive.Text))>0)
     then
     begin
          if(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[10,R])<0)then AnomalieTexte:='Quantité dépassé !';
          if((strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1])+strtoreal(FSPrelevement.EditMontantRestantArchive.Text))>0)then AnomalieTexte:='Fonds dépassé !';

          showmessage(AnomalieTexte);

          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,R]:='';
          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[10,R]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[5,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[6,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,R])),'2','C','');

          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,R]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,R])*strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[4,R])),'2','C','');

          l:=1;
          MontantTotal:=0;
          while(l<=FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-3)do
          begin
               MontantTotal:=MontantTotal+strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,l]);

          l:=l+1;
          end;
          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1]:=Vergule(floattostr(MontantTotal),'2','C','');
     end;

     AjusterColWidth(FSPrelevement.TableauDetailArticlePrelevementArchive,'','');
end;

procedure TFSPrelevement.TableauDetailArticlePrelevementArchiveKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(FSPrelevement.TableauDetailArticlePrelevementArchive.Row<FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1)then
          FSPrelevement.TableauDetailArticlePrelevementArchive.Row:=FSPrelevement.TableauDetailArticlePrelevementArchive.Row+1;
     end;
end;

procedure TFSPrelevement.TableauDetailArticlePrelevementArchiveKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['.',';',':']then key:=',';
     
     if not(FSPrelevement.TableauDetailArticlePrelevementArchive.Col in[7])
     or(FSPrelevement.TableauDetailArticlePrelevementArchive.Row>FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-3)
     then
     begin
          key:=#0;
          FSPrelevement.TableauDetailArticlePrelevementArchive.Col:=7;
     end;

     if key in['a'..'Z']then  key:=#0;
end;


procedure TFSPrelevement.TableauDetailArticlePrelevementArchiveKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var  R,l:integer;   MontantTotal:real;  AnomalieTexte:string;
begin
     R:=FSPrelevement.TableauDetailArticlePrelevementArchive.Row;

     if(R>FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-3)then Exit;

     FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[10,R]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[5,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[6,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,R])),'2','C','');

     FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,R]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,R])*strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[4,R])),'2','C','');

     l:=1;
     MontantTotal:=0;
     while(l<=FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-3)do
     begin
          MontantTotal:=MontantTotal+strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,l]);

     l:=l+1;
     end;
     FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1]:=Vergule(floattostr(MontantTotal),'2','C','');

     if(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[10,R])<0)
     or((strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1])+strtoreal(FSPrelevement.EditMontantRestantArchive.Text))>0)
     then
     begin
          if(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[10,R])<0)then AnomalieTexte:='Quantité dépassé !';
          if((strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1])+strtoreal(FSPrelevement.EditMontantRestantArchive.Text))>0)then AnomalieTexte:='Fonds dépassé !';

          showmessage(AnomalieTexte);

          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,R]:='';
          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[10,R]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[5,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[6,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,R])),'2','C','');

          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,R]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[7,R])*strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[4,R])),'2','C','');

          l:=1;
          MontantTotal:=0;
          while(l<=FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-3)do
          begin
               MontantTotal:=MontantTotal+strtoreal(FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,l]);

          l:=l+1;
          end;
          FSPrelevement.TableauDetailArticlePrelevementArchive.Cells[8,FSPrelevement.TableauDetailArticlePrelevementArchive.RowCount-1]:=Vergule(floattostr(MontantTotal),'2','C','');
     end;

     AjusterColWidth(FSPrelevement.TableauDetailArticlePrelevementArchive,'','');
end;

procedure TFSPrelevement.FormShow(Sender: TObject);
begin
     ActiverNomForm(1,(Sender as TComponent).Name);
     TitreFicheSaisie(FSPrelevement,'Prélèvement');
     FSPrelevement.EditNumPrelevementMax.Text:='';
     InitialisationFichePrelevement;

     FSPrelevement.AfficheSaisiePrelevementUniteFonds.Left:=FSPrelevement.AffichePrelevementUniteFonds.Left;
     FSPrelevement.AfficheSaisiePrelevementUniteFonds.Top:=FSPrelevement.AffichePrelevementUniteFonds.Top;

     FSPrelevement.TableauTiers.Left:=FSPrelevement.AffichePrelevementUniteFonds.Left;
     FSPrelevement.TableauTiers.Top:=FSPrelevement.AffichePrelevementUniteFonds.Top;

     FSPrelevement.AfficheListePieceTiers.Left:=FSPrelevement.AffichePrelevementUniteFonds.Left;
     FSPrelevement.AfficheListePieceTiers.Top:=FSPrelevement.AffichePrelevementUniteFonds.Top;

     FSPrelevement.AfficheDetailUniteFonds.Left:=FSPrelevement.AffichePrelevementUniteFonds.Left;
     FSPrelevement.AfficheDetailUniteFonds.Top:=FSPrelevement.AffichePrelevementUniteFonds.Top;

     FSPrelevement.AfficheOperationsPrelevement.Height:=81;
     FSPrelevement.Diagramme.Left:=0;
     FSPrelevement.Diagramme.Top:=0;

     FSPrelevement.AfficheDetailCompteurs.Left:=0;
     FSPrelevement.AfficheDetailCompteurs.Top:=0;

     FSPrelevement.AfficheTravauxPrelevementAchever.Left:=5;
     FSPrelevement.AfficheTravauxPrelevementAchever.Top:=25;
end;

procedure TFSPrelevement.EditRechercheNomPrenomTiersKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     //if(FSPrelevement.EditRechercheNomPrenomTiers.Text='')then FSPrelevement.RBChargerPointeur.Checked:=true else FSPrelevement.RBChargerPointeur.Checked:=false;

     FSTiers.EditNbrKeyUp.Text:=inttostr(Longueur(FSPrelevement.EditRechercheNomPrenomTiers.Text));
     
     FSPrelevement.TimerAfficheTiers.Enabled:=false;
     FSPrelevement.TimerLancerAfficheTiers.Enabled:=false;
     FSPrelevement.TimerLancerAfficheTiers.Enabled:=true;
end;

procedure TFSPrelevement.EditRechercheNomPrenomTiersKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(FSPrelevement.TableauTiers.Visible=true)then
          begin
               FSPrelevement.TableauTiers.SetFocus;
          end
          else
          begin
               FSPrelevement.TableauTiers.Visible:=true;
               FSPrelevement.TimerAfficheTiers.Enabled:=false;
               FSPrelevement.TimerLancerAfficheTiers.Enabled:=false;
               FSPrelevement.TimerLancerAfficheTiers.Enabled:=true;
          end;
     end;

     if key in[VK_ESCAPE]then
     begin
          FSPrelevement.AfficheRechercheTiersPrelevement.Visible:=false;

          if(FSPrelevement.TableauTiers.Visible=true)
          then FSPrelevement.TableauTiers.SetFocus
          else FSPrelevement.TableauPrelevementUniteFonds.SetFocus;
     end;
end;

procedure TFSPrelevement.AfficheRechercheTiersPrelevementExit(
  Sender: TObject);
begin
     FSPrelevement.AfficheRechercheTiersPrelevement.Visible:=false;
end;

procedure TFSPrelevement.TableauTiersDblClick(Sender: TObject);
var   NatureData:string;
begin
     if(FSPrelevement.TableauTiers.Col in[1])
     then NatureData:='Num'
     else NatureData:='';
     
     TrierTableauARowSpecial(FSPrelevement.TableauTiers,1,FSPrelevement.TableauTiers.RowCount-1,1,inttostr(FSPrelevement.TableauTiers.Col),NatureData,'+');
end;

Procedure InitialisationFichePrelevement;
begin
     FSPrelevement.AfficheOperationDetailUF.Visible:=false;
     FSPrelevement.AfficheDetailUniteFonds.Visible:=false;
     FSPrelevement.AfficheSaisiePrelevement.Visible:=false;
     FSPrelevement.TableauChercheEquipe.Visible:=false;
     FSPrelevement.TableauChercheEffectif.Visible:=false;
     FSPrelevement.AfficheListePieceTiers.Visible:=false;
     FSPrelevement.TableauTiers.Visible:=false;
     FSPrelevement.AfficheSaisiePrelevementUniteFonds.Visible:=false;
     FSPrelevement.AfficheRechercheTiersPrelevement.Visible:=false;
     FSPrelevement.AfficheNouveauTiers.Visible:=false;

     FSPrelevement.TableauPrelevementCompteur.SetFocus;
end;

Function IndiqueNumStructurePrelevement(NumPrelevement:integer):string;
var  OKPrelebement:boolean; NumStructurePrelevement:string;
begin
     NumStructurePrelevement:='';

     OpenFParc(RParc);
     ChArchiveRegistreAffectationEffectifEquipe:=RParc.Parcours+'\'+Exercice+'FArchiveRegistreAffectationEffectifEquipe';
     assignfile(FArchiveRegistreAffectationEffectifEquipe,ChArchiveRegistreAffectationEffectifEquipe);
     try
     if FileExists(ChArchiveRegistreAffectationEffectifEquipe)then
     Reset(FArchiveRegistreAffectationEffectifEquipe)
     else Rewrite(FArchiveRegistreAffectationEffectifEquipe);
     Seek(FArchiveRegistreAffectationEffectifEquipe,0);
     OKPrelebement:=false;
     while not eof(FArchiveRegistreAffectationEffectifEquipe)and(OKPrelebement=false)do
     begin
          read(FArchiveRegistreAffectationEffectifEquipe,RArchiveRegistreAffectationEffectifEquipe);
          if (RArchiveRegistreAffectationEffectifEquipe.RCompteurAffecter.NumAffectationCompteur<>'')
          and(RArchiveRegistreAffectationEffectifEquipe.NumPrelevement=NumPrelevement)then
          begin
               OKPrelebement:=true;
               NumStructurePrelevement:=ChercherAffectationCompteur(strtointeger(RArchiveRegistreAffectationEffectifEquipe.RCompteurAffecter.NumAffectationCompteur)).NumProjetFinance;
          end;
     end;
     finally
     closefile(FArchiveRegistreAffectationEffectifEquipe);
     end;

     IndiqueNumStructurePrelevement:=NumStructurePrelevement;
end;

procedure TFSPrelevement.AfficheSaisiePrelevementUniteFondsClick(
  Sender: TObject);
begin
FSPrelevement.AfficheModePaiementUniteFonds.Height:=137;
end;

procedure TFSPrelevement.RBDetailArticleCumuleArticleClick(
  Sender: TObject);
var R:integer; OKConfirme:boolean; FichierConcerne,PositionPrelevement:string;
begin
      if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,PositionPrelevement)=false)
      then FichierConcerne:='FDetailArticlePrelevementUniteFonds'
      else FichierConcerne:='FArchiveDetailArticlePrelevementUniteFonds';

      ListeDetailArticlePrelevementUniteFonds(FSPrelevement.TableauListeDetailArticleUnitesFonds,FSPrelevement.EditNumPrelevementCompteur.Text,'',FSPrelevement.EditMatricule.Text,'','','',false,true,true,true,FSPrelevement.RBDetailArticleCumuleArticle.Checked,0,FSPrelevement.EditNumStructure.Text,R);
      FSPrelevement.TableauListeDetailArticleUnitesFonds.SetFocus;

      FSPrelevement.AfficheOperationTableauListeDetailArticleUnitesFonds.Visible:=false;
end;

procedure TFSPrelevement.BitBtn24Click(Sender: TObject);
begin
     if(FSPrelevement.EditNumFiche.Text<>'')then
     begin
          AjouterMoyenTransport(FSPrelevement.EditPositionMoyenTransport.Text,
                                FSPrelevement.EditTypeFiche.Text,
                                FSPrelevement.EditNumMovementPrelevement.Text,
                                FSPrelevement.EditNumFiche.Text,
                                FSPrelevement.EditMatricule.Text,
                                FSPrelevement.EditMoyenTransport.Text,
                                FSPrelevement.EditMatriculeTransport.Text,
                                FSPrelevement.EditNomChauffeur.Text,
                                FSPrelevement.EditPrenomChauffeur.Text,
                                FSPrelevement.EditPieceIdentite.Text,
                                FSPrelevement.EditCodeTiersValider.Text);
     end;
end;

procedure TFSPrelevement.EditMoyenTransportKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrelevement.EditMatriculeTransport.SetFocus;
     end;
end;

procedure TFSPrelevement.EditMatriculeTransportKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrelevement.EditNomChauffeur.SetFocus;
     end;
end;

procedure TFSPrelevement.EditNomChauffeurKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrelevement.EditPrenomChauffeur.SetFocus;
     end;
end;

procedure TFSPrelevement.EditPrenomChauffeurKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrelevement.EditPieceIdentite.SetFocus;
     end;
end;

procedure TFSPrelevement.EditPieceIdentiteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrelevement.BitValiderDetailArticlePrelevement.SetFocus;
     end;
end;

Procedure ListePrelevementUnitesFonds(TableauPrelevementUnitesFonds:TStringGrid; NumPrelevement,MatriculeEffectif,ValeurPrecise,DateMouvementDebut,DateMouvementFin:string);
var  R,C:integer;   FichierConcerne,NotCol,PositionPrelevement:string;  OKPrelevementUF:boolean;
begin
     if(NumPrelevement<>'')then
     begin
          TableauPrelevementUnitesFonds.ColCount:=11;
          TableauPrelevementUnitesFonds.Cols[0].Text:='N°';
          TableauPrelevementUnitesFonds.Cols[1].Text:='Num Fiche';
          TableauPrelevementUnitesFonds.Cols[2].Text:='TypeProces';
          TableauPrelevementUnitesFonds.Cols[3].Text:='FichierConcerne';
          TableauPrelevementUnitesFonds.Cols[4].Text:='CodeTiers';
          TableauPrelevementUnitesFonds.Cols[5].Text:='Tiers';
          TableauPrelevementUnitesFonds.Cols[6].Text:='ModePaiement';
          TableauPrelevementUnitesFonds.Cols[7].Text:='NumPiece';
          TableauPrelevementUnitesFonds.Cols[8].Text:='Domiciliation';
          TableauPrelevementUnitesFonds.Cols[9].Text:='Montant';
          TableauPrelevementUnitesFonds.Cols[10].Text:='Matricule';

          TableauPrelevementUnitesFonds.RowCount:=2;
          TableauPrelevementUnitesFonds.Rows[1].Text:='';

          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,MatriculeEffectif,PositionPrelevement);
          if(RPrelevement.Archiver=false)
          then FichierConcerne:='FPrelevementUniteFonds'
          else FichierConcerne:='FArchivePrelevementUniteFonds';

          OpenFParc(RParc);
          ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+FichierConcerne;
          assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
          try
          if FileExists(ChPrelevementUniteFonds)then
          Reset(FPrelevementUniteFonds)
          else Rewrite(FPrelevementUniteFonds);
          Seek(FPrelevementUniteFonds,0);
          R:=0;
          while not eof(FPrelevementUniteFonds)do
          begin
               read(FPrelevementUniteFonds,RPrelevementUniteFonds);

               if(RPrelevementUniteFonds.ValeurPrelevement<>0)
               then OKPrelevementUF:=true
               else OKPrelevementUF:=false;

               if(OKPrelevementUF=true)then
               begin
                    if(NumPrelevement<>'')then
                    begin
                         if(RPrelevementUniteFonds.NumPrelevement=strtointeger(NumPrelevement))
                         then OKPrelevementUF:=true
                         else OKPrelevementUF:=false;
                    end;
               end;

               if(OKPrelevementUF=true)then
               begin
                    if(MatriculeEffectif<>'')then
                    begin
                         if(RPrelevementUniteFonds.Matricule=MatriculeEffectif)
                         then OKPrelevementUF:=true
                         else OKPrelevementUF:=false;
                    end;
               end;

               if(OKPrelevementUF=true)then
               begin
                    if(ValeurPrecise<>'')then
                    begin
                         if(RPrelevementUniteFonds.ValeurPrecise=strtoboolean(ValeurPrecise))
                         then OKPrelevementUF:=true
                         else OKPrelevementUF:=false;
                    end;
               end;

               if(OKPrelevementUF=true)then
               begin
                    if(DateMouvementDebut<>'')and(DateMouvementFin<>'')then
                    begin
                         if(datecorrecte(DateMouvementDebut)and datecorrecte(DateMouvementFin)and datecorrecte(RPrelevementUniteFonds.DatePrelevement))then
                         begin
                              if(strtodate(RPrelevementUniteFonds.DatePrelevement)>=strtodate(DateMouvementDebut))
                              and(strtodate(RPrelevementUniteFonds.DatePrelevement)<=strtodate(DateMouvementFin))
                              then OKPrelevementUF:=true
                              else OKPrelevementUF:=false;
                         end
                         else OKPrelevementUF:=false;
                    end;
               end;
               
               if(OKPrelevementUF=true)then              
               begin
                    R:=R+1;
                    TableauPrelevementUnitesFonds.Rows[R].Text:=inttostr(R);
                    TableauPrelevementUnitesFonds.Cells[1,R]:=inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds);
                    TableauPrelevementUnitesFonds.Cells[2,R]:=RPrelevementUniteFonds.TypeProces;
                    TableauPrelevementUnitesFonds.Cells[3,R]:=RPrelevementUniteFonds.FichierConcerne;
                    TableauPrelevementUnitesFonds.Cells[4,R]:=RPrelevementUniteFonds.CodeTiers;
                    RTiers:=ChercherTiers(RPrelevementUniteFonds.TypeProces,RPrelevementUniteFonds.FichierConcerne,RPrelevementUniteFonds.CodeTiers,'');
                    TableauPrelevementUnitesFonds.Cells[5,R]:=RTiers.NomTiers+' '+RTiers.PrenomTiers;
                    TableauPrelevementUnitesFonds.Cells[6,R]:=RPrelevementUniteFonds.ModePaiement;
                    TableauPrelevementUnitesFonds.Cells[7,R]:=RPrelevementUniteFonds.NumPiece;
                    TableauPrelevementUnitesFonds.Cells[8,R]:=RPrelevementUniteFonds.Domiciliation;
                    TableauPrelevementUnitesFonds.Cells[9,R]:=Vergule(floattostr(RPrelevementUniteFonds.ValeurPrelevement),'2','C','');
                    TableauPrelevementUnitesFonds.Cells[10,R]:=RPrelevementUniteFonds.Matricule;
               end;
          end;
          finally
          CloseFile(FPrelevementUniteFonds);
          end;

          if(R>0)then TableauPrelevementUnitesFonds.RowCount:=R+1
                 else TableauPrelevementUnitesFonds.RowCount:=2;

          NotCol:='2;3;6;7;8;10';
          for C:=0 to TableauPrelevementUnitesFonds.ColCount-1 do if(ExisteNumInTexte(InttoStr(C),NotCol))then TableauPrelevementUnitesFonds.ColWidths[C]:=0;

          AjusterColWidth(TableauPrelevementUnitesFonds,'',NotCol);
     end;
end;

Procedure TruncateFicheInitialePrelevement;
begin
     OpenFParc(RParc);

     ChPrelevementCompteur:=RParc.Parcours+'\'+Exercice+'FPrelevementCompteur';
     assignfile(FPrelevementCompteur,ChPrelevementCompteur);
     try
     if FileExists(ChPrelevementCompteur)then
     Reset(FPrelevementCompteur)
     else Rewrite(FPrelevementCompteur);
     Seek(FPrelevementCompteur,0);
     Truncate(FPrelevementCompteur);
     finally
     CloseFile(FPrelevementCompteur);
     end;

     ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+'FPrelevementUniteFonds';
     assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
     try
     if FileExists(ChPrelevementUniteFonds)then
     Reset(FPrelevementUniteFonds)
     else Rewrite(FPrelevementUniteFonds);
     Seek(FPrelevementUniteFonds,0);
     Truncate(FPrelevementUniteFonds);
     finally
     CloseFile(FPrelevementUniteFonds);
     end;

     ChPrelevementEffectifEquipe:=RParc.Parcours+'\'+Exercice+'FPrelevementEffectifEquipe';
     assignfile(FPrelevementEffectifEquipe,ChPrelevementEffectifEquipe);
     try
     if FileExists(ChPrelevementEffectifEquipe)then
     Reset(FPrelevementEffectifEquipe)
     else Rewrite(FPrelevementEffectifEquipe);
     Seek(FPrelevementEffectifEquipe,0);
     Truncate(FPrelevementEffectifEquipe);
     finally
     CloseFile(FPrelevementEffectifEquipe);
     end;

     ChRegistreAffectationEffectifEquipe:=RParc.Parcours+'\'+Exercice+'FRegistreAffectationEffectifEquipe';
     assignfile(FRegistreAffectationEffectifEquipe,ChRegistreAffectationEffectifEquipe);
     try
     if FileExists(ChRegistreAffectationEffectifEquipe)then
     Reset(FRegistreAffectationEffectifEquipe)
     else Rewrite(FRegistreAffectationEffectifEquipe);
     Seek(FRegistreAffectationEffectifEquipe,0);
     Truncate(FRegistreAffectationEffectifEquipe);
     finally
     CloseFile(FRegistreAffectationEffectifEquipe);
     end;

     ChDetailArticlePrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+'FDetailArticlePrelevementUniteFonds';
     assignfile(FDetailArticlePrelevementUniteFonds,ChDetailArticlePrelevementUniteFonds);
     try
     if FileExists(ChDetailArticlePrelevementUniteFonds)then
     Reset(FDetailArticlePrelevementUniteFonds)
     else Rewrite(FDetailArticlePrelevementUniteFonds);
     Seek(FDetailArticlePrelevementUniteFonds,0);
     Truncate(FDetailArticlePrelevementUniteFonds);
     finally
     CloseFile(FDetailArticlePrelevementUniteFonds);
     end;

     ChMoyenTransport:=RParc.Parcours+'\'+Exercice+'FMoyenTransportPrélèvement';
     assignfile(FMoyenTransport,ChMoyenTransport);
     try
     if FileExists(ChMoyenTransport)then
     Reset(FMoyenTransport)
     else Rewrite(FMoyenTransport);
     Seek(FMoyenTransport,0);
     Truncate(FMoyenTransport);
     finally
     CloseFile(FMoyenTransport);
     end;

     ChRegistreEtatStockPrelevement:=RParc.Parcours+'\'+Exercice+'FRegistreEtatStockPrelevement';
     assignfile(FRegistreEtatStockPrelevement,ChRegistreEtatStockPrelevement);
     try
     if FileExists(ChRegistreEtatStockPrelevement)then
     Reset(FRegistreEtatStockPrelevement)
     else Rewrite(FRegistreEtatStockPrelevement);
     Seek(FRegistreEtatStockPrelevement,0);
     Truncate(FRegistreEtatStockPrelevement);
     finally
     CloseFile(FRegistreEtatStockPrelevement);
     end;
end;

Procedure MiseAJourDetailArticleDiversTiers(NumPrelevement,NumPrelevementUF,NumEquipe,Matricule,DatePrelevement,HeurePrelevement,TypeProces,FichierConcerneTiers,CodeTiers,CodeArticle:string; QuantiteJustifier,PrixUnitaire,CoutUnitaire:real);
var  i,iSelect:integer; FichierConcerne,PositionPrelevement:string;  OKArticle,OKPrelevementUF:boolean;
begin
     RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);

     if(NumPrelevement<>'')and(NumPrelevementUF<>'')and(NumEquipe<>'')and(Matricule<>'')and(CodeArticle<>'')and(QuantiteJustifier<>0)then
     begin
           if(RPrelevement.Archiver=false)
           then FichierConcerne:='FDetailArticlePrelevementUniteFonds'
           else FichierConcerne:='FArchiveDetailArticlePrelevementUniteFonds';

           OpenFParc(RParc);
           ChDetailArticlePrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+FichierConcerne;
           assignfile(FDetailArticlePrelevementUniteFonds,ChDetailArticlePrelevementUniteFonds);
           try
           if FileExists(ChDetailArticlePrelevementUniteFonds)then
           Reset(FDetailArticlePrelevementUniteFonds)
           else Rewrite(FDetailArticlePrelevementUniteFonds);
           Seek(FDetailArticlePrelevementUniteFonds,0);
           i:=0;
           OKArticle:=false;
           while not eof(FDetailArticlePrelevementUniteFonds)and(OKArticle=false)do
           begin
                read(FDetailArticlePrelevementUniteFonds,RDetailArticlePrelevementUniteFonds);

                if(inttostr(RDetailArticlePrelevementUniteFonds.NumPrelevement)=NumPrelevement)
                and(inttostr(RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds)=NumPrelevementUF)
                and(RDetailArticlePrelevementUniteFonds.Matricule=Matricule)
                and(RDetailArticlePrelevementUniteFonds.TypeProces=TypeProces)
                and(RDetailArticlePrelevementUniteFonds.FichierConcerne=FichierConcerneTiers)
                and(RDetailArticlePrelevementUniteFonds.CodeTiers=CodeTiers)
                and(RDetailArticlePrelevementUniteFonds.CodeArticle=CodeArticle)
                then
                begin
                     OKArticle:=true;
                     iSelect:=i;
                end;
           i:=i+1;
           end;

           if(OKArticle=true)then i:=iSelect;
           RDetailArticlePrelevementUniteFonds.PositionDetailArticlePrelevementUniteFonds:=i;
           RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds:=strtointeger(NumPrelevementUF);
           RDetailArticlePrelevementUniteFonds.NumPrelevement:=strtointeger(NumPrelevement);
           RDetailArticlePrelevementUniteFonds.NumEquipe:=strtointeger(NumEquipe);
           RDetailArticlePrelevementUniteFonds.Matricule:=Matricule;
           RDetailArticlePrelevementUniteFonds.DatePrelevement:=DatePrelevement;
           RDetailArticlePrelevementUniteFonds.HeurePrelevement:=HeurePrelevement;
           RDetailArticlePrelevementUniteFonds.TypeProces:=TypeProces;
           RDetailArticlePrelevementUniteFonds.FichierConcerne:=FichierConcerneTiers;
           RDetailArticlePrelevementUniteFonds.CodeTiers:=CodeTiers;
           RDetailArticlePrelevementUniteFonds.CodeArticle:=CodeArticle;
           RDetailArticlePrelevementUniteFonds.QuantiteJustifier:=QuantiteJustifier;
           RDetailArticlePrelevementUniteFonds.PrixUnitaire:=PrixUnitaire;
           RDetailArticlePrelevementUniteFonds.CoutUnitaire:=CoutUnitaire;

           Seek(FDetailArticlePrelevementUniteFonds,i);
           write(FDetailArticlePrelevementUniteFonds,RDetailArticlePrelevementUniteFonds);

           finally
           CloseFile(FDetailArticlePrelevementUniteFonds);
           end;
     end
     else
     begin
          AfficherMessage('Attention ! Mise à jour Article Unités de fonds Divers Client non exécuté ! '+' NumPrelevement: '+NumPrelevement+', NumPrelevementUF: '+NumPrelevementUF+', NumEquipe: '+NumEquipe+', Matricule: '+Matricule+', CodeArticle: '+CodeArticle+', QuantiteJustifier: '+floattostr(QuantiteJustifier));
     end;
end;

Procedure MiseAJourPrelevementUFDiversTiers(NumPrelevement,NumEquipe,Matricule,DatePrelevement,HeurePrelevement,TypeProces,FichierConcerneTiers,CodeTiers,CodeArticle:string; ValeurPrelevement:real; var NumPrelevementUF:integer);
var  i,iSelect:integer; FichierConcerne,PositionPrelevement:string;  OKPrelevementUF:boolean;
begin
     if(NumPrelevement<>'')and(NumEquipe<>'')and(Matricule<>'')then 
     begin
           RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);

           if(RPrelevement.Archiver=false)then
           begin
                FichierConcerne:='FPrelevementUniteFonds';
           end
           else
           begin
                FichierConcerne:='FArchivePrelevementUniteFonds';
           end;

           OpenFParc(RParc);
           ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+FichierConcerne;
           assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
           if FileExists(ChPrelevementUniteFonds)then
           begin
                 try
                 Reset(FPrelevementUniteFonds);
                 Seek(FPrelevementUniteFonds,0);
                 i:=0;
                 iSelect:=0;
                 OKPrelevementUF:=false;
                 while not eof(FPrelevementUniteFonds)and(OKPrelevementUF=false)do
                 begin
                      read(FPrelevementUniteFonds,RPrelevementUniteFonds);
                      if(NumPrelevementUF<=RPrelevementUniteFonds.NumPrelevementUniteFonds)then NumPrelevementUF:=RPrelevementUniteFonds.NumPrelevementUniteFonds+1;

                      if(inttostr(RPrelevementUniteFonds.NumPrelevement)=NumPrelevement)
                      and(RPrelevementUniteFonds.Matricule=Matricule)
                      and(RPrelevementUniteFonds.TypeProces=TypeProces)
                      and(RPrelevementUniteFonds.FichierConcerne=FichierConcerneTiers)
                      and(RPrelevementUniteFonds.CodeTiers=CodeTiers)
                      and(RPrelevementUniteFonds.ValeurPrecise=false)
                      then
                      begin
                           OKPrelevementUF:=true;
                           iSelect:=i;
                           NumPrelevementUF:=RPrelevementUniteFonds.NumPrelevementUniteFonds;
                      end;
                 i:=i+1;
                 end;

                 if(OKPrelevementUF=true)then i:=iSelect;
                 RPrelevementUniteFonds.NumPrelevementUniteFonds:=NumPrelevementUF;
                 RPrelevementUniteFonds.NumPrelevement:=strtointeger(NumPrelevement);
                 RPrelevementUniteFonds.CodeUtilisateur:=FSMenuPrincipal.EditCodeUtilisateur.Text;
                 RPrelevementUniteFonds.NumEquipe:=strtointeger(NumEquipe);
                 RPrelevementUniteFonds.Matricule:=Matricule;
                 RPrelevementUniteFonds.NumUniteFonds:=0;
                 RPrelevementUniteFonds.DatePrelevement:=DatePrelevement;
                 RPrelevementUniteFonds.HeurePrelevement:=HeurePrelevement;
                 RPrelevementUniteFonds.ValeurPrecise:=false;
                 RPrelevementUniteFonds.TypeProces:=TypeProces;
                 RPrelevementUniteFonds.FichierConcerne:=FichierConcerneTiers;
                 RPrelevementUniteFonds.CodeTiers:=CodeTiers;
                 RPrelevementUniteFonds.ModePaiement:='Espèce';
                 RPrelevementUniteFonds.NumPiece:='';
                 RPrelevementUniteFonds.Domiciliation:='';
                 RPrelevementUniteFonds.ValeurPrelevement:=ValeurPrelevement;

                 Seek(FPrelevementUniteFonds,i);
                 write(FPrelevementUniteFonds,RPrelevementUniteFonds);

                 finally
                 CloseFile(FPrelevementUniteFonds);
                 end;
           end;
     end
     else
     begin

          AfficherMessage('Attention ! Mise à jour Unités de fonds Divers Client non exécuté !'+' NumPrelevement: '+NumPrelevement+', NumEquipe: '+NumEquipe+', Matricule: '+Matricule);
     end;
end;

procedure TFSPrelevement.BitBtn21Click(Sender: TObject);
var   NumPrelevement,NumPrelevementFin,NumStructure:string;
begin
     ExecuterMiseAJourDetailArticleDiversTiers;

     NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
     NumPrelevementFin:='';
     AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
     FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,NumStructure);

     FSPrelevement.EditNumStructure.Text:=NumStructure;
     FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
     ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);
end;
          
Procedure ExecuterMiseAJourDetailArticleDiversTiers;
var  R,NumPrelevementUF,SigneEcart:integer;  NomTiers:string;  EcartValeurPrelevement,ValeurPrelevementDivers,ValeurPrelevementUFTiers,ValeurPrelevementGlobale,QuantiteJustifier,PrixUnitaire,CoutUnitaire:real;  OKControleValeurDivers:boolean;
     NumPrelevement,NumEquipe,Matricule,DatePrelevement,HeurePrelevement,TypeProces,FichierConcerne,CodeTiers,CodeArticle:string;
begin
     NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
     NumEquipe:=FSPrelevement.EditNumEquipePrelevement.Text;
     Matricule:=FSPrelevement.EditMatricule.Text;
     DatePrelevement:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
     HeurePrelevement:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
     TypeProces:=FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row];
     FichierConcerne:=FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row];
     //CodeTiers:=FSPrelevement.EditCodeTiers.Text;


     if(NumPrelevement<>'')and(Matricule<>'')and(TypeProces<>'')and(FichierConcerne<>'')then
     begin
           TiersDivers(TypeProces,FichierConcerne,CodeTiers,NomTiers);
           ValeurPrelevementGlobale:=strtoreal(FSPrelevement.TableauDetailArticle.Cells[8,FSPrelevement.TableauDetailArticle.RowCount-1]);
           ValeurPrelevementUFTiers:=strtoreal(FSPrelevement.EditValeurPrelevementAttribueTiers.Text);
           ValeurPrelevementDivers:=strtoreal(FSPrelevement.TableauDetailArticle.Cells[15,FSPrelevement.TableauDetailArticle.RowCount-1]);
           EcartValeurPrelevement:=ValeurPrelevementGlobale-(ValeurPrelevementDivers+ValeurPrelevementUFTiers);
           if(EcartValeurPrelevement<0)then SigneEcart:=-1 else SigneEcart:=1;

           if((EcartValeurPrelevement*SigneEcart)<strtoreal(FSPrelevement.EditEcartAutorise.Text))
           then OKControleValeurDivers:=true
           else OKControleValeurDivers:=false;

           MiseAJourPrelevementUFDiversTiers(NumPrelevement,NumEquipe,Matricule,DatePrelevement,HeurePrelevement,TypeProces,FichierConcerne,CodeTiers,CodeArticle,ValeurPrelevementDivers,NumPrelevementUF);

           R:=1;
           while(R<=FSPrelevement.TableauDetailArticle.RowCount-3)do
           begin
                CodeArticle:=FSPrelevement.TableauDetailArticle.Cells[1,R];
                QuantiteJustifier:=strtoreal(FSPrelevement.TableauDetailArticle.Cells[14,R]);
                PrixUnitaire:=strtoreal(FSPrelevement.TableauDetailArticle.Cells[3,R]);
                CoutUnitaire:=strtoreal(FSPrelevement.TableauDetailArticle.Cells[10,R]);
                if(CodeArticle<>'')and(QuantiteJustifier<>0)then
                begin
                     MiseAJourDetailArticleDiversTiers(NumPrelevement,inttostr(NumPrelevementUF),NumEquipe,Matricule,DatePrelevement,HeurePrelevement,TypeProces,FichierConcerne,CodeTiers,CodeArticle,QuantiteJustifier,PrixUnitaire,CoutUnitaire);
                end;
           R:=R+1;
           end;

           if(OKControleValeurDivers=false)then
           begin
                if(nonoui('Attention ! La valeur calculée, attribuée aux divers clients, est erronée ! '+Vergule(floattostr(ValeurPrelevementDivers),'2','C','')+', Ecart: ('+Vergule(floattostr(EcartValeurPrelevement),'2','C','')+' et '+Vergule(FSPrelevement.EditEcartAutorise.Text,'2','C','')+'), voulez vous corriger !'))then
                begin
                     MiseAJourPrelevementUFDiversTiers(NumPrelevement,NumEquipe,Matricule,DatePrelevement,HeurePrelevement,TypeProces,FichierConcerne,CodeTiers,CodeArticle,(ValeurPrelevementDivers+(EcartValeurPrelevement*SigneEcart)),NumPrelevementUF);
                end;
           end;
     end;
end;

Procedure MiseAJourPrelevement(NumPrelevement,Matricule:string; MontantPrelevement,MontantFondRoulement,MontantUnitesFonds,SoldePrelevement:real; OKControleArchive:boolean);
var    iIPM,IndexPrelevement:integer;
       PositionPrelevement,PositionPrelevementData,TypeProcesPrelevement,FichierConcernePrelevement,AdressePrelevement:string;
       OKMiseAJourArchive,OKPrelevement,OKIndexPrelevementMatricule:boolean;
       MontantPrelevementCalcule,MontantUnitesFondsCalcule,MontantFondRoulementCalcule,SoldePrelevementCalcule:real;
       RegistrePositionPrelevementCompteur,RegistrePositionPrelevementUniteFonds,RegistrePositionPrelevementEffectifEquipe,RegistrePositionRegistreAffectationEffectifEquipe,RegistrePositionDetailArticlePrelevementUniteFonds,RegistrePositionMoyenTransportPrelevement,RegistrePositionEtatStockPrelevement,RegistrePositionAutre2,RegistrePositionAutre3:RRegistrePositionArchives;
begin
     //RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);

     TPrelevementCopie:=RemplireTPrelevement(ExerciceAnnee,FSMenuPrincipal.RBRemplireTPrelevementNewExercice,ArrayIndexPrelevementMatricule);

     IndexPrelevement:=strtoint(NumPrelevement+inttostr(strtointeger(Matricule)));

     iIPM:=0;
     OKIndexPrelevementMatricule:=false;
     while(iIPM<=High(ArrayIndexPrelevementMatricule))and(OKIndexPrelevementMatricule=false)do
     begin
          if(ArrayIndexPrelevementMatricule[iIPM]=IndexPrelevement)then
          begin
               OKIndexPrelevementMatricule:=true;
               IndexPrelevement:=iIPM;
          end;
          iIPM:=iIPM+1;
     end;

     if(TPrelevementCopie[IndexPrelevement].NumPrelevement=strtointeger(NumPrelevement))and(PositionPrelevement<>'')then
     begin
           PositionPrelevementData:=PositionPrelevement;

           if(TPrelevementCopie[IndexPrelevement].Archiver=true)and(OKControleArchive=true)then
           begin
                DataArchivePrelevement(strtointeger(NumPrelevement),ExerciceAnnee,'',Matricule,false,false,TPrelevementCopie,ArrayIndexPrelevementMatricule,MontantPrelevementCalcule,MontantUnitesFondsCalcule,MontantFondRoulementCalcule,SoldePrelevementCalcule,RegistrePositionPrelevementCompteur,RegistrePositionPrelevementUniteFonds,RegistrePositionPrelevementEffectifEquipe,RegistrePositionRegistreAffectationEffectifEquipe,RegistrePositionDetailArticlePrelevementUniteFonds,RegistrePositionMoyenTransportPrelevement,RegistrePositionEtatStockPrelevement,RegistrePositionAutre2,RegistrePositionAutre3,PositionPrelevementData,OKPrelevementArchiveAvecSucce);

                if (OKPrelevementArchiveAvecSucce=true)
                and((TPrelevementCopie[IndexPrelevement].MontantPrelevement<>MontantPrelevementCalcule)
                or  (TPrelevementCopie[IndexPrelevement].MontantFondRoulement<>MontantFondRoulementCalcule)
                or  (TPrelevementCopie[IndexPrelevement].MontantUnitesFonds<>MontantUnitesFondsCalcule)
                or  (TPrelevementCopie[IndexPrelevement].SoldePrelevement<>SoldePrelevementCalcule)

                or(TPrelevementCopie[IndexPrelevement].RegistrePositionPrelevementCompteur.PositionArchiveBegin<>RegistrePositionPrelevementCompteur.PositionArchiveBegin)
                or(TPrelevementCopie[IndexPrelevement].RegistrePositionPrelevementCompteur.PositionArchiveEnd<>RegistrePositionPrelevementCompteur.PositionArchiveEnd)

                or(TPrelevementCopie[IndexPrelevement].RegistrePositionPrelevementUniteFonds.PositionArchiveBegin<>RegistrePositionPrelevementUniteFonds.PositionArchiveBegin)
                or(TPrelevementCopie[IndexPrelevement].RegistrePositionPrelevementUniteFonds.PositionArchiveEnd<>RegistrePositionPrelevementUniteFonds.PositionArchiveEnd)

                or(TPrelevementCopie[IndexPrelevement].RegistrePositionPrelevementEffectifEquipe.PositionArchiveBegin<>RegistrePositionPrelevementEffectifEquipe.PositionArchiveBegin)
                or(TPrelevementCopie[IndexPrelevement].RegistrePositionPrelevementEffectifEquipe.PositionArchiveEnd<>RegistrePositionPrelevementEffectifEquipe.PositionArchiveEnd)

                or(TPrelevementCopie[IndexPrelevement].RegistrePositionRegistreAffectationEffectifEquipe.PositionArchiveBegin<>RegistrePositionRegistreAffectationEffectifEquipe.PositionArchiveBegin)
                or(TPrelevementCopie[IndexPrelevement].RegistrePositionRegistreAffectationEffectifEquipe.PositionArchiveEnd<>RegistrePositionRegistreAffectationEffectifEquipe.PositionArchiveEnd)

                or(TPrelevementCopie[IndexPrelevement].RegistrePositionDetailArticlePrelevementUniteFonds.PositionArchiveBegin<>RegistrePositionDetailArticlePrelevementUniteFonds.PositionArchiveBegin)
                or(TPrelevementCopie[IndexPrelevement].RegistrePositionDetailArticlePrelevementUniteFonds.PositionArchiveEnd<>RegistrePositionDetailArticlePrelevementUniteFonds.PositionArchiveEnd)

                or(TPrelevementCopie[IndexPrelevement].RegistrePositionMoyenTransportPrelevement.PositionArchiveBegin<>RegistrePositionMoyenTransportPrelevement.PositionArchiveBegin)
                or(TPrelevementCopie[IndexPrelevement].RegistrePositionMoyenTransportPrelevement.PositionArchiveEnd<>RegistrePositionMoyenTransportPrelevement.PositionArchiveEnd)

                or(TPrelevementCopie[IndexPrelevement].RegistrePositionEtatStockPrelevement.PositionArchiveBegin<>RegistrePositionEtatStockPrelevement.PositionArchiveBegin)
                or(TPrelevementCopie[IndexPrelevement].RegistrePositionEtatStockPrelevement.PositionArchiveEnd<>RegistrePositionEtatStockPrelevement.PositionArchiveEnd)

                or(TPrelevementCopie[IndexPrelevement].RegistrePositionAutre2.PositionArchiveBegin<>RegistrePositionAutre2.PositionArchiveBegin)
                or(TPrelevementCopie[IndexPrelevement].RegistrePositionAutre2.PositionArchiveEnd<>RegistrePositionAutre2.PositionArchiveEnd)

                or(TPrelevementCopie[IndexPrelevement].RegistrePositionAutre3.PositionArchiveBegin<>RegistrePositionAutre3.PositionArchiveBegin)
                or(TPrelevementCopie[IndexPrelevement].RegistrePositionAutre3.PositionArchiveEnd<>RegistrePositionAutre3.PositionArchiveEnd))

                then OKMiseAJourArchive:=true
                else OKMiseAJourArchive:=false;
           end
           else OKMiseAJourArchive:=false;
        
           if(PositionPrelevement=PositionPrelevementData)then
           begin
                 if(OKMiseAJourArchive=true)
                 or(((MontantPrelevement<>0)and(TPrelevementCopie[IndexPrelevement].MontantPrelevement<>MontantPrelevement))
                 or ((MontantFondRoulement<>0)and(TPrelevementCopie[IndexPrelevement].MontantFondRoulement<>MontantFondRoulement))
                 or ((MontantUnitesFonds<>0)and(TPrelevementCopie[IndexPrelevement].MontantUnitesFonds<>MontantUnitesFonds))
                 or ((SoldePrelevement<>0)and(TPrelevementCopie[IndexPrelevement].SoldePrelevement<>SoldePrelevement)))
                 then
                 begin
                      TypeProcesPrelevement:='Business';
                      FichierConcernePrelevement:='FPrelevement';
                      AdressePrelevement:='';
                      if not(FunctionAdresseProces(TypeProcesPrelevement,FichierConcernePrelevement,'',AdressePrelevement,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                      begin
                           AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcernePrelevement+' recherché !');
                      end;

                      ChPrelevement:=AdressePrelevement;
                      assignfile(FPrelevement,ChPrelevement);
                      if FileExists(ChPrelevement)then
                      begin
                           try
                           Reset(FPrelevement);
                           Seek(FPrelevement,strtointeger(PositionPrelevement));
                           if not eof(FPrelevement)then
                           begin
                                read(FPrelevement,RPrelevement);  Application.ProcessMessages;

                                if(NumPrelevement<>'')then
                                begin
                                     if(RPrelevement.NumPrelevement=strtointeger(NumPrelevement))
                                     then OKPrelevement:=true
                                     else OKPrelevement:=false;
                                end
                                else OKPrelevement:=false;

                                if(OKPrelevement=true)then
                                begin
                                     if(Matricule<>'')then
                                     begin
                                          if(RPrelevement.Matricule=Matricule)
                                          then OKPrelevement:=true
                                          else OKPrelevement:=false;
                                     end;
                                end;

                                if(OKPrelevement=true)then
                                begin
                                     if(OKMiseAJourArchive=true)then
                                     begin
                                           RPrelevement.MontantPrelevement:=MontantPrelevementCalcule;
                                           RPrelevement.MontantFondRoulement:=MontantFondRoulementCalcule;
                                           RPrelevement.MontantUnitesFonds:=MontantUnitesFondsCalcule;
                                           RPrelevement.SoldePrelevement:=SoldePrelevementCalcule;

                                           RPrelevement.RegistrePositionPrelevementCompteur:=RegistrePositionPrelevementCompteur;
                                           RPrelevement.RegistrePositionPrelevementUniteFonds:=RegistrePositionPrelevementUniteFonds;
                                           RPrelevement.RegistrePositionPrelevementEffectifEquipe:=RegistrePositionPrelevementEffectifEquipe;
                                           RPrelevement.RegistrePositionRegistreAffectationEffectifEquipe:=RegistrePositionRegistreAffectationEffectifEquipe;
                                           RPrelevement.RegistrePositionDetailArticlePrelevementUniteFonds:=RegistrePositionDetailArticlePrelevementUniteFonds;
                                           RPrelevement.RegistrePositionMoyenTransportPrelevement:=RegistrePositionMoyenTransportPrelevement;
                                           RPrelevement.RegistrePositionEtatStockPrelevement:=RegistrePositionEtatStockPrelevement;
                                           RPrelevement.RegistrePositionAutre2:=RegistrePositionAutre2;
                                           RPrelevement.RegistrePositionAutre3:=RegistrePositionAutre3;
                                     end
                                     else
                                     begin
                                           OKMiseAJourArchive:=true;
                                           RPrelevement.MontantPrelevement:=MontantPrelevement;
                                           RPrelevement.MontantFondRoulement:=MontantFondRoulement;
                                           RPrelevement.MontantUnitesFonds:=MontantUnitesFonds;
                                           RPrelevement.SoldePrelevement:=SoldePrelevement;
                                     end;

                                     Seek(FPrelevement,strtointeger(PositionPrelevement));
                                     write(FPrelevement,RPrelevement);
                                end;
                           end;
                           finally
                           CloseFile(FPrelevement);
                           end;
                      end;
                 end
                 else OKMiseAJourArchive:=false;
           end;

           if(OKMiseAJourArchive=true)and(FSListePrelevement.Showing=true)
           then SelectRowListePrelevement(FSListePrelevement.TableauListePrelevement,NumPrelevement,Matricule,true);
     end;
end;

procedure TFSPrelevement.BitValiderDetailArticlePrelevementClick(
  Sender: TObject);
var  NumPrelevementUF,ARow:integer;
     OKValidation,ActiverAffichage:boolean;
     EcartValidation:real;
     NumPrelevement,NumPrelevementFin,Matricule,DateDebut,HeureDebut,DateFin,HeureFin:string;
begin
     NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
     NumPrelevementFin:='';
     Matricule:=FSPrelevement.EditMatricule.Text;
     DateDebut:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
     HeureDebut:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
     DateFin:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
     HeureFin:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];

     OKValidation:=false;

     if(strtoboolean(FSPrelevement.TableauPrelevementUniteFonds.Cells[10,FSPrelevement.TableauPrelevementUniteFonds.Row])=false)then
     begin
          if(FSPrelevement.RBAutoriserValidationSansJustifierArticles.Checked=true)then
          begin
               OKValidation:=true;
          end
          else
          begin
               EcartValidation:=strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1])-strtoreal(FSPrelevement.EditValeurPrelevementUniteFonds.Text);
               if(EcartValidation<0)then EcartValidation:=EcartValidation*(-1);
               if(EcartValidation<strtoreal(FSPrelevement.EditEcartAutorise.Text))then
               begin
                    OKValidation:=true;
               end
               else
               begin
                    OKValidation:=false;
                    FSPrelevement.TableauDetailArticlePrelevement.Col:=7;
                    FSPrelevement.TableauDetailArticlePrelevement.SetFocus;
               end;
          end;
     end
     else OKValidation:=true;

     if(OKValidation=true)then
     begin
         if(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1])>0)
         then FSPrelevement.EditValeurPrelevementUniteFonds.Text:=FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1];

         ActiverAffichage:=false;
         ProcEditValeurPrelevementUniteFondsKeyDown(ActiverAffichage,NumPrelevementUF,ARow);
         ValiderDetailArticlesMoyentransport(ActiverAffichage,NumPrelevementUF);

         if(ActiverAffichage=false)then
         begin
              ProcPrelevementUniteFonds(FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,FSPrelevement.TableauPrelevementUniteFonds.Cells[6,FSPrelevement.TableauPrelevementUniteFonds.Row]);
              if(FSPrelevement.RBControlerPrelevementAChaqueOperation.Checked=true)then AfficheDetailTypeUniteFonds(FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds);
              if(FSPrelevement.RBControlerPrelevementAChaqueOperation.Checked=true)then AfficheDetailTiers(FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditFondRoulement,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,FSPrelevement.RBCumuleTiers.Checked);
              if(FSPrelevement.RBControlerPrelevementAChaqueOperation.Checked=true)then AfficheDetailArticle(FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.EditMontantArticle,NumPrelevement,NumPrelevementFin);

              FSPrelevement.TableauPrelevementUniteFonds.Row:=ARow;
              FSPrelevement.AfficheSaisiePrelevementUniteFonds.Visible:=false;

              FSPrelevement.EditSoldePrelevement.Text:=Vergule(floattostr(ValePrecis(strtoreal(FSPrelevement.EditMontantUniteFonds.Text)-strtoreal(FSPrelevement.EditMontantCompteur.Text)-strtoreal(FSPrelevement.EditFondRoulement.Text),2)),'2','C','');
              if(FSPrelevement.RBControlerPrelevementAChaqueOperation.Checked=true)then MiseAJourPrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,strtoreal(FSPrelevement.EditMontantCompteur.Text),strtoreal(FSPrelevement.EditFondRoulement.Text),strtoreal(FSPrelevement.EditMontantUniteFonds.Text),strtoreal(FSPrelevement.EditSoldePrelevement.Text),true);

              if(FSPrelevement.RBControlerSoldeAChaqueOperation.Checked=true)then PrelevementEffectifEquipe(FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text);

              AfficherSoldeControle;

              AfficherDetailMoyenTransport('',FSPrelevement.EditTypeFiche.Text,FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditNumPrelevementUniteFonds.Text,FSPrelevement.EditMatricule.Text,FSPrelevement.EditCodeTiers.Text,
                                        FSPrelevement.EditPositionMoyenTransport,
                                        FSPrelevement.EditTypeFiche,
                                        FSPrelevement.EditNumMovementPrelevement,
                                        FSPrelevement.EditNumFiche,
                                        FSPrelevement.EditMatriculeEffectifValider,
                                        FSPrelevement.EditMoyenTransport,
                                        FSPrelevement.EditMatriculeTransport,
                                        FSPrelevement.EditNomChauffeur,
                                        FSPrelevement.EditPrenomChauffeur,
                                        FSPrelevement.EditPieceIdentite,
                                        FSPrelevement.EditCodeTiersValider);

              AfficheDetailArticle(FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.EditMontantArticle,FSPrelevement.EditNumPrelevementCompteur.Text,'');
         end;

         FSPrelevement.TableauPrelevementUniteFonds.SetFocus;
     end;
end;

procedure TFSPrelevement.AfficheOperationMoyenTransportEnter(
  Sender: TObject);
begin
     if(AnsiUpperCase(FSPrelevement.EditCodeTiers.Text)=AnsiUpperCase('Divers'))then
     begin
          FSPrelevement.EditValeurPrelevementUniteFonds.SetFocus;
          showmessage('Opération divers non autorisée !');
          Exit;
     end;
end;

procedure TFSPrelevement.EditValeurPrelevementUniteFondsKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var  NumPrelevementUF,ARow:integer;
     OKValidation,ActiverAffichage:boolean;
     EcartValidation:real;
     NumPrelevement,NumPrelevementFin,Matricule,DateDebut,HeureDebut,DateFin,HeureFin:string;
begin

if key in[VK_RETURN]then  
begin
     NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
     NumPrelevementFin:='';
     Matricule:=FSPrelevement.EditMatricule.Text;
     DateDebut:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
     HeureDebut:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
     DateFin:=FSPrelevement.TableauPrelevementUniteFonds.Cells[4,FSPrelevement.TableauPrelevementUniteFonds.Row];
     HeureFin:=FSPrelevement.TableauPrelevementUniteFonds.Cells[5,FSPrelevement.TableauPrelevementUniteFonds.Row];
     
     OKValidation:=false;

     if(strtoboolean(FSPrelevement.TableauPrelevementUniteFonds.Cells[10,FSPrelevement.TableauPrelevementUniteFonds.Row])=false)then
     begin
          if(FSPrelevement.RBAutoriserValidationSansJustifierArticles.Checked=true)then
          begin
               OKValidation:=true;
          end
          else
          begin
               EcartValidation:=strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1])-strtoreal(FSPrelevement.EditValeurPrelevementUniteFonds.Text);
               if(EcartValidation<0)then EcartValidation:=EcartValidation*(-1);
               if(EcartValidation<strtoreal(FSPrelevement.EditEcartAutorise.Text))then
               begin
                    OKValidation:=true;
               end
               else
               begin
                    OKValidation:=false;
                    FSPrelevement.TableauDetailArticlePrelevement.Col:=7;
                    FSPrelevement.TableauDetailArticlePrelevement.SetFocus;
               end;
          end;
     end
     else OKValidation:=true;

     if(OKValidation=true)then
     begin
         if(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1])>0)
         then FSPrelevement.EditValeurPrelevementUniteFonds.Text:=FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1];

         ActiverAffichage:=false;
         ProcEditValeurPrelevementUniteFondsKeyDown(ActiverAffichage,NumPrelevementUF,ARow);
         ValiderDetailArticlesMoyentransport(ActiverAffichage,NumPrelevementUF);

         if(ActiverAffichage=false)then
         begin
              ProcPrelevementUniteFonds(FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,FSPrelevement.TableauPrelevementUniteFonds.Cells[6,FSPrelevement.TableauPrelevementUniteFonds.Row]);
              if(FSPrelevement.RBControlerPrelevementAChaqueOperation.Checked=true)then AfficheDetailTypeUniteFonds(FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds);
              if(FSPrelevement.RBControlerPrelevementAChaqueOperation.Checked=true)then AfficheDetailTiers(FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditFondRoulement,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,FSPrelevement.RBCumuleTiers.Checked);
              if(FSPrelevement.RBControlerPrelevementAChaqueOperation.Checked=true)then AfficheDetailArticle(FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.EditMontantArticle,NumPrelevement,NumPrelevementFin);

              FSPrelevement.TableauPrelevementUniteFonds.Row:=ARow;
              FSPrelevement.AfficheSaisiePrelevementUniteFonds.Visible:=false;

              FSPrelevement.EditSoldePrelevement.Text:=Vergule(floattostr(ValePrecis(strtoreal(FSPrelevement.EditMontantUniteFonds.Text)-strtoreal(FSPrelevement.EditMontantCompteur.Text)-strtoreal(FSPrelevement.EditFondRoulement.Text),2)),'2','C','');
              if(FSPrelevement.RBControlerPrelevementAChaqueOperation.Checked=true)then MiseAJourPrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,strtoreal(FSPrelevement.EditMontantCompteur.Text),strtoreal(FSPrelevement.EditFondRoulement.Text),strtoreal(FSPrelevement.EditMontantUniteFonds.Text),strtoreal(FSPrelevement.EditSoldePrelevement.Text),true);

              if(FSPrelevement.RBControlerSoldeAChaqueOperation.Checked=true)then PrelevementEffectifEquipe(FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text);

              AfficherSoldeControle;

              AfficherDetailMoyenTransport('',FSPrelevement.EditTypeFiche.Text,FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditNumPrelevementUniteFonds.Text,FSPrelevement.EditMatricule.Text,FSPrelevement.EditCodeTiers.Text,
                                        FSPrelevement.EditPositionMoyenTransport,
                                        FSPrelevement.EditTypeFiche,
                                        FSPrelevement.EditNumMovementPrelevement,
                                        FSPrelevement.EditNumFiche,
                                        FSPrelevement.EditMatriculeEffectifValider,
                                        FSPrelevement.EditMoyenTransport,
                                        FSPrelevement.EditMatriculeTransport,
                                        FSPrelevement.EditNomChauffeur,
                                        FSPrelevement.EditPrenomChauffeur,
                                        FSPrelevement.EditPieceIdentite,
                                        FSPrelevement.EditCodeTiersValider);

              AfficheDetailArticle(FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.EditMontantArticle,FSPrelevement.EditNumPrelevementCompteur.Text,'');
         end;

         FSPrelevement.TableauPrelevementUniteFonds.SetFocus;
     end;
end;
end;

procedure TFSPrelevement.EditValeurPrelevementUniteFondsKeyPress(
  Sender: TObject; var Key: Char);
begin

if key in['.',';']then key:=',';
if(key in['a'..'Z'])then key:=#0;

end;

procedure TFSPrelevement.BitBtn16Click(Sender: TObject);
var TitreEtat,SousTitreEtat:string;
begin
     TitreEtat:='Détail Article prélèvement N°: '+FSPrelevement.EditNumPrelevementCompteur.Text;
     if(FSPrelevement.EditNomEffectif.Text<>'')then SousTitreEtat:='Effectif: '+FSPrelevement.EditNomEffectif.Text;
     TableauToExcel(FSPrelevement.TableauListeDetailArticleUnitesFonds,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

procedure TFSPrelevement.TableauListeDetailArticleUnitesFondsDblClick(
  Sender: TObject);
var C:integer;  NotCol:string;
begin
     if(FSPrelevement.TableauListeDetailArticleUnitesFonds.ColWidths[9]<>0)
     then NotCol:='9-19;22;23'
     else NotCol:='';

     for C:=0 to FSPrelevement.TableauListeDetailArticleUnitesFonds.ColCount-1 do if(ExisteNuminTexte(inttostr(C),NotCol))then FSPrelevement.TableauListeDetailArticleUnitesFonds.ColWidths[C]:=0;
     AjusterColWidth(FSPrelevement.TableauListeDetailArticleUnitesFonds,'',NotCol);
end;

procedure TFSPrelevement.EditValeurPrelevementUniteFondsKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if(strtoreal(FSPrelevement.EditValeurPrelevementUniteFonds.Text)>0)
     then FSPrelevement.EditMontantRestant.Text:=Vergule('-'+FSPrelevement.EditValeurPrelevementUniteFonds.Text,FSPrelevement.EditNbrChiffreApresVergule.Text,'C','')
     else FSPrelevement.EditMontantRestant.Text:=Vergule(floattostr(strtoreal(FSPrelevement.EditSoldePrelevement.Text)-strtoreal(FSPrelevement.EditValeurPrelevementUniteFonds.Text)),FSPrelevement.EditNbrChiffreApresVergule.Text,'C','');
end;

Procedure ListeEtatStockPrelevement(TableauEtatStockPrelevement,TableauCompteur:TStringGrid; NumStructure:string);
var  R,RArticle,NbrArticle:integer;  OKArticle:boolean; 
begin
     TableauEtatStockPrelevement.ColCount:=10;
     TableauEtatStockPrelevement.Cols[0].Text:='Num.';
     TableauEtatStockPrelevement.Cols[1].Text:='Code';
     TableauEtatStockPrelevement.Cols[2].Text:='Article';
     TableauEtatStockPrelevement.Cols[3].Text:='UM';
     TableauEtatStockPrelevement.Cols[4].Text:='Prix';
     TableauEtatStockPrelevement.Cols[5].Text:='Qte.Initiale';
     TableauEtatStockPrelevement.Cols[6].Text:='Qte.Entrées';
     TableauEtatStockPrelevement.Cols[7].Text:='Qte.Sorties';
     TableauEtatStockPrelevement.Cols[8].Text:='Qte.Stock';
     TableauEtatStockPrelevement.Cols[9].Text:='Coût';

     TableauEtatStockPrelevement.RowCount:=2;
     TableauEtatStockPrelevement.Rows[1].Text:='';

     NbrArticle:=0;

     for R:=1 to TableauCompteur.RowCount-3 do
     begin
          RArticle:=1;
          OKArticle:=false;
          while(RArticle<=NbrArticle)and(OKArticle=false)do
          begin
               if(TableauEtatStockPrelevement.Cells[1,RArticle]=TableauCompteur.Cells[8,R])then
               begin
                    OKArticle:=true;
                    TableauEtatStockPrelevement.Cells[6,RArticle]:=Floattostr(strtoreal(TableauEtatStockPrelevement.Cells[6,RArticle])+strtoreal(TableauCompteur.Cells[15,R]));
                    TableauEtatStockPrelevement.Cells[7,RArticle]:=Floattostr(strtoreal(TableauEtatStockPrelevement.Cells[7,RArticle])+strtoreal(TableauCompteur.Cells[19,R]));
               end;
          RArticle:=RArticle+1;
          end;

          if(OKArticle=false)then
          begin
               NbrArticle:=NbrArticle+1;

               RStockArticleCopie:=ChercherStockArticle('Article',NumStructure,TableauCompteur.Cells[8,R],'',OKStockRecherche,RubriqueRecherche);

               TableauEtatStockPrelevement.Rows[NbrArticle].Text:=inttostr(NbrArticle);
               TableauEtatStockPrelevement.Cells[1,NbrArticle]:=RStockArticleCopie.Code;
               TableauEtatStockPrelevement.Cells[2,NbrArticle]:=RStockArticleCopie.Design+' '+RStockArticleCopie.Ref;
               TableauEtatStockPrelevement.Cells[3,NbrArticle]:=RStockArticleCopie.UM;
               TableauEtatStockPrelevement.Cells[4,NbrArticle]:=TableauCompteur.Cells[11,R];             // Prix
               TableauEtatStockPrelevement.Cells[5,NbrArticle]:=floattostr(RStockArticleCopie.QteStock); // Qte.Initiale
               TableauEtatStockPrelevement.Cells[6,NbrArticle]:=TableauCompteur.Cells[15,R];             // Qte.Entrées
               TableauEtatStockPrelevement.Cells[7,NbrArticle]:=TableauCompteur.Cells[19,R];             // Qte.Sorties
               TableauEtatStockPrelevement.Cells[8,NbrArticle]:='';                                      // Qte.Stock
               TableauEtatStockPrelevement.Cells[9,NbrArticle]:=TableauCompteur.Cells[21,R];             // Coût
          end;
     end;

     if(NbrArticle>0)then TableauEtatStockPrelevement.RowCount:=NbrArticle+1
                     else TableauEtatStockPrelevement.RowCount:=2;

     for R:=1 to TableauEtatStockPrelevement.RowCount-1 do
     begin
          TableauEtatStockPrelevement.Cells[8,R]:=Vergule(floattostr(strtoreal(TableauEtatStockPrelevement.Cells[5,R])+strtoreal(TableauEtatStockPrelevement.Cells[6,R])-strtoreal(TableauEtatStockPrelevement.Cells[7,R])),'2','C','');

          TableauEtatStockPrelevement.Cells[4,R]:=Vergule(TableauEtatStockPrelevement.Cells[4,R],'2','C','');
          TableauEtatStockPrelevement.Cells[5,R]:=Vergule(TableauEtatStockPrelevement.Cells[5,R],'2','C','');
          TableauEtatStockPrelevement.Cells[6,R]:=Vergule(TableauEtatStockPrelevement.Cells[6,R],'2','C','');
          TableauEtatStockPrelevement.Cells[7,R]:=Vergule(TableauEtatStockPrelevement.Cells[7,R],'2','C','');
          TableauEtatStockPrelevement.Cells[8,R]:=Vergule(TableauEtatStockPrelevement.Cells[8,R],'2','C','');
          TableauEtatStockPrelevement.Cells[9,R]:=Vergule(TableauEtatStockPrelevement.Cells[9,R],'2','C','');
     end;

     AjusterColWidth(TableauEtatStockPrelevement,'','');
     TrierTableauARowSpecial(TableauEtatStockPrelevement,1,TableauEtatStockPrelevement.RowCount-1,1,'1','','+');
end;

Procedure AfficheEtatStockPrelevement(TableauEtatStockPrelevement:TStringGrid; NumStructure,NumPrelevement,Matricule:string);
var  i,R,RArticle,NbrArticle,PBegin,PEnd:integer;  OKArticle,OKEtatStock:boolean;  FichierConcerne,PositionPrelevement,NumPrelevementFin:string;
     ValeurInitiale,ValeurEntree,ValeurSortie,ValeurStock:real;
begin
     TableauEtatStockPrelevement.ColCount:=14;
     TableauEtatStockPrelevement.Cols[0].Text:='Num.';
     TableauEtatStockPrelevement.Cols[1].Text:='Code';
     TableauEtatStockPrelevement.Cols[2].Text:='Article';
     TableauEtatStockPrelevement.Cols[3].Text:='UM';
     TableauEtatStockPrelevement.Cols[4].Text:='Prix';
     TableauEtatStockPrelevement.Cols[5].Text:='Qte.Initiale';
     TableauEtatStockPrelevement.Cols[6].Text:='Qte.Entrées';
     TableauEtatStockPrelevement.Cols[7].Text:='Qte.Sorties';
     TableauEtatStockPrelevement.Cols[8].Text:='Qte.Stock';
     TableauEtatStockPrelevement.Cols[9].Text:='Coût';

     TableauEtatStockPrelevement.Cols[10].Text:='Valeur.Initiale';
     TableauEtatStockPrelevement.Cols[11].Text:='Valeur.Entrées';
     TableauEtatStockPrelevement.Cols[12].Text:='Valeur.Sorties';
     TableauEtatStockPrelevement.Cols[13].Text:='Valeur.Stock';

     TableauEtatStockPrelevement.RowCount:=2;
     TableauEtatStockPrelevement.Rows[1].Text:='';

     FichierConcerne:='FRegistreEtatStockPrelevement';

     NumPrelevementFin:='';

     if(NumPrelevement<>'')and(NumPrelevementFin='')then
     begin
          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);
          if(RPrelevement.Archiver=false)then
          begin
               FichierConcerne:='FRegistreEtatStockPrelevement';
               PBegin:=0;
               PEnd:=999999999;
          end
          else
          begin
               FichierConcerne:='FArchiveRegistreEtatStockPrelevement';
               if(FSListePrelevement.RBUtiliserPositionArchive.Checked=true)then
               begin
                    PBegin:=RPrelevement.RegistrePositionEtatStockPrelevement.PositionArchiveBegin;
                    PEnd:=RPrelevement.RegistrePositionEtatStockPrelevement.PositionArchiveEnd;
               end
               else
               begin
                    PBegin:=0;
                    PEnd:=999999999;
               end;
          end;
     end;

     OpenFParc(RParc);
     ChRegistreEtatStockPrelevement:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FRegistreEtatStockPrelevement,ChRegistreEtatStockPrelevement);
     try
     if FileExists(ChRegistreEtatStockPrelevement)then
     Reset(FRegistreEtatStockPrelevement)
     else Rewrite(FRegistreEtatStockPrelevement);
     Seek(FRegistreEtatStockPrelevement,PBegin);
     NbrArticle:=0;
     i:=0;
     ValeurInitiale:=0;
     ValeurEntree:=0;
     ValeurSortie:=0;
     ValeurStock:=0;
     while not eof(FRegistreEtatStockPrelevement)and(i<=PEnd)do
     begin
          read(FRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);
          i:=i+1;

          if(inttostr(RRegistreEtatStockPrelevement.NumPrelevement)=NumPrelevement)
          then OKEtatStock:=true
          else OKEtatStock:=false;

          if(OKEtatStock=true)then
          begin
               if(Matricule<>'')then
               begin
                    if(RRegistreEtatStockPrelevement.Matricule=Matricule)
                    then OKEtatStock:=true
                    else OKEtatStock:=false;
               end;
          end;

          if(OKEtatStock=true)then
          begin
                RArticle:=1;
                OKArticle:=false;
                while(RArticle<=NbrArticle)and(OKArticle=false)do
                begin
                     if(TableauEtatStockPrelevement.Cells[1,RArticle]=RRegistreEtatStockPrelevement.CodeArticle)then
                     begin
                          OKArticle:=true;
                          TableauEtatStockPrelevement.Cells[6,RArticle]:=Floattostr(strtoreal(TableauEtatStockPrelevement.Cells[6,RArticle])+RRegistreEtatStockPrelevement.QuantiteEntree);
                          TableauEtatStockPrelevement.Cells[7,RArticle]:=Floattostr(strtoreal(TableauEtatStockPrelevement.Cells[7,RArticle])+RRegistreEtatStockPrelevement.QuantiteSortie);
                     end;
                RArticle:=RArticle+1;
                end;

                if(OKArticle=false)then
                begin
                     NbrArticle:=NbrArticle+1;

                     RStockArticleCopie:=ChercherStockArticle('Article',NumStructure,RRegistreEtatStockPrelevement.CodeArticle,'',OKStockRecherche,RubriqueRecherche);

                     TableauEtatStockPrelevement.Rows[NbrArticle].Text:=inttostr(NbrArticle);
                     TableauEtatStockPrelevement.Cells[1,NbrArticle]:=RStockArticleCopie.Code;
                     TableauEtatStockPrelevement.Cells[2,NbrArticle]:=RStockArticleCopie.Design+' '+RStockArticleCopie.Ref;
                     TableauEtatStockPrelevement.Cells[3,NbrArticle]:=RStockArticleCopie.UM;
                     TableauEtatStockPrelevement.Cells[4,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.PrixUnitaire);// Prix
                     TableauEtatStockPrelevement.Cells[5,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteInitiale); // Qte.Initiale
                     TableauEtatStockPrelevement.Cells[6,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteEntree);// Qte.Entrées
                     TableauEtatStockPrelevement.Cells[7,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteSortie);// Qte.Sorties
                     TableauEtatStockPrelevement.Cells[8,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteStock);// Qte.Stock
                     TableauEtatStockPrelevement.Cells[9,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.CoutUnitaire);// Coût

                     if(FSPrelevement.EditCalculeValeur.Text='Valeur par défaut')then
                     begin
                          TableauEtatStockPrelevement.Cells[10,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteInitiale*RRegistreEtatStockPrelevement.CoutUnitaire); // Coût.Initiale
                          TableauEtatStockPrelevement.Cells[11,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteEntree*RRegistreEtatStockPrelevement.CoutUnitaire);// Coût.Entrées
                          TableauEtatStockPrelevement.Cells[12,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteSortie*RRegistreEtatStockPrelevement.CoutUnitaire);// Coût.Sorties
                          TableauEtatStockPrelevement.Cells[13,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteStock*RRegistreEtatStockPrelevement.CoutUnitaire);// Coût.Stock

                          ValeurInitiale:=ValeurInitiale+(RRegistreEtatStockPrelevement.QuantiteInitiale*RRegistreEtatStockPrelevement.CoutUnitaire);
                          ValeurEntree:=ValeurEntree+(RRegistreEtatStockPrelevement.QuantiteEntree*RRegistreEtatStockPrelevement.CoutUnitaire);
                          ValeurSortie:=ValeurSortie+(RRegistreEtatStockPrelevement.QuantiteSortie*RRegistreEtatStockPrelevement.CoutUnitaire);
                          ValeurStock:=ValeurStock+(RRegistreEtatStockPrelevement.QuantiteStock*RRegistreEtatStockPrelevement.CoutUnitaire);
                     end;

                     if(FSPrelevement.EditCalculeValeur.Text='Valeur prix de vente')then
                     begin
                          TableauEtatStockPrelevement.Cells[10,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteInitiale*RRegistreEtatStockPrelevement.PrixUnitaire); // Prix.Initiale
                          TableauEtatStockPrelevement.Cells[11,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteEntree*RRegistreEtatStockPrelevement.PrixUnitaire);// Prix.Entrées
                          TableauEtatStockPrelevement.Cells[12,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteSortie*RRegistreEtatStockPrelevement.PrixUnitaire);// Prix.Sorties
                          TableauEtatStockPrelevement.Cells[13,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteStock*RRegistreEtatStockPrelevement.PrixUnitaire);// Prix.Stock

                          ValeurInitiale:=ValeurInitiale+(RRegistreEtatStockPrelevement.QuantiteInitiale*RRegistreEtatStockPrelevement.PrixUnitaire);
                          ValeurEntree:=ValeurEntree+(RRegistreEtatStockPrelevement.QuantiteEntree*RRegistreEtatStockPrelevement.PrixUnitaire);
                          ValeurSortie:=ValeurSortie+(RRegistreEtatStockPrelevement.QuantiteSortie*RRegistreEtatStockPrelevement.PrixUnitaire);
                          ValeurStock:=ValeurStock+(RRegistreEtatStockPrelevement.QuantiteStock*RRegistreEtatStockPrelevement.PrixUnitaire);
                     end;

                     if(FSPrelevement.EditCalculeValeur.Text='Valeur coût d''achat')then
                     begin
                          TableauEtatStockPrelevement.Cells[10,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteInitiale*RRegistreEtatStockPrelevement.CoutUnitaire); // Coût.Initiale
                          TableauEtatStockPrelevement.Cells[11,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteEntree*RRegistreEtatStockPrelevement.CoutUnitaire);// Coût.Entrées
                          TableauEtatStockPrelevement.Cells[12,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteSortie*RRegistreEtatStockPrelevement.CoutUnitaire);// Coût.Sorties
                          TableauEtatStockPrelevement.Cells[13,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteStock*RRegistreEtatStockPrelevement.CoutUnitaire);// Coût.Stock

                          ValeurInitiale:=ValeurInitiale+(RRegistreEtatStockPrelevement.QuantiteInitiale*RRegistreEtatStockPrelevement.CoutUnitaire);
                          ValeurEntree:=ValeurEntree+(RRegistreEtatStockPrelevement.QuantiteEntree*RRegistreEtatStockPrelevement.CoutUnitaire);
                          ValeurSortie:=ValeurSortie+(RRegistreEtatStockPrelevement.QuantiteSortie*RRegistreEtatStockPrelevement.CoutUnitaire);
                          ValeurStock:=ValeurStock+(RRegistreEtatStockPrelevement.QuantiteStock*RRegistreEtatStockPrelevement.CoutUnitaire);
                     end;
                end;
          end;
     end;
     finally
     closefile(FRegistreEtatStockPrelevement);
     end;

     if(NbrArticle>0)then
                     begin
                          TableauEtatStockPrelevement.RowCount:=NbrArticle+3;
                          TableauEtatStockPrelevement.Rows[NbrArticle+1].Text:='';
                          TableauEtatStockPrelevement.Rows[NbrArticle+2].Text:='';

                          TableauEtatStockPrelevement.Cells[9,NbrArticle+2]:='Total: ';

                          TableauEtatStockPrelevement.Cells[10,NbrArticle+2]:=Vergule(floattostr(ValeurInitiale),'2','C','');
                          TableauEtatStockPrelevement.Cells[11,NbrArticle+2]:=Vergule(floattostr(ValeurEntree),'2','C','');
                          TableauEtatStockPrelevement.Cells[12,NbrArticle+2]:=Vergule(floattostr(ValeurSortie),'2','C','');
                          TableauEtatStockPrelevement.Cells[13,NbrArticle+2]:=Vergule(floattostr(ValeurStock),'2','C','');
                     end
                     else TableauEtatStockPrelevement.RowCount:=2;

     for R:=1 to TableauEtatStockPrelevement.RowCount-3 do
     begin
          TableauEtatStockPrelevement.Cells[4,R]:=Vergule(TableauEtatStockPrelevement.Cells[4,R],'2','C','');
          TableauEtatStockPrelevement.Cells[5,R]:=Vergule(TableauEtatStockPrelevement.Cells[5,R],'2','C','');
          TableauEtatStockPrelevement.Cells[6,R]:=Vergule(TableauEtatStockPrelevement.Cells[6,R],'2','C','');
          TableauEtatStockPrelevement.Cells[7,R]:=Vergule(TableauEtatStockPrelevement.Cells[7,R],'2','C','');
          TableauEtatStockPrelevement.Cells[8,R]:=Vergule(TableauEtatStockPrelevement.Cells[8,R],'2','C','');
          TableauEtatStockPrelevement.Cells[9,R]:=Vergule(TableauEtatStockPrelevement.Cells[9,R],'2','C','');
          TableauEtatStockPrelevement.Cells[10,R]:=Vergule(TableauEtatStockPrelevement.Cells[10,R],'2','C','');
          TableauEtatStockPrelevement.Cells[11,R]:=Vergule(TableauEtatStockPrelevement.Cells[11,R],'2','C','');
          TableauEtatStockPrelevement.Cells[12,R]:=Vergule(TableauEtatStockPrelevement.Cells[12,R],'2','C','');
          TableauEtatStockPrelevement.Cells[13,R]:=Vergule(TableauEtatStockPrelevement.Cells[13,R],'2','C','');
     end;

     AjusterColWidth(TableauEtatStockPrelevement,'','');
     TrierTableauARowSpecial(TableauEtatStockPrelevement,1,TableauEtatStockPrelevement.RowCount-3,1,'1','','+');
end;

procedure TFSPrelevement.EditCalculeValeurKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSPrelevement.EditCalculeValeurChange(Sender: TObject);
var  R,RMax:integer;   ValeurInitiale,ValeurEntree,ValeurSortie,ValeurStock:real;
begin
     RMax:=TableauEtatStockPrelevement.RowCount-1;
     R:=1;
     while(R<=TableauEtatStockPrelevement.RowCount-3)do
     begin
                     if(FSPrelevement.EditCalculeValeur.Text='Valeur par défaut')then
                     begin
                          TableauEtatStockPrelevement.Cells[10,R]:=Vergule(floattostr(strtoreal(TableauEtatStockPrelevement.Cells[5,R])*strtoreal(TableauEtatStockPrelevement.Cells[9,R])),'2','C',''); // Valeur.Initiale
                          TableauEtatStockPrelevement.Cells[11,R]:=Vergule(floattostr(strtoreal(TableauEtatStockPrelevement.Cells[6,R])*strtoreal(TableauEtatStockPrelevement.Cells[9,R])),'2','C','');// Valeur.Entrées
                          TableauEtatStockPrelevement.Cells[12,R]:=Vergule(floattostr(strtoreal(TableauEtatStockPrelevement.Cells[7,R])*strtoreal(TableauEtatStockPrelevement.Cells[4,R])),'2','C','');// Valeur.Sorties
                          TableauEtatStockPrelevement.Cells[13,R]:=Vergule(floattostr(strtoreal(TableauEtatStockPrelevement.Cells[8,R])*strtoreal(TableauEtatStockPrelevement.Cells[9,R])),'2','C','');// Valeur.Stock

                          ValeurInitiale:=ValeurInitiale+strtoreal(TableauEtatStockPrelevement.Cells[10,R]);
                          ValeurEntree:=ValeurEntree+strtoreal(TableauEtatStockPrelevement.Cells[11,R]);
                          ValeurSortie:=ValeurSortie+strtoreal(TableauEtatStockPrelevement.Cells[12,R]);
                          ValeurStock:=ValeurStock+strtoreal(TableauEtatStockPrelevement.Cells[13,R]);
                     end;

                     if(FSPrelevement.EditCalculeValeur.Text='Valeur prix de vente')then
                     begin
                          TableauEtatStockPrelevement.Cells[10,R]:=Vergule(floattostr(strtoreal(TableauEtatStockPrelevement.Cells[5,R])*strtoreal(TableauEtatStockPrelevement.Cells[4,R])),'2','C',''); // Valeur.Initiale
                          TableauEtatStockPrelevement.Cells[11,R]:=Vergule(floattostr(strtoreal(TableauEtatStockPrelevement.Cells[6,R])*strtoreal(TableauEtatStockPrelevement.Cells[4,R])),'2','C','');// Valeur.Entrées
                          TableauEtatStockPrelevement.Cells[12,R]:=Vergule(floattostr(strtoreal(TableauEtatStockPrelevement.Cells[7,R])*strtoreal(TableauEtatStockPrelevement.Cells[4,R])),'2','C','');// Valeur.Sorties
                          TableauEtatStockPrelevement.Cells[13,R]:=Vergule(floattostr(strtoreal(TableauEtatStockPrelevement.Cells[8,R])*strtoreal(TableauEtatStockPrelevement.Cells[4,R])),'2','C','');// Valeur.Stock

                          ValeurInitiale:=ValeurInitiale+strtoreal(TableauEtatStockPrelevement.Cells[10,R]);
                          ValeurEntree:=ValeurEntree+strtoreal(TableauEtatStockPrelevement.Cells[11,R]);
                          ValeurSortie:=ValeurSortie+strtoreal(TableauEtatStockPrelevement.Cells[12,R]);
                          ValeurStock:=ValeurStock+strtoreal(TableauEtatStockPrelevement.Cells[13,R]);
                     end;

                     if(FSPrelevement.EditCalculeValeur.Text='Valeur coût d''achat')then
                     begin
                          TableauEtatStockPrelevement.Cells[10,R]:=Vergule(floattostr(strtoreal(TableauEtatStockPrelevement.Cells[5,R])*strtoreal(TableauEtatStockPrelevement.Cells[9,R])),'2','C',''); // Valeur.Initiale
                          TableauEtatStockPrelevement.Cells[11,R]:=Vergule(floattostr(strtoreal(TableauEtatStockPrelevement.Cells[6,R])*strtoreal(TableauEtatStockPrelevement.Cells[9,R])),'2','C','');// Valeur.Entrées
                          TableauEtatStockPrelevement.Cells[12,R]:=Vergule(floattostr(strtoreal(TableauEtatStockPrelevement.Cells[7,R])*strtoreal(TableauEtatStockPrelevement.Cells[9,R])),'2','C','');// Valeur.Sorties
                          TableauEtatStockPrelevement.Cells[13,R]:=Vergule(floattostr(strtoreal(TableauEtatStockPrelevement.Cells[8,R])*strtoreal(TableauEtatStockPrelevement.Cells[9,R])),'2','C','');// Valeur.Stock

                          ValeurInitiale:=ValeurInitiale+strtoreal(TableauEtatStockPrelevement.Cells[10,R]);
                          ValeurEntree:=ValeurEntree+strtoreal(TableauEtatStockPrelevement.Cells[11,R]);
                          ValeurSortie:=ValeurSortie+strtoreal(TableauEtatStockPrelevement.Cells[12,R]);
                          ValeurStock:=ValeurStock+strtoreal(TableauEtatStockPrelevement.Cells[13,R]);
                     end;
     R:=R+1;
     end;

     TableauEtatStockPrelevement.Cells[10,RMax]:=Vergule(floattostr(ValeurInitiale),'2','C',''); // Valeur.Initiale
     TableauEtatStockPrelevement.Cells[11,RMax]:=Vergule(floattostr(ValeurEntree),'2','C','');// Valeur.Entrées
     TableauEtatStockPrelevement.Cells[12,RMax]:=Vergule(floattostr(ValeurSortie),'2','C','');// Valeur.Sorties
     TableauEtatStockPrelevement.Cells[13,RMax]:=Vergule(floattostr(ValeurStock),'2','C','');// Valeur.Stock
end;

procedure TFSPrelevement.RBEmargementPageSepareClick(Sender: TObject);
begin
     FSPrelevement.RBDetailUtilisateur.Checked:=Not FSPrelevement.RBEmargementPageSepare.Checked;
     FSPrelevement.RBDetailEquipe.Checked:=Not FSPrelevement.RBEmargementPageSepare.Checked;
end;

Procedure EnregistrementParametrePrintPrelevement;
begin
     OpenFParc(RParc);
     ChRParametresImprimePrelevement:=RParc.Parcours+'\'+Exercice+'FRParametresImprimePrelevement';
     assignfile(FRParametresImprimePrelevement,ChRParametresImprimePrelevement);
     try
     if FileExists(ChRParametresImprimePrelevement)then
     Reset(FRParametresImprimePrelevement)
     else Rewrite(FRParametresImprimePrelevement);
     Seek(FRParametresImprimePrelevement,0);

     RParametresImprimePrelevement.RegistreDetailCompteur.RBActivePrint:=FSPrelevement.RBDetailCompteur.Checked;
     RParametresImprimePrelevement.RegistreDetailCompteur.NumClasse:=strtointeger(FSPrelevement.ClasseDetailCompteur.Text);
     RParametresImprimePrelevement.RegistreDetailCompteur.RNAjustement:=FSPrelevement.RBAjusterDetailCompteur.Checked;

     RParametresImprimePrelevement.RegistreDetailUniteFonds.RBActivePrint:=FSPrelevement.RBDetailUniteFonds.Checked;
     RParametresImprimePrelevement.RegistreDetailUniteFonds.NumClasse:=strtointeger(FSPrelevement.ClasseDetailUniteFonds.Text);
     RParametresImprimePrelevement.RegistreDetailUniteFonds.RNAjustement:=FSPrelevement.RBAjusterDetailUniteFonds.Checked;

     RParametresImprimePrelevement.RegistreDetailFondRoulement.RBActivePrint:=FSPrelevement.RBDetailFondRoulement.Checked;
     RParametresImprimePrelevement.RegistreDetailFondRoulement.NumClasse:=strtointeger(FSPrelevement.ClasseDetailFondRoulement.Text);
     RParametresImprimePrelevement.RegistreDetailFondRoulement.RNAjustement:=FSPrelevement.RBAjusterDetailFondRoulement.Checked;

     RParametresImprimePrelevement.RegistreDetailTypeUniteFonds.RBActivePrint:=FSPrelevement.RBDetailTypeUniteFonds.Checked;
     RParametresImprimePrelevement.RegistreDetailTypeUniteFonds.NumClasse:=strtointeger(FSPrelevement.ClasseDetailTypeUniteFonds.Text);
     RParametresImprimePrelevement.RegistreDetailTypeUniteFonds.RNAjustement:=FSPrelevement.RBAjusterDetailTypeUniteFonds.Checked;

     RParametresImprimePrelevement.RegistreDetailTiers.RBActivePrint:=FSPrelevement.RBDetailTiers.Checked;
     RParametresImprimePrelevement.RegistreDetailTiers.NumClasse:=strtointeger(FSPrelevement.ClasseDetailTiers.Text);
     RParametresImprimePrelevement.RegistreDetailTiers.RNAjustement:=FSPrelevement.RBAjusterDetailTiers.Checked;

     RParametresImprimePrelevement.RegistreDetailArticle.RBActivePrint:=FSPrelevement.RBDetailArticle.Checked;
     RParametresImprimePrelevement.RegistreDetailArticle.NumClasse:=strtointeger(FSPrelevement.ClasseDetailArticle.Text);
     RParametresImprimePrelevement.RegistreDetailArticle.RNAjustement:=FSPrelevement.RBAjusterDetailArticle.Checked;

     RParametresImprimePrelevement.RegistreDetailArborescenceArticle.RBActivePrint:=FSPrelevement.RBDetailArborescenceArticle.Checked;
     RParametresImprimePrelevement.RegistreDetailArborescenceArticle.NumClasse:=strtointeger(FSPrelevement.ClasseDetailArborescenceArticle.Text);
     RParametresImprimePrelevement.RegistreDetailArborescenceArticle.RNAjustement:=FSPrelevement.RBAjusterDetailArborescenceArticle.Checked;

     RParametresImprimePrelevement.RegistreDetailRecapitulatif.RBActivePrint:=FSPrelevement.RBDetailRecapitulatif.Checked;
     RParametresImprimePrelevement.RegistreDetailRecapitulatif.NumClasse:=strtointeger(FSPrelevement.ClasseDetailRecapitulatif.Text);
     RParametresImprimePrelevement.RegistreDetailRecapitulatif.RNAjustement:=FSPrelevement.RBAjusterDetailRecapitulatif.Checked;

     RParametresImprimePrelevement.RegistreDetailUtilisateur.RBActivePrint:=FSPrelevement.RBDetailUtilisateur.Checked;
     RParametresImprimePrelevement.RegistreDetailUtilisateur.NumClasse:=strtointeger(FSPrelevement.ClasseDetailUtilisateur.Text);
     RParametresImprimePrelevement.RegistreDetailUtilisateur.RNAjustement:=FSPrelevement.RBAjusterDetailUtilisateur.Checked;

     RParametresImprimePrelevement.RegistreDetailEquipe.RBActivePrint:=FSPrelevement.RBDetailEquipe.Checked;
     RParametresImprimePrelevement.RegistreDetailEquipe.NumClasse:=strtointeger(FSPrelevement.ClasseDetailEquipe.Text);
     RParametresImprimePrelevement.RegistreDetailEquipe.RNAjustement:=FSPrelevement.RBAjusterDetailEquipe.Checked;

     RParametresImprimePrelevement.RBDetailArticleSimple:=FSPrelevement.RBDetailArticleSimple.Checked;
     RParametresImprimePrelevement.RBNbrEquipeImprimer:=FSPrelevement.RBNbrEquipeImprimer.Checked;
     RParametresImprimePrelevement.RBEmargementPageSepare:=FSPrelevement.RBEmargementPageSepare.Checked;


     write(FRParametresImprimePrelevement,RParametresImprimePrelevement);
     finally
     CloseFile(FRParametresImprimePrelevement);
     end;
end;

Procedure AfficherEnregistrementParametrePrintPrelevement;
begin
     OpenFParc(RParc);
     ChRParametresImprimePrelevement:=RParc.Parcours+'\'+Exercice+'FRParametresImprimePrelevement';
     assignfile(FRParametresImprimePrelevement,ChRParametresImprimePrelevement);
     try
     if FileExists(ChRParametresImprimePrelevement)then
     Reset(FRParametresImprimePrelevement)
     else Rewrite(FRParametresImprimePrelevement);
     Seek(FRParametresImprimePrelevement,0);
     if not eof(FRParametresImprimePrelevement)then
     begin
           read(FRParametresImprimePrelevement,RParametresImprimePrelevement);

           FSPrelevement.RBDetailCompteur.Checked:=RParametresImprimePrelevement.RegistreDetailCompteur.RBActivePrint;
           if(RParametresImprimePrelevement.RegistreDetailCompteur.NumClasse<>0)
           then FSPrelevement.ClasseDetailCompteur.Text:=inttostr(RParametresImprimePrelevement.RegistreDetailCompteur.NumClasse)
           else FSPrelevement.ClasseDetailCompteur.Text:='';
           FSPrelevement.RBAjusterDetailCompteur.Checked:=RParametresImprimePrelevement.RegistreDetailCompteur.RNAjustement;

           FSPrelevement.RBDetailUniteFonds.Checked:=RParametresImprimePrelevement.RegistreDetailUniteFonds.RBActivePrint;
           if(RParametresImprimePrelevement.RegistreDetailUniteFonds.NumClasse<>0)
           then FSPrelevement.ClasseDetailUniteFonds.Text:=inttostr(RParametresImprimePrelevement.RegistreDetailUniteFonds.NumClasse)
           else FSPrelevement.ClasseDetailUniteFonds.Text:='';
           FSPrelevement.RBAjusterDetailUniteFonds.Checked:=RParametresImprimePrelevement.RegistreDetailUniteFonds.RNAjustement;

           FSPrelevement.RBDetailFondRoulement.Checked:=RParametresImprimePrelevement.RegistreDetailFondRoulement.RBActivePrint;
           if(RParametresImprimePrelevement.RegistreDetailFondRoulement.NumClasse<>0)
           then FSPrelevement.ClasseDetailFondRoulement.Text:=inttostr(RParametresImprimePrelevement.RegistreDetailFondRoulement.NumClasse)
           else FSPrelevement.ClasseDetailFondRoulement.Text:='';
           FSPrelevement.RBAjusterDetailFondRoulement.Checked:=RParametresImprimePrelevement.RegistreDetailFondRoulement.RNAjustement;

           FSPrelevement.RBDetailTypeUniteFonds.Checked:=RParametresImprimePrelevement.RegistreDetailTypeUniteFonds.RBActivePrint;
           if(RParametresImprimePrelevement.RegistreDetailTypeUniteFonds.NumClasse<>0)
           then FSPrelevement.ClasseDetailTypeUniteFonds.Text:=inttostr(RParametresImprimePrelevement.RegistreDetailTypeUniteFonds.NumClasse)
           else FSPrelevement.ClasseDetailTypeUniteFonds.Text:='';
           FSPrelevement.RBAjusterDetailTypeUniteFonds.Checked:=RParametresImprimePrelevement.RegistreDetailTypeUniteFonds.RNAjustement;

           FSPrelevement.RBDetailTiers.Checked:=RParametresImprimePrelevement.RegistreDetailTiers.RBActivePrint;
           if(RParametresImprimePrelevement.RegistreDetailTiers.NumClasse<>0)
           then FSPrelevement.ClasseDetailTiers.Text:=inttostr(RParametresImprimePrelevement.RegistreDetailTiers.NumClasse)
           else FSPrelevement.ClasseDetailTiers.Text:='';
           FSPrelevement.RBAjusterDetailTiers.Checked:=RParametresImprimePrelevement.RegistreDetailTiers.RNAjustement;

           FSPrelevement.RBDetailArticle.Checked:=RParametresImprimePrelevement.RegistreDetailArticle.RBActivePrint;
           if(RParametresImprimePrelevement.RegistreDetailArticle.NumClasse<>0)
           then FSPrelevement.ClasseDetailArticle.Text:=inttostr(RParametresImprimePrelevement.RegistreDetailArticle.NumClasse)
           else FSPrelevement.ClasseDetailArticle.Text:='';
           FSPrelevement.RBAjusterDetailArticle.Checked:=RParametresImprimePrelevement.RegistreDetailArticle.RNAjustement;

           FSPrelevement.RBDetailArborescenceArticle.Checked:=RParametresImprimePrelevement.RegistreDetailArborescenceArticle.RBActivePrint;
           if(RParametresImprimePrelevement.RegistreDetailArborescenceArticle.NumClasse<>0)
           then FSPrelevement.ClasseDetailArborescenceArticle.Text:=inttostr(RParametresImprimePrelevement.RegistreDetailArborescenceArticle.NumClasse)
           else FSPrelevement.ClasseDetailArborescenceArticle.Text:='';
           FSPrelevement.RBAjusterDetailArborescenceArticle.Checked:=RParametresImprimePrelevement.RegistreDetailArborescenceArticle.RNAjustement;

           FSPrelevement.RBDetailRecapitulatif.Checked:=RParametresImprimePrelevement.RegistreDetailRecapitulatif.RBActivePrint;
           if(RParametresImprimePrelevement.RegistreDetailRecapitulatif.NumClasse<>0)
           then FSPrelevement.ClasseDetailRecapitulatif.Text:=inttostr(RParametresImprimePrelevement.RegistreDetailRecapitulatif.NumClasse)
           else FSPrelevement.ClasseDetailRecapitulatif.Text:='';
           FSPrelevement.RBAjusterDetailRecapitulatif.Checked:=RParametresImprimePrelevement.RegistreDetailRecapitulatif.RNAjustement;

           FSPrelevement.RBDetailUtilisateur.Checked:=RParametresImprimePrelevement.RegistreDetailUtilisateur.RBActivePrint;
           if(RParametresImprimePrelevement.RegistreDetailUtilisateur.NumClasse<>0)
           then FSPrelevement.ClasseDetailUtilisateur.Text:=inttostr(RParametresImprimePrelevement.RegistreDetailUtilisateur.NumClasse)
           else FSPrelevement.ClasseDetailUtilisateur.Text:='';
           FSPrelevement.RBAjusterDetailUtilisateur.Checked:=RParametresImprimePrelevement.RegistreDetailUtilisateur.RNAjustement;

           FSPrelevement.RBDetailEquipe.Checked:=RParametresImprimePrelevement.RegistreDetailEquipe.RBActivePrint;
           if(RParametresImprimePrelevement.RegistreDetailEquipe.NumClasse<>0)
           then FSPrelevement.ClasseDetailEquipe.Text:=inttostr(RParametresImprimePrelevement.RegistreDetailEquipe.NumClasse)
           else FSPrelevement.ClasseDetailEquipe.Text:='';
           FSPrelevement.RBAjusterDetailEquipe.Checked:=RParametresImprimePrelevement.RegistreDetailEquipe.RNAjustement;

           FSPrelevement.RBDetailArticleSimple.Checked:=RParametresImprimePrelevement.RBDetailArticleSimple;
           FSPrelevement.RBNbrEquipeImprimer.Checked:=RParametresImprimePrelevement.RBNbrEquipeImprimer;
           FSPrelevement.RBEmargementPageSepare.Checked:=RParametresImprimePrelevement.RBEmargementPageSepare;
     end;
     finally
     CloseFile(FRParametresImprimePrelevement);
     end;
end;

procedure TFSPrelevement.AfficheSaisiePrelevementMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSPrelevement.TableauChercheEquipeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSPrelevement.TableauChercheEffectifMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSPrelevement.TimerLancerAfficheTiersTimer(Sender: TObject);
begin
     Application.ProcessMessages;
     FSPrelevement.TimerLancerAfficheTiers.Enabled:=false;
     FSPrelevement.TimerAfficheTiers.Enabled:=true;
end;

procedure TFSPrelevement.TimerAfficheTiersTimer(Sender: TObject);
begin
     Application.ProcessMessages;
     
     FSPrelevement.TimerAfficheTiers.Enabled:=false;

     if(FSPrelevement.TableauTiers.Visible=true)then
     begin
          if(FSPrelevement.RBRechercheTiersMotsCles.Checked=false)
          then ListeTiersPointeur(FSPrelevement.TableauTiers,FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row],FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row],'','',FSPrelevement.EditRechercheNomPrenomTiers.Text,FSTiers.EditNbrKeyUp,FSTiers.EditNbrKeyUpMemo,FSPrelevement.TimerLancerAfficheTiers,false,FSPrelevement.RBChargerPointeur.Checked)
          else ListeTiersMotsCle(FSPrelevement.TableauTiers,FSPrelevement.TableauPrelevementUniteFonds.Cells[11,FSPrelevement.TableauPrelevementUniteFonds.Row],FSPrelevement.TableauPrelevementUniteFonds.Cells[12,FSPrelevement.TableauPrelevementUniteFonds.Row],'','',FSPrelevement.EditRechercheNomPrenomTiers.Text,FSTiers.EditNbrKeyUp,FSTiers.EditNbrKeyUpMemo,FSPrelevement.TimerLancerAfficheTiers,false,true);
     end;
     
     //FSPrelevement.RBChargerPointeur.Checked:=false;
end;

procedure TFSPrelevement.EditRechercheNomPrenomTiersEnter(Sender: TObject);
begin
     FSPrelevement.TableauTiers.Visible:=true;

     FSPrelevement.TimerAfficheTiers.Enabled:=false;
     FSPrelevement.TimerLancerAfficheTiers.Enabled:=false;
     FSPrelevement.TimerLancerAfficheTiers.Enabled:=true;
end;

procedure TFSPrelevement.TimerArchivePrelevementTimer(Sender: TObject);
var  i,E,NbrNewArticle,NbrChargeArticle:integer;
     NumPrelevement,EcartNumPUF,PositionPrelevement,SigneMouvement,TypeProcesPrelevement,FichierConcernePrelevement,AdressePrelevement:string;
     confirme,OKMiseAJour:boolean;
     MontantPrelevement,MontantFondRoulement,MontantUnitesFonds,SoldePrelevement,QuantiteAOperer,CoutUnitaire:real;
     RegistrePositionPrelevementCompteur,RegistrePositionPrelevementUniteFonds,RegistrePositionPrelevementEffectifEquipe,RegistrePositionRegistreAffectationEffectifEquipe,RegistrePositionDetailArticlePrelevementUniteFonds,RegistrePositionMoyenTransportPrelevement,RegistrePositionEtatStockPrelevement,RegistrePositionAutre2,RegistrePositionAutre3:RRegistrePositionArchives;
begin

FSPrelevement.TimerArchivePrelevement.Enabled:=false;

if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,PositionPrelevement)=true)then
begin
     Showmessage('Le Prélevement est déja archivé !');
     Exit;
end;

if(FSPrelevement.EditModifierPrelevement.Text='')then
begin
     RegistrePositionAutre2.PositionArchiveBegin:=0;
     RegistrePositionAutre2.PositionArchiveEnd:=0;

     RegistrePositionAutre3.PositionArchiveBegin:=0;
     RegistrePositionAutre3.PositionArchiveEnd:=0;

     NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
     OKPrelevementArchiveAvecSucce:=false;

     TPrelevementCopie:=RemplireTPrelevement(ExerciceAnnee,FSMenuPrincipal.RBRemplireTPrelevementNewExercice,ArrayIndexPrelevementMatricule);

for E:=1 to FSPrelevement.TableauEffectifEquipeArchivage.RowCount-1 do
begin
     if(FSPrelevement.OperationPrelevement.Caption=FSPrelevement.BitAnnulerPrelevement.Caption)then
     begin
          DeleteFPrelevement(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text),Confirme);
          DeleteAllFPrelevementCompteur(Confirme);
          DeleteAllFPrelevementUniteFonds(Confirme);
          DeleteAllFDetailArticlePrelevementUniteFonds(Confirme);
          DeleteAllFRegistreAffectationEffectifEquipe(Confirme);
          FSPrelevement.Close;
          NowPrelevement;
     end;

     if(FSPrelevement.OperationPrelevement.Caption=FSPrelevement.BitArchiverPrelevement.Caption)then
     begin
          OpenFParc(RParc);
          ChArchivePrelevementCompteur:=RParc.Parcours+'\'+Exercice+'FArchivePrelevementCompteur';
          assignfile(FArchivePrelevementCompteur,ChArchivePrelevementCompteur);
          try
          if FileExists(ChArchivePrelevementCompteur)then
          Reset(FArchivePrelevementCompteur)
          else Rewrite(FArchivePrelevementCompteur);
          Seek(FArchivePrelevementCompteur,0);
          i:=0;
          while not eof(FArchivePrelevementCompteur)do
          begin
               read(FArchivePrelevementCompteur,RArchivePrelevementCompteur);
               i:=i+1;
          end;

          OpenFParc(RParc);
          ChPrelevementCompteur:=RParc.Parcours+'\'+Exercice+'FPrelevementCompteur';
          assignfile(FPrelevementCompteur,ChPrelevementCompteur);
          try
          if FileExists(ChPrelevementCompteur)then
          Reset(FPrelevementCompteur)
          else Rewrite(FPrelevementCompteur);
          Seek(FPrelevementCompteur,0);
          while not eof(FPrelevementCompteur)do
          begin
               read(FPrelevementCompteur,RPrelevementCompteur);
               if(RPrelevementCompteur.Matricule=FSPrelevement.TableauEffectifEquipeArchivage.Cells[3,E])then
               begin
                    if(NumPrelevement='')then NumPrelevement:=inttostr(RPrelevementCompteur.NumPrelevement);
                    Seek(FArchivePrelevementCompteur,i);
                    write(FArchivePrelevementCompteur,RPrelevementCompteur);
                    i:=i+1;

                    if(RPrelevementCompteur.ValeurMouvement>0)then
                    begin
                         QuantiteAOperer:=RPrelevementCompteur.ValeurMouvement;
                         RStockArticleCopie:=ChercherStockArticle('Article',FSPrelevement.EditNumStructure.Text,RPrelevementCompteur.CodeArticle,'',OKStockRecherche,RubriqueRecherche);
                         SigneMouvement:='+';
                         ProcMiseAJourStockArticle('',FSPrelevement.EditNumStructure.Text,RPrelevementCompteur.CodeArticle,'Article',SigneMouvement,QuantiteAOperer,RStockArticleCopie.CoutUnitaire,NbrNewArticle,NbrChargeArticle,CoutUnitaire,NbrNewArticle,NbrChargeArticle,OKMiseAJour);
                    end;

                    if(RPrelevementCompteur.ValeurPrelevement>0)then
                    begin
                         RCompteurCopie:=ChercherCompteur(RPrelevementCompteur.NumCompteur);

                         if(RCompteurCopie.TypeIndicePrelevement='Stock restant.')then
                         begin
                              QuantiteAOperer:=RPrelevementCompteur.ValeurInitiale+RPrelevementCompteur.ValeurMouvement-RPrelevementCompteur.ValeurPrelevement;
                         end;

                         if(RCompteurCopie.TypeIndicePrelevement='Stock Sortant.')then
                         begin
                              QuantiteAOperer:=RPrelevementCompteur.ValeurPrelevement;
                         end;

                         if(RCompteurCopie.TypeIndicePrelevement='Cumul des Sorties.')then
                         begin
                              QuantiteAOperer:=RPrelevementCompteur.ValeurPrelevement-RPrelevementCompteur.ValeurInitiale;
                         end;

                         SigneMouvement:='-';
                         ProcMiseAJourStockArticle('',FSPrelevement.EditNumStructure.Text,RPrelevementCompteur.CodeArticle,'Article',SigneMouvement,QuantiteAOperer,RPrelevementCompteur.PrixPrelevement,NbrNewArticle,NbrChargeArticle,CoutUnitaire,NbrNewArticle,NbrChargeArticle,OKMiseAJour);
                    end;
               end;
          end;
          finally
          CloseFile(FPrelevementCompteur);
          end;

          finally
          CloseFile(FArchivePrelevementCompteur);
          end;

          ///////////////////////////////////////////////////////////////////////////
          OpenFParc(RParc);
          ChArchivePrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+'FArchivePrelevementUniteFonds';
          assignfile(FArchivePrelevementUniteFonds,ChArchivePrelevementUniteFonds);
          try
          if FileExists(ChArchivePrelevementUniteFonds)then
          Reset(FArchivePrelevementUniteFonds)
          else Rewrite(FArchivePrelevementUniteFonds);
          Seek(FArchivePrelevementUniteFonds,0);
          i:=0;
          while not eof(FArchivePrelevementUniteFonds)do
          begin
               read(FArchivePrelevementUniteFonds,RArchivePrelevementUniteFonds);
               i:=i+1;
          end;

          EcartNumPUF:='';

          OpenFParc(RParc);
          ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+'FPrelevementUniteFonds';
          assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
          try
          if FileExists(ChPrelevementUniteFonds)then
          Reset(FPrelevementUniteFonds)
          else Rewrite(FPrelevementUniteFonds);
          Seek(FPrelevementUniteFonds,0);
          while not eof(FPrelevementUniteFonds)do
          begin
               read(FPrelevementUniteFonds,RPrelevementUniteFonds);

               if(RPrelevementUniteFonds.Matricule=FSPrelevement.TableauEffectifEquipeArchivage.Cells[3,E])
               then
               begin
                    if(NumPrelevement='')then NumPrelevement:=inttostr(RPrelevementUniteFonds.NumPrelevement);
                    if(EcartNumPUF='')then
                    begin
                         if(i>=RPrelevementUniteFonds.NumPrelevementUniteFonds)
                         then EcartNumPUF:=inttostr(i-RPrelevementUniteFonds.NumPrelevementUniteFonds)
                         else EcartNumPUF:='0';
                    end;
                    Seek(FArchivePrelevementUniteFonds,i);
                    RPrelevementUniteFonds.NumPrelevementUniteFonds:=RPrelevementUniteFonds.NumPrelevementUniteFonds+strtointeger(EcartNumPUF);
                    write(FArchivePrelevementUniteFonds,RPrelevementUniteFonds);
               i:=i+1;
               end;           
          end;
          finally
          CloseFile(FPrelevementUniteFonds);
          end;

          finally
          CloseFile(FArchivePrelevementUniteFonds);
          end;

          ///////////////////////////////////////////////////////////////////////////
          OpenFParc(RParc);
          ChArchivePrelevementEffectifEquipe:=RParc.Parcours+'\'+Exercice+'FArchivePrelevementEffectifEquipe';
          assignfile(FArchivePrelevementEffectifEquipe,ChArchivePrelevementEffectifEquipe);
          try
          if FileExists(ChArchivePrelevementEffectifEquipe)then
          Reset(FArchivePrelevementEffectifEquipe)
          else Rewrite(FArchivePrelevementEffectifEquipe);
          Seek(FArchivePrelevementEffectifEquipe,0);
          i:=0;
          while not eof(FArchivePrelevementEffectifEquipe)do
          begin
               read(FArchivePrelevementEffectifEquipe,RArchivePrelevementEffectifEquipe);
               i:=i+1;
          end;

          OpenFParc(RParc);
          ChPrelevementEffectifEquipe:=RParc.Parcours+'\'+Exercice+'FPrelevementEffectifEquipe';
          assignfile(FPrelevementEffectifEquipe,ChPrelevementEffectifEquipe);
          try
          if FileExists(ChPrelevementEffectifEquipe)then
          Reset(FPrelevementEffectifEquipe)
          else Rewrite(FPrelevementEffectifEquipe);
          Seek(FPrelevementEffectifEquipe,0);
          while not eof(FPrelevementEffectifEquipe)do
          begin
               read(FPrelevementEffectifEquipe,RPrelevementEffectifEquipe);
               if(RPrelevementEffectifEquipe.Matricule=FSPrelevement.TableauEffectifEquipeArchivage.Cells[3,E])then
               begin
                    Seek(FArchivePrelevementEffectifEquipe,i);
                    RPrelevementEffectifEquipe.NumPrelevementEffectifEquipe:=i;
                    write(FArchivePrelevementEffectifEquipe,RPrelevementEffectifEquipe);
                    i:=i+1;
               end;
          end;
          finally
          CloseFile(FPrelevementEffectifEquipe);
          end;

          finally
          CloseFile(FArchivePrelevementEffectifEquipe);
          end;

          /////////////////////////////////////// xxxxxxx ////////////////////////////////////
          OpenFParc(RParc);
          ChArchiveRegistreAffectationEffectifEquipe:=RParc.Parcours+'\'+Exercice+'FArchiveRegistreAffectationEffectifEquipe';
          assignfile(FArchiveRegistreAffectationEffectifEquipe,ChArchiveRegistreAffectationEffectifEquipe);
          try
          if FileExists(ChArchiveRegistreAffectationEffectifEquipe)then
          Reset(FArchiveRegistreAffectationEffectifEquipe)
          else Rewrite(FArchiveRegistreAffectationEffectifEquipe);
          Seek(FArchiveRegistreAffectationEffectifEquipe,0);
          i:=0;
          while not eof(FArchiveRegistreAffectationEffectifEquipe)do
          begin
               read(FArchiveRegistreAffectationEffectifEquipe,RArchiveRegistreAffectationEffectifEquipe);
               i:=i+1;
          end;

          OpenFParc(RParc);
          ChRegistreAffectationEffectifEquipe:=RParc.Parcours+'\'+Exercice+'FRegistreAffectationEffectifEquipe';
          assignfile(FRegistreAffectationEffectifEquipe,ChRegistreAffectationEffectifEquipe);
          try
          if FileExists(ChRegistreAffectationEffectifEquipe)then
          Reset(FRegistreAffectationEffectifEquipe)
          else Rewrite(FRegistreAffectationEffectifEquipe);
          Seek(FRegistreAffectationEffectifEquipe,0);
          while not eof(FRegistreAffectationEffectifEquipe)do
          begin
               read(FRegistreAffectationEffectifEquipe,RRegistreAffectationEffectifEquipe);
               if(RRegistreAffectationEffectifEquipe.Matricule=FSPrelevement.TableauEffectifEquipeArchivage.Cells[3,E])then
               begin
                    Seek(FArchiveRegistreAffectationEffectifEquipe,i);
                    RRegistreAffectationEffectifEquipe.NumAffectationEffectifEquipe:=i;
                    write(FArchiveRegistreAffectationEffectifEquipe,RRegistreAffectationEffectifEquipe);
                    i:=i+1;
               end;
          end;
          finally
          CloseFile(FRegistreAffectationEffectifEquipe);
          end;

          finally
          CloseFile(FArchiveRegistreAffectationEffectifEquipe);
          end;
          ////////////////////////////////////////////////////////////////////////

          /////////////////////////////////////// xxxxxxx ////////////////////////////////////
          OpenFParc(RParc);
          ChArchiveDetailArticlePrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+'FArchiveDetailArticlePrelevementUniteFonds';
          assignfile(FArchiveDetailArticlePrelevementUniteFonds,ChArchiveDetailArticlePrelevementUniteFonds);
          try
          if FileExists(ChArchiveDetailArticlePrelevementUniteFonds)then
          Reset(FArchiveDetailArticlePrelevementUniteFonds)
          else Rewrite(FArchiveDetailArticlePrelevementUniteFonds);
          Seek(FArchiveDetailArticlePrelevementUniteFonds,0);
          i:=0;
          while not eof(FArchiveDetailArticlePrelevementUniteFonds)do
          begin
               read(FArchiveDetailArticlePrelevementUniteFonds,RArchiveDetailArticlePrelevementUniteFonds);
               i:=i+1;
          end;

          OpenFParc(RParc);
          ChDetailArticlePrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+'FDetailArticlePrelevementUniteFonds';
          assignfile(FDetailArticlePrelevementUniteFonds,ChDetailArticlePrelevementUniteFonds);
          try
          if FileExists(ChDetailArticlePrelevementUniteFonds)then
          Reset(FDetailArticlePrelevementUniteFonds)
          else Rewrite(FDetailArticlePrelevementUniteFonds);
          Seek(FDetailArticlePrelevementUniteFonds,0);
          while not eof(FDetailArticlePrelevementUniteFonds)do
          begin
               read(FDetailArticlePrelevementUniteFonds,RDetailArticlePrelevementUniteFonds);
               if(RDetailArticlePrelevementUniteFonds.Matricule=FSPrelevement.TableauEffectifEquipeArchivage.Cells[3,E])then
               begin
                    if(RDetailArticlePrelevementUniteFonds.QuantiteJustifier<>0)then
                    begin
                         Seek(FArchiveDetailArticlePrelevementUniteFonds,i);
                         RDetailArticlePrelevementUniteFonds.PositionDetailArticlePrelevementUniteFonds:=i;
                         RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds:=RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds+strtointeger(EcartNumPUF);
                         write(FArchiveDetailArticlePrelevementUniteFonds,RDetailArticlePrelevementUniteFonds);
                         i:=i+1;
                    end;
               end;
          end;
          finally
          CloseFile(FDetailArticlePrelevementUniteFonds);
          end;

          finally
          CloseFile(FArchiveDetailArticlePrelevementUniteFonds);
          end;
          ////////////////////////////////////////////////////////////////////////

          /////////////////////////////////////// Archive RegistreEtatStockPrelevement ////////////////////////////////////
          OpenFParc(RParc);
          ChArchiveRegistreEtatStockPrelevement:=RParc.Parcours+'\'+Exercice+'FArchiveRegistreEtatStockPrelevement';
          assignfile(FArchiveRegistreEtatStockPrelevement,ChArchiveRegistreEtatStockPrelevement);
          try
          if FileExists(ChArchiveRegistreEtatStockPrelevement)then
          Reset(FArchiveRegistreEtatStockPrelevement)
          else Rewrite(FArchiveRegistreEtatStockPrelevement);
          Seek(FArchiveRegistreEtatStockPrelevement,0);
          i:=0;
          while not eof(FArchiveRegistreEtatStockPrelevement)do
          begin
               read(FArchiveRegistreEtatStockPrelevement,RArchiveRegistreEtatStockPrelevement);
               i:=i+1;
          end;

          OpenFParc(RParc);
          ChRegistreEtatStockPrelevement:=RParc.Parcours+'\'+Exercice+'FRegistreEtatStockPrelevement';
          assignfile(FRegistreEtatStockPrelevement,ChRegistreEtatStockPrelevement);
          try
          if FileExists(ChRegistreEtatStockPrelevement)then
          Reset(FRegistreEtatStockPrelevement)
          else Rewrite(FRegistreEtatStockPrelevement);
          Seek(FRegistreEtatStockPrelevement,0);
          while not eof(FRegistreEtatStockPrelevement)do
          begin
               read(FRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);
               if(RRegistreEtatStockPrelevement.Matricule=FSPrelevement.TableauEffectifEquipeArchivage.Cells[3,E])then
               begin
                    Seek(FArchiveRegistreEtatStockPrelevement,i);
                    RRegistreEtatStockPrelevement.PositionRegistreEtatStockPrelevement:=i;
                    write(FArchiveRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);
                    i:=i+1;
               end;
          end;
          finally
          CloseFile(FRegistreEtatStockPrelevement);
          end;

          finally
          CloseFile(FArchiveRegistreEtatStockPrelevement);
          end;
          ////////////////////////////////////////////////////////////////////////

          /////////////////////////////////////// MoyenTransport ////////////////////////////////////
          OpenFParc(RParc);                                    
          ChArchiveMoyenTransport:=RParc.Parcours+'\'+Exercice+'FArchiveMoyenTransportPrélèvement';
          assignfile(FArchiveMoyenTransport,ChArchiveMoyenTransport);
          try
          if FileExists(ChArchiveMoyenTransport)then
          Reset(FArchiveMoyenTransport)
          else Rewrite(FArchiveMoyenTransport);
          Seek(FArchiveMoyenTransport,0);
          i:=0;
          while not eof(FArchiveMoyenTransport)do
          begin
               read(FArchiveMoyenTransport,RArchiveMoyenTransport);
               i:=i+1;
          end;

          OpenFParc(RParc);
          ChMoyenTransport:=RParc.Parcours+'\'+Exercice+'FMoyenTransportPrélèvement';
          assignfile(FMoyenTransport,ChMoyenTransport);
          try
          if FileExists(ChMoyenTransport)then
          Reset(FMoyenTransport)
          else Rewrite(FMoyenTransport);
          Seek(FMoyenTransport,0);
          while not eof(FMoyenTransport)do
          begin
               read(FMoyenTransport,RMoyenTransport);
               if(RMoyenTransport.MatriculeEffectif=FSPrelevement.TableauEffectifEquipeArchivage.Cells[3,E])then
               begin
                    if(RMoyenTransport.TypeFiche<>'')then
                    begin
                         Seek(FArchiveMoyenTransport,i);
                         RMoyenTransport.PositionMoyenTransport:=i;
                         RMoyenTransport.NumFiche:=RMoyenTransport.NumFiche+strtointeger(EcartNumPUF);
                         write(FArchiveMoyenTransport,RMoyenTransport);
                         i:=i+1;
                    end;
               end;
          end;
          finally
          CloseFile(FMoyenTransport);
          end;

          finally
          CloseFile(FArchiveMoyenTransport);
          end;
          ////////////////////////////////////////////////////////////////////////

          DataArchivePrelevement(strtointeger(NumPrelevement),ExerciceAnnee,'',FSPrelevement.TableauEffectifEquipeArchivage.Cells[3,E],false,true,TPrelevementCopie,ArrayIndexPrelevementMatricule,MontantPrelevement,MontantUnitesFonds,MontantFondRoulement,SoldePrelevement,RegistrePositionPrelevementCompteur,RegistrePositionPrelevementUniteFonds,RegistrePositionPrelevementEffectifEquipe,RegistrePositionRegistreAffectationEffectifEquipe,RegistrePositionDetailArticlePrelevementUniteFonds,RegistrePositionMoyenTransportPrelevement,RegistrePositionEtatStockPrelevement,RegistrePositionAutre2,RegistrePositionAutre3,PositionPrelevement,OKPrelevementArchiveAvecSucce);

          if(OKPrelevementArchiveAvecSucce=true)then
          begin
                TypeProcesPrelevement:='Business';
                FichierConcernePrelevement:='FPrelevement';
                AdressePrelevement:='';
                if not(FunctionAdresseProces(TypeProcesPrelevement,FichierConcernePrelevement,'',AdressePrelevement,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                begin
                     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcernePrelevement+' recherché !');
                end;

                ChPrelevement:=AdressePrelevement;
                assignfile(FPrelevement,ChPrelevement);
                try
                if FileExists(ChPrelevement)then
                Reset(FPrelevement)
                else Rewrite(FPrelevement);
                Seek(FPrelevement,0);
                i:=0;
                while not eof(FPrelevement)do
                begin
                     read(FPrelevement,RPrelevement);
                     if(inttostr(RPrelevement.NumPrelevement)=NumPrelevement)and(RPrelevement.Matricule=FSPrelevement.TableauEffectifEquipeArchivage.Cells[3,E])then
                     begin
                          RPrelevement.RegistrePositionPrelevementCompteur.PositionArchiveBegin:=RegistrePositionPrelevementCompteur.PositionArchiveBegin;
                          RPrelevement.RegistrePositionPrelevementCompteur.PositionArchiveEnd:=RegistrePositionPrelevementCompteur.PositionArchiveEnd;

                          RPrelevement.RegistrePositionPrelevementUniteFonds.PositionArchiveBegin:=RegistrePositionPrelevementUniteFonds.PositionArchiveBegin;
                          RPrelevement.RegistrePositionPrelevementUniteFonds.PositionArchiveEnd:=RegistrePositionPrelevementUniteFonds.PositionArchiveEnd;

                          RPrelevement.RegistrePositionPrelevementEffectifEquipe.PositionArchiveBegin:=RegistrePositionPrelevementEffectifEquipe.PositionArchiveBegin;
                          RPrelevement.RegistrePositionPrelevementEffectifEquipe.PositionArchiveEnd:=RegistrePositionPrelevementEffectifEquipe.PositionArchiveEnd;

                          RPrelevement.RegistrePositionRegistreAffectationEffectifEquipe.PositionArchiveBegin:=RegistrePositionRegistreAffectationEffectifEquipe.PositionArchiveBegin;
                          RPrelevement.RegistrePositionRegistreAffectationEffectifEquipe.PositionArchiveEnd:=RegistrePositionRegistreAffectationEffectifEquipe.PositionArchiveEnd;

                          RPrelevement.RegistrePositionDetailArticlePrelevementUniteFonds.PositionArchiveBegin:=RegistrePositionDetailArticlePrelevementUniteFonds.PositionArchiveBegin;
                          RPrelevement.RegistrePositionDetailArticlePrelevementUniteFonds.PositionArchiveEnd:=RegistrePositionDetailArticlePrelevementUniteFonds.PositionArchiveEnd;

                          RPrelevement.RegistrePositionMoyenTransportPrelevement.PositionArchiveBegin:=RegistrePositionMoyenTransportPrelevement.PositionArchiveBegin;
                          RPrelevement.RegistrePositionMoyenTransportPrelevement.PositionArchiveEnd:=RegistrePositionMoyenTransportPrelevement.PositionArchiveEnd;

                          RPrelevement.RegistrePositionEtatStockPrelevement.PositionArchiveBegin:=RegistrePositionEtatStockPrelevement.PositionArchiveBegin;
                          RPrelevement.RegistrePositionEtatStockPrelevement.PositionArchiveEnd:=RegistrePositionEtatStockPrelevement.PositionArchiveEnd;

                          RPrelevement.RegistrePositionAutre2.PositionArchiveBegin:=RegistrePositionAutre2.PositionArchiveBegin;
                          RPrelevement.RegistrePositionAutre2.PositionArchiveEnd:=RegistrePositionAutre2.PositionArchiveEnd;

                          RPrelevement.RegistrePositionAutre3.PositionArchiveBegin:=RegistrePositionAutre3.PositionArchiveBegin;
                          RPrelevement.RegistrePositionAutre3.PositionArchiveEnd:=RegistrePositionAutre3.PositionArchiveEnd;

                          RPrelevement.Archiver:=true;
                          RPrelevement.MontantPrelevement:=MontantPrelevement;
                          RPrelevement.MontantFondRoulement:=MontantFondRoulement;
                          RPrelevement.MontantUnitesFonds:=MontantUnitesFonds;
                          RPrelevement.SoldePrelevement:=SoldePrelevement;
                          Seek(FPrelevement,i);
                          write(FPrelevement,RPrelevement);
                     end;
                i:=i+1;
                end;
                finally
                CloseFile(FPrelevement);
                end;
          end;
     end;
end;

    if(OKPrelevementArchiveAvecSucce=true)then TruncateFicheInitialePrelevement else showmessage('Anomalie ! Problèmes d''archivage !');
end;

//////////////////////////////// Mise à jour du stock //////////////////////////

FSPrelevement.EditModifierPrelevement.Text:='';
FSPrelevement.AffichePatienterArchivePrelevement.Visible:=false;
FSPrelevement.AfficheArchivePrelevement.Visible:=false;
end;

procedure TFSPrelevement.TableauPrelevementUniteFondsEnter(
  Sender: TObject);
begin
     FSPrelevement.TimerAfficheTiers.Enabled:=false;
     FSPrelevement.TimerLancerAfficheTiers.Enabled:=false;
     FSPrelevement.TimerLancerAfficheTiers.Enabled:=true;
end;

procedure TFSPrelevement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

procedure TFSPrelevement.EditCodeTiersEnter(Sender: TObject);
begin
     FSPrelevement.AfficheRechercheTiersPrelevement.Left:=FSPrelevement.TableauTiers.Left;
     FSPrelevement.AfficheRechercheTiersPrelevement.Top:=FSPrelevement.TableauTiers.Top-FSPrelevement.AfficheRechercheTiersPrelevement.Height-2;

     FSPrelevement.AfficheRechercheTiersPrelevement.Visible:=true;
     FSPrelevement.EditRechercheNomPrenomTiers.Text:='';
     FSPrelevement.EditRechercheNomPrenomTiers.SetFocus;
end;

procedure TFSPrelevement.BitValiderEcartClick(Sender: TObject);
begin

     FSPrelevement.BitImprimeEtatPrelevement.Enabled:=true;
     FSPrelevement.AfficheValiderEcart.Color:=ClYellow;

     if(FSPrelevement.AfficheDataCompteur.Color=clRed)then FSPrelevement.AfficheDataCompteur.Color:=ClYellow;
     if(FSPrelevement.AfficheDataUnitesFonds.Color=clRed)then FSPrelevement.AfficheDataUnitesFonds.Color:=ClYellow;
     if(FSPrelevement.AfficheSolde.Color=clRed)then FSPrelevement.AfficheSolde.Color:=ClYellow;
end;

procedure TFSPrelevement.RBAutoriseModificationUnitesFondsClick(
  Sender: TObject);
begin
     if(FSPrelevement.RBAutoriseModificationUnitesFonds.Checked=true)then FSPrelevement.RBArchiveModifier.Checked:=true;
end;

procedure TFSPrelevement.BitPrintClick(Sender: TObject);
var  E:integer;  NumPrelevement,NumPrelevementFin,NumStructure,Matricule:string;
begin
     for E:=1 to FSPrelevement.TableauEffectifEquipeArchivage.RowCount-1 do
     begin
          Matricule:=FSPrelevement.TableauEffectifEquipeArchivage.Cells[3,E];

          if(ControleAttributionArticleAuxUnitesFonds(FSPrelevement.TableauControleAttributionArticleAuxUnitesFonds,FSPrelevement.EditNumPrelevementCompteur.Text,Matricule,'')=true)then
          begin
               FSPrelevement.TableauControleAttributionArticleAuxUnitesFonds.Visible:=true;
               FSPrelevement.EditMatricule.Text:=Matricule;
               NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
               NumPrelevementFin:='';
               AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
               FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,NumStructure);

               FSPrelevement.EditNumStructure.Text:=NumStructure;
               FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
               ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);

               Exit;
          end;
     end;

     FSPrelevement.AfficheTravauxPrelevementAchever.Visible:=false;
     if(FSPrelevement.RBArchiveModifier.Checked=true)
     then ControleEtatPrelevement;

     ExecuterMiseAJourDetailArticleDiversTiers;

     NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
     NumPrelevementFin:='';
     AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
     FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,NumStructure);

     FSPrelevement.EditNumStructure.Text:=NumStructure;
     FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
     ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);

     MiseAJourPrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,strtoreal(FSPrelevement.EditMontantCompteur.Text),strtoreal(FSPrelevement.EditFondRoulement.Text),strtoreal(FSPrelevement.EditMontantUniteFonds.Text),strtoreal(FSPrelevement.EditSoldePrelevement.Text),true);
end;

procedure TFSPrelevement.BitSaveClick(Sender: TObject);
var   E:integer;  NumPrelevement,NumPrelevementFin,NumStructure,Matricule:string;
begin
     for E:=1 to FSPrelevement.TableauEffectifEquipeArchivage.RowCount-1 do
     begin
          Matricule:=FSPrelevement.TableauEffectifEquipeArchivage.Cells[3,E];

          if(ControleAttributionArticleAuxUnitesFonds(FSPrelevement.TableauControleAttributionArticleAuxUnitesFonds,FSPrelevement.EditNumPrelevementCompteur.Text,Matricule,'')=true)then
          begin
               FSPrelevement.TableauControleAttributionArticleAuxUnitesFonds.Visible:=true;
               FSPrelevement.EditMatricule.Text:=Matricule;
               NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
               NumPrelevementFin:='';
               AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
               FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,NumStructure);

               FSPrelevement.EditNumStructure.Text:=NumStructure;
               FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
               ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);

               Exit;
          end;
     end;

     FSPrelevement.AfficheTravauxPrelevementAchever.Visible:=false;
     if(FSPrelevement.RBArchiveModifier.Checked=true)
     then ControleEtatPrelevement;

     ExecuterMiseAJourDetailArticleDiversTiers;

     NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
     NumPrelevementFin:='';
     AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
     FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,NumStructure);

     FSPrelevement.EditNumStructure.Text:=NumStructure;
     FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
     ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);

     FSPrelevement.AfficheArchivePrelevement.Visible:=true;
     FSPrelevement.AffichePatienterArchivePrelevement.Visible:=false;
     FSPrelevement.OperationPrelevement.Kind:=FSPrelevement.BitArchiverPrelevement.Kind;
     FSPrelevement.OperationPrelevement.Caption:=FSPrelevement.BitArchiverPrelevement.Caption;
     FSPrelevement.AfficheArchivePrelevement.Caption:='Vouler vous '+FSPrelevement.BitArchiverPrelevement.Caption+' ?';

     MiseAJourPrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,strtoreal(FSPrelevement.EditMontantCompteur.Text),strtoreal(FSPrelevement.EditFondRoulement.Text),strtoreal(FSPrelevement.EditMontantUniteFonds.Text),strtoreal(FSPrelevement.EditSoldePrelevement.Text),true);
end;


Function ControleAttributionArticleAuxUnitesFonds(TableauDetailUniteFonds:TStringGrid; NumPrelevementCompteur,Matricule,NumUniteFonds:string):boolean;
var i,C,NbrUniteFonds:integer; PositionPrelevement,FichierConcerne,NotRow,NotCol:string;
    ValeurUF,ValeurGlobale,Ecart:real;  OKPrelevementControle:boolean;
begin
     ControleAttributionArticleAuxUnitesFonds:=false;

     if(NumPrelevementCompteur<>'')and(Matricule<>'')then
     begin
          TableauDetailUniteFonds.RowCount:=2;
          TableauDetailUniteFonds.Rows[1].Text:='';

          TableauDetailUniteFonds.ColCount:=12;
          TableauDetailUniteFonds.Cols[1].Text:='NumPUF';
          TableauDetailUniteFonds.Cols[2].Text:='TypeProces';
          TableauDetailUniteFonds.Cols[3].Text:='FichierConcerne';
          TableauDetailUniteFonds.Cols[4].Text:='CodeTiers';
          TableauDetailUniteFonds.Cols[5].Text:='Tiers';
          TableauDetailUniteFonds.Cols[6].Text:='ModePaiement';
          TableauDetailUniteFonds.Cols[7].Text:='NumPiece';
          TableauDetailUniteFonds.Cols[8].Text:='Domiciliation';
          TableauDetailUniteFonds.Cols[9].Text:='Valeure UF';
          TableauDetailUniteFonds.Cols[10].Text:='Valeure Article';
          TableauDetailUniteFonds.Cols[11].Text:='N°UintsFonds';

          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevementCompteur),ExerciceAnnee,Matricule,PositionPrelevement);
          if(RPrelevement.Archiver=false)
          then FichierConcerne:='FPrelevementUniteFonds'
          else FichierConcerne:='FArchivePrelevementUniteFonds';

          OpenFParc(RParc);
          ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+FichierConcerne;
          assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
          try
          if FileExists(ChPrelevementUniteFonds)then
          Reset(FPrelevementUniteFonds)
          else Rewrite(FPrelevementUniteFonds);
          Seek(FPrelevementUniteFonds,0);
          i:=0;
          NbrUniteFonds:=0;
          while not eof(FPrelevementUniteFonds)do
          begin
               i:=i+1;
               read(FPrelevementUniteFonds,RPrelevementUniteFonds);

               if(RPrelevementUniteFonds.NumPrelevement=strtointeger(NumPrelevementCompteur))
               then OKPrelevementControle:=true
               else OKPrelevementControle:=false;

               if(OKPrelevementControle=true)then
               begin
                    if(Matricule<>'')then
                    begin
                         if(RPrelevementUniteFonds.Matricule=Matricule)
                         then OKPrelevementControle:=true
                         else OKPrelevementControle:=false;
                    end;
               end;

               if(OKPrelevementControle=true)then
               begin
                    if(NumUniteFonds<>'')then
                    begin
                         if(RPrelevementUniteFonds.NumUniteFonds=strtointeger(NumUniteFonds))
                         then OKPrelevementControle:=true
                         else OKPrelevementControle:=false;
                    end;
               end;

               if(OKPrelevementControle=true)
               and(RPrelevementUniteFonds.ValeurPrecise=false)
               and(RPrelevementUniteFonds.ValeurPrelevement<>0)
               then
               begin
                    ValeurArticlesAttributionAuxUnitesFonds(NumPrelevementCompteur,Matricule,inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds),'',RPrelevementUniteFonds.CodeTiers,true,ValeurUF,ValeurGlobale);
                    Ecart:=RPrelevementUniteFonds.ValeurPrelevement-ValeurUF;
                    if(Ecart<0)then Ecart:=Ecart*(-1);

                    if(Ecart>strtoreal(FSPrelevement.EditEcartAutorise.Text))then
                    begin
                         NbrUniteFonds:=NbrUniteFonds+1;
                         TableauDetailUniteFonds.Rows[NbrUniteFonds].Text:=inttostr(NbrUniteFonds);
                         TableauDetailUniteFonds.Cells[1,NbrUniteFonds]:=inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds);
                         TableauDetailUniteFonds.Cells[2,NbrUniteFonds]:=RPrelevementUniteFonds.TypeProces;
                         TableauDetailUniteFonds.Cells[3,NbrUniteFonds]:=RPrelevementUniteFonds.FichierConcerne;
                         TableauDetailUniteFonds.Cells[4,NbrUniteFonds]:=RPrelevementUniteFonds.CodeTiers;
                         TableauDetailUniteFonds.Cells[5,NbrUniteFonds]:=ImporteDataProcesTiers(RPrelevementUniteFonds.TypeProces,RPrelevementUniteFonds.FichierConcerne,RPrelevementUniteFonds.CodeTiers,PositionTiersRecherche);
                         TableauDetailUniteFonds.Cells[6,NbrUniteFonds]:=RPrelevementUniteFonds.ModePaiement;
                         TableauDetailUniteFonds.Cells[7,NbrUniteFonds]:=RPrelevementUniteFonds.NumPiece;
                         TableauDetailUniteFonds.Cells[8,NbrUniteFonds]:=RPrelevementUniteFonds.Domiciliation;
                         TableauDetailUniteFonds.Cells[9,NbrUniteFonds]:=Vergule(floattostr(RPrelevementUniteFonds.ValeurPrelevement),'2','C','');
                         TableauDetailUniteFonds.Cells[10,NbrUniteFonds]:=Vergule(floattostr(ValeurUF),'2','C','');
                         TableauDetailUniteFonds.Cells[11,NbrUniteFonds]:=inttostr(RPrelevementUniteFonds.NumUniteFonds);
                    end;
               end;
          end;
          finally
          CloseFile(FPrelevementUniteFonds);
          end;

          if(NbrUniteFonds>0)
          then
          begin
               TableauDetailUniteFonds.RowCount:=NbrUniteFonds+1;
               NotRow:='';
               NotCol:='2;6-8';
               for C:=1 to TableauDetailUniteFonds.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then TableauDetailUniteFonds.ColWidths[C]:=0;
               AjusterColWidth(TableauDetailUniteFonds,NotRow,NotCol);
               ControleAttributionArticleAuxUnitesFonds:=true;
          end
          else
          begin
               TableauDetailUniteFonds.RowCount:=2;
               ControleAttributionArticleAuxUnitesFonds:=false;
          end;
     end;
end;

Procedure ValeurArticlesAttributionAuxUnitesFonds(NumPrelevementCompteur,Matricule,NumPrelevementUF,CodeArticle,CodeTiers:string; InclureDivers:boolean; var ValeurUF,ValeurGlobale:real);
var NbrUniteFonds:integer; PositionPrelevement,FichierConcerneVAUF:string;  OKPrelevementUF:boolean;  QuantiteActuelle:real;
begin
     RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevementCompteur),ExerciceAnnee,Matricule,PositionPrelevement);
     if(RPrelevement.Archiver=false)
     then FichierConcerneVAUF:='FDetailArticlePrelevementUniteFonds'
     else FichierConcerneVAUF:='FArchiveDetailArticlePrelevementUniteFonds';

     OpenFParc(RParc);
     ChDetailArticlePrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+FichierConcerneVAUF;
     assignfile(FDetailArticlePrelevementUniteFonds,ChDetailArticlePrelevementUniteFonds);
     try
     if FileExists(ChDetailArticlePrelevementUniteFonds)then
     Reset(FDetailArticlePrelevementUniteFonds)
     else Rewrite(FDetailArticlePrelevementUniteFonds);
     Seek(FDetailArticlePrelevementUniteFonds,0);
     ValeurUF:=0;
     ValeurGlobale:=0;
     while not eof(FDetailArticlePrelevementUniteFonds)do
     begin
          read(FDetailArticlePrelevementUniteFonds,RDetailArticlePrelevementUniteFonds);

          QuantiteActuelle:=RDetailArticlePrelevementUniteFonds.QuantiteJustifier;

          if(InclureDivers=false)then
          begin
               if(RDetailArticlePrelevementUniteFonds.CodeTiers<>'Divers')
               then OKPrelevementUF:=true
               else OKPrelevementUF:=false;
          end
          else OKPrelevementUF:=true;

          if(OKPrelevementUF=true)then
          begin
               if(NumPrelevementCompteur<>'')then
               begin
                    if(inttostr(RDetailArticlePrelevementUniteFonds.NumPrelevement)=NumPrelevementCompteur)
                    then OKPrelevementUF:=true
                    else OKPrelevementUF:=false;
               end
               else OKPrelevementUF:=false;
          end;

          if(OKPrelevementUF=true)then
          begin
               if(Matricule<>'')then
               begin
                    if(RDetailArticlePrelevementUniteFonds.Matricule=Matricule)
                    then OKPrelevementUF:=true
                    else OKPrelevementUF:=false;
               end;
          end;

          if(OKPrelevementUF=true)then
          begin
               if(CodeArticle<>'')then
               begin
                    if(RDetailArticlePrelevementUniteFonds.CodeArticle=CodeArticle)
                    then OKPrelevementUF:=true
                    else OKPrelevementUF:=false;
               end;
          end;

          if(OKPrelevementUF=true)then
          begin
               if(CodeTiers<>'')then
               begin
                    if(RDetailArticlePrelevementUniteFonds.CodeTiers=CodeTiers)
                    then OKPrelevementUF:=true
                    else OKPrelevementUF:=false;
               end;
          end;

          if(OKPrelevementUF=true)then
          begin

               ValeurGlobale:=ValeurGlobale+QuantiteActuelle*RDetailArticlePrelevementUniteFonds.PrixUnitaire;

               if(NumPrelevementUF<>'')then
               begin
                    if(RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds=strtointeger(NumPrelevementUF))
                    then OKPrelevementUF:=true
                    else OKPrelevementUF:=false;
               end
               else
               begin
                    OKPrelevementUF:=false;
               end;

               if(OKPrelevementUF=true)
               then ValeurUF:=ValeurUF+QuantiteActuelle*RDetailArticlePrelevementUniteFonds.PrixUnitaire;
          end;
     end;
     finally
     CloseFile(FDetailArticlePrelevementUniteFonds);
     end;
end;


procedure TFSPrelevement.BitBtn1Click(Sender: TObject);
var   R:integer; NumPrelevement,NumPrelevementFin,NumStructure:string;  OKRow:boolean;
begin
     FSPrelevement.AfficheTravauxPrelevementAchever.Visible:=false;
     if(FSPrelevement.RBArchiveModifier.Checked=true)
     then ControleEtatPrelevement;

     ExecuterMiseAJourDetailArticleDiversTiers;

     NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
     NumPrelevementFin:='';
     AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
     FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,NumStructure);

     FSPrelevement.EditNumStructure.Text:=NumStructure;
     FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
     ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);

if(FSPrelevement.BitSave.Visible=true)then
begin
     FSPrelevement.AfficheArchivePrelevement.Visible:=true;
     FSPrelevement.AffichePatienterArchivePrelevement.Visible:=false;
     FSPrelevement.OperationPrelevement.Kind:=FSPrelevement.BitArchiverPrelevement.Kind;
     FSPrelevement.OperationPrelevement.Caption:=FSPrelevement.BitArchiverPrelevement.Caption;
     FSPrelevement.AfficheArchivePrelevement.Caption:='Vouler vous '+FSPrelevement.BitArchiverPrelevement.Caption+' ?';

     MiseAJourPrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,strtoreal(FSPrelevement.EditMontantCompteur.Text),strtoreal(FSPrelevement.EditFondRoulement.Text),strtoreal(FSPrelevement.EditMontantUniteFonds.Text),strtoreal(FSPrelevement.EditSoldePrelevement.Text),true);
end;

if(FSPrelevement.BitPrint.Visible=true)then
begin
     MiseAJourPrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,strtoreal(FSPrelevement.EditMontantCompteur.Text),strtoreal(FSPrelevement.EditFondRoulement.Text),strtoreal(FSPrelevement.EditMontantUniteFonds.Text),strtoreal(FSPrelevement.EditSoldePrelevement.Text),true);
end;

if(FSPrelevement.BitChargementEffectif.Visible=true)then
begin
     if(FSPrelevement.EditSourceCommande.Text='Effectif')then
     begin
           FSPrelevement.TableauChercheEffectif.Visible:=true;
           FSPrelevement.TableauChercheEffectif.Left:=FSPrelevement.EditNomEffectif.Left;
           FSPrelevement.TableauChercheEffectif.Top:=FSPrelevement.EditNomEffectif.Top+FSPrelevement.EditNomEffectif.Height+2;
           ListeEffectifEquipePrelevement(FSPrelevement.TableauChercheEffectif,FSPrelevement.EditNumPrelevementCompteur.Text);
           //ListeEffectifEquipe(FSPrelevement.TableauChercheEffectif,FSPrelevement.EditNumEquipePrelevement.Text);
           FSPrelevement.TableauChercheEffectif.SetFocus;

           R:=1;
           OKRow:=false;
           while(R<=FSPrelevement.TableauChercheEffectif.RowCount-1)and(OKRow=false)do
           begin
                if(FSPrelevement.TableauChercheEffectif.Cells[3,R]=FSPrelevement.EditMatricule.Text)then
                begin
                     FSPrelevement.TableauChercheEffectif.Row:=R;
                     OKRow:=true;
                end;
           R:=R+1;
           end;
     end;

     if(FSPrelevement.EditSourceCommande.Text='Equipe')then
     begin
          FSPrelevement.EditMatricule.Text:='';
          FSPrelevement.EditNomEffectif.Text:='';

          FSPrelevement.TableauChercheEquipe.Visible:=true;
          FSPrelevement.TableauChercheEquipe.Left:=FSPrelevement.EditEquipePrelevement.Left;
          FSPrelevement.TableauChercheEquipe.Top:=FSPrelevement.EditEquipePrelevement.Top+FSPrelevement.EditEquipePrelevement.Height+2;
          ListeEquipe(FSPrelevement.TableauChercheEquipe,'');
          FSPrelevement.TableauChercheEquipe.SetFocus;
     end;
end;

end;

procedure TFSPrelevement.EditNumPrelevementCompteurKeyPress(
  Sender: TObject; var Key: Char);
var   MaxNumPrelevement:integer; NumPrelevement,NumPrelevementFin,MatriculeEffectif,DatePrelevement,DateIn,HeureIn,HeurePrelevement,PositionPrelevement,NumStructure,TypeProcesPrelevement,FichierConcernePrelevement,AdressePrelevement:string;
begin
     if(FSPrelevement.EditNumPrelevementMax.Text='')then
     begin
           TypeProcesPrelevement:='Business';
           FichierConcernePrelevement:='FPrelevement';
           AdressePrelevement:='';
           if not(FunctionAdresseProces(TypeProcesPrelevement,FichierConcernePrelevement,'',AdressePrelevement,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcernePrelevement+' recherché !');
           end;

           ChPrelevement:=AdressePrelevement;
           assignfile(FPrelevement,ChPrelevement);
           try
           if FileExists(ChPrelevement)then
           Reset(FPrelevement)
           else Rewrite(FPrelevement);
           Seek(FPrelevement,0);
           MaxNumPrelevement:=1;
           while not eof(FPrelevement)do
           begin
                read(FPrelevement,RPrelevement);
                if(MaxNumPrelevement<RPrelevement.NumPrelevement)then MaxNumPrelevement:=RPrelevement.NumPrelevement;
           end;
           finally
           CloseFile(FPrelevement);
           end;

           FSPrelevement.EditNumPrelevementMax.Text:=inttostr(MaxNumPrelevement);
     end;

     if key in['+']then
     begin
          FSPrelevement.EditNumPrelevementCompteur.Text:=Inttostr(MinInt(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text)+1,strtointeger(FSPrelevement.EditNumPrelevementMax.Text)));
     end;

     if key in['-']then
     begin
          FSPrelevement.EditNumPrelevementCompteur.Text:=Inttostr(MaxInt(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text)-1,1));
     end;

     RPrelevement:=ChercherPrelevement(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text),ExerciceAnnee,'',PositionPrelevement);

     NumPrelevement:=inttostr(RPrelevement.NumPrelevement);
     NumPrelevementFin:='';
     MatriculeEffectif:='';
     FSPrelevement.EditMatricule.Text:='';
     FSPrelevement.EditNomEffectif.Text:='';
     DateIn:='';
     HeureIn:='';
     DatePrelevement:=RPrelevement.DatePrelevement;
     HeurePrelevement:=RPrelevement.HeurePrelevement;
     AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
     FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,MatriculeEffectif,NumStructure);

     if(FSListePrelevement.Showing)then SelectRowListePrelevement(FSListePrelevement.TableauListePrelevement,NumPrelevement,MatriculeEffectif,false);

     key:=#0;
end;

procedure TFSPrelevement.TableauDetailArticleTiersKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in['s','S']then
     begin
          FSPrelevement.AfficheOperationTableauDetailArticleTiers.Visible:=true;
          FSPrelevement.BitOperationTableauDetailArticleTiers.Kind:=bkCancel;
          FSPrelevement.BitOperationTableauDetailArticleTiers.Caption:='Supprimer';

          FSPrelevement.AfficheOperationTableauDetailArticleTiers.Caption:='Supprimer l''enregistrement ?';

          FSPrelevement.BitOperationTableauDetailArticleTiers.SetFocus;
     end;
end;

procedure TFSPrelevement.BitOperationTableauDetailArticleTiersClick(
  Sender: TObject);
var R:integer; OKConfirme:boolean; FichierConcerne,PositionPrelevement:string;
    NumPrelevement,NumPrelevementFin,NumStructure,Matricule:string;
begin
     Matricule:=FSPrelevement.TableauDetailArticleTiers.Cells[13,FSPrelevement.TableauDetailArticleTiers.Row];

     if(FSPrelevement.EditNumPrelevementCompteur.Text<>'')and(Matricule<>'')then
     begin
          if(OKArchivePrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,Matricule,PositionPrelevement)=false)
          then FichierConcerne:='FDetailArticlePrelevementUniteFonds'
          else FichierConcerne:='FArchiveDetailArticlePrelevementUniteFonds';


          if(FSPrelevement.BitOperationTableauDetailArticleTiers.Caption='Supprimer')then
          begin
               DeleteFDetailArticlePrelevementUniteFonds(FSPrelevement.TableauDetailArticleTiers.Cells[9,FSPrelevement.TableauDetailArticleTiers.Row],FichierConcerne,OKConfirme);
          end;

          AfficheDetailArticle(FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.EditMontantArticle,FSPrelevement.EditNumPrelevementCompteur.Text,'');
          ExecuterMiseAJourDetailArticleDiversTiers;
          ListeDetailArticlePrelevementUniteFonds(FSPrelevement.TableauDetailArticleTiers,FSPrelevement.EditNumPrelevementCompteur.Text,'',Matricule,'','','',false,true,true,true,FSPrelevement.RBDetailArticleCumuleArticle.Checked,0,FSPrelevement.EditNumStructure.Text,R);
          FSPrelevement.TableauDetailArticleTiers.SetFocus;

          NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
          NumPrelevementFin:='';
          AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
          FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,Matricule,NumStructure);

          FSPrelevement.EditNumStructure.Text:=NumStructure;
          FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
          ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);
     end
     else
     begin
          if(FSPrelevement.RBAutoriseModificationUnitesFonds.Checked=false)then AfficherMessage('Suppression non autorisé !')
          else
          if(FSPrelevement.EditNumPrelevementCompteur.Text='')then AfficherMessage('Suppression non autorisé ! aucun prélèvement sélectionné !')
          else
          if(Matricule='')then AfficherMessage('Suppression non autorisé ! veuillez choisir un matricule !');
     end;

     FSPrelevement.AfficheOperationTableauDetailArticleTiers.Visible:=false;
end;

procedure TFSPrelevement.BitBtn17Click(Sender: TObject);
begin
     FSPrelevement.AfficheOperationTableauDetailArticleTiers.Visible:=false
end;

procedure TFSPrelevement.TableauDetailArticleTiersClick(Sender: TObject);
begin
     FSPrelevement.AfficheOperationTableauDetailArticleTiers.Visible:=false
end;

procedure TFSPrelevement.BitChargementEffectifClick(Sender: TObject);
var   E,R:integer;  NumPrelevement,NumPrelevementFin,NumStructure,Matricule,NumPrelevementMAJ,MatriculeMAJ:string;   OKRow:boolean;
begin
     NumPrelevementMAJ:=FSPrelevement.EditNumPrelevementCompteur.Text;
     MatriculeMAJ:=FSPrelevement.EditMatricule.Text;

     for E:=1 to FSPrelevement.TableauEffectifEquipeArchivage.RowCount-1 do
     begin
          Matricule:=FSPrelevement.TableauEffectifEquipeArchivage.Cells[3,E];

          if(ControleAttributionArticleAuxUnitesFonds(FSPrelevement.TableauControleAttributionArticleAuxUnitesFonds,FSPrelevement.EditNumPrelevementCompteur.Text,Matricule,'')=true)then
          begin
               FSPrelevement.TableauControleAttributionArticleAuxUnitesFonds.Visible:=true;
               FSPrelevement.EditMatricule.Text:=Matricule;
               NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
               NumPrelevementFin:='';
               AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
               FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,NumStructure);

               FSPrelevement.EditNumStructure.Text:=NumStructure;
               FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
               ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);

               Exit;
          end;
     end;

     FSPrelevement.AfficheTravauxPrelevementAchever.Visible:=false;
     if(FSPrelevement.RBArchiveModifier.Checked=true)
     then ControleEtatPrelevement;

     ExecuterMiseAJourDetailArticleDiversTiers;

     NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
     NumPrelevementFin:='';
     Matricule:=FSPrelevement.EditMatricule.Text;
     AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
     FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,Matricule,NumStructure);

     FSPrelevement.EditNumStructure.Text:=NumStructure;
     FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
     ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);

     if(NumPrelevementMAJ=NumPrelevement)and(MatriculeMAJ=Matricule)
     then MiseAJourPrelevement(NumPrelevementMAJ,MatriculeMAJ,strtoreal(FSPrelevement.EditMontantCompteur.Text),strtoreal(FSPrelevement.EditFondRoulement.Text),strtoreal(FSPrelevement.EditMontantUniteFonds.Text),strtoreal(FSPrelevement.EditSoldePrelevement.Text),true);

     if(FSPrelevement.EditSourceCommande.Text='Effectif')then
     begin
           FSPrelevement.TableauChercheEffectif.Visible:=true;
           FSPrelevement.TableauChercheEffectif.Left:=FSPrelevement.EditNomEffectif.Left;
           FSPrelevement.TableauChercheEffectif.Top:=FSPrelevement.EditNomEffectif.Top+FSPrelevement.EditNomEffectif.Height+2;
           ListeEffectifEquipePrelevement(FSPrelevement.TableauChercheEffectif,FSPrelevement.EditNumPrelevementCompteur.Text);
           //ListeEffectifEquipe(FSPrelevement.TableauChercheEffectif,FSPrelevement.EditNumEquipePrelevement.Text);
           FSPrelevement.TableauChercheEffectif.SetFocus;

           R:=1;
           OKRow:=false;
           while(R<=FSPrelevement.TableauChercheEffectif.RowCount-1)and(OKRow=false)do
           begin
                if(FSPrelevement.TableauChercheEffectif.Cells[3,R]=FSPrelevement.EditMatricule.Text)then
                begin
                     FSPrelevement.TableauChercheEffectif.Row:=R;
                     OKRow:=true;
                end;
           R:=R+1;
           end;
     end;

     if(FSPrelevement.EditSourceCommande.Text='Equipe')then
     begin
          FSPrelevement.EditMatricule.Text:='';
          FSPrelevement.EditNomEffectif.Text:='';

          FSPrelevement.TableauChercheEquipe.Visible:=true;
          FSPrelevement.TableauChercheEquipe.Left:=FSPrelevement.EditEquipePrelevement.Left;
          FSPrelevement.TableauChercheEquipe.Top:=FSPrelevement.EditEquipePrelevement.Top+FSPrelevement.EditEquipePrelevement.Height+2;
          ListeEquipe(FSPrelevement.TableauChercheEquipe,'');
          FSPrelevement.TableauChercheEquipe.SetFocus;
     end;
end;

procedure TFSPrelevement.BitBtn22Click(Sender: TObject);
begin
     FSPrelevement.AfficheTravauxPrelevementAchever.Visible:=false;
end;

procedure TFSPrelevement.TableauControleAttributionArticleAuxUnitesFondsDblClick(
  Sender: TObject);
var  R:integer;  OKUnitesFonds:boolean;
begin
     FSPrelevement.AfficheTravauxPrelevementAchever.Visible:=false;
     FSPrelevement.PagePrelevementCompteursUniteFonds.Show;
     R:=1;
     OKUnitesFonds:=false;
     while(R<=FSPrelevement.TableauPrelevementUniteFonds.RowCount-1)and(OKUnitesFonds=false)do
     begin
          if(FSPrelevement.TableauPrelevementUniteFonds.Cells[6,R]=FSPrelevement.TableauControleAttributionArticleAuxUnitesFonds.Cells[11,FSPrelevement.TableauControleAttributionArticleAuxUnitesFonds.Row])then
          begin
               OKUnitesFonds:=true;
               FSPrelevement.TableauPrelevementUniteFonds.Row:=R;
               FSPrelevement.TableauPrelevementUniteFonds.Col:=9;
               FSPrelevement.TableauPrelevementUniteFonds.SetFocus;
          end;
     R:=R+1;
     end;

     FSPrelevement.TableauPrelevementUniteFonds.SetFocus;
end;

Procedure ProcTableauDetailArticlePrelevementDblClick;
var  R,l:integer;   MontantTotal,Quantite:real;  AnomalieTexte:string;
begin
     if(AnsiUpperCase(FSPrelevement.EditCodeTiers.Text)=AnsiUpperCase('Divers'))then
     begin
          FSPrelevement.EditValeurPrelevementUniteFonds.SetFocus;
          showmessage('Opération divers non autorisée !');
          Exit;
     end;

     if(FSPrelevement.TableauDetailArticlePrelevement.Col=7)then
     begin
          if(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[7,FSPrelevement.TableauDetailArticlePrelevement.Row])>0)then begin showmessage('La valeur doit être nulle !'); exit; end;

          if(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[4,FSPrelevement.TableauDetailArticlePrelevement.Row])>0)
          then Quantite:=(-1)*Strtoreal(Vergule(floattostr((strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1])+strtoreal(FSPrelevement.EditMontantRestant.Text))/strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[4,FSPrelevement.TableauDetailArticlePrelevement.Row])),FSPrelevement.EditNbrChiffreApresVergule.Text,'N',''))
          else Quantite:=1;
          l:=Longueur(inttostr(ValeAbsolue(Quantite)))+strtointeger(FSPrelevement.EditNbrChiffreApresVergule.Text)+1;

          if(Quantite>strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[10,FSPrelevement.TableauDetailArticlePrelevement.Row]))then Quantite:=strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[10,FSPrelevement.TableauDetailArticlePrelevement.Row]);
          if(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[4,FSPrelevement.TableauDetailArticlePrelevement.Row])>0)then
          begin
               if((strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1])+strtoreal(FSPrelevement.EditMontantRestant.Text))/strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[4,FSPrelevement.TableauDetailArticlePrelevement.Row])<0)
               then FSPrelevement.TableauDetailArticlePrelevement.Cells[7,FSPrelevement.TableauDetailArticlePrelevement.Row]:=Vergule(firstlaters(floattostr(Quantite),l),FSPrelevement.EditNbrChiffreApresVergule.Text,'C','')
               else FSPrelevement.TableauDetailArticlePrelevement.Cells[7,FSPrelevement.TableauDetailArticlePrelevement.Row]:='0,00';
          end
          else FSPrelevement.TableauDetailArticlePrelevement.Cells[7,FSPrelevement.TableauDetailArticlePrelevement.Row]:='0,00';
     end;

     R:=FSPrelevement.TableauDetailArticlePrelevement.Row;

     if(R>FSPrelevement.TableauDetailArticlePrelevement.RowCount-3)then Exit;

     FSPrelevement.TableauDetailArticlePrelevement.Cells[10,R]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[5,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[6,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[7,R])),'2','C','');

     FSPrelevement.TableauDetailArticlePrelevement.Cells[8,R]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[7,R])*strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[4,R])),'2','C','');

     l:=1;
     MontantTotal:=0;
     while(l<=FSPrelevement.TableauDetailArticlePrelevement.RowCount-3)do
     begin
          MontantTotal:=MontantTotal+strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,l]);

     l:=l+1;
     end;
     FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1]:=Vergule(floattostr(MontantTotal),'2','C','');

     if(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[10,R])<0)
     or((strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1])+strtoreal(FSPrelevement.EditMontantRestant.Text))>0)
     then
     begin
          if(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[10,R])<0)then AnomalieTexte:='Quantité dépassé !';
          if((strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1])+strtoreal(FSPrelevement.EditMontantRestant.Text))>0)then AnomalieTexte:='Fonds dépassé !';

          showmessage(AnomalieTexte);

          FSPrelevement.TableauDetailArticlePrelevement.Cells[7,R]:='';
          FSPrelevement.TableauDetailArticlePrelevement.Cells[10,R]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[5,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[6,R])-
                                                                        strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[7,R])),'2','C','');

          FSPrelevement.TableauDetailArticlePrelevement.Cells[8,R]:=Vergule(floattostr(strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[7,R])*strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[4,R])),'2','C','');

          l:=1;
          MontantTotal:=0;
          while(l<=FSPrelevement.TableauDetailArticlePrelevement.RowCount-3)do
          begin
               MontantTotal:=MontantTotal+strtoreal(FSPrelevement.TableauDetailArticlePrelevement.Cells[8,l]);

          l:=l+1;
          end;
          FSPrelevement.TableauDetailArticlePrelevement.Cells[8,FSPrelevement.TableauDetailArticlePrelevement.RowCount-1]:=Vergule(floattostr(MontantTotal),'2','C','');
     end;

     AjusterColWidth(FSPrelevement.TableauDetailArticlePrelevement,'','');
end;

procedure TFSPrelevement.AfficheListePieceTiersMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSPrelevement.AfficheDetailUniteFondsMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSPrelevement.AfficheSaisiePrelevementUniteFondsMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSPrelevement.TableauTiersMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     //DeplacerObjet(Sender);
end;

procedure TFSPrelevement.AfficheRechercheTiersPrelevementMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSPrelevement.TableauListeDetailArticleUnitesFondsContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     AjusterColWidth(FSPrelevement.TableauListeDetailArticleUnitesFonds,'','');
end;

procedure TFSPrelevement.TableauListeDetailArticleUnitesFondsClick(
  Sender: TObject);
var  R,C:integer;  OKAnnomalie:boolean;
begin
     if(FSPrelevement.RBIndiceRubriqueTriCol.Checked=true)then
     begin
          FSPrelevement.RBIndiceRubriqueTriCol.Checked:=false;
          C:=FSPrelevement.TableauListeDetailArticleUnitesFonds.Col;
          FSPrelevement.EditIndiceRubriqueTriCol.Text:=inttostr(C);
          case C of
          1 : FSPrelevement.EditTypeDataTrie.Text:='';
          2 : FSPrelevement.EditTypeDataTrie.Text:='';
          3 : FSPrelevement.EditTypeDataTrie.Text:='';
          4 : FSPrelevement.EditTypeDataTrie.Text:='';
          5 : FSPrelevement.EditTypeDataTrie.Text:='Num';
          6 : FSPrelevement.EditTypeDataTrie.Text:='Num';
          7 : FSPrelevement.EditTypeDataTrie.Text:='Num';
          8 : FSPrelevement.EditTypeDataTrie.Text:='Num';
          9 : FSPrelevement.EditTypeDataTrie.Text:='Num';
          10: FSPrelevement.EditTypeDataTrie.Text:='Num';
          11: FSPrelevement.EditTypeDataTrie.Text:='Num';
          12: FSPrelevement.EditTypeDataTrie.Text:='Num';
          13: FSPrelevement.EditTypeDataTrie.Text:='Num';
          14: FSPrelevement.EditTypeDataTrie.Text:='Date';
          15: FSPrelevement.EditTypeDataTrie.Text:='Date';
          16: FSPrelevement.EditTypeDataTrie.Text:='';
          17: FSPrelevement.EditTypeDataTrie.Text:='';
          18: FSPrelevement.EditTypeDataTrie.Text:='';
          19: FSPrelevement.EditTypeDataTrie.Text:='';
          20: FSPrelevement.EditTypeDataTrie.Text:='Num';
          21: FSPrelevement.EditTypeDataTrie.Text:='Num';
          end;

          TrierTableauARowSpecial(FSPrelevement.TableauListeDetailArticleUnitesFonds,1,FSPrelevement.TableauListeDetailArticleUnitesFonds.RowCount-3,1,FSPrelevement.EditIndiceRubriqueTriCol.Text,FSPrelevement.EditTypeDataTrie.Text,FSPrelevement.EditTypeTrie.Text)
     end
     else
     if(FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[10,FSPrelevement.TableauListeDetailArticleUnitesFonds.Row]<>'')then
     begin
          if(not ExisteNumInTexte(FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[10,FSPrelevement.TableauListeDetailArticleUnitesFonds.Row],FSPrelevement.EditListeNumPrelevementUF.Text))then
          begin
               if(nonoui('Valeur non attribué ! Voulez vous Supprimer l''enregistrement ?'))then
               begin
                    if(FSPrelevement.RBDetailArticleCumuleArticle.Checked=false)then
                    begin
                         FSPrelevement.AfficheOperationTableauListeDetailArticleUnitesFonds.Visible:=true;
                         FSPrelevement.BitOperationTableauListeDetailArticleUnitesFonds.Kind:=bkCancel;
                         FSPrelevement.BitOperationTableauListeDetailArticleUnitesFonds.Caption:='Supprimer';

                         FSPrelevement.AfficheOperationTableauListeDetailArticleUnitesFonds.Caption:='Supprimer l''enregistrement ?';

                         FSPrelevement.BitOperationTableauListeDetailArticleUnitesFonds.SetFocus;
                    end
                    else
                    begin
                         showmessage('Suppression impossible! affichage cumulé !');
                    end;
               end;
          end
          else
          begin
               R:=1;
               OKAnnomalie:=false;
               while(R<=FSPrelevement.TableauListeDetailArticleUnitesFonds.RowCount-3)and(OKAnnomalie=false)do
               begin
                    if(R<>FSPrelevement.TableauListeDetailArticleUnitesFonds.Row)then
                    begin
                         if(FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[10,R]=FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[10,FSPrelevement.TableauListeDetailArticleUnitesFonds.Row])
                         and(
                             (FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[16,R]<>FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[16,FSPrelevement.TableauListeDetailArticleUnitesFonds.Row])
                             or(FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[17,R]<>FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[17,FSPrelevement.TableauListeDetailArticleUnitesFonds.Row])
                             or(FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[18,R]<>FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[18,FSPrelevement.TableauListeDetailArticleUnitesFonds.Row])
                             )then
                         begin
                              OKAnnomalie:=true;
                              RPrelevementUniteFondsCopie:=ChercherPrelevementUniteFonds(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[10,FSPrelevement.TableauListeDetailArticleUnitesFonds.Row]);

                              if(RPrelevementUniteFondsCopie.TypeProces<>FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[16,FSPrelevement.TableauListeDetailArticleUnitesFonds.Row])
                              or(RPrelevementUniteFondsCopie.FichierConcerne<>FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[17,FSPrelevement.TableauListeDetailArticleUnitesFonds.Row])
                              or(RPrelevementUniteFondsCopie.CodeTiers<>FSPrelevement.TableauListeDetailArticleUnitesFonds.Cells[18,FSPrelevement.TableauListeDetailArticleUnitesFonds.Row])
                              then
                              begin
                                   if(nonoui('Valeur doublée ! Voulez vous Supprimer l''enregistrement ?'))then
                                   begin
                                        if(FSPrelevement.RBDetailArticleCumuleArticle.Checked=false)then
                                        begin
                                             FSPrelevement.AfficheOperationTableauListeDetailArticleUnitesFonds.Visible:=true;
                                             FSPrelevement.BitOperationTableauListeDetailArticleUnitesFonds.Kind:=bkCancel;
                                             FSPrelevement.BitOperationTableauListeDetailArticleUnitesFonds.Caption:='Supprimer';

                                             FSPrelevement.AfficheOperationTableauListeDetailArticleUnitesFonds.Caption:='Supprimer l''enregistrement ?';

                                             FSPrelevement.BitOperationTableauListeDetailArticleUnitesFonds.SetFocus;
                                        end
                                        else
                                        begin
                                             showmessage('Suppression impossible! affichage cumulé !');
                                        end;
                                   end;
                              end;
                         end;
                    end;
               R:=R+1;
               end;
          end;
     end;
end;

procedure TFSPrelevement.TableauDetailTiersContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
     AjusterColWidth(FSPrelevement.TableauDetailTiers,'','');
end;

procedure TFSPrelevement.RNCummulerMemeUniteFondsClick(Sender: TObject);
var  NumPrelevement,NumPrelevementFin:string;
begin
NumPrelevement:=FSPrelevement.EditNumPrelevementTiers.Text;
NumPrelevementFin:=FSPrelevement.EditNumPrelevementFinTiers.Text;
AfficheDetailTiers(FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditFondRoulement,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,FSPrelevement.RBCumuleTiers.Checked);
end;

procedure TFSPrelevement.TableauPrelevementUniteFondsContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     AjusterColWidth(FSPrelevement.TableauPrelevementUniteFonds,'','')
end;

Procedure AfficherSoldeControle;
begin
     ///////////////////////////////////////////////////////////////////////////
     FSPrelevement.AfficheDataCompteurPrincipal.Color:=clBtnFace;
     FSPrelevement.AfficheDataUnitesFondsPrincipal.Color:=clBtnFace;
     FSPrelevement.AfficheSoldePrincipal.Color:=clBtnFace;

     FSPrelevement.EditControleMontantCompteurTableauPrelevementCompteurPrincipal.Text:='';
     FSPrelevement.EditControleMontantCompteurTableauDetailTiersPrincipal.Text:='';

     FSPrelevement.EditControleMontantUFTableauPrelevementUniteFondsPrincipal.Text:='';
     FSPrelevement.EditControleMontantUFTableauDetailTiersPrincipal.Text:='';

     FSPrelevement.EditControleSoldeTableauEffectifEquipePrincipal.Text:='';
     FSPrelevement.EditControleSoldeAfficherPrelevementPrincipal.Text:='';

     FSPrelevement.EditSoldeCompteurPrincipal.Lines.Text:='';
     FSPrelevement.EditSoldeUnitesFondsPrincipal.Lines.Text:='';
     FSPrelevement.EditSoldedesSoldesPrincipal.Lines.Text:='';
     ///////////////////////////////////////////////////////////////////////////

     ///////////////////////////////////////////////////////////////////////////
     FSPrelevement.AfficheDataCompteurRecap.Color:=clBtnFace;
     FSPrelevement.AfficheDataUnitesFondsRecap.Color:=clBtnFace;
     FSPrelevement.AfficheSoldeRecap.Color:=clBtnFace;

     FSPrelevement.EditControleMontantCompteurTableauPrelevementCompteurRecap.Text:='';
     FSPrelevement.EditControleMontantCompteurTableauDetailTiersRecap.Text:='';

     FSPrelevement.EditControleMontantUFTableauPrelevementUniteFondsRecap.Text:='';
     FSPrelevement.EditControleMontantUFTableauDetailTiersRecap.Text:='';

     FSPrelevement.EditControleSoldeTableauEffectifEquipeRecap.Text:='';
     FSPrelevement.EditControleSoldeAfficherPrelevementRecap.Text:='';

     FSPrelevement.EditSoldeCompteurRecap.Lines.Text:='';
     FSPrelevement.EditSoldeUnitesFondsRecap.Lines.Text:='';
     FSPrelevement.EditSoldedesSoldesRecap.Lines.Text:='';
     ///////////////////////////////////////////////////////////////////////////

     FSPrelevement.EditControleMontantCompteurTableauPrelevementCompteur.Text:=FSPrelevement.EditMontantCompteur.Text;
     FSPrelevement.EditControleMontantCompteurTableauDetailTiers.Text:=FSPrelevement.EditMontatntDetailTiers.Text;
     FSPrelevement.EditSoldeCompteur.Text:='';

     FSPrelevement.EditControleMontantUFTableauPrelevementUniteFonds.Text:=FSPrelevement.EditMontantUniteFonds.Text;
     FSPrelevement.EditControleMontantUFTableauDetailTiers.Text:=Vergule(Floattostr(strtoreal(FSPrelevement.EditMontatntDetailTiers.Text)+strtoreal(FSPrelevement.EditFondRoulement.Text)+strtoreal(FSPrelevement.EditSoldePrelevement.Text)),'2','C','');
     FSPrelevement.EditSoldeUnitesFonds.Text:='';

     FSPrelevement.EditControleSoldeTableauEffectifEquipe.Text:=FSPrelevement.TableauUtilisateur.Cells[3,1];
     FSPrelevement.EditControleSoldeAfficherPrelevement.Text:=FSPrelevement.EditSoldePrelevement.Text;
     FSPrelevement.EditSoldedesSoldes.Text:='';

     ControleEtatPrelevement;

     ///////////////////////////////////////////////////////////////////////////
     FSPrelevement.AfficheDataCompteurPrincipal.Color:=FSPrelevement.AfficheDataCompteur.Color;
     FSPrelevement.AfficheDataUnitesFondsPrincipal.Color:=FSPrelevement.AfficheDataUnitesFonds.Color;
     FSPrelevement.AfficheSoldePrincipal.Color:=FSPrelevement.AfficheSolde.Color;

     FSPrelevement.EditControleMontantCompteurTableauPrelevementCompteurPrincipal.Text:=FSPrelevement.EditControleMontantCompteurTableauPrelevementCompteur.Text;
     FSPrelevement.EditControleMontantCompteurTableauDetailTiersPrincipal.Text:=FSPrelevement.EditControleMontantCompteurTableauDetailTiers.Text;

     FSPrelevement.EditControleMontantUFTableauPrelevementUniteFondsPrincipal.Text:=FSPrelevement.EditControleMontantUFTableauPrelevementUniteFonds.Text;
     FSPrelevement.EditControleMontantUFTableauDetailTiersPrincipal.Text:=FSPrelevement.EditControleMontantUFTableauDetailTiers.Text;

     FSPrelevement.EditControleSoldeTableauEffectifEquipePrincipal.Text:=FSPrelevement.EditControleSoldeTableauEffectifEquipe.Text;
     FSPrelevement.EditControleSoldeAfficherPrelevementPrincipal.Text:=FSPrelevement.EditControleSoldeAfficherPrelevement.Text;

     FSPrelevement.EditSoldeCompteurPrincipal.Lines.Text:=FSPrelevement.EditSoldeCompteur.Lines.Text;
     FSPrelevement.EditSoldeUnitesFondsPrincipal.Lines.Text:=FSPrelevement.EditSoldeUnitesFonds.Lines.Text;
     FSPrelevement.EditSoldedesSoldesPrincipal.Lines.Text:=FSPrelevement.EditSoldedesSoldes.Lines.Text;
     ///////////////////////////////////////////////////////////////////////////

     ///////////////////////////////////////////////////////////////////////////
     FSPrelevement.AfficheDataCompteurRecap.Color:=FSPrelevement.AfficheDataCompteur.Color;
     FSPrelevement.AfficheDataUnitesFondsRecap.Color:=FSPrelevement.AfficheDataUnitesFonds.Color;
     FSPrelevement.AfficheSoldeRecap.Color:=FSPrelevement.AfficheSolde.Color;

     FSPrelevement.EditControleMontantCompteurTableauPrelevementCompteurRecap.Text:=FSPrelevement.EditControleMontantCompteurTableauPrelevementCompteur.Text;
     FSPrelevement.EditControleMontantCompteurTableauDetailTiersRecap.Text:=FSPrelevement.EditControleMontantCompteurTableauDetailTiers.Text;

     FSPrelevement.EditControleMontantUFTableauPrelevementUniteFondsRecap.Text:=FSPrelevement.EditControleMontantUFTableauPrelevementUniteFonds.Text;
     FSPrelevement.EditControleMontantUFTableauDetailTiersRecap.Text:=FSPrelevement.EditControleMontantUFTableauDetailTiers.Text;

     FSPrelevement.EditControleSoldeTableauEffectifEquipeRecap.Text:=FSPrelevement.EditControleSoldeTableauEffectifEquipe.Text;
     FSPrelevement.EditControleSoldeAfficherPrelevementRecap.Text:=FSPrelevement.EditControleSoldeAfficherPrelevement.Text;

     FSPrelevement.EditSoldeCompteurRecap.Lines.Text:=FSPrelevement.EditSoldeCompteur.Lines.Text;
     FSPrelevement.EditSoldeUnitesFondsRecap.Lines.Text:=FSPrelevement.EditSoldeUnitesFonds.Lines.Text;
     FSPrelevement.EditSoldedesSoldesRecap.Lines.Text:=FSPrelevement.EditSoldedesSoldes.Lines.Text;
     ///////////////////////////////////////////////////////////////////////////
end;

procedure TFSPrelevement.BitBtn23Click(Sender: TObject);
begin
     FSPrelevement.AfficheOptionTableauDetailArticle.Visible:=false;
end;

procedure TFSPrelevement.BitBtn25Click(Sender: TObject);
begin
     FSPrelevement.AfficheOptionTableauDetailArticle.Visible:=false;
     if(ModifierArchiveEtatStockPrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,FSPrelevement.EditCodeDetailArticle.Text,strtoreal(FSPrelevement.EditQteInitialeDetailArticle.Text),strtoreal(FSPrelevement.EditQteEntreeDetailArticle.Text),strtoreal(FSPrelevement.EditQteSortieDetailArticle.Text),strtoreal(FSPrelevement.EditStockDetailArticle.Text)))then
     begin
          AfficheDetailArticle(FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.EditMontantArticle,FSPrelevement.EditNumPrelevementCompteur.Text,'');
          AfficheEtatStockPrelevement(FSPrelevement.TableauEtatStockPrelevement,FSPrelevement.EditNumStructure.Text,FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text);
          AfficheArborescenceArticle(FSPrelevement.TableauArborescenceArticle,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreArborescenceArticle,'F'+FSPrelevement.EditChoisAffichage.Text+FSPrelevement.EditExtentionFichier.Text);
     end;
end;

procedure TFSPrelevement.EditQteInitialeDetailArticleKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     FSPrelevement.EditStockDetailArticle.Text:=Vergule(floattostr(strtoreal(FSPrelevement.EditQteInitialeDetailArticle.Text)+strtoreal(FSPrelevement.EditQteEntreeDetailArticle.Text)-strtoreal(FSPrelevement.EditQteSortieDetailArticle.Text)),'2','C','');
end;

procedure TFSPrelevement.TableauPrelevementCompteurDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauChercheEquipeDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauChercheEffectifDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauPrelevementUniteFondsDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauDetailUniteFondsDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauCompteTiersDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauDetailArticlePrelevementDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauTiersDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauListePieceTiersDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauControleAttributionArticleAuxUnitesFondsDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauDetailCompteursDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauAffectationEffectifEquipeDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauDetailTypeUniteFondsDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauDetailTiersDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauDetailArticleTiersDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauDetailArticlePrelevementArchiveDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauDetailArticleDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauArborescenceArticleDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauEtatStockPrelevementDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauUtilisateurDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauEffectifEquipeDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauRecapitulatifDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauListeDetailArticleUnitesFondsDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.TableauSelectionDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSPrelevement.FormResize(Sender: TObject);
begin
     FSPrelevement.PagePrincipale.Height:=FSPrelevement.Height-45;
     FSPrelevement.AffichePrelevementUniteFonds.Height:=FSPrelevement.PagePrincipale.Height-FSPrelevement.AffichePrelevementUniteFonds.Top-30;
     FSPrelevement.TableauPrelevementUniteFonds.Height:=FSPrelevement.AffichePrelevementUniteFonds.Height-16;
     FSPrelevement.AfficheAffectationEffectifEquipe.Height:=FSPrelevement.AffichePrelevementUniteFonds.Height;
     FSPrelevement.TableauAffectationEffectifEquipe.Height:=FSPrelevement.AfficheAffectationEffectifEquipe.Height-16;

     FSPrelevement.AfficheResultat.Height:=FSPrelevement.PagePrincipale.Height-FSPrelevement.AfficheResultat.Top-30;
     FSPrelevement.AfficheOperationsPrelevement.Height:=81;

     FSPrelevement.PagePrincipale.Width:=FSPrelevement.Width-25;
     FSPrelevement.AffichePrelevementCompteur.Width:=FSPrelevement.PagePrincipale.Width-14;
     FSPrelevement.AfficheOperationsPrelevement.Width:=FSPrelevement.AffichePrelevementCompteur.Width-FSPrelevement.AfficheOperationsPrelevement.Left;
     FSPrelevement.BitOperationPrelevement.Width:=FSPrelevement.AfficheOperationsPrelevement.Width-32;
     FSPrelevement.SeparateurAfficheOperationsPrelevement.Width:=FSPrelevement.AfficheOperationsPrelevement.Width-32;
     FSPrelevement.BitArchiverPrelevement.Width:=FSPrelevement.AfficheOperationsPrelevement.Width-32;
     FSPrelevement.BitImprimerPrelevement.Width:=FSPrelevement.AfficheOperationsPrelevement.Width-32;
     FSPrelevement.BitAnnulerPrelevement.Width:=FSPrelevement.AfficheOperationsPrelevement.Width-32;

     FSPrelevement.AfficheResultat.Width:=FSPrelevement.AfficheOperationsPrelevement.Width;
     FSPrelevement.EditMontantUniteFonds.Width:=FSPrelevement.AfficheResultat.Width-FSPrelevement.EditMontantUniteFonds.Left-16;
     FSPrelevement.EditMontantCompteur.Width:=FSPrelevement.AfficheResultat.Width-FSPrelevement.EditMontantUniteFonds.Left-16;
     FSPrelevement.EditFondRoulement.Width:=FSPrelevement.AfficheResultat.Width-FSPrelevement.EditMontantUniteFonds.Left-16;
     FSPrelevement.EditSoldePrelevement.Width:=FSPrelevement.AfficheResultat.Width-FSPrelevement.EditMontantUniteFonds.Left-16;
end;

procedure TFSPrelevement.TimerProgressAttenteAffichePrelevementTimer(Sender: TObject);
begin
     if(FSPrelevement.ProgressAttenteAffichePrelevement.Max<>0)then
     FSPrelevement.PourcentageAttenteAffichePrelevement.Caption:=Vergule(floattostr(FSPrelevement.ProgressAttenteAffichePrelevement.Position/FSPrelevement.ProgressAttenteAffichePrelevement.Max),'2','C','%');
end;

procedure TFSPrelevement.AfficheAttenteAffichePrelevementExit(
  Sender: TObject);
begin
     FSPrelevement.TimerProgressAttenteAffichePrelevement.Enabled:=false;
end;

procedure TFSPrelevement.AfficheAttenteAffichePrelevementEnter(
  Sender: TObject);
begin
     FSPrelevement.TimerProgressAttenteAffichePrelevement.Enabled:=true;
end;

Procedure CreationRegistreEtatStockPrelevement;
var   i,lSelect,l,PBegin,PEnd:integer;
      OKArticle:boolean;
      NumStructure,NumPrelevement,Matricule,PositionPrelevement:string;
      QuantiteInitiale,QuatiteEntree,QuantiteSortie,QuantiteStock:real;
begin
      NumStructure:=FSPrelevement.EditNumStructure.Text;;
      NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
      Matricule:=FSPrelevement.EditMatricule.Text;
      
      //////////////// Création du Registre Etat du stock prélèvement...............................
      OpenFParc(RParc);
      ChRegistreEtatStockPrelevement:=RParc.Parcours+'\'+Exercice+'FRegistreEtatStockPrelevement Creation';
      assignfile(FRegistreEtatStockPrelevement,ChRegistreEtatStockPrelevement);
      try
      if FileExists(ChRegistreEtatStockPrelevement)then
      Reset(FRegistreEtatStockPrelevement)
      else Rewrite(FRegistreEtatStockPrelevement);
      Seek(FRegistreEtatStockPrelevement,0);
      truncate(FRegistreEtatStockPrelevement);

      FichierConcerne:='FPrelevementCompteur';
      PBegin:=0;
      PEnd:=999999999;

      RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);

      if(RPrelevement.Archiver=false)then
      begin
           FichierConcerne:='FPrelevementCompteur';
           PBegin:=0;
           PEnd:=999999999;
      end
      else
      begin
           FichierConcerne:='FArchivePrelevementCompteur';
           if(FSListePrelevement.RBUtiliserPositionArchive.Checked=true)then
           begin
                PBegin:=RPrelevement.RegistrePositionPrelevementCompteur.PositionArchiveBegin;
                PEnd:=RPrelevement.RegistrePositionPrelevementCompteur.PositionArchiveEnd;
           end
           else
           begin
                PBegin:=0;
                PEnd:=999999999;
           end;
      end;

      i:=PBegin;

      OpenFParc(RParc);
      ChPrelevementCompteur:=RParc.Parcours+'\'+Exercice+FichierConcerne;
      assignfile(FPrelevementCompteur,ChPrelevementCompteur);
      try
      if FileExists(ChPrelevementCompteur)then
      Reset(FPrelevementCompteur)
      else Rewrite(FPrelevementCompteur);
      Seek(FPrelevementCompteur,i);

      FSPrelevement.ProgressAttenteAffichePrelevement.Max:=MinInt(FileSize(FPrelevementCompteur),PEnd-PBegin+1);
      FSPrelevement.ProgressAttenteAffichePrelevement.Position:=0;

      while not eof(FPrelevementCompteur)and(i<=PEnd)do
      begin
           read(FPrelevementCompteur,RPrelevementCompteur);

           FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;

           if(RPrelevementCompteur.NumPrelevement=strtointeger(NumPrelevement))
           and(RPrelevementCompteur.Matricule=Matricule)then
           begin
                 Seek(FRegistreEtatStockPrelevement,0);
                 l:=0;
                 lSelect:=l;
                 OKArticle:=false;
                 while not eof(FRegistreEtatStockPrelevement)and(OKArticle=false)do
                 begin
                      read(FRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);

                      if(RRegistreEtatStockPrelevement.NumPrelevement=RPrelevementCompteur.NumPrelevement)
                      and(RRegistreEtatStockPrelevement.Matricule=RPrelevementCompteur.Matricule)
                      and(RRegistreEtatStockPrelevement.CodeArticle=RPrelevementCompteur.CodeArticle)
                      then
                      begin
                           OKArticle:=true;
                           lSelect:=l;
                      end;
                 l:=l+1;
                 end;

                 if(OKArticle=true)then  l:=lSelect;

                 RRegistreEtatStockPrelevement.PositionRegistreEtatStockPrelevement:=l;
                 RRegistreEtatStockPrelevement.NumPrelevement:=RPrelevementCompteur.NumPrelevement;
                 RRegistreEtatStockPrelevement.CodeUtilisateur:=RPrelevementCompteur.CodeUtilisateur;
                 RRegistreEtatStockPrelevement.NumEquipe:=RPrelevementCompteur.NumEquipe;
                 RRegistreEtatStockPrelevement.DatePrelevement:=RPrelevementCompteur.DatePrelevement;
                 RRegistreEtatStockPrelevement.HeurePrelevement:=RPrelevementCompteur.HeurePrelevement;
                 RRegistreEtatStockPrelevement.Matricule:=RPrelevementCompteur.Matricule;
                 RRegistreEtatStockPrelevement.CodeStructureStock:=NumStructure;
                 RRegistreEtatStockPrelevement.CodeArticle:=RPrelevementCompteur.CodeArticle;

                 RCompteurCopie:=ChercherCompteur(RPrelevementCompteur.NumCompteur);
                 NumStructure:=ChercherAffectationCompteur(strtointeger(RCompteurCopie.NumAffectationCompteur)).NumProjetFinance;

                 RStockArticleCopie:=ChercherStockArticle('Article',NumStructure,RPrelevementCompteur.CodeArticle,'',OKStockRecherche,RubriqueRecherche);

                 if(DataArchiveEtatStockPrelevement(inttostr(strtointeger(NumPrelevement)-1),Matricule,RPrelevementCompteur.CodeArticle,QuantiteInitiale,QuatiteEntree,QuantiteSortie,QuantiteStock))then
                 begin
                      QuantiteInitiale:=QuantiteStock;
                      QuatiteEntree:=0;
                      QuantiteSortie:=0;
                      QuantiteStock:=QuantiteStock;

                      if(QuantiteStock<>RStockArticleCopie.QteStock)then
                      begin
                           if(NonOui('Article: '+RStockArticleCopie.Design+' '+RStockArticleCopie.Ref+', sa valeur du stock actuel est différente du celle obtenue au prélèvement n° '+inttostr(strtointeger(NumPrelevement)-1)+', Voulez vous prendre la valeur du Stock ?'+' {'+floattostr(RStockArticleCopie.QteStock)+' et '+floattostr(QuantiteStock)+'}'))then
                           begin
                                QuantiteInitiale:=RStockArticleCopie.QteStock;
                                QuatiteEntree:=0;
                                QuantiteSortie:=0;
                                QuantiteStock:=RStockArticleCopie.QteStock;
                           end;
                      end;
                 end
                 else
                 begin
                      QuantiteInitiale:=RStockArticleCopie.QteStock;
                      QuatiteEntree:=0;
                      QuantiteSortie:=0;
                      QuantiteStock:=RStockArticleCopie.QteStock;
                 end;

                 if(RCompteurCopie.TypeIndicePrelevement='Stock restant.')or(RCompteurCopie.TypeIndicePrelevement='Stock Sortant.')then
                 begin
                      if(RPrelevementCompteur.ValeurInitiale>QuantiteStock)
                      then RRegistreEtatStockPrelevement.QuantiteInitiale:=RPrelevementCompteur.ValeurInitiale
                      else RRegistreEtatStockPrelevement.QuantiteInitiale:=QuantiteStock;
                 end
                 else RRegistreEtatStockPrelevement.QuantiteInitiale:=QuantiteStock;

                 RRegistreEtatStockPrelevement.QuantiteEntree:=0;
                 RRegistreEtatStockPrelevement.QuantiteSortie:=0;
                 RRegistreEtatStockPrelevement.QuantiteStock:=RRegistreEtatStockPrelevement.QuantiteInitiale;
                 RRegistreEtatStockPrelevement.CoutUnitaire:=RPrelevementCompteur.CoutUnitaire;
                 RRegistreEtatStockPrelevement.PrixUnitaire:=RPrelevementCompteur.PrixPrelevement;
                 Seek(FRegistreEtatStockPrelevement,l);
                 write(FRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);
           end;
      i:=i+1;
      end;
      finally
      CloseFile(FPrelevementCompteur);
      end;

      finally
      CloseFile(FRegistreEtatStockPrelevement);
      end;
end;

Procedure MiseAJourRegistreEtatStockPrelevement;
var  i,R:integer;
     PositionPrelevement,NumPrelevement,NumStructure,Matricule:string;
     OKPointerArchive:boolean;
     QuantiteInitiale:real;
begin
     ////////////////////////     RegistreEtatStockPrelevement     /////////////
     RPrelevement:=ChercherPrelevement(strtointeger(FSPrelevement.EditNumPrelevementCompteur.Text),ExerciceAnnee,FSPrelevement.EditMatricule.Text,PositionPrelevement);
     NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
     NumStructure:=FSPrelevement.EditNumStructure.Text;
     Matricule:=FSPrelevement.EditMatricule.Text;

     OpenFParc(RParc);
     ChRegistreEtatStockPrelevement:=RParc.Parcours+'\'+Exercice+'FRegistreEtatStockPrelevement Creation';
     assignfile(FRegistreEtatStockPrelevement,ChRegistreEtatStockPrelevement);
     try
     if FileExists(ChRegistreEtatStockPrelevement)then
     Reset(FRegistreEtatStockPrelevement)
     else Rewrite(FRegistreEtatStockPrelevement);
     Seek(FRegistreEtatStockPrelevement,0);

     FSPrelevement.ProgressAttenteAffichePrelevement.Max:=FileSize(FRegistreEtatStockPrelevement);
     FSPrelevement.ProgressAttenteAffichePrelevement.Position:=0;

     i:=0;
     while not eof(FRegistreEtatStockPrelevement)do
     begin
          read(FRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);

          FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;

          if(RRegistreEtatStockPrelevement.Matricule=Matricule)
          and(RRegistreEtatStockPrelevement.NumPrelevement=strtointeger(NumPrelevement))
          then
          begin
               RRegistreEtatStockPrelevement.QuantiteEntree:=0;
               RRegistreEtatStockPrelevement.QuantiteSortie:=0;
               RRegistreEtatStockPrelevement.QuantiteStock:=0;
               QuantiteInitiale:=0;

               R:=1;
               while(R<=FSPrelevement.TableauPrelevementCompteur.RowCount-3)do
               begin
                    if(RRegistreEtatStockPrelevement.CodeArticle=FSPrelevement.TableauPrelevementCompteur.Cells[8,R])then
                    begin
                         RRegistreEtatStockPrelevement.QuantiteEntree:=RRegistreEtatStockPrelevement.QuantiteEntree+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[15,R]);

                         RCompteurCopie:=ChercherCompteur(strtointeger(FSPrelevement.TableauPrelevementCompteur.Cells[4,R]));

                         if(RCompteurCopie.TypeIndicePrelevement='Stock restant.')then
                         begin
                              RRegistreEtatStockPrelevement.QuantiteSortie:=RRegistreEtatStockPrelevement.QuantiteSortie+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[14,R])+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[15,R])-strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[18,R]);
                              QuantiteInitiale:=QuantiteInitiale+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[14,R]);
                         end
                         else
                         if(RCompteurCopie.TypeIndicePrelevement='Cumul des Sorties.')then
                         begin
                              RRegistreEtatStockPrelevement.QuantiteSortie:=RRegistreEtatStockPrelevement.QuantiteSortie+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[18,R])-strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[14,R]);
                         end
                         else
                         if(RCompteurCopie.TypeIndicePrelevement='Stock Sortant.')then
                         begin
                              RRegistreEtatStockPrelevement.QuantiteSortie:=RRegistreEtatStockPrelevement.QuantiteSortie+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[18,R]);
                              QuantiteInitiale:=QuantiteInitiale+strtoreal(FSPrelevement.TableauPrelevementCompteur.Cells[14,R]);
                         end;
                    end;
               R:=R+1;
               end;

               if(QuantiteInitiale>0)then RRegistreEtatStockPrelevement.QuantiteInitiale:=QuantiteInitiale;
               RRegistreEtatStockPrelevement.QuantiteStock:=RRegistreEtatStockPrelevement.QuantiteInitiale+RRegistreEtatStockPrelevement.QuantiteEntree-RRegistreEtatStockPrelevement.QuantiteSortie;

               Seek(FRegistreEtatStockPrelevement,i);
               write(FRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);
          end;
     i:=i+1;
     end;
     finally
     CloseFile(FRegistreEtatStockPrelevement);
     end;
     ///////////////////////////////////////////////////////////////////////////
end;

Procedure EnregistrerCreationMiseAJourRegistreEtatStockPrelevement;
var   i,iSelect,E:integer;
      OKStockPrelevement:boolean;
      NumStructure,NumPrelevement,Matricule,PositionPrelevement:string;
      QuantiteInitiale,QuatiteEntree,QuantiteSortie,QuantiteStock:real;
      MontantPrelevement,MontantFondRoulement,MontantUnitesFonds,SoldePrelevement:real;
begin
     NumStructure:=FSPrelevement.EditNumStructure.Text;;
     NumPrelevement:=FSPrelevement.EditNumPrelevementCompteur.Text;
     Matricule:=FSPrelevement.EditMatricule.Text;

     RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);
     if(RPrelevement.Archiver=false)
     then FichierConcerne:='FRegistreEtatStockPrelevement'
     else FichierConcerne:='FArchiveRegistreEtatStockPrelevement';

     OpenFParc(RParc);
     ChArchiveRegistreEtatStockPrelevement:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FArchiveRegistreEtatStockPrelevement,ChArchiveRegistreEtatStockPrelevement);
     try
     if FileExists(ChArchiveRegistreEtatStockPrelevement)then
     Reset(FArchiveRegistreEtatStockPrelevement)
     else Rewrite(FArchiveRegistreEtatStockPrelevement);
     Seek(FArchiveRegistreEtatStockPrelevement,0);
     i:=0;
     while not eof(FArchiveRegistreEtatStockPrelevement)do
     begin
          read(FArchiveRegistreEtatStockPrelevement,RArchiveRegistreEtatStockPrelevement);
          i:=i+1;
     end;

     OpenFParc(RParc);
     ChRegistreEtatStockPrelevement:=RParc.Parcours+'\'+Exercice+'FRegistreEtatStockPrelevement Creation';
     assignfile(FRegistreEtatStockPrelevement,ChRegistreEtatStockPrelevement);
     try
     if FileExists(ChRegistreEtatStockPrelevement)then
     Reset(FRegistreEtatStockPrelevement)
     else Rewrite(FRegistreEtatStockPrelevement);
     Seek(FRegistreEtatStockPrelevement,0);
     while not eof(FRegistreEtatStockPrelevement)do
     begin
          read(FRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);

          if (RRegistreEtatStockPrelevement.NumPrelevement=strtointeger(NumPrelevement))
          and(RRegistreEtatStockPrelevement.Matricule=Matricule)then
          begin
               Seek(FArchiveRegistreEtatStockPrelevement,0);
               i:=0;
               iSelect:=i;
               OKStockPrelevement:=false;
               while not eof(FArchiveRegistreEtatStockPrelevement)and(OKStockPrelevement=false)do
               begin
                     read(FArchiveRegistreEtatStockPrelevement,RArchiveRegistreEtatStockPrelevement);

                     if(RArchiveRegistreEtatStockPrelevement.NumPrelevement=RRegistreEtatStockPrelevement.NumPrelevement)
                     and(RArchiveRegistreEtatStockPrelevement.Matricule=RRegistreEtatStockPrelevement.Matricule)
                     and(RArchiveRegistreEtatStockPrelevement.CodeArticle=RRegistreEtatStockPrelevement.CodeArticle)then
                     begin
                          OKStockPrelevement:=true;
                          iSelect:=i;
                     end;

               i:=i+1;
               end;

               if(OKStockPrelevement=true)then i:=iSelect;

               Seek(FArchiveRegistreEtatStockPrelevement,i);
               RRegistreEtatStockPrelevement.PositionRegistreEtatStockPrelevement:=i;
               write(FArchiveRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);
               i:=i+1;
          end;
     end;
     finally
     CloseFile(FRegistreEtatStockPrelevement);
     end;

     finally
     CloseFile(FArchiveRegistreEtatStockPrelevement);
     end;

     MontantPrelevement:=strtoreal(FSPrelevement.EditMontantCompteur.Text);
     MontantFondRoulement:=strtoreal(FSPrelevement.EditFondRoulement.Text);
     MontantUnitesFonds:=strtoreal(FSPrelevement.EditMontantUniteFonds.Text);
     SoldePrelevement:=strtoreal(FSPrelevement.EditSoldePrelevement.Text);
     MiseAJourPrelevement(NumPrelevement,Matricule,MontantPrelevement,MontantFondRoulement,MontantUnitesFonds,SoldePrelevement,true);

     AfficheEtatStockPrelevement(FSPrelevement.TableauEtatStockPrelevement,NumStructure,NumPrelevement,Matricule);
end;

Procedure AfficheEtatStockPrelevementCreation(TableauEtatStockPrelevement:TStringGrid; NumStructure,NumPrelevement,Matricule:string);
var  i,R,RArticle,NbrArticle,PBegin,PEnd:integer;  OKArticle,OKEtatStock:boolean;  FichierConcerne,PositionPrelevement,NumPrelevementFin:string;
     ValeurInitiale,ValeurEntree,ValeurSortie,ValeurStock:real;
begin
     TableauEtatStockPrelevement.ColCount:=14;
     TableauEtatStockPrelevement.Cols[0].Text:='Num.';
     TableauEtatStockPrelevement.Cols[1].Text:='Code';
     TableauEtatStockPrelevement.Cols[2].Text:='Article';
     TableauEtatStockPrelevement.Cols[3].Text:='UM';
     TableauEtatStockPrelevement.Cols[4].Text:='Prix';
     TableauEtatStockPrelevement.Cols[5].Text:='Qte.Initiale';
     TableauEtatStockPrelevement.Cols[6].Text:='Qte.Entrées';
     TableauEtatStockPrelevement.Cols[7].Text:='Qte.Sorties';
     TableauEtatStockPrelevement.Cols[8].Text:='Qte.Stock';
     TableauEtatStockPrelevement.Cols[9].Text:='Coût';

     TableauEtatStockPrelevement.Cols[10].Text:='Valeur.Initiale';
     TableauEtatStockPrelevement.Cols[11].Text:='Valeur.Entrées';
     TableauEtatStockPrelevement.Cols[12].Text:='Valeur.Sorties';
     TableauEtatStockPrelevement.Cols[13].Text:='Valeur.Stock';

     TableauEtatStockPrelevement.RowCount:=2;
     TableauEtatStockPrelevement.Rows[1].Text:='';

     FichierConcerne:='FRegistreEtatStockPrelevement Creation';
     PBegin:=0;
     PEnd:=999999999;

     NumPrelevementFin:='';

     OpenFParc(RParc);
     ChRegistreEtatStockPrelevement:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FRegistreEtatStockPrelevement,ChRegistreEtatStockPrelevement);
     try
     if FileExists(ChRegistreEtatStockPrelevement)then
     Reset(FRegistreEtatStockPrelevement)
     else Rewrite(FRegistreEtatStockPrelevement);

     FSPrelevement.ProgressAttenteAffichePrelevement.Max:=FileSize(FRegistreEtatStockPrelevement);
     FSPrelevement.ProgressAttenteAffichePrelevement.Position:=0;

     Seek(FRegistreEtatStockPrelevement,PBegin);
     NbrArticle:=0;
     i:=0;
     ValeurInitiale:=0;
     ValeurEntree:=0;
     ValeurSortie:=0;
     ValeurStock:=0;
     while not eof(FRegistreEtatStockPrelevement)and(i<=PEnd)do
     begin
          read(FRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);
          i:=i+1;

          FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;

          if(inttostr(RRegistreEtatStockPrelevement.NumPrelevement)=NumPrelevement)
          then OKEtatStock:=true
          else OKEtatStock:=false;

          if(OKEtatStock=true)then
          begin
               if(Matricule<>'')then
               begin
                    if(RRegistreEtatStockPrelevement.Matricule=Matricule)
                    then OKEtatStock:=true
                    else OKEtatStock:=false;
               end;
          end;

          if(OKEtatStock=true)then
          begin
                RArticle:=1;
                OKArticle:=false;
                while(RArticle<=NbrArticle)and(OKArticle=false)do
                begin
                     if(TableauEtatStockPrelevement.Cells[1,RArticle]=RRegistreEtatStockPrelevement.CodeArticle)then
                     begin
                          OKArticle:=true;
                          TableauEtatStockPrelevement.Cells[6,RArticle]:=Floattostr(strtoreal(TableauEtatStockPrelevement.Cells[6,RArticle])+RRegistreEtatStockPrelevement.QuantiteEntree);
                          TableauEtatStockPrelevement.Cells[7,RArticle]:=Floattostr(strtoreal(TableauEtatStockPrelevement.Cells[7,RArticle])+RRegistreEtatStockPrelevement.QuantiteSortie);
                     end;
                RArticle:=RArticle+1;
                end;

                if(OKArticle=false)then
                begin
                     NbrArticle:=NbrArticle+1;

                     RStockArticleCopie:=ChercherStockArticle('Article',NumStructure,RRegistreEtatStockPrelevement.CodeArticle,'',OKStockRecherche,RubriqueRecherche);

                     TableauEtatStockPrelevement.Rows[NbrArticle].Text:=inttostr(NbrArticle);
                     TableauEtatStockPrelevement.Cells[1,NbrArticle]:=RStockArticleCopie.Code;
                     TableauEtatStockPrelevement.Cells[2,NbrArticle]:=RStockArticleCopie.Design+' '+RStockArticleCopie.Ref;
                     TableauEtatStockPrelevement.Cells[3,NbrArticle]:=RStockArticleCopie.UM;
                     TableauEtatStockPrelevement.Cells[4,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.PrixUnitaire);// Prix
                     TableauEtatStockPrelevement.Cells[5,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteInitiale); // Qte.Initiale
                     TableauEtatStockPrelevement.Cells[6,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteEntree);// Qte.Entrées
                     TableauEtatStockPrelevement.Cells[7,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteSortie);// Qte.Sorties
                     TableauEtatStockPrelevement.Cells[8,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteStock);// Qte.Stock
                     TableauEtatStockPrelevement.Cells[9,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.CoutUnitaire);// Coût

                     if(FSPrelevement.EditCalculeValeur.Text='Valeur par défaut')then
                     begin
                          TableauEtatStockPrelevement.Cells[10,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteInitiale*RRegistreEtatStockPrelevement.CoutUnitaire); // Coût.Initiale
                          TableauEtatStockPrelevement.Cells[11,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteEntree*RRegistreEtatStockPrelevement.CoutUnitaire);// Coût.Entrées
                          TableauEtatStockPrelevement.Cells[12,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteSortie*RRegistreEtatStockPrelevement.CoutUnitaire);// Coût.Sorties
                          TableauEtatStockPrelevement.Cells[13,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteStock*RRegistreEtatStockPrelevement.CoutUnitaire);// Coût.Stock

                          ValeurInitiale:=ValeurInitiale+(RRegistreEtatStockPrelevement.QuantiteInitiale*RRegistreEtatStockPrelevement.CoutUnitaire);
                          ValeurEntree:=ValeurEntree+(RRegistreEtatStockPrelevement.QuantiteEntree*RRegistreEtatStockPrelevement.CoutUnitaire);
                          ValeurSortie:=ValeurSortie+(RRegistreEtatStockPrelevement.QuantiteSortie*RRegistreEtatStockPrelevement.CoutUnitaire);
                          ValeurStock:=ValeurStock+(RRegistreEtatStockPrelevement.QuantiteStock*RRegistreEtatStockPrelevement.CoutUnitaire);
                     end;

                     if(FSPrelevement.EditCalculeValeur.Text='Valeur prix de vente')then
                     begin
                          TableauEtatStockPrelevement.Cells[10,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteInitiale*RRegistreEtatStockPrelevement.PrixUnitaire); // Prix.Initiale
                          TableauEtatStockPrelevement.Cells[11,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteEntree*RRegistreEtatStockPrelevement.PrixUnitaire);// Prix.Entrées
                          TableauEtatStockPrelevement.Cells[12,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteSortie*RRegistreEtatStockPrelevement.PrixUnitaire);// Prix.Sorties
                          TableauEtatStockPrelevement.Cells[13,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteStock*RRegistreEtatStockPrelevement.PrixUnitaire);// Prix.Stock

                          ValeurInitiale:=ValeurInitiale+(RRegistreEtatStockPrelevement.QuantiteInitiale*RRegistreEtatStockPrelevement.PrixUnitaire);
                          ValeurEntree:=ValeurEntree+(RRegistreEtatStockPrelevement.QuantiteEntree*RRegistreEtatStockPrelevement.PrixUnitaire);
                          ValeurSortie:=ValeurSortie+(RRegistreEtatStockPrelevement.QuantiteSortie*RRegistreEtatStockPrelevement.PrixUnitaire);
                          ValeurStock:=ValeurStock+(RRegistreEtatStockPrelevement.QuantiteStock*RRegistreEtatStockPrelevement.PrixUnitaire);
                     end;

                     if(FSPrelevement.EditCalculeValeur.Text='Valeur coût d''achat')then
                     begin
                          TableauEtatStockPrelevement.Cells[10,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteInitiale*RRegistreEtatStockPrelevement.CoutUnitaire); // Coût.Initiale
                          TableauEtatStockPrelevement.Cells[11,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteEntree*RRegistreEtatStockPrelevement.CoutUnitaire);// Coût.Entrées
                          TableauEtatStockPrelevement.Cells[12,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteSortie*RRegistreEtatStockPrelevement.CoutUnitaire);// Coût.Sorties
                          TableauEtatStockPrelevement.Cells[13,NbrArticle]:=floattostr(RRegistreEtatStockPrelevement.QuantiteStock*RRegistreEtatStockPrelevement.CoutUnitaire);// Coût.Stock

                          ValeurInitiale:=ValeurInitiale+(RRegistreEtatStockPrelevement.QuantiteInitiale*RRegistreEtatStockPrelevement.CoutUnitaire);
                          ValeurEntree:=ValeurEntree+(RRegistreEtatStockPrelevement.QuantiteEntree*RRegistreEtatStockPrelevement.CoutUnitaire);
                          ValeurSortie:=ValeurSortie+(RRegistreEtatStockPrelevement.QuantiteSortie*RRegistreEtatStockPrelevement.CoutUnitaire);
                          ValeurStock:=ValeurStock+(RRegistreEtatStockPrelevement.QuantiteStock*RRegistreEtatStockPrelevement.CoutUnitaire);
                     end;
                end;
          end;
     end;
     finally
     closefile(FRegistreEtatStockPrelevement);
     end;

     if(NbrArticle>0)then
                     begin
                          TableauEtatStockPrelevement.RowCount:=NbrArticle+3;
                          TableauEtatStockPrelevement.Rows[NbrArticle+1].Text:='';
                          TableauEtatStockPrelevement.Rows[NbrArticle+2].Text:='';

                          TableauEtatStockPrelevement.Cells[9,NbrArticle+2]:='Total: ';

                          TableauEtatStockPrelevement.Cells[10,NbrArticle+2]:=Vergule(floattostr(ValeurInitiale),'2','C','');
                          TableauEtatStockPrelevement.Cells[11,NbrArticle+2]:=Vergule(floattostr(ValeurEntree),'2','C','');
                          TableauEtatStockPrelevement.Cells[12,NbrArticle+2]:=Vergule(floattostr(ValeurSortie),'2','C','');
                          TableauEtatStockPrelevement.Cells[13,NbrArticle+2]:=Vergule(floattostr(ValeurStock),'2','C','');
                     end
                     else TableauEtatStockPrelevement.RowCount:=2;

     for R:=1 to TableauEtatStockPrelevement.RowCount-3 do
     begin
          TableauEtatStockPrelevement.Cells[4,R]:=Vergule(TableauEtatStockPrelevement.Cells[4,R],'2','C','');
          TableauEtatStockPrelevement.Cells[5,R]:=Vergule(TableauEtatStockPrelevement.Cells[5,R],'2','C','');
          TableauEtatStockPrelevement.Cells[6,R]:=Vergule(TableauEtatStockPrelevement.Cells[6,R],'2','C','');
          TableauEtatStockPrelevement.Cells[7,R]:=Vergule(TableauEtatStockPrelevement.Cells[7,R],'2','C','');
          TableauEtatStockPrelevement.Cells[8,R]:=Vergule(TableauEtatStockPrelevement.Cells[8,R],'2','C','');
          TableauEtatStockPrelevement.Cells[9,R]:=Vergule(TableauEtatStockPrelevement.Cells[9,R],'2','C','');
          TableauEtatStockPrelevement.Cells[10,R]:=Vergule(TableauEtatStockPrelevement.Cells[10,R],'2','C','');
          TableauEtatStockPrelevement.Cells[11,R]:=Vergule(TableauEtatStockPrelevement.Cells[11,R],'2','C','');
          TableauEtatStockPrelevement.Cells[12,R]:=Vergule(TableauEtatStockPrelevement.Cells[12,R],'2','C','');
          TableauEtatStockPrelevement.Cells[13,R]:=Vergule(TableauEtatStockPrelevement.Cells[13,R],'2','C','');
     end;

     AjusterColWidth(TableauEtatStockPrelevement,'','');
     TrierTableauARowSpecial(TableauEtatStockPrelevement,1,TableauEtatStockPrelevement.RowCount-3,1,'1','','+');
end;

procedure TFSPrelevement.BitBtn9Click(Sender: TObject);
begin
     FSPrelevement.AfficheAttenteAffichePrelevement.Visible:=true;
     FSPrelevement.PagePrincipale.Enabled:=false;
     FSPrelevement.TimerProgressAttenteAffichePrelevement.Enabled:=true;

     CreationRegistreEtatStockPrelevement;
     MiseAJourRegistreEtatStockPrelevement;
     EnregistrerCreationMiseAJourRegistreEtatStockPrelevement;

     FSPrelevement.TimerProgressAttenteAffichePrelevement.Enabled:=false;
     FSPrelevement.PagePrincipale.Enabled:=true;
     FSPrelevement.AfficheAttenteAffichePrelevement.Visible:=false;
end;

End.
