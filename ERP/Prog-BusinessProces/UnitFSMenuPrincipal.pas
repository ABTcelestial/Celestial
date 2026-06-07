unit UnitFSMenuPrincipal;

interface

uses                                         
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ExtCtrls, StdCtrls, Buttons, Menus, Grids, OleServer, Word2000,
    ComCtrls, ToolWin, OleCtrls, ExtDlgs, jpeg, Mask, ShellCtrls, ActnMan,
    ActnCtrls, ActnMenus, ShellAPI, TlHelp32, QRCtrls, QuickRpt, Printers;

type
    TDocInfo1=record
              pDocNam:PChar;
              pOutputFille: PChar;
              pDatatype: PChar;
              end;

type
    TFSMenuPrincipal = class(TForm)
    EditCodeUtilisateur: TEdit;
    MenuPrincipal: TMainMenu;
    Fichier1: TMenuItem;
    GnrateurdeBase1: TMenuItem;
    GnrateurdetypedAvis1: TMenuItem;
    N1: TMenuItem;
    GnrateurdeProjet1: TMenuItem;
    N2: TMenuItem;
    Gnrateurdedomiciliation1: TMenuItem;
    N3: TMenuItem;
    GnrateurdAdressedesProcesUtilis1: TMenuItem;
    GnrateurTypedeProjets1: TMenuItem;
    N4: TMenuItem;
    GnrateurdeProjet2: TMenuItem;
    Oprations1: TMenuItem;
    Utilitaires1: TMenuItem;
    RpertoiredeSauvegarde1: TMenuItem;
    Financesdesprojets1: TMenuItem;
    AvisFinancier1: TMenuItem;
    N5: TMenuItem;
    raitementdesprojets1: TMenuItem;
    N6: TMenuItem;
    raitementdesDomiciliations1: TMenuItem;
    N7: TMenuItem;
    raitementdesTiers1: TMenuItem;
    PanelMotPasse: TPanel;
    Bevel2: TBevel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    EditMotPasse: TEdit;
    BitBtn2: TBitBtn;
    BitBtn76: TBitBtn;
    BitBtn1: TBitBtn;
    PanelModifMotPasse: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    EditMotPasseN: TEdit;
    EditMotPasseC: TEdit;
    BitBtn3: TBitBtn;
    PanelAfficheArret: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    TimerCodeAcces: TTimer;
    TimerClosedMenuPrincipal: TTimer;
    TimerAfficheArret: TTimer;
    TimerSaisieFiches: TTimer;
    TimerControleInstallation: TTimer;
    Logo: TImage;
    LabelISO: TImage;
    N8: TMenuItem;
    MotdePasse1: TMenuItem;
    N9: TMenuItem;
    Gnrateurdaccsprivilgis1: TMenuItem;
    N10: TMenuItem;
    CodeUtilisateurs1: TMenuItem;
    N11: TMenuItem;
    ChoisExercice1: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    GnrateurdeBasePlanificateur1: TMenuItem;
    GnrateurdArticle1: TMenuItem;
    N14: TMenuItem;
    GnrateurdeCompteur1: TMenuItem;
    N15: TMenuItem;
    GnrateurdunitdeFonds1: TMenuItem;
    N16: TMenuItem;
    GnrateurdEquipes1: TMenuItem;
    N17: TMenuItem;
    ListedesPrlvements1: TMenuItem;
    ransformationUnitsdeFonds1: TMenuItem;
    N18: TMenuItem;
    GnrateurdeClients1: TMenuItem;
    N20: TMenuItem;
    GnrateurdeFormulesdeCalcules1: TMenuItem;
    N23: TMenuItem;
    FichedeSaisies1: TMenuItem;
    Statistiques1: TMenuItem;
    N24: TMenuItem;
    FicheTechnique1: TMenuItem;
    N25: TMenuItem;
    GnrateurdeMouvement1: TMenuItem;
    GnrationModelFormuledeCalcule1: TMenuItem;
    N26: TMenuItem;
    GnrationFormuledeCalcule1: TMenuItem;
    MiseJour1: TMenuItem;
    MiseJourFonctionnelleMJF1: TMenuItem;
    N27: TMenuItem;
    MiseJourSystmeMJs1: TMenuItem;
    N28: TMenuItem;
    MiseJourSystmeMJSys1: TMenuItem;
    TypeAlerteMJ: TLabel;
    N29: TMenuItem;
    FormulairedePrslection1: TMenuItem;
    PhotoVide: TImage;
    N30: TMenuItem;
    Rcape1: TMenuItem;
    N31: TMenuItem;
    Planificateurdesprojets1: TMenuItem;
    GnrateurDomiciliation1: TMenuItem;
    N32: TMenuItem;
    GnrateurBaseAgenceDomiciliation1: TMenuItem;
    N33: TMenuItem;
    Echancierdepayement1: TMenuItem;
    GnrationdeClient1: TMenuItem;
    N34: TMenuItem;
    GnrationdeFournisseurs1: TMenuItem;
    N35: TMenuItem;
    GnrationdAutres1: TMenuItem;
    N36: TMenuItem;
    GnrationdAutres2: TMenuItem;
    N21: TMenuItem;
    GnrateurTypeTiersparProces1: TMenuItem;
    TitreEtat: TMemo;
    N22: TMenuItem;
    Gnrateurdelocalisationgographique1: TMenuItem;
    N37: TMenuItem;
    Paramtresavancs1: TMenuItem;
    TimerControleDateExecutionAlerte: TTimer;
    AfficherControleDateExecutionAlerte: TPanel;
    TimerControleCouleur: TTimer;
    MessageAlerte: TLabel;
    EditAutorisationMiseAJourData: TEdit;
    N38: TMenuItem;
    Quitter1: TMenuItem;
    EditListePositionEtatControle: TEdit;
    N39: TMenuItem;
    GnrateurdEtats1: TMenuItem;
    GnrateurdEtatdanalyse1: TMenuItem;
    EditNumEntite: TEdit;
    N40: TMenuItem;
    GnrateurPlanComptable1: TMenuItem;
    N41: TMenuItem;
    Ouvrir1: TMenuItem;
    Unimprim1: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    OprationsMarchs1: TMenuItem;
    Fichedes1: TMenuItem;
    N44: TMenuItem;
    Dtailquantitatifetestimatifdumarch1: TMenuItem;
    N45: TMenuItem;
    Attachements1: TMenuItem;
    Attachements2: TMenuItem;
    Attachements3: TMenuItem;
    N46: TMenuItem;
    SituationsetAnalyses1: TMenuItem;
    N47: TMenuItem;
    Situationsdumarchetanalyses1: TMenuItem;
    N48: TMenuItem;
    Archivesdephotoset1: TMenuItem;
    N49: TMenuItem;
    ModuleCalculeParFormules1: TMenuItem;
    N50: TMenuItem;
    Rouverture1: TMenuItem;
    Modulerecherchedebasededonnes1: TMenuItem;
    Systme1: TMenuItem;
    Contrleurdateetheuresystme1: TMenuItem;
    Panel1: TPanel;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Button4: TButton;
    Edit1: TEdit;
    RichEdit1: TRichEdit;
    OuvrireFichier: TOpenDialog;
    N52: TMenuItem;
    Chiffresenlettres1: TMenuItem;
    N53: TMenuItem;
    BordereaudEnvoi1: TMenuItem;
    BitBtn6: TBitBtn;
    AfficheControleSoleDomiciliation: TPanel;
    TableauControleSoleDomiciliation: TStringGrid;
    TimerControleSoldeDomiciliation: TTimer;
    AfficheTitreControleSoleDomiciliation: TPanel;
    BitTitreControleSoleDomiciliation: TBitBtn;
    N54: TMenuItem;
    ContrleDomiciliations1: TMenuItem;
    Timer1: TTimer;
    AfficheReflet: TPanel;
    PaintBox1: TPaintBox;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    N55: TMenuItem;
    Publicit1: TMenuItem;
    Panel2: TPanel;
    BtQuitter: TButton;
    Btopen: TButton;
    BitBtn10: TBitBtn;
    Panel3: TPanel;
    CheckBox1: TCheckBox;
    Label8: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    UpDown2: TUpDown;
    UpDown1: TUpDown;
    Panel4: TPanel;
    RadioGroup1: TRadioGroup;
    Bevel5: TBevel;
    Bevel6: TBevel;
    N56: TMenuItem;
    GnrationSriespicesdomiciliation1: TMenuItem;
    TableauLiseAvisNotifier: TStringGrid;
    CadreVide: TBevel;
    CadreTitreControleSoldeDomiciliation: TBevel;
    AfficheOperationControleSoleDomiciliation: TPanel;
    Bevel3: TBevel;
    BitBtn7: TBitBtn;
    TypeAffichage: TLabel;
    Bevel4: TBevel;
    BitBtn8: TBitBtn;
    Bevel7: TBevel;
    BitBtn9: TBitBtn;
    BitBtn11: TBitBtn;
    RadioGroup5: TRadioGroup;
    StaticText2: TStaticText;
    RBOrientationPapier: TComboBox;
    RBAjustement: TCheckBox;
    AfficheOperationLiseAvisNotifier: TPanel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    RBRubriqueTrieTableauAvis: TCheckBox;
    EditRubriqueTrie: TEdit;
    EditDateFin: TDateTimePicker;
    EditDateDebut: TDateTimePicker;
    N57: TMenuItem;
    GnrationGroupeTiers1: TMenuItem;
    TableauSeparateur: TStringGrid;
    N58: TMenuItem;
    ComptabilitTransitoire1: TMenuItem;
    N59: TMenuItem;
    Barmedecomptabilisationdescodeparcompte1: TMenuItem;
    Paramtrestempsdalerte1: TMenuItem;
    N60: TMenuItem;
    Paramtresdatasentreprise1: TMenuItem;
    N61: TMenuItem;
    Paramtrescrationdestockparstructures1: TMenuItem;
    N62: TMenuItem;
    ListeValeurFormuleparArticle1: TMenuItem;
    N63: TMenuItem;
    Dcryptagecodesystme1: TMenuItem;
    N64: TMenuItem;
    ParamtresTitreDataTiers1: TMenuItem;
    FicheMouvement1: TMenuItem;
    N65: TMenuItem;
    FichePrlvement1: TMenuItem;
    N66: TMenuItem;
    FicheMoyendetransport1: TMenuItem;
    N19: TMenuItem;
    ransfertmagntiquededonnscommerciales1: TMenuItem;
    AffichControleStockLimite: TPanel;
    BitControleStockLimite: TBitBtn;
    TimerControleStockLimite: TTimer;
    TimerControleCouleurStockLimite: TTimer;
    BitBtn14: TBitBtn;
    Bevel12: TBevel;
    Bevel13: TBevel;
    N67: TMenuItem;
    ParamtresSoldeDomiciliation1: TMenuItem;
    N68: TMenuItem;
    ParamtresConnectivitBasededonnes1: TMenuItem;
    EditCodeFondateurParDefaut: TEdit;
    AfficheChoisConnectivite: TPanel;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    N69: TMenuItem;
    GnrateurdAdressedesdossierspartags1: TMenuItem;
    N70: TMenuItem;
    Publierdanslerseaux1: TMenuItem;
    AfficheRapport: TPanel;
    EditRapport: TMemo;
    BitOKAfficheRapport: TBitBtn;
    AfficheAdresseDossierPartageReseaux: TPanel;
    TableauAdresseDossierPartageReseaux: TStringGrid;
    BitAnnulerAfficheAdresseDossierPartageReseaux: TBitBtn;
    N71: TMenuItem;
    Connectivitrseaux1: TMenuItem;
    EditNotification: TPanel;
    AfficheSessionOuverte: TPanel;
    N72: TMenuItem;
    ParamtresRseaux1: TMenuItem;
    TimerConnxionServeurClient: TTimer;
    AfficheNotificationServeur: TPanel;
    TableauNotificationServeur: TStringGrid;
    AfficheTitreNotificationServeur: TPanel;
    N73: TMenuItem;
    Communicationrseaux1: TMenuItem;
    SpeedButton2: TSpeedButton;
    N74: TMenuItem;
    GnrateurBaseAvis1: TMenuItem;
    N75: TMenuItem;
    ParamtresPartageregistres1: TMenuItem;
    TimerPublicationReseauxProgrammer: TTimer;
    InfoPublicationReseauxProgrammer: TLabel;
    EditJourCaption: TEdit;
    EditHeureCaption: TMaskEdit;
    N76: TMenuItem;
    Fichedetravail1: TMenuItem;
    TimerLancerControleSoldeDomiciliation: TTimer;
    TimerControleConnxionServeurClient: TTimer;
    TableauIndiqueAdresseListeMouvement: TStringGrid;
    ControleProces: TGroupBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Pnl_ProcessusActif: TPanel;
    Pnl_ConsoMemoire: TPanel;
    Pnl_EconomieMemoire: TPanel;
    TimerOptimisation: TTimer;
    RBOptimisation: TCheckBox;
    SauvgarderFichier: TSaveDialog;
    AfficheAutorisationConnectiviteRepertoireActuel: TPanel;
    EditRepertoireActuel: TComboBox;
    EditExerciceRepertoireActuel: TComboBox;
    ListeBaseDonnees: TShellListView;
    BitAutorisationConnectiviteRepertoireActuel: TBitBtn;
    EditCodeAcces: TEdit;
    N77: TMenuItem;
    Affichageprogressif1: TMenuItem;
    AffichageRaccourcis: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Bevel14: TBevel;
    Label19: TLabel;
    Label26: TLabel;
    N78: TMenuItem;
    Raccourcis1: TMenuItem;
    RBImporteAutorisationReseaux: TCheckBox;
    EditTaileFichierConcerne: TEdit;
    IncrimenteTaileFichierConcerne: TUpDown;
    Label27: TLabel;
    EditNbrRegistre: TEdit;
    IncrimenteNbrRegistre: TUpDown;
    Label28: TLabel;
    EditAdresse: TEdit;
    IncrimenteAdresse: TUpDown;
    Label29: TLabel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    RBAutoriseConectiviteRepertoireActuel: TCheckBox;
    RBInsertLogo: TCheckBox;
    RBAfficherLaSaisie: TCheckBox;
    GroupBox3: TGroupBox;
    Cadre1: TPanel;
    Cadre2: TPanel;
    Cadre3: TPanel;
    Cadre4: TPanel;
    Cadre5: TPanel;
    Cadre6: TPanel;
    Cadre7: TPanel;
    Cadre8: TPanel;
    Cadre9: TPanel;
    Cadre10: TPanel;
    Cadre11: TPanel;
    Cadre12: TPanel;
    Cadre13: TPanel;
    Cadre14: TPanel;
    Cadre15: TPanel;
    Cadre16: TPanel;
    Cadre17: TPanel;
    Cadre18: TPanel;
    Cadre19: TPanel;
    Cadre20: TPanel;
    Cadre21: TPanel;
    Cadre22: TPanel;
    TimerCadreCouleur: TTimer;
    EditR: TEdit;
    EditC: TEdit;
    CadreTeste: TPanel;
    Bevel17: TBevel;
    BitBtn17: TBitBtn;
    Bevel18: TBevel;
    TimerCadreCouleur1: TTimer;
    TimerCadreCouleur2: TTimer;
    RBFormeAvantPlan: TCheckBox;
    TableauNomFormActive: TStringGrid;
    AfficheRBConnectiviteReseaux: TPanel;
    RBConnectiviteReseaux: TCheckBox;
    AfficheInfoTimer: TPanel;
    RBTimerControleDateExecutionAlerte: TCheckBox;
    RBTimerControleSoldeDomiciliation: TCheckBox;
    RBTimerControleStockLimite: TCheckBox;
    RBTimerPublicationReseauxProgrammer: TCheckBox;
    RBTimerConnxionServeurClient: TCheckBox;
    RBTimerControleConnxionServeurClient: TCheckBox;
    RBEtatTimerControleDateExecutionAlerte: TCheckBox;
    RBEtatTimerControleSoldeDomiciliation: TCheckBox;
    RBEtatTimerControleStockLimite: TCheckBox;
    RBEtatTimerPublicationReseauxProgrammer: TCheckBox;
    RBEtatTimerConnxionServeurClient: TCheckBox;
    RBEtatTimerControleConnxionServeurClient: TCheckBox;
    EtatRBEtatTimerControleDateExecutionAlerte: TPanel;
    EtatRBEtatTimerControleSoldeDomiciliation: TPanel;
    EtatRBEtatTimerControleStockLimite: TPanel;
    EtatRBEtatTimerPublicationReseauxProgrammer: TPanel;
    EtatRBEtatTimerConnxionServeurClient: TPanel;
    EtatRBEtatTimerControleConnxionServeurClient: TPanel;
    Fichercente1: TMenuItem;
    N79: TMenuItem;
    Redmarer1: TMenuItem;
    N80: TMenuItem;
    ConfigurationTableauxCols1: TMenuItem;
    N81: TMenuItem;
    AutresParamtres1: TMenuItem;
    N82: TMenuItem;
    Sauvegarderunecopiedelabasededonnes1: TMenuItem;
    Danslerpertoirelocal1: TMenuItem;
    N83: TMenuItem;
    Choisirunemplacement1: TMenuItem;
    N84: TMenuItem;
    Danslerseaux1: TMenuItem;
    PanelAfficheSerieDisque: TPanel;
    N85: TMenuItem;
    Copielibre1: TMenuItem;
    N86: TMenuItem;
    MiseJourB1: TMenuItem;
    RBActiveAfficheMessage: TCheckBox;
    AutoPublication1: TMenuItem;
    N87: TMenuItem;
    Choisirunemplacement2: TMenuItem;
    N88: TMenuItem;
    SauvegarderunecopiedusystmeBusinesProcesdanslerprtoirlocal1: TMenuItem;
    danslerpertoirelocal2: TMenuItem;
    TimerAfficheRBConnectiviteReseaux: TTimer;
    N89: TMenuItem;
    Etiquettescodebarre1: TMenuItem;
    ImageCodebarre: TImage;
    tiquette1: TMenuItem;
    N90: TMenuItem;
    Codebarre1: TMenuItem;
    EditDetailRapport: TMemo;
    N91: TMenuItem;
    ConfigurationdesBasesdeDonnesjumel1: TMenuItem;
    areVhiculepontbascule1: TMenuItem;
    N92: TMenuItem;
    Moyendetransport1: TMenuItem;
    Ouvrirunimprim1: TMenuItem;
    N93: TMenuItem;
    Ouvrirunfichiertexte1: TMenuItem;
    N94: TMenuItem;
    OuvrirunfichierPDF1: TMenuItem;
    N51: TMenuItem;
    ContrleStocklimite1: TMenuItem;
    N95: TMenuItem;
    PDF1: TMenuItem;
    BitDetailRapport: TBitBtn;
    AfficheExerciceCloture: TPanel;
    TimerTime: TTimer;
    EditTempsEcouleTimerPublication: TMaskEdit;
    AfficheTableauReouverture: TPanel;
    TableauReouverture: TStringGrid;
    AfficheClotureReouvertureExercice: TPanel;
    Bevel19: TBevel;
    Label30: TLabel;
    Bevel20: TBevel;
    EditExercice: TMaskEdit;
    UpDown3: TUpDown;
    BitBtn4: TBitBtn;
    InfoClotureExercice: TPanel;
    RadioGroup2: TRadioGroup;
    RBCloturerExercice: TRadioButton;
    RBNePasCloturerExercice: TRadioButton;
    BitBtn5: TBitBtn;
    Bevel21: TBevel;
    TimerLancementControleDivers: TTimer;
    EditValeDecimalePrecise: TEdit;
    IncEditValeDecimalePrecise: TUpDown;
    AfficheAppliquerMiseAJourData: TPanel;
    BitAppliquerMiseAJourData: TBitBtn;
    RBConfirmationAppliquerMiseAJourData: TCheckBox;
    BitBtn18: TBitBtn;
    Bevel22: TBevel;
    Bevel23: TBevel;
    N96: TMenuItem;
    Prstationdeservice1: TMenuItem;
    Panel8: TPanel;
    RBRemplireTPrelevement: TCheckBox;
    RBRemplireTPrelevementNewExercice: TCheckBox;
    RBSuspendrePublication: TCheckBox;
    Bordereauxdenvoi1: TMenuItem;
    N97: TMenuItem;
    CourrierMail1: TMenuItem;
    BitBtn19: TBitBtn;
    AfficherMenuRaccourcis: TPanel;
    AfficheDefileRaccourcis: TPanel;
    BitRaccourci01: TBitBtn;
    BitRaccourci02: TBitBtn;
    BitRaccourci03: TBitBtn;
    BitRaccourci04: TBitBtn;
    BitRaccourci05: TBitBtn;
    BitRaccourci06: TBitBtn;
    BitRaccourci07: TBitBtn;
    BitRaccourci08: TBitBtn;
    BitRaccourci09: TBitBtn;
    BitRaccourci10: TBitBtn;
    BitRaccourci11: TBitBtn;
    BitRaccourci12: TBitBtn;
    BitRaccourci13: TBitBtn;
    BitRaccourci14: TBitBtn;
    BitRaccourci15: TBitBtn;
    Incrimente: TUpDown;
    EditNbrRaccourcis: TEdit;
    InformationsEntreprise1: TMenuItem;
    N98: TMenuItem;
    ParamtresMenu1: TMenuItem;
    N99: TMenuItem;
    IntitulImprims1: TMenuItem;
    RBAfficherPaletteDefilementMenuRaccourcis: TCheckBox;
    N100: TMenuItem;
    FicheFormulesdecompositions1: TMenuItem;
    AfficheAffectationMenuRaccorcis: TPanel;
    Nul1: TMenuItem;
    PageMenuRaccorcis: TPageControl;
    PageParametres: TTabSheet;
    Bevel26: TBevel;
    Bevel24: TBevel;
    Bevel25: TBevel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    BitBtn21: TBitBtn;
    EditPosition: TEdit;
    EditBoutonRaccourcis: TEdit;
    EditRaccourcisMenu: TEdit;
    EditAffichageBouton: TEdit;
    BitBtn22: TBitBtn;
    Bevel27: TBevel;
    TableauSousMenu: TStringGrid;
    BitBtn23: TBitBtn;
    Bevel43: TBevel;
    EditOrdreMenu: TEdit;
    EditIndexe0: TEdit;
    EditIndexe1: TEdit;
    EditIndexe2: TEdit;
    EditIndexe3: TEdit;
    EditIndexe4: TEdit;
    EditIndexe5: TEdit;
    Bevel44: TBevel;
    PageListeRacourcis: TTabSheet;
    TableauAffectationMenuRaccourci: TStringGrid;
    Bevel28: TBevel;
    BitBtn24: TBitBtn;
    AfficheOptionAffectationMenuRaccourci: TPanel;
    N101: TMenuItem;
    BitBtn20: TBitBtn;
    Bevel30: TBevel;
    Panel9: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Bevel31: TBevel;
    EditPositionModifier: TEdit;
    EditBoutonRaccourcisModifier: TEdit;
    EditRaccourcisMenuModifier: TEdit;
    EditAffichageBoutonModifier: TEdit;
    EditIndexe0Modifier: TEdit;
    EditIndexe1Modifier: TEdit;
    EditIndexe2Modifier: TEdit;
    EditIndexe3Modifier: TEdit;
    EditIndexe4Modifier: TEdit;
    EditIndexe5Modifier: TEdit;
    BitBtn26: TBitBtn;
    AfficherTexteOption: TPanel;
    BitBtn25: TBitBtn;
    BitOptionAffectationMenuRaccourci: TBitBtn;
    RBInitialiserSelection: TCheckBox;
    procedure RpertoiredeSauvegarde1Click(Sender: TObject);
    procedure AvisFinancier1Click(Sender: TObject);
    procedure GnrateurdetypedAvis1Click(Sender: TObject);
    procedure GnrateurTypedeProjets1Click(Sender: TObject);
    procedure GnrateurdeProjet2Click(Sender: TObject);
    procedure GnrateurdAdressedesProcesUtilis1Click(Sender: TObject);
    procedure raitementdesDomiciliations1Click(Sender: TObject);
    procedure raitementdesTiers1Click(Sender: TObject);
    procedure TimerCodeAccesTimer(Sender: TObject);
    procedure TimerClosedMenuPrincipalTimer(Sender: TObject);
    procedure TimerAfficheArretTimer(Sender: TObject);
    procedure TimerSaisieFichesTimer(Sender: TObject);
    procedure TimerControleInstallationTimer(Sender: TObject);
    procedure MotdePasse1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn76Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Gnrateurdaccsprivilgis1Click(Sender: TObject);
    procedure CodeUtilisateurs1Click(Sender: TObject);
    procedure ChoisExercice1Click(Sender: TObject);
    procedure GnrateurdArticle1Click(Sender: TObject);
    procedure GnrateurdeCompteur1Click(Sender: TObject);
    procedure GnrateurdunitdeFonds1Click(Sender: TObject);
    procedure GnrateurdEquipes1Click(Sender: TObject);
    procedure ransformationUnitsdeFonds1Click(Sender: TObject);
    procedure ListedesPrlvements1Click(Sender: TObject);
    procedure Statistiques1Click(Sender: TObject);
    procedure FicheTechnique1Click(Sender: TObject);
    procedure GnrateurdeMouvement1Click(Sender: TObject);
    procedure GnrationFormuledeCalcule1Click(Sender: TObject);
    procedure GnrationModelFormuledeCalcule1Click(Sender: TObject);
    procedure MiseJourFonctionnelleMJF1Click(Sender: TObject);
    procedure MiseJourSystmeMJs1Click(Sender: TObject);
    procedure MiseJourSystmeMJSys1Click(Sender: TObject);
    procedure FormulairedePrslection1Click(Sender: TObject);
    procedure Rcape1Click(Sender: TObject);
    procedure Planificateurdesprojets1Click(Sender: TObject);
    procedure GnrateurDomiciliation1Click(Sender: TObject);
    procedure GnrateurBaseAgenceDomiciliation1Click(Sender: TObject);
    procedure Echancierdepayement1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure GnrationdeClient1Click(Sender: TObject);
    procedure GnrationdeFournisseurs1Click(Sender: TObject);
    procedure GnrationdAutres1Click(Sender: TObject);
    procedure GnrationdAutres2Click(Sender: TObject);
    procedure GnrateurTypeTiersparProces1Click(Sender: TObject);
    procedure Gnrateurdelocalisationgographique1Click(Sender: TObject);
    procedure TimerControleDateExecutionAlerteTimer(Sender: TObject);
    procedure AfficherControleDateExecutionAlerteClick(Sender: TObject);
    procedure TimerControleCouleurTimer(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure EditAutorisationMiseAJourDataKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Quitter1Click(Sender: TObject);
    procedure GnrateurdEtatdanalyse1Click(Sender: TObject);
    procedure GnrateurPlanComptable1Click(Sender: TObject);
    procedure Fichedes1Click(Sender: TObject);
    procedure Attachements1Click(Sender: TObject);
    procedure Attachements3Click(Sender: TObject);
    procedure Dtailquantitatifetestimatifdumarch1Click(Sender: TObject);
    procedure Situationsdumarchetanalyses1Click(Sender: TObject);
    procedure SituationsetAnalyses1Click(Sender: TObject);
    procedure Archivesdephotoset1Click(Sender: TObject);
    procedure ModuleCalculeParFormules1Click(Sender: TObject);
    procedure Rouverture1Click(Sender: TObject);
    procedure Modulerecherchedebasededonnes1Click(Sender: TObject);
    procedure Contrleurdateetheuresystme1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Chiffresenlettres1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure TimerControleSoldeDomiciliationTimer(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitTitreControleSoleDomiciliationClick(Sender: TObject);
    procedure ContrleDomiciliations1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BtopenClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure BtQuitterClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Publicit1Click(Sender: TObject);
    procedure GnrationSriespicesdomiciliation1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure TableauLiseAvisNotifierClick(Sender: TObject);
    procedure AfficheTitreControleSoleDomiciliationClick(Sender: TObject);
    procedure GnrationGroupeTiers1Click(Sender: TObject);
    procedure ComptabilitTransitoire1Click(Sender: TObject);
    procedure Barmedecomptabilisationdescodeparcompte1Click(
      Sender: TObject);
    procedure Paramtrestempsdalerte1Click(Sender: TObject);
    procedure Paramtrescrationdestockparstructures1Click(Sender: TObject);
    procedure ListeValeurFormuleparArticle1Click(Sender: TObject);
    procedure Dcryptagecodesystme1Click(Sender: TObject);
    procedure ParamtresTitreDataTiers1Click(Sender: TObject);
    procedure FicheMouvement1Click(Sender: TObject);
    procedure FichePrlvement1Click(Sender: TObject);
    procedure ransfertmagntiquededonnscommerciales1Click(Sender: TObject);
    procedure TimerControleStockLimiteTimer(Sender: TObject);
    procedure BitControleStockLimiteClick(Sender: TObject);
    procedure TimerControleCouleurStockLimiteTimer(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure ParamtresSoldeDomiciliation1Click(Sender: TObject);
    procedure ParamtresConnectivitBasededonnes1Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure GnrateurdAdressedesdossierspartags1Click(Sender: TObject);
    procedure BitOKAfficheRapportClick(Sender: TObject);
    procedure BitAnnulerAfficheAdresseDossierPartageReseauxClick(Sender: TObject);
    procedure Connectivitrseaux1Click(Sender: TObject);
    procedure RBConnectiviteReseauxClick(Sender: TObject);
    procedure ParamtresRseaux1Click(Sender: TObject);
    procedure TimerConnxionServeurClientTimer(Sender: TObject);
    procedure TableauNotificationServeurDblClick(Sender: TObject);
    procedure Communicationrseaux1Click(Sender: TObject);
    procedure GnrateurBaseAvis1Click(Sender: TObject);
    procedure ParamtresPartageregistres1Click(Sender: TObject);
    procedure TimerPublicationReseauxProgrammerTimer(Sender: TObject);
    procedure Fichedetravail1Click(Sender: TObject);
    procedure TimerLancerControleSoldeDomiciliationTimer(Sender: TObject);
    procedure EditDateDebutCloseUp(Sender: TObject);
    procedure EditDateFinCloseUp(Sender: TObject);
    procedure TimerControleConnxionServeurClientTimer(Sender: TObject);
    procedure TimerOptimisationTimer(Sender: TObject);
    procedure EditRepertoireActuelKeyPress(Sender: TObject; var Key: Char);
    procedure EditRepertoireActuelChange(Sender: TObject);
    procedure EditExerciceRepertoireActuelChange(Sender: TObject);
    procedure BitAutorisationConnectiviteRepertoireActuelClick(
      Sender: TObject);
    procedure RBAutoriseConectiviteRepertoireActuelClick(Sender: TObject);
    procedure Affichageprogressif1Click(Sender: TObject);
    procedure Raccourcis1Click(Sender: TObject);
    procedure AfficheRapportMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AffichageRaccourcisMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheControleSoleDomiciliationMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheAutorisationConnectiviteRepertoireActuelMouseDown(
      Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure TimerCadreCouleurTimer(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure TimerCadreCouleur1Timer(Sender: TObject);
    procedure TimerCadreCouleur2Timer(Sender: TObject);
    procedure TableauNomFormActiveDblClick(Sender: TObject);
    procedure Fichercente1Click(Sender: TObject);
    procedure Redmarer1Click(Sender: TObject);
    procedure ConfigurationTableauxCols1Click(Sender: TObject);
    procedure AutresParamtres1Click(Sender: TObject);
    procedure Choisirunemplacement1Click(Sender: TObject);
    procedure Danslerpertoirelocal1Click(Sender: TObject);
    procedure Danslerseaux1Click(Sender: TObject);
    procedure Copielibre1Click(Sender: TObject);
    procedure MiseJourB1Click(Sender: TObject);
    procedure AutoPublication1Click(Sender: TObject);
    procedure Choisirunemplacement2Click(Sender: TObject);
    procedure danslerpertoirelocal2Click(Sender: TObject);
    procedure TimerAfficheRBConnectiviteReseauxTimer(Sender: TObject);
    procedure Codebarre1Click(Sender: TObject);
    procedure tiquette1Click(Sender: TObject);
    procedure EditDetailRapportDblClick(Sender: TObject);
    procedure ConfigurationdesBasesdeDonnesjumel1Click(Sender: TObject);
    procedure areVhiculepontbascule1Click(Sender: TObject);
    procedure Moyendetransport1Click(Sender: TObject);
    procedure Ouvrirunfichiertexte1Click(Sender: TObject);
    procedure OuvrirunfichierPDF1Click(Sender: TObject);
    procedure Ouvrirunimprim1Click(Sender: TObject);
    procedure ContrleStocklimite1Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure BitDetailRapportClick(Sender: TObject);
    procedure AfficheExerciceClotureDblClick(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AfficheExerciceClotureMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BitBtn4Click(Sender: TObject);
    procedure UpDown3Click(Sender: TObject; Button: TUDBtnType);
    procedure TableauReouvertureKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauReouvertureClick(Sender: TObject);
    procedure TimerTimeTimer(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure TimerLancementControleDiversTimer(Sender: TObject);
    procedure BitAppliquerMiseAJourDataClick(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure Prstationdeservice1Click(Sender: TObject);
    procedure TableauReouvertureDblClick(Sender: TObject);
    procedure RBSuspendrePublicationClick(Sender: TObject);
    procedure Bordereauxdenvoi1Click(Sender: TObject);
    procedure CourrierMail1Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure UpDown5Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown4Click(Sender: TObject; Button: TUDBtnType);
    procedure IncrimenteClick(Sender: TObject; Button: TUDBtnType);
    procedure BitRaccourci01Click(Sender: TObject);
    procedure BitRaccourci03Click(Sender: TObject);
    procedure BitRaccourci04Click(Sender: TObject);
    procedure BitRaccourci05Click(Sender: TObject);
    procedure BitRaccourci06Click(Sender: TObject);
    procedure InformationsEntreprise1Click(Sender: TObject);
    procedure ParamtresMenu1Click(Sender: TObject);
    procedure IntitulImprims1Click(Sender: TObject);
    procedure RBAfficherPaletteDefilementMenuRaccourcisClick(Sender: TObject);
    procedure FicheFormulesdecompositions1Click(Sender: TObject);
    procedure BitRaccourci07Click(Sender: TObject);
    procedure BitRaccourci02Click(Sender: TObject);
    procedure BitRaccourci08Click(Sender: TObject);
    procedure BitRaccourci09Click(Sender: TObject);
    procedure BitRaccourci10Click(Sender: TObject);
    procedure BitRaccourci11Click(Sender: TObject);
    procedure BitRaccourci12Click(Sender: TObject);
    procedure BitRaccourci13Click(Sender: TObject);
    procedure BitRaccourci14Click(Sender: TObject);
    procedure BitRaccourci15Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure EditRaccourcisMenuEnter(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure TableauSousMenuDblClick(Sender: TObject);
    procedure TableauSousMenuClick(Sender: TObject);
    procedure TableauSousMenuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageListeRacourcisShow(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure TableauAffectationMenuRaccourciClick(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitOptionAffectationMenuRaccourciClick(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure EditAffichageBoutonModifierDblClick(Sender: TObject);

  private
    { Déclarations privées }
    procedure Initmirror;
    procedure mirror(ph : integer);

  public
    { Déclarations publiques }
  BoutonRaccourciSelect:TBitBtn;
  RaccourciMenuSelect:TMenuItem;
  end;

var
  FSMenuPrincipal: TFSMenuPrincipal;

procedure NowPrelevement;
Procedure ControleCompteur;
Procedure ControleUniteFonds;
Procedure AppliquerMiseAJourData;
Procedure ControleManuelSoldeDomiciliation;
Procedure IndiquerSessionOuverteAuxServeursReseaux(AdressePublicationChoisis:string);
Procedure IndiquerSessionOuverteAuxMembresReseaux(AdressePublicationChoisis:string);
Procedure ImporterSessionOuvertedesMembresReseaux;
Procedure IndiquerIdentificateurEntrepriseDansReseaux;
Function  DataIdentificateurReseaux:string;
Procedure IndiquerLocalisationGeographiqueEntreprise;
Function DataLocalisationGeographiqueEntreprise:string;
function  NonOui(Question:string):boolean;  //use Dialogs pour messageDLG
Procedure ControleTimerActivation(TimerAction:TTimer;  Activation:boolean);
Procedure ProcCopierFichier(AdresseSource,AdresseCible:string; Handle:HWND; RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression:boolean);
procedure copier(Handle:HWND;Source,Cible:String; FlagsOptions: FILEOP_FLAGS);
Function ChercherAvisUniqueX(NumAvis,Adresse:string; var PositionAvisX:string):boolean;
Procedure ArreterOrdinateur;
Procedure ControleExisteProjetFinance;
Procedure ChargerBouTonRacourci(Sender: TObject);
Function ImporterRaccourciMenu(BoutonRaccourcis:TBitBtn):TMenuItem;
Function ImporterCaptionBoutonRaccourci(BoutonRaccourci:TBitBTN):string;
Function IndiqueRaccourciMenu(PositionSousMenu0,PositionSousMenu1,PositionSousMenu2,PositionSousMenu3,PositionSousMenu4,PositionSousMenu5:string):TMenuItem;
Procedure ListeAffectationMenuRaccourci(TableauAffectationMenuRaccourci:TStringGrid; InitialiserSelection:boolean);

implementation

uses UnitInitialisation, API_LiberationProcessus, UnitFSCodeUtilisateurs, UnitInstalle, UnitFSAvis,
     UnitFSGenerateurBase, UnitFSTraitementDonnees, UnitPintAvis,
     UnitFSAccueilUtilisateurs, UnitFSGenerateurAccesPrivilegies,
     UnitFSConsultationExercice, UnitFSPrelevement, UnitFSNowPrelevement, UnitFSListePrelevement,
     UnitFSTransformationUniteFonds,
     UnitPrintEtatProcesverbalTransformationUFonds, UnitFSClients,
     UnitFSFournisseurs, UnitFSEffectifs, UnitFSFormules, UnitFSFicheSaisie,
     UnitFSFicheTechniqueProjet, UnitFSGenerateurMouvement,
     UnitFSModelFormuleCalcule, UnitFSMiseaJour, UnitFSFormulairePreselection,
     UnitPrintFormulairePreselection, UnitPrintAutorisationVerssement,
     UnitPrintBonQuantitatif, UnitPrintBonValorise, UnitPrintFacture,
     UnitPrintEtatTraitementDonneesPortrait, UnitPrintEtatTraitementDonnees,
     UnitFSRecapitulatifProjets, UnitFSPlanificateur, UnitFSAgenceBanque,
     UnitFSEcheancierPayement, UnitFSTiers,
     UnitFSGenerateurLocalisationGeographique, UnitFSParametresAvances,
     UnitFSResultatsAutocontroleAlerteExecution, UnitFSGenerateurEtats,
     UnitFSPlanComptable, UnitFSCreateFichierTexte, UnitPrintOuvrir,
     UnitFSMarche, UnitInitialisationSpeciale, UnitFSAttachements,
     UnitFSDetailMarche, UnitFSSituations, UnitFSOperationFinanceMarche,
     UnitFSModuleCalculeFormiles, UnitFSTravauxFinAnnee,
     UnitFSRechercheBaseDonnees, UnitFSControleSysteme, UnitFSUtilitaires,
     UnitFSBordereauEnvoi, UnitFSSairiePiecesDomiciliation,
     UnitFSGenerationGroupeTiers, UnitFSComptabiliteTransitoire,
     UnitFSBaremeComptabilisationCodeParCompte, UnitFSListeValeurs,
     UnitFSDecryptage, UnitFSMoyenTransport,
     UnitFSTransfertMagnetiqueDonnesCommerciales,
     UnitFSConnectiviteBaseDataSelection, UnitPrintBonQuantitatifPaysage,
     UnitFSArchivesPhotosCommentaires, UnitFSPublicationReseaux,
     UnitFSDataClient, UnitFSDataServeur, UnitFSServeurClient,
     UnitFSRessourceFinanciere, UnitFSAutorisationPartageRegistre,
     UnitFSPlanTravail, UnitShowmessage, UnitFSAffichage,
     UnitFSTraitementAnalyse, UnitFSConfigurationTableauxCols, UnitFSSocket,
     UnitFSSauvegarderBaseDonnees, UnitFSPatienter, UnitFSCopieLibre,
     UnitFSPublicite, UnitFSEtiquettesCodeBarre, UnitFSTicketTexte,
     UnitFSParametresPontBascule, UnitFSPDF, UnitPrintDemiTicketPontBascule,
     UnitFSParametrePDF, UnitPointeurs, UnitPrintBonQuantitatifDynamique,
  UnitFSPrestationService, UnitFSCourrierMail, UnitFSApplicationTerminate,
  UnitPrintFactureDinamique, UnitFSFormuleComposition, UnitSuppression,
  UnitPrintListeCodeBarre;

type
  TRGBArray = ARRAY[0..0] OF TRGBTriple;   // bitmap pixel (API windows)
  pRGBArray = ^TRGBArray;     // pointer to 3 bytes pixel(24 bits)

Var
  limitebmp2 : integer;   // adjustable mirror position
  savebmp2H  : integer;   // Bmp2 height for clic

  //   bitmap loaded (bmp1)
  //   +---------------+        bmp2             lake bmp3
  //   |               |    +-----------+       +---------+
  //   |               |    |   top     |       |  bottom |
  //   |               |===>|           | ===>  |         |
  //   |               |    |           |       +---------+
  //   |               |    |           |           ||
  //   |               |    |   bottom  |           ||
  //   |               |    +-----------+           ||
  //   |               |    \  mirror   \  Bmp4 <===//
  //   +---------------+    /           /
  //                        +-----------+
  bmp1 : Tbitmap;   // bitmap read
  bmp2 : Tbitmap;   // Bitmap loaded (on top of  paintbox1)
  bmp3 : Tbitmap;   // Bitmap (vertical mirror)
  bmp4 : Tbitmap;   // bitmap lake (paintbox bottom)
  // scanlines arrays for optimisation
  Tscan3 : array[0..1024] of pRGBArray;
  Tscan4 : array[0..1024] of PRGBArray;
  // Frames : numer of lake sector   Phase = current frame
  Frames : integer;
  Phase  : integer;
  stop : boolean;
  // calculated sinus (degrees)
  zsin : array[0..360] of single;

var

   RParc:RInstalle;
   FParc:FInstalle;
   ParcInstalle:string250;

   RRegistre,RRegistreCopie:REnregistrement;
   FRegistre,FRegistreCopie:FEnregistrement;
   ChEnregistrement,ChEnregistrementCopie:string250;

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

   TPrelevement,TPrelevementCopie:TPrelevements;
   RPrelevement,RPrelevementCopie:RPrelevements;
   FPrelevement,FPrelevementCopie:FPrelevements;
   ChPrelevement,ChPrelevementCopie:string250;

   TCompteur:TCompteurs;
   RCompteur:RCompteurs;
   FCompteur:FCompteurs;
   ChCompteur:string250;

   TPrelevementCompteur,TArchivePrelevementCompteur:TRegistrePrelevementCompteurs;
   RPrelevementCompteur,RArchivePrelevementCompteur:RRegistrePrelevementCompteurs;
   FPrelevementCompteur,FArchivePrelevementCompteur:FRegistrePrelevementCompteurs;
   ChPrelevementCompteur,ChArchivePrelevementCompteur:string250;

   TEquipe:TEquipes;
   REquipe:REquipes;
   FEquipe:FEquipes;
   ChEquipe:string250;

   TEffectifEquipe:TEffectifEquipes;
   REffectifEquipe:REffectifEquipes;
   FEffectifEquipe:FEffectifEquipes;
   ChEffectifEquipe:string250;

   TTypeUniteFonds:TTypeUniteFondss;
   RTypeUniteFonds:RTypeUniteFondss;
   FTypeUniteFonds:FTypeUniteFondss;
   ChTypeUniteFonds:string250;

   TUniteFonds:TUniteFondss;
   RUniteFonds:RUniteFondss;
   FUniteFonds:FUniteFondss;
   ChUniteFonds:string250;

   TPrelevementUniteFonds,TArchivePrelevementUniteFonds:TRegistrePrelevementUniteFondss;
   RPrelevementUniteFonds,RArchivePrelevementUniteFonds:RRegistrePrelevementUniteFondss;
   FPrelevementUniteFonds,FArchivePrelevementUniteFonds:FRegistrePrelevementUniteFondss;
   ChPrelevementUniteFonds,ChArchivePrelevementUniteFonds:string250;

   TAvis:TAviss;
   RAvis:RAviss;
   FAvis:FAviss;
   ChAvis:string250;

   TTypeAvis:TTypeAviss;
   RTypeAvis:RTypeAviss;
   FTypeAvis:FTypeAviss;
   ChTypeAvis:string250;

TFormulairePreselection,TFormulairePreselectionCopie:TFormulairePreselections;
RFormulairePreselection,RFormulairePreselectionCopie:RFormulairePreselections;
FFormulairePreselection,FFormulairePreselectionCopie:FFormulairePreselections;
ChFormulairePreselection,ChFormulairePreselectionCopie:string250;

TProjetFinance:TProjetFinances;
RProjetFinance:RProjetFinances;
FProjetFinance:FProjetFinances;
ChProjetFinance:string250;

TDomiciliation:TDomiciliations;
RDomiciliation:RDomiciliations;
FDomiciliation:FDomiciliations;
ChDomiciliation:string250;

TDetailRubriqueFicheTechnique,TDetailRubriqueFicheTechniqueCopie:TDetailRubriqueFicheTechniques;
RDetailRubriqueFicheTechnique,RDetailRubriqueFicheTechniqueCopie:RDetailRubriqueFicheTechniques;
FDetailRubriqueFicheTechnique,FDetailRubriqueFicheTechniqueCopie:FDetailRubriqueFicheTechniques;
ChDetailRubriqueFicheTechnique,ChDetailRubriqueFicheTechniqueCopie:string250;

TRubriqueFicheTechnique,TRubriqueFicheTechniqueCopie:TRubriqueFicheTechniques;
RRubriqueFicheTechnique,RRubriqueFicheTechniqueCopie:RRubriqueFicheTechniques;
FRubriqueFicheTechnique,FRubriqueFicheTechniqueCopie:FRubriqueFicheTechniques;
ChRubriqueFicheTechnique,ChRubriqueFicheTechniqueCopie:string250;


TFicheTechnique,TFicheTechniqueCopie:TFicheTechniques;
RFicheTechnique,RFicheTechniqueCopie:RFicheTechniques;
FFicheTechnique,FFicheTechniqueCopie:FFicheTechniques;
ChFicheTechnique,ChFicheTechniqueCopie:string250;

TPlanificateur,TPlanificateurCopie:TPlanificateurs;
RPlanificateur,RPlanificateurCopie:RPlanificateurs;
FPlanificateur,FPlanificateurCopie:FPlanificateurs;
ChPlanificateur,ChPlanificateurCopie:string250;

{$R *.dfm}        

Procedure ControleUniteFonds;
var  NbrUniteFondsPlanifier,NbrUniteFondsPreleve:integer;  OKNbrUniteFonds:boolean;
begin
     OpenFParc(RParc);
     ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+'FPrelevementUniteFonds';
     assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
     try
     if FileExists(ChPrelevementUniteFonds)then
     Reset(FPrelevementUniteFonds)
     else begin affichermessage('Attention ! {'+ChPrelevementUniteFonds+'} n''existe pas !'); exit; end;//Rewrite(FPrelevementUniteFonds);
     Seek(FPrelevementUniteFonds,0);
     NbrUniteFondsPreleve:=0;
     while not eof(FPrelevementUniteFonds)do
     begin
          read(FPrelevementUniteFonds,RPrelevementUniteFonds);
          NbrUniteFondsPreleve:=NbrUniteFondsPreleve+1;
     end;

     ChUniteFonds:=RParc.Parcours+'\'+Exercice+'FUniteFonds';
     assignfile(FUniteFonds,ChUniteFonds);
     try
     if FileExists(ChUniteFonds)then
     Reset(FUniteFonds)
     else begin affichermessage('Attention ! {'+ChUniteFonds+'} n''existe pas !'); exit; end;//Rewrite(FUniteFonds);
     Seek(FUniteFonds,0);
     NbrUniteFondsPlanifier:=0;
     while not eof(FUniteFonds)do
     begin
          read(FUniteFonds,RUniteFonds);
          NbrUniteFondsPlanifier:=NbrUniteFondsPlanifier+1;
     end;

     Seek(FUniteFonds,0);
     OKNbrUniteFonds:=true;
     while not eof(FUniteFonds)and(OKNbrUniteFonds=true)do
     begin
          read(FUniteFonds,RUniteFonds);

          Seek(FPrelevementUniteFonds,0);
          OKNbrUniteFonds:=false;
          while not eof(FPrelevementUniteFonds)and(OKNbrUniteFonds=false)do
          begin
               read(FPrelevementUniteFonds,RPrelevementUniteFonds);
               if(RUniteFonds.NumUniteFonds=RPrelevementUniteFonds.NumUniteFonds)then OKNbrUniteFonds:=true;
          end;

     end;
     finally
     CloseFile(FPrelevementUniteFonds);
     end;

     finally
     CloseFile(FUniteFonds);
     end;

     if(NbrUniteFondsPlanifier=NbrUniteFondsPreleve)then
     begin
          if(OKNbrUniteFonds=false)then showmessage('Attention ! Vous devez refaire le prélèvement !  L''une des unités planifiés est différente des unités  chargés !');
     end
     else
     begin
          if(OKNbrUniteFonds=true)then
          begin
               if(NbrUniteFondsPlanifier>NbrUniteFondsPreleve)then showmessage('Attention ! Le nombre d''unités planifiés supérieur au nombre relevés !');
               //if(NbrUniteFondsPreleve>NbrUniteFondsPlanifier)then showmessage('Attention ! Le nombre d''unités relevés supérieur au nombre planifiés!');
          end
          else
          begin
               if(NbrUniteFondsPlanifier>NbrUniteFondsPreleve)then showmessage('Attention ! Vous devez refaire le prélèvement !  L''une des unités planifiés n''est pas chargé ! ');
               if(NbrUniteFondsPreleve>NbrUniteFondsPlanifier)then showmessage('Attention ! Vous devez refaire le prélèvement !  L''une des unités chargés n''est pas planifié ! ');
          end;
     end;
end;

Procedure ControleCompteur;
var NbrCompteurPlanifier,NbrCompteurPreleve:integer; OKNbrCompteur:boolean;
begin
     OpenFParc(RParc);
     ChPrelevementCompteur:=RParc.Parcours+'\'+Exercice+'FPrelevementCompteur';
     assignfile(FPrelevementCompteur,ChPrelevementCompteur);
     try
     if FileExists(ChPrelevementCompteur)then
     Reset(FPrelevementCompteur)
     else begin affichermessage('Attention ! {'+ChPrelevementCompteur+'} n''existe pas !'); exit; end;//Rewrite(FPrelevementCompteur);
     Seek(FPrelevementCompteur,0);
     NbrCompteurPreleve:=0;
     while not eof(FPrelevementCompteur)do
     begin
          read(FPrelevementCompteur,RPrelevementCompteur);
          NbrCompteurPreleve:=NbrCompteurPreleve+1;
     end;

     ChCompteur:=RParc.Parcours+'\'+Exercice+'FCompteur';
     assignfile(FCompteur,ChCompteur);
     try
     if FileExists(ChCompteur)then
     Reset(FCompteur)
     else begin affichermessage('Attention ! {'+ChCompteur+'} n''existe pas !'); exit; end;//Rewrite(FCompteur);
     Seek(FCompteur,0);
     NbrCompteurPlanifier:=0;
     while not eof(FCompteur)do
     begin
          read(FCompteur,RCompteur);
          NbrCompteurPlanifier:=NbrCompteurPlanifier+1;
     end;

     Seek(FCompteur,0);
     OKNbrCompteur:=true;
     while not eof(FCompteur)and(OKNbrCompteur=true)do
     begin
          read(FCompteur,RCompteur);

          Seek(FPrelevementCompteur,0);
          OKNbrCompteur:=false;
          while not eof(FPrelevementCompteur)and(OKNbrCompteur=false)do
          begin
               read(FPrelevementCompteur,RPrelevementCompteur);
               if(RCompteur.NumCompteur=RPrelevementCompteur.NumCompteur)then OKNbrCompteur:=true;
          end;

     end;
     finally
     CloseFile(FPrelevementCompteur);
     end;

     finally
     CloseFile(FCompteur);
     end;

     if(NbrCompteurPlanifier=NbrCompteurPreleve)then
     begin
          if(OKNbrCompteur=false)then showmessage('Attention ! Vous devez refaire le prélèvement !  L''un des compteurs planifiés est différent des compteurs  chargés !');
     end
     else
     begin
          if(OKNbrCompteur=true)then
          begin
               if(NbrCompteurPlanifier>NbrCompteurPreleve)then showmessage('Attention ! Le nombre de compteurs planifiés supérieur au nombre relevés !');
               if(NbrCompteurPreleve>NbrCompteurPlanifier)then showmessage('Attention ! Le nombre de compteurs relevés supérieur au nombre planifiés!');
          end
          else
          begin
               if(NbrCompteurPlanifier>NbrCompteurPreleve)then showmessage('Attention ! Vous devez refaire le prélèvement !  L''un des compteurs planifiés n''est pas chargé ! ');
               if(NbrCompteurPreleve>NbrCompteurPlanifier)then showmessage('Attention ! Vous devez refaire le prélèvement !  L''un des compteurs chargés n''est pas planifié ! ');
          end;
     end;
end;

procedure NowPrelevement;
var   i:integer; NbrPrelevement,NumEquipe,MinNumEquipe,MaxNumEquipe:integer; ArchivePrelevement:boolean;
      NumPrelevement,NumPrelevementFin,DateDebut,HeureDebut,DateFin,HeureFin,LastDate,LastHeure,NumStructure,TypeProcesPrelevement,FichierConcernePrelevement,AdressePrelevement:string;
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
      Seek(FPrelevement,0);
      NumPrelevement:='1';
      NumPrelevementFin:='';
      ArchivePrelevement:=true;
      NumEquipe:=0;
      LastDate:=datetostr(date);
      LastHeure:=timetostr(time);
      i:=0;
      while not eof(FPrelevement)and(ArchivePrelevement=true)do
      begin
           read(FPrelevement,RPrelevement);
           if(RPrelevement.NumPrelevement>=strtointeger(NumPrelevement))then
           begin
                NumPrelevement:=inttostr(RPrelevement.NumPrelevement+1);
                LastDate:=RPrelevement.DatePrelevement;
                LastHeure:=RPrelevement.HeurePrelevement;
                NumEquipe:=RPrelevement.NumEquipe;
           end;
           ArchivePrelevement:=RPrelevement.Archiver;

           if(RPrelevement.Archiver=false)then
           begin
                NumPrelevement:=inttostr(RPrelevement.NumPrelevement);
                DateDebut:=RPrelevement.DatePrelevement;
                HeureDebut:=RPrelevement.HeurePrelevement;
                DateFin:=RPrelevement.DatePrelevement;
                HeureFin:=RPrelevement.HeurePrelevement;
           end;

           i:=i+1;
      end;
      finally
      CloseFile(FPrelevement);
      end;
end;

if(ArchivePrelevement=true)then
begin
     FSNowPrelevement.Show;
     FSNowPrelevement.EditPositionPrelevement.Text:=inttostr(i);
     FSNowPrelevement.EditNumPrelevement.Text:=NumPrelevement;
     FSNowPrelevement.EditCodeUtilisateur.Text:=FSMenuPrincipal.EditCodeUtilisateur.Text;
     RUtilisateur:=ChercherUtilisateur(FSNowPrelevement.EditCodeUtilisateur.Text);
     FSNowPrelevement.EditUtilisateur.Text:=RUtilisateur.Nom+' '+RUtilisateur.Prenom;
     FSNowPrelevement.EditDatePrelevement.Date:=strtodate(LastDate);
     FSNowPrelevement.EditHeurePrelevement.Time:=strtotime(LastHeure);
     FSNowPrelevement.EditDatePrelevement.SetFocus;

     OpenFParc(RParc);
     ChEquipe:=RParc.Parcours+'\'+Exercice+'FEquipe';
     assignfile(FEquipe,ChEquipe);
     if FileExists(ChEquipe)then
     begin
          try
          Reset(FEquipe);
          Seek(FEquipe,0);
          MaxNumEquipe:=0;
          MinNumEquipe:=999999999;
          while not eof(FEquipe)do
          begin
               read(FEquipe,REquipe);
               if(MaxNumEquipe<REquipe.NumEquipe)then MaxNumEquipe:=REquipe.NumEquipe;
               if(MinNumEquipe>REquipe.NumEquipe)then MinNumEquipe:=REquipe.NumEquipe;
          end;
          finally
          CloseFile(FEquipe);
          end;
     end;

     Division(NumEquipe,MaxNumEquipe,MaxNumEquipe,NumEquipe);

     NumEquipe:=NumEquipe+1;

     REquipe:=ChercherEquipe(inttostr(NumEquipe));

     if(strtotime(REquipe.HeureFin)<strtotime(LastHeure))
     then FSNowPrelevement.EditDatePrelevement.Date:=strtodate(LastDate)+1
     else FSNowPrelevement.EditDatePrelevement.Date:=strtodate(LastDate);

     FSNowPrelevement.EditNumEquipe.Text:=inttostr(NumEquipe);
     FSNowPrelevement.EditDesignationEquipe.Text:=REquipe.DesignationEquipe;
     FSNowPrelevement.EditHeurePrelevement.Time:=strtotime(REquipe.HeureFin);
     ListeEffectifEquipe(FSNowPrelevement.TableauEffectifEquipe,inttostr(NumEquipe),false);
     FSNowPrelevement.TableauEquipe.Visible:=false;
end
else
begin
     ControleCompteur;
     ControleUniteFonds;
     FSPrelevement.PagePrelevementCompteursUniteFonds.Show;
     FSPrelevement.Show;
     FSPrelevement.AfficheDetailCompteurs.Left:=40;
     FSPrelevement.AfficheDetailCompteurs.Top:=40;
     FSPrelevement.EditMatricule.Text:='';
     FSPrelevement.EditNomEffectif.Text:='';
     AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
     FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,'',NumStructure);
     FSPrelevement.EditModifierPrelevement.Text:='';

     FSPrelevement.EditNumStructure.Text:=NumStructure;
     FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
end;

ListeAffectationEffectifEquipe(FSNowPrelevement.TableauAffectationEffectifEquipe,FSPrelevement.TableauTitreAffectationEffectifEquipe,FSNowPrelevement.EditNumPrelevement.Text,FSNowPrelevement.EditNumEquipe.Text,'',FSPrelevement.EditFondRoulement,NumStructure);
ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);
FSNowPrelevement.TimerControle.Enabled:=true;
end;

procedure TFSMenuPrincipal.RpertoiredeSauvegarde1Click(Sender: TObject);
var   i,RowSelect:integer; Adresse,Separator:string;  RepertoireDisque:PChar;
begin
     if not AccesPrivilegies('FS Répertoire Sauvegarde',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     if(FSMenuPrincipal.EditCodeUtilisateur.Text=FSMenuPrincipal.EditCodeFondateurParDefaut.Text)then
     begin
          FSMenuPrincipal.AfficheChoisConnectivite.Visible:=true;
     end
     else
     if(FunctionModeConnectiviteBaseDataSelection=true)then
     begin
          FSConnectiviteBaseDataSelection.Show;
          FSConnectiviteBaseDataSelection.AfficheBaseValide.Enabled:=false;
          FSConnectiviteBaseDataSelection.AfficheBaseValide.Color:=clRed;
          FSConnectiviteBaseDataSelection.AfficheDataInstall.Visible:=false;

          OpenFParc(RParc);
          FSConnectiviteBaseDataSelection.LabelFichierSauv.Caption:=RParc.Parcours+'.';
     end
     else
     begin
          if(FSMenuPrincipal.RBAutoriseConectiviteRepertoireActuel.Checked=false)then
          begin
               if FileExists('C:\WinBus.File')then
               begin
                    assignfile(FRegistreVolatile,'C:\WinBus.File');
                    try
                    reset(FRegistreVolatile);
                    Seek(FRegistreVolatile,0);
                    Read(FRegistreVolatile,RRegistreVolatile);
                    FSInstalle.LabelNomEnregistre2.Caption:='Projet ouvert:  '+RRegistreVolatile.Repertoire;
                    finally
                    CloseFile(FRegistreVolatile);
                    end;
               end;

               if FileExists('C:\WinBuss.dll')then
               begin
                    assignfile(FRegistre,'C:\WinBuss.dll');
                    try
                    reset(FRegistre);
                    Seek(FRegistre,0);
                    i:=0;
                    RowSelect:=0;
                    while not eof(FRegistre) do
                    begin
                         Read(FRegistre,RRegistre);
                         FSInstalle.TableauRegistres.Rows[i].Text:=inttostr(i);
                         FSInstalle.TableauRegistres.Cells[1,i]:=RRegistre.Repertoire;
                         FSInstalle.TableauRegistres.Cells[2,i]:=RRegistre.Adresse;
                         FSInstalle.TableauRegistres.Cells[3,i]:=RRegistre.Exercice;
                         if(RRegistre.Repertoire=RRegistreVolatile.Repertoire)then RowSelect:=i;
                         i:=i+1;
                    end;
                    finally
                    CloseFile(FRegistre);
                    end;
                    
                    FSInstalle.TableauRegistres.RowCount:=i;
                    FSInstalle.TableauRegistres.ColWidths[2]:=0;
                    FSInstalle.TableauRegistres.Row:=RowSelect;
               end;
          end
          else
          begin
               i:=1;
               RowSelect:=1;
               FSInstalle.TableauRegistres.Rows[i].Text:=inttostr(i);
               FSInstalle.TableauRegistres.Cells[1,i]:=FSMenuPrincipal.EditRepertoireActuel.Text;
               FSInstalle.TableauRegistres.Cells[2,i]:=GetCurrentDir;
               FSInstalle.TableauRegistres.Cells[3,i]:=FSMenuPrincipal.EditExerciceRepertoireActuel.Text;

               FSInstalle.TableauRegistres.RowCount:=i+1;
               FSInstalle.TableauRegistres.ColWidths[2]:=0;
               FSInstalle.TableauRegistres.Row:=RowSelect;
          end;

      FSInstalle.EditExercice.Text:=FSInstalle.TableauRegistres.Cells[3,FSInstalle.TableauRegistres.Row];

      TitreFicheSaisie(FSInstalle,'FS.Installe');
      FSInstalle.show;
      FSInstalle.PageParcoursEnregistrement.Show;
      FSInstalle.PanelClef.Visible:=true;
      FSInstalle.EditClef.Text:='';
      OpenFParc(RParc);
      FSInstalle.LabelFichierSauv.Caption:=RParc.Parcours+'.';
      FSInstalle.LabelText1.Caption:=RParc.Text1;
      FSInstalle.LabelText2.Caption:=RParc.Text2;
      FSInstalle.LabelText3.Caption:=RParc.Text3;
      FSInstalle.LabelText4.Caption:=RParc.Text4;
      FSInstalle.LabelText5.Caption:=RParc.Text5;
      FSInstalle.LabelText6.Caption:=RParc.Text6;
      FSInstalle.LabelText7.Caption:=RParc.Text7;
      FSInstalle.LabelText8.Caption:=RParc.Text8;
      FSInstalle.LabelText9.Caption:=RParc.Text9;
      FSInstalle.LabelText10.Caption:=RParc.Text10;

      if(RParc.NomLogo<>'')then
      begin
           Adresse:=RParc.Parcours+'\'+Entreprise+RParc.NomLogo;
           if FileExists(Adresse)then
           begin
                FSInstalle.LogoAffiche.Picture.LoadFromFile(Adresse);
           end;
      end;

      if(RParc.NomLabel<>'')then
      begin
           Adresse:=RParc.Parcours+'\'+Entreprise+RParc.NomLabel;
           if FileExists(Adresse)then
           begin
                FSInstalle.LabelISOAffiche.Picture.LoadFromFile(Adresse);
           end;
      end;

      if FileExists('C:\WinBus.File')then
      begin
           assignfile(FRegistre,'C:\WinBus.File');
           try
           reset(FRegistre);
           Read(FRegistre,RRegistre);
           ChEnregistrement:=RRegistre.Adresse;
           finally
           CloseFile(FRegistre);
           end;

           RepertoireDisque:=PChar(ExtractFileDrive(ChEnregistrement));
           if(lastlaters(RepertoireDisque,1)='\')
           then Separator:=''
           else Separator:='\';
           FSInstalle.InfoNumSerie.Caption:='Numéro de série d''Installation: '+inttostr(InfoDataDisqueNumSerie)+'{'+inttostr(ProcNumSerieDisque(RepertoireDisque+Separator))+'}';
      end;

      FSInstalle.TableauRegistres.Height:=0;
      FSInstalle.BitInsertEntite.Visible:=false;
      FSInstalle.EditCodeAccer.SetFocus;
     end;
end;

procedure TFSMenuPrincipal.AvisFinancier1Click(Sender: TObject);
var  i,NbrBaseAvis:integer;   TypeProces,FichierConserne,Adresse,FichierBaseAvis:string;
begin

if not AccesPrivilegies('FS Avis',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

FSRessourceFinanciere.RBMultiSelection.Checked:=false;

NbrBaseAvis:=ChoisirNbrBaseAvis(true,'AV',FichierBaseAvis);

if(NbrBaseAvis=0)or(NbrBaseAvis>1)then Exit;

ListeBaseAvisBox(FSAvis.EditBaseAvis,FSAvis.TitreEditBaseAvis);
FSAvis.EditBaseAvis.Text:=FichierBaseAvis;

AfficherFSAvis(FichierBaseAvis);

FSAvis.EditTiersDateDebut.Date:=strtodate('01/'+lastlaters(datetostr(date),7));
FSAvis.EditTiersDateFin.Date:=date;
end;

procedure TFSMenuPrincipal.GnrateurdetypedAvis1Click(Sender: TObject);
begin
if not AccesPrivilegies('FS Générateur Avis',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

FSGenerateurBase.Show;
FSGenerateurBase.PageGenerateurBaseAvis.Show;
FSGenerateurBase.PageGenerateurTypeAvis.Show;

FSGenerateurBase.EditTypeProcesReseaux.Items.Text:='';
FSGenerateurBase.EditTypeProcesReseaux.Items.Add('Business');

OpenFParc(RParc);
ChAdresseDossierPartageReseaux:=RParc.Parcours+'\'+Exercice+'FAdresseDossierPartageReseaux';
assignfile(FAdresseDossierPartageReseaux,ChAdresseDossierPartageReseaux);
if FileExists(ChAdresseDossierPartageReseaux)then
begin
     try
     Reset(FAdresseDossierPartageReseaux);
     Seek(FAdresseDossierPartageReseaux,0);
     while not eof(FAdresseDossierPartageReseaux)do
     begin
          read(FAdresseDossierPartageReseaux,RAdresseDossierPartageReseaux);
          FSGenerateurBase.EditTypeProcesReseaux.Items.Add(RAdresseDossierPartageReseaux.NomPosteReseaux);
     end;
     finally
     CloseFile(FAdresseDossierPartageReseaux);
     end;
end;

FSGenerateurBase.EditTypeProcesReseaux.ItemIndex:=0;
end;

procedure TFSMenuPrincipal.GnrateurTypedeProjets1Click(Sender: TObject);
begin
if not AccesPrivilegies('FS Générateur Type Projets',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

FSGenerateurBase.Show;
FSGenerateurBase.PageGenerateurBaseAvis.Show;
FSGenerateurBase.PageTypeProjet.Show;
end;

procedure TFSMenuPrincipal.GnrateurdeProjet2Click(Sender: TObject);
begin
if not AccesPrivilegies('FS Générateur Projets',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

FSGenerateurBase.Show;
FSGenerateurBase.PageGenerateurBaseAvis.Show;
FSGenerateurBase.PageProjet.Show;

FSGenerateurBase.AfficheIndiqueArchivePhoto.Left:=1040;
FSGenerateurBase.AfficheIndiqueArchivePhoto.Height:=225;
FSGenerateurBase.AfficheIndiqueArchivePhoto.Width:=225;
end;

procedure TFSMenuPrincipal.GnrateurdAdressedesProcesUtilis1Click(
  Sender: TObject);
begin
if not AccesPrivilegies('FS Générateur Adresses Proces',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

FSGenerateurBase.Show;
FSGenerateurBase.PageGenerateurBaseAvis.Show;
FSGenerateurBase.PageAdresseProces.Show;
end;

procedure TFSMenuPrincipal.raitementdesDomiciliations1Click(
  Sender: TObject);
var  NbrBaseAvis:integer;  FichierBaseAvis:string;
begin
     if not AccesPrivilegies('FS Traitement Domiciliation',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSRessourceFinanciere.RBMultiSelection.Checked:=true;

     NbrBaseAvis:=ChoisirNbrBaseAvis(true,'TD',FichierBaseAvis);

     if(NbrBaseAvis=0)or(NbrBaseAvis>1)then Exit;

     ListeBaseAvisBox(FSTraitementDonnees.EditBaseAvisFichierConcerne,FSTraitementDonnees.TitreEditBaseAvisFichierConcerne);
     FSTraitementDonnees.EditBaseAvisFichierConcerne.Text:=FichierBaseAvis;

     AfficheTraitementDomiciliation;
end;

procedure TFSMenuPrincipal.raitementdesTiers1Click(Sender: TObject);
var  NbrBaseAvis:integer;  FichierBaseAvis:string;
begin
     if not AccesPrivilegies('FS Traitement Tiers',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSRessourceFinanciere.RBMultiSelection.Checked:=true;

     NbrBaseAvis:=ChoisirNbrBaseAvis(true,'TT',FichierBaseAvis);

     if(NbrBaseAvis=0)or(NbrBaseAvis>1)then Exit;

     ListeBaseAvisBox(FSTraitementDonnees.EditBaseAvisFichierConcerne,FSTraitementDonnees.TitreEditBaseAvisFichierConcerne);
     FSTraitementDonnees.EditBaseAvisFichierConcerne.Text:=FichierBaseAvis;

     AfficheTraitementTiers;
end;

procedure TFSMenuPrincipal.TimerCodeAccesTimer(Sender: TObject);
var  AdresseCible,Separator:string; TravauxConnexionReseaux,ActiverPublicationReseaux:boolean;
     Key: Word; Shift: TShiftState;
begin
     MiseAJourOptionsFicheSaisieExercice;

     if(FunctOKRedemarrerCodeFondateurParDefaut=false)then
     begin
          AppliquerRubriquesSousMenu('','','','','','',true);
     end
     else EnregistrerRedemarrerCodeFondateurParDefaut(false);

     ChargementOptionsTicket;

     ListeAdresseDossierPartageReseaux(FSMenuPrincipal.TableauAdresseDossierPartageReseaux,false,true,false);

     FSMenuPrincipal.RBActiveAfficheMessage.Checked:=false;
     FSMenuPrincipal.EditRapport.Lines.Text:='';

     FSMenuPrincipal.TimerCodeAcces.Enabled:=false;
     FSMenuPrincipal.TimerClosedMenuPrincipal.Enabled:=false;
     FSMenuPrincipal.TimerOptimisation.Enabled:=true;

     ///////////////////////////////////////////////////////////////////////////
     TravauxConnexionReseaux:=false;
     ActiverPublicationReseaux:=false;

     FSMenuPrincipal.InfoPublicationReseauxProgrammer.Caption:='Instance';

     try

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     begin
          Reset(FActiverPublicationReseaux);
          Seek(FActiverPublicationReseaux,0);
          if not eof(FActiverPublicationReseaux)then
          begin
               read(FActiverPublicationReseaux,RActiverPublicationReseaux);  Application.ProcessMessages;
               TravauxConnexionReseaux:=RActiverPublicationReseaux.TravauxConnexionReseaux;
               ActiverPublicationReseaux:=RActiverPublicationReseaux.ActiverPublicationReseaux;
               RActiverPublicationReseaux.TravauxConnexionReseaux:=true;
               RActiverPublicationReseaux.ActiverPublicationReseaux:=true;
               Seek(FActiverPublicationReseaux,0);
               write(FActiverPublicationReseaux,RActiverPublicationReseaux);
          end;
     CloseFile(FActiverPublicationReseaux);
     end;

     FSMenuPrincipal.RBConnectiviteReseaux.Checked:=TravauxConnexionReseaux;//TravauxConnexionReseaux;
     ///////////////////////////////////////////////////////////////////////////

     FSMenuPrincipal.Pnl_ProcessusActif.Caption:='Oui';
     FSMenuPrincipal.RBConnectiviteReseaux.Checked:=false;//FunctionTravauxConnexionReseaux;
     IndiquerAdresseIPAuxClientReseaux('','',''); //'indiquer Adresse IP May Machine'
     IndiquerSessionOuverteAuxMembresReseaux('');//indiquer l'exercice ouvert actuel
     ImporterSessionOuvertedesMembresReseaux;//importer l'exercice ouvert actuel
     IndiquerListeFichierPartagerAuxClientsReseaux('','');// Procedure réseaux
     IndiquerIdentificateurEntrepriseDansReseaux;
     IndiquerLocalisationGeographiqueEntreprise;

     ///////////////////////////////////////////////////////////////////////////

     finally

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     begin
          Reset(FActiverPublicationReseaux);
          Seek(FActiverPublicationReseaux,0);
          if not eof(FActiverPublicationReseaux)then
          begin
               read(FActiverPublicationReseaux,RActiverPublicationReseaux);  Application.ProcessMessages;
               RActiverPublicationReseaux.TravauxConnexionReseaux:=TravauxConnexionReseaux;
               RActiverPublicationReseaux.ActiverPublicationReseaux:=ActiverPublicationReseaux;
               Seek(FActiverPublicationReseaux,0);
               write(FActiverPublicationReseaux,RActiverPublicationReseaux);
          end;
     CloseFile(FActiverPublicationReseaux);
     end;
     FSMenuPrincipal.RBConnectiviteReseaux.Checked:=TravauxConnexionReseaux;//FTravauxConnexionReseaux;
     end;
     ///////////////////////////////////////////////////////////////////////////
     
     FSMenuPrincipal.InfoPublicationReseauxProgrammer.Caption:='';

     OpenFParc(RParc);
     ChAdresseProces:=RParc.Parcours+'\'+Exercice+'FAdresseProces';
     assignfile(FAdresseProces,ChAdresseProces);
     if FileExists(ChAdresseProces)then
     begin
          try
          Reset(FAdresseProces);
          if(filesize(FAdresseProces)>0)then FSMenuPrincipal.AfficheRapport.Visible:=FunctAfficherRapportPublicationReseaux;

     finally
     CloseFile(FAdresseProces);
     end;
     end;

     if(FSMenuPrincipal.RBConnectiviteReseaux.Checked=true)then
     begin
          FSMenuPrincipal.AfficheAdresseDossierPartageReseaux.Visible:=true;
          ListeAdresseDossierPartageReseaux(FSMenuPrincipal.TableauAdresseDossierPartageReseaux,true,false,True);// Contrôle connéctivité réseaux
          FSMenuPrincipal.TimerConnxionServeurClient.Enabled:=true;
          //PublierDansLeReseaux('','','',FSMenuPrincipal.RBImporteAutorisationReseaux.Checked); //Publication réseaux
     end
     else MiseAjourCaptionMenuPrincipal(FSMenuPrincipal.TableauAdresseDossierPartageReseaux);

     if FileExists('C:\WinBus.File')then
     begin//D1
          assignfile(FRegistre,'C:\WinBus.File');
          try
          reset(FRegistre);
          Read(FRegistre,RRegistre);
          ChEnregistrement:=RRegistre.Adresse;
          finally
          CloseFile(FRegistre);
          end;

          AdresseCible:=ExtractFileDrive(ChEnregistrement);
          if(lastlaters(AdresseCible,1)='\')
          then Separator:=''
          else Separator:='\';

          OpenFParc(RParc);
          if(MidelLaters(RParc.Parcours,1,2)<>'\\')then
          begin
               if(InfoDataDisqueNumSerie=ProcNumSerieDisque(AdresseCible+Separator))then
               begin
                    FSMenuPrincipal.PanelAfficheSerieDisque.Visible:=false;
                    if(FuncCodeAccesLibre=false)then
                    begin
                         FSCodeUtilisateurs.Show;
                         FSCodeUtilisateurs.AfficheModifierCodeAcces.Visible:=false;
                         FSCodeUtilisateurs.EditCodeAcces.Text:='';
                         FSCodeUtilisateurs.EditCodeAcces.SetFocus;

                         if(FindAllDataOptionsFicheSaisie(FSFicheSaisie.RBChercheArticleParCodeBarre.Name,'Oui')=true)
                         or(FindAllDataOptionsFicheSaisie(FSFicheSaisie.RBChercheArticleParPontBascule.Name,'Oui')=true)
                         then
                         begin
                              VerificationCodeAcces;
                         end;
                    end
                    else
                    begin
                         VerificationCodeAcces;
                    end;
               end
               else
               begin
                    //showmessage('N° série disque enregistré: '+inttostr(InfoDataDisqueNumSerie)+', N° série disque physique: '+inttostr(ProcNumSerieDisque(AdresseCible+Separator)));
                    FSMenuPrincipal.PanelAfficheSerieDisque.Visible:=true;
                    FSMenuPrincipal.PanelAfficheSerieDisque.Left:=ValeAbsolue(FSMenuPrincipal.Width/2)-ValeAbsolue(FSMenuPrincipal.PanelAfficheSerieDisque.Width/2);
                    FSMenuPrincipal.PanelAfficheSerieDisque.Top:=ValeAbsolue(FSMenuPrincipal.Height/2)-ValeAbsolue(FSMenuPrincipal.PanelAfficheSerieDisque.Height/2)-59;
                    FSMenuPrincipal.PanelAfficheSerieDisque.Caption:='Installation corrompue ! N° série: '+inttostr(InfoDataDisqueNumSerie)+'{'+inttostr(ProcNumSerieDisque(AdresseCible+Separator))+'}';
                    FSMenuPrincipal.MenuPrincipal.Items[0].Enabled:=false;
                    FSMenuPrincipal.MenuPrincipal.Items[1].Enabled:=false;
                    FSMenuPrincipal.MenuPrincipal.Items[2].Enabled:=false;
                    FSMenuPrincipal.MenuPrincipal.Items[4].Enabled:=false;
                    FSMenuPrincipal.MenuPrincipal.Items[5].Enabled:=false;
                    FSMenuPrincipal.TimerControleCouleur.Enabled:=true;
                    FSMenuPrincipal.TimerClosedMenuPrincipal.Enabled:=true;
               end;
          end;

          //importation DATA ENTREPRISE au registre Base de données.............
          if FileExists(ChEnregistrement)then
          begin
               assignfile(FParc,ChEnregistrement);
               try
               reset(FParc);
               Seek(FParc,0);
               if not eof(FParc)then
               begin
                    Read(FParc,RParc);
               end;
               finally
               CloseFile(FParc);
               end;

               assignfile(FParc,RParc.Parcours+'\'+Exercice+'FData Entreprise');
               try
               Rewrite(FParc);
               Seek(FParc,0);
               write(FParc,RParc);
               finally
               CloseFile(FParc);
               end;

               assignfile(FTypeProces,RParc.Parcours+'\'+'FTypeProces');
               try
               Rewrite(FTypeProces);
               Seek(FTypeProces,0);
               RTypeProces.TypeProces:='Business';
               write(FTypeProces,RTypeProces);
               finally
               CloseFile(FTypeProces);
               end;
          end;
          //////////////////////////////////////////////////////////////////////
     end;

     if(FinReouvertureClotureExercice(ExerciceAnnee))then
     begin
          FSMenuPrincipal.AfficheExerciceCloture.Visible:=true;
          FSMenuPrincipal.AfficheExerciceCloture.Caption:='Exercice '+ExerciceAnnee+' Côluré !';
     end
     else
     begin
          FSMenuPrincipal.AfficheExerciceCloture.Visible:=false;
          FSMenuPrincipal.AfficheExerciceCloture.Caption:='';
     end;

     FormeAvantPlan(FSMenuPrincipal,FSCodeUtilisateurs,true);
     ActiveIconesMenu;


     if(FunctOKRedemarrerReouverture)then
     begin
          if(FSPublicationReseaux.RBPublicationActive.Checked=false)then
          begin
               FSPublicationReseaux.AfficheMessage.Caption:='Patientez SVP ! Publication réseaux réouverture !';
               FSPublicationReseaux.Show;
               FormeAvantPlan(FSMenuPrincipal,FSPublicationReseaux,true);
               FSPublicationReseaux.TimerPublicationReseaux.Enabled:=true;
               EnregistrerRedemarrerReouverture(false);
          end;
     end;

     FSMenuPrincipal.AfficherMenuRaccourcis.Visible:=ActivationRubriquesSousMenu('AfficherMenuRaccourcis');

     FSMenuPrincipal.BitRaccourci01.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci01);
     FSMenuPrincipal.BitRaccourci02.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci02);
     FSMenuPrincipal.BitRaccourci03.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci03);
     FSMenuPrincipal.BitRaccourci04.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci04);
     FSMenuPrincipal.BitRaccourci05.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci05);
     FSMenuPrincipal.BitRaccourci06.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci06);
     FSMenuPrincipal.BitRaccourci07.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci07);
     FSMenuPrincipal.BitRaccourci08.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci08);
     FSMenuPrincipal.BitRaccourci09.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci09);
     FSMenuPrincipal.BitRaccourci10.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci10);
     FSMenuPrincipal.BitRaccourci11.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci11);
     FSMenuPrincipal.BitRaccourci12.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci12);
     FSMenuPrincipal.BitRaccourci13.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci13);
     FSMenuPrincipal.BitRaccourci14.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci14);
     FSMenuPrincipal.BitRaccourci15.Caption:=ImporterCaptionBoutonRaccourci(FSMenuPrincipal.BitRaccourci15);

end;

procedure TFSMenuPrincipal.TimerClosedMenuPrincipalTimer(Sender: TObject);
begin
Close;
end;

procedure TFSMenuPrincipal.TimerAfficheArretTimer(Sender: TObject);
begin
if(FSMiseaJour.Showing=false)then
begin
     FSMiseaJour.Show;
     FSMiseaJour.EditNatureMJ.Text:=FSMenuPrincipal.TypeAlerteMJ.Caption;
     FSMiseaJour.AfficheLicence.Visible:=true;
     FSMiseaJour.AfficheLicence.Left:=0;
     FSMiseaJour.AfficheLicence.Top:=0;
     FSMiseaJour.PageMJ.Enabled:=false;

     if(FSMenuPrincipal.TypeAlerteMJ.Caption='MJFonct')then
     begin
          FSMiseaJour.PageMJFonct.TabVisible:=true;
          FSMiseaJour.PageMJIns.TabVisible:=false;
          FSMiseaJour.PageMJSys.TabVisible:=false;
     end;

     if(FSMenuPrincipal.TypeAlerteMJ.Caption='MJIns')then
     begin
          FSMiseaJour.PageMJFonct.TabVisible:=false;
          FSMiseaJour.PageMJIns.TabVisible:=true;
          FSMiseaJour.PageMJSys.TabVisible:=false;
     end;

     if(FSMenuPrincipal.TypeAlerteMJ.Caption='MJSys')then
     begin
          FSMiseaJour.PageMJFonct.TabVisible:=false;
          FSMiseaJour.PageMJIns.TabVisible:=false;
          FSMiseaJour.PageMJSys.TabVisible:=true;
     end;
end;

if   FSMenuPrincipal.PanelAfficheArret.Color=clred then
     begin
     FSMenuPrincipal.PanelAfficheArret.Color:=clyellow;
     FSMenuPrincipal.Label1.Font.Color:=clred;
     FSMenuPrincipal.Label2.Font.Color:=clred;
     FSMenuPrincipal.Label3.Font.Color:=clred;
     end
else
     begin
     FSMenuPrincipal.PanelAfficheArret.Color:=clred;
     FSMenuPrincipal.Label1.Font.Color:=clyellow;
     FSMenuPrincipal.Label2.Font.Color:=clyellow;
     FSMenuPrincipal.Label3.Font.Color:=clyellow;
     end;  
end;

procedure TFSMenuPrincipal.TimerSaisieFichesTimer(Sender: TObject);
var  i:integer;   Adresse:string; 
begin
if FileExists('C:\WinBus.File')then
begin
assignfile(FRegistre,'C:\WinBus.File');
try
reset(FRegistre);
Read(FRegistre,RRegistre);
ChEnregistrement:=RRegistre.Adresse;
finally
CloseFile(FRegistre);
end;
{*********************************************************************}
TitreFicheSaisie(FSMenuPrincipal,'Menu Principal');
//FSMenuPrincipal.AfficheSessionOuverte.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - '+'Menu Principal';
{*******************************************************************}

if FileExists(ChEnregistrement)then
begin
OpenFParc(RParc);
 {********** MOT DE PASSE **********}
if RParc.MotPasse<>'' then
   begin
   FSMenuPrincipal.MenuPrincipal.Items[0].Enabled:=false;
   FSMenuPrincipal.MenuPrincipal.Items[1].Enabled:=false;
   FSMenuPrincipal.MenuPrincipal.Items[2].Enabled:=false;
   FSMenuPrincipal.MenuPrincipal.Items[4].Enabled:=false;
   FSMenuPrincipal.PanelMotPasse.Visible:=true;
   FSMenuPrincipal.EditMotPasse.SetFocus;
   end;
{********** FIN MOT DE PASSE **********}

Adresse:=RParc.Parcours+'\'+Entreprise+RParc.NomLogo;
if FileExists(Adresse)then
begin
     FSMenuPrincipal.Logo.Picture.LoadFromFile(Adresse);
end
else
begin
     FSMenuPrincipal.Logo.Picture:=FSMenuPrincipal.PhotoVide.Picture;
end;

Adresse:=RParc.Parcours+'\'+Entreprise+RParc.NomLabel;
if FileExists(Adresse)then
begin
     FSMenuPrincipal.LabelISO.Picture.LoadFromFile(Adresse);
end
else
begin
     FSMenuPrincipal.LabelISO.Picture:=FSMenuPrincipal.PhotoVide.Picture;
end;

//PrintFormulairePreselection.Logo.Picture:=FSMenuPrincipal.Logo.Picture;
//PrintAutorisationVerssement.Logo.Picture:=FSMenuPrincipal.Logo.Picture;
PrintBonQuantitatif.Logo.Picture:=FSMenuPrincipal.Logo.Picture;
PrintBonQuantitatifDynamique.Logo.Picture:=FSMenuPrincipal.Logo.Picture;
PrintBonQuantitatifPaysage.Logo.Picture:=FSMenuPrincipal.Logo.Picture;
PrintBonValorise.Logo.Picture:=FSMenuPrincipal.Logo.Picture;
PrintFacture.Logo.Picture:=FSMenuPrincipal.Logo.Picture;
PrintEtatTraitementDonneesPortrait.LogoEntreprise.Picture:=FSMenuPrincipal.Logo.Picture;
PrintEtatTraitementDonnees.LogoEntreprise.Picture:=FSMenuPrincipal.Logo.Picture;
PrintAvis.Logo.Picture:=FSMenuPrincipal.Logo.Picture;
PrintAvis.LogoX.Picture:=FSMenuPrincipal.Logo.Picture;
PrintListeCodeBarre.Logo.Picture:=FSMenuPrincipal.Logo.Picture;
PrintListeCodeBarre.LabelISO.Picture:=FSMenuPrincipal.LabelISO.Picture;

FSTraitementDonnees.RBDomiciliationChoisi.Checked:=false;
FSTraitementDonnees.RBFichierConcerneChoisiTiers.Checked:=false;

end;

end;
FSMenuPrincipal.TimerSaisieFiches.Enabled:=false;
end;

procedure TFSMenuPrincipal.TimerControleInstallationTimer(Sender: TObject);
begin//D0

if(FSMenuPrincipal.PanelAfficheSerieDisque.Visible=false)then
begin
     FSMenuPrincipal.TimerAfficheArret.Enabled:=false;
     FSMenuPrincipal.PanelAfficheArret.Visible:=false;
     FSMenuPrincipal.PanelMotPasse.Visible:=false;
     FSMenuPrincipal.MenuPrincipal.Items[0].Enabled:=true;
     FSMenuPrincipal.MenuPrincipal.Items[1].Enabled:=true;
     FSMenuPrincipal.MenuPrincipal.Items[2].Enabled:=true;
     FSMenuPrincipal.MenuPrincipal.Items[4].Enabled:=true;
     FSMenuPrincipal.MenuPrincipal.Items[5].Enabled:=true;
end;

if FileExists('C:\WinBus.File')then
begin//D1
     assignfile(FRegistre,'C:\WinBus.File');
     try
     reset(FRegistre);
     Read(FRegistre,RRegistre);
     ChEnregistrement:=RRegistre.Adresse;
     finally
     CloseFile(FRegistre);
     end;
if FileExists(ChEnregistrement)then
begin//D2
if(FSMenuPrincipal.Caption='')then
FSMenuPrincipal.TimerSaisieFiches.Enabled:=true;

OpenFParc(RParc);

if(RParc.Parcours='')
or(RParc.DateExp='')
or(RParc.HeureExp='')
then
begin
     FSMenuPrincipal.TimerAfficheArret.Enabled:=true;
     FSMenuPrincipal.TypeAlerteMJ.Caption:='MJIns';
end;

{********** DATE EXP **********}
if(RParc.DateExp='01/01/9999')then
   begin//D3
   FSMenuPrincipal.PanelAfficheArret.Visible:=true;
   FSMenuPrincipal.PanelMotPasse.Visible:=false;
          FSMenuPrincipal.MenuPrincipal.Items[0].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[1].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[2].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[4].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[5].Enabled:=false;
   FSMenuPrincipal.TimerAfficheArret.Enabled:=true;
   FSMenuPrincipal.TypeAlerteMJ.Caption:='MJFonct';
   FSMenuPrincipal.TimerClosedMenuPrincipal.Enabled:=true;
   //FSMenuPrincipal.Enabled:=false;
   FSMenuPrincipal.TimerControleInstallation.Enabled:=false;
   end
else
if(DateCorrecte(RParc.DateExp))
and(strtodate(RParc.DateExp)=date)then
   begin//D4
        if(TimeCorrecte(RParc.HeureExp))
        and(strtotime(RParc.HeureExp)<=time)then
        begin//D5
        RParc.DateExp:='01/01/9999';
        SaveFParc(RParc);
        FSMenuPrincipal.PanelAfficheArret.Visible:=true;
        FSMenuPrincipal.PanelMotPasse.Visible:=false;
          FSMenuPrincipal.MenuPrincipal.Items[0].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[1].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[2].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[4].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[5].Enabled:=false;
        FSMenuPrincipal.TimerAfficheArret.Enabled:=true;
        FSMenuPrincipal.TypeAlerteMJ.Caption:='MJFonct';
        FSMenuPrincipal.TimerClosedMenuPrincipal.Enabled:=true;
        //FSMenuPrincipal.Enabled:=false;
        FSMenuPrincipal.TimerControleInstallation.Enabled:=false;
        end;//F5
   end//F4
else
if(DateCorrecte(RParc.DateExp))
and(strtodate(RParc.DateExp)<date)then
   begin//D6
        RParc.DateExp:='01/01/9999';
        SaveFParc(RParc);
        FSMenuPrincipal.PanelAfficheArret.Visible:=true;
        FSMenuPrincipal.PanelMotPasse.Visible:=false;
          FSMenuPrincipal.MenuPrincipal.Items[0].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[1].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[2].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[4].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[5].Enabled:=false;
        FSMenuPrincipal.TimerAfficheArret.Enabled:=true;
        FSMenuPrincipal.TypeAlerteMJ.Caption:='MJFonct';
        FSMenuPrincipal.TimerClosedMenuPrincipal.Enabled:=true;
        //FSMenuPrincipal.Enabled:=false;
        FSMenuPrincipal.TimerControleInstallation.Enabled:=false;
   end//F6
{********** FIN DATE EXP **********}
else
{********** DATE AVANCEMENT **********}
if((RParc.DateAvancement='')
or(DateCorrecte(RParc.DateAvancement)and(strtodate(RParc.DateAvancement)<date)))
then
begin//D7

RParc.DateAvancement:=datetostr(date);
SaveFParc(RParc);

end//F7
else
if(DateCorrecte(RParc.DateAvancement))
and(strtodate(RParc.DateAvancement)>date)then
begin//D8
     FSMenuPrincipal.PanelAfficheArret.Visible:=true;
     FSMenuPrincipal.PanelMotPasse.Visible:=false;
     FSMenuPrincipal.MenuPrincipal.Items[0].Enabled:=false;
     FSMenuPrincipal.MenuPrincipal.Items[1].Enabled:=false;
     FSMenuPrincipal.MenuPrincipal.Items[2].Enabled:=false;
     FSMenuPrincipal.MenuPrincipal.Items[4].Enabled:=false;
     FSMenuPrincipal.MenuPrincipal.Items[5].Enabled:=false;
     FSMenuPrincipal.TimerAfficheArret.Enabled:=true;
     FSMenuPrincipal.TypeAlerteMJ.Caption:='MJFonct';
     FSMenuPrincipal.TimerClosedMenuPrincipal.Enabled:=true;
     //FSMenuPrincipal.Enabled:=false;
     FSMenuPrincipal.TimerControleInstallation.Enabled:=false;
end;//F8
{********** FIN DATE AVANCEMENT **********}

end//F2
else
begin//D10       
          FSMenuPrincipal.TimerAfficheArret.Enabled:=false;
          FSMenuPrincipal.TimerClosedMenuPrincipal.Enabled:=false;
          FSMenuPrincipal.TimerControleInstallation.Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[0].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[1].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[2].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[4].Enabled:=false;
          FSMenuPrincipal.MenuPrincipal.Items[5].Enabled:=false;
          FSMenuPrincipal.TimerControleInstallation.Enabled:=false;
          FSMenuPrincipal.TimerAfficheArret.Enabled:=true;
          FSMenuPrincipal.TypeAlerteMJ.Caption:='MJIns';
end;//F10

end//F1
else
begin
     FSMenuPrincipal.TimerAfficheArret.Enabled:=true;
     FSMenuPrincipal.TypeAlerteMJ.Caption:='MJIns';
end;

Application.ProcessMessages;
end;//F0

procedure TFSMenuPrincipal.MotdePasse1Click(Sender: TObject);
begin
FSMenuPrincipal.PanelMotPasse.Visible:=true;
FSMenuPrincipal.PanelModifMotPasse.Visible:=false;
FSMenuPrincipal.EditMotPasse.SetFocus;
end;

procedure TFSMenuPrincipal.BitBtn3Click(Sender: TObject);
begin
OpenFParc(RParc);
if FSMenuPrincipal.EditMotPasse.Text=RParc.MotPasse then
   begin
        if FSMenuPrincipal.EditMotPasseN.Text=FSMenuPrincipal.EditMotPasseC.Text then
          begin
          RParc.MotPasse:=FSMenuPrincipal.EditMotPasseN.Text;
          SaveFParc(RParc);
          FSMenuPrincipal.EditMotPasse.Text:='';
          FSMenuPrincipal.EditMotPasseN.Text:='';
          FSMenuPrincipal.EditMotPasseC.Text:='';
          FSMenuPrincipal.PanelModifMotPasse.Visible:=false;
          FSMenuPrincipal.PanelMotPasse.Visible:=false;
          end
        else
          begin
          Showmessage('Confirmez votre mot de pasee SVP !');
          FSMenuPrincipal.EditMotPasseN.Text:='';
          FSMenuPrincipal.EditMotPasseC.Text:='';
          FSMenuPrincipal.EditMotPasseN.SetFocus;
          end;

   end
else
   begin
   Showmessage('Mot de passe incorrecte');
   FSMenuPrincipal.EditMotPasse.Text:='';
   FSMenuPrincipal.EditMotPasseN.Text:='';
   FSMenuPrincipal.EditMotPasseC.Text:='';
   FSMenuPrincipal.EditMotPasse.SetFocus;
   end;
end;

procedure TFSMenuPrincipal.BitBtn1Click(Sender: TObject);
begin
FSMenuPrincipal.EditMotPasse.Text:='';
FSMenuPrincipal.EditMotPasseN.Text:='';
FSMenuPrincipal.EditMotPasseC.Text:='';
FSMenuPrincipal.PanelMotPasse.Visible:=false;
end;

procedure TFSMenuPrincipal.BitBtn76Click(Sender: TObject);
begin
OpenFParc(RParc);
if FSMenuPrincipal.EditMotPasse.Text=RParc.MotPasse then
   begin
   FSMenuPrincipal.PanelModifMotPasse.Visible:=true;
   FSMenuPrincipal.EditMotPasseN.SetFocus;
   end;
end;

procedure TFSMenuPrincipal.BitBtn2Click(Sender: TObject);
begin
OpenFParc(RParc);
if FSMenuPrincipal.EditMotPasse.Text=RParc.MotPasse then
   begin
   FSMenuPrincipal.MenuPrincipal.Items[0].Enabled:=true;
   FSMenuPrincipal.MenuPrincipal.Items[1].Enabled:=true;
   FSMenuPrincipal.MenuPrincipal.Items[2].Enabled:=true;
   FSMenuPrincipal.EditMotPasse.Text:='';
   FSMenuPrincipal.EditMotPasseN.Text:='';
   FSMenuPrincipal.EditMotPasseC.Text:='';
   FSMenuPrincipal.PanelMotPasse.Visible:=false;
   end
else
   begin
   Showmessage('Mot de passe incorrecte');
   FSMenuPrincipal.EditMotPasse.SetFocus;
   end;
end;

procedure TFSMenuPrincipal.Gnrateurdaccsprivilgis1Click(Sender: TObject);
begin

if not AccesPrivilegies('FS Accés Privilégiés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then
begin
     if(FSMenuPrincipal.EditCodeUtilisateur.Text='')then
     begin
          FSAccueilUtilisateurs.Close;
          FSCodeUtilisateurs.Show;
          FSCodeUtilisateurs.AfficheModifierCodeAcces.Visible:=false;
          FSCodeUtilisateurs.EditCodeAcces.Text:='';
          FSCodeUtilisateurs.EditCDL.Text:='Acces';
          FSCodeUtilisateurs.EditCodeAcces.MaxLength:=14;
          FSCodeUtilisateurs.EditCodeAcces.SetFocus;
     end;
     exit;
end;

FSGenerateurAccesPrivilegies.Show;
end;

procedure TFSMenuPrincipal.CodeUtilisateurs1Click(Sender: TObject);
begin
FSCodeUtilisateurs.Show;
FSCodeUtilisateurs.AfficheModifierCodeAcces.Visible:=false;
FSCodeUtilisateurs.EditCodeAcces.Text:='';
FSCodeUtilisateurs.EditCodeAcces.SetFocus;
end;

procedure TFSMenuPrincipal.ChoisExercice1Click(Sender: TObject);
begin
FSConsultationExercice.Show;
FSConsultationExercice.EditExercice.Text:=Exercice;
FSConsultationExercice.EditExercice.SetFocus;
end;

procedure TFSMenuPrincipal.GnrateurdArticle1Click(Sender: TObject);
var  TypeProces,FichierConcerne,Adresse:string;
begin
if not AccesPrivilegies('FS Générateur Articles',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

FSGenerateurBase.Show;
FSGenerateurBase.PageGenerateurBasePlanificateur.Show;
FSGenerateurBase.PageGenerateurArticle.Show;
FSGenerateurBase.AfficheBitRafraichirMAJ.Enabled:=true;

TypeProces:='Commercial';   FichierConcerne:='FStock'+FSGenerateurBase.EditTypeStock.Text;
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
end;

ChStockArticle:=Adresse+FSGenerateurBase.EditNumProjet.Text;
ProcAfficheListeStock(FSGenerateurBase.TableauStockArticle,ChStockArticle,'','','',FSGenerateurBase.RBAvecCodeBarre.Checked);
FSGenerateurBase.AfficheAdresseFichierConcerne.Caption:=ChStockArticle;
FSGenerateurBase.AfficheRapportDuplication.Left:=0;
FSGenerateurBase.AfficheRapportDuplication.Top:=0;

ChargerOptionsFicheStock;
end;

procedure TFSMenuPrincipal.GnrateurdeCompteur1Click(Sender: TObject);
begin
if not AccesPrivilegies('FS Générateur Compteurs',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

FSGenerateurBase.Show;
FSGenerateurBase.PageGenerateurBasePlanificateur.Show;
FSGenerateurBase.PageGenerateurCompteur.Show;
end;

procedure TFSMenuPrincipal.GnrateurdunitdeFonds1Click(Sender: TObject);
begin
if not AccesPrivilegies('FS Générateur Unités de Fonds',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

FSGenerateurBase.Show;
FSGenerateurBase.PageGenerateurBasePlanificateur.Show;
FSGenerateurBase.PageGenerateurUniteFonds.Show;
end;

procedure TFSMenuPrincipal.GnrateurdEquipes1Click(Sender: TObject);
begin
if not AccesPrivilegies('FS Générateur Equipes',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

FSGenerateurBase.Show;
FSGenerateurBase.PageGenerateurBasePlanificateur.Show;
FSGenerateurBase.PageGenerateurEquipe.Show;
end;

procedure TFSMenuPrincipal.ransformationUnitsdeFonds1Click(
  Sender: TObject);
begin
if not AccesPrivilegies('FS Transformation Unités de Fonds',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

FSTransformationUniteFonds.Show;
end;

procedure TFSMenuPrincipal.ListedesPrlvements1Click(Sender: TObject);
var  i,l:integer;  DateMaxPrelevement,TypeProcesPrelevement,FichierConcernePrelevement,AdressePrelevement:string;
begin
if not AccesPrivilegies('FS Liste Prélèvement',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

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
else begin affichermessage('Attention ! {'+ChPrelevement+'} n''existe pas !'); exit; end;//Rewrite(FPrelevement);
Seek(FPrelevement,0);
DateMaxPrelevement:='01/01/2000';
while not eof(FPrelevement)do
begin
     read(FPrelevement,RPrelevement);
     if datecorrecte(RPrelevement.DatePrelevement)
     and(stringtodate(DateMaxPrelevement,'Errere date: Date max Prélèvement')<stringtodate(RPrelevement.DatePrelevement,'Errere date: RPrelevement.DatePrelevement'))then DateMaxPrelevement:=RPrelevement.DatePrelevement;
end;
finally
CloseFile(FPrelevement);
end;

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
          FSListePrelevement.EditDesignationDevise.Text:=RUniteFonds.DesignationDevise;
          FSListePrelevement.EditSigleDevise.Text:=RUniteFonds.SigleDevise;
     end;
     finally
     CloseFile(FUniteFonds);
     end;
end;

FSListePrelevement.Show;

if(DateMaxPrelevement='01/01/2000')then DateMaxPrelevement:=datetostr(Date);

l:=strtointeger(Lastlaters(datetostr(Date),4))-strtointeger(Lastlaters(DateMaxPrelevement,4));

FSListePrelevement.EditExercicePrelevement.Items.Text:='';
FSListePrelevement.EditExercicePrelevement.Items.Add(inttostr(strtointeger(Lastlaters(DateMaxPrelevement,4))-3));
FSListePrelevement.EditExercicePrelevement.Items.Add(inttostr(strtointeger(Lastlaters(DateMaxPrelevement,4))-2));
FSListePrelevement.EditExercicePrelevement.Items.Add(inttostr(strtointeger(Lastlaters(DateMaxPrelevement,4))-1));
FSListePrelevement.EditExercicePrelevement.Items.Add(inttostr(strtointeger(Lastlaters(DateMaxPrelevement,4))-0));

if(l>0)then
begin
     i:=1;
     while(i<=l)do
     begin
          FSListePrelevement.EditExercicePrelevement.Items.Add(inttostr(strtointeger(Lastlaters(DateMaxPrelevement,4))+i));
     i:=i+1;
     end;
end;

FSListePrelevement.EditExercicePrelevement.ItemIndex:=3;

FSListePrelevement.EditMoisListePrelevement.ItemIndex:=(strtointeger(MidelLaters(DateMaxPrelevement,4,5))-1);
FSListePrelevement.EditDateDebutPrelevement.Date:=stringtodate('01/'+Completezerogauche(MidelLaters(FSListePrelevement.EditMoisListePrelevement.Text,2,3),'2')+'/'+lastlaters(DateMaxPrelevement,4),'Erreure date: '+datetostr(FSListePrelevement.EditDateDebutPrelevement.Date));
FSListePrelevement.EditDateFinPrelevement.Date:=stringtodate(Completezerogauche(inttostr(LastDay(datetostr(FSListePrelevement.EditDateDebutPrelevement.Date))),'2')+'/'+lastlaters(datetostr(FSListePrelevement.EditDateDebutPrelevement.Date),7),'Erreure date: '+datetostr(FSListePrelevement.EditDateFinPrelevement.Date));

ListePrelevement(FSListePrelevement.TableauListePrelevement,datetostr(FSListePrelevement.EditDateDebutPrelevement.Date),datetostr(FSListePrelevement.EditDateFinPrelevement.Date),FSListePrelevement.EditMatriculeEffectif.Text,'','',FSListePrelevement.RBAbregerTitreRubrique.Checked);

FSListePrelevement.EditTypeAffichge.ItemIndex:=0;
FSListePrelevement.TypeAffichagePeriode.Caption:=FSListePrelevement.EditTypeAffichge.Text;
end;

procedure TFSMenuPrincipal.Statistiques1Click(Sender: TObject);
var  NbrBaseAvis:integer;  FichierBaseAvis:string;
begin
     if not AccesPrivilegies('FS Traitement Projets',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSRessourceFinanciere.RBMultiSelection.Checked:=false;

     NbrBaseAvis:=ChoisirNbrBaseAvis(true,'TB',FichierBaseAvis);


     if(NbrBaseAvis=0)or(NbrBaseAvis>1)then Exit;

     ListeBaseAvisBox(FSTraitementDonnees.EditBaseAvisFichierConcerne,FSTraitementDonnees.TitreEditBaseAvisFichierConcerne);
     FSTraitementDonnees.EditBaseAvisFichierConcerne.Text:=FichierBaseAvis;

     AfficheTableauDeBohrs;
end;

procedure TFSMenuPrincipal.FicheTechnique1Click(Sender: TObject);
var R,Rong,PositionIndex:integer; Classement,TypeProcesSDA,FichierConcerneSDA,AdresseSDA:string;
begin
FSFicheTechniqueProjet.RBChargementExterne.Checked:=false;
FSFicheTechniqueProjet.Show;
FSFicheTechniqueProjet.Left:=FSMenuPrincipal.Left;
FSFicheTechniqueProjet.Top:=FSMenuPrincipal.Top;
FSFicheTechniqueProjet.Height:=FSMenuPrincipal.Height;
FSFicheTechniqueProjet.Width:=FSMenuPrincipal.Width;

OpenFParc(RParc);
ChProjetFinance:=RParc.Parcours+'\'+Exercice+'FProjetFinance';
assignfile(FProjetFinance,ChProjetFinance);
if FileExists(ChProjetFinance)then
begin
     try
     Reset(FProjetFinance);
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
end;

Rong:=ValeAbsolue(Rong/5);

PositionIndex:=MaxInt(0,FSFicheTechniqueProjet.EditRonStructure.ItemIndex);
FSFicheTechniqueProjet.EditRonStructure.Items.Text:='';
for R:=1to(Rong-1)do
begin
     Classement:=inttostr(R);
     if(R=1)
     then Classement:=Classement+'er'
     else Classement:=Classement+'ème';
     FSFicheTechniqueProjet.EditRonStructure.Items.Add('Structure '+Classement+' Rong');
end;
FSFicheTechniqueProjet.EditRonStructure.ItemIndex:=PositionIndex;

PositionIndex:=MaxInt(0,FSFicheTechniqueProjet.EditTiersDomiciliation.ItemIndex);

TypeProcesSDA:='Business';
FichierConcerneSDA:='FDomiciliation';
if not(FunctionAdresseProces(TypeProcesSDA,FichierConcerneSDA,'',AdresseSDA,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerneSDA+' recherché !');
end;

ChDomiciliation:=AdresseSDA;
assignfile(FDomiciliation,ChDomiciliation);
if FileExists(ChDomiciliation)then
begin
     try
     Reset(FDomiciliation);
     Seek(FDomiciliation,0);
     FSFicheTechniqueProjet.EditTiersDomiciliation.Items.Text:='';
     FSFicheTechniqueProjet.EditTiersDomiciliation.Items.Add('Tous');
     while not eof(FDomiciliation)do
     begin
          read(FDomiciliation,RDomiciliation);
          FSFicheTechniqueProjet.EditTiersDomiciliation.Items.Add(RDomiciliation.DesignationDomiciliation);
     end;
     finally
     CloseFile(FDomiciliation);
     end;
end;

FSFicheTechniqueProjet.EditTiersDomiciliation.ItemIndex:=PositionIndex;
end;

procedure TFSMenuPrincipal.GnrateurdeMouvement1Click(Sender: TObject);
var i:integer;
begin
FSGenerateurMouvement.Show;
FSGenerateurMouvement.EditAnneeSelect.Items.Text:='';
for i:=2010 to 2050 do FSGenerateurMouvement.EditAnneeSelect.Items.Add(inttostr(i));
FSGenerateurMouvement.EditAnneeSelect.ItemIndex:=(Strtointeger(ExerciceAnnee)-2010);

ProcListeTypeMouvement(FSGenerateurMouvement.TableauTypeMouvement);
ProcListeMouvement(FSGenerateurMouvement.TableauMouvement,FSGenerateurMouvement.TableauTypeMouvement.Cells[1,1],'','','');

RemplireTableauPositionListeMouvementPeriode(FSGenerateurMouvement.TableauPositionListeMouvementPeriodeAffiche,FSGenerateurMouvement.EditPositionListeMouvementBegin,FSGenerateurMouvement.EditPositionListeMouvementEnd,FSGenerateurMouvement.EditAnneeSelect.Text,FSGenerateurMouvement.TableauMouvement.Cells[0,1],FSGenerateurMouvement.TableauMouvement.Cells[1,1]);
end;

procedure TFSMenuPrincipal.GnrationFormuledeCalcule1Click(Sender: TObject);
begin
FSFormules.Show;
FSFormules.TableauTypeFormulesBaremes.Cells[0,0]:='';
ProcAfficheFormule(FSFormules.TableauFormules,FSFormules.EditCodeTypeFormuleAfficher.Text);
end;

procedure TFSMenuPrincipal.GnrationModelFormuledeCalcule1Click(
  Sender: TObject);
begin
FSModelFormuleCalcule.Show;
ListeModeleFormule(FSModelFormuleCalcule.TableauModelFormule);
FSModelFormuleCalcule.TableauModelFormule.SetFocus;
end;

procedure TFSMenuPrincipal.MiseJourFonctionnelleMJF1Click(Sender: TObject);
begin

     if(FSMenuPrincipal.PanelAfficheSerieDisque.Visible=true)then
     begin
          FSMenuPrincipal.TimerCodeAcces.Enabled:=true;
          Exit;
     end; 

FSMenuPrincipal.TimerControleInstallation.Enabled:=true;  

FSMiseaJour.Show;
FSMiseaJour.PageMJFonct.TabVisible:=true;
FSMiseaJour.PageMJIns.TabVisible:=false;
FSMiseaJour.PageMJSys.TabVisible:=false;
FSMiseaJour.EditNatureMJ.Text:='MJFonct';
FSMiseaJour.EditLicenceInstallation.Text:='';

FSMiseaJour.EditAdresseFichierMJFonct.Text:='';
FSMiseaJour.AfficheMJFonct.Visible:=false;
FSMiseaJour.TableauDataMJFonct.ColCount:=2;
FSMiseaJour.TableauDataMJFonct.RowCount:=11;
FSMiseaJour.TableauDataMJFonct.Rows[1].Text:='';
FSMiseaJour.TableauDataMJFonct.Cols[0].Text:='Rubrique';
FSMiseaJour.TableauDataMJFonct.Cols[1].Text:='Information';

FSMiseaJour.TableauDataMJFonct.Rows[1].Text:='Parcours';
FSMiseaJour.TableauDataMJFonct.Rows[2].Text:='Date dernière mise à jour';
FSMiseaJour.TableauDataMJFonct.Rows[3].Text:='Heure dernière mise à jour';
FSMiseaJour.TableauDataMJFonct.Rows[4].Text:='Durée dernière mise à jour';
FSMiseaJour.TableauDataMJFonct.Rows[5].Text:='Date dernière Expiration';
FSMiseaJour.TableauDataMJFonct.Rows[6].Text:='Date nouvelle mise à jour';
FSMiseaJour.TableauDataMJFonct.Rows[7].Text:='Heure nouvelle mise à jour';
FSMiseaJour.TableauDataMJFonct.Rows[8].Text:='Durée nouvelle mise à jour';
FSMiseaJour.TableauDataMJFonct.Rows[9].Text:='Date nouvelle Expiration';
FSMiseaJour.TableauDataMJFonct.Rows[10].Text:='Fichier cible (MJFont)';

FSMiseaJour.AfficheLicence.Visible:=true;
FSMiseaJour.AfficheLicence.Left:=0;
FSMiseaJour.AfficheLicence.Top:=0;
FSMiseaJour.PageMJ.Enabled:=false;
end;

procedure TFSMenuPrincipal.MiseJourSystmeMJs1Click(Sender: TObject);
begin
FSMiseaJour.Show;
FSMiseaJour.PageMJFonct.TabVisible:=false;
FSMiseaJour.PageMJIns.TabVisible:=true;
FSMiseaJour.PageMJSys.TabVisible:=false;
FSMiseaJour.EditNatureMJ.Text:='MJIns';
FSMiseaJour.EditLicenceInstallation.Text:='';

FSMiseaJour.AfficheLicence.Visible:=true;
FSMiseaJour.AfficheLicence.Left:=0;
FSMiseaJour.AfficheLicence.Top:=0;
FSMiseaJour.PageMJ.Enabled:=false;
end;

procedure TFSMenuPrincipal.MiseJourSystmeMJSys1Click(Sender: TObject);
begin
FSMiseaJour.Show;
FSMiseaJour.PageMJFonct.TabVisible:=false;
FSMiseaJour.PageMJIns.TabVisible:=false;
FSMiseaJour.PageMJSys.TabVisible:=true;
FSMiseaJour.EditNatureMJ.Text:='MJSys';
FSMiseaJour.EditLicenceInstallation.Text:='';

FSMiseaJour.AfficheLicence.Visible:=true;
FSMiseaJour.AfficheLicence.Left:=0;
FSMiseaJour.AfficheLicence.Top:=0;
FSMiseaJour.PageMJ.Enabled:=false;
end;

procedure TFSMenuPrincipal.FormulairedePrslection1Click(Sender: TObject);
var  i:integer;
begin
FSFormulairePreselection.Show;
FSFormulairePreselection.Left:=FSMenuPrincipal.Left;
FSFormulairePreselection.Top:=FSMenuPrincipal.Top;
FSFormulairePreselection.Height:=FSMenuPrincipal.Height;
FSFormulairePreselection.Width:=FSMenuPrincipal.Width;
end;

procedure TFSMenuPrincipal.Rcape1Click(Sender: TObject);
var  LongueurRong:integer;
begin
FSRecapitulatifProjets.Show;
FSRecapitulatifProjets.Left:=FSMenuPrincipal.Left;
FSRecapitulatifProjets.Top:=FSMenuPrincipal.Top;
FSRecapitulatifProjets.Height:=FSMenuPrincipal.Height;
FSRecapitulatifProjets.Width:=FSMenuPrincipal.Width;
LongueurRong:=10;
ListeProjetFinance(FSRecapitulatifProjets.TableauProjetFinance,'','',inttostr(LongueurRong),true,'1','',FSRecapitulatifProjets.RBAfficheTiers.Checked,false,FSRecapitulatifProjets.EditTiersTypeProces.Text,FSRecapitulatifProjets.EditTiersFichierConserne.Text);
end;

procedure TFSMenuPrincipal.Planificateurdesprojets1Click(Sender: TObject);
var  i,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit:integer; CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise:string;
begin
FSPlanificateur.Show;
FSPlanificateur.Left:=FSMenuPrincipal.Left;
FSPlanificateur.Top:=FSMenuPrincipal.Top;
FSPlanificateur.Height:=FSMenuPrincipal.Height;
FSPlanificateur.Width:=FSMenuPrincipal.Width;
FSPlanificateur.EditCodeProjet.Text:='';
FSPlanificateur.EditProjet.Text:='';
FSPlanificateur.EditNumFicheTechnique.Text:='';
FSPlanificateur.EditFicheTechnique.Text:='';
FSPlanificateur.EditTypeAvis.Text:='';

if(IndiqueTypeAvis(FSPlanificateur.EditTypeAvis.Text,PositionTypeAvis,NumTypeAvis,ChercheSigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise))then
begin
     FSPlanificateur.EditChargementTypeProces.Text:=TypeProces;
     FSPlanificateur.EditChargementFichierConcerne.Text:=FichierConserne;
end
else
begin
     showmessage('Le type d''Avis sélectionné, na pas de données pour chargement!');
     FSPlanificateur.AfficheTypeAvis.Visible:=true;
     OpenFParc(RParc);
     ChTypeAvis:=RParc.Parcours+'\'+Exercice+'FTypeAvis';
     assignfile(FTypeAvis,ChTypeAvis);
     if FileExists(ChTypeAvis)then
     begin
          try
          Reset(FTypeAvis);
          Seek(FTypeAvis,0);
          FSPlanificateur.EditTypeAvisChoisir.Items.Text:='';
          while not eof(FTypeAvis)do
          begin
               read(FTypeAvis,RTypeAvis);
               FSPlanificateur.EditTypeAvisChoisir.Items.Add(RTypeAvis.DesignationTypeAvis);
          end;
          finally
          CloseFile(FTypeAvis);
          end;
     end;

     FSPlanificateur.EditTypeAvisChoisir.ItemIndex:=0;
     FSPlanificateur.EditTypeAvisChoisir.SetFocus;
end;

FSPlanificateur.EditNumRubrique.Text:='';
FSPlanificateur.EditRubrique.Text:='';
FSPlanificateur.EditMontantRubriqueFicheTechnique.Text:='';
FSPlanificateur.EditQuantiteRubriqueFicheTechnique.Text:='';
FSPlanificateur.EditMontantUnitaireRubriqueFicheTechnique.Text:='';
FSPlanificateur.EditTypeUniteRubriqueFicheTechnique.Text:='';

FSPlanificateur.TableauPlanificateur.RowCount:=2;
FSPlanificateur.TableauPlanificateur.Rows[1].Text:='';

FSPlanificateur.EditQuantitePlanificateur.Text:='';
FSPlanificateur.EditMontantPlanificateur.Text:='';
end;

procedure TFSMenuPrincipal.GnrateurDomiciliation1Click(Sender: TObject);
begin
if not AccesPrivilegies('FS Générateur Domiciliation',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

FSGenerateurBase.Show;
FSGenerateurBase.PageGenerateurBaseAvis.Show;
FSGenerateurBase.PageGenerateurDomiciliation.Show;
end;

procedure TFSMenuPrincipal.GnrateurBaseAgenceDomiciliation1Click(
  Sender: TObject);
begin
FSAgenceBanque.Show;
ListeBanque(FSAgenceBanque.TableauBanque,'','');
ListeAgence(FSAgenceBanque.TableauAgence,FSAgenceBanque.TableauBanque.Cells[2,FSAgenceBanque.TableauBanque.Row],'');
end;

procedure TFSMenuPrincipal.Echancierdepayement1Click(Sender: TObject);
begin
     FSEcheancierPayement.Show;
end;

procedure TFSMenuPrincipal.FormResize(Sender: TObject);
var  i:integer; Indice:real;  IndiceTexte,IndiceInt:string;
begin
FSMenuPrincipal.AfficheControleSoleDomiciliation.Left:=8;
FSMenuPrincipal.AfficheControleSoleDomiciliation.Width:=FSMenuPrincipal.Width-30;

FSMenuPrincipal.AfficherMenuRaccourcis.Left:=8;
FSMenuPrincipal.AfficherMenuRaccourcis.Width:=FSMenuPrincipal.Width-30;

FSMenuPrincipal.AfficheSessionOuverte.Left:=8;
FSMenuPrincipal.AfficheSessionOuverte.Width:=FSMenuPrincipal.Width-30;

FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.left:=8;
FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Width:=FSMenuPrincipal.AfficheControleSoleDomiciliation.Width-16;
FSMenuPrincipal.BitTitreControleSoleDomiciliation.Left:=FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Width-
                                                        FSMenuPrincipal.BitTitreControleSoleDomiciliation.Width-8;
FSMenuPrincipal.CadreTitreControleSoldeDomiciliation.Width:=FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Width-
                                                            CadreVide.Width-FSMenuPrincipal.BitTitreControleSoleDomiciliation.Width-48;


FSMenuPrincipal.AfficheOperationControleSoleDomiciliation.Left:=FSMenuPrincipal.AfficheControleSoleDomiciliation.Width-
                                                                FSMenuPrincipal.AfficheOperationControleSoleDomiciliation.Width-8;
FSMenuPrincipal.TableauControleSoleDomiciliation.Width:=FSMenuPrincipal.AfficheControleSoleDomiciliation.Width-
                                                        FSMenuPrincipal.AfficheOperationControleSoleDomiciliation.Width-24;

FSMenuPrincipal.AfficheOperationLiseAvisNotifier.Left:=FSMenuPrincipal.AfficheOperationControleSoleDomiciliation.Left;
FSMenuPrincipal.TableauLiseAvisNotifier.Width:=FSMenuPrincipal.TableauControleSoleDomiciliation.Width;

FSMenuPrincipal.Logo.Left:=FSMenuPrincipal.Width-FSMenuPrincipal.Logo.Width-1146;
FSMenuPrincipal.Logo.Top:=FSMenuPrincipal.Height-FSMenuPrincipal.Logo.Height-89;

FSMenuPrincipal.LabelISO.Left:=FSMenuPrincipal.Logo.Left-FSMenuPrincipal.Logo.Width-7;
FSMenuPrincipal.LabelISO.Top:=FSMenuPrincipal.Logo.Top;

FSMenuPrincipal.PhotoVide.Left:=FSMenuPrincipal.Logo.Left;
FSMenuPrincipal.PhotoVide.Top:=FSMenuPrincipal.Logo.Top;

FSMenuPrincipal.EditCodeUtilisateur.Left:=0;
FSMenuPrincipal.EditCodeUtilisateur.Top:=FSMenuPrincipal.Height-FSMenuPrincipal.EditCodeUtilisateur.Height-70;

FSMenuPrincipal.EditCodeFondateurParDefaut.Left:=FSMenuPrincipal.EditCodeUtilisateur.Left+12;
FSMenuPrincipal.EditCodeFondateurParDefaut.Top:=FSMenuPrincipal.EditCodeUtilisateur.Top;

FSMenuPrincipal.TypeAlerteMJ.Left:=FSMenuPrincipal.EditCodeUtilisateur.Left+FSMenuPrincipal.EditCodeUtilisateur.Width+4;
FSMenuPrincipal.TypeAlerteMJ.Top:=FSMenuPrincipal.EditCodeUtilisateur.Top+4;

FSMenuPrincipal.RBActiveAfficheMessage.Top:=FSMenuPrincipal.TypeAlerteMJ.Top;
FSMenuPrincipal.RBRemplireTPrelevement.Top:=FSMenuPrincipal.TypeAlerteMJ.Top;
FSMenuPrincipal.RBRemplireTPrelevementNewExercice.Top:=FSMenuPrincipal.TypeAlerteMJ.Top;

FSMenuPrincipal.PanelMotPasse.Left:=ValeAbsolue(FSMenuPrincipal.Width/2)-ValeAbsolue(FSMenuPrincipal.PanelMotPasse.Width/2);
FSMenuPrincipal.PanelMotPasse.Top:=ValeAbsolue(FSMenuPrincipal.Height/2)-ValeAbsolue(FSMenuPrincipal.PanelMotPasse.Height/2)-59;

FSMenuPrincipal.PanelAfficheArret.Left:=ValeAbsolue(FSMenuPrincipal.Width/2)-ValeAbsolue(FSMenuPrincipal.PanelAfficheArret.Width/2);
FSMenuPrincipal.PanelAfficheArret.Top:=ValeAbsolue(FSMenuPrincipal.Height/2)-ValeAbsolue(FSMenuPrincipal.PanelAfficheArret.Height/2)-59;

FSMenuPrincipal.PanelAfficheSerieDisque.Left:=ValeAbsolue(FSMenuPrincipal.Width/2)-ValeAbsolue(FSMenuPrincipal.PanelAfficheSerieDisque.Width/2);
FSMenuPrincipal.PanelAfficheSerieDisque.Top:=ValeAbsolue(FSMenuPrincipal.Height/2)-ValeAbsolue(FSMenuPrincipal.PanelAfficheSerieDisque.Height/2)-59;

FSMenuPrincipal.AfficherControleDateExecutionAlerte.Width:=FSMenuPrincipal.Width-35;

FSMenuPrincipal.AfficheNotificationServeur.Left:=2;
FSMenuPrincipal.AfficheNotificationServeur.Top:=FSMenuPrincipal.Height-FSMenuPrincipal.AfficheNotificationServeur.Height-70;

FSMenuPrincipal.AfficheInfoTimer.Left:=8;
FSMenuPrincipal.AfficheInfoTimer.Top:=FSMenuPrincipal.EditCodeUtilisateur.Top-FSMenuPrincipal.AfficheInfoTimer.Height-8;

FSMenuPrincipal.AfficherMenuRaccourcis.Top:=FSMenuPrincipal.AfficheInfoTimer.Top-FSMenuPrincipal.AfficherMenuRaccourcis.Height-8;

FSMenuPrincipal.EditValeDecimalePrecise.Left:=8;
FSMenuPrincipal.EditValeDecimalePrecise.Top:=FSMenuPrincipal.AfficheInfoTimer.Top-FSMenuPrincipal.EditValeDecimalePrecise.Height;

FSMenuPrincipal.IncEditValeDecimalePrecise.Left:=FSMenuPrincipal.EditValeDecimalePrecise.Left+FSMenuPrincipal.EditValeDecimalePrecise.Width;
FSMenuPrincipal.IncEditValeDecimalePrecise.Top:=FSMenuPrincipal.EditValeDecimalePrecise.Top;


/////////////////////// RACCOURCIS //////////////////////////
     FSMenuPrincipal.Incrimente.Increment:=FSMenuPrincipal.BitRaccourci01.Width+7;
     FSMenuPrincipal.Incrimente.Left:=8;
     FSMenuPrincipal.AfficheDefileRaccourcis.Left:=FSMenuPrincipal.Incrimente.Left+FSMenuPrincipal.Incrimente.Width;
     
     Indice:=FSMenuPrincipal.Width/(FSMenuPrincipal.Incrimente.Increment+7);

     IndiceTexte:=floattostr(Indice);

     i:=1;
     IndiceInt:='';
     while(IndiceTexte[i]<>',')and(i<=Length(IndiceTexte))do
     begin
          IndiceInt:=IndiceInt+IndiceTexte[i];
     i:=i+1;
     end;

     FSMenuPrincipal.EditNbrRaccourcis.Text:=IndiceInt;

     FSMenuPrincipal.AfficherMenuRaccourcis.Width:=strtoint(IndiceInt)*FSMenuPrincipal.Incrimente.Increment+10;
     FSMenuPrincipal.Incrimente.Max:=(15-strtoint(IndiceInt)+1)*(FSMenuPrincipal.BitRaccourci01.Width+7);
     FSMenuPrincipal.Incrimente.Min:=0;
     FSMenuPrincipal.Incrimente.Position:=FSMenuPrincipal.AfficheDefileRaccourcis.Left+((15-strtoint(FSMenuPrincipal.EditNbrRaccourcis.Text))*(FSMenuPrincipal.BitRaccourci01.Width+7));
     FSMenuPrincipal.AfficherMenuRaccourcis.Top:=FSMenuPrincipal.AfficheInfoTimer.Top-FSMenuPrincipal.AfficherMenuRaccourcis.Height-35;
/////////////////////////////////////////////////////////////

if(CentraliserLOGO=true)then
begin
     FSMenuPrincipal.Logo.Top:=FSMenuPrincipal.ControleProces.Top+4;
     FSMenuPrincipal.Logo.Height:=FSMenuPrincipal.AfficherMenuRaccourcis.Top-FSMenuPrincipal.Logo.Top-5;
     FSMenuPrincipal.Logo.Width:=FSMenuPrincipal.Logo.Height;
     FSMenuPrincipal.Logo.Left:=ValeAbsolue(FSMenuPrincipal.Width/2)-ValeAbsolue(FSMenuPrincipal.Logo.Width/2);

     FSMenuPrincipal.LabelISO.Height:=120;
     FSMenuPrincipal.LabelISO.Width:=105;
     FSMenuPrincipal.LabelISO.Left:=FSMenuPrincipal.AfficheInfoTimer.Left+FSMenuPrincipal.AfficheInfoTimer.Width+10;
     FSMenuPrincipal.LabelISO.Top:=FSMenuPrincipal.AfficheInfoTimer.Top+FSMenuPrincipal.AfficheInfoTimer.Height-FSMenuPrincipal.LabelISO.Height;
end
else
begin
     FSMenuPrincipal.Logo.Height:=120;
     FSMenuPrincipal.Logo.Width:=105;
     FSMenuPrincipal.Logo.Left:=FSMenuPrincipal.AfficheInfoTimer.Left+FSMenuPrincipal.AfficheInfoTimer.Width+10;
     FSMenuPrincipal.Logo.Top:=FSMenuPrincipal.AfficheInfoTimer.Top+FSMenuPrincipal.AfficheInfoTimer.Height-FSMenuPrincipal.Logo.Height;

     FSMenuPrincipal.LabelISO.Height:=FSMenuPrincipal.Logo.Height;
     FSMenuPrincipal.LabelISO.Width:=FSMenuPrincipal.Logo.Width;
     FSMenuPrincipal.LabelISO.Left:=FSMenuPrincipal.Logo.Left+FSMenuPrincipal.Logo.Width+10;
     FSMenuPrincipal.LabelISO.Top:=FSMenuPrincipal.Logo.Top;
end;
end;

procedure TFSMenuPrincipal.GnrationdeClient1Click(Sender: TObject);
begin
FSClients.Show;
FSClients.TableauClient.SetFocus;
end;

procedure TFSMenuPrincipal.GnrationdeFournisseurs1Click(Sender: TObject);
begin
FSFournisseurs.Show;
FSFournisseurs.TableauFournisseur.SetFocus;
end;

procedure TFSMenuPrincipal.GnrationdAutres1Click(Sender: TObject);
begin
FSEffectifs.Show;
FSEffectifs.TableauEffectifs.SetFocus;
end;

procedure TFSMenuPrincipal.GnrationdAutres2Click(Sender: TObject);
begin
     FSTiers.Show;
     FSTiers.TableauTiers.SetFocus;
end;

procedure TFSMenuPrincipal.GnrateurTypeTiersparProces1Click(
  Sender: TObject);
begin
if not AccesPrivilegies('FS Générateur Adresses Proces',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

FSGenerateurBase.Show;
FSGenerateurBase.PageGenerateurParametres.Show;
FSGenerateurBase.PageTypeTiersParProces.Show;
end;

procedure TFSMenuPrincipal.Gnrateurdelocalisationgographique1Click(
  Sender: TObject);
begin
     FSGenerateurLocalisationGeographique.Show;
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauPays,'FPays','Tous',FSGenerateurLocalisationGeographique.TableauPays.Row);
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauWilaya,'FWilaya',FSGenerateurLocalisationGeographique.TableauPays.Cells[1,1],FSGenerateurLocalisationGeographique.TableauWilaya.Row);
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauDaira,'FDaira',FSGenerateurLocalisationGeographique.TableauWilaya.Cells[1,1],FSGenerateurLocalisationGeographique.TableauDaira.Row);
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauCommune,'FCommune',FSGenerateurLocalisationGeographique.TableauDaira.Cells[1,1],FSGenerateurLocalisationGeographique.TableauCommune.Row);
     ListeLocalisationGeographique(FSGenerateurLocalisationGeographique.TableauZone,'FZone',FSGenerateurLocalisationGeographique.TableauCommune.Cells[1,FSGenerateurLocalisationGeographique.TableauCommune.Row],FSGenerateurLocalisationGeographique.TableauZone.Row);

     ActiverCouleur(FSGenerateurLocalisationGeographique.EditFichierLocalisationGeographique.Text);
end;

procedure TFSMenuPrincipal.TimerControleDateExecutionAlerteTimer(Sender: TObject);
var  ValeurAlerte:integer; UniteDureeAlerte,DateExecutionPrevue,HeureExecutionPrevue:string;
begin
     Application.ProcessMessages;
     
     FSMenuPrincipal.TimerControleDateExecutionAlerte.Enabled:=false;

     if(ControleDateExecutionAlerte(FSResultatsAutocontroleAlerteExecution.TableauAnalyseListeMouvement,'BusinessProces','Fiche de Saisie commerciale',FSResultatsAutocontroleAlerteExecution.EditOKExecution.Text,FSResultatsAutocontroleAlerteExecution.RBAfficherValeursMonetaires.Checked,FSResultatsAutocontroleAlerteExecution.RBAfficherTotalListeMouvement.Checked,ValeurAlerte,UniteDureeAlerte,DateExecutionPrevue,HeureExecutionPrevue))then
     begin
          FSMenuPrincipal.AfficherControleDateExecutionAlerte.Visible:=true;
          FSMenuPrincipal.AfficherControleDateExecutionAlerte.Caption:='Attention ! Alerte aux actions avant la date d''exécution !';
          FSMenuPrincipal.TimerControleCouleur.Enabled:=true;

          FSMenuPrincipal.MessageAlerte.Caption:='Alerte ! '+inttostr(ValeurAlerte)+' '+UniteDureeAlerte+' avant la date d''exécution au :'+DateExecutionPrevue;
     end;

     Application.ProcessMessages;
end;

procedure TFSMenuPrincipal.AfficherControleDateExecutionAlerteClick(
  Sender: TObject);
begin
     FSResultatsAutocontroleAlerteExecution.Show;
     FSResultatsAutocontroleAlerteExecution.AfficherInfoAlerte.Caption:=FSMenuPrincipal.MessageAlerte.Caption;
     FSMenuPrincipal.TimerControleCouleur.Enabled:=false;
     FSMenuPrincipal.AfficherControleDateExecutionAlerte.Visible:=false;
end;

procedure TFSMenuPrincipal.TimerControleCouleurTimer(Sender: TObject);
var   OKValidation:boolean;
begin
     Application.ProcessMessages;
     
     OKValidation:=false;

     if(FSMenuPrincipal.AfficherControleDateExecutionAlerte.Visible=true)then
     begin
          OKValidation:=true;
          if(FSMenuPrincipal.AfficherControleDateExecutionAlerte.Color=$00E4E4E4)then
          begin
               FSMenuPrincipal.AfficherControleDateExecutionAlerte.Color:=clWhite;
               FSMenuPrincipal.AfficherControleDateExecutionAlerte.Font.Color:=clRed;
          end
          else
          begin
               FSMenuPrincipal.AfficherControleDateExecutionAlerte.Color:=$00E4E4E4;
               FSMenuPrincipal.AfficherControleDateExecutionAlerte.Font.Color:=clNavy;
          end;
     end;

     if(FSMenuPrincipal.AfficheControleSoleDomiciliation.Visible=true)then
     begin
          OKValidation:=true;
          if(FSMenuPrincipal.AfficheControleSoleDomiciliation.Color=$00E4E4E4)then
          begin
               FSMenuPrincipal.AfficheControleSoleDomiciliation.Color:=clWhite;
               FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Color:=$00E4E4E4;
               FSMenuPrincipal.TableauControleSoleDomiciliation.FixedColor:=$00E4E4E4;
          end
          else
          begin
               FSMenuPrincipal.AfficheControleSoleDomiciliation.Color:=$00E4E4E4;
               FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Color:=clWhite;
               FSMenuPrincipal.TableauControleSoleDomiciliation.FixedColor:=clWhite;
          end;
     end;

     if(FSMenuPrincipal.AfficheNotificationServeur.Visible=true)then
     begin
          OKValidation:=true;
          if(FSMenuPrincipal.AfficheNotificationServeur.Color=$00E4E4E4)then
          begin
               FSMenuPrincipal.AfficheNotificationServeur.Color:=clWhite;
               FSMenuPrincipal.AfficheTitreNotificationServeur.Color:=$00E4E4E4;
               FSMenuPrincipal.TableauNotificationServeur.FixedColor:=$00E4E4E4;
          end
          else
          begin
               FSMenuPrincipal.AfficheNotificationServeur.Color:=$00E4E4E4;
               FSMenuPrincipal.AfficheTitreNotificationServeur.Color:=clWhite;
               FSMenuPrincipal.TableauNotificationServeur.FixedColor:=clWhite;
          end;
     end;

     if(FSMenuPrincipal.PanelAfficheSerieDisque.Visible=true)then
     begin
          OKValidation:=true;
          if(FSMenuPrincipal.PanelAfficheSerieDisque.Color=$00E4E4E4)then
          begin
               FSMenuPrincipal.PanelAfficheSerieDisque.Color:=clWhite;
               FSMenuPrincipal.AfficheTitreNotificationServeur.Color:=$00E4E4E4;
               FSMenuPrincipal.TableauNotificationServeur.FixedColor:=$00E4E4E4;
          end
          else
          begin
               FSMenuPrincipal.PanelAfficheSerieDisque.Color:=$00E4E4E4;
               FSMenuPrincipal.AfficheTitreNotificationServeur.Color:=clWhite;
               FSMenuPrincipal.TableauNotificationServeur.FixedColor:=clWhite;
          end;
     end;

     FSMenuPrincipal.TimerControleCouleur.Enabled:=OKValidation;
end;

procedure TFSMenuPrincipal.FormDblClick(Sender: TObject);
begin
     FSMenuPrincipal.EditAutorisationMiseAJourData.Text:='';
     FSMenuPrincipal.EditAutorisationMiseAJourData.SetFocus;
end;

procedure TFSMenuPrincipal.EditAutorisationMiseAJourDataKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if FSMenuPrincipal.EditAutorisationMiseAJourData.Text='000' then
     begin
          FSMenuPrincipal.EditAutorisationMiseAJourData.Text:='';
          FSMenuPrincipal.RBConfirmationAppliquerMiseAJourData.Checked:=false;
          FSMenuPrincipal.AfficheAppliquerMiseAJourData.Visible:=true;
     end;
end;

procedure TFSMenuPrincipal.FormShow(Sender: TObject);
var  AdresseAgent:string;
begin
      IncrementationPublication:=0;
      ActiverNomForm(1,(Sender as TComponent).Name);

      ControleExisteProjetFinance;
     
      AfficherIndiqueAdresseTypeMouvement(FSMenuPrincipal.TableauIndiqueAdresseListeMouvement,'');

      FSMenuPrincipal.EditCodeFondateurParDefaut.Text:='EFI'+Midellaters(datetostr(Date),1,2);

      FSMenuPrincipal.EditAutorisationMiseAJourData.Width:=0;

      FSMenuPrincipal.TableauSeparateur.Height:=0;
      FSMenuPrincipal.TableauSeparateur.Cells[0,0]:='........................................................................................................................................................................................................................................';

      FSMenuPrincipal.EditDateDebut.Date:=strtodate('01/01/'+Lastlaters(datetostr(date),4));
      FSMenuPrincipal.EditDateFin.Date:=date;

      ///////////////////////////////  AGENT   /////////////////////////////////
      {OpenFParc(RParc);
      AdresseAgent:=RParc.Parcours+'\'+'Dogs.acd';
      Agent1.Connected:=True;
      Agent1.Characters.Load('Peedy', AdresseAgent);// chargement du personnage Peedy
                                                   // (Characters en anglais veut dire Personnages)
      Peedy:=IAgentCtlCharacterEX(Agent1.Characters.Character('Peedy'));
      // Ainsi Peedy représentera, parmi tous les personnages que contient Agent1
                                                   // le personnage Peedy chargé précédemment
      Peedy.Show(False);                           // Pour le faire apparaître.

      Peedy.LanguageID:=$40C;//ou $409 pour l'anglais US}
      ////////////////////////////////////////////////////////////////////////////

      if(CentraliserLOGO=true)then
      begin
           FSMenuPrincipal.Logo.Height:=ValeAbsolue(FSMenuPrincipal.Height/2);
           FSMenuPrincipal.Logo.Width:=ValeAbsolue(FSMenuPrincipal.Width/2);
           FSMenuPrincipal.Logo.Left:=ValeAbsolue(FSMenuPrincipal.Width/2)-ValeAbsolue(FSMenuPrincipal.Logo.Width/2);
           FSMenuPrincipal.Logo.Top:=ValeAbsolue(FSMenuPrincipal.Height/2)-ValeAbsolue(FSMenuPrincipal.Logo.Height/1.5);
      end
      else
      begin
           FSMenuPrincipal.Logo.Height:=120;
           FSMenuPrincipal.Logo.Width:=105;
           FSMenuPrincipal.Logo.Left:=FSMenuPrincipal.Width-FSMenuPrincipal.Logo.Width-1146;
           FSMenuPrincipal.Logo.Top:=FSMenuPrincipal.Height-FSMenuPrincipal.Logo.Height-89;
      end;

      FSMenuPrincipal.AfficheRapport.Left:=ValeAbsolue(FSMenuPrincipal.Width/2)-ValeAbsolue(FSMenuPrincipal.AfficheRapport.Width/2);
      FSMenuPrincipal.AfficheRapport.Top:=ValeAbsolue(FSMenuPrincipal.Height/2)-ValeAbsolue(FSMenuPrincipal.AfficheRapport.Height/1.5);

      FSMenuPrincipal.AfficheAdresseDossierPartageReseaux.Left:=ValeAbsolue(FSMenuPrincipal.Width/2)-ValeAbsolue(FSMenuPrincipal.AfficheAdresseDossierPartageReseaux.Width/2);
      FSMenuPrincipal.AfficheAdresseDossierPartageReseaux.Top:=ValeAbsolue(FSMenuPrincipal.Height/2)-ValeAbsolue(FSMenuPrincipal.AfficheAdresseDossierPartageReseaux.Height/1.5);

      FSMenuPrincipal.AfficheInfoTimer.Left:=8;
      FSMenuPrincipal.AfficheInfoTimer.Top:=FSMenuPrincipal.Height-FSMenuPrincipal.AfficheInfoTimer.Height-70;

      FSMenuPrincipal.AfficheNotificationServeur.Left:=8;
      FSMenuPrincipal.AfficheNotificationServeur.Top:=FSMenuPrincipal.Height-FSMenuPrincipal.AfficheNotificationServeur.Height-70;

end;

procedure TFSMenuPrincipal.Quitter1Click(Sender: TObject);
begin
     FSApplicationTerminate.Show;
     FSApplicationTerminate.AfficheApplicationTerminate.Caption:='Voulez vous Quitter Business-Proces ?';
     FSApplicationTerminate.BitOK.SetFocus;

     FSApplicationTerminate.EditApplicationTerminate.Text:='Quitter';
end;

procedure TFSMenuPrincipal.GnrateurdEtatdanalyse1Click(Sender: TObject);
var  R:integer;
begin
if not AccesPrivilegies('FS Générateur Etats',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

FSGenerateurEtats.Show;
ProcAfficheEtat;
ProcAfficheRubriqueEtat(FSGenerateurEtats.TableauRubriqueEtat,strtointeger(FSGenerateurEtats.TableauListeEtats.Cells[1,FSGenerateurEtats.TableauListeEtats.Row]),FSGenerateurEtats.EditCodeTypeFormuleAfficher.Text);
end;

procedure TFSMenuPrincipal.GnrateurPlanComptable1Click(Sender: TObject);
begin
     if not AccesPrivilegies('FS Plan Comptable',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSPlanComptable.Show;
     ProcAffichePCN('6','',FSPlanComptable.EditTypeComptabilite.Text);

end;

procedure TFSMenuPrincipal.Fichedes1Click(Sender: TObject);
var  NStructureMarche:string;
begin
     if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSMarche.EditTypeProjet.ItemIndex:=0;
     FSMarche.Caption:='Fiche de Saisie '+FSMarche.EditTypeProjet.Text;
     FSMarche.Show;
     ProcAfficheMarche(FSMarche.TableauMarche,FSMarche.EditTypeProjet.Text,'');
     ProcAfficheStructureMarche(FSMarche.TableauStructureMarche,FSMarche.TableauMarche.Cells[1,FSMarche.TableauMarche.Row]);
     if(FSMarche.TableauMarche.Cells[18,FSMarche.TableauMarche.Row]='Marche')
     then NStructureMarche:=''
     else NStructureMarche:=FSMarche.TableauStructureMarche.Cells[2,FSMarche.TableauStructureMarche.Row];
     ProcAfficheStatistiqueMarche(FSMarche.TableauStatistiqueMarche,FSMarche.TableauMarche.Cells[1,FSMarche.TableauMarche.Row],NStructureMarche);
     FSMarche.AfficheListeMarche.Caption:='Liste des Marchés';
     FSMarche.EditMarcheReference.Caption:='';
     FSMarche.EditRefMarcheEnReference.Text:='';
     FSMarche.AfficheEditMarcheReference.Width:=0;
     FSMarche.TableauMarche.SetFocus;
     FSMarche.AfficheShoixMarcheReference.Visible:=false;
     FSMarche.EditChoixNumMarcheReference.Text:='';

     if(FSMarche.EditIMax.Text<>'')and(longueur(FSMarche.AfficheListeMarche.Caption)>strtointeger(FSMarche.EditIMax.Text))then
     begin
          FSMarche.EditIncrimenteDefileTexte.Text:='1';
          FSMarche.AfficheListeMarcheCopie.Caption:=FSMarche.AfficheListeMarche.Caption;
          FSMarche.AfficheListeMarche.Caption:='';
          FSMarche.TimerDefilerAffichage.Enabled:=true;
     end
     else
     begin
          FSMarche.EditIncrimenteDefileTexte.Text:='';
          FSMarche.AfficheListeMarcheCopie.Caption:='';
          FSMarche.TimerDefilerAffichage.Enabled:=false;
     end;
end;

procedure TFSMenuPrincipal.Attachements1Click(Sender: TObject);
var  NStructureMarche:string;
begin
     if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSMarche.EditTypeProjet.ItemIndex:=1;
     FSMarche.Caption:='Fiche de Saisie '+FSMarche.EditTypeProjet.Text;
     FSMarche.Show;
     ProcAfficheMarche(FSMarche.TableauMarche,FSMarche.EditTypeProjet.Text,'');
     ProcAfficheStructureMarche(FSMarche.TableauStructureMarche,FSMarche.TableauMarche.Cells[1,FSMarche.TableauMarche.Row]);
     if(FSMarche.TableauMarche.Cells[18,FSMarche.TableauMarche.Row]='Marche')
     then NStructureMarche:=''
     else NStructureMarche:=FSMarche.TableauStructureMarche.Cells[2,FSMarche.TableauStructureMarche.Row];
     ProcAfficheStatistiqueMarche(FSMarche.TableauStatistiqueMarche,FSMarche.TableauMarche.Cells[1,FSMarche.TableauMarche.Row],NStructureMarche);

     FSMarche.AfficheShoixMarcheReference.Visible:=true;
     FSMarche.AfficheShoixMarcheReference.Left:=8;
     FSMarche.AfficheShoixMarcheReference.Top:=7;
     ProcAfficheMarche(FSMarche.TableauCoixMarcheReference,'Marche','');
     FSMarche.TableauCoixMarcheReference.RowCount:=FSMarche.TableauCoixMarcheReference.RowCount+1;
     FSMarche.TableauCoixMarcheReference.Rows[FSMarche.TableauCoixMarcheReference.RowCount-1].Text:='';
     FSMarche.TableauCoixMarcheReference.Cells[4,FSMarche.TableauCoixMarcheReference.RowCount-1]:='Tous';

     FSMarche.TableauCoixMarcheReference.SetFocus;
     FSMarche.AfficheListeMarche.Caption:='Liste des Avenants';
     FSMarche.EditChoixNumMarcheReference.Text:='';
end;

procedure TFSMenuPrincipal.Attachements3Click(Sender: TObject);
begin
     if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;
     
     FSAttachements.Show;
end;

procedure TFSMenuPrincipal.Dtailquantitatifetestimatifdumarch1Click(
  Sender: TObject);
var NSMarche,NStructureMarche,NStatistiqueMarche,NAvenant:integer;
begin
     if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;
     
FSDetailMarche.Show;
FSDetailMarche.BRefaireMarche.Checked:=false;
if FileExists('C:\WinF.File')then
begin
assignfile(FRegistre,'C:\WinF.File');
try
reset(FRegistre);
Read(FRegistre,RRegistre);
ChEnregistrement:=RRegistre.Adresse;
finally
CloseFile(FRegistre);
end;
FSDetailMarche.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Détail Marché';
end;

RemplireFirstLigneDetailMarche(FSDetailMarche.TableauDetailMarche);
FSDetailMarche.TableauDetailMarche.SetFocus;

FSDetailMarche.EditNSMarche.Text:='';
FSDetailMarche.EditMarche.Text:='';
FSDetailMarche.EditTypeDecision.Text:='Marche';
FSDetailMarche.IndiceAfficheStructure.Text:='0';
FSDetailMarche.EditNStructureMarche.Text:='';
FSDetailMarche.EditStructureMarche.Text:='';
FSDetailMarche.IndiceAfficheStatistique.Text:='0';
FSDetailMarche.EditNStatistiqueMarche.Text:='';
FSDetailMarche.EditStatistiqueMarche.Text:='';

AjusterColWidth(FSDetailMarche.TableauDetailMarche,'','');
end;

procedure TFSMenuPrincipal.Situationsdumarchetanalyses1Click(
  Sender: TObject);
begin
     if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;
     
     FSSituations.Show;
     FSSituations.PageSituation.Show;
     FSSituations.EditNSMarche.SetFocus;

     ListeBaseAvisBox(FSSituations.EditBaseAvisFichierConcerne,FSSituations.TitreEditBaseAvis);
end;

procedure TFSMenuPrincipal.SituationsetAnalyses1Click(Sender: TObject);
begin
     if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;
     FSOperationFinanceMarche.Show;
     FSOperationFinanceMarche.BitMarche.SetFocus;
end;

procedure TFSMenuPrincipal.Archivesdephotoset1Click(Sender: TObject);
begin
     if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSArchivesPhotosCommentaires.Show;
     ListeArchivePhotosCommenatires(FSArchivesPhotosCommentaires.TableauArchivesPhotosCommentaire,FSArchivesPhotosCommentaires.EditTypeModuleArchivePhotoCommentaireAfficher.Text,FSArchivesPhotosCommentaires.EditListeStructure.Text,FSArchivesPhotosCommentaires.EditListeGroupe.Text,FSArchivesPhotosCommentaires.EditListeStructure,FSArchivesPhotosCommentaires.EditListeGroupe,true,FSArchivesPhotosCommentaires.EditAvecSansPhoto.Text,'');
end;

procedure TFSMenuPrincipal.ModuleCalculeParFormules1Click(Sender: TObject);
begin
     FSModuleCalculeFormules.Show;
end;

procedure TFSMenuPrincipal.Rouverture1Click(Sender: TObject);
var   NewExercice:integer; OKFondateur,ActiverReouverture,OKArchive:boolean;
      TypeProcesControleReseaux:string;
begin
     if not AccesPrivilegies('FS Travaux Fin Année',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     if(FSMenuPrincipal.EditCodeUtilisateur.Text=FSMenuPrincipal.EditCodeFondateurParDefaut.Text)
     then OKFondateur:=true
     else OKFondateur:=false;

     NewExercice:=strtointeger(ExerciceAnnee)+1;
     if(NewExercice<=strtointeger(Lastlaters(datetostr(date),4)))
     or(OKFondateur=true)
     then
     begin
          ActiverReouverture:=ActiverReouverturePrelevement(inttostr(NewExercice),false,True,false,OKArchive,TypeProcesControleReseaux);

          if(ActiverReouverture=true)and(OKArchive=false)then
          begin
               showmessage('Veuillez archiver les prélèvements SVP !');
               Exit;
          end;

          FSTravauxFinAnnee.Show;

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
                    FSTravauxFinAnnee.EditDesignationDevise.Text:=RUniteFonds.DesignationDevise;
                    FSTravauxFinAnnee.EditSigleDevise.Text:=RUniteFonds.SigleDevise;
               end;
               finally
               CloseFile(FUniteFonds);
               end;
          end;
     end
     else
     begin
          AfficherMessage('L''exercice actuel n''est pas clôturé !');
     end;

     FSTravauxFinAnnee.EditEcartPrelevement.Text:='';
end;

procedure TFSMenuPrincipal.Modulerecherchedebasededonnes1Click(
  Sender: TObject);
begin
     //FSRechercheBaseDonnees.Show;
     FSTraitementAnalyse.Show;

     FSTraitementAnalyse.AfficheOptionPrint.Height:=31;
end;

procedure TFSMenuPrincipal.Contrleurdateetheuresystme1Click(
  Sender: TObject);
begin
     if not AccesPrivilegies('FS Contrôleur Système',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSControleSysteme.Show;
     FSControleSysteme.PageVerificationReseaux.Show;

     if(FunctionTravauxConnexionReseaux=true)
     then FSControleSysteme.RBTravauxConnexionReseaux.Checked:=true
     else FSControleSysteme.RBTravauxHorsConnexionReseaux.Checked:=true;

     if(FunctionActiverPublicationReseaux=true)
     then FSControleSysteme.RBActiverPublicationReseaux.Checked:=true
     else FSControleSysteme.RBDesActiverPublicationReseaux.Checked:=true;

     FSControleSysteme.RBAppliqueEnregistrementParametresReseaux.Checked:=true;
end;                                                      

procedure TFSMenuPrincipal.Button1Click(Sender: TObject);
begin
     RichEdit1.SelectAll;
     RichEdit1.CopyToClipboard;
end;

procedure TFSMenuPrincipal.Button3Click(Sender: TObject);
begin
     RichEdit1.SelectAll;
     RichEdit1.CutToClipboard;
end;

procedure TFSMenuPrincipal.Button2Click(Sender: TObject);
begin
     Memo1.Clear;
     Memo1.PasteFromClipboard;
end;

procedure TFSMenuPrincipal.Button4Click(Sender: TObject);
begin
     Edit1.Clear;
     Edit1.PasteFromClipboard;
end;



procedure TFSMenuPrincipal.FormCreate(Sender: TObject);
var
     i : integer;
     a : single;
begin
     FSMenuPrincipal.AfficheChoisConnectivite.Visible:=false;
     FSMenuPrincipal.AffichageRaccourcis.Visible:=false;

     FSMenuPrincipal.Top := 0;
     FSMenuPrincipal.Left := 0;
     FSMenuPrincipal.Height := getsystemmetrics(SM_CYSCREEN);
     FSMenuPrincipal.Width := getsystemmetrics(SM_CXSCREEN);

     FSMenuPrincipal.PanelMotPasse.Top := round((getsystemmetrics(SM_CYSCREEN) - FSMenuPrincipal.PanelMotPasse.Height)/2);
     FSMenuPrincipal.PanelMotPasse.left := round((getsystemmetrics(SM_CXSCREEN) - FSMenuPrincipal.PanelMotPasse.Width)/2);

     FSMenuPrincipal.PanelAfficheArret.Top := round((getsystemmetrics(SM_CYSCREEN) - FSMenuPrincipal.PanelAfficheArret.Height)/2);
     FSMenuPrincipal.PanelAfficheArret.left := round((getsystemmetrics(SM_CXSCREEN) - FSMenuPrincipal.PanelAfficheArret.Width)/2);

     timer1.enabled := false;
     phase  := 0;
     for i := 0 to 360 do
     begin
       a := (i * 180) / pi;
       zsin[i] := sin(i*180);
     end;
     bmp1 := tbitmap.create; bmp1.width  := 8;  Bmp1.height := 8;
     bmp2 := Tbitmap.create; bmp2.width  := 8;  Bmp2.height := 8;
     bmp3 := tbitmap.create; bmp3.width  := 8;  Bmp3.height := 8;
     bmp4 := Tbitmap.create; bmp4.width  := 8;  Bmp4.height := 8;
end;

{initialization // tout ce qui est dans cette partie est effectué au démarrage de l'appli

if GlobalFindAtom('ProgrammeTestPas2Fois') = 0 then
begin
     atom := GlobalAddAtom('ProgrammeTestPas2Fois');
end
else
begin
     MessageDlg('Le programme est déjà en cours d''exécution', mtWarning,[mbOK], 0);
     Halt;
end;

finalization  // tout ce qui est dans cette partie est effectué à la fermeture du programme
GlobalDeleteAtom(atom);}

procedure TFSMenuPrincipal.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in [#8,'0'..'9',DecimalSeparator,'+','-']) then key:=#0;
end;

procedure TFSMenuPrincipal.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Const SC_DragMove=$F012;
begin
     ReleaseCapture;
     if Sender is Tlabel
     then((Sender as Tlabel).Parent).Perform(WM_SysCommand,SC_DragMove,0)
     else
     begin
         if Sender is TImage
         then((Sender as TImage).Parent).Perform(WM_SysCommand,SC_DragMove,0)
         else(Sender as TControl).Perform(WM_SysCommand,SC_DragMove,0);
     end;
end;

procedure TFSMenuPrincipal.Chiffresenlettres1Click(Sender: TObject);
begin
     FSUtilitaires.Show;
     FSUtilitaires.EditChiffre.SetFocus;
end;

procedure TFSMenuPrincipal.BitBtn6Click(Sender: TObject);
var OldSysLocal:TSysLocale;
begin
OldSysLocal:=SysLocale;// pour pouvoir le remettre
SysLocale.MiddleEast := True;
Edit1.BiDiMode := bdRightToLeft;
SysLocale := OldSysLocal;
end;

procedure TFSMenuPrincipal.BitBtn7Click(Sender: TObject);
begin
     FSMenuPrincipal.BorderIcons:=[biSystemMenu,biMinimize,biMaximize];
     if(FSMenuPrincipal.TypeAffichage.Caption='Affichage Automatique')then FSMenuPrincipal.TimerControleSoldeDomiciliation.Enabled:=false;
     if(FSMenuPrincipal.TypeAffichage.Caption='Affichage Commandé')then FSMenuPrincipal.TimerControleSoldeDomiciliation.Enabled:=true;
     FSMenuPrincipal.AfficheControleSoleDomiciliation.Visible:=false;

     OpenForm(FSMenuPrincipal.TableauNomFormActive.Cells[1,FSMenuPrincipal.TableauNomFormActive.RowCount-1]);
end;

procedure TFSMenuPrincipal.TimerControleSoldeDomiciliationTimer(
  Sender: TObject);
begin
     Application.ProcessMessages;
EXIT;
     FSMenuPrincipal.TimerControleSoldeDomiciliation.Enabled:=false;
     AfficherMessage('Patienter ! Contrôle système !');
     FSMenuPrincipal.TimerLancerControleSoldeDomiciliation.Enabled:=true;
end;

procedure TFSMenuPrincipal.BitBtn8Click(Sender: TObject);
var  R:integer; TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;
begin
     GrasARow:='0';
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0';
     RightARow:='';
     RightACol:='';
     TitreEtat:='Contrôle Domiciliation au '+datetostr(Date);

     OptionsImpression(FSMenuPrincipal.TableauControleSoleDomiciliation,'Center',0,1,TitreEtat,FSMenuPrincipal.RBAjustement.Checked,FSMenuPrincipal.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,True,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSMenuPrincipal.BitTitreControleSoleDomiciliationClick(
  Sender: TObject);
begin
     if(FSMenuPrincipal.AfficheControleSoleDomiciliation.Height=329)or((FSMenuPrincipal.AfficheControleSoleDomiciliation.Height=56)and(FSMenuPrincipal.BitTitreControleSoleDomiciliation.Left<>8) )then
     begin
          FSMenuPrincipal.BorderIcons:=[biSystemMenu,biMinimize,biMaximize];
          FSMenuPrincipal.BitTitreControleSoleDomiciliation.Caption:='Afficher les notifications';
          FSMenuPrincipal.AfficheControleSoleDomiciliation.Height:=56;

          FSMenuPrincipal.BitTitreControleSoleDomiciliation.Left:=8;
          FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Width:=FSMenuPrincipal.BitTitreControleSoleDomiciliation.Width+16;
          FSMenuPrincipal.AfficheControleSoleDomiciliation.Width:=FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Width+16;
     end
     else
     begin
          FSMenuPrincipal.BorderIcons:=[biMinimize,biMaximize];
          FSMenuPrincipal.BitTitreControleSoleDomiciliation.Caption:='Cacher les notifications';
          FSMenuPrincipal.AfficheControleSoleDomiciliation.Height:=329;

          FSMenuPrincipal.AfficheControleSoleDomiciliation.Width:=FSMenuPrincipal.Width-29;
          FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Width:=FSMenuPrincipal.AfficheControleSoleDomiciliation.Width-16;
          FSMenuPrincipal.BitTitreControleSoleDomiciliation.Left:=FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Width-FSMenuPrincipal.BitTitreControleSoleDomiciliation.Width-8;
     end;
end;

procedure TFSMenuPrincipal.ContrleDomiciliations1Click(Sender: TObject);
begin
     ControleManuelSoldeDomiciliation;
end;

procedure TFSMenuPrincipal.Timer1Timer(Sender: TObject);
begin
     inc(phase);
     if phase >= frames then phase := 0;
     mirror(phase);
     paintbox1.canvas.draw(0, limitebmp2,bmp4);
end;

procedure TFSMenuPrincipal.mirror(ph : integer);
var
  h : single;          // bitmap height
  a : single;          // angle in radians
  dy :  single;        // compute with reals
  y3 :  integer;       // pixel source
  x4, y4 :  integer;   // pixel destination
  f : single;          // frames
  p : single;          // phase
  k0 : single;
  k1 : single;
  k2 : single;
  za : integer;
begin
  // phase (0..Frames-1) in radians for sinus variation
  p := ph;                  // phase
  h := bmp4.height;         // height into real
  f := frames;              // frames into real
  a := (2*pi*p) / f;
  k0 := 16;
  k1 := h/k0;
  k2 := k0*1.5;
  for y4 := 0 to bmp4.height -1 do   // from destination image
  begin
    dy := y4;  // en réel
    y3 := trunc( k1*(dy+k2) * sin((h/k1*(h-dy))/(dy+1)+a)/h );
    y3 := y3+y4;
    IF checkbox1.checked then   // blur option
    begin
      for x4 := 0 to bmp4.width-1 do
      begin
       // check bitmap limits
        if (y3 > 0) and (y3 < Bmp3.height) and ((x4+y4) mod 2 = 0) then
        Tscan4[y4,x4] := Tscan3[y3, x4]  else Tscan4[y4,x4] := Tscan3[y4, x4];
      end;
    end
    else
    begin
      for x4 := 0 to bmp4.width-1 do
      begin
        if (y3 > 0) and (y3 < Bmp3.height) then
        Tscan4[y4,x4] := Tscan3[y3, x4] else Tscan4[y4,x4] := Tscan3[y4, x4];
      end;
    end;
  end;
end;

procedure TFSMenuPrincipal.Initmirror;
var
  i : integer;
  h : integer;            // Max Form height
  k1, k2 : integer;       // lake parameters
begin
  frames := updown2.position;
  case radiogroup1.itemindex of
  0 : begin k1 := 1; k2 := 3; end;
  1 : begin k1 := 1; k2 := 2; end;
  2 : begin k1 := 2; k2 := 3; end;
  3 : begin k1 := 4; k2 := 5; end;
  end;
  //  Bmp2 must fit in client form area
  bmp2.free;
  bmp2 := tbitmap.create;
  h := AfficheReflet.height - 16;
  If (bmp1.height*(k1+k2)) div k2 > h then
  begin
    bmp2.height := (bmp1.height * h) div ((bmp1.height*(k1+k2)) div k2);
    bmp2.width  := (bmp1.width  * h) div ((bmp1.height*(k1+k2)) div k2);
  end
  else
  begin
    bmp2.width := bmp1.width;
    bmp2.height := bmp1.height;
  end;
  If limitebmp2 = 0 then limitebmp2 := bmp2.height  // 0 => height initialize
  else
    limitebmp2 := (limitebmp2*bmp2.height) div savebmp2H;
  savebmp2H := bmp2.height;      // clic limits
  bmp2.canvas.stretchdraw(rect(0,0,bmp2.width, bmp2.height), bmp1);
  bmp2.height := limitebmp2;
  bmp3.free;
  Bmp3 := Tbitmap.create;
  bmp3.width  := Bmp2.width;
  // decrease height to simulate point of view
  bmp3.height := (Bmp2.height *k1) div k2;
  Bmp3.pixelformat := pf24bit;       // 24 bits per pixel
  // vertical mirror
  Bmp3.Canvas.stretchDraw(Rect(0, Bmp2.height-1,Bmp2.width,-1), bmp2);
  bmp4.free;
  Bmp4 := Tbitmap.create;
  bmp4.width  := bmp3.width;
  bmp4.height := bmp3.height;
  Bmp4.pixelformat := pf24bit;
  bmp4.canvas.draw(0,0,bmp3);

  paintbox1.width  := bmp3.width;
  paintbox1.height := limitebmp2+ (bmp2.height*k1) div k2;
  Paintbox1.left := (AfficheReflet.width - paintbox1.width) div 2;
  Paintbox1.top  := (AfficheReflet.height - paintbox1.height) div 2;
  Paintbox1.canvas.draw(0,0,bmp2);
  Paintbox1.canvas.draw(0, limitebmp2, bmp4);
  //  scanline pointers optimization
  For i := 0 to bmp3.height-1 do
  begin
    Tscan3[i] := bmp3.scanline[i];
    Tscan4[i] := bmp4.scanline[i];
  end;
end;

procedure TFSMenuPrincipal.BtopenClick(Sender: TObject);
begin
     stop := true;
     button1.caption := 'Start';
     timer1.enabled := false;
     If openpictureDialog1.execute then
     begin
     image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
     bmp1.width := image1.picture.graphic.width;
     bmp1.height := image1.picture.graphic.height;
     bmp1.pixelformat := pf24bit;
     bmp1.canvas.draw(0,0,image1.picture.graphic);
     limitebmp2 := 0;
     initmirror;
     stop := false;
     button1.caption := 'Stop';
     timer1.enabled := true;
     end;
end;

procedure TFSMenuPrincipal.FormDestroy(Sender: TObject);
begin
     bmp1.free;
     bmp2.free;
     bmp3.free;
     bmp4.free;
end;

procedure TFSMenuPrincipal.PaintBox1Paint(Sender: TObject);
begin
  with paintbox1.canvas do
  begin
    draw(0,0,bmp2);
    draw(0, bmp2.height-1, bmp4);
  end;
end;

procedure TFSMenuPrincipal.BtQuitterClick(Sender: TObject);
begin
     FSMenuPrincipal.AfficheReflet.Visible:=false;
     
end;

procedure TFSMenuPrincipal.BitBtn10Click(Sender: TObject);
begin
     If Stop then
     begin
          stop := false;
          button1.caption := 'Stop';
          timer1.enabled := true;
     end
     else
     begin
          stop := true;
          button1.caption := 'Start';
          timer1.enabled := false;
     end;
end;

procedure TFSMenuPrincipal.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
     timer1.interval := updown1.position;
end;

procedure TFSMenuPrincipal.UpDown2Click(Sender: TObject;
  Button: TUDBtnType);
begin
     timer1.enabled := false;
     initmirror;
     IF not stop then timer1.enabled := true;
end;

procedure TFSMenuPrincipal.RadioGroup1Click(Sender: TObject);
begin
     timer1.enabled := false;
     initmirror;
     IF not stop then timer1.enabled := true;
end;

procedure TFSMenuPrincipal.Publicit1Click(Sender: TObject);
begin
     FSPublicite.Show;
     
     FSMenuPrincipal.AfficheReflet.Visible:=true;
     FSMenuPrincipal.AfficheReflet.Align:=alClient;

     timer1.enabled := false;
     limitebmp2 := 0;
     initmirror;
     IF not stop then timer1.enabled := true;

     image1.Picture:=FSMenuPrincipal.Logo.Picture;
     bmp1.width := image1.picture.graphic.width;
     bmp1.height := image1.picture.graphic.height;
     bmp1.pixelformat := pf24bit;
     bmp1.canvas.draw(0,0,image1.picture.graphic);
     limitebmp2 := 0;
     initmirror;
     stop := false;
     button1.caption := 'Stop';
     timer1.enabled := true;
end;

procedure TFSMenuPrincipal.GnrationSriespicesdomiciliation1Click(
  Sender: TObject);
begin
     FSSairiePiecesDomiciliation.Show;
     ListeNotificationDomiciliation(FSSairiePiecesDomiciliation.TableauSeriesPiecesDomiciliation,FSSairiePiecesDomiciliation.EditNumDomiciliation.Text);
end;

procedure TFSMenuPrincipal.BitBtn9Click(Sender: TObject);
var  R:integer; TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;
begin
     GrasARow:='0;'+inttostr(FSMenuPrincipal.TableauLiseAvisNotifier.RowCount-1)+';'+inttostr(FSMenuPrincipal.TableauLiseAvisNotifier.RowCount-2);
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0,1,2';
     RightARow:='';
     RightACol:='7;8';
     TitreEtat:='Détail notification Domiciliation du '+datetostr(FSMenuPrincipal.EditDateDebut.Date)+' au '+datetostr(FSMenuPrincipal.EditDateFin.Date);

     OptionsImpression(FSMenuPrincipal.TableauLiseAvisNotifier,'Center',0,1,TitreEtat,FSMenuPrincipal.RBAjustement.Checked,FSMenuPrincipal.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,True,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSMenuPrincipal.BitBtn11Click(Sender: TObject);
begin
     if(FSMenuPrincipal.AfficheControleSoleDomiciliation.Height=329)
     then FSMenuPrincipal.AfficheControleSoleDomiciliation.Height:=649
     else FSMenuPrincipal.AfficheControleSoleDomiciliation.Height:=329;
end;

procedure TFSMenuPrincipal.BitBtn12Click(Sender: TObject);
var  NomFichier:string;
begin
     NomFichier:='Détail notification Domiciliation du '+datetostr(FSMenuPrincipal.EditDateDebut.Date)+' au '+datetostr(FSMenuPrincipal.EditDateFin.Date);
     TableauInFileTexte(FSMenuPrincipal.TableauLiseAvisNotifier,NomFichier,FSCreateFichierTexte.RBCodificationRubriqes,FSCreateFichierTexte.RBLibelleRubriques,FSCreateFichierTexte.RBSignatureEntrepeise);
end;

procedure TFSMenuPrincipal.BitBtn13Click(Sender: TObject);
var  TitreEtat,SousTitreEtat:string;
begin
     TitreEtat:='Détail notification Domiciliation';
     SousTitreEtat:='du '+datetostr(FSMenuPrincipal.EditDateDebut.Date)+' au '+datetostr(FSMenuPrincipal.EditDateFin.Date);
     TableauToExcel(FSMenuPrincipal.TableauLiseAvisNotifier,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

procedure TFSMenuPrincipal.TableauLiseAvisNotifierClick(Sender: TObject);
var  FinControleRow:integer;  TypeData:string;
begin
     if(FSMenuPrincipal.RBRubriqueTrieTableauAvis.Checked=true)then
     begin
          FSMenuPrincipal.EditRubriqueTrie.Text:=inttostr(FSMenuPrincipal.TableauLiseAvisNotifier.Col);

          TypeData:='';

          if(FSMenuPrincipal.TableauLiseAvisNotifier.Col=2)
          then
          begin
               TypeData:='Date';
          end;

          if(FSMenuPrincipal.TableauLiseAvisNotifier.Col=1)
          or(FSMenuPrincipal.TableauLiseAvisNotifier.Col=7)
          or(FSMenuPrincipal.TableauLiseAvisNotifier.Col=8)
          then
          begin
               TypeData:='Num';
          end;

          FSMenuPrincipal.RBRubriqueTrieTableauAvis.Checked:=false;

          if(FSMenuPrincipal.TableauLiseAvisNotifier.RowCount-4>1)
          then FinControleRow:=FSMenuPrincipal.TableauLiseAvisNotifier.RowCount-5
          else FinControleRow:=FSMenuPrincipal.TableauLiseAvisNotifier.RowCount-1;
          TrierTableauARowSpecial(FSMenuPrincipal.TableauLiseAvisNotifier,2,FinControleRow,1,FSMenuPrincipal.EditRubriqueTrie.Text,TypeData,'+');
     end;
end;

Procedure ControleManuelSoldeDomiciliation;
var  LastRow:integer;  OKBiSysteme:boolean;
begin
     OKBiSysteme:=false;
     FSMenuPrincipal.TimerControleSoldeDomiciliation.Enabled:=false;

     if(ControleSoldeAllDomiciliations(FSMenuPrincipal.TableauControleSoleDomiciliation,FSMenuPrincipal.TableauLiseAvisNotifier,true,LastRow))then
     begin
          OKBiSysteme:=true;
          FSMenuPrincipal.AfficheControleSoleDomiciliation.Visible:=true;
          FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Caption:='Nombre de notification: '+Completezerogauche(inttostr(FSMenuPrincipal.TableauControleSoleDomiciliation.RowCount-1),'2');
          FSMenuPrincipal.TypeAffichage.Caption:='Affichage Commandé';
     end
     else
     begin
          FSMenuPrincipal.AfficheControleSoleDomiciliation.Visible:=false;
          FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Caption:='';
     end;

     if(ControlePieceAllDomiciliations(FSMenuPrincipal.TableauControleSoleDomiciliation,LastRow,true))then
     begin
          OKBiSysteme:=true;
          FSMenuPrincipal.AfficheControleSoleDomiciliation.Visible:=true;
          FSMenuPrincipal.TimerControleCouleur.Enabled:=true;
          FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Caption:='Nombre de notification: '+Completezerogauche(inttostr(FSMenuPrincipal.TableauControleSoleDomiciliation.RowCount-1),'2');
          FSMenuPrincipal.TypeAffichage.Caption:='Affichage Automatique';
     end;

     if(OKBiSysteme=true)then FSMenuPrincipal.BorderIcons:=[biMinimize,biMaximize];
end;

procedure TFSMenuPrincipal.AfficheTitreControleSoleDomiciliationClick(
  Sender: TObject);
begin
     FSMenuPrincipal.TimerControleCouleur.Enabled:=not FSMenuPrincipal.TimerControleCouleur.Enabled;
     FSMenuPrincipal.AfficheControleSoleDomiciliation.Color:=clBtnFace;
     FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Color:=clBtnFace;
     FSMenuPrincipal.TableauControleSoleDomiciliation.FixedColor:=clBtnFace;

end;

procedure TFSMenuPrincipal.GnrationGroupeTiers1Click(Sender: TObject);
begin
     FSGenerationGroupeTiers.AfficheVisibleListeGroupeTiers.Visible:=true;
     FSGenerationGroupeTiers.Width:=FSGenerationGroupeTiers.AfficheVisibleListeGroupeTiers.Left+
                                    FSGenerationGroupeTiers.AfficheVisibleListeGroupeTiers.Width+22;

     FSGenerationGroupeTiers.Show;
     FSGenerationGroupeTiers.EditFichierConcerne.Text:='FGroupeTiers';
     AffichageGroupeTiers(FSGenerationGroupeTiers.TableauGroupeTiers,FSGenerationGroupeTiers.EditFichierConcerne.Text);
     AffichageListeGroupeTiers(FSGenerationGroupeTiers.TableauListeGroupeTiers,FSGenerationGroupeTiers.TableauGroupeTiers.Cells[1,FSGenerationGroupeTiers.TableauGroupeTiers.Row]);
end;

{if(RAvis.CodeTiers=TableauPointeurData[l-1].Data1)then
begin
     OKTiers:=true;
     REditTiers:=TableauPointeurData[l-1].RowPointeur;
end
else l:=l+1;

setlength(TableauPointeurData,T);
TableauPointeurData[T-1].Data1:=RAvis.CodeTiers;
TableauPointeurData[T-1].RowPointeur:=T;}

procedure TFSMenuPrincipal.ComptabilitTransitoire1Click(Sender: TObject);
var   i:integer;
begin
     FSComptabiliteTransitoire.Show;
     FSComptabiliteTransitoire.EditDateImputation.Date:=date;
     FSComptabiliteTransitoire.EditNumEntite.SetFocus;
end;

procedure TFSMenuPrincipal.Barmedecomptabilisationdescodeparcompte1Click(
  Sender: TObject);
begin
     FSBaremeComptabilisationCodeParCompte.Show;
     AfficheListeBaremeCCPC(FSBaremeComptabilisationCodeParCompte.TableauBaremeComptabilisationCodeParCompte,'');
end;

procedure TFSMenuPrincipal.Paramtrestempsdalerte1Click(Sender: TObject);
begin
     if not AccesPrivilegies('FS Paramètres avancés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSParametresAvances.Show;
     FSParametresAvances.PageTempsAlertesAvantAction.Show;
     FSParametresAvances.EditNomPageShow.Text:='PageTempsAlertesAvantAction';

     FSParametresAvances.PagePrincipale.Enabled:=false;
     FSParametresAvances.EditCodeActivation.Text:='';
     FSParametresAvances.EditCodeActivation.SetFocus;
end;

procedure TFSMenuPrincipal.Paramtrescrationdestockparstructures1Click(
  Sender: TObject);
begin
     if not AccesPrivilegies('FS Paramètres avancés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSParametresAvances.Show;
     FSParametresAvances.PageBaseDonneesStock.Show;
     FSParametresAvances.EditNomPageShow.Text:='PageBaseDonneesStock';

     FSParametresAvances.PagePrincipale.Enabled:=false;
     FSParametresAvances.EditCodeActivation.Text:='';
     FSParametresAvances.EditCodeActivation.SetFocus;
end;

procedure TFSMenuPrincipal.ListeValeurFormuleparArticle1Click(
  Sender: TObject);
begin
     FSListeValeurs.Show;
     FSListeValeurs.EditModeAffichage.Text:='';
     ProcListeValeursFormuleArticle(FSListeValeurs.TableauListeValeurs,'','');
end;

procedure TFSMenuPrincipal.Dcryptagecodesystme1Click(Sender: TObject);
begin
     FSDecryptage.Show;
     FSDecryptage.EditCodeCrypter.Text:='';
     FSDecryptage.EditCodeDecrypter.Text:='';

     FSDecryptage.EditCodeCrypter.SetFocus;
end;

procedure TFSMenuPrincipal.ParamtresTitreDataTiers1Click(Sender: TObject);
begin
     if not AccesPrivilegies('FS Paramètres avancés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSParametresAvances.Show;
     FSParametresAvances.PageTitreDataTiers.Show;
     FSParametresAvances.EditNomPageShow.Text:='PageTitreDataTiers';

     FSParametresAvances.PagePrincipale.Enabled:=false;
     FSParametresAvances.EditCodeActivation.Text:='';
     FSParametresAvances.EditCodeActivation.SetFocus;

     ListeTitreDataTiers(FSParametresAvances.TableauTitreDataTiers,FSParametresAvances.EditTiersTypeProces.Text,FSParametresAvances.EditTiersFichierConserne.Text);
     FSParametresAvances.RBEtatCopier.Checked:=false
end;

procedure TFSMenuPrincipal.FicheMouvement1Click(Sender: TObject);
var  i,NumAnneeSyst,NumAnneeAct:integer;
     OKTypeMouvement,OKMouvement:boolean;
     DateMouvementDebut,DateMouvementFin,OKExecution,TypeProces,FichierConserne,Adresse,
     TypeProcesLM,FichierConcerneLM,AdresseLM,TypeProcesReseauxLM,NomDossierPartageReseauxOutLM,PositionTypeMouvement,PositionMouvement,DateLastListeMouvement,AdresseFichierTexte,TexteFicheSaisie:string;
     FichierTexte:TextFile;
begin
     TexteFicheSaisie:='Fiche de Saisie Commerciale';
  
     if(FSMenuPrincipal.EditCodeUtilisateur.Text<>'')then
     begin
          RUtilisateurCopie:=ChercherUtilisateur(FSMenuPrincipal.EditCodeUtilisateur.Text);
          TexteFicheSaisie:=TexteFicheSaisie+'.Utilisateur: '+RUtilisateurCopie.Nom+' '+RUtilisateurCopie.Prenom;
     end;

     TitreFicheSaisie(FSFicheSaisie,TexteFicheSaisie);

     FSFicheSaisie.Show;
     FormeAvantPlan(FSMenuPrincipal,FSFicheSaisie,FSMenuPrincipal.RBFormeAvantPlan.Checked);
     ActiverNomForm(1,(Sender as TComponent).Name);
     FSFicheSaisie.PageOperationFicheSaisie.Show;
     {FSFicheSaisie.Left:=FSMenuPrincipal.Left;
     FSFicheSaisie.Top:=FSMenuPrincipal.Top;
     FSFicheSaisie.Height:=FSMenuPrincipal.Height;
     FSFicheSaisie.Width:=FSMenuPrincipal.Width;}

////////////////////////////////////////////////////////////////////////////////  PositionAffichage
     FSFicheSaisie.AfficheDetailMouvement.Left:=FSFicheSaisie.CadreAffichageMouvement.Left;
     FSFicheSaisie.AfficheDetailMouvement.Top:=FSFicheSaisie.CadreAffichageMouvement.Top;

     FSFicheSaisie.AfficheTableauNewNumListeMouvement.Left:=FSFicheSaisie.CadreAffichageMouvement.Left;
     FSFicheSaisie.AfficheTableauNewNumListeMouvement.Top:=FSFicheSaisie.CadreAffichageMouvement.Top;

     FSFicheSaisie.AfficherChercherNumeroListeMouvement.Left:=FSFicheSaisie.CadreAffichageMouvement.Left;
     FSFicheSaisie.AfficherChercherNumeroListeMouvement.Top:=FSFicheSaisie.CadreAffichageMouvement.Top;

     FSFicheSaisie.AffichChoisOperationAppartenance.Left:=FSFicheSaisie.CadreAffichageMouvement.Left;
     FSFicheSaisie.AffichChoisOperationAppartenance.Top:=FSFicheSaisie.CadreAffichageMouvement.Top;

     FSFicheSaisie.AfficheOptionCompteConcerne.Left:=FSFicheSaisie.CadreAffichageMouvement.Left+FSFicheSaisie.CadreAffichageMouvement.Width-FSFicheSaisie.AfficheOptionCompteConcerne.Width;
     FSFicheSaisie.AfficheOptionCompteConcerne.Top:=FSFicheSaisie.CadreAffichageMouvement.Top;

     FSFicheSaisie.AfficheTableauTiersConserne.Left:=FSFicheSaisie.AfficheDataDomiciliation.Left;
     FSFicheSaisie.AfficheTableauTiersConserne.Top:=FSFicheSaisie.AfficheDataDomiciliation.Top;

     FSFicheSaisie.AfficheListeAvis.Left:=FSFicheSaisie.AfficheDataDomiciliation.Left;
     FSFicheSaisie.AfficheListeAvis.Top:=FSFicheSaisie.AfficheDataDomiciliation.Top+FSFicheSaisie.AfficheDataDomiciliation.Height+7;

     PositionAffichagePanel(FSFicheSaisie.AfficheTableauTiersConserne,FSFicheSaisie.AfficherOperationDetailMouvement,'Midel','Midel','','');
     //FSFicheSaisie.AfficherOperationDetailMouvement.Left:=;
     //FSFicheSaisie.AfficherOperationDetailMouvement.Top:=;

     PositionAffichagePanel(FSFicheSaisie.AfficheTableauTiersConserne,FSFicheSaisie.AfficheNouveauTiers,'Midel','Midel','','');
     //FSFicheSaisie.AfficheNouveauTiers.Left:=;
     //FSFicheSaisie.AfficheNouveauTiers.Top:=;

     PositionAffichagePanel(FSFicheSaisie.AfficheTableauTiersConserne,FSFicheSaisie.AfficherOperationsListeMouvement,'Midel','Midel','','');
     //FSFicheSaisie.AfficherOperationsListeMouvement.Left:=;
     //FSFicheSaisie.AfficherOperationsListeMouvement.Top:=;

     PositionAffichagePanel(FSFicheSaisie.AfficheTableauTiersConserne,FSFicheSaisie.AfficheOperationMoyenTransport,'Midel','Midel','','');
     //FSFicheSaisie.AfficheOperationMoyenTransport.Left:=;
     //FSFicheSaisie.AfficheOperationMoyenTransport.Top:=;

     //PositionAffichagePanel(FSFicheSaisie.AfficheTableauTiersConserne,FSFicheSaisie.,'Midel','Midel','','');
     //PositionAffichagePanel(FSFicheSaisie.AfficheTableauTiersConserne,FSFicheSaisie.,'Midel','Midel','','');

     FSFicheSaisie.AfficheOptionImpression.Left:=FSFicheSaisie.AfficheTableauTiersConserne.Left;
     FSFicheSaisie.AfficheOptionImpression.Top:=FSFicheSaisie.AfficheTableauTiersConserne.Top;

////////////////////////////////////////////////////////////////////////////////
     

     if(FSFicheSaisie.RBReaffichageListeMouvementDejasEffectue.Checked=false)then FSFicheSaisie.RBActiverReaffichageListeMouvement.Checked:=true;

     if(FSFicheSaisie.RBActiverReaffichageListeMouvement.Checked=true)then
     begin
           ChargerOptionsFicheSaisie(FSFicheSaisie.EditCodeMouvement.Text);
     end;
     
     if(FSFicheSaisie.RBActiverReaffichageListeMouvement.Checked=true)then
     begin
           FSFicheSaisie.AfficheParMois.Visible:=FSFicheSaisie.RBListeDetailMouvementParMois.Checked;
           FSFicheSaisie.EditChercheDateDetailMouvement.Visible:=FSFicheSaisie.RBListeDetailMouvementParDate.Checked;

           FSFicheSaisie.EditDateDetailMouvement.Date:=date;
           FSFicheSaisie.EditMois.ItemIndex:=strtointeger(MidelLaters(datetostr(Date),4,5))-1;

           FSFicheSaisie.EditAnnee.Items.Text:='';
           NumAnneeSyst:=strtointeger(ExerciceAnnee);
           NumAnneeAct:=strtointeger(MidelLaters(datetostr(Date),7,10));
           i:=0;
           while(NumAnneeSyst<=NumAnneeAct)do
           begin
                FSFicheSaisie.EditAnnee.Items.Add(inttostr(NumAnneeSyst));
                NumAnneeSyst:=NumAnneeSyst+1;
                i:=i+1;
           end;
           FSFicheSaisie.EditAnnee.ItemIndex:=i-1;

           DetailPeriodeListeMouvement(FSFicheSaisie.RBListeDetailMouvementParDate,FSFicheSaisie.RBListeDetailMouvementParMois,DateMouvementDebut,DateMouvementFin);
           OKExecution:='';

           PositionTypeMouvement:='';
           PositionMouvement:='';

           TypeProcesLM:='Business';   FichierConcerneLM:='FListeMouvement';
           if not(FunctionAdresseProces(TypeProcesLM,FichierConcerneLM,'',AdresseLM,TypeProcesReseauxLM,NomDossierPartageReseauxOutLM))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerneLM+' recherché !');
           end;

           ChListeMouvement:=AdresseLM;
           assignfile(FListeMouvement,ChListeMouvement);
           if FileExists(ChListeMouvement)then
           begin
                try
                Reset(FListeMouvement);

                Seek(FListeMouvement,0);
                while not eof(FListeMouvement)do
                begin
                     read(FListeMouvement,RListeMouvement);
                     PositionTypeMouvement:=inttostr(RListeMouvement.PositionTypeMouvement);
                     PositionMouvement:=inttostr(RListeMouvement.PositionMouvement);
                     DateLastListeMouvement:=RListeMouvement.DateMouvement;
                end;
                finally
                CloseFile(FListeMouvement);
                end;
           end;

           if(PositionTypeMouvement<>'')and(PositionMouvement<>'')then
           begin
                FSFicheSaisie.EditAnnee.Text:=MidelLaters(DateLastListeMouvement,7,10);
                FSFicheSaisie.EditMois.ItemIndex:=strtointeger(MidelLaters(DateLastListeMouvement,4,5))-1;
                ProcActionMouvement(PositionTypeMouvement,PositionMouvement,true);
           end
           else
           begin
                 TypeProces:='Business';   FichierConserne:='FTypeMouvement';
                 if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                 begin
                      AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
                 end;

                 ChTypeMouvement:=Adresse;
                 assignfile(FTypeMouvement,ChTypeMouvement);
                 if FileExists(ChTypeMouvement)then
                 begin
                      try
                      Reset(FTypeMouvement);
                      Seek(FTypeMouvement,0);
                      OKTypeMouvement:=false;
                      if not eof(FTypeMouvement)then
                      begin
                           Read(FTypeMouvement,RTypeMouvement);
                           OKTypeMouvement:=true;
                      end;
                      finally
                      CloseFile(FTypeMouvement);
                      end;
                 end;

                 if(OKTypeMouvement=true)then
                 begin
                      TypeProces:='Business';   FichierConserne:='FMouvement';
                      if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                      begin
                           AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
                      end;

                      ChMouvement:=Adresse;
                      assignfile(FMouvement,ChMouvement);
                      if FileExists(ChMouvement)then
                      begin
                           try
                           Reset(FMouvement);
                           Seek(FMouvement,0);
                           OKMouvement:=false;
                           while(not eof(FMouvement)and(OKMouvement=false))do
                           begin
                                Read(FMouvement,RMouvement);
                                if(RMouvement.PositionTypeMouvement=RTypeMouvement.PositionTypeMouvement)then
                                begin
                                     OKMouvement:=true;
                                     PositionTypeMouvement:=inttostr(RMouvement.PositionTypeMouvement);
                                     PositionMouvement:=inttostr(RMouvement.PositionMouvement);
                                end;
                           end;
                           finally
                           CloseFile(FMouvement);
                           end;
                      end;

                      ProcActionMouvement(PositionTypeMouvement,PositionMouvement,true);
                 end;
           end;

            TypeProces:='Business';   FichierConserne:='FDomiciliation';
            if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
            begin
                 AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
            end;

            ChDomiciliation:=Adresse;
            assignfile(FDomiciliation,ChDomiciliation);
            if FileExists(ChDomiciliation)then
            begin
                 try
                 Reset(FDomiciliation);
                 Seek(FDomiciliation,0);
                 FSFicheSaisie.EditDomiciliation.Items.Text:='';
                 while not eof(FDomiciliation)do
                 begin
                      read(FDomiciliation,RDomiciliation);
                      FSFicheSaisie.EditDomiciliation.Items.Add(RDomiciliation.DesignationDomiciliation);
                 end;
                 finally
                 CloseFile(FDomiciliation);
                 end;
            end;

            FSFicheSaisie.EditDomiciliation.ItemIndex:=-1;

            //AutoAfficheListeMouvements(false,'');
     end
     else
     begin
          if(FSFicheSaisie.RBChercheArticleParCodeBarre.Checked=true)or(FSFicheSaisie.RBChercheArticleParPontBascule.Checked=true)
          then
          begin
               FSFicheSaisie.TableauDetaiMouvement.Col:=1;
               FSFicheSaisie.TableauDetaiMouvement.SetFocus;
          end
          else FSFicheSaisie.TableauListeMouvement.SetFocus;
     end;

     if(FSFicheSaisie.RBReaffichageListeMouvementDejasEffectue.Checked=true)then FSFicheSaisie.RBActiverReaffichageListeMouvement.Checked:=false;

     //ProcAfficheListeMouvement(FSFicheSaisie.TableauListeMouvement,FSFicheSaisie.EditPositionTypeMouvement.Text,FSFicheSaisie.EditPositionMouvement.Text,FSFicheSaisie.EditPositionListeMouvementBegin.Text,FSFicheSaisie.EditPositionListeMouvementEnd.Text,DateMouvementDebut,DateMouvementFin,'','','','','',OKExecution,'','',false,false);


     if(FSFicheSaisie.EditCodeMouvement.Text<>'')then
     begin
           if(FindDataOptionsFicheSaisie(FSFicheSaisie.EditCodeMouvement.Text,FSFicheSaisie.RBChercheArticleParCodeBarre.Name)='Oui')then
           begin
                //FSFicheSaisie.BitNouveauMouvementClick(FSFicheSaisie.BitNouveauMouvement);
                FSFicheSaisie.BitEchapClick(FSFicheSaisie.BitEchap);
           end;

           if(FindDataOptionsFicheSaisie(FSFicheSaisie.EditCodeMouvement.Text,FSFicheSaisie.RBChercheArticleParPontBascule.Name)='Oui')then
           begin
                 FSFicheSaisie.AfficheIndiceListeMouvement.Visible:=true;
                 FSFicheSaisie.EditOrdreListeMouvementPontBascule.Text:='';
                 FSFicheSaisie.EditMatriculePontBascule.Text:='';
                 FSFicheSaisie.EditIndiceFinalPontBascule.Text:='';
                 FSFicheSaisie.EditIndiceInialPontBascule.Text:='';
                 FSFicheSaisie.EditIndiceCalculePontBascule.Text:='';
                 FSFicheSaisie.EditDateIndiceInitial.Text:='';
                 FSFicheSaisie.EditHeureIndiceInitial.Text:='';

                 FSFicheSaisie.EditCodeResponsablePrelevement.Text:='';
                 FSFicheSaisie.EditNomResponsablePrelevement.Text:='';
                 FSFicheSaisie.EditPrenomResponsablePrelevement.Text:='';
                 FSFicheSaisie.EditNumeroPont.Text:='1';
                 FSFicheSaisie.EditTypeVehiculePrelevement.Text:='';
                 FSFicheSaisie.EditTonageVehiculePrelevement.Text:='';

                 FSFicheSaisie.EditMatriculePontBascule.SetFocus;
           end;
     end
     else
     begin
           if(FindAllDataOptionsFicheSaisie(FSFicheSaisie.RBChercheArticleParCodeBarre.Name,'Oui')=true)then
           begin
                //FSFicheSaisie.BitNouveauMouvementClick(FSFicheSaisie.BitNouveauMouvement);
                FSFicheSaisie.BitEchapClick(FSFicheSaisie.BitEchap);
           end;

           if(FindAllDataOptionsFicheSaisie(FSFicheSaisie.RBChercheArticleParPontBascule.Name,'Oui')=true)then
           begin
                 FSFicheSaisie.AfficheIndiceListeMouvement.Visible:=true;
                 FSFicheSaisie.EditOrdreListeMouvementPontBascule.Text:='';
                 FSFicheSaisie.EditMatriculePontBascule.Text:='';
                 FSFicheSaisie.EditIndiceFinalPontBascule.Text:='';
                 FSFicheSaisie.EditIndiceInialPontBascule.Text:='';
                 FSFicheSaisie.EditIndiceCalculePontBascule.Text:='';
                 FSFicheSaisie.EditDateIndiceInitial.Text:='';
                 FSFicheSaisie.EditHeureIndiceInitial.Text:='';

                 FSFicheSaisie.EditCodeResponsablePrelevement.Text:='';
                 FSFicheSaisie.EditNomResponsablePrelevement.Text:='';
                 FSFicheSaisie.EditPrenomResponsablePrelevement.Text:='';
                 FSFicheSaisie.EditNumeroPont.Text:='1';
                 FSFicheSaisie.EditTypeVehiculePrelevement.Text:='';
                 FSFicheSaisie.EditTonageVehiculePrelevement.Text:='';

                 FSFicheSaisie.EditMatriculePontBascule.SetFocus;
           end;
     end;
end;

procedure TFSMenuPrincipal.FichePrlvement1Click(Sender: TObject);
begin
     if not AccesPrivilegies('FS Prélèvement',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     NowPrelevement;
end;

procedure TFSMenuPrincipal.ransfertmagntiquededonnscommerciales1Click(
  Sender: TObject);
var  i,C:integer;     DateTraitement,NotCol,DateMaxPrelevement,TypeProcesPrelevement,FichierConcernePrelevement,AdressePrelevement:string;
begin
     FSTransfertMagnetiqueDonnesCommerciales.Show;

     FSTransfertMagnetiqueDonnesCommerciales.EditExercice.Items.Text:='';
     FSTransfertMagnetiqueDonnesCommerciales.EditExercice.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-3));
     FSTransfertMagnetiqueDonnesCommerciales.EditExercice.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-2));
     FSTransfertMagnetiqueDonnesCommerciales.EditExercice.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-1));
     FSTransfertMagnetiqueDonnesCommerciales.EditExercice.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-0));
     FSTransfertMagnetiqueDonnesCommerciales.EditExercice.ItemIndex:=3;

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
          Seek(FPrelevement,0);
          DateMaxPrelevement:='01/01/2000';
          while not eof(FPrelevement)do
          begin
               read(FPrelevement,RPrelevement);
               if(strtodate(DateMaxPrelevement)<strtodate(RPrelevement.DatePrelevement))then DateMaxPrelevement:=RPrelevement.DatePrelevement;
          end;
          finally
          CloseFile(FPrelevement);
          end;
     end;

     if(DateMaxPrelevement='01/01/2000')then DateMaxPrelevement:=datetostr(Date);
     FSTransfertMagnetiqueDonnesCommerciales.EditMois.ItemIndex:=(strtointeger(MidelLaters(DateMaxPrelevement,4,5))-1);

     if(FSTransfertMagnetiqueDonnesCommerciales.EditMois.Text='')then FSTransfertMagnetiqueDonnesCommerciales.EditMois.ItemIndex:=0;
     
     FSTransfertMagnetiqueDonnesCommerciales.EditDateDebut.Date:=strtodate('01/'+Completezerogauche(MidelLaters(FSTransfertMagnetiqueDonnesCommerciales.EditMois.Text,2,3),'2')+'/'+FSTransfertMagnetiqueDonnesCommerciales.EditExercice.Text);
     FSTransfertMagnetiqueDonnesCommerciales.EditDateFin.Date:=strtodate(Completezerogauche(inttostr(LastDay(datetostr(FSTransfertMagnetiqueDonnesCommerciales.EditDateDebut.Date))),'2')+'/'+Completezerogauche(MidelLaters(FSTransfertMagnetiqueDonnesCommerciales.EditMois.Text,2,3),'2')+'/'+FSTransfertMagnetiqueDonnesCommerciales.EditExercice.Text);

     ProcListeMouvement(FSTransfertMagnetiqueDonnesCommerciales.TableauMouvement,'','','?','');
     NotCol:='1;4;6-'+inttostr(FSTransfertMagnetiqueDonnesCommerciales.TableauMouvement.ColCount-2);
     for C:=1 to FSTransfertMagnetiqueDonnesCommerciales.TableauMouvement.ColCount-1 do if existenumintexte(inttostr(C),NotCol)then FSTransfertMagnetiqueDonnesCommerciales.TableauMouvement.ColWidths[C]:=0;
     AjusterColWidth(FSTransfertMagnetiqueDonnesCommerciales.TableauMouvement,'',NotCol);

     AfficherTransfertListeMagnetique(FSTransfertMagnetiqueDonnesCommerciales.TableauListeTransfertMagnetique,'','','','Transfert');
     FSTransfertMagnetiqueDonnesCommerciales.EditMois.ItemIndex:=(strtointeger(MidelLaters(FSTransfertMagnetiqueDonnesCommerciales.TableauListeTransfertMagnetique.Cells[5,FSTransfertMagnetiqueDonnesCommerciales.TableauListeTransfertMagnetique.Row],4,5))-1);
end;

procedure TFSMenuPrincipal.TimerControleStockLimiteTimer(Sender: TObject);
var RowOut:integer;
begin
     Application.ProcessMessages;

     FSMenuPrincipal.TimerControleStockLimite.Enabled:=false;
     FSMenuPrincipal.AffichControleStockLimite.Visible:=false;
     FSMenuPrincipal.TimerControleCouleurStockLimite.Enabled:=false;

     if(ControleStockLimiteProjet(false,false,RowOut)=true)then
     begin
          ControleTimerActivation(FSMenuPrincipal.TimerControleStockLimite,false);

          FSMenuPrincipal.AffichControleStockLimite.Visible:=true;
          FSMenuPrincipal.BitControleStockLimite.Caption:=inttostr(RowOut)+' cas stock limite !';
          FSMenuPrincipal.TimerControleCouleurStockLimite.Enabled:=true;

          ControleTimerActivation(FSMenuPrincipal.TimerControleStockLimite,true);
     end;
end;

procedure TFSMenuPrincipal.BitControleStockLimiteClick(Sender: TObject);
var RowOut:integer;
begin
     ControleStockLimiteProjet(true,false,RowOut);
     FSMenuPrincipal.AffichControleStockLimite.Visible:=false;
     FSMenuPrincipal.TimerControleCouleurStockLimite.Enabled:=false;
end;

procedure TFSMenuPrincipal.TimerControleCouleurStockLimiteTimer(Sender: TObject);
begin
     Application.ProcessMessages;
EXIT;     
     if(FSMenuPrincipal.AffichControleStockLimite.Visible=true)then
     begin
          if(FSMenuPrincipal.AffichControleStockLimite.Color=$00E4E4E4)then
          begin
               FSMenuPrincipal.AffichControleStockLimite.Color:=clWhite;
               FSMenuPrincipal.AffichControleStockLimite.Font.Color:=clRed;
          end
          else
          begin
               FSMenuPrincipal.AffichControleStockLimite.Color:=$00E4E4E4;
               FSMenuPrincipal.AffichControleStockLimite.Font.Color:=clNavy;
          end;

          if(FSMenuPrincipal.AfficheControleSoleDomiciliation.Visible=true)and(FSMenuPrincipal.AfficheControleSoleDomiciliation.Height=56)
          then FSMenuPrincipal.AffichControleStockLimite.Top:=FSMenuPrincipal.AfficheControleSoleDomiciliation.Top
                                                              +FSMenuPrincipal.AfficheControleSoleDomiciliation.Height+2
          else FSMenuPrincipal.AffichControleStockLimite.Top:=8;
     end;
end;

procedure TFSMenuPrincipal.BitBtn14Click(Sender: TObject);
begin
     FSMenuPrincipal.AffichControleStockLimite.Visible:=false;
     FSMenuPrincipal.TimerControleCouleurStockLimite.Enabled:=false;
end;

procedure TFSMenuPrincipal.ParamtresSoldeDomiciliation1Click(
  Sender: TObject);
begin
     if not AccesPrivilegies('FS Paramètres avancés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSParametresAvances.Show;
     FSParametresAvances.PageParametreDomiciliation.Show;
     FSParametresAvances.EditNomPageShow.Text:='PageParametreDomiciliation';

     FSParametresAvances.RBOpererModification.Checked:=false;

     FSParametresAvances.PagePrincipale.Enabled:=false;
     FSParametresAvances.EditCodeActivation.Text:='';
     FSParametresAvances.EditCodeActivation.SetFocus;

     if(FunctionSoldeDomiciliationRisqueZero=true)
     then FSParametresAvances.RBSoldeDomiciliationRisqueZero.Checked:=true
     else FSParametresAvances.RBSoldeDomiciliationComptable.Checked:=true;

     if(FunctionControleSoldeDomiciliationDemarrage=true)
     then FSParametresAvances.RBActiverControleSoldeDomiciliationDemarrage.Checked:=true
     else FSParametresAvances.RBDesactiverControleSoldeDomiciliationDemarrage.Checked:=true;

     if(FunctionAutoriserDebitCreditSansSolde=true)
     then FSParametresAvances.RBAutoriserDebitCreditSansSolde.Checked:=true
     else FSParametresAvances.RBNePasAutoriserDebitCreditSansSolde.Checked:=true;
end;

procedure TFSMenuPrincipal.ParamtresConnectivitBasededonnes1Click(
  Sender: TObject);
begin
     if not AccesPrivilegies('FS Paramètres avancés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSParametresAvances.Show;
     FSParametresAvances.PageModeConnectiviteBaseData.Show;
     FSParametresAvances.EditNomPageShow.Text:='PageModeConnectiviteBaseData';

     FSParametresAvances.PagePrincipale.Enabled:=false;
     FSParametresAvances.EditCodeActivation.Text:='';
     FSParametresAvances.EditCodeActivation.SetFocus;
end;

procedure TFSMenuPrincipal.BitBtn16Click(Sender: TObject);
begin
     FSConnectiviteBaseDataSelection.Show;
     FSConnectiviteBaseDataSelection.AfficheBaseValide.Enabled:=false;
     FSConnectiviteBaseDataSelection.AfficheBaseValide.Color:=clRed;
     FSConnectiviteBaseDataSelection.AfficheDataInstall.Visible:=false;

     OpenFParc(RParc);
     FSConnectiviteBaseDataSelection.LabelFichierSauv.Caption:=RParc.Parcours+'.';

     FSMenuPrincipal.AfficheChoisConnectivite.Visible:=false;
end;

procedure TFSMenuPrincipal.BitBtn15Click(Sender: TObject);
var   i,RowSelect:integer; Adresse:string;
begin
     if FileExists('C:\WinBus.File')then
           begin
                assignfile(FRegistreVolatile,'C:\WinBus.File');
                try
                reset(FRegistreVolatile);
                Seek(FRegistreVolatile,0);
                Read(FRegistreVolatile,RRegistreVolatile);
                finally
                CloseFile(FRegistreVolatile);
                end;
                FSInstalle.LabelNomEnregistre2.Caption:='Projet ouvert:  '+RRegistreVolatile.Repertoire;
           end;

           if FileExists('C:\WinBuss.dll')then
           begin
                assignfile(FRegistre,'C:\WinBuss.dll');
                try
                reset(FRegistre);
                Seek(FRegistre,0);
                i:=0;
                RowSelect:=0;
                while not eof(FRegistre) do
                begin
                     Read(FRegistre,RRegistre);
                     FSInstalle.TableauRegistres.Rows[i].Text:=inttostr(i);
                     FSInstalle.TableauRegistres.Cells[1,i]:=RRegistre.Repertoire;
                     FSInstalle.TableauRegistres.Cells[2,i]:=RRegistre.Adresse;
                     FSInstalle.TableauRegistres.Cells[3,i]:=RRegistre.Exercice;
                     if(RRegistre.Repertoire=RRegistreVolatile.Repertoire)then RowSelect:=i;
                     i:=i+1;
                end;
                finally
                CloseFile(FRegistre);
                end;
                FSInstalle.TableauRegistres.RowCount:=i;
                FSInstalle.TableauRegistres.ColWidths[2]:=0;
                FSInstalle.TableauRegistres.Row:=RowSelect;
           end;

           FSInstalle.EditExercice.Text:=FSInstalle.TableauRegistres.Cells[3,FSInstalle.TableauRegistres.Row];

      FSInstalle.show;
      FSInstalle.PanelClef.Visible:=true;
      FSInstalle.EditClef.Text:='';
      OpenFParc(RParc);
      FSInstalle.LabelFichierSauv.Caption:=RParc.Parcours+'.';
      FSInstalle.LabelText1.Caption:=RParc.Text1;
      FSInstalle.LabelText2.Caption:=RParc.Text2;
      FSInstalle.LabelText3.Caption:=RParc.Text3;
      FSInstalle.LabelText4.Caption:=RParc.Text4;
      FSInstalle.LabelText5.Caption:=RParc.Text5;
      FSInstalle.LabelText6.Caption:=RParc.Text6;
      FSInstalle.LabelText7.Caption:=RParc.Text7;
      FSInstalle.LabelText8.Caption:=RParc.Text8;
      FSInstalle.LabelText9.Caption:=RParc.Text9;
      FSInstalle.LabelText10.Caption:=RParc.Text10;

      if(RParc.NomLogo<>'')then
      begin
           Adresse:=RParc.Parcours+'\'+Entreprise+RParc.NomLogo;
           if FileExists(Adresse)then
           begin
                FSInstalle.LogoAffiche.Picture.LoadFromFile(Adresse);
           end;
      end;

      if(RParc.NomLabel<>'')then
      begin
           Adresse:=RParc.Parcours+'\'+Entreprise+RParc.NomLabel;
           if FileExists(Adresse)then
           begin
                FSInstalle.LabelISOAffiche.Picture.LoadFromFile(Adresse);
           end;
      end;

      FSInstalle.TableauRegistres.Height:=0;
      FSInstalle.BitInsertEntite.Visible:=false;
      FSInstalle.EditCodeAccer.SetFocus;

      FSMenuPrincipal.AfficheChoisConnectivite.Visible:=false;
end;

procedure TFSMenuPrincipal.GnrateurdAdressedesdossierspartags1Click(
  Sender: TObject);
begin
//if not AccesPrivilegies('FS Générateur Dossier Partagés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC')then exit;

FSGenerateurBase.Show;
FSGenerateurBase.PageGenerateurBaseAvis.Show;
FSGenerateurBase.PageGenerateurAdresseDossierPartageReseaux.Show;

ListeAdresseDossierPartageReseaux(FSGenerateurBase.TableauAdresseDossierPartageReseaux,false,false,True);

end;

procedure TFSMenuPrincipal.BitOKAfficheRapportClick(Sender: TObject);
begin
     FSMenuPrincipal.AfficheRapport.Visible:=false;
end;

procedure TFSMenuPrincipal.BitAnnulerAfficheAdresseDossierPartageReseauxClick(Sender: TObject);
begin
     FSMenuPrincipal.AfficheAdresseDossierPartageReseaux.Visible:=false;
end;

procedure TFSMenuPrincipal.Connectivitrseaux1Click(Sender: TObject);
var  R:integer;
begin
     FSMenuPrincipal.AfficheAdresseDossierPartageReseaux.Visible:=true;
     ListeAdresseDossierPartageReseaux(FSMenuPrincipal.TableauAdresseDossierPartageReseaux,true,false,True);
end;

Procedure IndiquerSessionOuverteAuxServeursReseaux(AdressePublicationChoisis:string);
var      AdresseReseauxLocal,AdresseReseaux,NomDossierPartageOut,EmlacementLocalOuReseauxOut,AdresseReseauxCible:string;
begin
     FSMenuPrincipal.EditRapport.Lines.Add('Enregistrement Local Session ouverte pour les clients du réseaux');

if FileExists('C:\WinBus.File')then
begin
     assignfile(FRegistre,'C:\WinBus.File');
     try
     reset(FRegistre);
     Read(FRegistre,RRegistre);
     finally
     CloseFile(FRegistre);
     end;

     if(AdressePublicationChoisis<>'')
     then AdresseReseauxLocal:=AdressePublicationChoisis
     else AdresseReseauxLocal:=ProcAdresseDossierPartageReseaux('','Local',NomDossierPartageOut,EmlacementLocalOuReseauxOut);

     if(DirectoryExists(AdresseReseauxLocal))then
     begin
          AdresseReseauxLocal:=AdresseReseauxLocal+'\WinBus'+DataIdentificateurReseaux+' '+NomDossierPartageOut+'.File';
          assignfile(FRegistre,AdresseReseauxLocal);
          try
          if FileExists(AdresseReseauxLocal)then
          Reset(FRegistre)
          else Rewrite(FRegistre); //Création nouveau fichier
          Seek(FRegistre,0);
          Truncate(FRegistre);
          write(FRegistre,RRegistre);
          finally
          CloseFile(FRegistre);
          end;

          FSMenuPrincipal.EditRapport.Lines.Add('');
          FSMenuPrincipal.EditRapport.Lines.Add('Enregistrement '+'WinBus'+' '+NomDossierPartageOut+' efféctué avec succés ! {'+inttostr(1)+' Enregistrements} "Source: '+'C:\WinBus.File'+'"');
          FSMenuPrincipal.EditRapport.Lines.Add('Information:');
          FSMenuPrincipal.EditRapport.Lines.Add('Entité: '+RRegistre.Repertoire);
          FSMenuPrincipal.EditRapport.Lines.Add('Exercice: '+RRegistre.Exercice);


          OpenFParc(RParc);
          ChAdresseProces:=RParc.Parcours+'\'+Exercice+'FAdresseProces';
          assignfile(FAdresseProces,ChAdresseProces);
          if FileExists(ChAdresseProces)then
          begin
                try
                Reset(FAdresseProces);
                Seek(FAdresseProces,0);
                while not eof(FAdresseProces)do
                begin
                     read(FAdresseProces,RAdresseProces);

                     if(RAdresseProces.TypeProces='Réseaux')then
                     begin
                          if(AdressePublicationChoisis<>'')
                          then AdresseReseaux:=AdressePublicationChoisis
                          else AdresseReseaux:=RAdresseProces.AdresseProces;

                           if(ExisteDossierPartagerReseaux(AdresseReseaux,true,false)=true)then
                           begin
                                 AdresseReseauxCible:=AdresseReseaux+'\WinBus'+DataIdentificateurReseaux+' '+NomDossierPartageOut+'.File';

                                 if(AdresseReseauxCible<>'')then
                                 begin
                                      assignfile(FRegistre,AdresseReseauxCible);
                                      try
                                      if FileExists(AdresseReseauxCible)then
                                      Reset(FRegistre)
                                      else Rewrite(FRegistre); //Création nouveau fichier
                                      Seek(FRegistre,0);
                                      Truncate(FRegistre);
                                      write(FRegistre,RRegistre);
                                      finally
                                      closefile(FRegistre);
                                      end;

                                      FSMenuPrincipal.EditRapport.Lines.Add('');
                                      FSMenuPrincipal.EditRapport.Lines.Add('Enregistrement '+'WinBus'+' '+RAdresseProces.Repertoire+' efféctué avec succés ! {'+inttostr(1)+' Enregistrements} "Source: '+ExtractFileDir(ExtractFileDir(AdresseReseauxCible))+'"');
                                      FSMenuPrincipal.EditRapport.Lines.Add('Information:');
                                      FSMenuPrincipal.EditRapport.Lines.Add('Entité: '+RRegistre.Repertoire);
                                      FSMenuPrincipal.EditRapport.Lines.Add('Exercice: '+RRegistre.Exercice);
                                 end
                                 else
                                 if(AdresseReseauxLocal=AdresseReseauxCible)then
                                 begin
                                      FSMenuPrincipal.EditRapport.Lines.Add('Enregistrement '+'WinBus'+' '+RAdresseProces.Repertoire+' Aucune source !');
                                 end
                                 else
                                 if(AdresseReseauxCible='')then
                                 begin
                                      showmessage('Aucun emplacement réseaux planifié !');
                                 end;
                           end
                           else FSMenuPrincipal.EditRapport.Lines.Add('Enregistrement '+'WinBus'+' '+RAdresseProces.Repertoire+' Aucune source !');;
                          ////////////////////////////////////////////////////////////
                     end;
               end;
               finally
               CloseFile(FAdresseProces);
               end;
          end;
     end;
end;
FSMenuPrincipal.EditRapport.Lines.Add('');
end;

Procedure IndiquerSessionOuverteAuxMembresReseaux(AdressePublicationChoisis:string);
var   AdresseReseauxLocal,AdresseReseaux,NomDossierPartageOut,EmlacementLocalOuReseauxOut,AdresseReseauxCible:string;
begin
     FSMenuPrincipal.EditRapport.Lines.Add('Enregistrement Local Session ouverte pour les membres du réseaux');

     if(AdressePublicationChoisis<>'')
     then AdresseReseauxLocal:=AdressePublicationChoisis
     else AdresseReseauxLocal:=ProcAdresseDossierPartageReseaux('','Local',NomDossierPartageOut,EmlacementLocalOuReseauxOut);
     
if FileExists('C:\WinBus.File')then
begin
     assignfile(FRegistre,'C:\WinBus.File');
     try
     reset(FRegistre);
     Seek(FRegistre,0);
     Read(FRegistre,RRegistreVolatile);
     finally
     CloseFile(FRegistre);
     end;

     if(DirectoryExists(AdresseReseauxLocal))then
     begin
          AdresseReseauxLocal:=AdresseReseauxLocal+'\WinBus'+DataIdentificateurReseaux+' '+NomDossierPartageOut+'.File';
          assignfile(FRegistre,AdresseReseauxLocal);
          try
          if FileExists(AdresseReseauxLocal)then
          Reset(FRegistre)
          else Rewrite(FRegistre); //Création nouveau fichier
          Seek(FRegistre,0);
          Truncate(FRegistre);
          write(FRegistre,RRegistreVolatile);
          finally
          CloseFile(FRegistre);
          end;
                      
          FSMenuPrincipal.EditRapport.Lines.Add('');
          FSMenuPrincipal.EditRapport.Lines.Add('Enregistrement '+'WinBus'+' '+NomDossierPartageOut+' efféctué avec succés ! {'+inttostr(1)+' Enregistrements} "Source: '+'C:\WinBus.File'+'" ==> '+AdresseReseauxLocal);
          FSMenuPrincipal.EditRapport.Lines.Add('Information:');
          FSMenuPrincipal.EditRapport.Lines.Add('Entité: '+RRegistreVolatile.Repertoire);
          FSMenuPrincipal.EditRapport.Lines.Add('Exercice: '+RRegistreVolatile.Exercice);

          OpenFParc(RParc);
          ChAdresseDossierPartageReseaux:=RParc.Parcours+'\'+Exercice+'FAdresseDossierPartageReseaux';
          assignfile(FAdresseDossierPartageReseaux,ChAdresseDossierPartageReseaux);
          if FileExists(ChAdresseDossierPartageReseaux)then
          begin
                try
                Reset(FAdresseDossierPartageReseaux);
                Seek(FAdresseDossierPartageReseaux,0);
                while not eof(FAdresseDossierPartageReseaux)do
                begin
                     read(FAdresseDossierPartageReseaux,RAdresseDossierPartageReseaux);

                     if(RAdresseDossierPartageReseaux.EmlacementLocalOuReseaux='Réseaux')then
                     begin
                          if(AdressePublicationChoisis<>'')
                          then AdresseReseaux:=AdressePublicationChoisis
                          else AdresseReseaux:=RAdresseDossierPartageReseaux.AdresseDossierPartageReseaux;

                           if(DirectoryExists(AdresseReseaux))then
                           begin
                                 AdresseReseauxCible:=AdresseReseaux+'\WinBus'+DataIdentificateurReseaux+' '+NomDossierPartageOut+'.File';

                                 if(AdresseReseauxCible<>'')then
                                 begin
                                      assignfile(FRegistre,AdresseReseauxCible);
                                      try
                                      if FileExists(AdresseReseauxCible)then
                                      Reset(FRegistre)
                                      else Rewrite(FRegistre); //Création nouveau fichier
                                      Seek(FRegistre,0);
                                      Truncate(FRegistre);
                                      write(FRegistre,RRegistreVolatile);
                                      finally
                                      CloseFile(FRegistre);
                                      end;

                                      FSMenuPrincipal.EditRapport.Lines.Add('');
                                      FSMenuPrincipal.EditRapport.Lines.Add('Enregistrement '+AdresseReseauxCible+' efféctué avec succés ! {'+inttostr(1)+' Enregistrements} "Source: '+ExtractFileDir(ExtractFileDir(AdresseReseauxCible))+'" ==> '+AdresseReseauxCible);
                                      FSMenuPrincipal.EditRapport.Lines.Add('Information:');
                                      FSMenuPrincipal.EditRapport.Lines.Add('Entité: '+RRegistreVolatile.Repertoire);
                                      FSMenuPrincipal.EditRapport.Lines.Add('Exercice: '+RRegistreVolatile.Exercice);
                                 end
                                 else
                                 if(AdresseReseauxLocal=AdresseReseauxCible)then
                                 begin
                                      FSMenuPrincipal.EditRapport.Lines.Add('Enregistrement '+'WinBus'+' '+RAdresseDossierPartageReseaux.NomPosteReseaux+' Aucune source !');
                                 end
                                 else
                                 if(AdresseReseauxCible='')then
                                 begin
                                      showmessage('Aucun emplacement réseaux planifié !');
                                 end;
                           end
                           else FSMenuPrincipal.EditRapport.Lines.Add('Enregistrement '+'WinBus'+' '+RAdresseDossierPartageReseaux.NomPosteReseaux+' Aucune source !');;
                          ////////////////////////////////////////////////////////////
                     end;
                end;
                finally
                CloseFile(FAdresseDossierPartageReseaux);
                end;
          end;
     end;
end;
FSMenuPrincipal.EditRapport.Lines.Add('');

//Fin  FAdresseDossierPartageReseaux

FSMenuPrincipal.EditRapport.Lines.Add('Fin.');
FSMenuPrincipal.EditRapport.Lines.Add('');
end;

Procedure ImporterSessionOuvertedesMembresReseaux;
var      AdresseReseauxLocal,AdresseReseauCible,AdresseReseaux,NomDossierPartageOut,EmlacementLocalOuReseauxOut,AdresseReseauxSource:string;
begin
     FSMenuPrincipal.EditRapport.Lines.Add('Enregistrement Local Session ouverte des membres du réseaux');

     AdresseReseauxLocal:=ProcAdresseDossierPartageReseaux('','Local',NomDossierPartageOut,EmlacementLocalOuReseauxOut);

     if(DirectoryExists(AdresseReseauxLocal))then
     begin
          OpenFParc(RParc);
          ChAdresseDossierPartageReseaux:=RParc.Parcours+'\'+Exercice+'FAdresseDossierPartageReseaux';
          assignfile(FAdresseDossierPartageReseaux,ChAdresseDossierPartageReseaux);
          if FileExists(ChAdresseDossierPartageReseaux)then
          begin
                try
                Reset(FAdresseDossierPartageReseaux);
                Seek(FAdresseDossierPartageReseaux,0);
                while not eof(FAdresseDossierPartageReseaux)do
                begin
                     read(FAdresseDossierPartageReseaux,RAdresseDossierPartageReseaux);

                     if(RAdresseDossierPartageReseaux.EmlacementLocalOuReseaux='Réseaux')then
                     begin
                          AdresseReseaux:=RAdresseDossierPartageReseaux.AdresseDossierPartageReseaux;

                           if(DirectoryExists(AdresseReseaux)=true)then
                           begin
                                 AdresseReseauxSource:=AdresseReseaux+'\WinBus'+DataIdentificateurReseaux+' '+RAdresseDossierPartageReseaux.NomPosteReseaux+'.File';

                                 if(AdresseReseauxSource<>'')then
                                 begin
                                      assignfile(FRegistre,AdresseReseauxSource);
                                      if FileExists(AdresseReseauxSource)then
                                      begin
                                           try
                                           Reset(FRegistre);
                                           Seek(FRegistre,0);
                                           read(FRegistre,RRegistre);

                                           //////////////////////////////////////////////////////////////////////
                                           AdresseReseauCible:=AdresseReseauxLocal+'\WinBus'+DataIdentificateurReseaux+' '+RAdresseDossierPartageReseaux.NomPosteReseaux+'.File';
                                           assignfile(FRegistreCopie,AdresseReseauCible);
                                           try
                                           if FileExists(AdresseReseauCible)then
                                           Reset(FRegistreCopie)
                                           else Rewrite(FRegistreCopie); //Création nouveau fichier
                                           Seek(FRegistreCopie,0);
                                           Truncate(FRegistreCopie);
                                           write(FRegistreCopie,RRegistre);
                                           finally
                                           CloseFile(FRegistreCopie);
                                           end;
                                           //////////////////////////////////////////////////////////////////////

                                           finally
                                           CloseFile(FRegistre);
                                           end;

                                           FSMenuPrincipal.EditRapport.Lines.Add('');
                                           FSMenuPrincipal.EditRapport.Lines.Add('Enregistrement '+AdresseReseauCible+' efféctué avec succés ! {'+inttostr(1)+' Enregistrements} "Source: '+ExtractFileDir(ExtractFileDir(AdresseReseauxSource))+'"');
                                           FSMenuPrincipal.EditRapport.Lines.Add('Information:');
                                           FSMenuPrincipal.EditRapport.Lines.Add('Entité: '+RRegistre.Repertoire);
                                           FSMenuPrincipal.EditRapport.Lines.Add('Exercice: '+RRegistre.Exercice);
                                      end;
                                 end
                                 else
                                 if(AdresseReseauCible=AdresseReseauxSource)then
                                 begin
                                      FSMenuPrincipal.EditRapport.Lines.Add('Enregistrement '+'WinBus'+' '+RAdresseDossierPartageReseaux.NomPosteReseaux+' Aucune source !');
                                 end
                                 else
                                 if(AdresseReseauxSource='')then
                                 begin
                                      showmessage('Aucun emplacement réseaux planifié !');
                                 end;
                           end
                           else FSMenuPrincipal.EditRapport.Lines.Add('Enregistrement '+'WinBus'+' '+RAdresseDossierPartageReseaux.NomPosteReseaux+' Aucune source !');;
                          ////////////////////////////////////////////////////////////
                     end;
               end;
               finally
               CloseFile(FAdresseDossierPartageReseaux);
               end;
          end;
     end;
     FSMenuPrincipal.EditRapport.Lines.Add('');

     //Fin  FAdresseDossierPartageReseaux

     FSMenuPrincipal.EditRapport.Lines.Add('Fin.');
     FSMenuPrincipal.EditRapport.Lines.Add('');
end;

Procedure IndiquerIdentificateurEntrepriseDansReseaux;
var  i,iselect:integer; OKIdentifiant,OKExisteIdentifiant:boolean;  NewIdentificateurReseaux:string;
begin
     OpenFParc(RParc);
     ChOrganismeTutelle:=RParc.Parcours+'\'+Exercice+'FOrganismeTutelle';
     assignfile(FOrganismeTutelle,ChOrganismeTutelle);
     try
     if FileExists(ChOrganismeTutelle)then
     Reset(FOrganismeTutelle)
     else Rewrite(FOrganismeTutelle); //Création nouveau fichier
     Seek(FOrganismeTutelle,0);
     i:=0;
     OKIdentifiant:=false;
     while not eof(FOrganismeTutelle)and(OKIdentifiant=false)do
     begin
          read(FOrganismeTutelle,ROrganismeTutelle);
          if(ROrganismeTutelle.NomOrganismeTutelle='Réseaux')then
          begin
               OKIdentifiant:=true;
          end;
     i:=i+1;
     end;

     if(OKIdentifiant=false)then
     begin
          Seek(FOrganismeTutelle,i);
          ROrganismeTutelle.PositionOrganismeTutelle:=i;
          ROrganismeTutelle.NomOrganismeTutelle:='Réseaux';
          write(FOrganismeTutelle,ROrganismeTutelle);
     end;
     finally
     CloseFile(FOrganismeTutelle);
     end;

     OpenFParc(RParc);
     ChIdentificateurEnttreprise:=RParc.Parcours+'\'+Exercice+'FIdentificateurEnttreprise';
     assignfile(FIdentificateurEnttreprise,ChIdentificateurEnttreprise);
     try
     if FileExists(ChIdentificateurEnttreprise)then
     Reset(FIdentificateurEnttreprise)
     else Rewrite(FIdentificateurEnttreprise); //Création nouveau fichier
     Seek(FIdentificateurEnttreprise,0);
     i:=0;
     OKIdentifiant:=false;
     while not eof(FIdentificateurEnttreprise)and(OKIdentifiant=false)do
     begin
          read(FIdentificateurEnttreprise,RIdentificateurEnttreprise);
          if(RIdentificateurEnttreprise.OrganismeTutelle='Réseaux')
          and(RIdentificateurEnttreprise.IntitulleIdentificateur='Identificateur Réseaux')
          then
          begin
               OKIdentifiant:=true;
          end;
     i:=i+1;
     end;

     if(OKIdentifiant=false)then
     begin
          Seek(FIdentificateurEnttreprise,i);
          RIdentificateurEnttreprise.PositionIdentificateur:=i;
          RIdentificateurEnttreprise.IntitulleIdentificateur:='Identificateur Réseaux';
          RIdentificateurEnttreprise.OrganismeTutelle:='Réseaux';
          write(FIdentificateurEnttreprise,RIdentificateurEnttreprise);
     end;
     finally
     CloseFile(FIdentificateurEnttreprise);
     end;

     OpenFParc(RParc);
     ChDataIdentificateurEnttreprise:=RParc.Parcours+'\'+Exercice+'FDataIdentificateurEnttreprise';
     assignfile(FDataIdentificateurEnttreprise,ChDataIdentificateurEnttreprise);
     try
     if FileExists(ChDataIdentificateurEnttreprise)then
     Reset(FDataIdentificateurEnttreprise)
     else Rewrite(FDataIdentificateurEnttreprise); // Création nouveau fichier
     Seek(FDataIdentificateurEnttreprise,0);
     i:=0;
     iSelect:=0;
     OKIdentifiant:=false;
     OKExisteIdentifiant:=false;
     while not eof(FDataIdentificateurEnttreprise)and(OKIdentifiant=false)do
     begin
          read(FDataIdentificateurEnttreprise,RDataIdentificateurEnttreprise);
          if(RDataIdentificateurEnttreprise.IntitulleIdentificateur='Identificateur Réseaux')then
          begin
               OKExisteIdentifiant:=true;
               iSelect:=i;
               if(RDataIdentificateurEnttreprise.DataIdentificateur<>'')
               then
               begin
                    OKIdentifiant:=true;
               end;
          end;
     i:=i+1;
     end;

     if(OKIdentifiant=false)then
     begin
          if(OKExisteIdentifiant=true)then i:=ISelect;
          Seek(FDataIdentificateurEnttreprise,i);
          RDataIdentificateurEnttreprise.PositionDataIdentificateur:=i;
          RDataIdentificateurEnttreprise.IntitulleIdentificateur:='Identificateur Réseaux';
          RDataIdentificateurEnttreprise.DataIdentificateur:='1.1';
          write(FDataIdentificateurEnttreprise,RDataIdentificateurEnttreprise);
     end;
     finally
     CloseFile(FDataIdentificateurEnttreprise);
     end;
end;

Function DataIdentificateurReseaux:string;
var  OKIdentifiantDIR:boolean;
begin
     DataIdentificateurReseaux:='1.1';

     OpenFParc(RParc);
     ChDataIdentificateurEnttreprise:=RParc.Parcours+'\'+Exercice+'FDataIdentificateurEnttreprise';
     assignfile(FDataIdentificateurEnttreprise,ChDataIdentificateurEnttreprise);
     if FileExists(ChDataIdentificateurEnttreprise)then
     begin
          try
          Reset(FDataIdentificateurEnttreprise);
          Seek(FDataIdentificateurEnttreprise,0);
          OKIdentifiantDIR:=false;
          while not eof(FDataIdentificateurEnttreprise)and(OKIdentifiantDIR=false)do
          begin
               read(FDataIdentificateurEnttreprise,RDataIdentificateurEnttreprise);

               if(RDataIdentificateurEnttreprise.IntitulleIdentificateur='Identificateur Réseaux')then
               begin
                    OKIdentifiantDIR:=true;
                    DataIdentificateurReseaux:=RDataIdentificateurEnttreprise.DataIdentificateur;
               end;
          end;
          finally
          CloseFile(FDataIdentificateurEnttreprise);
          end;
     end;
end;

Procedure IndiquerLocalisationGeographiqueEntreprise;
var  i,iselect:integer; OKIdentifiant,OKExisteIdentifiant:boolean;  NewIdentificateurReseaux:string;
begin
     OpenFParc(RParc);
     ChOrganismeTutelle:=RParc.Parcours+'\'+Exercice+'FOrganismeTutelle';
     assignfile(FOrganismeTutelle,ChOrganismeTutelle);
     try
     if FileExists(ChOrganismeTutelle)then
     Reset(FOrganismeTutelle)
     else Rewrite(FOrganismeTutelle); //Création nouveau fichier
     Seek(FOrganismeTutelle,0);
     i:=0;
     OKIdentifiant:=false;
     while not eof(FOrganismeTutelle)and(OKIdentifiant=false)do
     begin
          read(FOrganismeTutelle,ROrganismeTutelle);
          if(ROrganismeTutelle.NomOrganismeTutelle='Information')then
          begin
               OKIdentifiant:=true;
          end;
     i:=i+1;
     end;

     if(OKIdentifiant=false)then
     begin
          Seek(FOrganismeTutelle,i);
          ROrganismeTutelle.PositionOrganismeTutelle:=i;
          ROrganismeTutelle.NomOrganismeTutelle:='Information';
          write(FOrganismeTutelle,ROrganismeTutelle);
     end;
     finally
     CloseFile(FOrganismeTutelle);
     end;

     OpenFParc(RParc);
     ChIdentificateurEnttreprise:=RParc.Parcours+'\'+Exercice+'FIdentificateurEnttreprise';
     assignfile(FIdentificateurEnttreprise,ChIdentificateurEnttreprise);
     try
     if FileExists(ChIdentificateurEnttreprise)then
     Reset(FIdentificateurEnttreprise)
     else Rewrite(FIdentificateurEnttreprise); //Création nouveau fichier
     Seek(FIdentificateurEnttreprise,0);
     i:=0;
     OKIdentifiant:=false;
     while not eof(FIdentificateurEnttreprise)and(OKIdentifiant=false)do
     begin
          read(FIdentificateurEnttreprise,RIdentificateurEnttreprise);
          if(RIdentificateurEnttreprise.OrganismeTutelle='Information')
          and(RIdentificateurEnttreprise.IntitulleIdentificateur='Localisation Géographique')
          then
          begin
               OKIdentifiant:=true;
          end;
     i:=i+1;
     end;

     if(OKIdentifiant=false)then
     begin
          Seek(FIdentificateurEnttreprise,i);
          RIdentificateurEnttreprise.PositionIdentificateur:=i;
          RIdentificateurEnttreprise.IntitulleIdentificateur:='Localisation Géographique';
          RIdentificateurEnttreprise.OrganismeTutelle:='Information';
          write(FIdentificateurEnttreprise,RIdentificateurEnttreprise);
     end;
     finally
     CloseFile(FIdentificateurEnttreprise);
     end;

     OpenFParc(RParc);
     ChDataIdentificateurEnttreprise:=RParc.Parcours+'\'+Exercice+'FDataIdentificateurEnttreprise';
     assignfile(FDataIdentificateurEnttreprise,ChDataIdentificateurEnttreprise);
     try
     if FileExists(ChDataIdentificateurEnttreprise)then
     Reset(FDataIdentificateurEnttreprise)
     else Rewrite(FDataIdentificateurEnttreprise); // Création nouveau fichier
     Seek(FDataIdentificateurEnttreprise,0);
     i:=0;
     iSelect:=0;
     OKIdentifiant:=false;
     OKExisteIdentifiant:=false;
     while not eof(FDataIdentificateurEnttreprise)and(OKIdentifiant=false)do
     begin
          read(FDataIdentificateurEnttreprise,RDataIdentificateurEnttreprise);
          if(RDataIdentificateurEnttreprise.IntitulleIdentificateur='Localisation Géographique')then
          begin
               OKExisteIdentifiant:=true;
               iSelect:=i;
               if(RDataIdentificateurEnttreprise.DataIdentificateur<>'')
               then
               begin
                    OKIdentifiant:=true;
               end;
          end;
     i:=i+1;
     end;

     if(OKIdentifiant=false)then
     begin
          if(OKExisteIdentifiant=true)then i:=ISelect;
          Seek(FDataIdentificateurEnttreprise,i);
          RDataIdentificateurEnttreprise.PositionDataIdentificateur:=i;
          RDataIdentificateurEnttreprise.IntitulleIdentificateur:='Localisation Géographique';
          RDataIdentificateurEnttreprise.DataIdentificateur:='AKBOU';
          write(FDataIdentificateurEnttreprise,RDataIdentificateurEnttreprise);
     end;
     finally
     CloseFile(FDataIdentificateurEnttreprise);
     end;
end;

Function DataLocalisationGeographiqueEntreprise:string;
var  OKIdentifiantDIR:boolean;
begin
     DataLocalisationGeographiqueEntreprise:='AKBOU';

     OpenFParc(RParc);
     ChDataIdentificateurEnttreprise:=RParc.Parcours+'\'+Exercice+'FDataIdentificateurEnttreprise';
     assignfile(FDataIdentificateurEnttreprise,ChDataIdentificateurEnttreprise);
     if FileExists(ChDataIdentificateurEnttreprise)then
     begin
          try
          Reset(FDataIdentificateurEnttreprise);
          Seek(FDataIdentificateurEnttreprise,0);
          OKIdentifiantDIR:=false;
          while not eof(FDataIdentificateurEnttreprise)and(OKIdentifiantDIR=false)do
          begin
               read(FDataIdentificateurEnttreprise,RDataIdentificateurEnttreprise);

               if(RDataIdentificateurEnttreprise.IntitulleIdentificateur='Localisation Géographique')then
               begin
                    OKIdentifiantDIR:=true;
                    DataLocalisationGeographiqueEntreprise:=RDataIdentificateurEnttreprise.DataIdentificateur;
               end;
          end;
          finally
          CloseFile(FDataIdentificateurEnttreprise);
          end;
     end;
end;

procedure TFSMenuPrincipal.RBConnectiviteReseauxClick(Sender: TObject);
begin
     if(FSMenuPrincipal.RBConnectiviteReseaux.Checked=true)
     then FSMenuPrincipal.RBConnectiviteReseaux.Caption:='Sous-réseaux'
     else FSMenuPrincipal.RBConnectiviteReseaux.Caption:='Monoposte';
end;

procedure TFSMenuPrincipal.ParamtresRseaux1Click(Sender: TObject);
begin
     if not AccesPrivilegies('FS Paramètres avancés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;
     FSMenuPrincipal.InfoPublicationReseauxProgrammer.Caption:='Instance';

     FSParametresAvances.RBAppliqueEnregistrementParametresReseaux.Checked:=false;
     FSParametresAvances.Show;
     FSParametresAvances.PageConfigurationReseaux.Show;
     FSParametresAvances.EditNomPageShow.Text:='PageConfigurationReseaux';

     FSParametresAvances.PagePrincipale.Enabled:=false;
     FSParametresAvances.EditCodeActivation.Text:='';
     FSParametresAvances.EditCodeActivation.SetFocus;

     if(FunctionTravauxConnexionReseaux=true)
     then FSParametresAvances.RBTravauxConnexionReseaux.Checked:=true
     else FSParametresAvances.RBTravauxHorsConnexionReseaux.Checked:=true;

     if(FunctionActiverPublicationReseaux=true)
     then FSParametresAvances.RBActiverPublicationReseaux.Checked:=true
     else FSParametresAvances.RBDesActiverPublicationReseaux.Checked:=true;

     FSParametresAvances.RBInclureValeurSousReseauxPrecedentePeriode.Checked:=FunctionInclureValeurSousReseauxPrecedentePeriode;
     FSParametresAvances.RBInclureValeurSousReseauxPrecedenteExercice.Checked:=FunctionInclureValeurSousReseauxPrecedenteExercice;

     FSParametresAvances.RBUtiliserExerciceLocalePourPublicationEntrante.Checked:=FunctionUtiliseExerciceLocalPourPublicationEntrante;
     FSParametresAvances.RBUtiliserExerciceLocalePourPublicationSortante.Checked:=FunctionUtiliseExerciceLocalPourPublicationSortante;

     if(FunctionUtiliseExerciceLocalPourLectureSousReseaux=true)
     then FSParametresAvances.RBUliliseExerciceLocalPourLectureSousReseaux.Checked:=true
     else FSParametresAvances.RBUliliseExercicePubliePourLectureSousReseaux.Checked:=true;

     ListePublicationReseauxProgrammer(FSParametresAvances.TableauListePublicationReseauxProgrammer);
     LancementPublicationReseauxProgrammer(FSMenuPrincipal.EditJourCaption.Text,FSMenuPrincipal.EditHeureCaption.Text,FSParametresAvances.InfoPublicationReseauxProgrammer);
end;

procedure TFSMenuPrincipal.TimerConnxionServeurClientTimer(
  Sender: TObject);
var  R:integer; OKConnexion:boolean;  NomDossierPartageOut,EmlacementLocalOuReseauxOut,NomDossierPartageOutClient,EmlacementLocalOuReseauxOutClient:string;
begin
     Application.ProcessMessages;
EXIT;     
     //if(FunctionTravauxConnexionReseaux=false)then  Exit;
     FSMenuPrincipal.RBConnectiviteReseaux.Checked:=false;//FFunctionTravauxConnexionReseaux;

     AccelerationAffichageTableau(FSMenuPrincipal.TableauNotificationServeur,true);

     FSMenuPrincipal.TableauNotificationServeur.ColCount:=5;
     FSMenuPrincipal.TableauNotificationServeur.Cols[0].Text:='N°';
     FSMenuPrincipal.TableauNotificationServeur.Cols[1].Text:='Nom Machine';
     FSMenuPrincipal.TableauNotificationServeur.Cols[2].Text:='Nom Utilisateur';
     FSMenuPrincipal.TableauNotificationServeur.Cols[3].Text:='Adresse IP';
     FSMenuPrincipal.TableauNotificationServeur.Cols[4].Text:='Poste Connexion';

     FSMenuPrincipal.TableauNotificationServeur.RowCount:=2;
     FSMenuPrincipal.TableauNotificationServeur.Rows[1].Text:='';

     ProcAdresseDossierPartageReseaux('','Local',NomDossierPartageOut,EmlacementLocalOuReseauxOut);

     OpenFParc(RParc);
     ChAdresseDossierPartageReseauxControle:=RParc.Parcours+'\'+Exercice+'FAdresseDossierPartageReseaux';
     assignfile(FAdresseDossierPartageReseauxControle,ChAdresseDossierPartageReseauxControle);
     if FileExists(ChAdresseDossierPartageReseauxControle)then
     begin
           try
           Reset(FAdresseDossierPartageReseauxControle);
           Seek(FAdresseDossierPartageReseauxControle,0);
           R:=0;
           while not eof(FAdresseDossierPartageReseauxControle)do
           begin
                read(FAdresseDossierPartageReseauxControle,RAdresseDossierPartageReseauxControle);  Application.ProcessMessages;

                if(RAdresseDossierPartageReseauxControle.EmlacementLocalOuReseaux='Réseaux')then
                begin
                     ChClientMachine:=RAdresseDossierPartageReseauxControle.AdresseDossierPartageReseaux+'\FAdresseIPMayMachine'+' '+RAdresseDossierPartageReseauxControle.NomPosteReseaux;

                     assignfile(FClientMachine,ChClientMachine);
                     if FileExists(ChClientMachine)then
                     begin
                          Reset(FClientMachine);
                          Seek(FClientMachine,0);
                          If not eof(FClientMachine)then
                          begin
                               read(FClientMachine,RClientMachine); //Application.ProcessMessages;
                               if(RClientMachine.NomPosteReseauxConnexion=NomDossierPartageOut)and(RClientMachine.NomPosteReseauxConnexion<>FSDataClient.EditNomDosierPartager.Text)then
                               begin
                                    R:=R+1;
                                    FSMenuPrincipal.TableauNotificationServeur.Rows[R].Text:=inttostr(R);
                                    FSMenuPrincipal.TableauNotificationServeur.Cells[1,R]:=RClientMachine.NomMachine;
                                    FSMenuPrincipal.TableauNotificationServeur.Cells[2,R]:=RClientMachine.NomUtilisateur;
                                    FSMenuPrincipal.TableauNotificationServeur.Cells[3,R]:=RClientMachine.AdresseIP;
                                    FSMenuPrincipal.TableauNotificationServeur.Cells[4,R]:=RClientMachine.NomPosteReseauxConnexion;
                               end;
                          end;
                     CloseFile(FClientMachine);
                     end;
                end;
           end;
           finally
           CloseFile(FAdresseDossierPartageReseauxControle);
           end;
     end;

     if(R>0)then
     begin
          FSMenuPrincipal.AfficheNotificationServeur.Visible:=true;
          FSMenuPrincipal.TableauNotificationServeur.RowCount:=R+1;
          AjusterColWidth(FSMenuPrincipal.TableauNotificationServeur,'','');

          FSMenuPrincipal.AfficheTitreNotificationServeur.Caption:=inttostr(R)+' notifications de communications';

          FSMenuPrincipal.TimerControleCouleur.Enabled:=true;
     end
     else
     begin
          FSMenuPrincipal.AfficheNotificationServeur.Visible:=false;
          FSMenuPrincipal.TimerControleCouleur.Enabled:=false;
     end;

     AccelerationAffichageTableau(FSMenuPrincipal.TableauNotificationServeur,false);
end;

procedure TFSMenuPrincipal.TableauNotificationServeurDblClick(
  Sender: TObject);
begin
     FSDataClient.Show;

     FSDataClient.EditNomUtilisateurClient.Text:=NomUtilisateur;
     FSDataClient.ListeCommunicationClient.Lines.Text:='';
     FSDataClient.EditCommunicationClient.Text:='';
     FSDataClient.EditNomUtilisateurServeur.Text:=FSMenuPrincipal.TableauNotificationServeur.Cells[2,FSMenuPrincipal.TableauNotificationServeur.Row];
     FSDataClient.EditAdresseIPServeur.Text:=FSMenuPrincipal.TableauNotificationServeur.Cells[3,FSMenuPrincipal.TableauNotificationServeur.Row];
     FSDataClient.EditNomDosierPartager.Text:=FSMenuPrincipal.TableauNotificationServeur.Cells[4,FSMenuPrincipal.TableauNotificationServeur.Row];

     FSDataClient.ClientSocket1.Address:=FSDataClient.EditAdresseIPServeur.Text;
     FSDataClient.ClientSocket1.Active:=true;
end;

procedure TFSMenuPrincipal.Communicationrseaux1Click(Sender: TObject);
begin
     //FSSocket.Show;
     
     {OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     Reset(FActiverPublicationReseaux)
     else Rewrite(FActiverPublicationReseaux); //Création nouveau fichier
     Seek(FActiverPublicationReseaux,0);
     read(FActiverPublicationReseaux,RActiverPublicationReseaux);
     RActiverPublicationReseaux.TravauxConnexionReseaux:=true;
     RActiverPublicationReseaux.ActiverPublicationReseaux:=true;
     Seek(FActiverPublicationReseaux,0);
     write(FActiverPublicationReseaux,RActiverPublicationReseaux);
     CloseFile(FActiverPublicationReseaux);}

     FSDataServeur.Show;
     FSControleSysteme.Close;
     FSDataServeur.EditNomUtilisateurServeur.Text:=NomUtilisateur;

     FSDataServeur.ChercheAdresseIP.Caption:=IndiqueAdresseIPMayMachine;

     FSDataServeur.ListeCommunication.Lines.Text:='';
     FSDataServeur.EditCommunication.Text:='';
end;

function  NonOui(Question:string):boolean;  //use Dialogs pour messageDLG
begin
     result := not (messageDLG(Question,mtinformation,[mbOK,mbNo],0)<> 1);
end;

procedure TFSMenuPrincipal.GnrateurBaseAvis1Click(Sender: TObject);
begin
     FSGenerateurBase.Show;
     FSGenerateurBase.PageGenerateurParametres.Show;
     FSGenerateurBase.PageBaseAvis.Show;
     ListeBaseAvis(FSGenerateurBase.TableauBaseAvis);
end;

procedure TFSMenuPrincipal.ParamtresPartageregistres1Click(
  Sender: TObject);
begin
     showmessage('Voir dans tiers, Nom du registre non autorisé !');
     exit;

     if not AccesPrivilegies('FS Autorisation Partage Registre',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSAutorisationPartageRegistre.Show;

     FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Items.Text:='';
     FSAutorisationPartageRegistre.EditNomDossierPartageReseauxListe.Items.Text:='';

     OpenFParc(RParc);
     ChAdresseDossierPartageReseaux:=RParc.Parcours+'\'+Exercice+'FAdresseDossierPartageReseaux';
     assignfile(FAdresseDossierPartageReseaux,ChAdresseDossierPartageReseaux);
     if FileExists(ChAdresseDossierPartageReseaux)then
     begin
          try
          Reset(FAdresseDossierPartageReseaux);
          Seek(FAdresseDossierPartageReseaux,0);
          while not eof(FAdresseDossierPartageReseaux)do
          begin
               read(FAdresseDossierPartageReseaux,RAdresseDossierPartageReseaux);
               if(RAdresseDossierPartageReseaux.EmlacementLocalOuReseaux='Réseaux')then
               begin
                    FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Items.Add(RAdresseDossierPartageReseaux.NomPosteReseaux);
                    FSAutorisationPartageRegistre.EditNomDossierPartageReseauxListe.Items.Add(RAdresseDossierPartageReseaux.NomPosteReseaux);
               end;
          end;
          finally
          CloseFile(FAdresseDossierPartageReseaux);
          end;
     end;

     FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.ItemIndex:=0;
     FSAutorisationPartageRegistre.EditNomDossierPartageReseauxListe.ItemIndex:=0;

     ListeTypeFichierTiersBox(FSAutorisationPartageRegistre.EditSelectTypeProces.Text,'','',FSAutorisationPartageRegistre.EditFichierConcerne,FSAutorisationPartageRegistre.EditTitreFichierConcerne);
     ListeTypeFichierTiersBox(FSAutorisationPartageRegistre.EditTypeProcesListe.Text,'','',FSAutorisationPartageRegistre.EditFichierConcerneListe,FSAutorisationPartageRegistre.EditTitreFichierConcerneListe);

     ListeTiersMotsCle(FSAutorisationPartageRegistre.TableauTiers,FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,'','',FSAutorisationPartageRegistre.EditRechercheTiers.Text,FSAutorisationPartageRegistre.EditNbrKeyUp,FSAutorisationPartageRegistre.EditNbrKeyUpMemo,FSAutorisationPartageRegistre.TimerLancerAfficheTiers,false,FSAutorisationPartageRegistre.RBRechercheTiersMotCle.Checked);
     ListeAutorisationPartageRegistre(FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre,FSAutorisationPartageRegistre.EditTypeProcesListe.Text,FSAutorisationPartageRegistre.EditFichierConcerneListe.Text,FSAutorisationPartageRegistre.EditNomDossierPartageReseauxListe.Text);
end;   

procedure TFSMenuPrincipal.TimerPublicationReseauxProgrammerTimer(
  Sender: TObject);
begin
     Application.ProcessMessages;

     FSMenuPrincipal.EditTempsEcouleTimerPublication.Text:=Timetostr(Time);

     if(FinReouvertureClotureExercice(ExerciceAnnee)=false)then
     begin
          ControleTimerActivation(FSMenuPrincipal.TimerPublicationReseauxProgrammer,false);

          if(FSMenuPrincipal.InfoPublicationReseauxProgrammer.Caption<>'Instance')then
          begin
               FSMenuPrincipal.TimerPublicationReseauxProgrammer.Enabled:=false;
               LancementPublicationReseauxProgrammer(FSMenuPrincipal.EditJourCaption.Text,FSMenuPrincipal.EditHeureCaption.Text,FSMenuPrincipal.InfoPublicationReseauxProgrammer);
               FSMenuPrincipal.TimerPublicationReseauxProgrammer.Enabled:=true;
          end;

          Application.ProcessMessages;

          ControleTimerActivation(FSMenuPrincipal.TimerPublicationReseauxProgrammer,true);
     end;
end;

procedure TFSMenuPrincipal.Fichedetravail1Click(Sender: TObject);
begin
     FSPlanTravail.Show;
end;

procedure TFSMenuPrincipal.TimerLancerControleSoldeDomiciliationTimer(
  Sender: TObject);
var  LastRow:integer;  OKBiSysteme:boolean;
begin
     Application.ProcessMessages;
EXIT;     
     ControleTimerActivation(FSMenuPrincipal.TimerLancerControleSoldeDomiciliation,false);

     FSMenuPrincipal.TimerLancerControleSoldeDomiciliation.Enabled:=false;

     if(FunctionControleSoldeDomiciliationDemarrage=true)then
     begin
           OKBiSysteme:=false;

           if(ControleSoldeAllDomiciliations(FSMenuPrincipal.TableauControleSoleDomiciliation,FSMenuPrincipal.TableauLiseAvisNotifier,false,LastRow))then
           begin
                OKBiSysteme:=true;
                FSMenuPrincipal.AfficheControleSoleDomiciliation.Visible:=true;
                FSMenuPrincipal.TimerControleCouleur.Enabled:=true;
                FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Caption:='Nombre de notification: '+Completezerogauche(inttostr(FSMenuPrincipal.TableauControleSoleDomiciliation.RowCount-1),'2');
                FSMenuPrincipal.TypeAffichage.Caption:='Affichage Automatique';
           end
           else
           begin
                FSMenuPrincipal.TimerControleCouleur.Enabled:=false;
                FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Caption:='';
           end;

           if(ControlePieceAllDomiciliations(FSMenuPrincipal.TableauControleSoleDomiciliation,LastRow,false))then
           begin
                OKBiSysteme:=true;
                FSMenuPrincipal.AfficheControleSoleDomiciliation.Visible:=true;
                FSMenuPrincipal.TimerControleCouleur.Enabled:=true;
                FSMenuPrincipal.AfficheTitreControleSoleDomiciliation.Caption:='Nombre de notification: '+Completezerogauche(inttostr(FSMenuPrincipal.TableauControleSoleDomiciliation.RowCount-1),'2');
                FSMenuPrincipal.TypeAffichage.Caption:='Affichage Automatique';
           end;

           if(OKBiSysteme=true)then FSMenuPrincipal.BorderIcons:=[biMinimize,biMaximize];
     end;

     FSShowmessage.Close;

     ControleTimerActivation(FSMenuPrincipal.TimerLancerControleSoldeDomiciliation,true);
end;

procedure TFSMenuPrincipal.EditDateDebutCloseUp(Sender: TObject);
begin
     ControleManuelSoldeDomiciliation;
end;

procedure TFSMenuPrincipal.EditDateFinCloseUp(Sender: TObject);
begin
     ControleManuelSoldeDomiciliation;
end;

procedure TFSMenuPrincipal.TimerControleConnxionServeurClientTimer(
  Sender: TObject);
var  R:integer; OKConnexion:boolean;  NomDossierPartageOut,EmlacementLocalOuReseauxOut,NomDossierPartageOutClient,EmlacementLocalOuReseauxOutClient,AdresseReseauxLocal:string;
begin
     Application.ProcessMessages;
EXIT;     
     //FSMenuPrincipal.RBConnectiviteReseaux.Checked:=FunctionTravauxConnexionReseaux;

     //if(FSMenuPrincipal.RBConnectiviteReseaux.Checked=true)then
     begin
           AdresseReseauxLocal:=ProcAdresseDossierPartageReseaux('','Local',NomDossierPartageOut,EmlacementLocalOuReseauxOut);

           OpenFParc(RParc);
           ChAdresseDossierPartageReseauxControle:=RParc.Parcours+'\'+Exercice+'FAdresseDossierPartageReseaux';
           assignfile(FAdresseDossierPartageReseauxControle,ChAdresseDossierPartageReseauxControle);
           if FileExists(ChAdresseDossierPartageReseauxControle)then
           begin
                 try
                 Reset(FAdresseDossierPartageReseauxControle);
                 Seek(FAdresseDossierPartageReseauxControle,0);
                 while not eof(FAdresseDossierPartageReseauxControle)do
                 begin
                      read(FAdresseDossierPartageReseauxControle,RAdresseDossierPartageReseauxControle);  //Application.ProcessMessages;

                      if(RAdresseDossierPartageReseauxControle.EmlacementLocalOuReseaux='Réseaux')then
                      begin
                           ChClientMachine:=AdresseReseauxLocal+'\FAdresseIPMayMachine'+' '+RAdresseDossierPartageReseauxControle.NomPosteReseaux;

                           assignfile(FClientMachine,ChClientMachine);
                           if FileExists(ChClientMachine)then
                           begin
                                try
                                Reset(FClientMachine);
                                Seek(FClientMachine,0);
                                If not eof(FClientMachine)then
                                begin
                                     read(FClientMachine,RClientMachine);  Application.ProcessMessages;
                                     if(RClientMachine.NomPosteReseauxConnexion=NomDossierPartageOut)and(RClientMachine.NomPosteReseauxConnexion<>FSDataClient.EditNomDosierPartager.Text)then
                                     begin
                                          OpenFParc(RParc);
                                          ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
                                          assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
                                          if FileExists(ChActiverPublicationReseaux)then
                                          Reset(FActiverPublicationReseaux)
                                          else Rewrite(FActiverPublicationReseaux); //Création nouveau fichier
                                          Seek(FActiverPublicationReseaux,0);
                                          read(FActiverPublicationReseaux,RActiverPublicationReseaux);
                                          RActiverPublicationReseaux.TravauxConnexionReseaux:=true;
                                          RActiverPublicationReseaux.ActiverPublicationReseaux:=true;
                                          Seek(FActiverPublicationReseaux,0);
                                          write(FActiverPublicationReseaux,RActiverPublicationReseaux);
                                          CloseFile(FActiverPublicationReseaux);

                                          FSMenuPrincipal.TimerConnxionServeurClient.Enabled:=true;
                                          RClientMachine.NomPosteReseauxConnexion:='';
                                          Seek(FClientMachine,0);
                                          Write(FClientMachine,RClientMachine);
                                     end;
                                end;
                                finally
                                CloseFile(FClientMachine);
                                end;
                           end;
                      end;
                 end;
                 finally
                 CloseFile(FAdresseDossierPartageReseauxControle);
                 end;
           end;

           {if(FSMenuPrincipal.AfficheRBConnectiviteReseaux.Color=clBtnFace)
           then FSMenuPrincipal.AfficheRBConnectiviteReseaux.Color:=clYellow
           else FSMenuPrincipal.AfficheRBConnectiviteReseaux.Color:=clBtnFace;}
     end
     {else
     begin
          FSMenuPrincipal.AfficheRBConnectiviteReseaux.Color:=clBtnFace;
          FSMenuPrincipal.TimerControleConnxionServeurClient.Enabled:=false;
     end;}
end;

procedure TFSMenuPrincipal.TimerOptimisationTimer(Sender: TObject);
begin
     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
     application.Initialize;
end;

procedure TFSMenuPrincipal.EditRepertoireActuelKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSMenuPrincipal.EditRepertoireActuelChange(Sender: TObject);
begin
     FSMenuPrincipal.TimerCodeAcces.Enabled:=true;
     MiseAjourCaptionMenuPrincipal(FSMenuPrincipal.TableauAdresseDossierPartageReseaux);
end;

procedure TFSMenuPrincipal.EditExerciceRepertoireActuelChange(
  Sender: TObject);
begin
     FSMenuPrincipal.TimerCodeAcces.Enabled:=true;
     MiseAjourCaptionMenuPrincipal(FSMenuPrincipal.TableauAdresseDossierPartageReseaux);
end;

procedure TFSMenuPrincipal.BitAutorisationConnectiviteRepertoireActuelClick(
  Sender: TObject);
begin
     if(FSMenuPrincipal.EditCodeAcces.Text=FSMenuPrincipal.EditCodeFondateurParDefaut.Text)then
     begin
          ListeDataRepertoireActuel(GetCurrentDir,FSMenuPrincipal.ListeBaseDonnees,FSMenuPrincipal.EditRepertoireActuel,FSMenuPrincipal.EditExerciceRepertoireActuel);
          FSMenuPrincipal.RBAutoriseConectiviteRepertoireActuel.Checked:=true;
          FSMenuPrincipal.BitAutorisationConnectiviteRepertoireActuel.Visible:=false;

          FSMenuPrincipal.TimerCodeAcces.Enabled:=true;
          MiseAjourCaptionMenuPrincipal(FSMenuPrincipal.TableauAdresseDossierPartageReseaux);

          FSMenuPrincipal.EditCodeAcces.Text:='';
     end
     else
     begin
          FSMenuPrincipal.EditCodeAcces.Text:='';
          FSMenuPrincipal.EditCodeAcces.SetFocus;
     end;
end;

procedure TFSMenuPrincipal.RBAutoriseConectiviteRepertoireActuelClick(
  Sender: TObject);
begin
     FSMenuPrincipal.BitAutorisationConnectiviteRepertoireActuel.Visible:=not FSMenuPrincipal.RBAutoriseConectiviteRepertoireActuel.Checked;
end;

procedure TFSMenuPrincipal.Affichageprogressif1Click(Sender: TObject);
begin
     FSAffichage.Show;
end;

procedure TFSMenuPrincipal.Raccourcis1Click(Sender: TObject);
begin
     FSMenuPrincipal.Show;

     if(FSMenuPrincipal.AffichageRaccourcis.Visible=false)
     then FSMenuPrincipal.AffichageRaccourcis.Visible:=true
     else FSMenuPrincipal.AffichageRaccourcis.Visible:=false;

     FSMenuPrincipal.Cadre1.Visible:=FSMenuPrincipal.AffichageRaccourcis.Visible;
     FSMenuPrincipal.TimerCadreCouleur.Enabled:=FSMenuPrincipal.AffichageRaccourcis.Visible;
     FSMenuPrincipal.TimerCadreCouleur1.Enabled:=FSMenuPrincipal.AffichageRaccourcis.Visible;
     FSMenuPrincipal.TimerCadreCouleur2.Enabled:=FSMenuPrincipal.AffichageRaccourcis.Visible;

     FSMenuPrincipal.RBAfficherPaletteDefilementMenuRaccourcis.Checked:=ActivationRubriquesSousMenu('AfficherMenuRaccourcis');
end;

procedure TFSMenuPrincipal.AfficheRapportMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSMenuPrincipal.AffichageRaccourcisMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSMenuPrincipal.AfficheControleSoleDomiciliationMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSMenuPrincipal.AfficheAutorisationConnectiviteRepertoireActuelMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSMenuPrincipal.TimerCadreCouleurTimer(Sender: TObject);
var R,C:integer; CadreFirst,CadreLast:TPanel;
begin
     R:=strtoint(FSMenuPrincipal.EditR.Text);
     C:=strtoint(FSMenuPrincipal.EditC.Text);

     if(FSMenuPrincipal.EditR.Text<>'')and(FSMenuPrincipal.EditC.Text<>'')then
     begin
          if(R=0)then
          begin
               if(C=1)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre1;
                    CadreLast:=FSMenuPrincipal.Cadre2;
               end;

               if(C=2)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre2;
                    CadreLast:=FSMenuPrincipal.Cadre3;
               end;

               if(C=3)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre3;
                    CadreLast:=FSMenuPrincipal.Cadre4;
               end;

               if(C=4)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre4;
                    CadreLast:=FSMenuPrincipal.Cadre5;
               end;

               if(C=5)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre5;
                    CadreLast:=FSMenuPrincipal.Cadre6;
               end;

               if(C=6)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre6;
                    CadreLast:=FSMenuPrincipal.Cadre7;
               end;

               if(C=7)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre7;
                    CadreLast:=FSMenuPrincipal.Cadre8;
               end;

               if(C=8)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre8;
                    CadreLast:=FSMenuPrincipal.Cadre9;
               end;

               if(C=9)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre9;
                    CadreLast:=FSMenuPrincipal.Cadre10;
               end;

               if(C=10)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre10;
                    CadreLast:=FSMenuPrincipal.Cadre11;
               end;

               if(C=11)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre11;
                    CadreLast:=FSMenuPrincipal.Cadre12;
               end;

               if(C=12)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre12;
                    CadreLast:=FSMenuPrincipal.Cadre13;
               end;

               if(C=13)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre13;
                    CadreLast:=FSMenuPrincipal.Cadre14;
               end;

               if(C=14)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre14;
                    CadreLast:=FSMenuPrincipal.Cadre15;
               end;

               if(C=15)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre15;
                    CadreLast:=FSMenuPrincipal.Cadre16;
               end;

               if(C=16)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre16;
                    CadreLast:=FSMenuPrincipal.Cadre17;
               end;

               if(C=17)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre17;
                    CadreLast:=FSMenuPrincipal.Cadre18;
               end;

               if(C=18)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre18;
                    CadreLast:=FSMenuPrincipal.Cadre19;
               end;

               if(C=19)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre19;
                    CadreLast:=FSMenuPrincipal.Cadre20;
               end;

               if(C=20)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre20;
                    CadreLast:=FSMenuPrincipal.Cadre21;
               end;

               if(C=21)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre21;
                    CadreLast:=FSMenuPrincipal.Cadre22;
               end;

          FSMenuPrincipal.CadreTeste.Color:=CadreFirst.Color;
          CadreFirst.Color:=CadreLast.Color;
          CadreLast.Color:=FSMenuPrincipal.CadreTeste.Color;
          FSMenuPrincipal.EditC.Text:=inttostr(strtoint(FSMenuPrincipal.EditC.Text)+1);

          FSMenuPrincipal.TimerCadreCouleur1.Enabled:=true;
          end;

          if(R=1)then
          begin
               if(C=1)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre1;
                    CadreLast:=FSMenuPrincipal.Cadre2;
               end;

               if(C=2)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre2;
                    CadreLast:=FSMenuPrincipal.Cadre3;
               end;

               if(C=3)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre3;
                    CadreLast:=FSMenuPrincipal.Cadre4;
               end;

               if(C=4)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre4;
                    CadreLast:=FSMenuPrincipal.Cadre5;
               end;

               if(C=5)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre5;
                    CadreLast:=FSMenuPrincipal.Cadre6;
               end;

               if(C=6)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre6;
                    CadreLast:=FSMenuPrincipal.Cadre7;
               end;

               if(C=7)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre7;
                    CadreLast:=FSMenuPrincipal.Cadre8;
               end;

               if(C=8)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre8;
                    CadreLast:=FSMenuPrincipal.Cadre9;
               end;

               if(C=9)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre9;
                    CadreLast:=FSMenuPrincipal.Cadre10;
               end;

               if(C=10)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre10;
                    CadreLast:=FSMenuPrincipal.Cadre11;
               end;

               if(C=11)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre11;
                    CadreLast:=FSMenuPrincipal.Cadre12;
               end;

               if(C=12)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre12;
                    CadreLast:=FSMenuPrincipal.Cadre13;
               end;

               if(C=13)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre13;
                    CadreLast:=FSMenuPrincipal.Cadre14;
               end;

               if(C=14)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre14;
                    CadreLast:=FSMenuPrincipal.Cadre15;
               end;

               if(C=15)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre15;
                    CadreLast:=FSMenuPrincipal.Cadre16;
               end;

               if(C=16)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre16;
                    CadreLast:=FSMenuPrincipal.Cadre17;
               end;

               if(C=17)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre17;
                    CadreLast:=FSMenuPrincipal.Cadre18;
               end;

               if(C=18)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre18;
                    CadreLast:=FSMenuPrincipal.Cadre19;
               end;

               if(C=19)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre19;
                    CadreLast:=FSMenuPrincipal.Cadre20;
               end;

               if(C=20)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre20;
                    CadreLast:=FSMenuPrincipal.Cadre21;
               end;

               if(C=21)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre21;
                    CadreLast:=FSMenuPrincipal.Cadre22;
               end;

          FSMenuPrincipal.CadreTeste.Color:=CadreFirst.Color;
          CadreFirst.Color:=CadreLast.Color;
          CadreLast.Color:=FSMenuPrincipal.CadreTeste.Color;
          FSMenuPrincipal.EditC.Text:=inttostr(strtoint(FSMenuPrincipal.EditC.Text)+1);
          end;

     if(C=21)then
     begin
          //if(R=0)then FSMenuPrincipal.EditR.Text:='1' else FSMenuPrincipal.EditR.Text:='0';
          FSMenuPrincipal.EditC.Text:='1';
     end;

     end;
end;

procedure TFSMenuPrincipal.BitBtn17Click(Sender: TObject);
begin
     FSMenuPrincipal.AffichageRaccourcis.Visible:=false;
     FSMenuPrincipal.Cadre1.Visible:=FSMenuPrincipal.AffichageRaccourcis.Visible;
     FSMenuPrincipal.TimerCadreCouleur.Enabled:=FSMenuPrincipal.AffichageRaccourcis.Visible;
     FSMenuPrincipal.TimerCadreCouleur1.Enabled:=FSMenuPrincipal.AffichageRaccourcis.Visible;
     FSMenuPrincipal.TimerCadreCouleur2.Enabled:=FSMenuPrincipal.AffichageRaccourcis.Visible;
end;

procedure TFSMenuPrincipal.TimerCadreCouleur1Timer(Sender: TObject);
var R,C:integer; CadreFirst,CadreLast:TPanel;
begin
     R:=strtoint(FSMenuPrincipal.EditR.Text);
     C:=strtoint(FSMenuPrincipal.EditC.Text);

     if(FSMenuPrincipal.EditR.Text<>'')and(FSMenuPrincipal.EditC.Text<>'')then
     begin
          if(R=0)then
          begin
               if(C=1)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre1;
                    CadreLast:=FSMenuPrincipal.Cadre2;
               end;

               if(C=2)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre2;
                    CadreLast:=FSMenuPrincipal.Cadre3;
               end;

               if(C=3)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre3;
                    CadreLast:=FSMenuPrincipal.Cadre4;
               end;

               if(C=4)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre4;
                    CadreLast:=FSMenuPrincipal.Cadre5;
               end;

               if(C=5)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre5;
                    CadreLast:=FSMenuPrincipal.Cadre6;
               end;

               if(C=6)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre6;
                    CadreLast:=FSMenuPrincipal.Cadre7;
               end;

               if(C=7)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre7;
                    CadreLast:=FSMenuPrincipal.Cadre8;
               end;

               if(C=8)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre8;
                    CadreLast:=FSMenuPrincipal.Cadre9;
               end;

               if(C=9)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre9;
                    CadreLast:=FSMenuPrincipal.Cadre10;
               end;

               if(C=10)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre10;
                    CadreLast:=FSMenuPrincipal.Cadre11;
               end;

               if(C=11)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre11;
                    CadreLast:=FSMenuPrincipal.Cadre12;
               end;

               if(C=12)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre12;
                    CadreLast:=FSMenuPrincipal.Cadre13;
               end;

               if(C=13)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre13;
                    CadreLast:=FSMenuPrincipal.Cadre14;
               end;

               if(C=14)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre14;
                    CadreLast:=FSMenuPrincipal.Cadre15;
               end;

               if(C=15)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre15;
                    CadreLast:=FSMenuPrincipal.Cadre16;
               end;

               if(C=16)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre16;
                    CadreLast:=FSMenuPrincipal.Cadre17;
               end;

               if(C=17)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre17;
                    CadreLast:=FSMenuPrincipal.Cadre18;
               end;

               if(C=18)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre18;
                    CadreLast:=FSMenuPrincipal.Cadre19;
               end;

               if(C=19)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre19;
                    CadreLast:=FSMenuPrincipal.Cadre20;
               end;

               if(C=20)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre20;
                    CadreLast:=FSMenuPrincipal.Cadre21;
               end;

               if(C=21)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre21;
                    CadreLast:=FSMenuPrincipal.Cadre22;
               end;

          FSMenuPrincipal.CadreTeste.Color:=CadreFirst.Color;
          CadreFirst.Color:=CadreLast.Color;
          CadreLast.Color:=FSMenuPrincipal.CadreTeste.Color;
          FSMenuPrincipal.EditC.Text:=inttostr(strtoint(FSMenuPrincipal.EditC.Text)+1);

          FSMenuPrincipal.TimerCadreCouleur2.Enabled:=true;
          end;

          if(R=1)then
          begin
               if(C=1)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre1;
                    CadreLast:=FSMenuPrincipal.Cadre2;
               end;

               if(C=2)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre2;
                    CadreLast:=FSMenuPrincipal.Cadre3;
               end;

               if(C=3)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre3;
                    CadreLast:=FSMenuPrincipal.Cadre4;
               end;

               if(C=4)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre4;
                    CadreLast:=FSMenuPrincipal.Cadre5;
               end;

               if(C=5)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre5;
                    CadreLast:=FSMenuPrincipal.Cadre6;
               end;

               if(C=6)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre6;
                    CadreLast:=FSMenuPrincipal.Cadre7;
               end;

               if(C=7)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre7;
                    CadreLast:=FSMenuPrincipal.Cadre8;
               end;

               if(C=8)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre8;
                    CadreLast:=FSMenuPrincipal.Cadre9;
               end;

               if(C=9)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre9;
                    CadreLast:=FSMenuPrincipal.Cadre10;
               end;

               if(C=10)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre10;
                    CadreLast:=FSMenuPrincipal.Cadre11;
               end;

               if(C=11)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre11;
                    CadreLast:=FSMenuPrincipal.Cadre12;
               end;

               if(C=12)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre12;
                    CadreLast:=FSMenuPrincipal.Cadre13;
               end;

               if(C=13)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre13;
                    CadreLast:=FSMenuPrincipal.Cadre14;
               end;

               if(C=14)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre14;
                    CadreLast:=FSMenuPrincipal.Cadre15;
               end;

               if(C=15)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre15;
                    CadreLast:=FSMenuPrincipal.Cadre16;
               end;

               if(C=16)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre16;
                    CadreLast:=FSMenuPrincipal.Cadre17;
               end;

               if(C=17)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre17;
                    CadreLast:=FSMenuPrincipal.Cadre18;
               end;

               if(C=18)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre18;
                    CadreLast:=FSMenuPrincipal.Cadre19;
               end;

               if(C=19)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre19;
                    CadreLast:=FSMenuPrincipal.Cadre20;
               end;

               if(C=20)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre20;
                    CadreLast:=FSMenuPrincipal.Cadre21;
               end;

               if(C=21)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre21;
                    CadreLast:=FSMenuPrincipal.Cadre22;
               end;

          FSMenuPrincipal.CadreTeste.Color:=CadreFirst.Color;
          CadreFirst.Color:=CadreLast.Color;
          CadreLast.Color:=FSMenuPrincipal.CadreTeste.Color;
          FSMenuPrincipal.EditC.Text:=inttostr(strtoint(FSMenuPrincipal.EditC.Text)+1);
          end;

     if(C=21)then
     begin
          //if(R=0)then FSMenuPrincipal.EditR.Text:='1' else FSMenuPrincipal.EditR.Text:='0';
          FSMenuPrincipal.EditC.Text:='1';
     end;

     end;
end;

procedure TFSMenuPrincipal.TimerCadreCouleur2Timer(Sender: TObject);
var R,C:integer; CadreFirst,CadreLast:TPanel;
begin
     R:=strtoint(FSMenuPrincipal.EditR.Text);
     C:=strtoint(FSMenuPrincipal.EditC.Text);

     if(FSMenuPrincipal.EditR.Text<>'')and(FSMenuPrincipal.EditC.Text<>'')then
     begin
          if(R=0)then
          begin
               if(C=1)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre1;
                    CadreLast:=FSMenuPrincipal.Cadre2;
               end;

               if(C=2)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre2;
                    CadreLast:=FSMenuPrincipal.Cadre3;
               end;

               if(C=3)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre3;
                    CadreLast:=FSMenuPrincipal.Cadre4;
               end;

               if(C=4)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre4;
                    CadreLast:=FSMenuPrincipal.Cadre5;
               end;

               if(C=5)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre5;
                    CadreLast:=FSMenuPrincipal.Cadre6;
               end;

               if(C=6)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre6;
                    CadreLast:=FSMenuPrincipal.Cadre7;
               end;

               if(C=7)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre7;
                    CadreLast:=FSMenuPrincipal.Cadre8;
               end;

               if(C=8)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre8;
                    CadreLast:=FSMenuPrincipal.Cadre9;
               end;

               if(C=9)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre9;
                    CadreLast:=FSMenuPrincipal.Cadre10;
               end;

               if(C=10)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre10;
                    CadreLast:=FSMenuPrincipal.Cadre11;
               end;

               if(C=11)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre11;
                    CadreLast:=FSMenuPrincipal.Cadre12;
               end;

               if(C=12)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre12;
                    CadreLast:=FSMenuPrincipal.Cadre13;
               end;

               if(C=13)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre13;
                    CadreLast:=FSMenuPrincipal.Cadre14;
               end;

               if(C=14)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre14;
                    CadreLast:=FSMenuPrincipal.Cadre15;
               end;

               if(C=15)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre15;
                    CadreLast:=FSMenuPrincipal.Cadre16;
               end;

               if(C=16)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre16;
                    CadreLast:=FSMenuPrincipal.Cadre17;
               end;

               if(C=17)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre17;
                    CadreLast:=FSMenuPrincipal.Cadre18;
               end;

               if(C=18)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre18;
                    CadreLast:=FSMenuPrincipal.Cadre19;
               end;

               if(C=19)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre19;
                    CadreLast:=FSMenuPrincipal.Cadre20;
               end;

               if(C=20)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre20;
                    CadreLast:=FSMenuPrincipal.Cadre21;
               end;

               if(C=21)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre21;
                    CadreLast:=FSMenuPrincipal.Cadre22;
               end;

          FSMenuPrincipal.CadreTeste.Color:=CadreFirst.Color;
          CadreFirst.Color:=CadreLast.Color;
          CadreLast.Color:=FSMenuPrincipal.CadreTeste.Color;
          FSMenuPrincipal.EditC.Text:=inttostr(strtoint(FSMenuPrincipal.EditC.Text)+1);
          end;

          if(R=1)then
          begin
               if(C=1)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre1;
                    CadreLast:=FSMenuPrincipal.Cadre2;
               end;

               if(C=2)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre2;
                    CadreLast:=FSMenuPrincipal.Cadre3;
               end;

               if(C=3)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre3;
                    CadreLast:=FSMenuPrincipal.Cadre4;
               end;

               if(C=4)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre4;
                    CadreLast:=FSMenuPrincipal.Cadre5;
               end;

               if(C=5)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre5;
                    CadreLast:=FSMenuPrincipal.Cadre6;
               end;

               if(C=6)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre6;
                    CadreLast:=FSMenuPrincipal.Cadre7;
               end;

               if(C=7)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre7;
                    CadreLast:=FSMenuPrincipal.Cadre8;
               end;

               if(C=8)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre8;
                    CadreLast:=FSMenuPrincipal.Cadre9;
               end;

               if(C=9)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre9;
                    CadreLast:=FSMenuPrincipal.Cadre10;
               end;

               if(C=10)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre10;
                    CadreLast:=FSMenuPrincipal.Cadre11;
               end;

               if(C=11)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre11;
                    CadreLast:=FSMenuPrincipal.Cadre12;
               end;

               if(C=12)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre12;
                    CadreLast:=FSMenuPrincipal.Cadre13;
               end;

               if(C=13)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre13;
                    CadreLast:=FSMenuPrincipal.Cadre14;
               end;

               if(C=14)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre14;
                    CadreLast:=FSMenuPrincipal.Cadre15;
               end;

               if(C=15)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre15;
                    CadreLast:=FSMenuPrincipal.Cadre16;
               end;

               if(C=16)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre16;
                    CadreLast:=FSMenuPrincipal.Cadre17;
               end;

               if(C=17)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre17;
                    CadreLast:=FSMenuPrincipal.Cadre18;
               end;

               if(C=18)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre18;
                    CadreLast:=FSMenuPrincipal.Cadre19;
               end;

               if(C=19)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre19;
                    CadreLast:=FSMenuPrincipal.Cadre20;
               end;

               if(C=20)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre20;
                    CadreLast:=FSMenuPrincipal.Cadre21;
               end;

               if(C=21)then
               begin
                    CadreFirst:=FSMenuPrincipal.Cadre21;
                    CadreLast:=FSMenuPrincipal.Cadre22;
               end;

          FSMenuPrincipal.CadreTeste.Color:=CadreFirst.Color;
          CadreFirst.Color:=CadreLast.Color;
          CadreLast.Color:=FSMenuPrincipal.CadreTeste.Color;
          FSMenuPrincipal.EditC.Text:=inttostr(strtoint(FSMenuPrincipal.EditC.Text)+1);
          end;

     if(C=21)then
     begin
          //if(R=0)then FSMenuPrincipal.EditR.Text:='1' else FSMenuPrincipal.EditR.Text:='0';
          FSMenuPrincipal.EditC.Text:='1';
     end;

     end;
end;

procedure TFSMenuPrincipal.TableauNomFormActiveDblClick(Sender: TObject);
begin
     OpenForm(FSMenuPrincipal.TableauNomFormActive.Cells[1,FSMenuPrincipal.TableauNomFormActive.Row]);
end;

Procedure ControleTimerActivation(TimerAction:TTimer;  Activation:boolean);
begin
     if(Activation=false)then
     begin
          FSMenuPrincipal.RBTimerControleDateExecutionAlerte.Checked:=FSMenuPrincipal.TimerControleDateExecutionAlerte.Enabled;
          FSMenuPrincipal.RBTimerControleSoldeDomiciliation.Checked:=FSMenuPrincipal.TimerControleSoldeDomiciliation.Enabled;
          FSMenuPrincipal.RBTimerControleStockLimite.Checked:=FSMenuPrincipal.TimerControleStockLimite.Enabled;
          FSMenuPrincipal.RBTimerPublicationReseauxProgrammer.Checked:=FSMenuPrincipal.TimerPublicationReseauxProgrammer.Enabled;
          FSMenuPrincipal.RBTimerConnxionServeurClient.Checked:=FSMenuPrincipal.TimerConnxionServeurClient.Enabled;
          FSMenuPrincipal.RBTimerControleConnxionServeurClient.Checked:=FSMenuPrincipal.TimerControleConnxionServeurClient.Enabled;

          if(TimerAction<>FSMenuPrincipal.TimerControleDateExecutionAlerte)then FSMenuPrincipal.TimerControleDateExecutionAlerte.Enabled:=false;
          if(TimerAction<>FSMenuPrincipal.TimerControleSoldeDomiciliation)then FSMenuPrincipal.TimerControleSoldeDomiciliation.Enabled:=false;
          if(TimerAction<>FSMenuPrincipal.TimerControleStockLimite)then FSMenuPrincipal.TimerControleStockLimite.Enabled:=false;
          if(TimerAction<>FSMenuPrincipal.TimerPublicationReseauxProgrammer)then FSMenuPrincipal.TimerPublicationReseauxProgrammer.Enabled:=false;
          if(TimerAction<>FSMenuPrincipal.TimerConnxionServeurClient)then FSMenuPrincipal.TimerConnxionServeurClient.Enabled:=false;
          if(TimerAction<>FSMenuPrincipal.TimerControleConnxionServeurClient)then FSMenuPrincipal.TimerControleConnxionServeurClient.Enabled:=false;
     end
     else
     begin
          if(TimerAction<>FSMenuPrincipal.TimerControleDateExecutionAlerte)then FSMenuPrincipal.TimerControleDateExecutionAlerte.Enabled:=FSMenuPrincipal.RBTimerControleDateExecutionAlerte.Checked;
          if(TimerAction<>FSMenuPrincipal.TimerControleSoldeDomiciliation)then FSMenuPrincipal.TimerControleSoldeDomiciliation.Enabled:=FSMenuPrincipal.RBTimerControleSoldeDomiciliation.Checked;
          if(TimerAction<>FSMenuPrincipal.TimerControleStockLimite)then FSMenuPrincipal.TimerControleStockLimite.Enabled:=FSMenuPrincipal.RBTimerControleStockLimite.Checked;
          if(TimerAction<>FSMenuPrincipal.TimerPublicationReseauxProgrammer)then FSMenuPrincipal.TimerPublicationReseauxProgrammer.Enabled:=FSMenuPrincipal.RBTimerPublicationReseauxProgrammer.Checked;
          if(TimerAction<>FSMenuPrincipal.TimerConnxionServeurClient)then FSMenuPrincipal.TimerConnxionServeurClient.Enabled:=FSMenuPrincipal.RBTimerConnxionServeurClient.Checked;
          if(TimerAction<>FSMenuPrincipal.TimerControleConnxionServeurClient)then FSMenuPrincipal.TimerControleConnxionServeurClient.Enabled:=FSMenuPrincipal.RBTimerControleConnxionServeurClient.Checked;
     end;

     FSMenuPrincipal.RBEtatTimerControleDateExecutionAlerte.Checked:=FSMenuPrincipal.TimerControleDateExecutionAlerte.Enabled;
     FSMenuPrincipal.RBEtatTimerControleSoldeDomiciliation.Checked:=FSMenuPrincipal.TimerControleSoldeDomiciliation.Enabled;
     FSMenuPrincipal.RBEtatTimerControleStockLimite.Checked:=FSMenuPrincipal.TimerControleStockLimite.Enabled;
     FSMenuPrincipal.RBEtatTimerPublicationReseauxProgrammer.Checked:=FSMenuPrincipal.TimerPublicationReseauxProgrammer.Enabled;
     FSMenuPrincipal.RBEtatTimerConnxionServeurClient.Checked:=FSMenuPrincipal.TimerConnxionServeurClient.Enabled;
     FSMenuPrincipal.RBEtatTimerControleConnxionServeurClient.Checked:=FSMenuPrincipal.TimerControleConnxionServeurClient.Enabled;

     if(TimerAction=FSMenuPrincipal.TimerControleDateExecutionAlerte)then FSMenuPrincipal.EtatRBEtatTimerControleDateExecutionAlerte.Color:=clGray else FSMenuPrincipal.EtatRBEtatTimerControleDateExecutionAlerte.Color:=clSilver;
     if(TimerAction=FSMenuPrincipal.TimerControleSoldeDomiciliation)then FSMenuPrincipal.EtatRBEtatTimerControleSoldeDomiciliation.Color:=clGray else FSMenuPrincipal.EtatRBEtatTimerControleSoldeDomiciliation.Color:=clSilver;
     if(TimerAction=FSMenuPrincipal.TimerControleStockLimite)then FSMenuPrincipal.EtatRBEtatTimerControleStockLimite.Color:=clGray else FSMenuPrincipal.EtatRBEtatTimerControleStockLimite.Color:=clSilver;
     if(TimerAction=FSMenuPrincipal.TimerPublicationReseauxProgrammer)then FSMenuPrincipal.EtatRBEtatTimerPublicationReseauxProgrammer.Color:=clGray else FSMenuPrincipal.EtatRBEtatTimerPublicationReseauxProgrammer.Color:=clSilver;
     if(TimerAction=FSMenuPrincipal.TimerConnxionServeurClient)then FSMenuPrincipal.EtatRBEtatTimerConnxionServeurClient.Color:=clGray else FSMenuPrincipal.EtatRBEtatTimerConnxionServeurClient.Color:=clSilver;
     if(TimerAction=FSMenuPrincipal.TimerControleConnxionServeurClient)then FSMenuPrincipal.EtatRBEtatTimerControleConnxionServeurClient.Color:=clGray else FSMenuPrincipal.EtatRBEtatTimerControleConnxionServeurClient.Color:=clSilver;
end;

procedure TFSMenuPrincipal.Fichercente1Click(Sender: TObject);
begin
     OpenForm(FSMenuPrincipal.TableauNomFormActive.Cells[1,strtointeger(FSMenuPrincipal.TableauNomFormActive.Cells[0,0])]);
end;

procedure TFSMenuPrincipal.Redmarer1Click(Sender: TObject);
begin
     FSApplicationTerminate.Show;
     FSApplicationTerminate.AfficheApplicationTerminate.Caption:='Voulez vous redémarrer Business-Proces ?';
     FSApplicationTerminate.BitOK.SetFocus;

     FSApplicationTerminate.EditApplicationTerminate.Text:='Redémarrer';

     FSApplicationTerminate.RBCodeFondateurParDefaut.Checked:=false;
end;

procedure TFSMenuPrincipal.ConfigurationTableauxCols1Click(
  Sender: TObject);
begin
     FSConfigurationTableauxCols.Show;
end;

procedure TFSMenuPrincipal.AutresParamtres1Click(Sender: TObject);
begin
     if not AccesPrivilegies('FS Paramètres avancés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSParametresAvances.Show;
     FSParametresAvances.PageAutresParametres.Show;
     FSParametresAvances.EditNomPageShow.Text:='PageAutresParametres';

     FSParametresAvances.PagePrincipale.Enabled:=false;
     FSParametresAvances.EditCodeActivation.Text:='';
     FSParametresAvances.EditCodeActivation.SetFocus;

     FSParametresAvances.RBModificationOpere.Checked:=false;
end;

Function ChercherAvisUniqueX(NumAvis,Adresse:string; var PositionAvisX:string):boolean;
var  iAU,R:integer;  OKAvis:boolean; 
begin
     ChercherAvisUniqueX:=false;
     PositionAvisX:='';

     ChAvisCopieX:=Adresse;
     assignfile(FAvisCopieX,ChAvisCopieX);
     if FileExists(ChAvisCopieX)then
     begin
          try
          Reset(FAvisCopieX);
          Seek(FAvisCopieX,0);
          OKAvis:=false;
          iAU:=0;
          while not eof(FAvisCopieX)and(OKAvis=false)do
          begin
               read(FAvisCopieX,RAvisCopieX);
               if(RAvisCopieX.NumAvis=strtointeger(NumAvis))then
               begin
                    OKAvis:=true;
                    PositionAvisX:=inttostr(iAU);
               end;
          iAU:=iAU+1;
          end;
          finally
          CloseFile(FAvisCopieX);
          end;
     end;

     ChercherAvisUniqueX:=OKAvis;
end;

procedure TFSMenuPrincipal.Choisirunemplacement1Click(Sender: TObject);
begin
     FSSauvegarderBaseDonnees.Show;
     FSSauvegarderBaseDonnees.EditTypeRequette.Text:='Emregistrement';
end;

procedure TFSMenuPrincipal.Danslerpertoirelocal1Click(Sender: TObject);
var  AdresseProces,NomDossierPartageOut,EmlacementLocalOuReseauxOut:string;
     AdresseSource,AdresseCible,Separator:string; RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression:boolean;
begin
     RBPossibleAnnuler:=true;           //Préserver la possibilité d'annuler l'opération.
     RBChangeNomSiCollision:=false; //Si le fichier cible existe déjà, il le copie sous un nom du style copie (1) de..
     RBSansConfirmation:=false;         //Pas de demande de confirmation
     RBSansProgression:=false;           //Ne pas voir la progression se faire (On le la voit que pour les opérations longues)

     AdresseProces:=ProcAdresseDossierPartageReseaux('','Local',NomDossierPartageOut,EmlacementLocalOuReseauxOut);

     if(DirectoryExists(AdresseProces))then
     begin
          OpenFParc(RParc);
          AdresseSource:=RParc.Parcours;
          AdresseCible:=AdresseProces;
          if(lastlaters(AdresseCible,1)='\')
          then Separator:=''
          else Separator:='\';

          if(AdresseSource<>AdresseCible+Separator+ExtractFileName(AdresseSource))then
          begin
               if(not DirectoryExists(AdresseCible+Separator+ExtractFileName(AdresseSource)))then
               begin
                    if(nonoui('voulez vous copier dans '+AdresseCible))then
                    begin
                         ProcCopierFichier(AdresseSource,AdresseCible,Handle,RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression)
                    end;
               end
               else
               begin
                    if(RBChangeNomSiCollision=true)then
                    begin
                         if(nonoui('La base de données '+AdresseCible+Separator+ExtractFileName(AdresseSource)+' existe déjà, voulez vous enregistré une autre copie !')=true)then
                         begin
                              ProcCopierFichier(AdresseSource,AdresseCible,Handle,RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression)
                         end;
                    end
                    else
                    begin
                         if(nonoui('La base de données '+AdresseCible+Separator+ExtractFileName(AdresseSource)+' existe déjà, voulez vous la remplacer !')=true)then
                         begin
                              ProcCopierFichier(AdresseSource,AdresseCible,Handle,RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression)
                         end;
                    end;
               end;
          end
          else
          begin
               showmessage('Copie impossible pour la même adresse !');
          end;
     end
     else
     begin
          if(AdresseProces<>'')
          then showmessage('Attention ! '+AdresseProces+' n''existe pas !')
          else
          begin
               if(NonOui('Attention ! Le dossier partagé local n''existe pas ! Voulez vous le crié ?'))then
               begin
                    FSGenerateurBase.Show;
                    FSGenerateurBase.PageGenerateurBaseAvis.Show;
                    FSGenerateurBase.PageGenerateurAdresseDossierPartageReseaux.Show;

                    ListeAdresseDossierPartageReseaux(FSGenerateurBase.TableauAdresseDossierPartageReseaux,false,false,True);
               end;
          end;
     end;
end;

procedure TFSMenuPrincipal.Danslerseaux1Click(Sender: TObject);
Var  AdresseSource,AdresseCible,Separator:string; RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression:boolean; AdresseProces:string;
begin
     RBPossibleAnnuler:=true;           //Préserver la possibilité d'annuler l'opération.
     RBChangeNomSiCollision:=false; //Si le fichier cible existe déjà, il le copie sous un nom du style copie (1) de..
     RBSansConfirmation:=false;         //Pas de demande de confirmation
     RBSansProgression:=false;           //Ne pas voir la progression se faire (On le la voit que pour les opérations longues)

     OpenFParc(RParc);
     AdresseSource:=RParc.Parcours;

     //OpenFParc(RParc);
     ChAdresseDossierPartageReseaux:=RParc.Parcours+'\'+Exercice+'FAdresseDossierPartageReseaux';
     assignfile(FAdresseDossierPartageReseaux,ChAdresseDossierPartageReseaux);
     try
     if FileExists(ChAdresseDossierPartageReseaux)then
     Reset(FAdresseDossierPartageReseaux)
     else Rewrite(FAdresseDossierPartageReseaux);
     Seek(FAdresseDossierPartageReseaux,0);
     while not eof(FAdresseDossierPartageReseaux)do
     begin
          read(FAdresseDossierPartageReseaux,RAdresseDossierPartageReseaux);

          AdresseProces:=RAdresseDossierPartageReseaux.AdresseDossierPartageReseaux;

          if(DirectoryExists(AdresseProces))then
          begin
               AdresseCible:=AdresseProces;
               if(lastlaters(AdresseCible,1)='\')
               then Separator:=''
               else Separator:='\';

               if(AdresseSource<>AdresseCible+Separator+ExtractFileName(AdresseSource))then
               begin
                    if(not DirectoryExists(AdresseCible+Separator+ExtractFileName(AdresseSource)))then
                    begin
                         if(nonoui('voulez vous copier dans '+AdresseCible))then
                         begin
                              ProcCopierFichier(AdresseSource,AdresseCible,Handle,RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression)
                         end;
                    end
                    else
                    begin
                         if(RBChangeNomSiCollision=true)then
                         begin
                              if(nonoui('La base de données '+AdresseCible+Separator+ExtractFileName(AdresseSource)+' existe déjà, voulez vous enregistré une autre copie !')=true)then
                              begin
                                   ProcCopierFichier(AdresseSource,AdresseCible,Handle,RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression)
                              end;
                         end
                         else
                         begin
                              if(nonoui('La base de données '+AdresseCible+Separator+ExtractFileName(AdresseSource)+' existe déjà, voulez vous la remplacer !')=true)then
                              begin
                                   ProcCopierFichier(AdresseSource,AdresseCible,Handle,RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression)
                              end;
                         end;
                    end;
               end
               else
               begin
                    showmessage('Copie impossible pour la même adresse !');
               end;
          end
          else
          begin
               showmessage('Attention ! '+AdresseProces+' n''existe pas !');
          end;
     end;
     finally
     CloseFile(FAdresseDossierPartageReseaux);
     end;
end;

Procedure ProcCopierFichier(AdresseSource,AdresseCible:string; Handle:HWND; RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression:boolean);
var  FlagsOptions: FILEOP_FLAGS;
begin
     FlagsOptions:=0;
     if(RBPossibleAnnuler=true)      then FlagsOptions:=FlagsOptions+ FOF_ALLOWUNDO;
     if(RBChangeNomSiCollision=true) then FlagsOptions:=FlagsOptions+ FOF_RENAMEONCOLLISION;
     if(RBSansConfirmation=true)     then FlagsOptions:=FlagsOptions+ FOF_NOCONFIRMATION;
     if(RBSansProgression=true)      then FlagsOptions:=FlagsOptions+ FOF_SILENT;

     copier(handle,AdresseSource,AdresseCible,FlagsOptions);
end;

procedure copier(Handle:HWND;Source,Cible:String; FlagsOptions: FILEOP_FLAGS);
var
  lpFileOp:TSHFileOpStructA;
  TabFrom:array[0..255] of char;
  i:integer;
begin
     For i:=0 to length(Source)-1 do TabFrom[i]:=Source[i+1];
     // pFrom peut contenir plusieurs noms de fichier.
     //Les noms doivent être séparés par le caractère #0.
     // d'après mes essais, le dernier nom de fichier doit être suivi
     //de deux caractères #0.
     TabFrom[length(Source)]:=#0;
     TabFrom[length(Source)+1]:=#0;

    {-----préparation du paramètre lpFileOp qui sera passé en paramètre
     à SHFileOperation -----}
     lpFileOp.Wnd:=handle;
     lpFileOp.wFunc:=FO_COPY; // l'action sera une copie
     lpFileOp.pFrom:=TabFrom; // contient le ou les fichiers /dossiers à recopier
     lpFileOp.pTo:=PAnsiChar(Cible);   // ce vers quoi on recopie
     lpFileOp.fFlags:=FlagsOptions;
     { fin de la préparation du paramètre lpFileOp}

     SHFileOperation(lpFileOp); // procède à la copie
end;

procedure TFSMenuPrincipal.Copielibre1Click(Sender: TObject);
begin
     FSCopieLibre.Show;
     FSCopieLibre.EditSource.Text:='';
     FSCopieLibre.EditCible.Text:='';
end;

procedure TFSMenuPrincipal.MiseJourB1Click(Sender: TObject);
var  AdresseSource,AdresseCible,ApplicationExe,Separator:string; RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression,OKMiseAJour,OKVerifierAdresseMAJ:boolean; AdresseProces:string;
     AdresseExecutionProces:string;
begin
     OKVerifierAdresseMAJ:=false;

     if(DirectoryExists(ProcAdresseMiseAJourBusinessProces))then
     begin
           AdresseSource:=ProcAdresseMiseAJourBusinessProces+'\'+ExtractFileName(application.ExeName);
           if FileExists(AdresseSource)then
           begin
                 AdresseCible:=application.ExeName;

                 if(AdresseSource=AdresseCible)then
                 begin
                      showmessage('Mise à jour impossible ! La source et la cible identique.');
                      Exit;
                 end;

                 if(ExtractFileName(AdresseSource)=ExtractFileName(application.ExeName))then
                 begin
                      if(nonoui('Voulez vous mètre à jour '+ExtractFileName(application.ExeName)+' ?'))then
                      begin
                           if(TimeCreationFichier(AdresseCible)>TimeCreationFichier(AdresseSource))then
                           begin
                                OKMiseAJour:=nonoui('La mise à jour est obsolète ! La cible est plus récente que la source ! Voulez vous continué ?');
                           end
                           else
                           begin
                                OKMiseAJour:=true;
                           end;

                           if(OKMiseAJour=true)then
                           begin
                                AdresseSource:=AdresseSource;
                                AdresseCible:=AdresseCible;
                                ApplicationExe:=application.ExeName;
                                EnregistrementParametresTransfertDatas(true,AdresseSource,AdresseCible,ApplicationExe);

                                AdresseExecutionProces:=ExtractFilePath(Application.ExeName)+'\'+'ProjectTransfertDatas.exe';
                                if(AdresseExecutionProces<>'')
                                then ShellExecute(Handle,'Open',PChar(AdresseExecutionProces),nil,nil,SW_SHOWDEFAULT);
                                Application.Terminate;
                           end
                           else Exit;
                      end
                      else Exit;
                 end
                 else
                 begin
                      if(nonoui('Attention ! '+ExtractFileName(AdresseSource)+' n''est pas une mise à jour ! Voulez vous vérifier ?'))then
                      begin
                           OKVerifierAdresseMAJ:=true;
                      end;
                 end;
           end
           else
           begin
                if(nonoui('Aucune mise à jour disponible dans '+ProcAdresseMiseAJourBusinessProces+' ! Voulez vous vérifier ?'))then
                begin
                     OKVerifierAdresseMAJ:=true;
                end;
           end;
     end
     else
     begin
          if(ProcAdresseMiseAJourBusinessProces='')then
          begin
               if(nonoui('Aucune adresse, de mise à jour, enregistrée ! Voulez vous vérifier ?'))then
               begin
                    OKVerifierAdresseMAJ:=true;
               end;
          end
          else
          begin
               if(nonoui('adresse, de mise à jour, introuvable '+ProcAdresseMiseAJourBusinessProces+' ! Voulez vous vérifier ?'))then
               begin
                    OKVerifierAdresseMAJ:=true;
               end;
          end;
     end;

     if(OKVerifierAdresseMAJ=true)then
     begin
          FSParametresAvances.Show;
          FSParametresAvances.PageModeConnectiviteBaseData.Show;
          FSParametresAvances.PagePrincipale.Enabled:=false;
          FSParametresAvances.EditCodeActivation.Text:='';
          FSParametresAvances.EditCodeActivation.SetFocus;
     end;
end;

procedure TFSMenuPrincipal.AutoPublication1Click(Sender: TObject);
var  TravauxConnexionReseaux,ActiverPublicationReseaux,SuspendrePublication:boolean;
begin

if(FSPublicationReseaux.RBPublicationActive.Checked=false)then
begin
     FSPublicationReseaux.AfficheMessage.Caption:='Patientez SVP ! Publication réseaux activée !';
     FSPublicationReseaux.Show;
     FormeAvantPlan(FSMenuPrincipal,FSPublicationReseaux,true);
     FSPublicationReseaux.TimerPublicationReseaux.Enabled:=true;

     ControleTimerActivation(FSMenuPrincipal.TimerOptimisation,false);

     FSMenuPrincipal.EditRapport.Text:='';
     OpenFParc(RParc);
     ChAdresseProces:=RParc.Parcours+'\'+Exercice+'FAdresseProces';
     assignfile(FAdresseProces,ChAdresseProces);
     if FileExists(ChAdresseProces)then
     begin
          try
          Reset(FAdresseProces);
          if(filesize(FAdresseProces)>0)then FSMenuPrincipal.AfficheRapport.Visible:=FunctAfficherRapportPublicationReseaux;
          finally
          CloseFile(FAdresseProces);
          end;
     end;

     FSMenuPrincipal.InfoPublicationReseauxProgrammer.Caption:='Instance';

     try

     TravauxConnexionReseaux :=false;
     ActiverPublicationReseaux:=false;

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     begin
          try
          Reset(FActiverPublicationReseaux);
          Seek(FActiverPublicationReseaux,0);
          if not eof(FActiverPublicationReseaux)then
          begin
               read(FActiverPublicationReseaux,RActiverPublicationReseaux);  Application.ProcessMessages;
               TravauxConnexionReseaux :=RActiverPublicationReseaux.TravauxConnexionReseaux;
               ActiverPublicationReseaux:=RActiverPublicationReseaux.ActiverPublicationReseaux;
               RActiverPublicationReseaux.TravauxConnexionReseaux:=true;
               RActiverPublicationReseaux.ActiverPublicationReseaux:=true;
               Seek(FActiverPublicationReseaux,0);
               write(FActiverPublicationReseaux,RActiverPublicationReseaux);
          end;
          finally
          CloseFile(FActiverPublicationReseaux);
          end;
     end;
     FSMenuPrincipal.RBConnectiviteReseaux.Checked:=TravauxConnexionReseaux;//FTravauxConnexionReseaux;

     PublierDansLeReseaux('','','',FSMenuPrincipal.RBImporteAutorisationReseaux.Checked);

     finally

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     begin
          try
          Reset(FActiverPublicationReseaux);
          Seek(FActiverPublicationReseaux,0);
          if not eof(FActiverPublicationReseaux)then
          begin
               read(FActiverPublicationReseaux,RActiverPublicationReseaux); Application.ProcessMessages;
               RActiverPublicationReseaux.TravauxConnexionReseaux:=TravauxConnexionReseaux;
               RActiverPublicationReseaux.ActiverPublicationReseaux:=ActiverPublicationReseaux;
               Seek(FActiverPublicationReseaux,0);
               write(FActiverPublicationReseaux,RActiverPublicationReseaux);
          end;
          finally
          CloseFile(FActiverPublicationReseaux);
          end;
     end;
     FSMenuPrincipal.RBConnectiviteReseaux.Checked:=TravauxConnexionReseaux;//FTravauxConnexionReseaux;
     end;
     
     FSMenuPrincipal.InfoPublicationReseauxProgrammer.Caption:='';

     ControleTimerActivation(FSMenuPrincipal.TimerOptimisation,true);
end;

end;

procedure TFSMenuPrincipal.Choisirunemplacement2Click(Sender: TObject);
begin
     FSSauvegarderBaseDonnees.Show;
     FSSauvegarderBaseDonnees.EditTypeRequette.Text:='Publication';
end;

procedure TFSMenuPrincipal.danslerpertoirelocal2Click(Sender: TObject);
var  AdresseProces,NomDossierPartageOut,EmlacementLocalOuReseauxOut:string;
     AdresseSource,AdresseCible,Separator:string; RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression:boolean;
begin
     RBPossibleAnnuler:=true;           //Préserver la possibilité d'annuler l'opération.
     RBChangeNomSiCollision:=false; //Si le fichier cible existe déjà, il le copie sous un nom du style copie (1) de..
     RBSansConfirmation:=false;         //Pas de demande de confirmation
     RBSansProgression:=false;           //Ne pas voir la progression se faire (On le la voit que pour les opérations longues)

     AdresseProces:=ProcAdresseDossierPartageReseaux('','Local',NomDossierPartageOut,EmlacementLocalOuReseauxOut);

     if(DirectoryExists(AdresseProces))then
     begin
          OpenFParc(RParc);
          AdresseSource:=application.ExeName;
          AdresseCible:=AdresseProces;
          if(lastlaters(AdresseCible,1)='\')
          then Separator:=''
          else Separator:='\';

          if(AdresseSource<>AdresseCible+Separator+ExtractFileName(AdresseSource))then
          begin
               if(not DirectoryExists(AdresseCible+Separator+ExtractFileName(AdresseSource)))then
               begin
                    if(nonoui('voulez vous copier '+ExtractFileName(AdresseSource)+' dans '+AdresseCible))then
                    begin
                         ProcCopierFichier(AdresseSource,AdresseCible,Handle,RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression)
                    end;
               end
               else
               begin
                    if(RBChangeNomSiCollision=true)then
                    begin
                         if(nonoui('Le système '+AdresseCible+Separator+ExtractFileName(AdresseSource)+' existe déjà, voulez vous enregistré une autre copie !')=true)then
                         begin
                              ProcCopierFichier(AdresseSource,AdresseCible,Handle,RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression)
                         end;
                    end
                    else
                    begin
                         if(nonoui('Le système '+AdresseCible+Separator+ExtractFileName(AdresseSource)+' existe déjà, voulez vous le remplacer !')=true)then
                         begin
                              ProcCopierFichier(AdresseSource,AdresseCible,Handle,RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression)
                         end;
                    end;
               end;
          end
          else
          begin
               showmessage('Copie impossible pour la même adresse !');
          end;
     end
     else
     begin
          if(AdresseProces<>'')
          then showmessage('Attention ! '+AdresseProces+' n''existe pas !')
          else
          begin
               if(NonOui('Attention ! Le dossier partagé local n''existe pas ! Voulez vous le crié ?'))then
               begin
                    FSGenerateurBase.Show;
                    FSGenerateurBase.PageGenerateurBaseAvis.Show;
                    FSGenerateurBase.PageGenerateurAdresseDossierPartageReseaux.Show;

                    ListeAdresseDossierPartageReseaux(FSGenerateurBase.TableauAdresseDossierPartageReseaux,false,false,True);
               end;
          end;
     end;
end;

procedure TFSMenuPrincipal.TimerAfficheRBConnectiviteReseauxTimer(
  Sender: TObject);
begin
     Application.ProcessMessages;
EXIT;     
     if(FSMenuPrincipal.RBConnectiviteReseaux.Checked=true)then//if(FunctionTravauxConnexionReseaux=true)then
     begin
          if(FSMenuPrincipal.AfficheRBConnectiviteReseaux.Color=clBtnFace)
          then FSMenuPrincipal.AfficheRBConnectiviteReseaux.Color:=clYellow
          else FSMenuPrincipal.AfficheRBConnectiviteReseaux.Color:=clBtnFace;
     end
     else
     begin
          FSMenuPrincipal.AfficheRBConnectiviteReseaux.Color:=clBtnFace;
     end;
end;

procedure TFSMenuPrincipal.Codebarre1Click(Sender: TObject);
begin
     FSEtiquettesCodeBarre.Show;
end;

procedure TFSMenuPrincipal.tiquette1Click(Sender: TObject);
begin
     FSTicketTexte.Show;
     FSTicketTexte.PageTicket.Show;
end;

procedure TFSMenuPrincipal.EditDetailRapportDblClick(Sender: TObject);
begin
     if(FSMenuPrincipal.EditDetailRapport.Height=10)
     then FSMenuPrincipal.EditDetailRapport.Height:=200
     else FSMenuPrincipal.EditDetailRapport.Height:=10;
end;

Procedure ArreterOrdinateur;
var sTokenIn,sTokenOut : TTOKENPRIVILEGES ;
    dwLen : DWORD ;
    hCurrentProcess,hToken : THANDLE ;
    Luid1 : TLargeInteger ;  // LUID ;
begin
     // Handle du process en cours
     hCurrentProcess := GetCurrentProcess ;
     OpenProcessToken (hCurrentProcess,TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, hToken);
     // valeur du privilege SHUTDOWN
     LookupPrivilegeValue(nil,'SeShutdownPrivilege',Luid1) ;
     sTokenIn.PrivilegeCount := 1;
     sTokenIn.Privileges[0].Luid := Luid1;
     sTokenIn.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;
     // Ajustement du privilege avec les nouvelles valeurs
     AdjustTokenPrivileges ( hToken, FALSE, sTokenIn,sizeof(TTOKENPRIVILEGES),sTokenOut, dwLen);
     CloseHandle (hToken);
     ExitWindowsEx(EWX_SHUTDOWN {or EWX_FORCE}, 0) ;//Sortie NT
end;

Procedure AppliquerMiseAJourData;
var  i,IncFormule,PBegin,PEnd,Resultat,Reste:integer;
     DateTrue,OKMiseAJour,OKMiseAJourParametreTaxeAjoutes,OKMiseAJourListeMouvement,OKMiseAJourTiers,OKMiseAJourMouvement,OKMiseAJourAvis,OKMiseAJourProjetFinance:boolean;
     TypeProces,FichierConcerne,FichierConserne,FichierConcerneFormule,Adresse,NomDossierPartageOut,EmlacementLocalOuReseauxOut:string;
     RegistrePositionListeMouvementParPeriode:RegistrePositionListeMouvementParPeriodeS;
     ChMouvementAdresse,IdentificateurTiers,Extention:string;
     PositionTypeAvis,NumTypeAvis,SigneDebitCredit:integer;
     CompteImputation,DebitCredit,DebitCreditAvis,JourneauxAuxiliaireUtilise,TypeProcesRecherche,FichierconcerneRecherche:string;
begin
     OKMiseAJour:=FSMenuPrincipal.RBConfirmationAppliquerMiseAJourData.Checked;

     if(OKMiseAJour=true)then
     begin
          OKMiseAJourListeMouvement:=false;//FSMenuPrincipal.RBConfirmationAppliquerMiseAJourData.Checked;
          OKMiseAJourTiers:=true;//FSMenuPrincipal.RBConfirmationAppliquerMiseAJourData.Checked;
          OKMiseAJourMouvement:=false;//FSMenuPrincipal.RBConfirmationAppliquerMiseAJourData.Checked;
          OKMiseAJourAvis:=false;//FSMenuPrincipal.RBConfirmationAppliquerMiseAJourData.Checked;
          OKMiseAJourProjetFinance:=true;//FSMenuPrincipal.RBConfirmationAppliquerMiseAJourData.Checked;
          OKMiseAJourParametreTaxeAjoutes:=true;
     end
     else
     begin
          OKMiseAJourTiers:=false;
          OKMiseAJourListeMouvement:=false;
          OKMiseAJourTiers:=false;
          OKMiseAJourMouvement:=false;
          OKMiseAJourAvis:=false;
          OKMiseAJourProjetFinance:=false;
          OKMiseAJourParametreTaxeAjoutes:=false;
     end;

     if(OKMiseAJourListeMouvement=true)then
     begin
           //////////////////////////////ListeMouvementX/////////////////////////////////
           TypeProces:='Business';
           FichierConcerne:='FListeMouvement';

           Adresse:='';
           if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
           end;

           ChListeMouvementCopie:=Adresse+' Utilisateur';
           assignfile(FListeMouvementCopie,ChListeMouvementCopie);
           if not FileExists(ChListeMouvementCopie)then
           begin
                try
                Rewrite(FListeMouvementCopie);
                Seek(FListeMouvementCopie,0);
                Truncate(FListeMouvementCopie);

                ChListeMouvementX:=Adresse;
                assignfile(FListeMouvementX,ChListeMouvementX);
                try
                if FileExists(ChListeMouvementX)then
                Reset(FListeMouvementX)
                else begin affichermessage('Attention ! {'+ChListeMouvementX+'} n''existe pas !'); exit; end;//Rewrite(FListeMouvementX);
                Seek(FListeMouvementX,0);
                i:=0;
                while not eof(FListeMouvementX)do
                begin
                     read(FListeMouvementX,RListeMouvementX);

                     RListeMouvementCopie.OrdreListeMouvement:=RListeMouvementX.OrdreListeMouvement;
                     RListeMouvementCopie.NumListeMouvement:=RListeMouvementX.NumListeMouvement;
                     RListeMouvementCopie.PositionTypeMouvement:=RListeMouvementX.PositionTypeMouvement;
                     RListeMouvementCopie.PositionMouvement:=RListeMouvementX.PositionMouvement;
                     RListeMouvementCopie.ReferenceSourceListeMouvement:=RListeMouvementX.ReferenceSourceListeMouvement;
                     RListeMouvementCopie.DateMouvement:=RListeMouvementX.DateMouvement;
                     RListeMouvementCopie.CodeTypeFormule:=RListeMouvementX.CodeTypeFormule;
                     RListeMouvementCopie.TypeProces:=RListeMouvementX.TypeProces;
                     RListeMouvementCopie.FichierTiersConserne:=RListeMouvementX.FichierTiersConserne;
                     RListeMouvementCopie.CodeTiers:=RListeMouvementX.CodeTiers;
                     RListeMouvementCopie.DataTiersSupplementaire:=RListeMouvementX.DataTiersSupplementaire;
                     RListeMouvementCopie.MontantMouvement:=RListeMouvementX.MontantMouvement;
                     RListeMouvementCopie.NumProjetFinance:=RListeMouvementX.NumProjetFinance;
                     RListeMouvementCopie.NumDomiciliation:=RListeMouvementX.NumDomiciliation;
                     RListeMouvementCopie.Domiciliation:=RListeMouvementX.Domiciliation; /////////////////////
                     RListeMouvementCopie.ModePaiement:=RListeMouvementX.ModePaiement;
                     RListeMouvementCopie.NumPiece:=RListeMouvementX.NumPiece;
                     RListeMouvementCopie.DateExecutionMouvement:=RListeMouvementX.DateExecutionMouvement;
                     RListeMouvementCopie.CodePaysExecutionMouvement:=RListeMouvementX.CodePaysExecutionMouvement;
                     RListeMouvementCopie.CodeWilayaExecutionMouvement:=RListeMouvementX.CodeWilayaExecutionMouvement;
                     RListeMouvementCopie.CodeDairaExecutionMouvement:=RListeMouvementX.CodeDairaExecutionMouvement;
                     RListeMouvementCopie.CodeCommuneExecutionMouvement:=RListeMouvementX.CodeCommuneExecutionMouvement;
                     RListeMouvementCopie.CodeZoneExecutionMouvement:=RListeMouvementX.CodeZoneExecutionMouvement;
                     RListeMouvementCopie.AdresseExecutionMouvement:=RListeMouvementX.AdresseExecutionMouvement;
                     RListeMouvementCopie.OKExecution:=RListeMouvementX.OKExecution;
                     RListeMouvementCopie.OrdreListeMouvementAppartenant:=RListeMouvementX.OrdreListeMouvementAppartenant;
                     RListeMouvementCopie.ListeNumAvis:=RListeMouvementX.ListeNumAvis;
                     RListeMouvementCopie.SourceName:=RListeMouvementX.SourceName;
                     RListeMouvementCopie.DataSourceName:=RListeMouvementX.DataSourceName;
                     RListeMouvementCopie.ValidationListeMouvement:=RListeMouvementX.ValidationListeMouvement; ///////////////
                     //RListeMouvementCopie.PositionDetailMouvementBegin:=RListeMouvementX.PositionDetailMouvementBegin;
                     //RListeMouvementCopie.PositionDetailMouvementEnd:=RListeMouvementX.PositionDetailMouvementEnd;
                     RListeMouvementCopie.CodeUtilisateur:=FSMenuPrincipal.EditCodeUtilisateur.Text;
                     RListeMouvementCopie.MatriculeResponsablePrelevement:='';
                     RListeMouvementCopie.TypeVehiculePrelevement:='';
                     RListeMouvementCopie.TonageVehiculePrelevement:='';
                     RListeMouvementCopie.CodeResponsablePrelevement:='';
                     RListeMouvementCopie.NomResponsablePrelevement:='';
                     RListeMouvementCopie.PrenomResponsablePrelevement:='';
                     RListeMouvementCopie.IndiceInialPontBascule:=0;
                     RListeMouvementCopie.IndiceFinalPontBascule:=0;
                     RListeMouvementCopie.DateIndiceInial:='';
                     RListeMouvementCopie.HeureIndiceInial:='';
                     RListeMouvementCopie.DateIndiceFinal:='';
                     RListeMouvementCopie.HeureIndiceFinal:='';
                     RListeMouvementCopie.NumeroPont:='';

                     Seek(FListeMouvementCopie,i);
                     write(FListeMouvementCopie,RListeMouvementCopie);
                     i:=i+1;
                end;

                ChListeMouvement:=Adresse;
                assignfile(FListeMouvement,ChListeMouvement);
                try
                if FileExists(ChListeMouvement)then
                Reset(FListeMouvement)
                else Rewrite(FListeMouvement);
                Seek(FListeMouvement,0);
                Truncate(FListeMouvement);

                LibererMemoireProcessus('BusinessProces.exe',true);

                i:=0;
                Seek(FListeMouvementCopie,0);
                while not eof(FListeMouvementcopie)do
                begin
                     read(FListeMouvementCopie,RListeMouvementCopie);
                     Seek(FListeMouvement,i);
                     write(FListeMouvement,RListeMouvementCopie);
                     i:=i+1;
                end;
                finally
                CloseFile(FListeMouvementcopie);
                end;
                finally
                CloseFile(FListeMouvement);
                end;
                finally
                CloseFile(FListeMouvementX);
                end;

                showmessage('Mise à jour '+FichierConcerne+' exécuté avec succès !');
           end
           else showmessage('Mise à jour '+FichierConcerne+' déjà exécuté !');

           LibererMemoireProcessus('BusinessProces.exe',true);
           //////////////////////////////////////////////////////////////////////////
     end;

     Extention:='';
     if(OKMiseAJourTiers=true)and(Extention<>'')then
     begin
           //////////////////////////////TiersXX/////////////////////////////////
           TypeProces:='Business';   FichierConcerne:='FTypeFichierTiers';
           if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
           end;

           ChTypeFichierTiers:=Adresse;
           assignfile(FTypeFichierTiers,ChTypeFichierTiers);
           try
           if FileExists(ChTypeFichierTiers)then
           Reset(FTypeFichierTiers)
           else Rewrite(FTypeFichierTiers);
           Seek(FTypeFichierTiers,0);
           while not eof(FTypeFichierTiers)do
           begin
                read(FTypeFichierTiers,RTypeFichierTiers);

                if((RTypeFichierTiers.TypeProces='Commercial')or(RTypeFichierTiers.TypeProces='Business'))then
                begin
                      FichierConcerne:=RTypeFichierTiers.FichierConcerne;

                      if(FichierConcerne<>'FProjetFinance')
                      then
                      begin
                            Adresse:='';
                            if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                            begin
                                 AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
                            end;

                            ChTiersCopie:=Adresse+' '+Extention;
                            assignfile(FTiersCopie,ChTiersCopie);
                            if not FileExists(ChTiersCopie)then
                            begin
                                 try
                                 Rewrite(FTiersCopie);
                                 Seek(FTiersCopie,0);
                                 Truncate(FTiersCopie);

                                 ChTiersXX:=Adresse;
                                 assignfile(FTiersXX,ChTiersXX);
                                 try
                                 if FileExists(ChTiersXX)then
                                 Reset(FTiersXX)
                                 else begin affichermessage('Attention ! {'+ChTiersXX+'} n''existe pas !'); exit; end;//Rewrite(FTiersXX);
                                 Seek(FTiersXX,0);
                                 i:=0;
                                 while not eof(FTiersXX)do
                                 begin
                                      read(FTiersXX,RTiersXX);

                                      RTiersCopie.CodeTiers:=RTiersXX.CodeTiers;
                                      RTiersCopie.NomTiers:=RTiersXX.NomTiers;
                                      RTiersCopie.PrenomTiers:=RTiersXX.PrenomTiers;
                                      RTiersCopie.DateNaisTiers:=RTiersXX.DateNaisTiers;
                                      RTiersCopie.LieuNaisTiers:=RTiersXX.LieuNaisTiers;
                                      RTiersCopie.NaturePieceIdentiteTiers:=RTiersXX.NaturePieceIdentiteTiers;
                                      RTiersCopie.NumPieceIdentiteTiers:=RTiersXX.NumPieceIdentiteTiers;
                                      RTiersCopie.FonctionTiers:=RTiersXX.FonctionTiers;
                                      RTiersCopie.AdresseTiers:=RTiersXX.AdresseTiers;
                                      RTiersCopie.NumTelephoneTiers:=RTiersXX.NumTelephoneTiers;
                                      RTiersCopie.CodeAgenceBanqueTiers:=RTiersXX.CodeAgenceBanqueTiers;
                                      RTiersCopie.RIBBanqueTiers:=RTiersXX.RIBBanqueTiers;
                                      RTiersCopie.Data1:=RTiersXX.Data1;
                                      RTiersCopie.Data2:=RTiersXX.Data2;
                                      RTiersCopie.Data3:=RTiersXX.Data3;
                                      RTiersCopie.Data4:=RTiersXX.Data4;
                                      RTiersCopie.Data5:=RTiersXX.Data5;
                                      RTiersCopie.Data6:=RTiersXX.Data6;
                                      RTiersCopie.ListeNomPosteReseauxNonAutoriser:='';

                                      Seek(FTiersCopie,i);
                                      write(FTiersCopie,RTiersCopie);
                                      i:=i+1;
                                 end;

                                 ChTiers:=Adresse;
                                 assignfile(FTiers,ChTiers);
                                 try
                                 if FileExists(ChTiers)then
                                 Reset(FTiers)
                                 else Rewrite(FTiers);
                                 Seek(FTiers,0);
                                 Truncate(FTiers);

                                 LibererMemoireProcessus('BusinessProces.exe',true);

                                 i:=0;
                                 Seek(FTiersCopie,0);
                                 while not eof(FTierscopie)do
                                 begin
                                      read(FTiersCopie,RTiersCopie);
                                      Seek(FTiers,i);
                                      write(FTiers,RTiersCopie);
                                      i:=i+1;
                                 end;
                                 finally
                                 CloseFile(FTierscopie);
                                 end;
                                 finally
                                 CloseFile(FTiers);
                                 end;
                                 finally
                                 CloseFile(FTiersXX);
                                 end;

                                 showmessage('Mise à jour {'+Extention+'} '+FichierConcerne+' exécuté avec succès !');
                             end
                             else showmessage('Mise à jour {'+Extention+'} '+FichierConcerne+' déjà exécuté !');
                      end;
                end;
           end;
           finally
           CloseFile(FTypeFichierTiers);
           end;

           LibererMemoireProcessus('BusinessProces.exe',true);
           //////////////////////////////////////////////////////////////////////////
     end;

     Extention:='Mail';
     if(OKMiseAJourTiers=true)and(Extention<>'')then
     begin
           //////////////////////////////TiersX/////////////////////////////////
           TypeProces:='Business';   FichierConcerne:='FTypeFichierTiers';
           if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
           end;

           ChTypeFichierTiers:=Adresse;
           assignfile(FTypeFichierTiers,ChTypeFichierTiers);
           try
           if FileExists(ChTypeFichierTiers)then
           Reset(FTypeFichierTiers)
           else Rewrite(FTypeFichierTiers);
           Seek(FTypeFichierTiers,0);
           while not eof(FTypeFichierTiers)do
           begin
                read(FTypeFichierTiers,RTypeFichierTiers);

                if((RTypeFichierTiers.TypeProces='Commercial')or(RTypeFichierTiers.TypeProces='Business'))then
                begin
                      FichierConcerne:=RTypeFichierTiers.FichierConcerne;

                      if(FichierConcerne<>'FProjetFinance')
                      then
                      begin
                            Adresse:='';
                            if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                            begin
                                 AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
                            end;

                            ChTiersCopie:=Adresse+' '+Extention;
                            assignfile(FTiersCopie,ChTiersCopie);
                            if not FileExists(ChTiersCopie)then
                            begin
                                 try
                                 Rewrite(FTiersCopie);
                                 Seek(FTiersCopie,0);
                                 Truncate(FTiersCopie);

                                 ChTiersX:=Adresse;
                                 assignfile(FTiersX,ChTiersX);
                                 try
                                 if FileExists(ChTiersX)then
                                 Reset(FTiersX)
                                 else begin affichermessage('Attention ! {'+ChTiersX+'} n''existe pas !'); exit; end;//Rewrite(FTiersX);
                                 Seek(FTiersX,0);
                                 i:=0;
                                 while not eof(FTiersX)do
                                 begin
                                      read(FTiersX,RTiersX);

                                      RTiersCopie.CodeTiers:=RTiersX.CodeTiers;
                                      RTiersCopie.NomTiers:=RTiersX.NomTiers;
                                      RTiersCopie.PrenomTiers:=RTiersX.PrenomTiers;
                                      RTiersCopie.DateNaisTiers:=RTiersX.DateNaisTiers;
                                      RTiersCopie.LieuNaisTiers:=RTiersX.LieuNaisTiers;
                                      RTiersCopie.NaturePieceIdentiteTiers:=RTiersX.NaturePieceIdentiteTiers;
                                      RTiersCopie.NumPieceIdentiteTiers:=RTiersX.NumPieceIdentiteTiers;
                                      RTiersCopie.FonctionTiers:=RTiersX.FonctionTiers;
                                      RTiersCopie.AdresseTiers:=RTiersX.AdresseTiers;
                                      RTiersCopie.NumTelephoneTiers:=RTiersX.NumTelephoneTiers;
                                      RTiersCopie.CodeAgenceBanqueTiers:=RTiersX.CodeAgenceBanqueTiers;
                                      RTiersCopie.RIBBanqueTiers:=RTiersX.RIBBanqueTiers;
                                      RTiersCopie.MailTiers:='';
                                      RTiersCopie.CodeSecuriteMail:='';
                                      RTiersCopie.Data1:=RTiersX.Data1;
                                      RTiersCopie.Data2:=RTiersX.Data2;
                                      RTiersCopie.Data3:=RTiersX.Data3;
                                      RTiersCopie.Data4:=RTiersX.Data4;
                                      RTiersCopie.Data5:=RTiersX.Data5;
                                      RTiersCopie.Data6:=RTiersX.Data6;
                                      RTiersCopie.ListeNomPosteReseauxNonAutoriser:=RTiersX.ListeNomPosteReseauxNonAutoriser;

                                      Seek(FTiersCopie,i);
                                      write(FTiersCopie,RTiersCopie);
                                      i:=i+1;
                                 end;

                                 ChTiers:=Adresse;
                                 assignfile(FTiers,ChTiers);
                                 try
                                 if FileExists(ChTiers)then
                                 Reset(FTiers)
                                 else Rewrite(FTiers);
                                 Seek(FTiers,0);
                                 Truncate(FTiers);

                                 LibererMemoireProcessus('BusinessProces.exe',true);

                                 i:=0;
                                 Seek(FTiersCopie,0);
                                 while not eof(FTierscopie)do
                                 begin
                                      read(FTiersCopie,RTiersCopie);
                                      Seek(FTiers,i);
                                      write(FTiers,RTiersCopie);
                                      i:=i+1;
                                 end;
                                 finally
                                 CloseFile(FTiers);
                                 end;
                                 finally
                                 CloseFile(FTiersX);
                                 end;
                                 finally
                                 CloseFile(FTierscopie);  
                                 end;

                                 showmessage('Mise à jour {'+Extention+'} '+FichierConcerne+' exécuté avec succès !');
                             end
                             else showmessage('Mise à jour {'+Extention+'} '+FichierConcerne+' déjà exécuté !');
                      end;
                end;
           end;
           finally
           CloseFile(FTypeFichierTiers);
           end;

           LibererMemoireProcessus('BusinessProces.exe',true);
           //////////////////////////////////////////////////////////////////////////
     end;

     if(OKMiseAJourMouvement=true)then
     begin
           //////////////////////////////MouvementX/////////////////////////////////
           TypeProces:='Business';
           FichierConcerne:='FMouvement';

           Adresse:='';
           if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
           end;

           OpenFParc(RParc);
           Adresse:=RParc.Parcours+'\'+Exercice+FichierConcerne;

           ChMouvementCopie:=Adresse+' Utilisateur';
           assignfile(FMouvementCopie,ChMouvementCopie);
           if not FileExists(ChMouvementCopie)then
           begin
                try
                Rewrite(FMouvementCopie);
                Seek(FMouvementCopie,0);
                Truncate(FMouvementCopie);

                ChMouvementX:=Adresse;
                assignfile(FMouvementX,ChMouvementX);
                try
                if FileExists(ChMouvementX)then
                Reset(FMouvementX)
                else begin affichermessage('Attention ! {'+ChMouvementX+'} n''existe pas !'); exit; end;//Rewrite(FMouvementX);
                Seek(FMouvementX,0);
                i:=0;
                while not eof(FMouvementX)do
                begin
                     read(FMouvementX,RMouvementX);

                     RMouvementCopie.PositionTypeMouvement:=RMouvementX.PositionTypeMouvement;
                     RMouvementCopie.PositionMouvement:=RMouvementX.PositionMouvement;
                     RMouvementCopie.CodeMouvement:=RMouvementX.CodeMouvement;
                     RMouvementCopie.DesignationMouvement:=RMouvementX.DesignationMouvement;
                     RMouvementCopie.TypeProces:=RMouvementX.TypeProces;
                     RMouvementCopie.FichierTiersConserne:=RMouvementX.FichierTiersConserne;
                     RMouvementCopie.TypeStock:=RMouvementX.TypeStock;
                     RMouvementCopie.CompteConserne:=RMouvementX.CompteConserne;
                     RMouvementCopie.DebitCredit:=RMouvementX.DebitCredit;
                     RMouvementCopie.SigneDebitCredit:=1;
                     RMouvementCopie.TypePrixMouvement:=RMouvementX.TypePrixMouvement;
                     RMouvementCopie.CodeTypeFormuleBase:=RMouvementX.CodeTypeFormuleBase;
                     RMouvementCopie.MouvementeCompte:=RMouvementX.MouvementeCompte;
                     RMouvementCopie.MouvementeFinance:=RMouvementX.MouvementeFinance;
                     RMouvementCopie.EtatUtilise:=RMouvementX.EtatUtilise;
                     RMouvementCopie.AvecDateExecution:=RMouvementX.AvecDateExecution;
                     RMouvementCopie.AvecLocalisationGeographique:=RMouvementX.AvecLocalisationGeographique;
                     RMouvementCopie.ListeAppartenanceCodeMouvement:=RMouvementX.ListeAppartenanceCodeMouvement;

                     Seek(FMouvementCopie,i);
                     write(FMouvementCopie,RMouvementCopie);
                     i:=i+1;
                end;

                ChMouvement:=Adresse;
                assignfile(FMouvement,ChMouvement);
                try
                if FileExists(ChMouvement)then
                Reset(FMouvement)
                else Rewrite(FMouvement);
                Seek(FMouvement,0);
                Truncate(FMouvement);

                LibererMemoireProcessus('BusinessProces.exe',true);

                i:=0;
                Seek(FMouvementCopie,0);
                while not eof(FMouvementcopie)do
                begin
                     read(FMouvementCopie,RMouvementCopie);
                     Seek(FMouvement,i);
                     write(FMouvement,RMouvementCopie);
                     i:=i+1;
                end;
                finally
                CloseFile(FMouvementcopie);
                end;
                finally
                CloseFile(FMouvement);
                end;
                finally
                CloseFile(FMouvementX);
                end;

                showmessage('Mise à jour '+FichierConcerne+' exécuté avec succès !');
           end
           else showmessage('Mise à jour '+FichierConcerne+' déjà exécuté !');

           LibererMemoireProcessus('BusinessProces.exe',true);
           //////////////////////////////////////////////////////////////////////////
     end;

     if(OKMiseAJourAvis=true)then
     begin
           //////////////////////////////AvisX/////////////////////////////////
           TypeProces:='Business';
           FichierConcerne:='FAvis';

           Adresse:='';
           if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
           end;

           ChAvisCopie:=Adresse+' Transfert';
           assignfile(FAvisCopie,ChAvisCopie);
           if not FileExists(ChAvisCopie)then
           begin
                try
                Rewrite(FAvisCopie);
                Seek(FAvisCopie,0);
                Truncate(FAvisCopie);

                ChAvisX:=Adresse;
                assignfile(FAvisX,ChAvisX);
                try
                if FileExists(ChAvisX)then
                Reset(FAvisX)
                else begin affichermessage('Attention ! {'+ChAvisX+'} n''existe pas !'); exit; end;//Rewrite(FAvisX);
                Seek(FAvisX,0);
                i:=0;
                while not eof(FAvisX)do
                begin
                     read(FAvisX,RAvisX);

                     RAvisCopie.NumAvis:=RAvisX.NumAvis;
                     RAvisCopie.DateAvis:=RAvisX.DateAvis;
                     RAvisCopie.DateExecute:=RAvisX.DateExecute;
                     if(RAvisX.DesignationTypeAvis<>'')then
                     begin
                          IndiqueTypeAvis(RAvisX.DesignationTypeAvis,PositionTypeAvis,NumTypeAvis,SigneDebitCredit,CompteImputation,DebitCredit,TypeProces,FichierConserne,JourneauxAuxiliaireUtilise);
                          RAvisCopie.PositionTypeAvis:=PositionTypeAvis;
                     end
                     else RAvisCopie.PositionTypeAvis:=-1;
                     RAvisCopie.DesignationTypeAvis:=RAvisX.DesignationTypeAvis;
                     //RAvisCopie.PositionModePaiement:=RAvisX.PositionModePaiement;
                     RAvisCopie.ModePaiement:=RAvisX.ModePaiement;
                     RAvisCopie.NumPiece:=RAvisX.NumPiece;
                     //RAvisCopie.PositionDomiciliationAvis:=RAvisX.PositionDomiciliationAvis;
                     RAvisCopie.NumDomiciliationAvis:=RAvisX.NumDomiciliationAvis;
                     RAvisCopie.DomiciliationAvis:=RAvisX.DomiciliationAvis;
                     //RAvisCopie.PositionDomiciliationPiece:=RAvisX.PositionDomiciliationPiece;
                     RAvisCopie.NumDomiciliationPiece:=RAvisX.NumDomiciliationPiece;
                     RAvisCopie.DomiciliationPiece:=RAvisX.DomiciliationPiece;
                     RAvisCopie.TypeProces:=RAvisX.TypeProces;
                     RAvisCopie.AvisConcerneTiers:=RAvisX.AvisConcerneTiers;
                     //RAvisCopie.PositionTiers:=RAvisX.PositionTiers;
                     RAvisCopie.CodeTiers:=RAvisX.CodeTiers;
                     //RAvisCopie.IdentificateurTiers:=RAvisX.IdentificateurTiers;
                     RAvisCopie.NatureDepense:=RAvisX.NatureDepense;
                     RAvisCopie.CompteImputation:=RAvisX.CompteImputation;
                     RAvisCopie.DebitCredit:=RAvisX.DebitCredit;
                     RAvisCopie.Montant:=RAvisX.Montant;
                     //RAvisCopie.PositionProjetFinance:=RAvisX.PositionProjetFinance;
                     RAvisCopie.NumProjetFinance:=RAvisX.NumProjetFinance;
                     //RAvisCopie.DesignationProjetFinance:=RAvisX.DesignationProjetFinance;
                     //RAvisCopie.PositionFicheTechnique:=RAvisX.PositionFicheTechnique;
                     //RAvisCopie.NumFicheTechnique:=RAvisX.NumFicheTechnique;
                     //RAvisCopie.PositionRubrique:=RAvisX.PositionRubrique;
                     RAvisCopie.NumRubrique:=RAvisX.NumRubrique;
                     //RAvisCopie.PositionPlanificateur:=RAvisX.PositionPlanificateur;
                     RAvisCopie.NumPlanificateur:=RAvisX.NumPlanificateur;
                     RAvisCopie.DesignationDocumentBase:=RAvisX.DesignationDocumentBase;
                     RAvisCopie.NumeroDocumentBase:=RAvisX.NumeroDocumentBase;
                     RAvisCopie.DateDocumentBase:=RAvisX.DateDocumentBase;
                     RAvisCopie.IntituleOperationBase:=RAvisX.IntituleOperationBase;
                     RAvisCopie.Signataire:=RAvisX.Signataire;
                     RAvisCopie.ValiditeAvis:=RAvisX.ValiditeAvis;
                     RAvisCopie.Origine:=RAvisX.Origine;

                     Seek(FAvisCopie,i);
                     write(FAvisCopie,RAvisCopie);
                     i:=i+1;
                end;

                ChAvis:=Adresse;
                assignfile(FAvis,ChAvis);
                try
                if FileExists(ChAvis)then
                Reset(FAvis)
                else Rewrite(FAvis);
                Seek(FAvis,0);
                Truncate(FAvis);

                LibererMemoireProcessus('BusinessProces.exe',true);

                i:=0;
                Seek(FAvisCopie,0);
                while not eof(FAviscopie)do
                begin
                     read(FAvisCopie,RAvisCopie);
                     Seek(FAvis,i);
                     write(FAvis,RAvisCopie);
                     i:=i+1;
                end;
                finally
                CloseFile(FAviscopie);
                end;
                finally
                CloseFile(FAvis);
                end;
                finally
                CloseFile(FAvisX);
                end;

                showmessage('Mise à jour '+FichierConcerne+' exécuté avec succès !');
           end
           else showmessage('Mise à jour '+FichierConcerne+' déjà exécuté !');

           LibererMemoireProcessus('BusinessProces.exe',true);
           //////////////////////////////////////////////////////////////////////////
     end;

     if(OKMiseAJourProjetFinance=true)then
     begin
           //////////////////////////////ProjetFinanceX/////////////////////////////////
           TypeProces:='Business';
           FichierConcerne:='FProjetFinance';

           Adresse:='';
           if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
           end;

           OpenFParc(RParc);
           Adresse:=RParc.Parcours+'\'+Exercice+FichierConcerne;

           ChProjetFinanceCopie:=Adresse+' NumLot';
           assignfile(FProjetFinanceCopie,ChProjetFinanceCopie);
           if not FileExists(ChProjetFinanceCopie)then
           begin
                try
                Rewrite(FProjetFinanceCopie);
                Seek(FProjetFinanceCopie,0);
                Truncate(FProjetFinanceCopie);

                ChProjetFinanceX:=Adresse;
                assignfile(FProjetFinanceX,ChProjetFinanceX);
                try
                if FileExists(ChProjetFinanceX)then
                Reset(FProjetFinanceX)
                else begin affichermessage('Attention ! {'+ChProjetFinanceX+'} n''existe pas !'); exit; end;//Rewrite(FProjetFinanceX);
                Seek(FProjetFinanceX,0);
                i:=0;
                while not eof(FProjetFinanceX)do
                begin
                     read(FProjetFinanceX,RProjetFinanceX);

                     RProjetFinanceCopie.NumProjetFinance:=RProjetFinanceX.NumProjetFinance;
                     RProjetFinanceCopie.DesignationProjetFinance:=RProjetFinanceX.DesignationProjetFinance;
                     RProjetFinanceCopie.NatureProjetFinance:=RProjetFinanceX.NatureProjetFinance;
                     RProjetFinanceCopie.Codification:=RProjetFinanceX.Codification;
                     RProjetFinanceCopie.NumLotProjetFinance:='';
                     RProjetFinanceCopie.LocalisationPreciseProjetFinance:=RProjetFinanceX.LocalisationPreciseProjetFinance;
                     RProjetFinanceCopie.AdresseProjetFinance:=RProjetFinanceX.AdresseProjetFinance;
                     RProjetFinanceCopie.DateDebutProjetFinance:=RProjetFinanceX.DateDebutProjetFinance;
                     RProjetFinanceCopie.HeureDebutProjetFinance:=RProjetFinanceX.HeureDebutProjetFinance;
                     RProjetFinanceCopie.DelaisRealisationProjetFinance:=RProjetFinanceX.DelaisRealisationProjetFinance;
                     RProjetFinanceCopie.UniteDelaisRealisationProjetFinance:=RProjetFinanceX.UniteDelaisRealisationProjetFinance;
                     RProjetFinanceCopie.DateFinProjetFinance:=RProjetFinanceX.DateFinProjetFinance;
                     RProjetFinanceCopie.HeureFinProjetFinance:=RProjetFinanceX.HeureFinProjetFinance;
                     RProjetFinanceCopie.UniteMesureProjetFinance:=RProjetFinanceX.UniteMesureProjetFinance;
                     RProjetFinanceCopie.PrixUniteHTMesureProjetFinance:=RProjetFinanceX.PrixUniteHTMesureProjetFinance;
                     RProjetFinanceCopie.MesureGlobaleProjetFinance:=RProjetFinanceX.MesureGlobaleProjetFinance;
                     RProjetFinanceCopie.MesurePartielleProjetFinance:=RProjetFinanceX.MesurePartielleProjetFinance;
                     RProjetFinanceCopie.MontantHTProjetFinance:=RProjetFinanceX.MontantHTProjetFinance;
                     RProjetFinanceCopie.TaxePourcentage:=RProjetFinanceX.TaxePourcentage;
                     RProjetFinanceCopie.DecompositionProjetFinance:=RProjetFinanceX.DecompositionProjetFinance;
                     RProjetFinanceCopie.PourcentagePartieCommune:=RProjetFinanceX.PourcentagePartieCommune;
                     RProjetFinanceCopie.TypeUsage:=RProjetFinanceX.TypeUsage;

                     Seek(FProjetFinanceCopie,i);
                     write(FProjetFinanceCopie,RProjetFinanceCopie);
                     i:=i+1;
                end;

                ChProjetFinance:=Adresse;
                assignfile(FProjetFinance,ChProjetFinance);
                try
                if FileExists(ChProjetFinance)then
                Reset(FProjetFinance)
                else Rewrite(FProjetFinance);
                Seek(FProjetFinance,0);
                Truncate(FProjetFinance);

                LibererMemoireProcessus('BusinessProces.exe',true);

                i:=0;
                Seek(FProjetFinanceCopie,0);
                while not eof(FProjetFinancecopie)do
                begin
                     read(FProjetFinanceCopie,RProjetFinanceCopie);
                     Seek(FProjetFinance,i);
                     write(FProjetFinance,RProjetFinanceCopie);
                     i:=i+1;
                end;
                finally
                CloseFile(FProjetFinancecopie);
                end;
                finally
                CloseFile(FProjetFinance);
                end;
                finally
                CloseFile(FProjetFinanceX);
                end;

                showmessage('Mise à jour '+FichierConcerne+' exécuté avec succès !');
           end
           else showmessage('Mise à jour '+FichierConcerne+' déjà exécuté !');

           LibererMemoireProcessus('BusinessProces.exe',true);
           //////////////////////////////////////////////////////////////////////////
     end;

     if(OKMiseAJourParametreTaxeAjoutes=true)then
     begin
           //////////////////////////////ParametreTaxeAjoutesX/////////////////////////////////
           TypeProces:='Business';
           FichierConcerne:='FParametreTaxeAjoute';

           Adresse:='';
           if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
           end;

           OpenFParc(RParc);
           Adresse:=RParc.Parcours+'\'+Exercice+FichierConcerne;

           ChParametreTaxeAjouteCopie:=Adresse+' NumLot';
           assignfile(FParametreTaxeAjouteCopie,ChParametreTaxeAjouteCopie);
           if not FileExists(ChParametreTaxeAjouteCopie)then
           begin
                try
                Rewrite(FParametreTaxeAjouteCopie);
                Seek(FParametreTaxeAjouteCopie,0);
                Truncate(FParametreTaxeAjouteCopie);

                ChParametreTaxeAjouteX:=Adresse;
                assignfile(FParametreTaxeAjouteX,ChParametreTaxeAjouteX);
                try
                if FileExists(ChParametreTaxeAjouteX)then
                Reset(FParametreTaxeAjouteX)
                else begin affichermessage('Attention ! {'+ChParametreTaxeAjouteX+'} n''existe pas !'); exit; end;//Rewrite(FParametreTaxeAjouteX);
                Seek(FParametreTaxeAjouteX,0);
                i:=0;
                while not eof(FParametreTaxeAjouteX)do
                begin
                     read(FParametreTaxeAjouteX,RParametreTaxeAjouteX);

                     RParametreTaxeAjouteCopie.PositionParametreTaxeAjoute:=RParametreTaxeAjouteX.PositionParametreTaxeAjoute;
                     RParametreTaxeAjouteCopie.DommaineApplication:=RParametreTaxeAjouteX.DommaineApplication;
                     RParametreTaxeAjouteCopie.FichierLocalisationGeographique:=RParametreTaxeAjouteX.FichierLocalisationGeographique;
                     RParametreTaxeAjouteCopie.CodeLocalisationGeographique:=RParametreTaxeAjouteX.CodeLocalisationGeographique;
                     RParametreTaxeAjouteCopie.CodeArticleConcerne:=RParametreTaxeAjouteX.CodeArticleConcerne;
                     RParametreTaxeAjouteCopie.ValeurTaxe:=RParametreTaxeAjouteX.ValeurTaxe;
                     RParametreTaxeAjouteCopie.RubriqueApplicationTaxeAjouter:='Taxe Ajouter sur Prix';

                     Seek(FParametreTaxeAjouteCopie,i);
                     write(FParametreTaxeAjouteCopie,RParametreTaxeAjouteCopie);
                     i:=i+1;
                end;

                ChParametreTaxeAjoute:=Adresse;
                assignfile(FParametreTaxeAjoute,ChParametreTaxeAjoute);
                try
                if FileExists(ChParametreTaxeAjoute)then
                Reset(FParametreTaxeAjoute)
                else Rewrite(FParametreTaxeAjoute);
                Seek(FParametreTaxeAjoute,0);
                Truncate(FParametreTaxeAjoute);

                LibererMemoireProcessus('BusinessProces.exe',true);

                i:=0;
                Seek(FParametreTaxeAjouteCopie,0);
                while not eof(FParametreTaxeAjoutecopie)do
                begin
                     read(FParametreTaxeAjouteCopie,RParametreTaxeAjouteCopie);
                     Seek(FParametreTaxeAjoute,i);
                     write(FParametreTaxeAjoute,RParametreTaxeAjouteCopie);
                     i:=i+1;
                end;
                finally
                CloseFile(FParametreTaxeAjoutecopie);
                end;
                finally
                CloseFile(FParametreTaxeAjoute);
                end;
                finally
                CloseFile(FParametreTaxeAjouteX);
                end;

                showmessage('Mise à jour '+FichierConcerne+' exécuté avec succès !');
           end
           else showmessage('Mise à jour '+FichierConcerne+' déjà exécuté !');

           LibererMemoireProcessus('BusinessProces.exe',true);
           //////////////////////////////////////////////////////////////////////////
     end;

end;

procedure TFSMenuPrincipal.ConfigurationdesBasesdeDonnesjumel1Click(
  Sender: TObject);
begin
     FSGenerationGroupeTiers.AfficheVisibleListeGroupeTiers.Visible:=false;
     FSGenerationGroupeTiers.Width:=FSGenerationGroupeTiers.AfficheVisibleGroupeTiers.Left+
                                    FSGenerationGroupeTiers.AfficheVisibleGroupeTiers.Width+22;

     FSGenerationGroupeTiers.Show;
     FSGenerationGroupeTiers.EditFichierConcerne.Text:='FBaseDonneeJumele';
     AffichageGroupeTiers(FSGenerationGroupeTiers.TableauGroupeTiers,FSGenerationGroupeTiers.EditFichierConcerne.Text);
end;

procedure TFSMenuPrincipal.areVhiculepontbascule1Click(Sender: TObject);
begin
     FSParametresPontBascule.Show;
     FSParametresPontBascule.PageTareVehicule.Show;
end;

procedure TFSMenuPrincipal.Moyendetransport1Click(Sender: TObject);
var  i:integer;
begin
     FSMoyenTransport.Height:=FSMenuPrincipal.Height;
     FSMoyenTransport.Width:=FSMenuPrincipal.Width;

     FSMoyenTransport.AfficheSupportMoyenTransport.Height:=FSMoyenTransport.Height-50;
     FSMoyenTransport.AfficheSupportMoyenTransport.Width:=FSMoyenTransport.Width-30;

     FSMoyenTransport.AfficheOperationMoyenTransport.Left:=752;
     FSMoyenTransport.AfficheOperationMoyenTransport.Top:=336;

     FSMoyenTransport.Position:=poDesktopCenter;
     FSMoyenTransport.Show;

     FSMoyenTransport.EditTypeFiche.ItemIndex:=0;

     FSMoyenTransport.EditExercice.Items.Text:='';
     FSMoyenTransport.EditExercice.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-3));
     FSMoyenTransport.EditExercice.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-2));
     FSMoyenTransport.EditExercice.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-1));
     FSMoyenTransport.EditExercice.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-0));
     FSMoyenTransport.EditExercice.ItemIndex:=3;
     FSMoyenTransport.EditDateDebut.Date:=strtodate('01/'+Lastlaters(datetostr(Date),7));
     FSMoyenTransport.EditDateFin.Date:=Date;

     FSMoyenTransport.EditDateDebutMT.Date:=strtodate('01/'+Lastlaters(datetostr(Date),7));
     FSMoyenTransport.EditDateFinMT.Date:=Date;

     InitialisationMoyenTransport;


     FSMoyenTransport.EditMouvement.Items.Text:='';

     ChMouvement:=RParc.Parcours+'\'+Exercice+'FMouvement';
     assignfile(FMouvement,ChMouvement);
     if FileExists(ChMouvement)then
     begin
          try
          Reset(FMouvement);
          seek(FMouvement,0);
          while not eof(FMouvement)do
          begin
               Read(FMouvement,RMouvement);
               FSMoyenTransport.EditMouvement.Items.Add(RMouvement.DesignationMouvement);
          end;
          finally
          CloseFile(FMouvement);
          end;
     end;

     FSMoyenTransport.EditMouvement.ItemIndex:=0;
end;

procedure TFSMenuPrincipal.Ouvrirunfichiertexte1Click(Sender: TObject);
begin
     FSCreateFichierTexte.Show;
end;

procedure TFSMenuPrincipal.OuvrirunfichierPDF1Click(Sender: TObject);
begin
     FSPDF.Show;
end;

procedure TFSMenuPrincipal.Ouvrirunimprim1Click(Sender: TObject);
begin
     PrintOuvrir.Preview;
end;

Procedure ControleExisteProjetFinance;
var  OKProjetFinance:boolean;
begin
     OpenFParc(RParc);
     ChProjetFinance:=RParc.Parcours+'\'+Exercice+'FProjetFinance';
     assignfile(FProjetFinance,ChProjetFinance);
     try
     if FileExists(ChProjetFinance)
     then Reset(FProjetFinance)
     else Rewrite(FProjetFinance);
     Seek(FProjetFinance,0);
     OKProjetFinance:=false;
     while not eof(FProjetFinance)and(OKProjetFinance=false)do
     begin
          read(FProjetFinance,RProjetFinance);
          if(RProjetFinance.NumProjetFinance<>'')
          and(RProjetFinance.DesignationProjetFinance<>'')
          then OKProjetFinance:=true;
     end;

     if(OKProjetFinance=false)then
     begin
          Seek(FProjetFinance,0);
          RProjetFinance.NumProjetFinance:='0000100001';
          RProjetFinance.DesignationProjetFinance:='ADMINISTRATION';
          RProjetFinance.NatureProjetFinance:='PROJETS';
          RProjetFinance.Codification:='';
          RProjetFinance.LocalisationPreciseProjetFinance:='';
          RProjetFinance.AdresseProjetFinance:='';
          RProjetFinance.DateDebutProjetFinance:=datetostr(date);
          RProjetFinance.HeureDebutProjetFinance:=timetostr(time);
          RProjetFinance.DelaisRealisationProjetFinance:=0;
          RProjetFinance.UniteDelaisRealisationProjetFinance:='';
          RProjetFinance.DateFinProjetFinance:=datetostr(date);
          RProjetFinance.HeureFinProjetFinance:=timetostr(time);
          RProjetFinance.UniteMesureProjetFinance:='';
          RProjetFinance.PrixUniteHTMesureProjetFinance:=0;
          RProjetFinance.MesureGlobaleProjetFinance:=0;
          RProjetFinance.MesurePartielleProjetFinance:=0;
          RProjetFinance.MontantHTProjetFinance:=0;
          RProjetFinance.TaxePourcentage:=0;
          RProjetFinance.DecompositionProjetFinance:=false;
          RProjetFinance.PourcentagePartieCommune:=100;
          RProjetFinance.TypeUsage:='';

          write(FProjetFinance,RProjetFinance);
     end;
     finally
     CloseFile(FProjetFinance);
     end;
end;

procedure TFSMenuPrincipal.ContrleStocklimite1Click(Sender: TObject);
begin
     FSMenuPrincipal.TimerControleStockLimite.Enabled:=true;
end;

procedure TFSMenuPrincipal.PDF1Click(Sender: TObject);
begin
     FSParametrePDF.Show;
end;

procedure TFSMenuPrincipal.BitDetailRapportClick(Sender: TObject);
begin
     if(FSMenuPrincipal.BitDetailRapport.Caption='Voir le détail')then
     begin
          FSMenuPrincipal.BitDetailRapport.Caption:='Cacher le détail';
          FSMenuPrincipal.EditDetailRapport.Height:=200;
     end
     else
     begin
          FSMenuPrincipal.BitDetailRapport.Caption:='Voir le détail';
          FSMenuPrincipal.EditDetailRapport.Height:=1;
     end;
end;

procedure TFSMenuPrincipal.AfficheExerciceClotureDblClick(Sender: TObject);
begin
     FSMenuPrincipal.AfficheTableauReouverture.Top:=FSMenuPrincipal.AfficheExerciceCloture.Top;
     FSMenuPrincipal.AfficheTableauReouverture.Left:=FSMenuPrincipal.AfficheExerciceCloture.Left+FSMenuPrincipal.AfficheExerciceCloture.Width;
     FSMenuPrincipal.AfficheTableauReouverture.Visible:=true;
     ListeReouvertureClotureExercice(FSMenuPrincipal.TableauReouverture);
     FSMenuPrincipal.TableauReouverture.SetFocus;
end;

procedure TFSMenuPrincipal.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     FSMenuPrincipal.AfficheTableauReouverture.Visible:=false;
     FSMenuPrincipal.AfficheClotureReouvertureExercice.Visible:=false;
end;

procedure TFSMenuPrincipal.AfficheExerciceClotureMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSMenuPrincipal.BitBtn4Click(Sender: TObject);
begin
     EnregistrementReouverture(FSMenuPrincipal.EditExercice.Text,FSMenuPrincipal.RBCloturerExercice.Checked);
     FSMenuPrincipal.AfficheClotureReouvertureExercice.Visible:=false;
     
     if(FSMenuPrincipal.TableauReouverture.Visible)then
     begin
          ListeReouvertureClotureExercice(FSMenuPrincipal.TableauReouverture);
     end;

     if(FinReouvertureClotureExercice(ExerciceAnnee))then
     begin
          FSMenuPrincipal.AfficheExerciceCloture.Visible:=true;
          FSMenuPrincipal.AfficheExerciceCloture.Caption:='Exercice '+ExerciceAnnee+' Côluré !';
     end
     else
     begin
          FSMenuPrincipal.AfficheExerciceCloture.Visible:=false;
          FSMenuPrincipal.AfficheExerciceCloture.Caption:='';
     end;
end;

procedure TFSMenuPrincipal.UpDown3Click(Sender: TObject;
  Button: TUDBtnType);
begin
     if FinReouvertureClotureExercice(FSMenuPrincipal.EditExercice.Text)
     then FSMenuPrincipal.InfoClotureExercice.Caption:='Exercice '+FSMenuPrincipal.EditExercice.Text+' clôturé !'
     else FSMenuPrincipal.InfoClotureExercice.Caption:='Exercice '+FSMenuPrincipal.EditExercice.Text+' non clôturé !';
end;

procedure TFSMenuPrincipal.TableauReouvertureKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSMenuPrincipal.AfficheClotureReouvertureExercice.Visible:=true;
          FSMenuPrincipal.EditExercice.Text:=ExerciceAnnee;

          if FinReouvertureClotureExercice(FSMenuPrincipal.EditExercice.Text)
          then FSMenuPrincipal.InfoClotureExercice.Caption:='Exercice '+FSMenuPrincipal.EditExercice.Text+' clôturé !'
          else FSMenuPrincipal.InfoClotureExercice.Caption:='Exercice '+FSMenuPrincipal.EditExercice.Text+' non clôturé !';

          FSMenuPrincipal.EditExercice.SetFocus;
     end;
end;

procedure TFSMenuPrincipal.TableauReouvertureClick(Sender: TObject);
begin
     FSMenuPrincipal.AfficheClotureReouvertureExercice.Visible:=false;
end;

procedure TFSMenuPrincipal.TimerTimeTimer(Sender: TObject);
begin
     FSMenuPrincipal.EditJourCaption.Text:=jour(datetostr(date),'Data');
     FSMenuPrincipal.EditHeureCaption.Text:=TimeToStr(Time);
     Application.ProcessMessages;
     FSMenuPrincipal.EditJourCaption.Refresh;
     FSMenuPrincipal.EditHeureCaption.Refresh;
end;

procedure TFSMenuPrincipal.BitBtn5Click(Sender: TObject);
begin
     FSMenuPrincipal.AfficheTableauReouverture.Visible:=false;
end;

procedure TFSMenuPrincipal.TimerLancementControleDiversTimer(
  Sender: TObject);
begin
     FSMenuPrincipal.TimerLancementControleDivers.Enabled:=false;
     
     ControleTimerActivation(FSMenuPrincipal.TimerPublicationReseauxProgrammer,true);
     FSMenuPrincipal.TimerPublicationReseauxProgrammer.Enabled:=not FinReouvertureClotureExercice(ExerciceAnnee);
     ControleTimerActivation(FSMenuPrincipal.TimerPublicationReseauxProgrammer,true);

     FSMenuPrincipal.TimerControleDateExecutionAlerte.Enabled:=true;
     FSMenuPrincipal.TimerControleSoldeDomiciliation.Enabled:=FunctionControleSoldeDomiciliationDemarrage;
     FSMenuPrincipal.TimerControleStockLimite.Enabled:=true;
end;

Procedure ProcTousListeMouvement(TableauListeMouvement:TStringGrid);
var  R:integer;
begin
     TableauListeMouvement.ColCount:=55;
     TableauListeMouvement.Cols[0].Text:='N°';
     TableauListeMouvement.Cols[1].Text:='Ordre';
     TableauListeMouvement.Cols[2].Text:='Num';
     TableauListeMouvement.Cols[3].Text:='P°TM';
     TableauListeMouvement.Cols[4].Text:='P°M';
     TableauListeMouvement.Cols[5].Text:='Date.Etablis.';
     TableauListeMouvement.Cols[6].Text:='Code Type F';
     TableauListeMouvement.Cols[7].Text:='Type Proc';
     TableauListeMouvement.Cols[8].Text:='Fichier Tièrs Consern';
     TableauListeMouvement.Cols[9].Text:='Code Tiers';
     TableauListeMouvement.Cols[10].Text:='Tiers';
     TableauListeMouvement.Cols[11].Text:='Montant Mouvement';
     TableauListeMouvement.Cols[12].Text:='Date Exécution';
     TableauListeMouvement.Cols[13].Text:='C°Payés';
     TableauListeMouvement.Cols[14].Text:='Payés';
     TableauListeMouvement.Cols[15].Text:='C°Wilaya';
     TableauListeMouvement.Cols[16].Text:='Wilaya';
     TableauListeMouvement.Cols[17].Text:='C°Daira';
     TableauListeMouvement.Cols[18].Text:='Daira';
     TableauListeMouvement.Cols[19].Text:='C°Commune';
     TableauListeMouvement.Cols[20].Text:='Commune';
     TableauListeMouvement.Cols[21].Text:='C°Zone';
     TableauListeMouvement.Cols[22].Text:='Zone';
     TableauListeMouvement.Cols[23].Text:='Adresse';
     TableauListeMouvement.Cols[24].Text:='Exécution !';
     TableauListeMouvement.Cols[25].Text:='NumProjet ';
     TableauListeMouvement.Cols[26].Text:='Projet';
     TableauListeMouvement.Cols[27].Text:='Mode Paiement';
     TableauListeMouvement.Cols[28].Text:='Num Domiciliation';
     TableauListeMouvement.Cols[29].Text:='Domiciliation';
     TableauListeMouvement.Cols[30].Text:='Num Pièce';
     TableauListeMouvement.Cols[31].Text:='Num Avis';
     TableauListeMouvement.Cols[32].Text:='OdrMAp';
     TableauListeMouvement.Cols[33].Text:='SourceName';
     TableauListeMouvement.Cols[34].Text:='DataSourceName';
     TableauListeMouvement.Cols[35].Text:='DataTiers';
     TableauListeMouvement.Cols[36].Text:='RéfMouvement';
     TableauListeMouvement.Cols[37].Text:='Validation';
     TableauListeMouvement.Cols[38].Text:='P°Begin';
     TableauListeMouvement.Cols[39].Text:='P°End';
     TableauListeMouvement.Cols[40].Text:='P°Mvt';

     TableauListeMouvement.Cols[41].Text:='Code Utilisateur';
     TableauListeMouvement.Cols[42].Text:='Matricule Préleveur';
     TableauListeMouvement.Cols[43].Text:='Type véhicule';
     TableauListeMouvement.Cols[44].Text:='Tonage';

     TableauListeMouvement.Cols[45].Text:='Code Préleveur';
     TableauListeMouvement.Cols[46].Text:='Nom Préleveur';
     TableauListeMouvement.Cols[47].Text:='Prénom Prélveur';
     TableauListeMouvement.Cols[48].Text:='Indice Initial';
     TableauListeMouvement.Cols[49].Text:='Indice Final';

     TableauListeMouvement.Cols[50].Text:='Date Indice Initial';
     TableauListeMouvement.Cols[51].Text:='Heure Indice Initial';
     TableauListeMouvement.Cols[52].Text:='Date Indice Final';
     TableauListeMouvement.Cols[53].Text:='Heure Indice Final';
     TableauListeMouvement.Cols[54].Text:='Num Pont';

     TableauListeMouvement.RowCount:=2;
     TableauListeMouvement.Rows[1].Text:='';
     
     TypeProces:='Business';
     FichierConcerne:='FListeMouvement';

     Adresse:='';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChListeMouvementX:=Adresse;
     assignfile(FListeMouvementX,ChListeMouvementX);
     try
     if FileExists(ChListeMouvementX)then
     Reset(FListeMouvementX)
     else begin affichermessage('Attention ! {'+ChListeMouvementX+'} n''existe pas !'); exit; end;//Rewrite(FListeMouvementX);
     Seek(FListeMouvementX,0);
     R:=0;
     while not eof(FListeMouvementX)do
     begin
          read(FListeMouvementX,RListeMouvementX);

          R:=R+1;
          TableauListeMouvement.Rows[R].Text:=inttostr(R);
          TableauListeMouvement.Cells[1,R]:=inttostr(RListeMouvementX.OrdreListeMouvement);
          TableauListeMouvement.Cells[2,R]:=inttostr(RListeMouvementX.NumListeMouvement);
          TableauListeMouvement.Cells[3,R]:=inttostr(RListeMouvementX.PositionTypeMouvement);
          TableauListeMouvement.Cells[4,R]:=inttostr(RListeMouvementX.PositionMouvement);
          TableauListeMouvement.Cells[5,R]:=RListeMouvementX.DateMouvement;
          TableauListeMouvement.Cells[6,R]:=RListeMouvementX.CodeTypeFormule;
          TableauListeMouvement.Cells[7,R]:=RListeMouvementX.TypeProces;
          TableauListeMouvement.Cells[8,R]:=RListeMouvementX.FichierTiersConserne;
          TableauListeMouvement.Cells[9,R]:=RListeMouvementX.CodeTiers;
          //RTier:=ChercherTiers(RListeMouvementX.TypeProces,RListeMouvementX.FichierTiersConserne,RListeMouvementX.CodeTiers,'');
          TableauListeMouvement.Cells[10,R]:='';//RTier.NomTiers+' '+RTier.PrenomTiers;
          TableauListeMouvement.Cells[10,R]:=TableauListeMouvement.Cells[10,R]+' {'+RListeMouvementX.DataTiersSupplementaire+'}';
          TableauListeMouvement.Cells[11,R]:=Vergule(floattostr(RListeMouvementX.MontantMouvement),'2','C','');
          TableauListeMouvement.Cells[12,R]:=RListeMouvementX.DateExecutionMouvement;
          TableauListeMouvement.Cells[13,R]:=RListeMouvementX.CodePaysExecutionMouvement;
          //TableauListeMouvement.Cells[14,R]:=ChercherLocalisationGeographique(RListeMouvementX.CodePaysExecutionMouvement,'FPays').IntitulleLocalisationGeographique;
          TableauListeMouvement.Cells[15,R]:=RListeMouvementX.CodeWilayaExecutionMouvement;
          //TableauListeMouvement.Cells[16,R]:=ChercherLocalisationGeographique(RListeMouvementX.CodeWilayaExecutionMouvement,'FWilaya').IntitulleLocalisationGeographique;
          TableauListeMouvement.Cells[17,R]:=RListeMouvementX.CodeDairaExecutionMouvement;
          //TableauListeMouvement.Cells[18,R]:=ChercherLocalisationGeographique(RListeMouvementX.CodeDairaExecutionMouvement,'FDaira').IntitulleLocalisationGeographique;
          TableauListeMouvement.Cells[19,R]:=RListeMouvementX.CodeCommuneExecutionMouvement;
          //TableauListeMouvement.Cells[20,R]:=ChercherLocalisationGeographique(RListeMouvementX.CodeCommuneExecutionMouvement,'FCommune').IntitulleLocalisationGeographique;
          TableauListeMouvement.Cells[21,R]:=RListeMouvementX.CodeZoneExecutionMouvement;
          //TableauListeMouvement.Cells[22,R]:=ChercherLocalisationGeographique(RListeMouvementX.CodeZoneExecutionMouvement,'FZone').IntitulleLocalisationGeographique;
          TableauListeMouvement.Cells[23,R]:=RListeMouvementX.AdresseExecutionMouvement;
          TableauListeMouvement.Cells[24,R]:=booleantostr(RListeMouvementX.OKExecution);
          TableauListeMouvement.Cells[25,R]:=RListeMouvementX.NumProjetFinance;
          //TableauListeMouvement.Cells[26,R]:=ChercherProjetFinance(RListeMouvementX.NumProjetFinance,PositionProjetFinancesRecherche).DesignationProjetFinance;
          TableauListeMouvement.Cells[27,R]:=RListeMouvementX.ModePaiement;
          TableauListeMouvement.Cells[28,R]:=RListeMouvementX.NumDomiciliation;
          TableauListeMouvement.Cells[29,R]:=RListeMouvementX.Domiciliation;
          TableauListeMouvement.Cells[30,R]:=RListeMouvementX.NumPiece;
          TableauListeMouvement.Cells[31,R]:=RListeMouvementX.ListeNumAvis;
          TableauListeMouvement.Cells[32,R]:=RListeMouvementX.OrdreListeMouvementAppartenant;
          TableauListeMouvement.Cells[33,R]:=RListeMouvementX.SourceName;
          TableauListeMouvement.Cells[34,R]:=RListeMouvementX.DataSourceName;
          TableauListeMouvement.Cells[35,R]:=RListeMouvementX.DataTiersSupplementaire;
          TableauListeMouvement.Cells[36,R]:=RListeMouvementX.ReferenceSourceListeMouvement;
          TableauListeMouvement.Cells[37,R]:=booleantostr(RListeMouvementX.ValidationListeMouvement);
          //TableauListeMouvement.Cells[38,R]:=inttostr(RListeMouvementX.PositionDetailMouvementBegin);
          //TableauListeMouvement.Cells[39,R]:=inttostr(RListeMouvementX.PositionDetailMouvementEnd);
          TableauListeMouvement.Cells[40,R]:=inttostr(R-1);
          TableauListeMouvement.Cells[41,R]:='';
          TableauListeMouvement.Cells[42,R]:='';
          TableauListeMouvement.Cells[43,R]:='';
          TableauListeMouvement.Cells[44,R]:='';
          TableauListeMouvement.Cells[45,R]:='';
          TableauListeMouvement.Cells[46,R]:='';
          TableauListeMouvement.Cells[47,R]:='';
          TableauListeMouvement.Cells[48,R]:='';
          TableauListeMouvement.Cells[49,R]:='';
          TableauListeMouvement.Cells[50,R]:='';
          TableauListeMouvement.Cells[51,R]:='';
          TableauListeMouvement.Cells[52,R]:='';
          TableauListeMouvement.Cells[53,R]:='';
          TableauListeMouvement.Cells[54,R]:='';

     end;
     Finally
     CloseFile(FListeMouvementX);
     end;

     if(R>0)then
     begin
          TableauListeMouvement.RowCount:=R+1;
     end
     else
     begin
          TableauListeMouvement.RowCount:=2;
     end;

     IndiquerNomPrenomMultiTiers(TableauListeMouvement,7,8,9,'10','','','','','','','');
end;

procedure TFSMenuPrincipal.BitAppliquerMiseAJourDataClick(Sender: TObject);
begin
     if(FSMenuPrincipal.RBConfirmationAppliquerMiseAJourData.Checked=true)
     then
     begin
          AppliquerMiseAJourData;
          FSMenuPrincipal.RBConfirmationAppliquerMiseAJourData.Checked:=false;
          FSMenuPrincipal.AfficheAppliquerMiseAJourData.Visible:=false;
     end
     else showmessage('Veillez confirmé la mise à jour SVP !');
end;

procedure TFSMenuPrincipal.BitBtn18Click(Sender: TObject);
begin
     FSMenuPrincipal.RBConfirmationAppliquerMiseAJourData.Checked:=false;
     FSMenuPrincipal.AfficheAppliquerMiseAJourData.Visible:=false;
end;

procedure TFSMenuPrincipal.Prstationdeservice1Click(Sender: TObject);
begin
     if not AccesPrivilegies('FS Préstation de service',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then
     begin
          Exit;
     end;

     FSPrestationService.Show;

     FSPrestationService.TableauDetailEtat.ColCount:=9;
     FSPrestationService.TableauDetailEtat.Cols[0].Text:='';
     FSPrestationService.TableauDetailEtat.Cols[1].Text:='';
     FSPrestationService.TableauDetailEtat.Cols[2].Text:='';
     FSPrestationService.TableauDetailEtat.Cols[3].Text:='';
     FSPrestationService.TableauDetailEtat.Cols[4].Text:='';
     FSPrestationService.TableauDetailEtat.Cols[5].Text:='';
     FSPrestationService.TableauDetailEtat.Cols[6].Text:='';
     FSPrestationService.TableauDetailEtat.Cols[7].Text:='';
     FSPrestationService.TableauDetailEtat.Cols[8].Text:='';

     FSPrestationService.TableauDetailEtat.RowHeights[0]:=0;
     FSPrestationService.TableauDetailEtat.RowHeights[1]:=0;
     FSPrestationService.TableauDetailEtat.RowHeights[2]:=0;
     FSPrestationService.TableauDetailEtat.RowHeights[3]:=0;
     FSPrestationService.TableauDetailEtat.RowHeights[4]:=0;


     FSPrestationService.TableauDetailEtat.RowCount:=7;
     FSPrestationService.TableauDetailEtat.Cells[0,5]:='N°';
     FSPrestationService.TableauDetailEtat.Cells[1,5]:='Code';
     FSPrestationService.TableauDetailEtat.Cells[2,5]:='Désignation';
     FSPrestationService.TableauDetailEtat.Cells[3,5]:='Réference';
     FSPrestationService.TableauDetailEtat.Cells[4,5]:='Unité M.';
     FSPrestationService.TableauDetailEtat.Cells[5,5]:='Coût';
     FSPrestationService.TableauDetailEtat.Cells[6,5]:='Quantité';
     FSPrestationService.TableauDetailEtat.Cells[7,5]:='   Prix Unitaire.   ';
     FSPrestationService.TableauDetailEtat.Cells[8,5]:='   Montant H.T   ';
     FSPrestationService.TableauDetailEtat.Rows[6].Text:='';

     FSPrestationService.TableauTotalHT.ColCount:=6;
     FSPrestationService.TableauTotalHT.Cols[0].Text:='P°';
     FSPrestationService.TableauTotalHT.Cols[1].Text:='Code';
     FSPrestationService.TableauTotalHT.Cols[2].Text:='Libellé';
     FSPrestationService.TableauTotalHT.Cols[3].Text:='Type Affichage';
     FSPrestationService.TableauTotalHT.Cols[4].Text:='Active';
     FSPrestationService.TableauTotalHT.Cols[5].Text:='Montant';

     FSPrestationService.TableauTotalHT.ColWidths[0]:=0;
     FSPrestationService.TableauTotalHT.ColWidths[1]:=0;
     //FSPrestationService.TableauTotalHT.ColWidths[2]:=0;
     FSPrestationService.TableauTotalHT.ColWidths[3]:=0;
     FSPrestationService.TableauTotalHT.ColWidths[4]:=0;
     //FSPrestationService.TableauTotalHT.ColWidths[5]:=0;

     FSPrestationService.TableauTotalHT.RowCount:=2;
     FSPrestationService.TableauTotalHT.Cells[2,1]:='M.H.T.';


     FSPrestationService.AfficheDetailEtat.Left:=208;
     FSPrestationService.AfficheDetailEtat.Top:=88;

     FSPrestationService.DtatClient.Lines.Text:='';
     OpenFParc(RParc);
     FSPrestationService.DtatClient.Lines.Add(RParc.Text1);
     FSPrestationService.DtatClient.Lines.Add(RParc.Text2);
     FSPrestationService.DtatClient.Lines.Add(RParc.Text3);
     FSPrestationService.DtatClient.Lines.Add(RParc.Text4);
     FSPrestationService.DtatClient.Lines.Add(RParc.Text5);
     FSPrestationService.DtatClient.Lines.Add(RParc.Text6);
     FSPrestationService.DtatClient.Lines.Add(RParc.Text7);
     FSPrestationService.DtatClient.Lines.Add(RParc.Text8);
     FSPrestationService.DtatClient.Lines.Add(RParc.Text9);
     FSPrestationService.DtatClient.Lines.Add(RParc.Text10);

     FSPrestationService.EditDateEtat.Date:=date;
     FSPrestationService.EditTimeEtat.Time:=time;

     if(FSPrestationService.RBNumEtatAutomatique.Checked=true)then
     begin
          FSPrestationService.DataNumEtat.Text:=
          Midellaters(datetostr(FSPrestationService.EditDateEtat.Date),9,10)+
          Midellaters(datetostr(FSPrestationService.EditDateEtat.Date),4,5)+
          Midellaters(datetostr(FSPrestationService.EditDateEtat.Date),1,2)+'-'+
          Midellaters(timetostr(FSPrestationService.EditTimeEtat.Time),7,8)+
          Midellaters(timetostr(FSPrestationService.EditTimeEtat.Time),4,5)+
          Midellaters(timetostr(FSPrestationService.EditTimeEtat.Time),1,2);
     end;

     FSPrestationService.DataNumEtat.SetFocus;

end;

procedure TFSMenuPrincipal.TableauReouvertureDblClick(Sender: TObject);
begin
     FSMenuPrincipal.AfficheClotureReouvertureExercice.Visible:=true;
     FSMenuPrincipal.EditExercice.Text:=ExerciceAnnee;

     if FinReouvertureClotureExercice(FSMenuPrincipal.EditExercice.Text)
     then FSMenuPrincipal.InfoClotureExercice.Caption:='Exercice '+FSMenuPrincipal.EditExercice.Text+' clôturé !'
     else FSMenuPrincipal.InfoClotureExercice.Caption:='Exercice '+FSMenuPrincipal.EditExercice.Text+' non clôturé !';

     FSMenuPrincipal.EditExercice.SetFocus;
end;

procedure TFSMenuPrincipal.RBSuspendrePublicationClick(Sender: TObject);
begin
     FSMenuPrincipal.RBSuspendrePublication.Checked;
     FSPublicationReseaux.RBPublicationActive.Checked:=false;
end;

procedure TFSMenuPrincipal.Bordereauxdenvoi1Click(Sender: TObject);
var  i,R,EcartExercice:integer;  OKBordereau:boolean;  TypeProcesSelect,FichierConcerneTiersSelect:string;
begin
     if not AccesPrivilegies('FS Bordereau Envoi',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSBordereauEnvoi.Show;

     FSBordereauEnvoi.AfficherListeBordereauEnvoi.Left:=FSBordereauEnvoi.TableauBordereauEnvoi.Left;
     FSBordereauEnvoi.AfficherListeBordereauEnvoi.Top:=FSBordereauEnvoi.TableauBordereauEnvoi.Top;

     FSBordereauEnvoi.EditPositionBordereau.Text:='';
     FSBordereauEnvoi.EditRefference.ItemIndex:=0;
     FSBordereauEnvoi.EditNumBordereau.Text:='';
     FSBordereauEnvoi.EditAnneeBordereau.Text:=ExerciceAnnee;
     FSBordereauEnvoi.EditFaitA.ItemIndex:=0;
     FSBordereauEnvoi.EditDateBordereau.Date:=Date;

     OpenFParc(RParc);
     ChBordereauEnvoi:=RParc.Parcours+'\'+Exercice+'FBordereauEnvoi';
     assignfile(FBordereauEnvoi,ChBordereauEnvoi);
     if FileExists(ChBordereauEnvoi)then
     Reset(FBordereauEnvoi)
     else Rewrite(FBordereauEnvoi);
     Seek(FBordereauEnvoi,0);
     OKBordereau:=false;
     TypeProcesSelect:='';
     FichierConcerneTiersSelect:='';
     while not eof(FBordereauEnvoi)and(OKBordereau=false)do
     begin
          read(FBordereauEnvoi,RBordereauEnvoi);

          if(RBordereauEnvoi.TypeProces<>'')and(RBordereauEnvoi.FichierConcerneTiers<>'')then
          begin
               OKBordereau:=true;
               TypeProcesSelect:=RBordereauEnvoi.TypeProces;
               FichierConcerneTiersSelect:=RBordereauEnvoi.FichierConcerneTiers;
          end;
     end;
     CloseFile(FBordereauEnvoi);
     
     if(OKBordereau=true)then
     begin
          FSBordereauEnvoi.EditBordereauEnvoiTypeProces.ItemIndex:=IndiquerPositionComboBox(FSBordereauEnvoi.EditBordereauEnvoiTypeProces,TypeProcesSelect);
          ListeTypeFichierTiersBox(FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text,'','',FSBordereauEnvoi.EditBordereauEnvoiFichierConserne,FSBordereauEnvoi.TitreEditBordereauEnvoiFichierConserne);
          FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.ItemIndex:=IndiquerPositionComboBox(FSBordereauEnvoi.EditBordereauEnvoiFichierConserne,FichierConcerneTiersSelect);
     end
     else
     begin
          FSBordereauEnvoi.EditBordereauEnvoiTypeProces.ItemIndex:=0;
          ListeTypeFichierTiersBox(FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text,'','',FSBordereauEnvoi.EditBordereauEnvoiFichierConserne,FSBordereauEnvoi.TitreEditBordereauEnvoiFichierConserne);
          FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.ItemIndex:=0;
     end;

     FSBordereauEnvoi.EditTiersCodeTiers.Text:='';
     FSBordereauEnvoi.EditDestinationBordereau.Lines.Text:='';
     FSBordereauEnvoi.EditSignataire.ItemIndex:=0;
     FSBordereauEnvoi.EditExomplairesBordereau.Lines.Text:='';
     FSBordereauEnvoi.EditObservationBordereau.Lines.Text:='';

     FSBordereauEnvoi.EditExercice.Items.Text:='';
     FSBordereauEnvoi.EditExercice.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-3));
     FSBordereauEnvoi.EditExercice.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-2));
     FSBordereauEnvoi.EditExercice.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-1));
     FSBordereauEnvoi.EditExercice.Items.Add(inttostr(strtointeger(Lastlaters(datetostr(date),4))-0));
     FSBordereauEnvoi.EditExercice.ItemIndex:=3;

     FSBordereauEnvoi.EditTiersTypeProces.ItemIndex:=0;
     ListeTypeFichierTiersBox(FSBordereauEnvoi.EditTiersTypeProces.Text,'','',FSBordereauEnvoi.EditTiersFichierConserne,FSBordereauEnvoi.TitreEditTiersFichierConserne);
     FSBordereauEnvoi.EditTiersFichierConserne.ItemIndex:=0;
     FSBordereauEnvoi.TableauTiersListeTiers.Left:=488;
     FSBordereauEnvoi.TableauTiersListeTiers.Top:=88;

     FSBordereauEnvoi.EditExerciceBordereauEnvoi.Items.Text:='';
     EcartExercice:=strtointeger(Lastlaters(datetostr(date),4))-strtointeger(ExerciceAnnee);

     for R:=-1 to EcartExercice do
     begin
          FSBordereauEnvoi.EditExerciceBordereauEnvoi.Items.Add(inttostr(strtointeger(ExerciceAnnee)+R));
     end;

     FSBordereauEnvoi.EditExerciceBordereauEnvoi.ItemIndex:=EcartExercice+1;

     FSBordereauEnvoi.EditMoisBordereauEnvoi.ItemIndex:=-1;
     if(FSBordereauEnvoi.EditMoisBordereauEnvoi.Text<>'')then
     begin
          FSBordereauEnvoi.EditDateDebutBordereauEnvoi.Date:=strtodate('01/'+Completezerogauche(MidelLaters(FSBordereauEnvoi.EditMoisBordereauEnvoi.Text,2,3),'2')+'/'+FSBordereauEnvoi.EditExerciceBordereauEnvoi.Text);
          FSBordereauEnvoi.EditDateFinBordereauEnvoi.Date:=strtodate(Completezerogauche(inttostr(LastDay(datetostr(FSBordereauEnvoi.EditDateDebutBordereauEnvoi.Date))),'2')+'/'+Completezerogauche(MidelLaters(FSBordereauEnvoi.EditMoisBordereauEnvoi.Text,2,3),'2')+'/'+FSBordereauEnvoi.EditExerciceBordereauEnvoi.Text);
     end
     else
     begin
          FSBordereauEnvoi.EditDateDebutBordereauEnvoi.Date:=strtodate('01/01/'+FSBordereauEnvoi.EditExerciceBordereauEnvoi.Text);
          FSBordereauEnvoi.EditDateFinBordereauEnvoi.Date:=strtodate('31/12/'+FSBordereauEnvoi.EditExerciceBordereauEnvoi.Text);
     end;

     FSBordereauEnvoi.ListeBordereauEnvoi.Show;
     FSBordereauEnvoi.TableauBordereauEnvoi.SetFocus;
end;

procedure TFSMenuPrincipal.CourrierMail1Click(Sender: TObject);
begin
     FSCourrierMail.Show;
end;

procedure TFSMenuPrincipal.BitBtn19Click(Sender: TObject);
begin
     FSCourrierMail.Show;
     ReInitialisationFicheMail(true);
end;

procedure TFSMenuPrincipal.UpDown5Click(Sender: TObject;
  Button: TUDBtnType);
begin
     if(FSMenuPrincipal.AfficheDefileRaccourcis.Left<8)then FSMenuPrincipal.AfficheDefileRaccourcis.Left:=FSMenuPrincipal.AfficheDefileRaccourcis.Left+72;
end;

procedure TFSMenuPrincipal.UpDown4Click(Sender: TObject;
  Button: TUDBtnType);
begin
     if(FSMenuPrincipal.AfficheDefileRaccourcis.Left>8)then FSMenuPrincipal.AfficheDefileRaccourcis.Left:=FSMenuPrincipal.AfficheDefileRaccourcis.Left-72;
end;

procedure TFSMenuPrincipal.IncrimenteClick(Sender: TObject;
  Button: TUDBtnType);
begin
     FSMenuPrincipal.AfficheDefileRaccourcis.Left:=FSMenuPrincipal.Incrimente.Position-((15-strtoint(FSMenuPrincipal.EditNbrRaccourcis.Text))*(FSMenuPrincipal.BitRaccourci01.Width+7));
end;

procedure TFSMenuPrincipal.BitRaccourci01Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);

     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);

end;

procedure TFSMenuPrincipal.BitRaccourci03Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);

     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);
end;

procedure TFSMenuPrincipal.BitRaccourci04Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);

     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);
end;

procedure TFSMenuPrincipal.BitRaccourci05Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);
     
     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);
end;

procedure TFSMenuPrincipal.BitRaccourci06Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);

     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);
end;

Procedure IntituleImprime(NomImprime:string);
begin

end;

procedure TFSMenuPrincipal.InformationsEntreprise1Click(Sender: TObject);
begin
     if not AccesPrivilegies('FS Paramètres avancés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSParametresAvances.Show;
     FSParametresAvances.PageDataEntreprise.Show;
     FSParametresAvances.PageOrganismeTutel.Show;
     FSParametresAvances.EditNomPageShow.Text:='PageOrganismeTutel';
     FSParametresAvances.PagePrincipale.Enabled:=false;
     FSParametresAvances.EditCodeActivation.Text:='';
     FSParametresAvances.EditCodeActivation.SetFocus;
end;

procedure TFSMenuPrincipal.ParamtresMenu1Click(Sender: TObject);
begin
     if not AccesPrivilegies('FS Paramètres avancés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSParametresAvances.Show;
     FSParametresAvances.PageDataEntreprise.Show;
     FSParametresAvances.PageParametresMenu.Show;
     FSParametresAvances.EditNomPageShow.Text:='PageParametresMenu';

     FSParametresAvances.PagePrincipale.Enabled:=false;
     FSParametresAvances.EditCodeActivation.Text:='';
     FSParametresAvances.EditCodeActivation.SetFocus;
end;

procedure TFSMenuPrincipal.IntitulImprims1Click(Sender: TObject);
begin
     if not AccesPrivilegies('FS Paramètres avancés',FSMenuPrincipal.EditCodeUtilisateur.Text,'MC',true)then exit;

     FSParametresAvances.Show;
     FSParametresAvances.PageDataEntreprise.Show;
     FSParametresAvances.PageIntituleImprime.Show;
     FSParametresAvances.EditNomPageShow.Text:='PageIntituleImprime';

     FSParametresAvances.PagePrincipale.Enabled:=false;
     FSParametresAvances.EditCodeActivation.Text:='';
     FSParametresAvances.EditCodeActivation.SetFocus;
end;

procedure TFSMenuPrincipal.RBAfficherPaletteDefilementMenuRaccourcisClick(
  Sender: TObject);
var  i,iSelect:integer; OKSousMenu:boolean;
begin
     FSMenuPrincipal.AfficherMenuRaccourcis.Visible:=FSMenuPrincipal.RBAfficherPaletteDefilementMenuRaccourcis.Checked;

     OpenFParc(RParc);
     ChRubriquesSousMenu:=RParc.Parcours+'\'+Entreprise+'FRubriquesSousMenu';
     assignfile(FRubriquesSousMenu,ChRubriquesSousMenu);
     if FileExists(ChRubriquesSousMenu)then
     Reset(FRubriquesSousMenu)
     else Rewrite(FRubriquesSousMenu);
     Seek(FRubriquesSousMenu,0);
     OKSousMenu:=false;
     i:=0;
     iSelect:=0;
     while not eof(FRubriquesSousMenu)and(OKSousMenu=false)do
     begin
          read(FRubriquesSousMenu,RRubriquesSousMenu);

          if(inttostr(RRubriquesSousMenu.PositionRubriqueSousMenu)='999999999')
          or(RRubriquesSousMenu.NomSousMenu=FSParametresAvances.EditNomRubriquesSousMenus.Text)
          then
          begin
               OKSousMenu:=true;
               iSelect:=i;
          end;
     i:=i+1;
     end;

     if(OKSousMenu=true)then i:=iSelect;
     Seek(FRubriquesSousMenu,i);
     RRubriquesSousMenu.PositionRubriqueSousMenu:=999999999;
     RRubriquesSousMenu.PositionSousMenu0:='';
     RRubriquesSousMenu.PositionSousMenu1:='';
     RRubriquesSousMenu.PositionSousMenu2:='';
     RRubriquesSousMenu.PositionSousMenu3:='';
     RRubriquesSousMenu.PositionSousMenu4:='';
     RRubriquesSousMenu.PositionSousMenu5:='';
     RRubriquesSousMenu.NomSousMenu:='AfficherMenuRaccourcis';
     RRubriquesSousMenu.ActiveSousMenu:=FSMenuPrincipal.RBAfficherPaletteDefilementMenuRaccourcis.Checked;
     Write(FRubriquesSousMenu,RRubriquesSousMenu);
     CloseFile(FRubriquesSousMenu);
end;

procedure TFSMenuPrincipal.FicheFormulesdecompositions1Click(
  Sender: TObject);
begin
     FSFormuleComposition.Show;
     FSFormuleComposition.PageDetailFormuleComposition.Show;
     ListeOperationFormuleComposition(FSFormuleComposition.TableauListeOperationFormuleComposition,'');
     ListeDetailOperationFormuleComposition(FSFormuleComposition.TableauDetailOperationFormuleComposition,FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[0,FSFormuleComposition.TableauListeOperationFormuleComposition.Row]);
end;

procedure TFSMenuPrincipal.BitRaccourci07Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);
     
     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);
end;

procedure TFSMenuPrincipal.BitRaccourci02Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);

     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);
end;

procedure TFSMenuPrincipal.BitRaccourci08Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);

     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);
end;

procedure TFSMenuPrincipal.BitRaccourci09Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);

     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);
end;

procedure TFSMenuPrincipal.BitRaccourci10Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);

     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);
end;

procedure TFSMenuPrincipal.BitRaccourci11Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);

     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);
end;

procedure TFSMenuPrincipal.BitRaccourci12Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);

     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);
end;

procedure TFSMenuPrincipal.BitRaccourci13Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);

     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);
end;

procedure TFSMenuPrincipal.BitRaccourci14Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);

     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);
end;

procedure TFSMenuPrincipal.BitRaccourci15Click(Sender: TObject);
begin
     BoutonRaccourciSelect:=(Sender as TBitBtn);

     if(ImporterRaccourciMenu(BoutonRaccourciSelect).Name<>'Nul1')
     then  ImporterRaccourciMenu(BoutonRaccourciSelect).Click
     else  ChargerBouTonRacourci(Sender);
end;

procedure TFSMenuPrincipal.BitBtn20Click(Sender: TObject);
begin
     FSMenuPrincipal.AfficheAffectationMenuRaccorcis.Visible:=false;
end;

procedure TFSMenuPrincipal.BitBtn21Click(Sender: TObject);
var  i,iSelect:integer;
     OKAffectationMenuRaccourci:boolean;
begin
     FSMenuPrincipal.AfficheAffectationMenuRaccorcis.Visible:=false;

     OpenFParc(RParc);
     ChAffectationMenuRaccourci:=RParc.Parcours+'\'+'FAffectationMenuRaccourci';
     assignfile(FAffectationMenuRaccourci,ChAffectationMenuRaccourci);
     if FileExists(ChAffectationMenuRaccourci)then
     Reset(FAffectationMenuRaccourci)
     else Rewrite(FAffectationMenuRaccourci);
     Seek(FAffectationMenuRaccourci,0);
     OKAffectationMenuRaccourci:=false;
     i:=0;
     iSelect:=0;
     while not eof(FAffectationMenuRaccourci)and(OKAffectationMenuRaccourci=false)do
     begin
          read(FAffectationMenuRaccourci,RAffectationMenuRaccourci);

          if(TBitBtn(FindComponent(RAffectationMenuRaccourci.NamBoutonRaccourcis))=BoutonRaccourciSelect)then
          begin
               OKAffectationMenuRaccourci:=true;
               iSelect:=i;
          end;
     i:=i+1;
     end;
        
     if(OKAffectationMenuRaccourci=true)then i:=iSelect;
     RAffectationMenuRaccourci.Position:=i;
     RAffectationMenuRaccourci.NamBoutonRaccourcis:=FSMenuPrincipal.EditBoutonRaccourcis.Text;
     RAffectationMenuRaccourci.Indexe0RaccourcisMenu:=FSMenuPrincipal.EditIndexe0.Text;
     RAffectationMenuRaccourci.Indexe1RaccourcisMenu:=FSMenuPrincipal.EditIndexe1.Text;
     RAffectationMenuRaccourci.Indexe2RaccourcisMenu:=FSMenuPrincipal.EditIndexe2.Text;
     RAffectationMenuRaccourci.Indexe3RaccourcisMenu:=FSMenuPrincipal.EditIndexe3.Text;
     RAffectationMenuRaccourci.Indexe4RaccourcisMenu:=FSMenuPrincipal.EditIndexe4.Text;
     RAffectationMenuRaccourci.Indexe5RaccourcisMenu:=FSMenuPrincipal.EditIndexe5.Text;
     RAffectationMenuRaccourci.AffichageBouton:=FSMenuPrincipal.EditAffichageBouton.Text;
     Seek(FAffectationMenuRaccourci,i);
     Write(FAffectationMenuRaccourci,RAffectationMenuRaccourci);

     CloseFile(FAffectationMenuRaccourci);

     BoutonRaccourciSelect.Caption:=FSMenuPrincipal.EditAffichageBouton.Text;
end;

Procedure ListeAffectationMenuRaccourci(TableauAffectationMenuRaccourci:TStringGrid; InitialiserSelection:boolean);
var  R,C:integer;
     OKAffectationMenuRaccourci:boolean;
     NotRow,NotCol,RowSelect:string;
begin
     RowSelect:='';
     if(InitialiserSelection=true)then
     begin
          R:=1;
          while(R<=TableauAffectationMenuRaccourci.RowCount-1)do
          begin
               if(TableauAffectationMenuRaccourci.Cells[10,R]='OK')then
               begin
                    if(RowSelect='')
                    then RowSelect:=inttostr(R)
                    else RowSelect:=RowSelect+';'+inttostr(R)
               end;
          R:=R+1;
          end;
     end;

     TableauAffectationMenuRaccourci.ColCount:=11;
     TableauAffectationMenuRaccourci.Cols[0].Text:='P°';
     TableauAffectationMenuRaccourci.Cols[1].Text:='Bouton';
     TableauAffectationMenuRaccourci.Cols[2].Text:='Raccourci';
     TableauAffectationMenuRaccourci.Cols[3].Text:='IndiceMenu0';
     TableauAffectationMenuRaccourci.Cols[4].Text:='IndiceMenu1';
     TableauAffectationMenuRaccourci.Cols[5].Text:='IndiceMenu2';
     TableauAffectationMenuRaccourci.Cols[6].Text:='IndiceMenu3';
     TableauAffectationMenuRaccourci.Cols[7].Text:='IndiceMenu4';
     TableauAffectationMenuRaccourci.Cols[8].Text:='IndiceMenu5';
     TableauAffectationMenuRaccourci.Cols[9].Text:='Affichage';
     TableauAffectationMenuRaccourci.Cols[10].Text:='Selection';

     TableauAffectationMenuRaccourci.RowCount:=2;
     TableauAffectationMenuRaccourci.Rows[1].Text:='';

     OpenFParc(RParc);
     ChAffectationMenuRaccourci:=RParc.Parcours+'\'+'FAffectationMenuRaccourci';
     assignfile(FAffectationMenuRaccourci,ChAffectationMenuRaccourci);
     if FileExists(ChAffectationMenuRaccourci)then
     Reset(FAffectationMenuRaccourci)
     else Rewrite(FAffectationMenuRaccourci);
     Seek(FAffectationMenuRaccourci,0);
     OKAffectationMenuRaccourci:=false;
     R:=0;
     while not eof(FAffectationMenuRaccourci)do
     begin
          read(FAffectationMenuRaccourci,RAffectationMenuRaccourci);

          OKAffectationMenuRaccourci:=true;

          if(OKAffectationMenuRaccourci=true)then
          begin
               R:=R+1;
               TableauAffectationMenuRaccourci.Rows[R].Text:=inttostr(RAffectationMenuRaccourci.Position);
               TableauAffectationMenuRaccourci.Cells[1,R]:=RAffectationMenuRaccourci.NamBoutonRaccourcis;
               TableauAffectationMenuRaccourci.Cells[2,R]:=IndiqueRaccourciMenu(RAffectationMenuRaccourci.Indexe0RaccourcisMenu,RAffectationMenuRaccourci.Indexe1RaccourcisMenu,RAffectationMenuRaccourci.Indexe2RaccourcisMenu,RAffectationMenuRaccourci.Indexe3RaccourcisMenu,RAffectationMenuRaccourci.Indexe4RaccourcisMenu,RAffectationMenuRaccourci.Indexe5RaccourcisMenu).Name;
               TableauAffectationMenuRaccourci.Cells[3,R]:=RAffectationMenuRaccourci.Indexe0RaccourcisMenu;
               TableauAffectationMenuRaccourci.Cells[4,R]:=RAffectationMenuRaccourci.Indexe1RaccourcisMenu;
               TableauAffectationMenuRaccourci.Cells[5,R]:=RAffectationMenuRaccourci.Indexe2RaccourcisMenu;
               TableauAffectationMenuRaccourci.Cells[6,R]:=RAffectationMenuRaccourci.Indexe3RaccourcisMenu;
               TableauAffectationMenuRaccourci.Cells[7,R]:=RAffectationMenuRaccourci.Indexe4RaccourcisMenu;
               TableauAffectationMenuRaccourci.Cells[8,R]:=RAffectationMenuRaccourci.Indexe5RaccourcisMenu;
               TableauAffectationMenuRaccourci.Cells[9,R]:=RAffectationMenuRaccourci.AffichageBouton;
               TableauAffectationMenuRaccourci.Cells[10,R]:='';
          end;
     end;

     if(R>0)then TableauAffectationMenuRaccourci.RowCount:=R+1
            else TableauAffectationMenuRaccourci.RowCount:=2;

     if(RowSelect<>'')then
     begin
          R:=1;
          while(R<=TableauAffectationMenuRaccourci.RowCount-1)do
          begin
               if(ExisteNumInTexte(inttostr(R),RowSelect))then
               begin
                    TableauAffectationMenuRaccourci.Cells[10,R]:='OK';
               end;
          R:=R+1;
          end;
     end;

     NotRow:='';
     NotCol:='3-8;10';
     for C:=1 to TableauAffectationMenuRaccourci.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol) then TableauAffectationMenuRaccourci.ColWidths[C]:=0;
     AjusterColWidth(TableauAffectationMenuRaccourci,NotRow,NotCol);
end;

procedure TFSMenuPrincipal.BitBtn22Click(Sender: TObject);
begin
     RaccourciMenuSelect:=FSMenuPrincipal.Nul1;
     FSMenuPrincipal.EditRaccourcisMenu.Text:='';
     FSMenuPrincipal.EditAffichageBouton.Text:='';
end;

Procedure ChargerBouTonRacourci(Sender: TObject);
var   BoutonRaccourciCharger:TBitBtn;
begin
     BoutonRaccourciCharger:=(Sender as TBitBtn);
     FSMenuPrincipal.PageParametres.Show;
     FSMenuPrincipal.AfficheAffectationMenuRaccorcis.Visible:=true;
     FSMenuPrincipal.AfficheAffectationMenuRaccorcis.Height:=161;
     FSMenuPrincipal.PageMenuRaccorcis.Height:=145;
     FSMenuPrincipal.EditPosition.Text:='';
     FSMenuPrincipal.EditBoutonRaccourcis.Text:=BoutonRaccourciCharger.Name;
     FSMenuPrincipal.EditRaccourcisMenu.Text:='';
     FSMenuPrincipal.EditAffichageBouton.Text:=BoutonRaccourciCharger.Caption;
end;

Function ImporterRaccourciMenu(BoutonRaccourcis:TBitBtn):TMenuItem;
var  OKAffectationMenuRaccourci:boolean;
begin
     ImporterRaccourciMenu:=FSMenuPrincipal.Nul1;

     OpenFParc(RParc);
     ChAffectationMenuRaccourci:=RParc.Parcours+'\'+'FAffectationMenuRaccourci';
     assignfile(FAffectationMenuRaccourci,ChAffectationMenuRaccourci);
     if FileExists(ChAffectationMenuRaccourci)then
     Reset(FAffectationMenuRaccourci)
     else Rewrite(FAffectationMenuRaccourci);
     Seek(FAffectationMenuRaccourci,0);
     OKAffectationMenuRaccourci:=false;
     while not eof(FAffectationMenuRaccourci)and(OKAffectationMenuRaccourci=false)do
     begin
          read(FAffectationMenuRaccourci,RAffectationMenuRaccourci);

          if(RAffectationMenuRaccourci.NamBoutonRaccourcis=BoutonRaccourcis.Name)then
          begin
               OKAffectationMenuRaccourci:=true;
               ImporterRaccourciMenu:=IndiqueRaccourciMenu(RAffectationMenuRaccourci.Indexe0RaccourcisMenu,RAffectationMenuRaccourci.Indexe1RaccourcisMenu,RAffectationMenuRaccourci.Indexe2RaccourcisMenu,RAffectationMenuRaccourci.Indexe3RaccourcisMenu,RAffectationMenuRaccourci.Indexe4RaccourcisMenu,RAffectationMenuRaccourci.Indexe5RaccourcisMenu);
          end;
     end;
     CloseFile(FAffectationMenuRaccourci);
end;

Function ImporterCaptionBoutonRaccourci(BoutonRaccourci:TBitBTN):string;
var  OKAffectationMenuRaccourci:boolean;
begin
     ImporterCaptionBoutonRaccourci:=BoutonRaccourci.Caption;

     OpenFParc(RParc);
     ChAffectationMenuRaccourci:=RParc.Parcours+'\'+'FAffectationMenuRaccourci';
     assignfile(FAffectationMenuRaccourci,ChAffectationMenuRaccourci);
     if FileExists(ChAffectationMenuRaccourci)then
     Reset(FAffectationMenuRaccourci)
     else Rewrite(FAffectationMenuRaccourci);
     Seek(FAffectationMenuRaccourci,0);
     OKAffectationMenuRaccourci:=false;
     while not eof(FAffectationMenuRaccourci)and(OKAffectationMenuRaccourci=false)do
     begin
          read(FAffectationMenuRaccourci,RAffectationMenuRaccourci);

          if(RAffectationMenuRaccourci.NamBoutonRaccourcis=BoutonRaccourci.Name)then
          begin
               OKAffectationMenuRaccourci:=true;
               ImporterCaptionBoutonRaccourci:=RAffectationMenuRaccourci.AffichageBouton;
          end;
     end;
     CloseFile(FAffectationMenuRaccourci);
end;

procedure TFSMenuPrincipal.EditRaccourcisMenuEnter(Sender: TObject);
begin
     FSMenuPrincipal.AfficheAffectationMenuRaccorcis.Height:=505;
     FSMenuPrincipal.PageMenuRaccorcis.Height:=489;

     TableauSousMenu.ColCount:=10;
     TableauSousMenu.Cols[0].Text:='N°';
     TableauSousMenu.Cols[1].Text:='P°0';
     TableauSousMenu.Cols[2].Text:='P°1';
     TableauSousMenu.Cols[3].Text:='P°2';
     TableauSousMenu.Cols[4].Text:='P°3';
     TableauSousMenu.Cols[5].Text:='P°4';
     TableauSousMenu.Cols[6].Text:='P°5';
     TableauSousMenu.Cols[7].Text:='Nom';
     TableauSousMenu.Cols[8].Text:='Affichage';
     TableauSousMenu.Cols[9].Text:='Visibilité';

     FSMenuPrincipal.EditOrdreMenu.Text:='-1';
     FSMenuPrincipal.EditIndexe0.Text:='';
     FSMenuPrincipal.EditIndexe1.Text:='';
     FSMenuPrincipal.EditIndexe2.Text:='';
     FSMenuPrincipal.EditIndexe3.Text:='';
     FSMenuPrincipal.EditIndexe4.Text:='';
     FSMenuPrincipal.EditIndexe5.Text:='';
     ImporterDataSousMenu(FSMenuPrincipal.TableauSousMenu,FSMenuPrincipal.EditOrdreMenu,FSMenuPrincipal.EditIndexe0.Text,FSMenuPrincipal.EditIndexe1.Text,FSMenuPrincipal.EditIndexe2.Text,FSMenuPrincipal.EditIndexe3.Text,FSMenuPrincipal.EditIndexe4.Text,FSMenuPrincipal.EditIndexe5.Text);
end;

procedure TFSMenuPrincipal.BitBtn23Click(Sender: TObject);
var  OrdreMenu:integer;
begin
     if(strtointeger(FSMenuPrincipal.EditOrdreMenu.Text)>0)then
     begin
          FSMenuPrincipal.EditOrdreMenu.Text:=inttostr(strtointeger(FSMenuPrincipal.EditOrdreMenu.Text)-2);
          OrdreMenu:=strtointeger(FSMenuPrincipal.EditOrdreMenu.Text);
          if(OrdreMenu<5)then FSMenuPrincipal.EditIndexe5.Text:='';
          if(OrdreMenu<4)then FSMenuPrincipal.EditIndexe4.Text:='';
          if(OrdreMenu<3)then FSMenuPrincipal.EditIndexe3.Text:='';
          if(OrdreMenu<2)then FSMenuPrincipal.EditIndexe2.Text:='';
          if(OrdreMenu<1)then FSMenuPrincipal.EditIndexe1.Text:='';
          if(OrdreMenu<0)then FSMenuPrincipal.EditIndexe0.Text:='';

          ImporterDataSousMenu(FSMenuPrincipal.TableauSousMenu,FSMenuPrincipal.EditOrdreMenu,FSMenuPrincipal.EditIndexe0.Text,FSMenuPrincipal.EditIndexe1.Text,FSMenuPrincipal.EditIndexe2.Text,FSMenuPrincipal.EditIndexe3.Text,FSMenuPrincipal.EditIndexe4.Text,FSMenuPrincipal.EditIndexe5.Text);
     end;
end;

Function IndiqueRaccourciMenu(PositionSousMenu0,PositionSousMenu1,PositionSousMenu2,PositionSousMenu3,PositionSousMenu4,PositionSousMenu5:string):TMenuItem;
begin
     if(((PositionSousMenu0<>'')and(strtointeger(PositionSousMenu0)>=0))
     or((PositionSousMenu1<>'')and(strtointeger(PositionSousMenu1)>=0))
     or((PositionSousMenu2<>'')and(strtointeger(PositionSousMenu2)>=0))
     or((PositionSousMenu3<>'')and(strtointeger(PositionSousMenu3)>=0))
     or((PositionSousMenu4<>'')and(strtointeger(PositionSousMenu4)>=0))
     or((PositionSousMenu5<>'')and(strtointeger(PositionSousMenu5)>=0)))
     then
     begin
          if(PositionSousMenu5<>'')then
          begin
               IndiqueRaccourciMenu:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(PositionSousMenu0)].Items[strtointeger(PositionSousMenu1)].Items[strtointeger(PositionSousMenu2)].Items[strtointeger(PositionSousMenu3)].Items[strtointeger(PositionSousMenu4)].Items[strtointeger(PositionSousMenu5)];
          end
          else
          if(PositionSousMenu4<>'')then
          begin
               IndiqueRaccourciMenu:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(PositionSousMenu0)].Items[strtointeger(PositionSousMenu1)].Items[strtointeger(PositionSousMenu2)].Items[strtointeger(PositionSousMenu3)].Items[strtointeger(PositionSousMenu4)];
          end
          else
          if(PositionSousMenu3<>'')then
          begin
               IndiqueRaccourciMenu:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(PositionSousMenu0)].Items[strtointeger(PositionSousMenu1)].Items[strtointeger(PositionSousMenu2)].Items[strtointeger(PositionSousMenu3)];
          end
          else
          if(PositionSousMenu2<>'')then
          begin
               IndiqueRaccourciMenu:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(PositionSousMenu0)].Items[strtointeger(PositionSousMenu1)].Items[strtointeger(PositionSousMenu2)];
          end
          else
          if(PositionSousMenu1<>'')then
          begin
               IndiqueRaccourciMenu:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(PositionSousMenu0)].Items[strtointeger(PositionSousMenu1)];
          end
          else
          if(PositionSousMenu0<>'')then
          begin
               IndiqueRaccourciMenu:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(PositionSousMenu0)];
          end;
     Exit;
     end;
end;

procedure TFSMenuPrincipal.TableauSousMenuDblClick(Sender: TObject);
begin
     ImporterDataSousMenu(FSMenuPrincipal.TableauSousMenu,FSMenuPrincipal.EditOrdreMenu,FSMenuPrincipal.EditIndexe0.Text,FSMenuPrincipal.EditIndexe1.Text,FSMenuPrincipal.EditIndexe2.Text,FSMenuPrincipal.EditIndexe3.Text,FSMenuPrincipal.EditIndexe4.Text,FSMenuPrincipal.EditIndexe5.Text);
end;

procedure TFSMenuPrincipal.TableauSousMenuClick(Sender: TObject);
begin
     if(FSMenuPrincipal.EditOrdreMenu.Text='0')then FSMenuPrincipal.EditIndexe0.Text:=FSMenuPrincipal.TableauSousMenu.Cells[1,FSMenuPrincipal.TableauSousMenu.Row];
     if(FSMenuPrincipal.EditOrdreMenu.Text='1')then FSMenuPrincipal.EditIndexe1.Text:=FSMenuPrincipal.TableauSousMenu.Cells[2,FSMenuPrincipal.TableauSousMenu.Row];
     if(FSMenuPrincipal.EditOrdreMenu.Text='2')then FSMenuPrincipal.EditIndexe2.Text:=FSMenuPrincipal.TableauSousMenu.Cells[3,FSMenuPrincipal.TableauSousMenu.Row];
     if(FSMenuPrincipal.EditOrdreMenu.Text='3')then FSMenuPrincipal.EditIndexe3.Text:=FSMenuPrincipal.TableauSousMenu.Cells[4,FSMenuPrincipal.TableauSousMenu.Row];
     if(FSMenuPrincipal.EditOrdreMenu.Text='4')then FSMenuPrincipal.EditIndexe4.Text:=FSMenuPrincipal.TableauSousMenu.Cells[5,FSMenuPrincipal.TableauSousMenu.Row];
     if(FSMenuPrincipal.EditOrdreMenu.Text='5')then FSMenuPrincipal.EditIndexe5.Text:=FSMenuPrincipal.TableauSousMenu.Cells[6,FSMenuPrincipal.TableauSousMenu.Row];
end;

procedure TFSMenuPrincipal.TableauSousMenuKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          RaccourciMenuSelect:=IndiqueRaccourciMenu(FSMenuPrincipal.EditIndexe0.Text,FSMenuPrincipal.EditIndexe1.Text,FSMenuPrincipal.EditIndexe2.Text,FSMenuPrincipal.EditIndexe3.Text,FSMenuPrincipal.EditIndexe4.Text,FSMenuPrincipal.EditIndexe5.Text);
          FSMenuPrincipal.EditRaccourcisMenu.Text:=RaccourciMenuSelect.Name;
          FSMenuPrincipal.EditAffichageBouton.Text:=RaccourciMenuSelect.Caption;

          FSMenuPrincipal.AfficheAffectationMenuRaccorcis.Height:=161;
          FSMenuPrincipal.PageMenuRaccorcis.Height:=145;
     end;
end;

procedure TFSMenuPrincipal.PageListeRacourcisShow(Sender: TObject);
begin
     FSMenuPrincipal.AfficheAffectationMenuRaccorcis.Height:=505;
     FSMenuPrincipal.PageMenuRaccorcis.Height:=489;
     ListeAffectationMenuRaccourci(FSMenuPrincipal.TableauAffectationMenuRaccourci,FSMenuPrincipal.RBInitialiserSelection.Checked);
end;

procedure TFSMenuPrincipal.BitBtn24Click(Sender: TObject);
begin
     FSMenuPrincipal.BitOptionAffectationMenuRaccourci.Kind:=bkCancel;
     FSMenuPrincipal.BitOptionAffectationMenuRaccourci.Caption:='Supprimer';
     FSMenuPrincipal.AfficheOptionAffectationMenuRaccourci.Visible:=true;
     FSMenuPrincipal.AfficherTexteOption.Caption:='Veuillez confirmer la suppression SVP !';
end;

procedure TFSMenuPrincipal.TableauAffectationMenuRaccourciClick(
  Sender: TObject);
var   RaccourciMenuPointer:TMenuItem;
      OKAffectationMenuRaccourci:boolean;
      i:integer;
begin
     FSMenuPrincipal.AfficheOptionAffectationMenuRaccourci.Visible:=false;

if(FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[10,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row]<>'OK')then
begin
     RaccourciMenuPointer:=IndiqueRaccourciMenu(FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[3,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row],
                                                FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[4,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row],
                                                FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[5,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row],
                                                FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[6,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row],
                                                FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[7,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row],
                                                FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[8,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row]);

     if(RaccourciMenuPointer.Caption<>FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[9,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row])then
     begin
          if NonOui('Le libellé du menu ('+RaccourciMenuPointer.Caption+') est défirent '+FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[9,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row]+', voulez-vous le modifier !')then
          begin
               OpenFParc(RParc);
               ChAffectationMenuRaccourci:=RParc.Parcours+'\'+'FAffectationMenuRaccourci';
               assignfile(FAffectationMenuRaccourci,ChAffectationMenuRaccourci);
               if FileExists(ChAffectationMenuRaccourci)then
               Reset(FAffectationMenuRaccourci)
               else Rewrite(FAffectationMenuRaccourci);
               Seek(FAffectationMenuRaccourci,0);
               OKAffectationMenuRaccourci:=false;
               i:=0;
               while not eof(FAffectationMenuRaccourci)and(OKAffectationMenuRaccourci=false)do
               begin
                    read(FAffectationMenuRaccourci,RAffectationMenuRaccourci);

                    if(RAffectationMenuRaccourci.NamBoutonRaccourcis=FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[1,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row])then
                    begin
                         OKAffectationMenuRaccourci:=true;
                         RAffectationMenuRaccourci.AffichageBouton:=RaccourciMenuPointer.Caption;
                         Seek(FAffectationMenuRaccourci,i);
                         Write(FAffectationMenuRaccourci,RAffectationMenuRaccourci);
                    end;
               i:=i+1;
               end;
               CloseFile(FAffectationMenuRaccourci);

               ListeAffectationMenuRaccourci(FSMenuPrincipal.TableauAffectationMenuRaccourci,FSMenuPrincipal.RBInitialiserSelection.Checked);
          end
          else
          begin
               FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[10,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row]:='OK';
               FSMenuPrincipal.RBInitialiserSelection.Checked:=true;
          end;
     end;
end;

end;

procedure TFSMenuPrincipal.BitBtn25Click(Sender: TObject);
begin
     FSMenuPrincipal.AfficheOptionAffectationMenuRaccourci.Visible:=false;
end;

procedure TFSMenuPrincipal.BitOptionAffectationMenuRaccourciClick(Sender: TObject);
var  i,RExistant,RSupprimer,RSauvgarder:integer;
     OKAffectationMenuRaccourci:boolean;
begin
     FSMenuPrincipal.AfficheOptionAffectationMenuRaccourci.Visible:=false;

     if(FSMenuPrincipal.BitOptionAffectationMenuRaccourci.Caption='Valider')then
     begin
          OpenFParc(RParc);
          ChAffectationMenuRaccourci:=RParc.Parcours+'\'+'FAffectationMenuRaccourci';
          assignfile(FAffectationMenuRaccourci,ChAffectationMenuRaccourci);
          if FileExists(ChAffectationMenuRaccourci)then
          Reset(FAffectationMenuRaccourci)
          else Rewrite(FAffectationMenuRaccourci);
          Seek(FAffectationMenuRaccourci,0);
          OKAffectationMenuRaccourci:=false;
          i:=0;
          while not eof(FAffectationMenuRaccourci)and(OKAffectationMenuRaccourci=false)do
          begin
               read(FAffectationMenuRaccourci,RAffectationMenuRaccourci);

               if(RAffectationMenuRaccourci.NamBoutonRaccourcis=FSMenuPrincipal.EditBoutonRaccourcisModifier.Text)then
               begin
                    OKAffectationMenuRaccourci:=true;
                    RAffectationMenuRaccourci.AffichageBouton:=FSMenuPrincipal.EditAffichageBoutonModifier.Text;
                    Seek(FAffectationMenuRaccourci,i);
                    Write(FAffectationMenuRaccourci,RAffectationMenuRaccourci);
               end;
          i:=i+1;
          end;
          CloseFile(FAffectationMenuRaccourci);

          if(OKAffectationMenuRaccourci=true)then TBitBtn(FindComponent(FSMenuPrincipal.EditBoutonRaccourcisModifier.Text)).Caption:=FSMenuPrincipal.EditAffichageBoutonModifier.Text;
     end;

     if(FSMenuPrincipal.BitOptionAffectationMenuRaccourci.Caption='Supprimer')then
     begin
          SupprimerFAffectationMenuRaccourci(FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[1,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row],RExistant,RSupprimer,RSauvgarder);
     end;

     ListeAffectationMenuRaccourci(FSMenuPrincipal.TableauAffectationMenuRaccourci,FSMenuPrincipal.RBInitialiserSelection.Checked);
end;

procedure TFSMenuPrincipal.N101Click(Sender: TObject);
begin
     FSMenuPrincipal.AfficheAffectationMenuRaccorcis.Visible:=true;
     FSMenuPrincipal.AfficheAffectationMenuRaccorcis.Height:=505;
     FSMenuPrincipal.PageMenuRaccorcis.Height:=489;
     FSMenuPrincipal.PageListeRacourcis.Show;
end;

procedure TFSMenuPrincipal.BitBtn26Click(Sender: TObject);
begin
     FSMenuPrincipal.BitOptionAffectationMenuRaccourci.Kind:=bkAll;
     FSMenuPrincipal.BitOptionAffectationMenuRaccourci.Caption:='Valider';
     FSMenuPrincipal.AfficheOptionAffectationMenuRaccourci.Visible:=true;
     FSMenuPrincipal.AfficherTexteOption.Caption:='Veuillez confirmer la Modification SVP !';

     FSMenuPrincipal.EditPositionModifier.Text:=FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[0,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row];
     FSMenuPrincipal.EditBoutonRaccourcisModifier.Text:=FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[1,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row];
     FSMenuPrincipal.EditRaccourcisMenuModifier.Text:=FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[2,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row];
     FSMenuPrincipal.EditIndexe0Modifier.Text:=FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[3,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row];
     FSMenuPrincipal.EditIndexe1Modifier.Text:=FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[4,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row];
     FSMenuPrincipal.EditIndexe2Modifier.Text:=FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[5,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row];
     FSMenuPrincipal.EditIndexe3Modifier.Text:=FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[6,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row];
     FSMenuPrincipal.EditIndexe4Modifier.Text:=FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[7,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row];
     FSMenuPrincipal.EditIndexe5Modifier.Text:=FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[8,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row];
     FSMenuPrincipal.EditAffichageBoutonModifier.Text:=FSMenuPrincipal.TableauAffectationMenuRaccourci.Cells[9,FSMenuPrincipal.TableauAffectationMenuRaccourci.Row];

     
     FSMenuPrincipal.EditAffichageBoutonModifier.SetFocus;
end;

procedure TFSMenuPrincipal.EditAffichageBoutonModifierDblClick(
  Sender: TObject);
begin                
     FSMenuPrincipal.EditAffichageBoutonModifier.Text:=IndiqueRaccourciMenu(FSMenuPrincipal.EditIndexe0Modifier.Text,FSMenuPrincipal.EditIndexe1Modifier.Text,FSMenuPrincipal.EditIndexe2Modifier.Text,FSMenuPrincipal.EditIndexe3Modifier.Text,FSMenuPrincipal.EditIndexe4Modifier.Text,FSMenuPrincipal.EditIndexe5Modifier.Text).Caption;
end;


//TableauRTiers:array of RTierss;
//NbrAExecute,NbrExecute,Nbr:integer;

//NbrAExecute:=NombreOptimaleBufferSize('RTiers');
//SetLength(TableauRTiers,NbrAExecute);

//BlockRead(FTiers,TableauRTiers[0],NbrAExecute,NbrExecute);

//Nbr:=0;
//While Nbr<=NbrExecute-1 do
//begin
     //RTiers:=TableauRTiers[Nbr];

     // ????????????????   Code   ?????????????

//Nbr:=Nbr+1;
//end;

end.
