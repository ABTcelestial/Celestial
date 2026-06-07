unit UnitFSParametresAvances;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, Mask, ShellCtrls;

type
  TFSParametresAvances = class(TForm)
    PagePrincipale: TPageControl;
    PageTempsAlertesAvantAction: TTabSheet;
    TableauTempsAlertesAvantAction: TStringGrid;
    AfficheOperationTempsAlerte: TPanel;
    Label1: TLabel;
    EditTypeProces: TComboBox;
    Label2: TLabel;
    EditActionSourceAlerte: TComboBox;
    EditValeurTempsAlerte: TEdit;
    Label3: TLabel;
    EditUniteTempsAlerte: TComboBox;
    Label4: TLabel;
    Bevel1: TBevel;
    Panel1: TPanel;
    BitOperationAlerte: TBitBtn;
    BitAnnulerAlerte: TBitBtn;
    Bevel2: TBevel;
    Bevel3: TBevel;
    IncrimentEditValeurTempsAlerte: TUpDown;
    PageBaseDonneesStock: TTabSheet;
    PageDataEntreprise: TTabSheet;
    PageControl1: TPageControl;
    PageOrganismeTutel: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TableauOrganismeTutelle: TStringGrid;
    Panel3: TPanel;
    AfficheOperationOrganismeTutelle: TPanel;
    Bevel7: TBevel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    EditPositionOrganismeTutelle: TEdit;
    EditNomOrganismeTutelle: TEdit;
    BitOperationOrganismeTutelle: TBitBtn;
    BitBtn7: TBitBtn;
    TableauIdentificateurEnttreprise: TStringGrid;
    Panel2: TPanel;
    EditListeOrganismeTutelle: TComboBox;
    AfficheOperationIdentificateurEnttreprise: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    EditPositionIdentificateur: TEdit;
    BitOperationIdentificateur: TBitBtn;
    BitBtn2: TBitBtn;
    EditOrganismeTutelle: TComboBox;
    TableauDataIdentificateurEnttreprise: TStringGrid;
    Panel4: TPanel;
    AfficheOperationDataIdentificateurEnttreprise: TPanel;
    Bevel10: TBevel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    EditPositionDataIdentificateur: TEdit;
    EditDataIdentificateur: TEdit;
    BitOperationDataIdentificateurEnttreprise: TBitBtn;
    BitBtn1: TBitBtn;
    EditListeIntitulleIdentificateur: TComboBox;
    RBRemplacement: TCheckBox;
    TableauEnTete: TStringGrid;
    TypeFormuleAfficher: TPanel;
    EditCodeTypeFormuleAfficher: TEdit;
    TableauTypeFormule: TStringGrid;
    AfficheCreationStockLibre: TPanel;
    RadioGroup1: TRadioGroup;
    RBCreationStockDupliquer: TRadioButton;
    RBCreationStockLibre: TRadioButton;
    Bevel13: TBevel;
    BitValideBaseDonneesStock: TBitBtn;
    AfficheStockSpecifierParStructure: TPanel;
    RadioGroup2: TRadioGroup;
    RBStockSpecifierParStructure: TRadioButton;
    RBStockCummunToutesStructures: TRadioButton;
    Bevel14: TBevel;
    PageTitreDataTiers: TTabSheet;
    TableauTitreDataTiers: TStringGrid;
    AfficheOperationTitreDataTiers: TPanel;
    EditTitreData1: TEdit;
    Label14: TLabel;
    RBCOTitreData1: TCheckBox;
    RBCOTitreData2: TCheckBox;
    EditTitreData2: TEdit;
    Label15: TLabel;
    RBCOTitreData3: TCheckBox;
    EditTitreData3: TEdit;
    Label16: TLabel;
    RBCOTitreData4: TCheckBox;
    EditTitreData4: TEdit;
    Label17: TLabel;
    RBCOTitreData5: TCheckBox;
    EditTitreData5: TEdit;
    Label18: TLabel;
    RBCOTitreData6: TCheckBox;
    EditTitreData6: TEdit;
    Label19: TLabel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    BitBtn3: TBitBtn;
    BitOperationTitreDataTiers: TBitBtn;
    Bevel17: TBevel;
    Label53: TLabel;
    EditTiersTypeProces: TComboBox;
    EditTiersFichierConserne: TComboBox;
    TitreEditTiersFichierConserne: TLabel;
    EditPositionTitreDataTiers: TEdit;
    Label13: TLabel;
    AfficheOperationTitreDataTiersCopie: TPanel;
    Bevel18: TBevel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EditTitreData1Copie: TEdit;
    RBCOTitreData1Copie: TCheckBox;
    RBCOTitreData2Copie: TCheckBox;
    EditTitreData2Copie: TEdit;
    RBCOTitreData3Copie: TCheckBox;
    EditTitreData3Copie: TEdit;
    RBCOTitreData4Copie: TCheckBox;
    EditTitreData4Copie: TEdit;
    RBCOTitreData5Copie: TCheckBox;
    EditTitreData5Copie: TEdit;
    RBCOTitreData6Copie: TCheckBox;
    EditTitreData6Copie: TEdit;
    BitBtn4: TBitBtn;
    Bevel19: TBevel;
    BitCollerTitreDataTiers: TBitBtn;
    RBEtatCopier: TCheckBox;
    PageParametreDomiciliation: TTabSheet;
    PageModeConnectiviteBaseData: TTabSheet;
    RadioGroup4: TRadioGroup;
    InfoModeConnectiviteBaseData: TMemo;
    RBModeConnectiviteBaseDataInstallation: TRadioButton;
    RBModeConnectiviteBaseDataSelection: TRadioButton;
    Panel5: TPanel;
    RadioGroup5: TRadioGroup;
    RBActiverControleSoldeDomiciliationDemarrage: TRadioButton;
    RBDesactiverControleSoldeDomiciliationDemarrage: TRadioButton;
    TableauListeBaseStock: TStringGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    BitActiveAlerteStockLimite: TBitBtn;
    RBActiveStockLimite: TCheckBox;
    Panel8: TPanel;
    RadioGroup6: TRadioGroup;
    RBAutoriserDebitCreditSansSolde: TRadioButton;
    RBNePasAutoriserDebitCreditSansSolde: TRadioButton;
    Panel9: TPanel;
    RadioGroup3: TRadioGroup;
    RBSoldeDomiciliationRisqueZero: TRadioButton;
    RBSoldeDomiciliationComptable: TRadioButton;
    InfoSoldeDomiciliation: TMemo;
    RBOpererModification: TCheckBox;
    PageConfigurationReseaux: TTabSheet;
    AfficheActiverPublicationReseaux: TPanel;
    RadioGroup7: TRadioGroup;
    RBActiverPublicationReseaux: TRadioButton;
    RBDesActiverPublicationReseaux: TRadioButton;
    InfoActiverPublicationReseaux: TMemo;
    Panel11: TPanel;
    RadioGroup8: TRadioGroup;
    RBTravauxConnexionReseaux: TRadioButton;
    RBTravauxHorsConnexionReseaux: TRadioButton;
    InfoTravauxConnexionReseaux: TMemo;
    Panel10: TPanel;
    AfficheOperationPublicationReseauxProgrammer: TPanel;
    Panel12: TPanel;
    BitOperationPublicationReseaux: TBitBtn;
    TableauListePublicationReseauxProgrammer: TStringGrid;
    RadioGroup9: TRadioGroup;
    RBPublicationChaqueJour: TRadioButton;
    EditHeurePublicationJour: TMaskEdit;
    RBPublicationChaqueSemaine: TRadioButton;
    EditJourPublication: TComboBox;
    EditHeurePublicationSemaine: TMaskEdit;
    RBAucunePublicationProgrammer: TRadioButton;
    EditPositionPublication: TEdit;
    EditJourPublier: TEdit;
    EditHeurePublier: TEdit;
    InfoPublicationReseauxProgrammer: TLabel;
    Panel13: TPanel;
    RBInclureValeurSousReseauxPrecedentePeriode: TCheckBox;
    RBInclureValeurSousReseauxPrecedenteExercice: TCheckBox;
    InfoExercicePrecedent: TMemo;
    Bevel20: TBevel;
    Label26: TLabel;
    RBAppliqueEnregistrementParametresReseaux: TCheckBox;
    EditIntitulleIdentificateur: TComboBox;
    PageAutresParametres: TTabSheet;
    Panel14: TPanel;
    RadioGroup11: TRadioGroup;
    RBAfficherInfoTiersSupplementaire: TRadioButton;
    RBNePasAfficherInfoTiersSupplementaire: TRadioButton;
    Panel15: TPanel;
    RadioGroup10: TRadioGroup;
    RBCentreLOGO: TRadioButton;
    RBNePasCentreLOGO: TRadioButton;
    RBOpererModificationInfoTiersSupp: TCheckBox;
    Panel16: TPanel;
    Bevel21: TBevel;
    Label27: TLabel;
    Label28: TLabel;
    EditRowMaxPortrait: TEdit;
    EditColMaxPortrait: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    Bevel22: TBevel;
    Label29: TLabel;
    Label30: TLabel;
    EditColMaxPaysage: TEdit;
    EditRowMaxPaysage: TEdit;
    UpDown3: TUpDown;
    UpDown4: TUpDown;
    InfoTableauPrint: TMemo;
    BitBtn5: TBitBtn;
    AfficheMiseAJourBusinessProces: TPanel;
    Label31: TLabel;
    EditAdresseMiseAJourBusinessProces: TEdit;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    Bevel23: TBevel;
    Bevel24: TBevel;
    Bevel25: TBevel;
    TableauAdresseDossierPartageReseaux: TStringGrid;
    OKChargementAdresseMAJBusinessProcesReseaux: TCheckBox;
    AfficheAdresseMAJAutres: TPanel;
    ListeSource: TShellTreeView;
    DetailSource: TShellListView;
    BitBtn9: TBitBtn;
    Bevel26: TBevel;
    EditSource: TEdit;
    BitBtn10: TBitBtn;
    Bevel27: TBevel;
    Panel18: TPanel;
    RadioGroup12: TRadioGroup;
    RBActiverMultiCouleursLignesTableux: TRadioButton;
    RBdesactiverMultiCouleursLignesTableux: TRadioButton;
    ChoisCouleur: TColorDialog;
    Couleur1: TPanel;
    Couleur2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    TableauApercuCouleur: TStringGrid;
    Bevel28: TBevel;
    Bevel29: TBevel;
    Panel19: TPanel;
    Bevel30: TBevel;
    RBUtiliserExerciceLocalePourPublicationEntrante: TCheckBox;
    RBUtiliserExerciceLocalePourPublicationSortante: TCheckBox;
    Label32: TLabel;
    InfoExercicePublication: TMemo;
    Panel20: TPanel;
    RadioGroup13: TRadioGroup;
    RBAfficherRapportPublicationReseaux: TRadioButton;
    RBNepasafficherRapportPublicationReseaux: TRadioButton;
    Panel21: TPanel;
    RadioGroup14: TRadioGroup;
    RBUliliseExerciceLocalPourLectureSousReseaux: TRadioButton;
    InfoExerciceLectureSousReseaux: TMemo;
    RBUliliseExercicePubliePourLectureSousReseaux: TRadioButton;
    Panel22: TPanel;
    RadioGroup15: TRadioGroup;
    RBAfficherCodeBarreImprimesAvis: TRadioButton;
    RBNepasAfficherCodeBarreImprimesAvis: TRadioButton;
    Panel23: TPanel;
    RadioGroup16: TRadioGroup;
    RBAfficherCodeBarreImprimesEtatsMouvement: TRadioButton;
    RBNepasAfficherCodeBarreImprimesEtatsMouvement: TRadioButton;
    Panel24: TPanel;
    Bevel31: TBevel;
    Label33: TLabel;
    RBIconeFermeture: TCheckBox;
    RBIconeMinimisation: TCheckBox;
    RBIconeMaximisation: TCheckBox;
    Panel25: TPanel;
    Bevel32: TBevel;
    Label34: TLabel;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    Bevel33: TBevel;
    Bevel34: TBevel;
    EditAdresseApplicationMail: TEdit;
    EditDonneurOrdre: TEdit;
    Panel26: TPanel;
    Bevel35: TBevel;
    Bevel36: TBevel;
    Bevel37: TBevel;
    Label37: TLabel;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    EditAdresseFichierParametresMail: TEdit;
    PageParametresMenu: TTabSheet;
    TableauRubriquesSousMenu: TStringGrid;
    AfficherTableauSousMenu: TPanel;
    TableauSousMenu: TStringGrid;
    BitBtn19: TBitBtn;
    EditIndexe0: TEdit;
    EditIndexe1: TEdit;
    EditIndexe2: TEdit;
    EditIndexe3: TEdit;
    EditIndexe4: TEdit;
    EditIndexe5: TEdit;
    EditOrdreMenu: TEdit;
    BitBtn21: TBitBtn;
    AfficherTableauRubriquesSousMenu: TPanel;
    Bevel38: TBevel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Bevel39: TBevel;
    Bevel41: TBevel;
    EditPosition0RubriquesSousMenu: TEdit;
    EditNomRubriquesSousMenus: TEdit;
    EditAffichageRubriquesSousMenus: TEdit;
    BitAfficherTableauRubriquesSousMenu: TBitBtn;
    BitBtn18: TBitBtn;
    EditPosition1RubriquesSousMenu: TEdit;
    EditPosition2RubriquesSousMenu: TEdit;
    EditPosition3RubriquesSousMenu: TEdit;
    EditPosition4RubriquesSousMenu: TEdit;
    EditPosition5RubriquesSousMenu: TEdit;
    AfficherEnabelTableauRubriquesSousMenu: TPanel;
    Label39: TLabel;
    EditNouvelAffichageRubriquesSousMenus: TEdit;
    RadioGroup17: TRadioGroup;
    RBActiveRubriquesSousMenus: TRadioButton;
    RBNonActiveRubriquesSousMenus: TRadioButton;
    EditPositionRubriqueSousMenu: TEdit;
    Bevel40: TBevel;
    RBModificationOpere: TCheckBox;
    BitBtn17: TBitBtn;
    Bevel42: TBevel;
    Bevel43: TBevel;
    Bevel44: TBevel;
    BitBtn20: TBitBtn;
    Bevel45: TBevel;
    PageIntituleImprime: TTabSheet;
    TableauIntituleImprime: TStringGrid;
    AfficheTableauIntituleImprime: TPanel;
    BitBtn22: TBitBtn;
    BitAfficheTableauIntituleImprime: TBitBtn;
    Bevel46: TBevel;
    Bevel47: TBevel;
    Label40: TLabel;
    EditPositionIntituleImprime: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    EditTitreImprime: TEdit;
    EditNomImprime: TEdit;
    EditSousTitreImprime: TEdit;
    Label43: TLabel;
    Bevel48: TBevel;
    TableauListeImprimes: TStringGrid;
    TableauImprime: TStringGrid;
    AfficheTableauImprime: TPanel;
    Bevel49: TBevel;
    Bevel50: TBevel;
    Bevel51: TBevel;
    Label44: TLabel;
    NomImprime: TLabel;
    BitBtn23: TBitBtn;
    BitAfficheTableauImprime: TBitBtn;
    EditPositionImprime: TEdit;
    EditNamImprime: TEdit;
    Panel17: TPanel;
    EditCodeActivation: TEdit;
    EditNomPageShow: TEdit;
    TabSheet1: TTabSheet;
    BitBtn24: TBitBtn;
    Bevel52: TBevel;
    BitBtn25: TBitBtn;
    Bevel53: TBevel;
    EditBasPage: TMemo;
    procedure BitAnnulerAlerteClick(Sender: TObject);
    procedure TableauTempsAlertesAvantActionClick(Sender: TObject);
    procedure BitOperationAlerteClick(Sender: TObject);
    procedure EditTypeProcesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditActionSourceAlerteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValeurTempsAlerteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditUniteTempsAlerteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValeurTempsAlerteKeyPress(Sender: TObject;
      var Key: Char);
    procedure TableauTempsAlertesAvantActionKeyPress(Sender: TObject;
      var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitOperationIdentificateurClick(Sender: TObject);
    procedure TableauIdentificateurEnttrepriseClick(Sender: TObject);
    procedure TableauIdentificateurEnttrepriseKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditListeOrganismeTutelleChange(Sender: TObject);
    procedure BitOperationOrganismeTutelleClick(Sender: TObject);
    procedure TableauOrganismeTutelleKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtn7Click(Sender: TObject);
    procedure TableauOrganismeTutelleClick(Sender: TObject);
    procedure PageTempsAlertesAvantActionShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TableauDataIdentificateurEnttrepriseClick(Sender: TObject);
    procedure BitOperationDataIdentificateurEnttrepriseClick(Sender: TObject);
    procedure TableauDataIdentificateurEnttrepriseKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditListeOrganismeTutelleKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditOrganismeTutelleKeyPress(Sender: TObject; var Key: Char);
    procedure EditIntitulleIdentificateurKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditOrganismeTutelleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomOrganismeTutelleKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditListeIntitulleIdentificateurKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDataIdentificateurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditListeIntitulleIdentificateurKeyPress(Sender: TObject;
      var Key: Char);
    procedure TypeFormuleAfficherClick(Sender: TObject);
    procedure TableauTypeFormuleDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitValideBaseDonneesStockClick(Sender: TObject);
    procedure PageOrganismeTutelShow(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
    procedure PageBaseDonneesStockShow(Sender: TObject);
    procedure EditCodeActivationKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodeActivationExit(Sender: TObject);
    procedure BitOperationTitreDataTiersClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure TableauTitreDataTiersClick(Sender: TObject);
    procedure EditTiersTypeProcesSelect(Sender: TObject);
    procedure EditTitreData1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTitreData2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTitreData3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTitreData4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTitreData5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTitreData6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauTitreDataTiersKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditTiersFichierConserneSelect(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitCollerTitreDataTiersClick(Sender: TObject);
    procedure InfoSoldeDomiciliationKeyPress(Sender: TObject;
      var Key: Char);
    procedure RBSoldeDomiciliationRisqueZeroClick(Sender: TObject);
    procedure RBSoldeDomiciliationComptableClick(Sender: TObject);
    procedure PageParametreDomiciliationShow(Sender: TObject);
    procedure PageModeConnectiviteBaseDataShow(Sender: TObject);
    procedure RBModeConnectiviteBaseDataInstallationClick(Sender: TObject);
    procedure RBModeConnectiviteBaseDataSelectionClick(Sender: TObject);
    procedure RBActiverControleSoldeDomiciliationDemarrageClick(
      Sender: TObject);
    procedure RBDesactiverControleSoldeDomiciliationDemarrageClick(
      Sender: TObject);
    procedure BitActiveAlerteStockLimiteClick(Sender: TObject);
    procedure TableauListeBaseStockClick(Sender: TObject);
    procedure TableauListeBaseStockDblClick(Sender: TObject);
    procedure RBAutoriserDebitCreditSansSoldeClick(Sender: TObject);
    procedure RBNePasAutoriserDebitCreditSansSoldeClick(Sender: TObject);
    procedure RBActiverPublicationReseauxClick(Sender: TObject);
    procedure RBDesActiverPublicationReseauxClick(Sender: TObject);
    procedure PageConfigurationReseauxShow(Sender: TObject);
    procedure RBTravauxConnexionReseauxClick(Sender: TObject);
    procedure RBTravauxHorsConnexionReseauxClick(Sender: TObject);
    procedure InfoPublicationProgrammerKeyPress(Sender: TObject; var Key: Char);
    procedure RBPublicationChaqueJourClick(Sender: TObject);
    procedure RBPublicationChaqueSemaineClick(Sender: TObject);
    procedure RBAucunePublicationProgrammerClick(Sender: TObject);
    procedure BitOperationPublicationReseauxClick(Sender: TObject);
    procedure TableauListePublicationReseauxProgrammerKeyPress(
      Sender: TObject; var Key: Char);
    procedure TableauListePublicationReseauxProgrammerClick(
      Sender: TObject);
    procedure EditJourPublicationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHeurePublicationJourKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditHeurePublicationSemaineKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure RBPublicationChaqueJourKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure RBPublicationChaqueSemaineKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure RBAucunePublicationProgrammerKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure RBInclureValeurSousReseauxPrecedentePeriodeClick(
      Sender: TObject);
    procedure RBInclureValeurSousReseauxPrecedenteExerciceClick(
      Sender: TObject);
    procedure RBCentreLOGOClick(Sender: TObject);
    procedure PageAutresParametresShow(Sender: TObject);
    procedure EditRowMaxPortraitExit(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure TableauAdresseDossierPartageReseauxKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ListeSourceMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn10Click(Sender: TObject);
    procedure RBActiverMultiCouleursLignesTableuxClick(Sender: TObject);
    procedure RBdesactiverMultiCouleursLignesTableuxClick(Sender: TObject);
    procedure Couleur1DblClick(Sender: TObject);
    procedure Couleur2DblClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure TableauApercuCouleurDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure RBUtiliserExerciceLocalePourPublicationEntranteClick(
      Sender: TObject);
    procedure RBUtiliserExerciceLocalePourPublicationSortanteClick(
      Sender: TObject);
    procedure RBAfficherRapportPublicationReseauxClick(Sender: TObject);
    procedure RBUliliseExerciceLocalPourLectureSousReseauxClick(
      Sender: TObject);
    procedure RBUliliseExercicePubliePourLectureSousReseauxClick(
      Sender: TObject);
    procedure RBAfficherCodeBarreImprimesAvisClick(Sender: TObject);
    procedure RBAfficherCodeBarreImprimesEtatsMouvementClick(
      Sender: TObject);
    procedure RBNepasAfficherCodeBarreImprimesEtatsMouvementClick(
      Sender: TObject);
    procedure RBIconeFermetureClick(Sender: TObject);
    procedure RBIconeMinimisationClick(Sender: TObject);
    procedure RBIconeMaximisationClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure DetailSourceMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TableauRubriquesSousMenuClick(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure TableauSousMenuDblClick(Sender: TObject);
    procedure TableauSousMenuClick(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitAfficherTableauRubriquesSousMenuClick(Sender: TObject);
    procedure TableauSousMenuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauRubriquesSousMenuKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure PageParametresMenuShow(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure TableauRubriquesSousMenuKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtn20Click(Sender: TObject);
    procedure TableauIntituleImprimeClick(Sender: TObject);
    procedure TableauIntituleImprimeKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitAfficheTableauIntituleImprimeClick(Sender: TObject);
    procedure EditNomImprimeEnter(Sender: TObject);
    procedure TableauListeImprimesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomImprimeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTitreImprimeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSousTitreImprimeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauImprimeKeyPress(Sender: TObject; var Key: Char);
    procedure BitAfficheTableauImprimeClick(Sender: TObject);
    procedure TableauImprimeClick(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure EditNamImprimeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageIntituleImprimeShow(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSParametresAvances: TFSParametresAvances;

Procedure ListeTempsAlerteAvantAction(TableauTempsAlertesAvantAction:TStringGrid; TypeProces:string);
Procedure ListeIdentificateurEnttreprise(TableauIdentificateurEnttreprise:TStringGrid; OrganismeTutelle:string);
Procedure ListeOrganismeTutelle(TableauOrganismeTutelle:TStringGrid);
Procedure ListeOrganismeTutelleComboBox(EditListeOrganismeTutelle:TComboBox;  AjouterTous:boolean);
Procedure ListeIdentificateurEntrepriseComboBox(ComboBoxListeIdentificateurEntreprise:TComboBox;  NePasAfficherIdentifiantExiste:boolean; OrganismeTutelle:string);
Procedure ListeDataIdentificateurEnttreprise(TableauDataIdentificateurEnttreprise:TStringGrid);
Function FindDataIdentificateurEnttreprise(IntitulleIdentificateur:string):string;
Procedure ActiverCalculeFormule(TableauFormule:TStringGrid);
Function FunctCreationStockLibre:boolean;
Function FunctStockSpecifierParStructure(ActiverNotification:boolean):boolean;
Procedure ListeTitreDataTiers(TableauTitreDataTiers:TStringGrid; TypeProces,FichierConcerne:string);
Function FunctionSoldeDomiciliationRisqueZero:boolean;
Function FunctionControleSoldeDomiciliationDemarrage:boolean;
Function FunctionAutoriserDebitCreditSansSolde:boolean;
Function FunctionModeConnectiviteBaseDataSelection:boolean;
Function FunctionActiverPublicationReseaux:boolean;
Function FunctionTravauxConnexionReseaux:boolean;
Function FunctionInclureValeurSousReseauxPrecedentePeriode:boolean;
Function FunctionInclureValeurSousReseauxPrecedenteExercice:boolean;
Function FunctionPublicationReseauxProgrammer(var JourPublicationOut,HeurePublicationOut,JourPublierOut,HeurePublierOut,PositionPublicationOut:string):boolean;
Function FunctionUtiliseExerciceLocalPourPublicationEntrante:boolean;
Function FunctionUtiliseExerciceLocalPourPublicationSortante:boolean;
Function FunctionUtiliseExerciceLocalPourLectureSousReseaux:boolean;
Procedure LancementPublicationReseauxProgrammer(jourCaption,HeureCaption:string; InfoPublicationReseauxProgrammer:TLabel);
Procedure EnregistrementPublicationReseauxProgrammer(PositionPublication,jourPublier,HeurePublier:string);
Function ControleAlerteStockLimite(NumProjetFinance:string):boolean;
Procedure RemlireDataAlerteStockLimite(NumProjetFinance:string; OKAlerte:boolean);
Procedure ListeBaseStockAlerteStockLimite(TableauListeBaseStock:TStringGrid);
Procedure ListePublicationReseauxProgrammer(TableauPublicationReseauxProgrammer:TStringGrid);
Function ChercherOrganismePourIdentifiant(IntitulleIdentificateur:string):string;
Function CentraliserLOGO:boolean;
Function AfficherInfoTiersSupplementaire:boolean;
Procedure ValiderConfigurationAutresParametres;
Procedure ValiderConfigurationParametreCodeBarres;
Procedure ValiderConfigurationParametreIconeMenu;
function ActiveIconeMenuFermeture:boolean;
function ActiveIconeMenuMinimisation:boolean;
function ActiveIconeMenuMaximisation:boolean;
Function ProcOKChargementAdresseMAJBusinessProcesReseaux:Boolean;
Function ProcAdresseMiseAJourBusinessProces:string;
Procedure EnregistrementMiseAJourBusinessProces;
Function ActiverMultiCouleursLignesTableaux(var Couleur1,Couleur2:TColor):boolean;
Procedure ValiderMultiCouleursLignesTableaux;
Procedure RemplireTableauApercuCouleur;
Procedure ValiderConfigurationAffichageRapportPublication;
Function FunctAfficherRapportPublicationReseaux:boolean;
Function FunctAfficherCodeBarresDansAvis:boolean;
Function FunctAfficherCodeBarresDansEtatsMouvement:boolean;
Procedure EnregistrementParametreMail;
Function ProcAdresseApplicationMail:string;
Function ProcAdresseFichierParametresMail:string;
Procedure ImporterDataSousMenu(TableauRubriquesMenu:TStringGrid; EditOrdreMenu:TEdit; Indice0,Indice1,Indice2,Indice3,Indice4,Indice5:string);
Procedure ListeRubriquesSousMenu(TableauRubriquesSousMenu:TStringGrid);
Procedure AppliquerRubriquesSousMenu(PositionSousMenu0,PositionSousMenu1,PositionSousMenu2,PositionSousMenu3,PositionSousMenu4,PositionSousMenu5:string; OKVisibilite:boolean);
Function ActivationRubriquesSousMenu(NomSousMenu:string):boolean;
Function FunctOKRedemarrerCodeFondateurParDefaut:boolean;
Procedure EnregistrerRedemarrerCodeFondateurParDefaut(OKRedemarreCodeFondateurParDefaut:boolean);
Procedure ListeIntituleImprime(TableauIntituleImprime:TStringGrid);
Procedure ListeImprime(TableauImprime:TStringGrid);
Procedure ProcAfficherInfoBasPage(FichierMemo:TMemo);
Procedure ProcEnregistrerInfoBasPage(FichierMemo:TMemo);

implementation

Uses UnitInitialisation, UnitSuppression, UnitFSMenuPrincipal, UnitFSFormules, UnitFSTiers,
     UnitFSConnectiviteBaseDataSelection, UnitFSGenerateurBase, UnitFSPublicationReseaux, UnitFSTravauxFinAnnee,
  UnitFSApplicationTerminate, UnitPrintFactureDinamique;


{$R *.dfm}

procedure TFSParametresAvances.BitAnnulerAlerteClick(Sender: TObject);
begin
     FSParametresAvances.AfficheOperationTempsAlerte.Visible:=false;
end;

procedure TFSParametresAvances.TableauTempsAlertesAvantActionClick(
  Sender: TObject);
begin
     FSParametresAvances.AfficheOperationTempsAlerte.Visible:=false;
end;

procedure TFSParametresAvances.BitOperationAlerteClick(Sender: TObject);
var i,RExistant,RSupprimer,RSauvgarder:integer; OKAlerte:boolean;
begin

     if(FSParametresAvances.BitOperationAlerte.Caption='Valider')then
     begin
          OpenFParc(RParc);
          ChTempsAlerteAvantAction:=RParc.Parcours+'\'+Exercice+'TempsAlerteAvantAction';
          assignfile(FTempsAlerteAvantAction,ChTempsAlerteAvantAction);
          if FileExists(ChTempsAlerteAvantAction)then
          Reset(FTempsAlerteAvantAction)
          else Rewrite(FTempsAlerteAvantAction);
          Seek(FTempsAlerteAvantAction,0);
          i:=0;
          OKAlerte:=false;
          while not eof(FTempsAlerteAvantAction)and(OKAlerte=false)do
          begin
               read(FTempsAlerteAvantAction,RTempsAlerteAvantAction);

               if(RTempsAlerteAvantAction.TypeProces=FSParametresAvances.EditTypeProces.Text)
               and(RTempsAlerteAvantAction.ActionSourceAlerte=FSParametresAvances.EditActionSourceAlerte.Text)
               then
               begin
                    OKAlerte:=true;
               end;
          i:=i+1;
          end;

          if(OKAlerte=true)then i:=i-1;
          Seek(FTempsAlerteAvantAction,i);
          RTempsAlerteAvantAction.TypeProces:=FSParametresAvances.EditTypeProces.Text;
          RTempsAlerteAvantAction.ActionSourceAlerte:=FSParametresAvances.EditActionSourceAlerte.Text;
          RTempsAlerteAvantAction.ValeurTempsAlerte:=strtointeger(FSParametresAvances.EditValeurTempsAlerte.Text);
          RTempsAlerteAvantAction.UniteTempsAlerte:=FSParametresAvances.EditUniteTempsAlerte.Text;
          write(FTempsAlerteAvantAction,RTempsAlerteAvantAction);
          CloseFile(FTempsAlerteAvantAction);
     end;

     if(FSParametresAvances.BitOperationAlerte.Caption='Supprimer')then
     begin
          if(SupprimerTempsAlerteAvantAction(FSParametresAvances.EditTypeProces.Text,FSParametresAvances.EditActionSourceAlerte.Text,RExistant,RSupprimer,RSauvgarder))then
          begin
               if(RSupprimer>0)
               then AfficherMessage('Suppression réussie ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder))
               else AfficherMessage('Aucun Registre Supprimer ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder));
          end;
     end;

     ListeTempsAlerteAvantAction(FSParametresAvances.TableauTempsAlertesAvantAction,'');
     FSParametresAvances.TableauTempsAlertesAvantAction.SetFocus;

     FSParametresAvances.AfficheOperationTempsAlerte.Visible:=false;
end;

Procedure ListeTempsAlerteAvantAction(TableauTempsAlertesAvantAction:TStringGrid; TypeProces:string);
var  R:integer;    OKAlerte:boolean;
begin
     TableauTempsAlertesAvantAction.ColCount:=5;
     TableauTempsAlertesAvantAction.Cols[0].Text:='N°';
     TableauTempsAlertesAvantAction.Cols[1].Text:='Type Proces';
     TableauTempsAlertesAvantAction.Cols[2].Text:='Action Source';
     TableauTempsAlertesAvantAction.Cols[3].Text:='Valeure';
     TableauTempsAlertesAvantAction.Cols[4].Text:='Unité Valeure';

     TableauTempsAlertesAvantAction.RowCount:=2;
     TableauTempsAlertesAvantAction.Rows[1].Text:='';

     OpenFParc(RParc);
     ChTempsAlerteAvantAction:=RParc.Parcours+'\'+Exercice+'TempsAlerteAvantAction';
     assignfile(FTempsAlerteAvantAction,ChTempsAlerteAvantAction);
     if FileExists(ChTempsAlerteAvantAction)then
     Reset(FTempsAlerteAvantAction)
     else Rewrite(FTempsAlerteAvantAction);
     Seek(FTempsAlerteAvantAction,0);
     R:=0;
     while not eof(FTempsAlerteAvantAction)do
     begin
          read(FTempsAlerteAvantAction,RTempsAlerteAvantAction);

          if(TypeProces<>'')then
          begin
               if(RTempsAlerteAvantAction.TypeProces=TypeProces)
               then OKAlerte:=true
               else OKAlerte:=false;
          end
          else OKAlerte:=true;

          if(OKAlerte=true)then
          begin
               R:=R+1;
               TableauTempsAlertesAvantAction.Rows[R].Text:=inttostr(R);
               TableauTempsAlertesAvantAction.Cells[1,R]:=RTempsAlerteAvantAction.TypeProces;
               TableauTempsAlertesAvantAction.Cells[2,R]:=RTempsAlerteAvantAction.ActionSourceAlerte;
               TableauTempsAlertesAvantAction.Cells[3,R]:=Vergule(floattostr(RTempsAlerteAvantAction.ValeurTempsAlerte),'2','C','');
               TableauTempsAlertesAvantAction.Cells[4,R]:=RTempsAlerteAvantAction.UniteTempsAlerte;
          end;

     end;
     CloseFile(FTempsAlerteAvantAction);

     if(R>0)then TableauTempsAlertesAvantAction.RowCount:=R+1
            else TableauTempsAlertesAvantAction.RowCount:=2;

     AjusterColWidth(TableauTempsAlertesAvantAction,'','');
     TrierTableauARowSpecial(TableauTempsAlertesAvantAction,1,TableauTempsAlertesAvantAction.RowCount-1,1,'1','','+')
end;

procedure TFSParametresAvances.EditTypeProcesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditActionSourceAlerte.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditActionSourceAlerteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditValeurTempsAlerte.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditValeurTempsAlerteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditUniteTempsAlerte.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditUniteTempsAlerteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.BitOperationAlerte.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditValeurTempsAlerteKeyPress(
  Sender: TObject; var Key: Char);
begin
     if(key in['?',';',':'])then key:=',';
     if not(key in['0'..'9',','])then key:=#0;
end;

procedure TFSParametresAvances.TableauTempsAlertesAvantActionKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['n','N']then
     begin
          FSParametresAvances.AfficheOperationTempsAlerte.Visible:=true;
          FSParametresAvances.BitOperationAlerte.Kind:=bkAll;
          FSParametresAvances.BitOperationAlerte.Caption:='Valider';
          FSParametresAvances.EditTypeProces.ItemIndex:=0;
          FSParametresAvances.EditActionSourceAlerte.ItemIndex:=0;
          FSParametresAvances.EditValeurTempsAlerte.Text:='0';
          FSParametresAvances.EditUniteTempsAlerte.ItemIndex:=0;
          FSParametresAvances.EditTypeProces.SetFocus;
     end;

     if key in['m','M','s','S']then
     begin
          FSParametresAvances.AfficheOperationTempsAlerte.Visible:=true;
          FSParametresAvances.EditTypeProces.Text:=FSParametresAvances.TableauTempsAlertesAvantAction.Cells[1,FSParametresAvances.TableauTempsAlertesAvantAction.Row];
          FSParametresAvances.EditActionSourceAlerte.Text:=FSParametresAvances.TableauTempsAlertesAvantAction.Cells[2,FSParametresAvances.TableauTempsAlertesAvantAction.Row];
          FSParametresAvances.EditValeurTempsAlerte.Text:=FSParametresAvances.TableauTempsAlertesAvantAction.Cells[3,FSParametresAvances.TableauTempsAlertesAvantAction.Row];
          FSParametresAvances.EditUniteTempsAlerte.Text:=FSParametresAvances.TableauTempsAlertesAvantAction.Cells[4,FSParametresAvances.TableauTempsAlertesAvantAction.Row];

          if key in['m','M']then
          begin
               FSParametresAvances.BitOperationAlerte.Kind:=bkAll;
               FSParametresAvances.BitOperationAlerte.Caption:='Valider';
               FSParametresAvances.EditTypeProces.SetFocus;
          end;

          if key in['s','S']then
          begin
               FSParametresAvances.BitOperationAlerte.Kind:=bkCancel;
               FSParametresAvances.BitOperationAlerte.Caption:='Supprimer';
               FSParametresAvances.BitOperationAlerte.SetFocus;
          end;
     end;
end;

procedure TFSParametresAvances.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     ActiverNomForm(0,(Sender as TComponent).Name);
     FSMenuPrincipal.TimerControleDateExecutionAlerte.Enabled:=true;
     FSMenuPrincipal.TimerControleStockLimite.Enabled:=true;

     FSMenuPrincipal.InfoPublicationReseauxProgrammer.Caption:='';

     ActiveIconesMenu;
                                                                                         
     if(FSParametresAvances.RBModificationOpere.Checked=true)then
     begin
          FSApplicationTerminate.Show;
          FSApplicationTerminate.AfficheApplicationTerminate.Caption:='Vous devez redémarrer Business-Proces afin d''appliquer les modifications !';
          FSApplicationTerminate.BitOK.SetFocus;

          FSApplicationTerminate.EditApplicationTerminate.Text:='Redémarrer';
     end;
end;

procedure TFSParametresAvances.BitBtn2Click(Sender: TObject);
begin
     FSParametresAvances.AfficheOperationIdentificateurEnttreprise.Visible:=false;
end;

procedure TFSParametresAvances.BitOperationIdentificateurClick(Sender: TObject);
var  i,iExiste,RExistant,RSupprimer,RSauvgarder:integer; OKIdentifiant:boolean;
begin
     if(FSParametresAvances.BitOperationIdentificateur.Caption='Valider')then
     begin
          if(FSParametresAvances.EditIntitulleIdentificateur.Text='')or(FSParametresAvances.EditOrganismeTutelle.Text='')then
          begin
               AfficherMessage('Veuillez saisir les données SVP !');
               if(FSParametresAvances.EditIntitulleIdentificateur.Text='')then FSParametresAvances.EditIntitulleIdentificateur.SetFocus;
               if(FSParametresAvances.EditOrganismeTutelle.Text='')then FSParametresAvances.EditOrganismeTutelle.SetFocus;
               Exit;
          end;

          OpenFParc(RParc);
          ChIdentificateurEnttreprise:=RParc.Parcours+'\'+Exercice+'FIdentificateurEnttreprise';
          assignfile(FIdentificateurEnttreprise,ChIdentificateurEnttreprise);
          if FileExists(ChIdentificateurEnttreprise)then
          Reset(FIdentificateurEnttreprise)
          else Rewrite(FIdentificateurEnttreprise);
          Seek(FIdentificateurEnttreprise,0);
          i:=0;
          OKIdentifiant:=false;
          while not eof(FIdentificateurEnttreprise)and(OKIdentifiant=false)do
          begin
               read(FIdentificateurEnttreprise,RIdentificateurEnttreprise);

               if(inttostr(RIdentificateurEnttreprise.PositionIdentificateur)=FSParametresAvances.EditPositionIdentificateur.Text)
               then
               begin
                    OKIdentifiant:=true;
                    iExiste:=i;
               end;
          i:=i+1;
          end;

          if(OKIdentifiant=true)then i:=iExiste;
          Seek(FIdentificateurEnttreprise,i);
          RIdentificateurEnttreprise.PositionIdentificateur:=i;
          RIdentificateurEnttreprise.IntitulleIdentificateur:=FSParametresAvances.EditIntitulleIdentificateur.Text;
          RIdentificateurEnttreprise.OrganismeTutelle:=FSParametresAvances.EditOrganismeTutelle.Text;
          write(FIdentificateurEnttreprise,RIdentificateurEnttreprise);
          CloseFile(FIdentificateurEnttreprise);
     end;

     if(FSParametresAvances.BitOperationIdentificateur.Caption='Supprimer')then
     begin
          if(SupprimerIdentificateurEnttreprise(FSParametresAvances.EditPositionIdentificateur.Text,RExistant,RSupprimer,RSauvgarder))then
          begin
               if(RSupprimer>0)
               then AfficherMessage('Suppression réussie ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder))
               else AfficherMessage('Aucun Registre Supprimer ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder));
          end;
     end;

     ListeIdentificateurEnttreprise(FSParametresAvances.TableauIdentificateurEnttreprise,FSParametresAvances.EditListeOrganismeTutelle.Text);
     FSParametresAvances.TableauIdentificateurEnttreprise.SetFocus;
     FSParametresAvances.AfficheOperationIdentificateurEnttreprise.Visible:=false;
end;

procedure TFSParametresAvances.TableauIdentificateurEnttrepriseClick(Sender: TObject);
begin
     FSParametresAvances.AfficheOperationIdentificateurEnttreprise.Visible:=false;
end;

Procedure ListeIdentificateurEnttreprise(TableauIdentificateurEnttreprise:TStringGrid; OrganismeTutelle:string);
var  R:integer;    OKOrganismeTutelle:boolean;
begin
     TableauIdentificateurEnttreprise.ColCount:=4;
     TableauIdentificateurEnttreprise.Cols[0].Text:='N°';
     TableauIdentificateurEnttreprise.Cols[1].Text:='P°';
     TableauIdentificateurEnttreprise.Cols[2].Text:='Intitulle Identificateur';
     TableauIdentificateurEnttreprise.Cols[3].Text:='Organisme Tutelle';

     TableauIdentificateurEnttreprise.RowCount:=2;
     TableauIdentificateurEnttreprise.Rows[1].Text:='';

     OpenFParc(RParc);
     ChIdentificateurEnttreprise:=RParc.Parcours+'\'+Exercice+'FIdentificateurEnttreprise';
     assignfile(FIdentificateurEnttreprise,ChIdentificateurEnttreprise);
     if FileExists(ChIdentificateurEnttreprise)then
     Reset(FIdentificateurEnttreprise)
     else Rewrite(FIdentificateurEnttreprise);
     Seek(FIdentificateurEnttreprise,0);
     R:=0;
     while not eof(FIdentificateurEnttreprise)do
     begin
          read(FIdentificateurEnttreprise,RIdentificateurEnttreprise);

          if(OrganismeTutelle<>'')and(OrganismeTutelle<>'Tous')then
          begin
               if(RIdentificateurEnttreprise.OrganismeTutelle=OrganismeTutelle)
               then OKOrganismeTutelle:=true
               else OKOrganismeTutelle:=false;
          end
          else OKOrganismeTutelle:=true;

          if(OKOrganismeTutelle=true)then
          begin
               R:=R+1;
               TableauIdentificateurEnttreprise.Rows[R].Text:=inttostr(R);
               TableauIdentificateurEnttreprise.Cells[1,R]:=inttostr(RIdentificateurEnttreprise.PositionIdentificateur);
               TableauIdentificateurEnttreprise.Cells[2,R]:=RIdentificateurEnttreprise.IntitulleIdentificateur;
               TableauIdentificateurEnttreprise.Cells[3,R]:=RIdentificateurEnttreprise.OrganismeTutelle;
          end;

     end;
     CloseFile(FIdentificateurEnttreprise);

     if(R>0)then TableauIdentificateurEnttreprise.RowCount:=R+1
            else TableauIdentificateurEnttreprise.RowCount:=2;

     AjusterColWidth(TableauIdentificateurEnttreprise,'','');
     TrierTableauARowSpecial(TableauIdentificateurEnttreprise,1,TableauIdentificateurEnttreprise.RowCount-1,1,'3','','+')
end;

Procedure ListeOrganismeTutelle(TableauOrganismeTutelle:TStringGrid);
var  R:integer;
begin
     TableauOrganismeTutelle.ColCount:=3;
     TableauOrganismeTutelle.Cols[0].Text:='N°';
     TableauOrganismeTutelle.Cols[1].Text:='P°';
     TableauOrganismeTutelle.Cols[2].Text:='Nom de l''Organisme Tutelle';

     TableauOrganismeTutelle.RowCount:=2;
     TableauOrganismeTutelle.Rows[1].Text:='';

     OpenFParc(RParc);
     ChOrganismeTutelle:=RParc.Parcours+'\'+Exercice+'FOrganismeTutelle';
     assignfile(FOrganismeTutelle,ChOrganismeTutelle);
     if FileExists(ChOrganismeTutelle)then
     Reset(FOrganismeTutelle)
     else Rewrite(FOrganismeTutelle);
     Seek(FOrganismeTutelle,0);
     R:=0;
     while not eof(FOrganismeTutelle)do
     begin
          read(FOrganismeTutelle,ROrganismeTutelle);
          R:=R+1;
          TableauOrganismeTutelle.Rows[R].Text:=inttostr(R);
          TableauOrganismeTutelle.Cells[1,R]:=inttostr(ROrganismeTutelle.PositionOrganismeTutelle);
          TableauOrganismeTutelle.Cells[2,R]:=ROrganismeTutelle.NomOrganismeTutelle;
     end;
     CloseFile(FOrganismeTutelle);

     if(R>0)then TableauOrganismeTutelle.RowCount:=R+1
            else TableauOrganismeTutelle.RowCount:=2;

     AjusterColWidth(TableauOrganismeTutelle,'','');
     TrierTableauARowSpecial(TableauOrganismeTutelle,1,TableauOrganismeTutelle.RowCount-1,1,'2','','+')
end;

Procedure ListeDataIdentificateurEnttreprise(TableauDataIdentificateurEnttreprise:TStringGrid);
var  R:integer;
begin
     TableauDataIdentificateurEnttreprise.ColCount:=4;
     TableauDataIdentificateurEnttreprise.Cols[0].Text:='N°';
     TableauDataIdentificateurEnttreprise.Cols[1].Text:='P°';
     TableauDataIdentificateurEnttreprise.Cols[2].Text:='Identificateur';
     TableauDataIdentificateurEnttreprise.Cols[3].Text:='Data Identificateur';

     TableauDataIdentificateurEnttreprise.RowCount:=2;
     TableauDataIdentificateurEnttreprise.Rows[1].Text:='';

     OpenFParc(RParc);
     ChDataIdentificateurEnttreprise:=RParc.Parcours+'\'+Exercice+'FDataIdentificateurEnttreprise';
     assignfile(FDataIdentificateurEnttreprise,ChDataIdentificateurEnttreprise);
     if FileExists(ChDataIdentificateurEnttreprise)then
     Reset(FDataIdentificateurEnttreprise)
     else Rewrite(FDataIdentificateurEnttreprise);
     Seek(FDataIdentificateurEnttreprise,0);
     R:=0;
     while not eof(FDataIdentificateurEnttreprise)do
     begin
          read(FDataIdentificateurEnttreprise,RDataIdentificateurEnttreprise);
          R:=R+1;
          TableauDataIdentificateurEnttreprise.Rows[R].Text:=inttostr(R);
          TableauDataIdentificateurEnttreprise.Cells[1,R]:=inttostr(RDataIdentificateurEnttreprise.PositionDataIdentificateur);
          TableauDataIdentificateurEnttreprise.Cells[2,R]:=RDataIdentificateurEnttreprise.IntitulleIdentificateur;
          TableauDataIdentificateurEnttreprise.Cells[3,R]:=RDataIdentificateurEnttreprise.DataIdentificateur;
     end;
     CloseFile(FDataIdentificateurEnttreprise);

     if(R>0)then TableauDataIdentificateurEnttreprise.RowCount:=R+1
            else TableauDataIdentificateurEnttreprise.RowCount:=2;

     AjusterColWidth(TableauDataIdentificateurEnttreprise,'','');
     TrierTableauARowSpecial(TableauDataIdentificateurEnttreprise,1,TableauDataIdentificateurEnttreprise.RowCount-1,1,'2','','+')
end;

Function FindDataIdentificateurEnttreprise(IntitulleIdentificateur:string):string;
var  OKDataId:boolean;
begin
     FindDataIdentificateurEnttreprise:='';

     OpenFParc(RParc);
     ChDataIdentificateurEnttreprise:=RParc.Parcours+'\'+Exercice+'FDataIdentificateurEnttreprise';
     assignfile(FDataIdentificateurEnttreprise,ChDataIdentificateurEnttreprise);
     if FileExists(ChDataIdentificateurEnttreprise)then
     begin
          Reset(FDataIdentificateurEnttreprise);
          Seek(FDataIdentificateurEnttreprise,0);
          OKDataId:=false;
          while not eof(FDataIdentificateurEnttreprise)and(OKDataId=false)do
          begin
               read(FDataIdentificateurEnttreprise,RDataIdentificateurEnttreprise);

               if(RDataIdentificateurEnttreprise.IntitulleIdentificateur=IntitulleIdentificateur)then
               begin
                    OKDataId:=true;
                    FindDataIdentificateurEnttreprise:=RDataIdentificateurEnttreprise.DataIdentificateur;
               end;
          end;
          CloseFile(FDataIdentificateurEnttreprise);
     end;
end;

procedure TFSParametresAvances.TableauIdentificateurEnttrepriseKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['n','N']then
     begin
          FSParametresAvances.AfficheOperationIdentificateurEnttreprise.Visible:=true;
          FSParametresAvances.BitOperationIdentificateur.Kind:=bkAll;
          FSParametresAvances.BitOperationIdentificateur.Caption:='Valider';
          FSParametresAvances.EditPositionIdentificateur.Text:='';
          FSParametresAvances.EditIntitulleIdentificateur.Text:='';
          ListeOrganismeTutelleComboBox(FSParametresAvances.EditOrganismeTutelle,false);
          FSParametresAvances.EditOrganismeTutelle.ItemIndex:=0;
          FSParametresAvances.EditIntitulleIdentificateur.SetFocus;


     end;

     if key in['m','M','s','S']then
     begin
          FSParametresAvances.AfficheOperationIdentificateurEnttreprise.Visible:=true;
          FSParametresAvances.EditPositionIdentificateur.Text:=FSParametresAvances.TableauIdentificateurEnttreprise.Cells[1,FSParametresAvances.TableauIdentificateurEnttreprise.Row];
          FSParametresAvances.EditIntitulleIdentificateur.Text:=FSParametresAvances.TableauIdentificateurEnttreprise.Cells[2,FSParametresAvances.TableauIdentificateurEnttreprise.Row];
          FSParametresAvances.EditOrganismeTutelle.Text:=FSParametresAvances.TableauIdentificateurEnttreprise.Cells[3,FSParametresAvances.TableauIdentificateurEnttreprise.Row];

          if key in['m','M']then
          begin
               FSParametresAvances.BitOperationIdentificateur.Kind:=bkAll;
               FSParametresAvances.BitOperationIdentificateur.Caption:='Valider';
               FSParametresAvances.EditIntitulleIdentificateur.SetFocus;
          end;

          if key in['s','S']then
          begin
               FSParametresAvances.BitOperationIdentificateur.Kind:=bkCancel;
               FSParametresAvances.BitOperationIdentificateur.Caption:='Supprimer';
               FSParametresAvances.BitOperationIdentificateur.SetFocus;
          end;
     end;
end;

procedure TFSParametresAvances.EditListeOrganismeTutelleChange(
  Sender: TObject);
begin
     ListeIdentificateurEnttreprise(FSParametresAvances.TableauIdentificateurEnttreprise,FSParametresAvances.EditListeOrganismeTutelle.Text);
end;

procedure TFSParametresAvances.BitOperationOrganismeTutelleClick(
  Sender: TObject);
var  i,iExiste,RExistant,RSupprimer,RSauvgarder:integer; OKIdentifiant:boolean;
begin
     if(FSParametresAvances.BitOperationOrganismeTutelle.Caption='Valider')then
     begin
          if(FSParametresAvances.EditNomOrganismeTutelle.Text='')then
          begin
               AfficherMessage('Veuillez saisir les données SVP !');
               FSParametresAvances.EditNomOrganismeTutelle.SetFocus;
               Exit;
          end;

          OpenFParc(RParc);
          ChOrganismeTutelle:=RParc.Parcours+'\'+Exercice+'FOrganismeTutelle';
          assignfile(FOrganismeTutelle,ChOrganismeTutelle);
          if FileExists(ChOrganismeTutelle)then
          Reset(FOrganismeTutelle)
          else Rewrite(FOrganismeTutelle);
          Seek(FOrganismeTutelle,0);
          i:=0;
          OKIdentifiant:=false;
          while not eof(FOrganismeTutelle)and(OKIdentifiant=false)do
          begin
               read(FOrganismeTutelle,ROrganismeTutelle);

               if(inttostr(ROrganismeTutelle.PositionOrganismeTutelle)=FSParametresAvances.EditPositionOrganismeTutelle.Text)
               then
               begin
                    OKIdentifiant:=true;
                    iExiste:=i;
               end;
          i:=i+1;
          end;

          if(OKIdentifiant=true)then i:=iExiste;
          Seek(FOrganismeTutelle,i);
          ROrganismeTutelle.PositionOrganismeTutelle:=i;
          ROrganismeTutelle.NomOrganismeTutelle:=FSParametresAvances.EditNomOrganismeTutelle.Text;
          write(FOrganismeTutelle,ROrganismeTutelle);
          CloseFile(FOrganismeTutelle);
     end;

     if(FSParametresAvances.BitOperationOrganismeTutelle.Caption='Supprimer')then
     begin
          if(SupprimerOrganismeTutelle(FSParametresAvances.EditPositionOrganismeTutelle.Text,RExistant,RSupprimer,RSauvgarder))then
          begin
               if(RSupprimer>0)
               then AfficherMessage('Suppression réussie ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder))
               else AfficherMessage('Aucun Registre Supprimer ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder));
          end;
     end;

     ListeOrganismeTutelle(FSParametresAvances.TableauOrganismeTutelle);
     FSParametresAvances.TableauOrganismeTutelle.SetFocus;
     FSParametresAvances.AfficheOperationOrganismeTutelle.Visible:=false;
end;

procedure TFSParametresAvances.TableauOrganismeTutelleKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['n','N']then
     begin
          FSParametresAvances.AfficheOperationOrganismeTutelle.Visible:=true;
          FSParametresAvances.BitOperationOrganismeTutelle.Kind:=bkAll;
          FSParametresAvances.BitOperationOrganismeTutelle.Caption:='Valider';
          FSParametresAvances.EditPositionOrganismeTutelle.Text:='';
          FSParametresAvances.EditNomOrganismeTutelle.Text:='';
          FSParametresAvances.EditNomOrganismeTutelle.SetFocus;
     end;

     if key in['m','M','s','S']then
     begin
          FSParametresAvances.AfficheOperationOrganismeTutelle.Visible:=true;
          FSParametresAvances.EditPositionOrganismeTutelle.Text:=FSParametresAvances.TableauOrganismeTutelle.Cells[1,FSParametresAvances.TableauOrganismeTutelle.Row];
          FSParametresAvances.EditNomOrganismeTutelle.Text:=FSParametresAvances.TableauOrganismeTutelle.Cells[2,FSParametresAvances.TableauOrganismeTutelle.Row];

          if key in['m','M']then
          begin
               FSParametresAvances.BitOperationOrganismeTutelle.Kind:=bkAll;
               FSParametresAvances.BitOperationOrganismeTutelle.Caption:='Valider';
               FSParametresAvances.EditNomOrganismeTutelle.SetFocus;
          end;

          if key in['s','S']then
          begin
               FSParametresAvances.BitOperationOrganismeTutelle.Kind:=bkCancel;
               FSParametresAvances.BitOperationOrganismeTutelle.Caption:='Supprimer';
               FSParametresAvances.BitOperationOrganismeTutelle.SetFocus;
          end;
     end;
end;

procedure TFSParametresAvances.BitBtn7Click(Sender: TObject);
begin
     FSParametresAvances.AfficheOperationOrganismeTutelle.Visible:=false;
end;

procedure TFSParametresAvances.TableauOrganismeTutelleClick(
  Sender: TObject);
begin
     FSParametresAvances.AfficheOperationOrganismeTutelle.Visible:=false;
end;

Procedure ListeOrganismeTutelleComboBox(EditListeOrganismeTutelle:TComboBox;  AjouterTous:boolean);
begin
     EditListeOrganismeTutelle.Items.Text:='';
     if(AjouterTous=true)then
     begin
          EditListeOrganismeTutelle.Items.Add('Tous');
     end;

     OpenFParc(RParc);
     ChOrganismeTutelle:=RParc.Parcours+'\'+Exercice+'FOrganismeTutelle';
     assignfile(FOrganismeTutelle,ChOrganismeTutelle);
     if FileExists(ChOrganismeTutelle)then
     Reset(FOrganismeTutelle)
     else Rewrite(FOrganismeTutelle);
     Seek(FOrganismeTutelle,0);
     while not eof(FOrganismeTutelle)do
     begin
          read(FOrganismeTutelle,ROrganismeTutelle);
          EditListeOrganismeTutelle.Items.Add(ROrganismeTutelle.NomOrganismeTutelle);
     end;
     CloseFile(FOrganismeTutelle);
end;

Procedure ListeIdentificateurEntrepriseComboBox(ComboBoxListeIdentificateurEntreprise:TComboBox;  NePasAfficherIdentifiantExiste:boolean; OrganismeTutelle:string);
var  OKDataIdentifiant,OKExisteDataIdentifiant:boolean;
begin
     ComboBoxListeIdentificateurEntreprise.Items.Text:='';

     OpenFParc(RParc);

     ChDataIdentificateurEnttreprise:=RParc.Parcours+'\'+Exercice+'FDataIdentificateurEnttreprise';
     assignfile(FDataIdentificateurEnttreprise,ChDataIdentificateurEnttreprise);
     if FileExists(ChDataIdentificateurEnttreprise)then
     Reset(FDataIdentificateurEnttreprise)
     else Rewrite(FDataIdentificateurEnttreprise);

     ChIdentificateurEnttreprise:=RParc.Parcours+'\'+Exercice+'FIdentificateurEnttreprise';
     assignfile(FIdentificateurEnttreprise,ChIdentificateurEnttreprise);
     if FileExists(ChIdentificateurEnttreprise)then
     Reset(FIdentificateurEnttreprise)
     else Rewrite(FIdentificateurEnttreprise);
     Seek(FIdentificateurEnttreprise,0);
     while not eof(FIdentificateurEnttreprise)do
     begin
          read(FIdentificateurEnttreprise,RIdentificateurEnttreprise);

          if(OrganismeTutelle<>'')then
          begin
               if(RIdentificateurEnttreprise.OrganismeTutelle=OrganismeTutelle)
               then OKDataIdentifiant:=true
               else OKDataIdentifiant:=false;
          end
          else OKDataIdentifiant:=true;


          if(OKDataIdentifiant=true)then
          begin
               if(NePasAfficherIdentifiantExiste=true)then
               begin
                    Seek(FDataIdentificateurEnttreprise,0);
                    OKExisteDataIdentifiant:=false;
                    while not eof(FDataIdentificateurEnttreprise)and(OKDataIdentifiant=false)do
                    begin
                         read(FDataIdentificateurEnttreprise,RDataIdentificateurEnttreprise);
                         if(RDataIdentificateurEnttreprise.IntitulleIdentificateur=RIdentificateurEnttreprise.IntitulleIdentificateur)then OKExisteDataIdentifiant:=true;
                    end;
               end
               else OKExisteDataIdentifiant:=false;

               if(OKExisteDataIdentifiant=true)then OKDataIdentifiant:=false;
          end;

          if(OKDataIdentifiant=true)then ComboBoxListeIdentificateurEntreprise.Items.Add(RIdentificateurEnttreprise.IntitulleIdentificateur);
     end;
     CloseFile(FIdentificateurEnttreprise);
     CloseFile(FDataIdentificateurEnttreprise);
end;

procedure TFSParametresAvances.PageTempsAlertesAvantActionShow(
  Sender: TObject);
begin
     ListeTempsAlerteAvantAction(FSParametresAvances.TableauTempsAlertesAvantAction,'');
end;

procedure TFSParametresAvances.BitBtn1Click(Sender: TObject);
begin
     FSParametresAvances.AfficheOperationDataIdentificateurEnttreprise.Visible:=false;
end;

procedure TFSParametresAvances.TableauDataIdentificateurEnttrepriseClick(Sender: TObject);
begin
     FSParametresAvances.AfficheOperationDataIdentificateurEnttreprise.Visible:=false;
end;

procedure TFSParametresAvances.BitOperationDataIdentificateurEnttrepriseClick(
  Sender: TObject);
var  i,iExiste,RExistant,RSupprimer,RSauvgarder:integer; OKDataIdentifiant:boolean;
begin
     if(FSParametresAvances.BitOperationDataIdentificateurEnttreprise.Caption='Valider')then
     begin
          if(FSParametresAvances.EditListeIntitulleIdentificateur.Text='')or(FSParametresAvances.EditDataIdentificateur.Text='')then
          begin
               AfficherMessage('Veuillez saisir les données SVP !');
               if(FSParametresAvances.EditListeIntitulleIdentificateur.Text='')then FSParametresAvances.EditListeIntitulleIdentificateur.SetFocus;
               if(FSParametresAvances.EditDataIdentificateur.Text='')then FSParametresAvances.EditDataIdentificateur.SetFocus;
               Exit;
          end;

          OpenFParc(RParc);
          ChDataIdentificateurEnttreprise:=RParc.Parcours+'\'+Exercice+'FDataIdentificateurEnttreprise';
          assignfile(FDataIdentificateurEnttreprise,ChDataIdentificateurEnttreprise);
          if FileExists(ChDataIdentificateurEnttreprise)then
          Reset(FDataIdentificateurEnttreprise)
          else Rewrite(FDataIdentificateurEnttreprise);
          Seek(FDataIdentificateurEnttreprise,0);
          i:=0;
          OKDataIdentifiant:=false;
          while not eof(FDataIdentificateurEnttreprise)and(OKDataIdentifiant=false)do
          begin
               read(FDataIdentificateurEnttreprise,RDataIdentificateurEnttreprise);

               if(inttostr(RDataIdentificateurEnttreprise.PositionDataIdentificateur)=FSParametresAvances.EditPositionDataIdentificateur.Text)
               then
               begin
                    OKDataIdentifiant:=true;
                    iExiste:=i;
               end;
          i:=i+1;
          end;

          if(OKDataIdentifiant=true)then i:=iExiste;
          Seek(FDataIdentificateurEnttreprise,i);
          RDataIdentificateurEnttreprise.PositionDataIdentificateur:=i;
          RDataIdentificateurEnttreprise.IntitulleIdentificateur:=FSParametresAvances.EditListeIntitulleIdentificateur.Text;
          RDataIdentificateurEnttreprise.DataIdentificateur:=FSParametresAvances.EditDataIdentificateur.Text;
          write(FDataIdentificateurEnttreprise,RDataIdentificateurEnttreprise);
          CloseFile(FDataIdentificateurEnttreprise);
     end;

     if(FSParametresAvances.BitOperationDataIdentificateurEnttreprise.Caption='Supprimer')then
     begin
          if(SupprimerDataIdentificateurEnttreprise(FSParametresAvances.EditPositionDataIdentificateur.Text,RExistant,RSupprimer,RSauvgarder))then
          begin
               if(RSupprimer>0)
               then AfficherMessage('Suppression réussie ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder))
               else AfficherMessage('Aucun Registre Supprimer ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder));
          end;
     end;

     ListeDataIdentificateurEnttreprise(FSParametresAvances.TableauDataIdentificateurEnttreprise);
     FSParametresAvances.TableauDataIdentificateurEnttreprise.SetFocus;
     FSParametresAvances.AfficheOperationDataIdentificateurEnttreprise.Visible:=false;
end;

procedure TFSParametresAvances.TableauDataIdentificateurEnttrepriseKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['n','N']then
     begin
          FSParametresAvances.AfficheOperationDataIdentificateurEnttreprise.Visible:=true;
          FSParametresAvances.BitOperationDataIdentificateurEnttreprise.Kind:=bkAll;
          FSParametresAvances.BitOperationDataIdentificateurEnttreprise.Caption:='Valider';
          FSParametresAvances.EditPositionDataIdentificateur.Text:='';
          ListeIdentificateurEntrepriseComboBox(FSParametresAvances.EditListeIntitulleIdentificateur,true,'');
          FSParametresAvances.EditListeIntitulleIdentificateur.ItemIndex:=0;
          FSParametresAvances.EditDataIdentificateur.Text:='';
          FSParametresAvances.EditListeIntitulleIdentificateur.SetFocus;
     end;

     if key in['m','M','s','S']then
     begin
          FSParametresAvances.AfficheOperationDataIdentificateurEnttreprise.Visible:=true;
          FSParametresAvances.EditPositionDataIdentificateur.Text:=FSParametresAvances.TableauDataIdentificateurEnttreprise.Cells[1,FSParametresAvances.TableauDataIdentificateurEnttreprise.Row];
          ListeIdentificateurEntrepriseComboBox(FSParametresAvances.EditListeIntitulleIdentificateur,true,'');
          FSParametresAvances.EditListeIntitulleIdentificateur.Text:=FSParametresAvances.TableauDataIdentificateurEnttreprise.Cells[2,FSParametresAvances.TableauDataIdentificateurEnttreprise.Row];
          FSParametresAvances.EditDataIdentificateur.Text:=FSParametresAvances.TableauDataIdentificateurEnttreprise.Cells[3,FSParametresAvances.TableauDataIdentificateurEnttreprise.Row];

          if key in['m','M']then
          begin
               FSParametresAvances.BitOperationDataIdentificateurEnttreprise.Kind:=bkAll;
               FSParametresAvances.BitOperationDataIdentificateurEnttreprise.Caption:='Valider';
               FSParametresAvances.EditListeIntitulleIdentificateur.SetFocus;
          end;

          if key in['s','S']then
          begin
               FSParametresAvances.BitOperationDataIdentificateurEnttreprise.Kind:=bkCancel;
               FSParametresAvances.BitOperationDataIdentificateurEnttreprise.Caption:='Supprimer';
               FSParametresAvances.BitOperationDataIdentificateurEnttreprise.SetFocus;
          end;
     end;
end;

procedure TFSParametresAvances.EditListeOrganismeTutelleKeyPress(
  Sender: TObject; var Key: Char);
begin
     key:=#0;
end;

procedure TFSParametresAvances.EditOrganismeTutelleKeyPress(
  Sender: TObject; var Key: Char);
begin
     key:=#0;
end;

procedure TFSParametresAvances.EditIntitulleIdentificateurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditOrganismeTutelle.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditOrganismeTutelleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.BitOperationIdentificateur.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditNomOrganismeTutelleKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.BitOperationOrganismeTutelle.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditListeIntitulleIdentificateurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditDataIdentificateur.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditDataIdentificateurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.BitOperationDataIdentificateurEnttreprise.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditListeIntitulleIdentificateurKeyPress(
  Sender: TObject; var Key: Char);
begin
     key:=#0;
end;

procedure TFSParametresAvances.TypeFormuleAfficherClick(Sender: TObject);
begin
     FSParametresAvances.TableauTypeFormule.Visible:=true;
     ListeTypeFormule(FSParametresAvances.TableauTypeFormule);
end;

procedure TFSParametresAvances.TableauTypeFormuleDblClick(Sender: TObject);
var  C:integer; NotCol:string;
begin
FSParametresAvances.EditCodeTypeFormuleAfficher.Text:=FSParametresAvances.TableauTypeFormule.Cells[2,FSParametresAvances.TableauTypeFormule.Row];
FSParametresAvances.TypeFormuleAfficher.Caption:=FSParametresAvances.TableauTypeFormule.Cells[3,FSParametresAvances.TableauTypeFormule.Row];
ProcAfficheFormule(FSParametresAvances.TableauEnTete,FSParametresAvances.EditCodeTypeFormuleAfficher.Text);
FSParametresAvances.TableauEnTete.ColCount:=FSParametresAvances.TableauEnTete.ColCount+1;
FSParametresAvances.TableauEnTete.Cols[FSParametresAvances.TableauEnTete.ColCount-1].Text:='Valeur';
NotCol:='1;2;4-'+inttostr(FSParametresAvances.TableauEnTete.ColCount-2);
for C:=1 to FSParametresAvances.TableauEnTete.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSParametresAvances.TableauEnTete.ColWidths[C]:=0;
FSParametresAvances.TableauTypeFormule.Visible:=false;

ActiverCalculeFormule(FSParametresAvances.TableauEnTete);
end;

Procedure ActiverCalculeFormule(TableauFormule:TStringGrid);
var R:integer; ResultCalcule,NotCol,CodeTypeFormule:string;
begin
     CodeTypeFormule:='';
     R:=1;
     while(R<=TableauFormule.RowCount-1)do
     begin
          CalculeFormule('',TableauFormule.Cells[2,R],TableauFormule.Cells[7,R],TableauFormule.Cells[6,R],TableauFormule.Cells[4,R],CodeTypeFormule,TableauFormule,'',0,0,Registre,Registre,ResultCalcule);

          TableauFormule.Cells[TableauFormule.ColCount-1,R]:=ResultCalcule;
     R:=R+1;
     end;

     NotCol:='1;2;4-'+inttostr(TableauFormule.ColCount-2);
     AjusterColWidth(TableauFormule,'',NotCol);
end;

procedure TFSParametresAvances.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     FSParametresAvances.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Paramètres avancés';
end;

procedure TFSParametresAvances.BitValideBaseDonneesStockClick(Sender: TObject);
begin
     OpenFParc(RParc);
     ChParametresStock:=RParc.Parcours+'\'+Exercice+'FParametresStock';
     assignfile(FParametresStock,ChParametresStock);
     if FileExists(ChParametresStock)then
     Reset(FParametresStock)
     else Rewrite(FParametresStock);
     Seek(FParametresStock,0);
     Truncate(FParametresStock);
     Seek(FParametresStock,0);
     if not eof(FParametresStock)then
     begin
          read(FParametresStock,RParametresStock);
     end;
     RParametresStock.CreationStockLibre:=FSParametresAvances.RBCreationStockLibre.Checked;
     RParametresStock.StockSpecifierParStructure:=FSParametresAvances.RBStockSpecifierParStructure.Checked;
     write(FParametresStock,RParametresStock);
     CloseFile(FParametresStock);

     if(FunctStockSpecifierParStructure(true)=true)
     then FSParametresAvances.RBStockSpecifierParStructure.Checked:=true
     else FSParametresAvances.RBStockCummunToutesStructures.Checked:=true;

     if(FunctCreationStockLibre=true)
     then FSParametresAvances.RBCreationStockLibre.Checked:=true
     else FSParametresAvances.RBCreationStockDupliquer.Checked:=true;

     FSParametresAvances.AfficheCreationStockLibre.Enabled:=FSParametresAvances.RBStockSpecifierParStructure.Checked;
     if(FSParametresAvances.AfficheCreationStockLibre.Enabled=true)
     then FSParametresAvances.AfficheCreationStockLibre.Font.Color:=clWindowText
     else FSParametresAvances.AfficheCreationStockLibre.Font.Color:=clBtnShadow;

     ListeBaseStockAlerteStockLimite(FSParametresAvances.TableauListeBaseStock);
end;

procedure TFSParametresAvances.PageOrganismeTutelShow(Sender: TObject);
begin
     ListeOrganismeTutelle(FSParametresAvances.TableauOrganismeTutelle);
end;

procedure TFSParametresAvances.TabSheet6Show(Sender: TObject);
begin
     ListeOrganismeTutelleComboBox(FSParametresAvances.EditListeOrganismeTutelle,true);
     FSParametresAvances.EditListeOrganismeTutelle.ItemIndex:=0;
     ListeIdentificateurEnttreprise(FSParametresAvances.TableauIdentificateurEnttreprise,FSParametresAvances.EditListeOrganismeTutelle.Text);
end;

procedure TFSParametresAvances.TabSheet7Show(Sender: TObject);
begin
     ListeDataIdentificateurEnttreprise(FSParametresAvances.TableauDataIdentificateurEnttreprise);
end;

procedure TFSParametresAvances.PageBaseDonneesStockShow(Sender: TObject);
begin
     if(FunctStockSpecifierParStructure(true)=true)
     then FSParametresAvances.RBStockSpecifierParStructure.Checked:=true
     else FSParametresAvances.RBStockCummunToutesStructures.Checked:=true;

     if(FunctCreationStockLibre=true)
     then FSParametresAvances.RBCreationStockLibre.Checked:=true
     else FSParametresAvances.RBCreationStockDupliquer.Checked:=true;

     FSParametresAvances.AfficheCreationStockLibre.Enabled:=FSParametresAvances.RBStockSpecifierParStructure.Checked;
     if(FSParametresAvances.AfficheCreationStockLibre.Enabled=true)
     then FSParametresAvances.AfficheCreationStockLibre.Font.Color:=clWindowText
     else FSParametresAvances.AfficheCreationStockLibre.Font.Color:=clBtnShadow;

     ListeBaseStockAlerteStockLimite(FSParametresAvances.TableauListeBaseStock);
end;

Function FunctCreationStockLibre:boolean;
var   OKCreationStockLibre:boolean;
begin
     OpenFParc(RParc);
     ChParametresStock:=RParc.Parcours+'\'+Exercice+'FParametresStock';
     assignfile(FParametresStock,ChParametresStock);
     if FileExists(ChParametresStock)then
     Reset(FParametresStock)
     else Rewrite(FParametresStock);
     Seek(FParametresStock,0);
     OKCreationStockLibre:=false;
     if not eof(FParametresStock)then
     begin
          read(FParametresStock,RParametresStock);
          OKCreationStockLibre:=RParametresStock.CreationStockLibre;
     end;
     CloseFile(FParametresStock);

     FunctCreationStockLibre:=OKCreationStockLibre;
end;

Function FunctStockSpecifierParStructure(ActiverNotification:boolean):boolean;
var   OKStockSpecifierParStructure:boolean;
begin
     OpenFParc(RParc);
     ChParametresStock:=RParc.Parcours+'\'+Exercice+'FParametresStock';
     assignfile(FParametresStock,ChParametresStock);
     if FileExists(ChParametresStock)then
     Reset(FParametresStock)
     else Rewrite(FParametresStock);
     Seek(FParametresStock,0);
     OKStockSpecifierParStructure:=false;
     if not eof(FParametresStock)then
     begin
          read(FParametresStock,RParametresStock);
          OKStockSpecifierParStructure:=RParametresStock.StockSpecifierParStructure;
     end;
     CloseFile(FParametresStock);

     FunctStockSpecifierParStructure:=OKStockSpecifierParStructure;

     if(ActiverNotification=true)and(OKStockSpecifierParStructure=false)then AfficherMessage('Stock cumulé pour toutes les structures !');
end;

procedure TFSParametresAvances.EditCodeActivationKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if(FSParametresAvances.EditCodeActivation.Text='000')then
     begin
          FSParametresAvances.PagePrincipale.Enabled:=true;

          if(FSParametresAvances.EditNomPageShow.Text='PageTempsAlertesAvantAction')then FSParametresAvances.TableauTempsAlertesAvantAction.SetFocus;
          if(FSParametresAvances.EditNomPageShow.Text='PageOrganismeTutel')then begin FSParametresAvances.PageOrganismeTutel.Show;  FSParametresAvances.TableauOrganismeTutelle.SetFocus;end;
          if(FSParametresAvances.EditNomPageShow.Text='PageParametresMenu')then FSParametresAvances.PageParametresMenu.Show;
          if(FSParametresAvances.EditNomPageShow.Text='PageIntituleImprime')then FSParametresAvances.PageIntituleImprime.Show;
          if(FSParametresAvances.EditNomPageShow.Text='PageBaseDonneesStock')then FSParametresAvances.BitValideBaseDonneesStock.SetFocus;
          if(FSParametresAvances.EditNomPageShow.Text='PageTitreDataTiers')then FSParametresAvances.TableauTitreDataTiers.SetFocus;
          if(FSParametresAvances.EditNomPageShow.Text='PageParametreDomiciliation')then begin FSParametresAvances.InfoSoldeDomiciliation.SetFocus; FSParametresAvances.RBOpererModification.Checked:=true; end;
          if(FSParametresAvances.EditNomPageShow.Text='PageModeConnectiviteBaseData')then FSParametresAvances.InfoModeConnectiviteBaseData.SetFocus;
          if(FSParametresAvances.EditNomPageShow.Text='PageConfigurationReseaux')then
          begin
               FSParametresAvances.InfoTravauxConnexionReseaux.SetFocus;
               //FSParametresAvances.RBAppliqueEnregistrementParametresReseaux.Checked:=true;
          end;
          if(FSParametresAvances.EditNomPageShow.Text='PageAutresParametres')then FSParametresAvances.InfoTableauPrint.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditCodeActivationExit(Sender: TObject);
begin
     if(FSParametresAvances.EditCodeActivation.Text<>'000')then FSParametresAvances.EditCodeActivation.SetFocus;
end;

procedure TFSParametresAvances.BitOperationTitreDataTiersClick(
  Sender: TObject);
var  i,iSelect:integer;   OKTitreDataTiers:boolean;  TypeProcesInt,FichierConcerneInt,Adresse:string;
begin
     if(FSParametresAvances.BitOperationTitreDataTiers.Caption='Valider')then
     begin
          TypeProcesInt:='Business';
          FichierConcerneInt:='FTitreDataTiers';
          Adresse:='';
          if not(FunctionAdresseProces(TypeProcesInt,FichierConcerneInt,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerneInt+' recherché !');
          end;

          ChTitreDataTiers:=Adresse;
          assignfile(FTitreDataTiers,ChTitreDataTiers);
          if FileExists(ChTitreDataTiers)then
          Reset(FTitreDataTiers)
          else Rewrite(FTitreDataTiers);
          Seek(FTitreDataTiers,0);
          i:=0;
          OKTitreDataTiers:=false;
          while not eof(FTitreDataTiers)and(OKTitreDataTiers=false)do
          begin
               read(FTitreDataTiers,RTitreDataTiers);
               if(inttostr(RTitreDataTiers.PositionTitreDataTiers)=FSParametresAvances.EditPositionTitreDataTiers.Text)
               then
               begin
                    OKTitreDataTiers:=true;
                    iSelect:=i;
               end;
          i:=i+1;
          end;

          if(OKTitreDataTiers=true)then i:=iSelect;
          RTitreDataTiers.PositionTitreDataTiers:=i;
          RTitreDataTiers.TypeProces:=FSParametresAvances.EditTiersTypeProces.Text;
          RTitreDataTiers.FichierConcerne:=FSParametresAvances.EditTiersFichierConserne.Text;
          RTitreDataTiers.TitreData1.TitreData:=FSParametresAvances.EditTitreData1.Text;
          RTitreDataTiers.TitreData1.ChampsObligatoire:=FSParametresAvances.RBCOTitreData1.Checked;
          RTitreDataTiers.TitreData2.TitreData:=FSParametresAvances.EditTitreData2.Text;
          RTitreDataTiers.TitreData2.ChampsObligatoire:=FSParametresAvances.RBCOTitreData2.Checked;
          RTitreDataTiers.TitreData3.TitreData:=FSParametresAvances.EditTitreData3.Text;
          RTitreDataTiers.TitreData3.ChampsObligatoire:=FSParametresAvances.RBCOTitreData3.Checked;
          RTitreDataTiers.TitreData4.TitreData:=FSParametresAvances.EditTitreData4.Text;
          RTitreDataTiers.TitreData4.ChampsObligatoire:=FSParametresAvances.RBCOTitreData4.Checked;
          RTitreDataTiers.TitreData5.TitreData:=FSParametresAvances.EditTitreData5.Text;
          RTitreDataTiers.TitreData5.ChampsObligatoire:=FSParametresAvances.RBCOTitreData5.Checked;
          RTitreDataTiers.TitreData6.TitreData:=FSParametresAvances.EditTitreData6.Text;
          RTitreDataTiers.TitreData6.ChampsObligatoire:=FSParametresAvances.RBCOTitreData6.Checked;

          Seek(FTitreDataTiers,i);
          Write(FTitreDataTiers,RTitreDataTiers);

          CloseFile(FTitreDataTiers);
     end;

     if(FSParametresAvances.BitOperationTitreDataTiers.Caption='Supprimer')then
     begin
          DeleteFTitreDataTiers(FSParametresAvances.EditPositionTitreDataTiers.Text,OKTitreDataTiers);
     end;

     ListeTitreDataTiers(FSParametresAvances.TableauTitreDataTiers,FSParametresAvances.EditTiersTypeProces.Text,FSParametresAvances.EditTiersFichierConserne.Text);

FSParametresAvances.AfficheOperationTitreDataTiers.Visible:=false;
end;

procedure TFSParametresAvances.BitBtn3Click(Sender: TObject);
begin
     FSParametresAvances.AfficheOperationTitreDataTiers.Visible:=false;
end;

procedure TFSParametresAvances.TableauTitreDataTiersClick(Sender: TObject);
begin
     FSParametresAvances.AfficheOperationTitreDataTiers.Visible:=false;
     if (FSParametresAvances.TableauTitreDataTiers.Cells[1,FSParametresAvances.TableauTitreDataTiers.Row]<>'')
     and(FSParametresAvances.TableauTitreDataTiers.Cells[2,FSParametresAvances.TableauTitreDataTiers.Row]<>'')
     then
     begin
          FSParametresAvances.EditTiersTypeProces.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[1,FSParametresAvances.TableauTitreDataTiers.Row];
          FSParametresAvances.EditTiersFichierConserne.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[2,FSParametresAvances.TableauTitreDataTiers.Row];
     end;
end;

procedure TFSParametresAvances.EditTiersTypeProcesSelect(Sender: TObject);
begin
     ListeTypeFichierTiersBox(FSParametresAvances.EditTiersTypeProces.Text,'','',FSParametresAvances.EditTiersFichierConserne,FSParametresAvances.TitreEditTiersFichierConserne);
     FSParametresAvances.EditTiersFichierConserne.Items.Add('Tous');
     ListeTitreDataTiers(FSParametresAvances.TableauTitreDataTiers,FSParametresAvances.EditTiersTypeProces.Text,FSParametresAvances.EditTiersFichierConserne.Text);
end;

procedure TFSParametresAvances.EditTitreData1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditTitreData2.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditTitreData2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditTitreData3.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditTitreData3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditTitreData4.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditTitreData4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditTitreData5.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditTitreData5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditTitreData6.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditTitreData6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.BitOperationTitreDataTiers.SetFocus;
     end;
end;

procedure TFSParametresAvances.TableauTitreDataTiersKeyPress(
  Sender: TObject; var Key: Char);
var  R:integer;
begin
     R:=FSParametresAvances.TableauTitreDataTiers.Row;
     FSParametresAvances.BitCollerTitreDataTiers.Enabled:=FSParametresAvances.RBEtatCopier.Checked;

     if key in['n','N']then
     begin
          FSParametresAvances.AfficheOperationTitreDataTiers.Visible:=true;
          FSParametresAvances.BitOperationTitreDataTiers.Kind:=bkAll;
          FSParametresAvances.BitOperationTitreDataTiers.Caption:='Valider';

          FSParametresAvances.EditPositionTitreDataTiers.Text:='';

          FSParametresAvances.EditTitreData1.Text:=''; FSParametresAvances.RBCOTitreData1.Checked:=false;
          FSParametresAvances.EditTitreData2.Text:=''; FSParametresAvances.RBCOTitreData2.Checked:=false;
          FSParametresAvances.EditTitreData3.Text:=''; FSParametresAvances.RBCOTitreData3.Checked:=false;
          FSParametresAvances.EditTitreData4.Text:=''; FSParametresAvances.RBCOTitreData4.Checked:=false;
          FSParametresAvances.EditTitreData5.Text:=''; FSParametresAvances.RBCOTitreData5.Checked:=false;
          FSParametresAvances.EditTitreData6.Text:=''; FSParametresAvances.RBCOTitreData6.Checked:=false;

          FSParametresAvances.EditTitreData1.SetFocus;
     end;

     if key in['m','M']then
     begin
          FSParametresAvances.AfficheOperationTitreDataTiers.Visible:=true;
          FSParametresAvances.BitOperationTitreDataTiers.Kind:=bkAll;
          FSParametresAvances.BitOperationTitreDataTiers.Caption:='Valider';

          FSParametresAvances.EditPositionTitreDataTiers.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[0,R];
          FSParametresAvances.EditTitreData1.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[3,R]; FSParametresAvances.RBCOTitreData1.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[4,R]);
          FSParametresAvances.EditTitreData2.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[5,R]; FSParametresAvances.RBCOTitreData2.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[6,R]);
          FSParametresAvances.EditTitreData3.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[7,R]; FSParametresAvances.RBCOTitreData3.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[8,R]);
          FSParametresAvances.EditTitreData4.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[9,R]; FSParametresAvances.RBCOTitreData4.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[10,R]);
          FSParametresAvances.EditTitreData5.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[11,R]; FSParametresAvances.RBCOTitreData5.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[12,R]);
          FSParametresAvances.EditTitreData6.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[13,R]; FSParametresAvances.RBCOTitreData6.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[14,R]);

          FSParametresAvances.EditTitreData1.SetFocus;
     end;

     if key in['s','S']then
     begin
          FSParametresAvances.AfficheOperationTitreDataTiers.Visible:=true;
          FSParametresAvances.BitOperationTitreDataTiers.Kind:=bkCancel;
          FSParametresAvances.BitOperationTitreDataTiers.Caption:='Supprimer';

          FSParametresAvances.EditPositionTitreDataTiers.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[0,R];
          FSParametresAvances.EditTitreData1.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[3,R]; FSParametresAvances.RBCOTitreData1.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[4,R]);
          FSParametresAvances.EditTitreData2.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[5,R]; FSParametresAvances.RBCOTitreData2.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[6,R]);
          FSParametresAvances.EditTitreData3.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[7,R]; FSParametresAvances.RBCOTitreData3.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[8,R]);
          FSParametresAvances.EditTitreData4.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[9,R]; FSParametresAvances.RBCOTitreData4.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[10,R]);
          FSParametresAvances.EditTitreData5.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[11,R]; FSParametresAvances.RBCOTitreData5.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[12,R]);
          FSParametresAvances.EditTitreData6.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[13,R]; FSParametresAvances.RBCOTitreData6.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[15,R]);

          FSParametresAvances.BitOperationTitreDataTiers.SetFocus;
     end;
end;

Procedure ListeTitreDataTiers(TableauTitreDataTiers:TStringGrid; TypeProces,FichierConcerne:string);
var R,C:integer; OKTitreDataTiers:boolean;  NotCol,TypeProcesInt,FichierConcerneInt,Adresse:string;
begin
     TableauTitreDataTiers.ColCount:=15;
     TableauTitreDataTiers.Cols[0].Text:='P°';
     TableauTitreDataTiers.Cols[1].Text:='TypeProces';
     TableauTitreDataTiers.Cols[2].Text:='FichierConcerne';
     TableauTitreDataTiers.Cols[3].Text:='TitreData1';
     TableauTitreDataTiers.Cols[4].Text:='Champts Ob1';
     TableauTitreDataTiers.Cols[5].Text:='TitreData2';
     TableauTitreDataTiers.Cols[6].Text:='Champts Ob2';
     TableauTitreDataTiers.Cols[7].Text:='TitreData3';
     TableauTitreDataTiers.Cols[8].Text:='Champts Ob3';
     TableauTitreDataTiers.Cols[9].Text:='TitreData4';
     TableauTitreDataTiers.Cols[10].Text:='Champts Ob4';
     TableauTitreDataTiers.Cols[11].Text:='TitreData5';
     TableauTitreDataTiers.Cols[12].Text:='Champts Ob5';
     TableauTitreDataTiers.Cols[13].Text:='TitreData6';
     TableauTitreDataTiers.Cols[14].Text:='Champts Ob6';

     TableauTitreDataTiers.RowCount:=2;
     TableauTitreDataTiers.Rows[1].Text:='';


     TypeProcesInt:='Business';
     FichierConcerneInt:='FTitreDataTiers';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProcesInt,FichierConcerneInt,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerneInt+' recherché !');
     end;

     ChTitreDataTiers:=Adresse;
     assignfile(FTitreDataTiers,ChTitreDataTiers);
     if FileExists(ChTitreDataTiers)then
     Reset(FTitreDataTiers)
     else Rewrite(FTitreDataTiers);
     Seek(FTitreDataTiers,0);
     R:=0;
     while not eof(FTitreDataTiers)do
     begin
          read(FTitreDataTiers,RTitreDataTiers);

          if(TypeProces<>'')and((TypeProces<>'Tous'))then
          begin
               if(RTitreDataTiers.TypeProces=TypeProces)
               then OKTitreDataTiers:=true
               else OKTitreDataTiers:=false;
          end
          else OKTitreDataTiers:=true;

          if(OKTitreDataTiers=true)then
          begin
               if(FichierConcerne<>'')and(FichierConcerne<>'Tous')then
               begin
                    if(RTitreDataTiers.FichierConcerne=FichierConcerne)
                    then OKTitreDataTiers:=true
                    else OKTitreDataTiers:=false;
               end;
          end;

          if(OKTitreDataTiers=true)then
          begin
               R:=R+1;
               TableauTitreDataTiers.Rows[R].Text:='';
               TableauTitreDataTiers.Cells[0,R]:=inttostr(RTitreDataTiers.PositionTitreDataTiers);
               TableauTitreDataTiers.Cells[1,R]:=RTitreDataTiers.TypeProces;
               TableauTitreDataTiers.Cells[2,R]:=RTitreDataTiers.FichierConcerne;
               TableauTitreDataTiers.Cells[3,R]:=RTitreDataTiers.TitreData1.TitreData;
               TableauTitreDataTiers.Cells[4,R]:=booleantostr(RTitreDataTiers.TitreData1.ChampsObligatoire);
               TableauTitreDataTiers.Cells[5,R]:=RTitreDataTiers.TitreData2.TitreData;
               TableauTitreDataTiers.Cells[6,R]:=booleantostr(RTitreDataTiers.TitreData2.ChampsObligatoire);
               TableauTitreDataTiers.Cells[7,R]:=RTitreDataTiers.TitreData3.TitreData;
               TableauTitreDataTiers.Cells[8,R]:=booleantostr(RTitreDataTiers.TitreData3.ChampsObligatoire);
               TableauTitreDataTiers.Cells[9,R]:=RTitreDataTiers.TitreData4.TitreData;
               TableauTitreDataTiers.Cells[10,R]:=booleantostr(RTitreDataTiers.TitreData4.ChampsObligatoire);
               TableauTitreDataTiers.Cells[11,R]:=RTitreDataTiers.TitreData5.TitreData;
               TableauTitreDataTiers.Cells[12,R]:=booleantostr(RTitreDataTiers.TitreData5.ChampsObligatoire);
               TableauTitreDataTiers.Cells[13,R]:=RTitreDataTiers.TitreData6.TitreData;
               TableauTitreDataTiers.Cells[14,R]:=booleantostr(RTitreDataTiers.TitreData6.ChampsObligatoire);
          end;

     end;
     CloseFile(FTitreDataTiers);

     if(R>0)then TableauTitreDataTiers.RowCount:=R+1
            else TableauTitreDataTiers.RowCount:=2;

     NotCol:='';

     for C:=1 to TableauTitreDataTiers.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then TableauTitreDataTiers.ColWidths[C]:=0;
     AjusterColWidth(TableauTitreDataTiers,'',NotCol);
end;

procedure TFSParametresAvances.EditTiersFichierConserneSelect(
  Sender: TObject);
begin
     ListeTitreDataTiers(FSParametresAvances.TableauTitreDataTiers,FSParametresAvances.EditTiersTypeProces.Text,FSParametresAvances.EditTiersFichierConserne.Text);
end;

procedure TFSParametresAvances.BitBtn4Click(Sender: TObject);
var  R:integer;
begin
     R:=FSParametresAvances.TableauTitreDataTiers.Row;

     FSParametresAvances.EditTitreData1Copie.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[3,R]; FSParametresAvances.RBCOTitreData1Copie.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[4,R]);
     FSParametresAvances.EditTitreData2Copie.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[5,R]; FSParametresAvances.RBCOTitreData2Copie.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[6,R]);
     FSParametresAvances.EditTitreData3Copie.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[7,R]; FSParametresAvances.RBCOTitreData3Copie.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[8,R]);
     FSParametresAvances.EditTitreData4Copie.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[9,R]; FSParametresAvances.RBCOTitreData4Copie.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[10,R]);
     FSParametresAvances.EditTitreData5Copie.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[11,R]; FSParametresAvances.RBCOTitreData5Copie.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[12,R]);
     FSParametresAvances.EditTitreData6Copie.Text:=FSParametresAvances.TableauTitreDataTiers.Cells[13,R]; FSParametresAvances.RBCOTitreData6Copie.Checked:=strtoboolean(FSParametresAvances.TableauTitreDataTiers.Cells[14,R]);

     FSParametresAvances.RBEtatCopier.Checked:=true;
end;

procedure TFSParametresAvances.BitCollerTitreDataTiersClick(
  Sender: TObject);
begin
     FSParametresAvances.EditTitreData1.Text:=FSParametresAvances.EditTitreData1Copie.Text; FSParametresAvances.RBCOTitreData1.Checked:=FSParametresAvances.RBCOTitreData1Copie.Checked;
     FSParametresAvances.EditTitreData2.Text:=FSParametresAvances.EditTitreData2Copie.Text; FSParametresAvances.RBCOTitreData2.Checked:=FSParametresAvances.RBCOTitreData2Copie.Checked;
     FSParametresAvances.EditTitreData3.Text:=FSParametresAvances.EditTitreData3Copie.Text; FSParametresAvances.RBCOTitreData3.Checked:=FSParametresAvances.RBCOTitreData3Copie.Checked;
     FSParametresAvances.EditTitreData4.Text:=FSParametresAvances.EditTitreData4Copie.Text; FSParametresAvances.RBCOTitreData4.Checked:=FSParametresAvances.RBCOTitreData4Copie.Checked;
     FSParametresAvances.EditTitreData5.Text:=FSParametresAvances.EditTitreData5Copie.Text; FSParametresAvances.RBCOTitreData5.Checked:=FSParametresAvances.RBCOTitreData5Copie.Checked;
     FSParametresAvances.EditTitreData6.Text:=FSParametresAvances.EditTitreData6Copie.Text; FSParametresAvances.RBCOTitreData6.Checked:=FSParametresAvances.RBCOTitreData6Copie.Checked;

     FSParametresAvances.RBEtatCopier.Checked:=false;
     FSParametresAvances.BitCollerTitreDataTiers.Enabled:=FSParametresAvances.RBEtatCopier.Checked;
end;

procedure TFSParametresAvances.InfoSoldeDomiciliationKeyPress(
  Sender: TObject; var Key: Char);
begin
     key:=#0;
end;

procedure TFSParametresAvances.RBSoldeDomiciliationRisqueZeroClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBOpererModification.Checked=false)then Exit;

     FSParametresAvances.InfoSoldeDomiciliation.Text:='';
     FSParametresAvances.InfoSoldeDomiciliation.Lines.Add('Solde risque zéro, les valeurs de type "Débit/Crédit" du même type que le solde domiciliation, non exécutés, ne seront pas pris en considération, afin de réduire le risque d''un solde spéculé!');
     FSParametresAvances.InfoSoldeDomiciliation.Lines.Add('Ex : cas d''une domiciliation au solde débiteur, les avis opéré au débit et non exécutés, peuvent balancer le solde au crédit dans le cas d''annulation de ces derniers !');

     OpenFParc(RParc);
     ChSoldeDomiciliationRisqueZero:=RParc.Parcours+'\'+Exercice+'FSoldeDomiciliationRisqueZero';
     assignfile(FSoldeDomiciliationRisqueZero,ChSoldeDomiciliationRisqueZero);
     if FileExists(ChSoldeDomiciliationRisqueZero)then
     Reset(FSoldeDomiciliationRisqueZero)
     else Rewrite(FSoldeDomiciliationRisqueZero);
     Seek(FSoldeDomiciliationRisqueZero,0);
     RSoldeDomiciliationRisqueZero.ActiverControleSoldeDomiciliationDemarrage:=FSParametresAvances.RBActiverControleSoldeDomiciliationDemarrage.Checked;
     RSoldeDomiciliationRisqueZero.SoldeDomiciliationRisqueZero:=FSParametresAvances.RBSoldeDomiciliationRisqueZero.Checked;
     RSoldeDomiciliationRisqueZero.NePasAutoriserDebitCreditSansSolde:=FSParametresAvances.RBNePasAutoriserDebitCreditSansSolde.Checked;
     write(FSoldeDomiciliationRisqueZero,RSoldeDomiciliationRisqueZero);
     CloseFile(FSoldeDomiciliationRisqueZero);
end;

procedure TFSParametresAvances.RBSoldeDomiciliationComptableClick(Sender: TObject);
begin
     if(FSParametresAvances.RBOpererModification.Checked=false)then Exit;

     FSParametresAvances.InfoSoldeDomiciliation.Text:='';
     FSParametresAvances.InfoSoldeDomiciliation.Lines.Add('Solde domiciliation comptable, toutes les valeurs opérées aux débit/crédit seront prise on considération même les non exécutés !');

     OpenFParc(RParc);
     ChSoldeDomiciliationRisqueZero:=RParc.Parcours+'\'+Exercice+'FSoldeDomiciliationRisqueZero';
     assignfile(FSoldeDomiciliationRisqueZero,ChSoldeDomiciliationRisqueZero);
     if FileExists(ChSoldeDomiciliationRisqueZero)then
     Reset(FSoldeDomiciliationRisqueZero)
     else Rewrite(FSoldeDomiciliationRisqueZero);
     Seek(FSoldeDomiciliationRisqueZero,0);
     RSoldeDomiciliationRisqueZero.ActiverControleSoldeDomiciliationDemarrage:=FSParametresAvances.RBActiverControleSoldeDomiciliationDemarrage.Checked;
     RSoldeDomiciliationRisqueZero.SoldeDomiciliationRisqueZero:=FSParametresAvances.RBSoldeDomiciliationRisqueZero.Checked;
     RSoldeDomiciliationRisqueZero.NePasAutoriserDebitCreditSansSolde:=FSParametresAvances.RBNePasAutoriserDebitCreditSansSolde.Checked;
     write(FSoldeDomiciliationRisqueZero,RSoldeDomiciliationRisqueZero);
     CloseFile(FSoldeDomiciliationRisqueZero);
end;

procedure TFSParametresAvances.PageParametreDomiciliationShow(
  Sender: TObject);
begin
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

Function FunctionSoldeDomiciliationRisqueZero:boolean;
begin
     FunctionSoldeDomiciliationRisqueZero:=false;

     OpenFParc(RParc);
     ChSoldeDomiciliationRisqueZero:=RParc.Parcours+'\'+Exercice+'FSoldeDomiciliationRisqueZero';
     assignfile(FSoldeDomiciliationRisqueZero,ChSoldeDomiciliationRisqueZero);
     if FileExists(ChSoldeDomiciliationRisqueZero)then
     Reset(FSoldeDomiciliationRisqueZero)
     else Rewrite(FSoldeDomiciliationRisqueZero);
     Seek(FSoldeDomiciliationRisqueZero,0);
     if not eof(FSoldeDomiciliationRisqueZero)then
     begin
          read(FSoldeDomiciliationRisqueZero,RSoldeDomiciliationRisqueZero);
          FunctionSoldeDomiciliationRisqueZero:=RSoldeDomiciliationRisqueZero.SoldeDomiciliationRisqueZero;
     end;
     CloseFile(FSoldeDomiciliationRisqueZero);
end;

Function FunctionControleSoldeDomiciliationDemarrage:boolean;
begin
     FunctionControleSoldeDomiciliationDemarrage:=false;

     OpenFParc(RParc);
     ChSoldeDomiciliationRisqueZero:=RParc.Parcours+'\'+Exercice+'FSoldeDomiciliationRisqueZero';
     assignfile(FSoldeDomiciliationRisqueZero,ChSoldeDomiciliationRisqueZero);
     if FileExists(ChSoldeDomiciliationRisqueZero)then
     begin
          Reset(FSoldeDomiciliationRisqueZero);
          Seek(FSoldeDomiciliationRisqueZero,0);
          if not eof(FSoldeDomiciliationRisqueZero)then
          begin
               read(FSoldeDomiciliationRisqueZero,RSoldeDomiciliationRisqueZero);
               FunctionControleSoldeDomiciliationDemarrage:=RSoldeDomiciliationRisqueZero.ActiverControleSoldeDomiciliationDemarrage;
          end;
          CloseFile(FSoldeDomiciliationRisqueZero);
     end;
end;

Function FunctionAutoriserDebitCreditSansSolde:boolean;
var  OKAutoriserDebitCreditSansSolde:boolean;
begin
     OKAutoriserDebitCreditSansSolde:=true;

     OpenFParc(RParc);
     ChSoldeDomiciliationRisqueZero:=RParc.Parcours+'\'+Exercice+'FSoldeDomiciliationRisqueZero';
     assignfile(FSoldeDomiciliationRisqueZero,ChSoldeDomiciliationRisqueZero);
     if FileExists(ChSoldeDomiciliationRisqueZero)then
     Reset(FSoldeDomiciliationRisqueZero)
     else Rewrite(FSoldeDomiciliationRisqueZero);
     Seek(FSoldeDomiciliationRisqueZero,0);
     if not eof(FSoldeDomiciliationRisqueZero)then
     begin
          read(FSoldeDomiciliationRisqueZero,RSoldeDomiciliationRisqueZero);
          if(RSoldeDomiciliationRisqueZero.NePasAutoriserDebitCreditSansSolde=true)
          then OKAutoriserDebitCreditSansSolde:=false;
     end;
     CloseFile(FSoldeDomiciliationRisqueZero);

     FunctionAutoriserDebitCreditSansSolde:=OKAutoriserDebitCreditSansSolde;
end;

Function FunctionModeConnectiviteBaseDataSelection:boolean;
begin
     FunctionModeConnectiviteBaseDataSelection:=false;

     OpenFParc(RParc);
     ChModeConnectiviteBaseData:=RParc.Parcours+'\'+Exercice+'FModeConnectiviteBaseData';
     assignfile(FModeConnectiviteBaseData,ChModeConnectiviteBaseData);
     if FileExists(ChModeConnectiviteBaseData)then
     Reset(FModeConnectiviteBaseData)
     else Rewrite(FModeConnectiviteBaseData);
     Seek(FModeConnectiviteBaseData,0);
     if not eof(FModeConnectiviteBaseData)then
     begin
          read(FModeConnectiviteBaseData,RModeConnectiviteBaseData);
          FunctionModeConnectiviteBaseDataSelection:=RModeConnectiviteBaseData.ModeConnectiviteSelection;
     end;
     CloseFile(FModeConnectiviteBaseData);
end;

Function FunctionActiverPublicationReseaux:boolean;
begin
     FunctionActiverPublicationReseaux:=false;

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     begin
          Reset(FActiverPublicationReseaux);
          Seek(FActiverPublicationReseaux,0);
          if not eof(FActiverPublicationReseaux)then
          begin
               read(FActiverPublicationReseaux,RActiverPublicationReseaux);
               FunctionActiverPublicationReseaux:=RActiverPublicationReseaux.ActiverPublicationReseaux;
          end;
          CloseFile(FActiverPublicationReseaux);
     end;
end;

Function FunctionTravauxConnexionReseaux:boolean;
begin
     FunctionTravauxConnexionReseaux:=false;

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
               FunctionTravauxConnexionReseaux:=RActiverPublicationReseaux.TravauxConnexionReseaux;
          end;
          //CloseFile(FActiverPublicationReseaux);
     end;
end;

Function FunctionInclureValeurSousReseauxPrecedentePeriode:boolean;
begin
     FunctionInclureValeurSousReseauxPrecedentePeriode:=false;

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     begin
          Reset(FActiverPublicationReseaux);
          Seek(FActiverPublicationReseaux,0);
          if not eof(FActiverPublicationReseaux)then
          begin
               read(FActiverPublicationReseaux,RActiverPublicationReseaux);
               FunctionInclureValeurSousReseauxPrecedentePeriode:=RActiverPublicationReseaux.InclureValeurSousReseauxPrecedentePeriode;
          end;
          CloseFile(FActiverPublicationReseaux);
     end;
end;

Function FunctionInclureValeurSousReseauxPrecedenteExercice:boolean;
begin
     FunctionInclureValeurSousReseauxPrecedenteExercice:=false;

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     begin
          Reset(FActiverPublicationReseaux);
          Seek(FActiverPublicationReseaux,0);
          if not eof(FActiverPublicationReseaux)then
          begin
               read(FActiverPublicationReseaux,RActiverPublicationReseaux);
               FunctionInclureValeurSousReseauxPrecedenteExercice:=RActiverPublicationReseaux.InclureValeurSousReseauxPrecedenteExercice;
          end;
          CloseFile(FActiverPublicationReseaux);
     end;
end;

Function FunctionPublicationReseauxProgrammer(var JourPublicationOut,HeurePublicationOut,JourPublierOut,HeurePublierOut,PositionPublicationOut:string):boolean;
var i:integer; OKPublicationProgrammer:boolean;
    OKJourPublication:boolean;
    DateTimePublication,DateTimePublier,DateTimeControlePublier,DateTimeControlePublication,JourPublication,HeurePublication,JourPublier,HeurePublier,PositionPublication:string;
begin
     OKPublicationProgrammer:=false;
     OKJourPublication:=false;
     JourPublication:='';
     HeurePublication:='';
     JourPublier:='';
     HeurePublier:='';
     DateTimePublication:='';
     DateTimePublier:='';
     PositionPublication:='';
     DateTimeControlePublier:='';
     DateTimeControlePublication:='';

     OpenFParc(RParc);
     ChPublicationReseauxProgrammer:=RParc.Parcours+'\'+Exercice+'FPublicationReseauxProgrammer';
     assignfile(FPublicationReseauxProgrammer,ChPublicationReseauxProgrammer);
     if FileExists(ChPublicationReseauxProgrammer)then
     begin
          Reset(FPublicationReseauxProgrammer);
          Seek(FPublicationReseauxProgrammer,0);
          OKPublicationProgrammer:=false;
          while not eof(FPublicationReseauxProgrammer)and(OKPublicationProgrammer=false)do
          begin
               read(FPublicationReseauxProgrammer,RPublicationReseauxProgrammer);
               JourPublication:=RPublicationReseauxProgrammer.JourPublication;
               HeurePublication:=RPublicationReseauxProgrammer.HeurePublication;
               JourPublier:=RPublicationReseauxProgrammer.JourPublier;
               HeurePublier:=RPublicationReseauxProgrammer.HeurePublier;
               PositionPublication:=inttostr(RPublicationReseauxProgrammer.PositionPublication);

               if(JourPublication<>'')then
               begin
                    OKJourPublication:=true;

                    DateTimePublication:='';
                    i:=strtointeger(firstlaters(datetostr(date),2));
                    while(i>=1)and(DateTimePublication='')do
                    begin
                        if(jour(completezerogauche(inttostr(i),'2')+'/'+lastlaters(datetostr(date),7),'Data')=JourPublication)then
                        begin
                             DateTimePublication:=completezerogauche(inttostr(i),'2')+'/'+lastlaters(datetostr(date),7)+' '+HeurePublication;
                        end;
                    i:=i-1;
                    end;

                    if(DateTimePublication='')then
                    begin
                         i:=strtointeger(firstlaters(datetostr(date),2));
                         while(i<=LastDay(datetostr(date)))and(DateTimePublication='')do
                         begin
                              if(jour(completezerogauche(inttostr(i),'2')+'/'+lastlaters(datetostr(date),7),'Data')=JourPublication)then
                              begin
                                   DateTimePublication:=completezerogauche(inttostr(i),'2')+'/'+lastlaters(datetostr(date),7)+' '+HeurePublication;
                              end;
                         i:=i+1;
                         end;
                    end;
               end
               else
               begin
                    OKJourPublication:=false;
                    DateTimePublication:=datetostr(date)+' '+HeurePublication;
               end;

               if(RPublicationReseauxProgrammer.JourPublier<>'')then
               begin
                    DateTimePublier:=RPublicationReseauxProgrammer.JourPublier+' '+RPublicationReseauxProgrammer.HeurePublier;
               end
               else
               begin
                    DateTimePublier:=DateTimePublication;//datetimetostr(date+time);
               end;

               if(strtodatetime(DateTimePublier)<=strtodatetime(DateTimePublication))then
               begin
                    if(Date+Time>=strtodatetime(DateTimePublication))then
                    begin
                         OKPublicationProgrammer:=true;
                         JourPublicationOut:=RPublicationReseauxProgrammer.JourPublication;
                         HeurePublicationOut:=RPublicationReseauxProgrammer.HeurePublication;
                         JourPublierOut:=RPublicationReseauxProgrammer.JourPublier;
                         HeurePublierOut:=RPublicationReseauxProgrammer.HeurePublier;
                         PositionPublicationOut:=inttostr(RPublicationReseauxProgrammer.PositionPublication);
                    end;
               end;

               if(DateTimeControlePublication='')then
               begin
                    DateTimeControlePublication:=DateTimePublication;
               end
               else
               begin
                    if(strtodatetime(DateTimeControlePublication)<strtodatetime(DateTimePublication))then DateTimeControlePublication:=DateTimePublication;
               end;

               if(DateTimeControlePublier='')then
               begin
                    DateTimeControlePublier:=DateTimePublier;
               end
               else
               begin
                    if(strtodatetime(DateTimeControlePublier)<strtodatetime(DateTimePublier))then DateTimeControlePublier:=DateTimePublier;
               end;
          end;
          CloseFile(FPublicationReseauxProgrammer);
     end;

     if(OKPublicationProgrammer=false)then
     begin
          if(OKJourPublication=true)
          then JourPublicationOut:=firstlaters(DateTimeControlePublication,10)
          else JourPublicationOut:='';
          HeurePublicationOut:=lastlaters(DateTimeControlePublication,8);
          JourPublierOut:=firstlaters(DateTimeControlePublier,10);
          HeurePublierOut:=lastlaters(DateTimeControlePublier,8);
          PositionPublicationOut:=PositionPublication;
     end;

     FunctionPublicationReseauxProgrammer:=OKPublicationProgrammer;
end;

Function FunctionUtiliseExerciceLocalPourPublicationEntrante:boolean;
begin
     FunctionUtiliseExerciceLocalPourPublicationEntrante:=false;

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
               FunctionUtiliseExerciceLocalPourPublicationEntrante:=RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationEntrante;
          end;
          //CloseFile(FActiverPublicationReseaux);
     end;
end;

Function FunctionUtiliseExerciceLocalPourPublicationSortante:boolean;
begin
     FunctionUtiliseExerciceLocalPourPublicationSortante:=false;

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
               FunctionUtiliseExerciceLocalPourPublicationSortante:=RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationSortante;
          end;
          //CloseFile(FActiverPublicationReseaux);
     end;
end;

Function FunctionUtiliseExerciceLocalPourLectureSousReseaux:boolean;
begin
     FunctionUtiliseExerciceLocalPourLectureSousReseaux:=false;

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
               FunctionUtiliseExerciceLocalPourLectureSousReseaux:=RActiverPublicationReseaux.UtiliserExerciceLocalePourLectureSousReseaux;
          end;
          //CloseFile(FActiverPublicationReseaux);
     end;
end;

procedure TFSParametresAvances.PageModeConnectiviteBaseDataShow(
  Sender: TObject);
begin
     FSParametresAvances.AfficheAdresseMAJAutres.Top:=FSParametresAvances.AfficheMiseAJourBusinessProces.Top;
     FSParametresAvances.AfficheAdresseMAJAutres.Left:=FSParametresAvances.AfficheMiseAJourBusinessProces.Left;

     if(FunctionModeConnectiviteBaseDataSelection=true)
     then FSParametresAvances.RBModeConnectiviteBaseDataSelection.Checked:=true
     else FSParametresAvances.RBModeConnectiviteBaseDataInstallation.Checked:=true;

     FSParametresAvances.EditAdresseMiseAJourBusinessProces.Text:=ProcAdresseMiseAJourBusinessProces;
     FSParametresAvances.OKChargementAdresseMAJBusinessProcesReseaux.Checked:=ProcOKChargementAdresseMAJBusinessProcesReseaux;

     FSParametresAvances.EditAdresseApplicationMail.Text:=ProcAdresseApplicationMail;
     FSParametresAvances.EditAdresseFichierParametresMail.Text:=ProcAdresseFichierParametresMail;
     FSParametresAvances.EditDonneurOrdre.Text:='';
end;

procedure TFSParametresAvances.RBModeConnectiviteBaseDataInstallationClick(
  Sender: TObject);
begin
     FSParametresAvances.InfoModeConnectiviteBaseData.Text:='';
     FSParametresAvances.InfoModeConnectiviteBaseData.Lines.Add('Connectivité base de données par installation, limite l''accès à des bases de données installé par le fournisseur du système.');

     OpenFParc(RParc);
     ChModeConnectiviteBaseData:=RParc.Parcours+'\'+Exercice+'FModeConnectiviteBaseData';
     assignfile(FModeConnectiviteBaseData,ChModeConnectiviteBaseData);
     if FileExists(ChModeConnectiviteBaseData)then
     Reset(FModeConnectiviteBaseData)
     else Rewrite(FModeConnectiviteBaseData);
     Seek(FModeConnectiviteBaseData,0);
     RModeConnectiviteBaseData.ModeConnectiviteSelection:=FSParametresAvances.RBModeConnectiviteBaseDataSelection.Checked;
     write(FModeConnectiviteBaseData,RModeConnectiviteBaseData);
     CloseFile(FModeConnectiviteBaseData);

     FSConnectiviteBaseDataSelection.Close;
end;

procedure TFSParametresAvances.RBModeConnectiviteBaseDataSelectionClick(
  Sender: TObject);
begin
     FSParametresAvances.InfoModeConnectiviteBaseData.Text:='';
     FSParametresAvances.InfoModeConnectiviteBaseData.Lines.Add('Connectivité base de données par sélection, donne le privilège à l''utilisateur de choisir la base de données adéquate au système utilisé.');

     OpenFParc(RParc);
     ChModeConnectiviteBaseData:=RParc.Parcours+'\'+Exercice+'FModeConnectiviteBaseData';
     assignfile(FModeConnectiviteBaseData,ChModeConnectiviteBaseData);
     if FileExists(ChModeConnectiviteBaseData)then
     Reset(FModeConnectiviteBaseData)
     else Rewrite(FModeConnectiviteBaseData);
     Seek(FModeConnectiviteBaseData,0);
     RModeConnectiviteBaseData.ModeConnectiviteSelection:=FSParametresAvances.RBModeConnectiviteBaseDataSelection.Checked;
     write(FModeConnectiviteBaseData,RModeConnectiviteBaseData);
     CloseFile(FModeConnectiviteBaseData);

     FSConnectiviteBaseDataSelection.Show;
     FSConnectiviteBaseDataSelection.AfficheBaseValide.Enabled:=false;
     FSConnectiviteBaseDataSelection.AfficheBaseValide.Color:=clRed;
     FSConnectiviteBaseDataSelection.AfficheDataInstall.Visible:=false;
end;

procedure TFSParametresAvances.RBActiverControleSoldeDomiciliationDemarrageClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBOpererModification.Checked=false)then Exit;

     OpenFParc(RParc);
     ChSoldeDomiciliationRisqueZero:=RParc.Parcours+'\'+Exercice+'FSoldeDomiciliationRisqueZero';
     assignfile(FSoldeDomiciliationRisqueZero,ChSoldeDomiciliationRisqueZero);
     if FileExists(ChSoldeDomiciliationRisqueZero)then
     Reset(FSoldeDomiciliationRisqueZero)
     else Rewrite(FSoldeDomiciliationRisqueZero);
     Seek(FSoldeDomiciliationRisqueZero,0);
     RSoldeDomiciliationRisqueZero.ActiverControleSoldeDomiciliationDemarrage:=FSParametresAvances.RBActiverControleSoldeDomiciliationDemarrage.Checked;
     RSoldeDomiciliationRisqueZero.SoldeDomiciliationRisqueZero:=FSParametresAvances.RBSoldeDomiciliationRisqueZero.Checked;
     RSoldeDomiciliationRisqueZero.NePasAutoriserDebitCreditSansSolde:=FSParametresAvances.RBNePasAutoriserDebitCreditSansSolde.Checked;
     write(FSoldeDomiciliationRisqueZero,RSoldeDomiciliationRisqueZero);
     CloseFile(FSoldeDomiciliationRisqueZero);
end;

procedure TFSParametresAvances.RBDesactiverControleSoldeDomiciliationDemarrageClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBOpererModification.Checked=false)then Exit;

     OpenFParc(RParc);
     ChSoldeDomiciliationRisqueZero:=RParc.Parcours+'\'+Exercice+'FSoldeDomiciliationRisqueZero';
     assignfile(FSoldeDomiciliationRisqueZero,ChSoldeDomiciliationRisqueZero);
     if FileExists(ChSoldeDomiciliationRisqueZero)then
     Reset(FSoldeDomiciliationRisqueZero)
     else Rewrite(FSoldeDomiciliationRisqueZero);
     Seek(FSoldeDomiciliationRisqueZero,0);
     RSoldeDomiciliationRisqueZero.ActiverControleSoldeDomiciliationDemarrage:=FSParametresAvances.RBActiverControleSoldeDomiciliationDemarrage.Checked;
     RSoldeDomiciliationRisqueZero.SoldeDomiciliationRisqueZero:=FSParametresAvances.RBSoldeDomiciliationRisqueZero.Checked;
     RSoldeDomiciliationRisqueZero.NePasAutoriserDebitCreditSansSolde:=FSParametresAvances.RBNePasAutoriserDebitCreditSansSolde.Checked;
     write(FSoldeDomiciliationRisqueZero,RSoldeDomiciliationRisqueZero);
     CloseFile(FSoldeDomiciliationRisqueZero);
end;

Function ControleAlerteStockLimite(NumProjetFinance:string):boolean;
var OKProjetFinance:boolean;
begin
     ControleAlerteStockLimite:=false;

     OpenFParc(RParc);
     ChAlerteStockLimiteBaseData:=RParc.Parcours+'\'+Exercice+'FAlerteStockLimiteBaseData';
     assignfile(FAlerteStockLimiteBaseData,ChAlerteStockLimiteBaseData);
     if FileExists(ChAlerteStockLimiteBaseData)then
     Reset(FAlerteStockLimiteBaseData)
     else Rewrite(FAlerteStockLimiteBaseData);
     Seek(FAlerteStockLimiteBaseData,0);
     OKProjetFinance:=false;
     while not eof(FAlerteStockLimiteBaseData)and(OKProjetFinance=false)do
     begin
          read(FAlerteStockLimiteBaseData,RAlerteStockLimiteBaseData);   Application.ProcessMessages;
          if(RAlerteStockLimiteBaseData.NumProjetFinance=NumProjetFinance)then
          begin
               OKProjetFinance:=true;
               ControleAlerteStockLimite:=RAlerteStockLimiteBaseData.OKAlerteStockLimite;
          end;
     end;
     CloseFile(FAlerteStockLimiteBaseData);
end;

Procedure RemlireDataAlerteStockLimite(NumProjetFinance:string; OKAlerte:boolean);
var iSL,iSelect:integer; OKProjetFinance:boolean;
begin
     OpenFParc(RParc);
     ChAlerteStockLimiteBaseData:=RParc.Parcours+'\'+Exercice+'FAlerteStockLimiteBaseData';
     assignfile(FAlerteStockLimiteBaseData,ChAlerteStockLimiteBaseData);
     if FileExists(ChAlerteStockLimiteBaseData)then
     Reset(FAlerteStockLimiteBaseData)
     else Rewrite(FAlerteStockLimiteBaseData);
     Seek(FAlerteStockLimiteBaseData,0);
     OKProjetFinance:=false;
     iSL:=0;
     while not eof(FAlerteStockLimiteBaseData)and(OKProjetFinance=false)do
     begin
          read(FAlerteStockLimiteBaseData,RAlerteStockLimiteBaseData);

          if(RAlerteStockLimiteBaseData.NumProjetFinance=NumProjetFinance)then
          begin
               OKProjetFinance:=true;
               iSelect:=iSL;
          end;
     iSL:=iSL+1;
     end;

     if(OKProjetFinance=false)then iSelect:=iSL;
     RAlerteStockLimiteBaseData.NumProjetFinance:=NumProjetFinance;
     RAlerteStockLimiteBaseData.OKAlerteStockLimite:=OKAlerte;
     Seek(FAlerteStockLimiteBaseData,iSelect);
     write(FAlerteStockLimiteBaseData,RAlerteStockLimiteBaseData);
     CloseFile(FAlerteStockLimiteBaseData);
end;

procedure TFSParametresAvances.BitActiveAlerteStockLimiteClick(
  Sender: TObject);
begin
     RemlireDataAlerteStockLimite(FSParametresAvances.TableauListeBaseStock.Cells[1,FSParametresAvances.TableauListeBaseStock.Row],FSParametresAvances.RBActiveStockLimite.Checked);

     ListeBaseStockAlerteStockLimite(FSParametresAvances.TableauListeBaseStock);
end;

Procedure ListeBaseStockAlerteStockLimite(TableauListeBaseStock:TStringGrid);
var  R:integer;
begin
     TableauListeBaseStock.ColCount:=4;
     TableauListeBaseStock.Cols[0].Text:='N°';
     TableauListeBaseStock.Cols[1].Text:='Code';
     TableauListeBaseStock.Cols[2].Text:='Désignation';
     TableauListeBaseStock.Cols[3].Text:='Alerte active';

     TableauListeBaseStock.RowCount:=2;
     TableauListeBaseStock.Rows[1].Text:='';
     R:=0;

     R:=R+1;
     TableauListeBaseStock.Rows[R].Text:=inttostr(R);
     TableauListeBaseStock.Cells[1,R]:='';
     TableauListeBaseStock.Cells[2,R]:='Touts les projets';
     TableauListeBaseStock.Cells[3,R]:=booleantostr(ControleAlerteStockLimite(''));

     if(FunctStockSpecifierParStructure(false)=true)then
     begin
           OpenFParc(RParc);
           ChProjetFinance:=RParc.Parcours+'\'+Exercice+'FProjetFinance';
           assignfile(FProjetFinance,ChProjetFinance);
           if FileExists(ChProjetFinance)then
           Reset(FProjetFinance)
           else Rewrite(FProjetFinance);
           Seek(FProjetFinance,0);

           while not eof(FProjetFinance)do
           begin
                read(FProjetFinance,RProjetFinance);
                if(longueur(RProjetFinance.NumProjetFinance)=10)then
                begin
                     R:=R+1;
                     TableauListeBaseStock.Rows[R].Text:=inttostr(R);
                     TableauListeBaseStock.Cells[1,R]:=RProjetFinance.NumProjetFinance;
                     TableauListeBaseStock.Cells[2,R]:=RProjetFinance.DesignationProjetFinance;
                     TableauListeBaseStock.Cells[3,R]:=booleantostr(ControleAlerteStockLimite(RProjetFinance.NumProjetFinance));
                end;
           end;
           CloseFile(FProjetFinance);
     end;

     if(R>0)then TableauListeBaseStock.RowCount:=R+1
            else TableauListeBaseStock.RowCount:=2;

     AjusterColWidth(TableauListeBaseStock,'','');

     TableauListeBaseStock.SetFocus;
end;

procedure TFSParametresAvances.TableauListeBaseStockClick(Sender: TObject);
begin
     FSParametresAvances.RBActiveStockLimite.Checked:=Not(strtoboolean(FSParametresAvances.TableauListeBaseStock.Cells[3,FSParametresAvances.TableauListeBaseStock.Row]));

     if(FSParametresAvances.RBActiveStockLimite.Checked=true)
     then FSParametresAvances.RBActiveStockLimite.Caption:='Activer'
     else FSParametresAvances.RBActiveStockLimite.Caption:='Désactiver';

     FSParametresAvances.BitActiveAlerteStockLimite.Caption:=FSParametresAvances.RBActiveStockLimite.Caption+' l''alerte'
end;

procedure TFSParametresAvances.TableauListeBaseStockDblClick(
  Sender: TObject);
begin
     RemlireDataAlerteStockLimite(FSParametresAvances.TableauListeBaseStock.Cells[1,FSParametresAvances.TableauListeBaseStock.Row],Not(strtoboolean(FSParametresAvances.TableauListeBaseStock.Cells[3,FSParametresAvances.TableauListeBaseStock.Row])));

     ListeBaseStockAlerteStockLimite(FSParametresAvances.TableauListeBaseStock);
end;

procedure TFSParametresAvances.RBAutoriserDebitCreditSansSoldeClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBOpererModification.Checked=false)then Exit;

     OpenFParc(RParc);
     ChSoldeDomiciliationRisqueZero:=RParc.Parcours+'\'+Exercice+'FSoldeDomiciliationRisqueZero';
     assignfile(FSoldeDomiciliationRisqueZero,ChSoldeDomiciliationRisqueZero);
     if FileExists(ChSoldeDomiciliationRisqueZero)then
     Reset(FSoldeDomiciliationRisqueZero)
     else Rewrite(FSoldeDomiciliationRisqueZero);
     Seek(FSoldeDomiciliationRisqueZero,0);
     RSoldeDomiciliationRisqueZero.ActiverControleSoldeDomiciliationDemarrage:=FSParametresAvances.RBActiverControleSoldeDomiciliationDemarrage.Checked;
     RSoldeDomiciliationRisqueZero.SoldeDomiciliationRisqueZero:=FSParametresAvances.RBSoldeDomiciliationRisqueZero.Checked;
     RSoldeDomiciliationRisqueZero.NePasAutoriserDebitCreditSansSolde:=FSParametresAvances.RBNePasAutoriserDebitCreditSansSolde.Checked;
     write(FSoldeDomiciliationRisqueZero,RSoldeDomiciliationRisqueZero);
     CloseFile(FSoldeDomiciliationRisqueZero);
end;

procedure TFSParametresAvances.RBNePasAutoriserDebitCreditSansSoldeClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBOpererModification.Checked=false)then Exit;

     OpenFParc(RParc);
     ChSoldeDomiciliationRisqueZero:=RParc.Parcours+'\'+Exercice+'FSoldeDomiciliationRisqueZero';
     assignfile(FSoldeDomiciliationRisqueZero,ChSoldeDomiciliationRisqueZero);
     if FileExists(ChSoldeDomiciliationRisqueZero)then
     Reset(FSoldeDomiciliationRisqueZero)
     else Rewrite(FSoldeDomiciliationRisqueZero);
     Seek(FSoldeDomiciliationRisqueZero,0);
     RSoldeDomiciliationRisqueZero.ActiverControleSoldeDomiciliationDemarrage:=FSParametresAvances.RBActiverControleSoldeDomiciliationDemarrage.Checked;
     RSoldeDomiciliationRisqueZero.SoldeDomiciliationRisqueZero:=FSParametresAvances.RBSoldeDomiciliationRisqueZero.Checked;
     RSoldeDomiciliationRisqueZero.NePasAutoriserDebitCreditSansSolde:=FSParametresAvances.RBNePasAutoriserDebitCreditSansSolde.Checked;
     write(FSoldeDomiciliationRisqueZero,RSoldeDomiciliationRisqueZero);
     CloseFile(FSoldeDomiciliationRisqueZero);
end;

procedure TFSParametresAvances.RBActiverPublicationReseauxClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBAppliqueEnregistrementParametresReseaux.Checked=false)then Exit;

     FSParametresAvances.InfoActiverPublicationReseaux.Text:='';
     FSParametresAvances.InfoActiverPublicationReseaux.Lines.Add('Publication dossier local et tous procès sous réseaux qui utilisent la base locale');

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     Reset(FActiverPublicationReseaux)
     else Rewrite(FActiverPublicationReseaux);
     Seek(FActiverPublicationReseaux,0);
     Truncate(FActiverPublicationReseaux);
     RActiverPublicationReseaux.TravauxConnexionReseaux:=FSParametresAvances.RBTravauxConnexionReseaux.Checked;
     RActiverPublicationReseaux.ActiverPublicationReseaux:=FSParametresAvances.RBActiverPublicationReseaux.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedentePeriode:=FSParametresAvances.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedenteExercice:=FSParametresAvances.RBInclureValeurSousReseauxPrecedenteExercice.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationEntrante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationEntrante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationSortante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationSortante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourLectureSousReseaux:=FSParametresAvances.RBUliliseExerciceLocalPourLectureSousReseaux.Checked;
     Seek(FActiverPublicationReseaux,0);
     write(FActiverPublicationReseaux,RActiverPublicationReseaux);
     CloseFile(FActiverPublicationReseaux);

end;

procedure TFSParametresAvances.RBDesActiverPublicationReseauxClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBAppliqueEnregistrementParametresReseaux.Checked=false)then Exit;

     FSParametresAvances.InfoActiverPublicationReseaux.Text:='';
     FSParametresAvances.InfoActiverPublicationReseaux.Lines.Add('Publication uniquement dossier local');

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     Reset(FActiverPublicationReseaux)
     else Rewrite(FActiverPublicationReseaux);
     Seek(FActiverPublicationReseaux,0);
     Truncate(FActiverPublicationReseaux);
     RActiverPublicationReseaux.TravauxConnexionReseaux:=FSParametresAvances.RBTravauxConnexionReseaux.Checked;
     RActiverPublicationReseaux.ActiverPublicationReseaux:=FSParametresAvances.RBActiverPublicationReseaux.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedentePeriode:=FSParametresAvances.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedenteExercice:=FSParametresAvances.RBInclureValeurSousReseauxPrecedenteExercice.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationEntrante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationEntrante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationSortante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationSortante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourLectureSousReseaux:=FSParametresAvances.RBUliliseExerciceLocalPourLectureSousReseaux.Checked;
     Seek(FActiverPublicationReseaux,0);
     write(FActiverPublicationReseaux,RActiverPublicationReseaux);
     CloseFile(FActiverPublicationReseaux);
end;

procedure TFSParametresAvances.PageConfigurationReseauxShow(
  Sender: TObject);
var  JourPublication,HeurePublication,JourPublier,HeurePublier,PositionPublication:string;
begin
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
     ///////////////////////////////////////////////////////////////////////////
     FunctionPublicationReseauxProgrammer(JourPublication,HeurePublication,JourPublier,HeurePublier,PositionPublication);

     if(HeurePublication<>'')then
     begin
          if(JourPublication<>'')then
          begin
               FSParametresAvances.RBPublicationChaqueSemaine.Checked:=true;
               FSParametresAvances.EditJourPublication.Text:=JourPublication;
               FSParametresAvances.EditHeurePublicationSemaine.Text:=HeurePublication;
          end
          else
          begin
               FSParametresAvances.RBPublicationChaqueJour.Checked:=true;
               FSParametresAvances.EditHeurePublicationJour.Text:=HeurePublication;
               FSParametresAvances.EditJourPublication.Text:='';
               FSParametresAvances.EditHeurePublicationSemaine.Text:='';
          end;
     end
     else
     begin
          FSParametresAvances.RBAucunePublicationProgrammer.Checked:=true;
          FSParametresAvances.EditHeurePublicationJour.Text:='';
          FSParametresAvances.EditJourPublication.Text:='';
          FSParametresAvances.EditHeurePublicationSemaine.Text:='';
     end;
     ///////////////////////////////////////////////////////////////////////////

     FSParametresAvances.RBAppliqueEnregistrementParametresReseaux.Checked:=true;
end;

procedure TFSParametresAvances.RBTravauxConnexionReseauxClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBAppliqueEnregistrementParametresReseaux.Checked=false)then Exit;

     FSParametresAvances.InfoTravauxConnexionReseaux.Text:='';
     FSParametresAvances.InfoTravauxConnexionReseaux.Lines.Add('Travaux sous connexion réseaux');

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     Reset(FActiverPublicationReseaux)
     else Rewrite(FActiverPublicationReseaux);
     Seek(FActiverPublicationReseaux,0);
     Truncate(FActiverPublicationReseaux);
     RActiverPublicationReseaux.TravauxConnexionReseaux:=FSParametresAvances.RBTravauxConnexionReseaux.Checked;
     RActiverPublicationReseaux.ActiverPublicationReseaux:=FSParametresAvances.RBActiverPublicationReseaux.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedentePeriode:=FSParametresAvances.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedenteExercice:=FSParametresAvances.RBInclureValeurSousReseauxPrecedenteExercice.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationEntrante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationEntrante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationSortante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationSortante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourLectureSousReseaux:=FSParametresAvances.RBUliliseExerciceLocalPourLectureSousReseaux.Checked;
     Seek(FActiverPublicationReseaux,0);
     write(FActiverPublicationReseaux,RActiverPublicationReseaux);
     CloseFile(FActiverPublicationReseaux);

     FSParametresAvances.AfficheActiverPublicationReseaux.Enabled:=true;
     FSParametresAvances.RBDesActiverPublicationReseaux.Checked:=true;

     ListeAdresseDossierPartageReseaux(FSMenuPrincipal.TableauAdresseDossierPartageReseaux,true,false,True);
end;

procedure TFSParametresAvances.RBTravauxHorsConnexionReseauxClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBAppliqueEnregistrementParametresReseaux.Checked=false)then Exit;

     FSParametresAvances.InfoTravauxConnexionReseaux.Text:='';
     FSParametresAvances.InfoTravauxConnexionReseaux.Lines.Add('Travaux Hors connexion réseaux');

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     Reset(FActiverPublicationReseaux)
     else Rewrite(FActiverPublicationReseaux);
     Seek(FActiverPublicationReseaux,0);
     Truncate(FActiverPublicationReseaux);
     RActiverPublicationReseaux.TravauxConnexionReseaux:=FSParametresAvances.RBTravauxConnexionReseaux.Checked;
     RActiverPublicationReseaux.ActiverPublicationReseaux:=FSParametresAvances.RBActiverPublicationReseaux.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedentePeriode:=FSParametresAvances.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedenteExercice:=FSParametresAvances.RBInclureValeurSousReseauxPrecedenteExercice.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationEntrante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationEntrante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationSortante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationSortante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourLectureSousReseaux:=FSParametresAvances.RBUliliseExerciceLocalPourLectureSousReseaux.Checked;
     Seek(FActiverPublicationReseaux,0);
     write(FActiverPublicationReseaux,RActiverPublicationReseaux);
     CloseFile(FActiverPublicationReseaux);

     FSParametresAvances.AfficheActiverPublicationReseaux.Enabled:=false;
     FSParametresAvances.RBDesActiverPublicationReseaux.Checked:=true;

     ListeAdresseDossierPartageReseaux(FSMenuPrincipal.TableauAdresseDossierPartageReseaux,true,false,True);
end;

procedure TFSParametresAvances.InfoPublicationProgrammerKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSParametresAvances.RBPublicationChaqueJourClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBPublicationChaqueJour.Checked=true)then
     begin
          FSParametresAvances.EditHeurePublicationJour.Text:='12:30:00';
          FSParametresAvances.EditHeurePublicationJour.Enabled:=true;

          FSParametresAvances.EditJourPublication.Text:='';
          FSParametresAvances.EditJourPublication.Enabled:=false;

          FSParametresAvances.EditHeurePublicationSemaine.Text:='';
          FSParametresAvances.EditHeurePublicationSemaine.Enabled:=false;

          FSParametresAvances.EditHeurePublicationJour.SetFocus;
     end
     else
     begin
          FSParametresAvances.EditJourPublication.Text:='Dimanche';
          FSParametresAvances.EditJourPublication.Enabled:=true;

          FSParametresAvances.EditHeurePublicationSemaine.Text:='12:30:00';
          FSParametresAvances.EditHeurePublicationSemaine.Enabled:=true;

          FSParametresAvances.EditHeurePublicationJour.Text:='';
          FSParametresAvances.EditHeurePublicationJour.Enabled:=false;

          FSParametresAvances.EditJourPublication.SetFocus;
     end;

end;

procedure TFSParametresAvances.RBPublicationChaqueSemaineClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBPublicationChaqueSemaine.Checked=true)then
     begin
          FSParametresAvances.EditJourPublication.Text:='Dimanche';
          FSParametresAvances.EditJourPublication.Enabled:=true;

          FSParametresAvances.EditHeurePublicationSemaine.Text:='12:30:00';
          FSParametresAvances.EditHeurePublicationSemaine.Enabled:=true;

          FSParametresAvances.EditHeurePublicationJour.Text:='';
          FSParametresAvances.EditHeurePublicationJour.Enabled:=false;
     end
     else
     begin
          FSParametresAvances.EditHeurePublicationJour.Text:='12:30:00';
          FSParametresAvances.EditHeurePublicationJour.Enabled:=true;

          FSParametresAvances.EditJourPublication.Text:='';
          FSParametresAvances.EditJourPublication.Enabled:=false;

          FSParametresAvances.EditHeurePublicationSemaine.Text:='';
          FSParametresAvances.EditHeurePublicationSemaine.Enabled:=false;
     end;

end;

procedure TFSParametresAvances.RBAucunePublicationProgrammerClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBAucunePublicationProgrammer.Checked=true)then
     begin
          FSParametresAvances.EditHeurePublicationJour.Text:='';
          FSParametresAvances.EditHeurePublicationJour.Enabled:=false;

          FSParametresAvances.EditJourPublication.Text:='';
          FSParametresAvances.EditJourPublication.Enabled:=false;

          FSParametresAvances.EditHeurePublicationSemaine.Text:='';
          FSParametresAvances.EditHeurePublicationSemaine.Enabled:=false;
     end;
end;

procedure TFSParametresAvances.BitOperationPublicationReseauxClick(Sender: TObject);
var  i,iSelect,Position:integer;      OKPublicationReseauxProgrammer:boolean;
begin

     if(FSParametresAvances.BitOperationPublicationReseaux.Caption='Valider')then
     begin
          OpenFParc(RParc);
          ChPublicationReseauxProgrammer:=RParc.Parcours+'\'+Exercice+'FPublicationReseauxProgrammer';
          assignfile(FPublicationReseauxProgrammer,ChPublicationReseauxProgrammer);
          if FileExists(ChPublicationReseauxProgrammer)then
          Reset(FPublicationReseauxProgrammer)
          else Rewrite(FPublicationReseauxProgrammer);
          Seek(FPublicationReseauxProgrammer,0);
          i:=0;
          iSelect:=0;
          Position:=0;
          OKPublicationReseauxProgrammer:=false;
          while not eof(FPublicationReseauxProgrammer)and(OKPublicationReseauxProgrammer=false)do
          begin
               read(FPublicationReseauxProgrammer,RPublicationReseauxProgrammer);

               if(Position<=RPublicationReseauxProgrammer.PositionPublication)then Position:=RPublicationReseauxProgrammer.PositionPublication+1;


               if(inttostr(RPublicationReseauxProgrammer.PositionPublication)=FSParametresAvances.EditPositionPublication.Text)then
               begin
                    OKPublicationReseauxProgrammer:=true;
                    iSelect:=i;
                    Position:=RPublicationReseauxProgrammer.PositionPublication;
               end;
          i:=i+1;
          end;

          if(OKPublicationReseauxProgrammer=true)then i:=iSelect;

          RPublicationReseauxProgrammer.PositionPublication:=Position;
          RPublicationReseauxProgrammer.JourPublication:=FSParametresAvances.EditJourPublication.Text;

          if(FSParametresAvances.RBPublicationChaqueJour.Checked)
          then RPublicationReseauxProgrammer.HeurePublication:=FSParametresAvances.EditHeurePublicationJour.Text
          else RPublicationReseauxProgrammer.HeurePublication:=FSParametresAvances.EditHeurePublicationSemaine.Text;

          RPublicationReseauxProgrammer.JourPublier:=FSParametresAvances.EditJourPublier.Text;
          RPublicationReseauxProgrammer.HeurePublier:=FSParametresAvances.EditHeurePublier.Text;

          Seek(FPublicationReseauxProgrammer,i);
          write(FPublicationReseauxProgrammer,RPublicationReseauxProgrammer);
          CloseFile(FPublicationReseauxProgrammer);
     end;

     if(FSParametresAvances.BitOperationPublicationReseaux.Caption='Supprimer')then
     begin
          DeleteFPublicationReseauxProgrammer(FSParametresAvances.EditPositionPublication.Text,OKPublicationReseauxProgrammer);
     end;

     FSParametresAvances.AfficheOperationPublicationReseauxProgrammer.Visible:=false;
     ListePublicationReseauxProgrammer(FSParametresAvances.TableauListePublicationReseauxProgrammer);

     FSParametresAvances.TableauListePublicationReseauxProgrammer.SetFocus;
end;

Procedure LancementPublicationReseauxProgrammer(jourCaption,HeureCaption:string; InfoPublicationReseauxProgrammer:TLabel);
var  JourPublication,HeurePublication,JourPublier,HeurePublier,PositionPublication:string;
     TypeProces,FichierConserne,Adresse:string;
begin
     if(FinReouvertureClotureExercice(ExerciceAnnee)=false)then
     begin
           if(FunctionPublicationReseauxProgrammer(JourPublication,HeurePublication,JourPublier,HeurePublier,PositionPublication)=true)then
           begin
                 JourPublier:=datetostr(date);
                 HeurePublier:=timetostr(Time);
                 EnregistrementPublicationReseauxProgrammer(PositionPublication,JourPublier,HeurePublier);

                 if(JourPublication<>'')then JourPublication:='chaque '+JourPublication else JourPublication:='chaque jour';
                 if(HeurePublication<>'')then HeurePublication:='à '+HeurePublication;

                 FSPublicationReseaux.EditJourPublication.Text:=JourPublication;
                 FSPublicationReseaux.EditHeurePublication.Text:=HeurePublication;
                 FSPublicationReseaux.EditJourPublier.Text:=JourPublier;
                 FSPublicationReseaux.EditHeurePublier.Text:=HeurePublier;

                 if(FSPublicationReseaux.RBPublicationActive.Checked=false)then
                 begin
                      FSPublicationReseaux.AfficheMessage.Caption:='Patientez SVP ! Auto Publication réseaux !';
                      FSPublicationReseaux.Show;
                      FormeAvantPlan(FSMenuPrincipal,FSPublicationReseaux,true);
                      FSPublicationReseaux.TimerPublicationReseaux.Enabled:=true;
                 end;
           end;

           if(JourPublier<>'')then
           begin
                JourPublier:=', dérnière publication réseaux exécuté le '+jour(JourPublier,'Data')+' '+JourPublier+' à '+HeurePublier
           end
           else
           begin
                JourPublier:=', Aucune publication réseaux exécuté !';
           end;

           if(JourPublication<>'')then
           begin
                JourPublication:='Publication réseaux programmé chaque '+JourPublication+' à '+HeurePublication;
           end
           else
           begin
                if(HeurePublication<>'')
                then JourPublication:='Publication réseaux programmé chaque jour à '+HeurePublication
                else JourPublication:='Aucune publication réseaux programmé !';
           end;

           InfoPublicationReseauxProgrammer.Caption:=JourPublication+JourPublier;
     end;
end;

Procedure EnregistrementPublicationReseauxProgrammer(PositionPublication,JourPublier,HeurePublier:string);
var  i,iSelect:integer; OKPublicationReseauxProgrammer:boolean;  DateTimePublication,DateTimePublier:string;
begin
     OpenFParc(RParc);
     ChPublicationReseauxProgrammer:=RParc.Parcours+'\'+Exercice+'FPublicationReseauxProgrammer';
     assignfile(FPublicationReseauxProgrammer,ChPublicationReseauxProgrammer);
     try
     if FileExists(ChPublicationReseauxProgrammer)then
     Reset(FPublicationReseauxProgrammer)
     else Rewrite(FPublicationReseauxProgrammer);
     Seek(FPublicationReseauxProgrammer,0);
     i:=0;
     iSelect:=0;
     OKPublicationReseauxProgrammer:=false;
     while not eof(FPublicationReseauxProgrammer)and(OKPublicationReseauxProgrammer=false)do
     begin
          read(FPublicationReseauxProgrammer,RPublicationReseauxProgrammer);  Application.ProcessMessages;

          if(PositionPublication<>'')then
          begin
               if(inttostr(RPublicationReseauxProgrammer.PositionPublication)=PositionPublication)then
               begin
                    OKPublicationReseauxProgrammer:=true;
                    iSelect:=i;
               end;
          end
          else
          begin
               /////////////////////////////////////////////////////////////////
               if(RPublicationReseauxProgrammer.JourPublication<>'')then
               begin
                    DateTimePublication:='';
                    i:=strtointeger(firstlaters(datetostr(date),2));
                    while(i>=1)and(DateTimePublication='')do
                    begin
                        if(jour(completezerogauche(inttostr(i),'2')+'/'+lastlaters(datetostr(date),7),'Data')=RPublicationReseauxProgrammer.JourPublication)then
                        begin
                             DateTimePublication:=completezerogauche(inttostr(i),'2')+'/'+lastlaters(datetostr(date),7)+' '+RPublicationReseauxProgrammer.HeurePublication;
                        end;
                    i:=i-1;
                    end;

                    if(DateTimePublication='')then
                    begin
                         i:=strtointeger(firstlaters(datetostr(date),2));
                         while(i<=LastDay(datetostr(date)))and(DateTimePublication='')do
                         begin
                              if(jour(completezerogauche(inttostr(i),'2')+'/'+lastlaters(datetostr(date),7),'Data')=RPublicationReseauxProgrammer.JourPublication)then
                              begin
                                   DateTimePublication:=completezerogauche(inttostr(i),'2')+'/'+lastlaters(datetostr(date),7)+' '+RPublicationReseauxProgrammer.HeurePublication;
                              end;
                         i:=i+1;
                         end;
                    end;
               end
               else
               begin
                    DateTimePublication:=datetostr(date)+' '+RPublicationReseauxProgrammer.HeurePublication;
               end;

               if(JourPublier<>'')then
               begin
                    DateTimePublier:=JourPublier+' '+HeurePublier;
               end
               else
               begin
                    DateTimePublier:=datetimetostr(date+time);
               end;

               if(strtodatetime(DateTimePublier)>=strtodatetime(DateTimePublication))then
               begin
                    OKPublicationReseauxProgrammer:=true;
                    iSelect:=i;
               end;
               /////////////////////////////////////////////////////////////////
          end;
     i:=i+1;
     end;

     if(OKPublicationReseauxProgrammer=true)then
     begin
          i:=iSelect;
          Seek(FPublicationReseauxProgrammer,i);
          RPublicationReseauxProgrammer.JourPublier:=jourPublier;
          RPublicationReseauxProgrammer.HeurePublier:=HeurePublier;
          write(FPublicationReseauxProgrammer,RPublicationReseauxProgrammer);
     end;
     finally
     CloseFile(FPublicationReseauxProgrammer);
     end;
end;

procedure TFSParametresAvances.TableauListePublicationReseauxProgrammerKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['n','N']then
     begin
          FSParametresAvances.BitOperationPublicationReseaux.Kind:=bkAll;
          FSParametresAvances.AfficheOperationPublicationReseauxProgrammer.Visible:=true;
          FSParametresAvances.BitOperationPublicationReseaux.Caption:='Valider';

          FSParametresAvances.RBAucunePublicationProgrammer.Checked:=true;
          FSParametresAvances.EditPositionPublication.Text:='';
          FSParametresAvances.EditJourPublication.Text:='';
          FSParametresAvances.EditHeurePublicationSemaine.Text:='';
          FSParametresAvances.EditHeurePublicationJour.Text:='';
          FSParametresAvances.EditJourPublier.Text:='';
          FSParametresAvances.EditHeurePublier.Text:='';

          FSParametresAvances.RBAucunePublicationProgrammer.SetFocus;
     end;

     if key in['m','M','s','S']then
     begin
          FSParametresAvances.AfficheOperationPublicationReseauxProgrammer.Visible:=true;

          if key in['m','M']then
          begin
               FSParametresAvances.BitOperationPublicationReseaux.Kind:=bkAll;
               FSParametresAvances.BitOperationPublicationReseaux.Caption:='Valider';
          end;

          if key in['s','S']then
          begin
               FSParametresAvances.BitOperationPublicationReseaux.Kind:=bkCancel;
               FSParametresAvances.BitOperationPublicationReseaux.Caption:='Supprimer';
          end;

          FSParametresAvances.EditPositionPublication.Text:=FSParametresAvances.TableauListePublicationReseauxProgrammer.Cells[1,FSParametresAvances.TableauListePublicationReseauxProgrammer.Row];

          if(FSParametresAvances.TableauListePublicationReseauxProgrammer.Cells[2,FSParametresAvances.TableauListePublicationReseauxProgrammer.Row]<>'')then
          begin
               if(FSParametresAvances.TableauListePublicationReseauxProgrammer.Cells[3,FSParametresAvances.TableauListePublicationReseauxProgrammer.Row]<>'')
               then
               begin
                    FSParametresAvances.RBPublicationChaqueSemaine.Checked:=true;
                    FSParametresAvances.EditJourPublication.Text:=FSParametresAvances.TableauListePublicationReseauxProgrammer.Cells[2,FSParametresAvances.TableauListePublicationReseauxProgrammer.Row];
                    FSParametresAvances.EditHeurePublicationSemaine.Text:=FSParametresAvances.TableauListePublicationReseauxProgrammer.Cells[3,FSParametresAvances.TableauListePublicationReseauxProgrammer.Row];

                    FSParametresAvances.EditHeurePublicationJour.Text:='';

                    FSParametresAvances.RBPublicationChaqueSemaine.SetFocus;
               end
               else
               begin
                    FSParametresAvances.RBAucunePublicationProgrammer.Checked:=true;
                    FSParametresAvances.EditJourPublication.Text:='';
                    FSParametresAvances.EditHeurePublicationSemaine.Text:='';
                    FSParametresAvances.EditHeurePublicationJour.Text:='';

                    FSParametresAvances.RBAucunePublicationProgrammer.SetFocus;
               end;
          end
          else
          begin
               if(FSParametresAvances.TableauListePublicationReseauxProgrammer.Cells[3,FSParametresAvances.TableauListePublicationReseauxProgrammer.Row]<>'')then
               begin
                    FSParametresAvances.RBPublicationChaqueJour.Checked:=true;
                    FSParametresAvances.EditHeurePublicationJour.Text:=FSParametresAvances.TableauListePublicationReseauxProgrammer.Cells[3,FSParametresAvances.TableauListePublicationReseauxProgrammer.Row];

                    FSParametresAvances.RBPublicationChaqueJour.SetFocus;
               end
               else
               begin
                    FSParametresAvances.RBAucunePublicationProgrammer.Checked:=true;
                    FSParametresAvances.EditJourPublication.Text:='';
                    FSParametresAvances.EditHeurePublicationSemaine.Text:='';
                    FSParametresAvances.EditHeurePublicationJour.Text:='';

                    FSParametresAvances.RBAucunePublicationProgrammer.SetFocus;
               end;
          end;

          FSParametresAvances.EditJourPublier.Text:=FSParametresAvances.TableauListePublicationReseauxProgrammer.Cells[4,FSParametresAvances.TableauListePublicationReseauxProgrammer.Row];
          FSParametresAvances.EditHeurePublier.Text:=FSParametresAvances.TableauListePublicationReseauxProgrammer.Cells[5,FSParametresAvances.TableauListePublicationReseauxProgrammer.Row];
     end;
end;

Procedure ListePublicationReseauxProgrammer(TableauPublicationReseauxProgrammer:TStringGrid);
var  R:integer;  OKPublication:boolean;
begin
     TableauPublicationReseauxProgrammer.ColCount:=7;
     TableauPublicationReseauxProgrammer.Cols[0].Text:='N°';
     TableauPublicationReseauxProgrammer.Cols[1].Text:='P°';
     TableauPublicationReseauxProgrammer.Cols[2].Text:='Jour Publication';
     TableauPublicationReseauxProgrammer.Cols[3].Text:='Heure Publication';
     TableauPublicationReseauxProgrammer.Cols[4].Text:='Publié le';
     TableauPublicationReseauxProgrammer.Cols[5].Text:='Publié à';
     TableauPublicationReseauxProgrammer.Cols[6].Text:='Notification';

     TableauPublicationReseauxProgrammer.RowCount:=2;
     TableauPublicationReseauxProgrammer.Rows[1].Text:='';

     OpenFParc(RParc);
     ChPublicationReseauxProgrammer:=RParc.Parcours+'\'+Exercice+'FPublicationReseauxProgrammer';
     assignfile(FPublicationReseauxProgrammer,ChPublicationReseauxProgrammer);
     if FileExists(ChPublicationReseauxProgrammer)then
     Reset(FPublicationReseauxProgrammer)
     else Rewrite(FPublicationReseauxProgrammer);
     Seek(FPublicationReseauxProgrammer,0);
     R:=0;
     while not eof(FPublicationReseauxProgrammer)do
     begin
          read(FPublicationReseauxProgrammer,RPublicationReseauxProgrammer);

          OKPublication:=true;

          if(OKPublication=true)then
          begin
               R:=R+1;
               TableauPublicationReseauxProgrammer.Rows[R].Text:=inttostr(R);
               TableauPublicationReseauxProgrammer.Cells[1,R]:=inttostr(RPublicationReseauxProgrammer.PositionPublication);
               TableauPublicationReseauxProgrammer.Cells[2,R]:=RPublicationReseauxProgrammer.JourPublication;
               TableauPublicationReseauxProgrammer.Cells[3,R]:=RPublicationReseauxProgrammer.HeurePublication;
               TableauPublicationReseauxProgrammer.Cells[4,R]:=RPublicationReseauxProgrammer.JourPublier;
               TableauPublicationReseauxProgrammer.Cells[5,R]:=RPublicationReseauxProgrammer.HeurePublier;

               if(RPublicationReseauxProgrammer.JourPublication='')and(RPublicationReseauxProgrammer.HeurePublication<>'')
               then TableauPublicationReseauxProgrammer.Cells[6,R]:='Publication Programmé chaque jour à '+RPublicationReseauxProgrammer.HeurePublication;

               if(RPublicationReseauxProgrammer.JourPublication<>'')and(RPublicationReseauxProgrammer.HeurePublication<>'')
               then TableauPublicationReseauxProgrammer.Cells[6,R]:='Publication Programmé chaque '+RPublicationReseauxProgrammer.JourPublication+' à '+RPublicationReseauxProgrammer.HeurePublication;

               if(RPublicationReseauxProgrammer.JourPublication='')and(RPublicationReseauxProgrammer.HeurePublication='')
               then TableauPublicationReseauxProgrammer.Cells[6,R]:='Aucune Publication Programmé !';
          end;
     end;
     CloseFile(FPublicationReseauxProgrammer);

     if(R>0)then TableauPublicationReseauxProgrammer.RowCount:=R+1
            else TableauPublicationReseauxProgrammer.RowCount:=2;

     AjusterColWidth(TableauPublicationReseauxProgrammer,'','');
end;


procedure TFSParametresAvances.TableauListePublicationReseauxProgrammerClick(
  Sender: TObject);
begin
     FSParametresAvances.AfficheOperationPublicationReseauxProgrammer.Visible:=false;
     LancementPublicationReseauxProgrammer(FSMenuPrincipal.EditJourCaption.Text,FSMenuPrincipal.EditHeureCaption.Text,FSParametresAvances.InfoPublicationReseauxProgrammer);
end;

procedure TFSParametresAvances.EditJourPublicationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditHeurePublicationSemaine.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditHeurePublicationJourKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.BitOperationPublicationReseaux.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditHeurePublicationSemaineKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.BitOperationPublicationReseaux.SetFocus;
     end;
end;

procedure TFSParametresAvances.RBPublicationChaqueJourKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditHeurePublicationJour.SetFocus;
     end;
end;

procedure TFSParametresAvances.RBPublicationChaqueSemaineKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditJourPublication.SetFocus;
     end;
end;

procedure TFSParametresAvances.RBAucunePublicationProgrammerKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.AfficheOperationPublicationReseauxProgrammer.Visible:=false;
          FSParametresAvances.TableauListePublicationReseauxProgrammer.SetFocus;
     end;
end;

procedure TFSParametresAvances.RBInclureValeurSousReseauxPrecedentePeriodeClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBAppliqueEnregistrementParametresReseaux.Checked=false)then Exit;

     FSParametresAvances.InfoExercicePrecedent.Text:='';
     FSParametresAvances.InfoExercicePrecedent.Lines.Add('');

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     Reset(FActiverPublicationReseaux)
     else Rewrite(FActiverPublicationReseaux);
     Seek(FActiverPublicationReseaux,0);
     Truncate(FActiverPublicationReseaux);
     RActiverPublicationReseaux.TravauxConnexionReseaux:=FSParametresAvances.RBTravauxConnexionReseaux.Checked;
     RActiverPublicationReseaux.ActiverPublicationReseaux:=FSParametresAvances.RBActiverPublicationReseaux.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedentePeriode:=FSParametresAvances.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedenteExercice:=FSParametresAvances.RBInclureValeurSousReseauxPrecedenteExercice.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationEntrante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationEntrante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationSortante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationSortante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourLectureSousReseaux:=FSParametresAvances.RBUliliseExerciceLocalPourLectureSousReseaux.Checked;
     Seek(FActiverPublicationReseaux,0);
     write(FActiverPublicationReseaux,RActiverPublicationReseaux);
     CloseFile(FActiverPublicationReseaux);
end;

procedure TFSParametresAvances.RBInclureValeurSousReseauxPrecedenteExerciceClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBAppliqueEnregistrementParametresReseaux.Checked=false)then Exit;

     FSParametresAvances.InfoExercicePrecedent.Text:='';
     FSParametresAvances.InfoExercicePrecedent.Lines.Add('');

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     Reset(FActiverPublicationReseaux)
     else Rewrite(FActiverPublicationReseaux);
     Seek(FActiverPublicationReseaux,0);
     Truncate(FActiverPublicationReseaux);
     RActiverPublicationReseaux.TravauxConnexionReseaux:=FSParametresAvances.RBTravauxConnexionReseaux.Checked;
     RActiverPublicationReseaux.ActiverPublicationReseaux:=FSParametresAvances.RBActiverPublicationReseaux.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedentePeriode:=FSParametresAvances.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedenteExercice:=FSParametresAvances.RBInclureValeurSousReseauxPrecedenteExercice.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationEntrante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationEntrante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationSortante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationSortante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourLectureSousReseaux:=FSParametresAvances.RBUliliseExerciceLocalPourLectureSousReseaux.Checked;
     Seek(FActiverPublicationReseaux,0);
     write(FActiverPublicationReseaux,RActiverPublicationReseaux);
     CloseFile(FActiverPublicationReseaux);
end;

Function ChercherOrganismePourIdentifiant(IntitulleIdentificateur:string):string;
var  OKIdentifiant:boolean;
begin
     ChercherOrganismePourIdentifiant:='';
     OpenFParc(RParc);
     ChIdentificateurEnttreprise:=RParc.Parcours+'\'+Exercice+'FIdentificateurEnttreprise';
     assignfile(FIdentificateurEnttreprise,ChIdentificateurEnttreprise);
     if FileExists(ChIdentificateurEnttreprise)then
     Reset(FIdentificateurEnttreprise)
     else Rewrite(FIdentificateurEnttreprise);
     Seek(FIdentificateurEnttreprise,0);
     OKIdentifiant:=false;
     while not eof(FIdentificateurEnttreprise)and(OKIdentifiant=false)do
     begin
          read(FIdentificateurEnttreprise,RIdentificateurEnttreprise);
          if(IntitulleIdentificateur=RIdentificateurEnttreprise.IntitulleIdentificateur)then
          begin
               OKIdentifiant:=true;
               ChercherOrganismePourIdentifiant:=RIdentificateurEnttreprise.OrganismeTutelle;
          end;
     end;
     CloseFile(FIdentificateurEnttreprise);
end;

procedure TFSParametresAvances.RBCentreLOGOClick(Sender: TObject);
begin
     ValiderConfigurationAutresParametres;
end;

Function CentraliserLOGO:boolean;
begin
     CentraliserLOGO:=false;

     OpenFParc(RParc);
     ChAutresParametres:=RParc.Parcours+'\'+Exercice+'FAutresParametres';
     assignfile(FAutresParametres,ChAutresParametres);
     if FileExists(ChAutresParametres)then
     begin
          Reset(FAutresParametres);
          Seek(FAutresParametres,0);
          if not eof(FAutresParametres)then
          begin
               read(FAutresParametres,RAutresParametres);
               CentraliserLOGO:=RAutresParametres.CentraliserLOGO;
          end;
          CloseFile(FAutresParametres);
     end;
end;

Function AfficherInfoTiersSupplementaire:boolean;
begin
     AfficherInfoTiersSupplementaire:=false;

     OpenFParc(RParc);
     ChAutresParametres:=RParc.Parcours+'\'+Exercice+'FAutresParametres';
     assignfile(FAutresParametres,ChAutresParametres);
     if FileExists(ChAutresParametres)then
     begin
          Reset(FAutresParametres);
          Seek(FAutresParametres,0);
          if not eof(FAutresParametres)then
          begin
               read(FAutresParametres,RAutresParametres);
               AfficherInfoTiersSupplementaire:=RAutresParametres.AfficherInfoTiersSupplementaire;
          end;
          CloseFile(FAutresParametres);
     end;
end;

procedure TFSParametresAvances.PageAutresParametresShow(Sender: TObject);
var  Couleur1,Couleur2:TColor;
begin
     FSParametresAvances.RBOpererModificationInfoTiersSupp.Checked:=false;

     if(CentraliserLOGO=true)
     then FSParametresAvances.RBCentreLOGO.Checked:=true
     else FSParametresAvances.RBNePasCentreLOGO.Checked:=true;

     if(AfficherInfoTiersSupplementaire=true)
     then FSParametresAvances.RBAfficherInfoTiersSupplementaire.Checked:=true
     else FSParametresAvances.RBNePasAfficherInfoTiersSupplementaire.Checked:=true;

     FSParametresAvances.EditRowMaxPortrait.Text:=inttostr(ValeurConfigurationTableauPrint('Portrait').RowMax);
     FSParametresAvances.EditColMaxPortrait.Text:=inttostr(ValeurConfigurationTableauPrint('Portrait').ColMax);
     FSParametresAvances.EditRowMaxPaysage.Text:=inttostr(ValeurConfigurationTableauPrint('Paysage').RowMax);
     FSParametresAvances.EditColMaxPaysage.Text:=inttostr(ValeurConfigurationTableauPrint('Paysage').ColMax);

     if(ActiverMultiCouleursLignesTableaux(Couleur1,Couleur2)=true)then
     begin
          FSParametresAvances.RBActiverMultiCouleursLignesTableux.Checked:=true;
          FSParametresAvances.Couleur1.Color:=Couleur1;
          FSParametresAvances.Couleur2.Color:=Couleur2;
     end
     else
     begin
          FSParametresAvances.RBdesactiverMultiCouleursLignesTableux.Checked:=true;
          FSParametresAvances.Couleur1.Color:=clBtnFace;
          FSParametresAvances.Couleur2.Color:=clBtnFace;
     end;

     if(FunctAfficherRapportPublicationReseaux=true)
     then FSParametresAvances.RBAfficherRapportPublicationReseaux.Checked:=true
     else FSParametresAvances.RBNepasafficherRapportPublicationReseaux.Checked:=true;

     if(FunctAfficherCodeBarresDansAvis=true)
     then FSParametresAvances.RBAfficherCodeBarreImprimesAvis.Checked:=true
     else FSParametresAvances.RBNepasAfficherCodeBarreImprimesAvis.Checked:=true;

     if(FunctAfficherCodeBarresDansEtatsMouvement=true)
     then FSParametresAvances.RBAfficherCodeBarreImprimesEtatsMouvement.Checked:=true
     else FSParametresAvances.RBNepasAfficherCodeBarreImprimesEtatsMouvement.Checked:=true;

     if(ActiveIconeMenuFermeture)
     then FSParametresAvances.RBIconeFermeture.Checked:=true
     else FSParametresAvances.RBIconeFermeture.Checked:=false;

     if(ActiveIconeMenuMinimisation)
     then FSParametresAvances.RBIconeMinimisation.Checked:=true
     else FSParametresAvances.RBIconeMinimisation.Checked:=false;

     if(ActiveIconeMenuMaximisation)
     then FSParametresAvances.RBIconeMaximisation.Checked:=true
     else FSParametresAvances.RBIconeMaximisation.Checked:=false;

     FSParametresAvances.RBOpererModificationInfoTiersSupp.Checked:=true;

     RemplireTableauApercuCouleur;
end;

procedure TFSParametresAvances.EditRowMaxPortraitExit(Sender: TObject);
begin
     ValiderConfigurationAutresParametres;
end;

Procedure ValiderConfigurationAutresParametres;
begin
     if(FSParametresAvances.RBOpererModificationInfoTiersSupp.Checked=false)then Exit;

     OpenFParc(RParc);
     ChAutresParametres:=RParc.Parcours+'\'+Exercice+'FAutresParametres';
     assignfile(FAutresParametres,ChAutresParametres);
     if FileExists(ChAutresParametres)then
     Reset(FAutresParametres)
     else Rewrite(FAutresParametres);
     Seek(FAutresParametres,0);
     Truncate(FAutresParametres);
     RAutresParametres.CentraliserLOGO:=FSParametresAvances.RBCentreLOGO.Checked;
     RAutresParametres.AfficherInfoTiersSupplementaire:=FSParametresAvances.RBAfficherInfoTiersSupplementaire.Checked;
     RAutresParametres.TableauPrintPortrait.RowMax:=strtointeger(FSParametresAvances.EditRowMaxPortrait.Text);
     RAutresParametres.TableauPrintPortrait.ColMax:=strtointeger(FSParametresAvances.EditColMaxPortrait.Text);
     RAutresParametres.TableauPrintPaysage.RowMax:=strtointeger(FSParametresAvances.EditRowMaxPaysage.Text);
     RAutresParametres.TableauPrintPaysage.ColMax:=strtointeger(FSParametresAvances.EditColMaxPaysage.Text);
     Seek(FAutresParametres,0);
     write(FAutresParametres,RAutresParametres);
     CloseFile(FAutresParametres);

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

Procedure ValiderConfigurationParametreCodeBarres;
begin
     if(FSParametresAvances.RBOpererModificationInfoTiersSupp.Checked=false)then Exit;

     OpenFParc(RParc);
     ChParametreCodeBarres:=RParc.Parcours+'\'+Exercice+'FParametreCodeBarres';
     assignfile(FParametreCodeBarres,ChParametreCodeBarres);
     if FileExists(ChParametreCodeBarres)then
     Reset(FParametreCodeBarres)
     else Rewrite(FParametreCodeBarres);
     Seek(FParametreCodeBarres,0);
     Truncate(FParametreCodeBarres);
     RParametreCodeBarres.AfficherdansAvis:=FSParametresAvances.RBAfficherCodeBarreImprimesAvis.Checked;
     RParametreCodeBarres.AfficherdansEtatMouvement:=FSParametresAvances.RBAfficherCodeBarreImprimesEtatsMouvement.Checked;
     Seek(FParametreCodeBarres,0);
     write(FParametreCodeBarres,RParametreCodeBarres);
     CloseFile(FParametreCodeBarres);
end;

Procedure ValiderConfigurationParametreIconeMenu;
begin
     if(FSParametresAvances.RBOpererModificationInfoTiersSupp.Checked=false)then Exit;

     OpenFParc(RParc);
     ChParametreIconeMenu:=RParc.Parcours+'\'+Exercice+'FParametreIconeMenu';
     assignfile(FParametreIconeMenu,ChParametreIconeMenu);
     if FileExists(ChParametreIconeMenu)then
     Reset(FParametreIconeMenu)
     else Rewrite(FParametreIconeMenu);
     Seek(FParametreIconeMenu,0);
     Truncate(FParametreIconeMenu);
     RParametreIconeMenu.IconeMenuFermeture:=FSParametresAvances.RBIconeFermeture.Checked;
     RParametreIconeMenu.IconeMenuMinimisation:=FSParametresAvances.RBIconeMinimisation.Checked;
     RParametreIconeMenu.IconeMenuMaximisation:=FSParametresAvances.RBIconeMaximisation.Checked;
     Seek(FParametreIconeMenu,0);
     write(FParametreIconeMenu,RParametreIconeMenu);
     CloseFile(FParametreIconeMenu);
end;

function ActiveIconeMenuFermeture:boolean;
begin
     ActiveIconeMenuFermeture:=false;

     OpenFParc(RParc);
     ChParametreIconeMenu:=RParc.Parcours+'\'+Exercice+'FParametreIconeMenu';
     assignfile(FParametreIconeMenu,ChParametreIconeMenu);
     if FileExists(ChParametreIconeMenu)then
     begin
          try
          Reset(FParametreIconeMenu);
          Seek(FParametreIconeMenu,0);
          if not eof(FParametreIconeMenu)then
          begin
               read(FParametreIconeMenu,RParametreIconeMenu);
               ActiveIconeMenuFermeture:=RParametreIconeMenu.IconeMenuFermeture;
          end;
          finally
          CloseFile(FParametreIconeMenu);
          end;
     end;
end;

function ActiveIconeMenuMinimisation:boolean;
begin
     ActiveIconeMenuMinimisation:=false;

     OpenFParc(RParc);
     ChParametreIconeMenu:=RParc.Parcours+'\'+Exercice+'FParametreIconeMenu';
     assignfile(FParametreIconeMenu,ChParametreIconeMenu);
     if FileExists(ChParametreIconeMenu)then
     begin
          try
          Reset(FParametreIconeMenu);
          Seek(FParametreIconeMenu,0);
          if not eof(FParametreIconeMenu)then
          begin
               read(FParametreIconeMenu,RParametreIconeMenu);
               ActiveIconeMenuMinimisation:=RParametreIconeMenu.IconeMenuMinimisation;
          end;
          finally
          CloseFile(FParametreIconeMenu);
          end;
     end;
end;

function ActiveIconeMenuMaximisation:boolean;
begin
     ActiveIconeMenuMaximisation:=false;

     OpenFParc(RParc);
     ChParametreIconeMenu:=RParc.Parcours+'\'+Exercice+'FParametreIconeMenu';
     assignfile(FParametreIconeMenu,ChParametreIconeMenu);
     if FileExists(ChParametreIconeMenu)then
     begin
          try
          Reset(FParametreIconeMenu);
          Seek(FParametreIconeMenu,0);
          if not eof(FParametreIconeMenu)then
          begin
               read(FParametreIconeMenu,RParametreIconeMenu);
               ActiveIconeMenuMaximisation:=RParametreIconeMenu.IconeMenuMaximisation;
          end;
          finally
          CloseFile(FParametreIconeMenu);
          end;
     end;
end;

procedure TFSParametresAvances.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
     ValiderConfigurationAutresParametres;
end;

procedure TFSParametresAvances.BitBtn5Click(Sender: TObject);
begin
     FSParametresAvances.EditRowMaxPortrait.Text:='39';
     FSParametresAvances.EditColMaxPortrait.Text:='22';
     FSParametresAvances.EditRowMaxPaysage.Text:='25';
     FSParametresAvances.EditColMaxPaysage.Text:='44';

     ValiderConfigurationAutresParametres;
end;

Procedure EnregistrementMiseAJourBusinessProces;
begin
     OpenFParc(RParc);
     ChMiseAJourBusinessProces:=RParc.Parcours+'\'+Exercice+'FMiseAJourBusinessProces';
     assignfile(FMiseAJourBusinessProces,ChMiseAJourBusinessProces);
     if FileExists(ChMiseAJourBusinessProces)then
     Reset(FMiseAJourBusinessProces)
     else Rewrite(FMiseAJourBusinessProces);
     Seek(FMiseAJourBusinessProces,0);
     Truncate(FMiseAJourBusinessProces);
     RMiseAJourBusinessProces.OKChargementAdresseMAJBusinessProcesReseaux:=FSParametresAvances.OKChargementAdresseMAJBusinessProcesReseaux.Checked;
     RMiseAJourBusinessProces.AdresseMAJBusinessProces:=FSParametresAvances.EditAdresseMiseAJourBusinessProces.Text;
     Seek(FMiseAJourBusinessProces,0);
     write(FMiseAJourBusinessProces,RMiseAJourBusinessProces);
     CloseFile(FMiseAJourBusinessProces);
end;

Function ProcAdresseMiseAJourBusinessProces:string;
begin
     ProcAdresseMiseAJourBusinessProces:='';

     OpenFParc(RParc);
     ChMiseAJourBusinessProces:=RParc.Parcours+'\'+Exercice+'FMiseAJourBusinessProces';
     assignfile(FMiseAJourBusinessProces,ChMiseAJourBusinessProces);
     if FileExists(ChMiseAJourBusinessProces)then
     begin
          Reset(FMiseAJourBusinessProces);
          Seek(FMiseAJourBusinessProces,0);
          if not eof(FMiseAJourBusinessProces)then
          begin
               read(FMiseAJourBusinessProces,RMiseAJourBusinessProces);
               ProcAdresseMiseAJourBusinessProces:=RMiseAJourBusinessProces.AdresseMAJBusinessProces;
          end;
    CloseFile(FMiseAJourBusinessProces);
    end;
end;

Function ProcOKChargementAdresseMAJBusinessProcesReseaux:Boolean;
begin
     ProcOKChargementAdresseMAJBusinessProcesReseaux:=false;

     OpenFParc(RParc);
     ChMiseAJourBusinessProces:=RParc.Parcours+'\'+Exercice+'FMiseAJourBusinessProces';
     assignfile(FMiseAJourBusinessProces,ChMiseAJourBusinessProces);
     if FileExists(ChMiseAJourBusinessProces)then
     begin
          Reset(FMiseAJourBusinessProces);
          Seek(FMiseAJourBusinessProces,0);
          if not eof(FMiseAJourBusinessProces)then
          begin
               read(FMiseAJourBusinessProces,RMiseAJourBusinessProces);
               ProcOKChargementAdresseMAJBusinessProcesReseaux:=RMiseAJourBusinessProces.OKChargementAdresseMAJBusinessProcesReseaux;
          end;
    CloseFile(FMiseAJourBusinessProces);
    end;
end;

Procedure EnregistrementParametreMail;
begin
     OpenFParc(RParc);
     ChParametresMail:=RParc.Parcours+'\'+Exercice+'FParametresMail';
     assignfile(FParametresMail,ChParametresMail);
     if FileExists(ChParametresMail)then
     Reset(FParametresMail)
     else Rewrite(FParametresMail);
     Seek(FParametresMail,0);
     Truncate(FParametresMail);
     RParametresMail.AdresseApplicationMail:=FSParametresAvances.EditAdresseApplicationMail.Text;
     RParametresMail.AdresseFichierParametresMail:=FSParametresAvances.EditAdresseFichierParametresMail.Text;
     Seek(FParametresMail,0);
     write(FParametresMail,RParametresMail);
     CloseFile(FParametresMail);
end;

Function ProcAdresseApplicationMail:string;
begin
     ProcAdresseApplicationMail:='';

     OpenFParc(RParc);
     ChParametresMail:=RParc.Parcours+'\'+Exercice+'FParametresMail';
     assignfile(FParametresMail,ChParametresMail);
     if FileExists(ChParametresMail)then
     begin
          Reset(FParametresMail);
          Seek(FParametresMail,0);
          if not eof(FParametresMail)then
          begin
               read(FParametresMail,RParametresMail);
               ProcAdresseApplicationMail:=RParametresMail.AdresseApplicationMail;
          end;
    CloseFile(FParametresMail);
    end;
end;

Function ProcAdresseFichierParametresMail:string;
begin
     ProcAdresseFichierParametresMail:='';

     OpenFParc(RParc);
     ChParametresMail:=RParc.Parcours+'\'+Exercice+'FParametresMail';
     assignfile(FParametresMail,ChParametresMail);
     if FileExists(ChParametresMail)then
     begin
          Reset(FParametresMail);
          Seek(FParametresMail,0);
          if not eof(FParametresMail)then
          begin
               read(FParametresMail,RParametresMail);
               ProcAdresseFichierParametresMail:=RParametresMail.AdresseFichierParametresMail;
          end;
    CloseFile(FParametresMail);
    end;
end;

procedure TFSParametresAvances.BitBtn6Click(Sender: TObject);
begin
     FSParametresAvances.AfficheAdresseMAJAutres.Visible:=false;
     FSParametresAvances.TableauAdresseDossierPartageReseaux.Visible:=true;
     ListeAdresseDossierPartageReseaux(FSParametresAvances.TableauAdresseDossierPartageReseaux,false,false,True);
end;

procedure TFSParametresAvances.TableauAdresseDossierPartageReseauxKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditAdresseMiseAJourBusinessProces.Text:=FSParametresAvances.TableauAdresseDossierPartageReseaux.Cells[3,FSParametresAvances.TableauAdresseDossierPartageReseaux.Row];
          FSParametresAvances.OKChargementAdresseMAJBusinessProcesReseaux.Checked:=true;

          EnregistrementMiseAJourBusinessProces;
          FSParametresAvances.TableauAdresseDossierPartageReseaux.Visible:=false;
     end;
end;

procedure TFSParametresAvances.BitBtn8Click(Sender: TObject);
begin
     FSParametresAvances.TableauAdresseDossierPartageReseaux.Visible:=false;
     FSParametresAvances.AfficheAdresseMAJAutres.Visible:=true;
     FSParametresAvances.EditDonneurOrdre.Text:='MiseAJour';
end;

procedure TFSParametresAvances.BitBtn9Click(Sender: TObject);
begin
     if(FSParametresAvances.EditDonneurOrdre.Text='MiseAJour')then
     begin
          FSParametresAvances.EditAdresseMiseAJourBusinessProces.Text:=FSParametresAvances.EditSource.Text;
          FSParametresAvances.OKChargementAdresseMAJBusinessProcesReseaux.Checked:=false;

          EnregistrementMiseAJourBusinessProces;
     end;

     if(FSParametresAvances.EditDonneurOrdre.Text='ApplicationMail')then
     begin
          FSParametresAvances.EditAdresseApplicationMail.Text:=FSParametresAvances.EditSource.Text;
          EnregistrementParametreMail;
     end;

     if(FSParametresAvances.EditDonneurOrdre.Text='ParametresMail')then
     begin
          FSParametresAvances.EditAdresseFichierParametresMail.Text:=FSParametresAvances.EditSource.Text;
          EnregistrementParametreMail;
     end;

     FSParametresAvances.AfficheAdresseMAJAutres.Visible:=false;
end;

procedure TFSParametresAvances.ListeSourceMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     FSParametresAvances.EditSource.Text:=FSParametresAvances.ListeSource.Path;
end;

procedure TFSParametresAvances.BitBtn10Click(Sender: TObject);
begin
     FSParametresAvances.AfficheAdresseMAJAutres.Visible:=false;
     FSParametresAvances.TableauAdresseDossierPartageReseaux.Visible:=false;
     FSParametresAvances.EditAdresseMiseAJourBusinessProces.Text:='';
     FSParametresAvances.OKChargementAdresseMAJBusinessProcesReseaux.Checked:=false;

     EnregistrementMiseAJourBusinessProces;
end;

Procedure ValiderMultiCouleursLignesTableaux;
begin
     if(FSParametresAvances.RBOpererModificationInfoTiersSupp.Checked=false)then Exit;

     OpenFParc(RParc);
     ChMultiCouleursLignesTableaux:=RParc.Parcours+'\'+'FMultiCouleursLignesTableaux';
     assignfile(FMultiCouleursLignesTableaux,ChMultiCouleursLignesTableaux);
     if FileExists(ChMultiCouleursLignesTableaux)then
     Reset(FMultiCouleursLignesTableaux)
     else Rewrite(FMultiCouleursLignesTableaux);
     Seek(FMultiCouleursLignesTableaux,0);
     Truncate(FMultiCouleursLignesTableaux);
     RMultiCouleursLignesTableaux.ActiverMultiCouleursLignesTableaux:=FSParametresAvances.RBActiverMultiCouleursLignesTableux.Checked;
     RMultiCouleursLignesTableaux.Couleur1:=FSParametresAvances.Couleur1.Color;
     RMultiCouleursLignesTableaux.Couleur2:=FSParametresAvances.Couleur2.Color;
     RMultiCouleursLignesTableaux.RB1:=false;
     RMultiCouleursLignesTableaux.RB2:=false;
     RMultiCouleursLignesTableaux.RB3:=false;
     RMultiCouleursLignesTableaux.RB4:=false;
     Seek(FMultiCouleursLignesTableaux,0);
     write(FMultiCouleursLignesTableaux,RMultiCouleursLignesTableaux);
     CloseFile(FMultiCouleursLignesTableaux);

     if(FSParametresAvances.TableauApercuCouleur.Visible=true)then
     begin
          FSParametresAvances.TableauApercuCouleur.Visible:=false;
          FSParametresAvances.TableauApercuCouleur.Visible:=true;
     end;
end;

Function ActiverMultiCouleursLignesTableaux(var Couleur1,Couleur2:TColor):boolean;
begin
     ActiverMultiCouleursLignesTableaux:=false;

     OpenFParc(RParc);
     ChMultiCouleursLignesTableaux:=RParc.Parcours+'\'+'FMultiCouleursLignesTableaux';
     assignfile(FMultiCouleursLignesTableaux,ChMultiCouleursLignesTableaux);
     if FileExists(ChMultiCouleursLignesTableaux)then
     begin
          Reset(FMultiCouleursLignesTableaux);
          Seek(FMultiCouleursLignesTableaux,0);
          if not eof(FMultiCouleursLignesTableaux)then
          begin
               read(FMultiCouleursLignesTableaux,RMultiCouleursLignesTableaux);
               ActiverMultiCouleursLignesTableaux:=RMultiCouleursLignesTableaux.ActiverMultiCouleursLignesTableaux;
               Couleur1:=RMultiCouleursLignesTableaux.Couleur1;
               Couleur2:=RMultiCouleursLignesTableaux.Couleur2;
          end;
     CloseFile(FMultiCouleursLignesTableaux);
     end;
end;

procedure TFSParametresAvances.RBActiverMultiCouleursLignesTableuxClick(
  Sender: TObject);
begin
     ValiderMultiCouleursLignesTableaux;
end;

procedure TFSParametresAvances.RBdesactiverMultiCouleursLignesTableuxClick(
  Sender: TObject);
begin
     ValiderMultiCouleursLignesTableaux;
end;

procedure TFSParametresAvances.Couleur1DblClick(Sender: TObject);
begin
     FSParametresAvances.ChoisCouleur.Color:=FSParametresAvances.Couleur1.Color;
     if(FSParametresAvances.ChoisCouleur.Execute)then
     begin
          FSParametresAvances.Couleur1.Color:=FSParametresAvances.ChoisCouleur.Color;
          ValiderMultiCouleursLignesTableaux;
     end;
end;

procedure TFSParametresAvances.Couleur2DblClick(Sender: TObject);
begin
     FSParametresAvances.ChoisCouleur.Color:=FSParametresAvances.Couleur2.Color;
     if(FSParametresAvances.ChoisCouleur.Execute)then
     begin
          FSParametresAvances.Couleur2.Color:=FSParametresAvances.ChoisCouleur.Color;
          ValiderMultiCouleursLignesTableaux;
     end;
end;

procedure TFSParametresAvances.BitBtn11Click(Sender: TObject);
begin
     FSParametresAvances.Couleur1.Color:=$00FFE0FF;
     FSParametresAvances.Couleur2.Color:=$00FFFFE0;

     ValiderMultiCouleursLignesTableaux;
end;

procedure TFSParametresAvances.BitBtn12Click(Sender: TObject);
begin
     if(FSParametresAvances.TableauApercuCouleur.Visible=true)
     then FSParametresAvances.TableauApercuCouleur.Visible:=false
     else
     begin
          FSParametresAvances.TableauApercuCouleur.Visible:=true;
     end;
end;

procedure TFSParametresAvances.TableauApercuCouleurDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

Procedure RemplireTableauApercuCouleur;
var R,C:integer;
begin
     FSParametresAvances.TableauApercuCouleur.ColCount:=11;
     FSParametresAvances.TableauApercuCouleur.RowCount:=20;

     for C:=0 to FSParametresAvances.TableauApercuCouleur.ColCount-1 do
     begin
          for R:=0 to FSParametresAvances.TableauApercuCouleur.RowCount-1 do
          begin
               if(C=0)and(R=0)then FSParametresAvances.TableauApercuCouleur.Cells[C,R]:='Ligne/Colonne';
               if(R=0)then FSParametresAvances.TableauApercuCouleur.Cells[C,R]:='Colonne '+inttostr(C);
               if(C=0)then FSParametresAvances.TableauApercuCouleur.Cells[C,R]:='Ligne '+inttostr(R);
               if(C<>0)and(R<>0)then FSParametresAvances.TableauApercuCouleur.Cells[C,R]:='Data '+inttostr(R)+'/'+inttostr(C);
          end;
     end;

     AjusterColWidth(FSParametresAvances.TableauApercuCouleur,'','');
end;

procedure TFSParametresAvances.RBUtiliserExerciceLocalePourPublicationEntranteClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBAppliqueEnregistrementParametresReseaux.Checked=false)then Exit;

     FSParametresAvances.InfoExercicePublication.Text:='';
     FSParametresAvances.InfoExercicePublication.Lines.Add('');

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     Reset(FActiverPublicationReseaux)
     else Rewrite(FActiverPublicationReseaux);
     Seek(FActiverPublicationReseaux,0);
     Truncate(FActiverPublicationReseaux);
     RActiverPublicationReseaux.TravauxConnexionReseaux:=FSParametresAvances.RBTravauxConnexionReseaux.Checked;
     RActiverPublicationReseaux.ActiverPublicationReseaux:=FSParametresAvances.RBActiverPublicationReseaux.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedentePeriode:=FSParametresAvances.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedenteExercice:=FSParametresAvances.RBInclureValeurSousReseauxPrecedenteExercice.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationEntrante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationEntrante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationSortante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationSortante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourLectureSousReseaux:=FSParametresAvances.RBUliliseExerciceLocalPourLectureSousReseaux.Checked;
     Seek(FActiverPublicationReseaux,0);
     write(FActiverPublicationReseaux,RActiverPublicationReseaux);
     CloseFile(FActiverPublicationReseaux);
end;

procedure TFSParametresAvances.RBUtiliserExerciceLocalePourPublicationSortanteClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBAppliqueEnregistrementParametresReseaux.Checked=false)then Exit;

     FSParametresAvances.InfoExercicePublication.Text:='';
     FSParametresAvances.InfoExercicePublication.Lines.Add('');

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     Reset(FActiverPublicationReseaux)
     else Rewrite(FActiverPublicationReseaux);
     Seek(FActiverPublicationReseaux,0);
     Truncate(FActiverPublicationReseaux);
     RActiverPublicationReseaux.TravauxConnexionReseaux:=FSParametresAvances.RBTravauxConnexionReseaux.Checked;
     RActiverPublicationReseaux.ActiverPublicationReseaux:=FSParametresAvances.RBActiverPublicationReseaux.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedentePeriode:=FSParametresAvances.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedenteExercice:=FSParametresAvances.RBInclureValeurSousReseauxPrecedenteExercice.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationEntrante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationEntrante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationSortante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationSortante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourLectureSousReseaux:=FSParametresAvances.RBUliliseExerciceLocalPourLectureSousReseaux.Checked;
     Seek(FActiverPublicationReseaux,0);
     write(FActiverPublicationReseaux,RActiverPublicationReseaux);
     CloseFile(FActiverPublicationReseaux);
end;

procedure TFSParametresAvances.RBAfficherRapportPublicationReseauxClick(
  Sender: TObject);
begin
     ValiderConfigurationAffichageRapportPublication;
end;

Procedure ValiderConfigurationAffichageRapportPublication;
begin
     if(FSParametresAvances.RBOpererModificationInfoTiersSupp.Checked=false)then Exit;

     OpenFParc(RParc);
     ChAffichagePublication:=RParc.Parcours+'\'+Exercice+'FAffichagePublication';
     assignfile(FAffichagePublication,ChAffichagePublication);
     if FileExists(ChAffichagePublication)then
     Reset(FAffichagePublication)
     else Rewrite(FAffichagePublication);
     Seek(FAffichagePublication,0);
     Truncate(FAffichagePublication);
     RAffichagePublication.AfficherRapportPublicationReseaux:=FSParametresAvances.RBAfficherRapportPublicationReseaux.Checked;
     RAffichagePublication.Autres1:=false;
     RAffichagePublication.Autres2:=false;
     RAffichagePublication.Autres3:=false;
     RAffichagePublication.Autres4:=false;
     RAffichagePublication.Autres5:=false;
     Seek(FAffichagePublication,0);
     write(FAffichagePublication,RAffichagePublication);
     CloseFile(FAffichagePublication);
end;

Function FunctAfficherRapportPublicationReseaux:boolean;
var   OKAfficherRapportPublicationReseaux:boolean;
begin
     OpenFParc(RParc);
     ChAffichagePublication:=RParc.Parcours+'\'+Exercice+'FAffichagePublication';
     assignfile(FAffichagePublication,ChAffichagePublication);
     if FileExists(ChAffichagePublication)then
     Reset(FAffichagePublication)
     else Rewrite(FAffichagePublication);
     Seek(FAffichagePublication,0);
     OKAfficherRapportPublicationReseaux:=false;
     if not eof(FAffichagePublication)then
     begin
          read(FAffichagePublication,RAffichagePublication);
          OKAfficherRapportPublicationReseaux:=RAffichagePublication.AfficherRapportPublicationReseaux;
     end;
     CloseFile(FAffichagePublication);

     FunctAfficherRapportPublicationReseaux:=OKAfficherRapportPublicationReseaux;
end;

Function FunctAfficherCodeBarresDansAvis:boolean;
var   OKAfficherCodeBarresDansAvis:boolean;
begin
     OpenFParc(RParc);
     ChParametreCodeBarres:=RParc.Parcours+'\'+Exercice+'FParametreCodeBarres';
     assignfile(FParametreCodeBarres,ChParametreCodeBarres);
     if FileExists(ChParametreCodeBarres)then
     Reset(FParametreCodeBarres)
     else Rewrite(FParametreCodeBarres);
     Seek(FParametreCodeBarres,0);
     OKAfficherCodeBarresDansAvis:=false;
     if not eof(FParametreCodeBarres)then
     begin
          read(FParametreCodeBarres,RParametreCodeBarres);
          OKAfficherCodeBarresDansAvis:=RParametreCodeBarres.AfficherdansAvis;
     end;
     CloseFile(FParametreCodeBarres);

     FunctAfficherCodeBarresDansAvis:=OKAfficherCodeBarresDansAvis;
end;

Function FunctAfficherCodeBarresDansEtatsMouvement:boolean;
var   OKAfficherCodeBarresDansEtatsMouvement:boolean;
begin
     OpenFParc(RParc);
     ChParametreCodeBarres:=RParc.Parcours+'\'+Exercice+'FParametreCodeBarres';
     assignfile(FParametreCodeBarres,ChParametreCodeBarres);
     if FileExists(ChParametreCodeBarres)then
     Reset(FParametreCodeBarres)
     else Rewrite(FParametreCodeBarres);
     Seek(FParametreCodeBarres,0);
     OKAfficherCodeBarresDansEtatsMouvement:=false;
     if not eof(FParametreCodeBarres)then
     begin
          read(FParametreCodeBarres,RParametreCodeBarres);
          OKAfficherCodeBarresDansEtatsMouvement:=RParametreCodeBarres.AfficherdansEtatMouvement;
     end;
     CloseFile(FParametreCodeBarres);

     FunctAfficherCodeBarresDansEtatsMouvement:=OKAfficherCodeBarresDansEtatsMouvement;
end;

procedure TFSParametresAvances.RBUliliseExerciceLocalPourLectureSousReseauxClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBAppliqueEnregistrementParametresReseaux.Checked=false)then Exit;

     FSParametresAvances.InfoExercicePublication.Text:='';
     FSParametresAvances.InfoExercicePublication.Lines.Add('');

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     Reset(FActiverPublicationReseaux)
     else Rewrite(FActiverPublicationReseaux);
     Seek(FActiverPublicationReseaux,0);
     Truncate(FActiverPublicationReseaux);
     RActiverPublicationReseaux.TravauxConnexionReseaux:=FSParametresAvances.RBTravauxConnexionReseaux.Checked;
     RActiverPublicationReseaux.ActiverPublicationReseaux:=FSParametresAvances.RBActiverPublicationReseaux.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedentePeriode:=FSParametresAvances.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedenteExercice:=FSParametresAvances.RBInclureValeurSousReseauxPrecedenteExercice.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationEntrante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationEntrante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationSortante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationSortante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourLectureSousReseaux:=FSParametresAvances.RBUliliseExerciceLocalPourLectureSousReseaux.Checked;
     Seek(FActiverPublicationReseaux,0);
     write(FActiverPublicationReseaux,RActiverPublicationReseaux);
     CloseFile(FActiverPublicationReseaux);
end;

procedure TFSParametresAvances.RBUliliseExercicePubliePourLectureSousReseauxClick(
  Sender: TObject);
begin
     if(FSParametresAvances.RBAppliqueEnregistrementParametresReseaux.Checked=false)then Exit;

     FSParametresAvances.InfoExercicePublication.Text:='';
     FSParametresAvances.InfoExercicePublication.Lines.Add('');

     OpenFParc(RParc);
     ChActiverPublicationReseaux:=RParc.Parcours+'\'+Exercice+'FActiverPublicationReseaux';
     assignfile(FActiverPublicationReseaux,ChActiverPublicationReseaux);
     if FileExists(ChActiverPublicationReseaux)then
     Reset(FActiverPublicationReseaux)
     else Rewrite(FActiverPublicationReseaux);
     Seek(FActiverPublicationReseaux,0);
     Truncate(FActiverPublicationReseaux);
     RActiverPublicationReseaux.TravauxConnexionReseaux:=FSParametresAvances.RBTravauxConnexionReseaux.Checked;
     RActiverPublicationReseaux.ActiverPublicationReseaux:=FSParametresAvances.RBActiverPublicationReseaux.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedentePeriode:=FSParametresAvances.RBInclureValeurSousReseauxPrecedentePeriode.Checked;
     RActiverPublicationReseaux.InclureValeurSousReseauxPrecedenteExercice:=FSParametresAvances.RBInclureValeurSousReseauxPrecedenteExercice.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationEntrante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationEntrante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourPublicationSortante:=FSParametresAvances.RBUtiliserExerciceLocalePourPublicationSortante.Checked;
     RActiverPublicationReseaux.UtiliserExerciceLocalePourLectureSousReseaux:=FSParametresAvances.RBUliliseExerciceLocalPourLectureSousReseaux.Checked;
     Seek(FActiverPublicationReseaux,0);
     write(FActiverPublicationReseaux,RActiverPublicationReseaux);
     CloseFile(FActiverPublicationReseaux);
end;

procedure TFSParametresAvances.RBAfficherCodeBarreImprimesAvisClick(
  Sender: TObject);
begin
     ValiderConfigurationParametreCodeBarres;
end;

procedure TFSParametresAvances.RBAfficherCodeBarreImprimesEtatsMouvementClick(
  Sender: TObject);
begin
     ValiderConfigurationParametreCodeBarres;
end;

procedure TFSParametresAvances.RBNepasAfficherCodeBarreImprimesEtatsMouvementClick(
  Sender: TObject);
begin
     ValiderConfigurationParametreCodeBarres;
end;

procedure TFSParametresAvances.RBIconeFermetureClick(Sender: TObject);
begin
     ValiderConfigurationParametreIconeMenu;
end;

procedure TFSParametresAvances.RBIconeMinimisationClick(Sender: TObject);
begin
     ValiderConfigurationParametreIconeMenu;
end;

procedure TFSParametresAvances.RBIconeMaximisationClick(Sender: TObject);
begin
     ValiderConfigurationParametreIconeMenu;
end;

procedure TFSParametresAvances.BitBtn14Click(Sender: TObject);
begin
     FSParametresAvances.AfficheAdresseMAJAutres.Visible:=true;
     FSParametresAvances.EditDonneurOrdre.Text:='ApplicationMail';

end;

procedure TFSParametresAvances.BitBtn13Click(Sender: TObject);
begin
     FSParametresAvances.AfficheAdresseMAJAutres.Visible:=false;
     FSParametresAvances.TableauAdresseDossierPartageReseaux.Visible:=false;
     FSParametresAvances.EditAdresseApplicationMail.Text:='';

     EnregistrementParametreMail;
end;

procedure TFSParametresAvances.BitBtn16Click(Sender: TObject);
begin
     FSParametresAvances.AfficheAdresseMAJAutres.Visible:=true;
     FSParametresAvances.EditDonneurOrdre.Text:='ParametresMail';
end;

procedure TFSParametresAvances.BitBtn15Click(Sender: TObject);
begin
     FSParametresAvances.AfficheAdresseMAJAutres.Visible:=false;
     FSParametresAvances.TableauAdresseDossierPartageReseaux.Visible:=false;
     FSParametresAvances.EditAdresseFichierParametresMail.Text:='';

     EnregistrementParametreMail;
end;

procedure TFSParametresAvances.DetailSourceMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     if(FSParametresAvances.DetailSource.Items.Count>0)then
     begin
          FSParametresAvances.EditSource.Text:=FSParametresAvances.DetailSource.Folders[FSParametresAvances.DetailSource.ItemIndex].PathName;
     end
     else FSParametresAvances.EditSource.Text:='';
end;

procedure TFSParametresAvances.TableauRubriquesSousMenuClick(
  Sender: TObject);
begin
     FSParametresAvances.AfficherTableauSousMenu.Visible:=false;
     FSParametresAvances.AfficherTableauRubriquesSousMenu.Visible:=false;
end;

Procedure ImporterDataSousMenu(TableauRubriquesMenu:TStringGrid; EditOrdreMenu:TEdit; Indice0,Indice1,Indice2,Indice3,Indice4,Indice5:string);
var  i,R,C:integer;  NotRow,NotCol:string;
begin
     if(EditOrdreMenu.Text='4')then
     begin
          if(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[strtointeger(Indice3)].Items[strtointeger(Indice4)].Count>0)then
          begin
               TableauRubriquesMenu.RowCount:=2;
               TableauRubriquesMenu.Rows[1].Text:='';
               R:=0;
               for i:=0 to FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[strtointeger(Indice3)].Items[strtointeger(Indice4)].Count-1 do
               begin
                    if(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[strtointeger(Indice3)].Items[strtointeger(Indice4)].Items[i].Caption<>'-')
                    and(ActivationRubriquesSousMenu(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[strtointeger(Indice3)].Items[strtointeger(Indice4)].Items[i].Name)=true)
                    then
                    begin
                         R:=R+1;
                         TableauRubriquesMenu.Cells[0,R]:=inttostr(R);
                         TableauRubriquesMenu.Cells[1,R]:=Indice0;
                         TableauRubriquesMenu.Cells[2,R]:=Indice1;
                         TableauRubriquesMenu.Cells[3,R]:=Indice2;
                         TableauRubriquesMenu.Cells[4,R]:=Indice3;
                         TableauRubriquesMenu.Cells[5,R]:=Indice4;
                         TableauRubriquesMenu.Cells[6,R]:=inttostr(i);
                         TableauRubriquesMenu.Cells[7,R]:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[strtointeger(Indice3)].Items[strtointeger(Indice4)].Items[i].Name;
                         TableauRubriquesMenu.Cells[8,R]:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[strtointeger(Indice3)].Items[strtointeger(Indice4)].Items[i].Caption;
                         TableauRubriquesMenu.Cells[9,R]:=booleantostr(ActivationRubriquesSousMenu(TableauRubriquesMenu.Cells[7,R]));
                    end;
               end;
               if(R>0)then TableauRubriquesMenu.RowCount:=R+1
               else TableauRubriquesMenu.RowCount:=2;

               EditOrdreMenu.Text:='5';
          end
          else showmessage(TableauRubriquesMenu.Cells[8,TableauRubriquesMenu.Row]+' sans sous menu !');
     end
     else
     if(EditOrdreMenu.Text='3')then
     begin
          if(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[strtointeger(Indice3)].Count>0)then
          begin
               TableauRubriquesMenu.RowCount:=2;
               TableauRubriquesMenu.Rows[1].Text:='';
               R:=0;
               for i:=0 to FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[strtointeger(Indice3)].Count-1 do
               begin
                    if(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[strtointeger(Indice3)].Items[i].Caption<>'-')
                    and(ActivationRubriquesSousMenu(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[strtointeger(Indice3)].Items[i].Name)=true)
                    then
                    begin
                         R:=R+1;
                         TableauRubriquesMenu.Cells[0,R]:=inttostr(R);
                         TableauRubriquesMenu.Cells[1,R]:=Indice0;
                         TableauRubriquesMenu.Cells[2,R]:=Indice1;
                         TableauRubriquesMenu.Cells[3,R]:=Indice2;
                         TableauRubriquesMenu.Cells[4,R]:=Indice3;
                         TableauRubriquesMenu.Cells[5,R]:=inttostr(i);
                         TableauRubriquesMenu.Cells[6,R]:=Indice5;
                         TableauRubriquesMenu.Cells[7,R]:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[strtointeger(Indice3)].Items[i].Name;
                         TableauRubriquesMenu.Cells[8,R]:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[strtointeger(Indice3)].Items[i].Caption;
                         TableauRubriquesMenu.Cells[9,R]:=booleantostr(ActivationRubriquesSousMenu(TableauRubriquesMenu.Cells[7,R]));
                    end;
               end;
               if(R>0)then TableauRubriquesMenu.RowCount:=R+1
               else TableauRubriquesMenu.RowCount:=2;

               EditOrdreMenu.Text:='4';
          end
          else showmessage(TableauRubriquesMenu.Cells[8,TableauRubriquesMenu.Row]+' sans sous menu !');
     end
     else
     if(EditOrdreMenu.Text='2')then
     begin
          if(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Count>0)then
          begin
               TableauRubriquesMenu.RowCount:=2;
               TableauRubriquesMenu.Rows[1].Text:='';
               R:=0;
               for i:=0 to FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Count-1 do
               begin
                    if(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[i].Caption<>'-')
                    and(ActivationRubriquesSousMenu(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[i].Name)=true)
                    then
                    begin
                         R:=R+1;
                         TableauRubriquesMenu.Cells[0,R]:=inttostr(R);
                         TableauRubriquesMenu.Cells[1,R]:=Indice0;
                         TableauRubriquesMenu.Cells[2,R]:=Indice1;
                         TableauRubriquesMenu.Cells[3,R]:=Indice2;
                         TableauRubriquesMenu.Cells[4,R]:=inttostr(i);
                         TableauRubriquesMenu.Cells[5,R]:=Indice4;
                         TableauRubriquesMenu.Cells[6,R]:=Indice5;
                         TableauRubriquesMenu.Cells[7,R]:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[i].Name;
                         TableauRubriquesMenu.Cells[8,R]:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[strtointeger(Indice2)].Items[i].Caption;
                         TableauRubriquesMenu.Cells[9,R]:=booleantostr(ActivationRubriquesSousMenu(TableauRubriquesMenu.Cells[7,R]));
                    end;
               end;
               if(R>0)then TableauRubriquesMenu.RowCount:=R+1
               else TableauRubriquesMenu.RowCount:=2;

               EditOrdreMenu.Text:='3';
          end
          else showmessage(TableauRubriquesMenu.Cells[8,TableauRubriquesMenu.Row]+' sans sous menu !');
     end
     else
     if(EditOrdreMenu.Text='1')then
     begin
          if(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Count>0)then
          begin
               TableauRubriquesMenu.RowCount:=2;
               TableauRubriquesMenu.Rows[1].Text:='';
               R:=0;
               for i:=0 to FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Count-1 do
               begin
                    if(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[i].Caption<>'-')
                    and(ActivationRubriquesSousMenu(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[i].Name)=true)
                    then
                    begin
                         R:=R+1;
                         TableauRubriquesMenu.Cells[0,R]:=inttostr(R);
                         TableauRubriquesMenu.Cells[1,R]:=Indice0;
                         TableauRubriquesMenu.Cells[2,R]:=Indice1;
                         TableauRubriquesMenu.Cells[3,R]:=inttostr(i);
                         TableauRubriquesMenu.Cells[4,R]:=Indice3;
                         TableauRubriquesMenu.Cells[5,R]:=Indice4;
                         TableauRubriquesMenu.Cells[6,R]:=Indice5;
                         TableauRubriquesMenu.Cells[7,R]:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[i].Name;
                         TableauRubriquesMenu.Cells[8,R]:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[strtointeger(Indice1)].Items[i].Caption;
                         TableauRubriquesMenu.Cells[9,R]:=booleantostr(ActivationRubriquesSousMenu(TableauRubriquesMenu.Cells[7,R]));
                    end;
               end;
               if(R>0)then TableauRubriquesMenu.RowCount:=R+1
               else TableauRubriquesMenu.RowCount:=2;

               EditOrdreMenu.Text:='2';
          end
          else showmessage(TableauRubriquesMenu.Cells[8,TableauRubriquesMenu.Row]+' sans sous menu !');
     end
     else
     if(EditOrdreMenu.Text='0')then
     begin
          if(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Count>0)then
          begin
               TableauRubriquesMenu.RowCount:=2;
               TableauRubriquesMenu.Rows[1].Text:='';
               R:=0;
               for i:=0 to FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Count-1 do
               begin
                    if(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[i].Caption<>'-')
                    and(ActivationRubriquesSousMenu(FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[i].Name)=true)
                    then
                    begin
                         R:=R+1;
                         TableauRubriquesMenu.Cells[0,R]:=inttostr(R);
                         TableauRubriquesMenu.Cells[1,R]:=Indice0;
                         TableauRubriquesMenu.Cells[2,R]:=inttostr(i);
                         TableauRubriquesMenu.Cells[3,R]:=Indice2;
                         TableauRubriquesMenu.Cells[4,R]:=Indice3;
                         TableauRubriquesMenu.Cells[5,R]:=Indice4;
                         TableauRubriquesMenu.Cells[6,R]:=Indice5;
                         TableauRubriquesMenu.Cells[7,R]:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[i].Name;
                         TableauRubriquesMenu.Cells[8,R]:=FSMenuPrincipal.MenuPrincipal.Items[strtointeger(Indice0)].Items[i].Caption;
                         TableauRubriquesMenu.Cells[9,R]:=booleantostr(ActivationRubriquesSousMenu(TableauRubriquesMenu.Cells[7,R]));
                    end;
               end;
               if(R>0)then TableauRubriquesMenu.RowCount:=R+1
               else TableauRubriquesMenu.RowCount:=2;

               EditOrdreMenu.Text:='1';
          end
          else showmessage(TableauRubriquesMenu.Cells[8,TableauRubriquesMenu.Row]+' sans sous menu !');
     end
     else
     if(EditOrdreMenu.Text='-1')then
     begin
          if(FSMenuPrincipal.MenuPrincipal.Items.Count>0)then
          begin
               TableauRubriquesMenu.RowCount:=2;
               TableauRubriquesMenu.Rows[1].Text:='';
               R:=0;
               for i:=0 to FSMenuPrincipal.MenuPrincipal.Items.Count-1 do
               begin
                    if(FSMenuPrincipal.MenuPrincipal.Items[i].Caption<>'-')
                    and(ActivationRubriquesSousMenu(FSMenuPrincipal.MenuPrincipal.Items[i].Name)=true)
                    then
                    begin
                         R:=R+1;
                         TableauRubriquesMenu.Cells[0,R]:=inttostr(R);
                         TableauRubriquesMenu.Cells[1,R]:=inttostr(i);
                         TableauRubriquesMenu.Cells[2,R]:=Indice1;
                         TableauRubriquesMenu.Cells[3,R]:=Indice2;
                         TableauRubriquesMenu.Cells[4,R]:=Indice3;
                         TableauRubriquesMenu.Cells[5,R]:=Indice4;
                         TableauRubriquesMenu.Cells[6,R]:=Indice5;
                         TableauRubriquesMenu.Cells[7,R]:=FSMenuPrincipal.MenuPrincipal.Items[i].Name;
                         TableauRubriquesMenu.Cells[8,R]:=FSMenuPrincipal.MenuPrincipal.Items[i].Caption;
                         TableauRubriquesMenu.Cells[9,R]:=booleantostr(ActivationRubriquesSousMenu(TableauRubriquesMenu.Cells[7,R]));
                    end;
               end;
               if(R>0)then TableauRubriquesMenu.RowCount:=R+1
               else TableauRubriquesMenu.RowCount:=2;

               EditOrdreMenu.Text:='0';
          end
          else showmessage(TableauRubriquesMenu.Cells[8,TableauRubriquesMenu.Row]+' sans sous menu !');
     end;

     NotRow:='';
     NotCol:='1-7';
     for C:=0 to TableauRubriquesMenu.ColCount-1 do if(ExisteNumInTexte(inttostr(C),NotCol))then TableauRubriquesMenu.ColWidths[C]:=0;
     AjusterColWidth(TableauRubriquesMenu,NotRow,NotCol);
end;

procedure TFSParametresAvances.BitBtn19Click(Sender: TObject);
begin
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

     FSParametresAvances.AfficherTableauSousMenu.Visible:=true;
     FSParametresAvances.EditOrdreMenu.Text:='-1';
     FSParametresAvances.EditIndexe0.Text:='';
     FSParametresAvances.EditIndexe1.Text:='';
     FSParametresAvances.EditIndexe2.Text:='';
     FSParametresAvances.EditIndexe3.Text:='';
     FSParametresAvances.EditIndexe4.Text:='';
     FSParametresAvances.EditIndexe5.Text:='';
     ImporterDataSousMenu(FSParametresAvances.TableauSousMenu,FSParametresAvances.EditOrdreMenu,FSParametresAvances.EditIndexe0.Text,FSParametresAvances.EditIndexe1.Text,FSParametresAvances.EditIndexe2.Text,FSParametresAvances.EditIndexe3.Text,FSParametresAvances.EditIndexe4.Text,FSParametresAvances.EditIndexe5.Text);
end;

procedure TFSParametresAvances.TableauSousMenuDblClick(
  Sender: TObject);
begin
     ImporterDataSousMenu(FSParametresAvances.TableauSousMenu,FSParametresAvances.EditOrdreMenu,FSParametresAvances.EditIndexe0.Text,FSParametresAvances.EditIndexe1.Text,FSParametresAvances.EditIndexe2.Text,FSParametresAvances.EditIndexe3.Text,FSParametresAvances.EditIndexe4.Text,FSParametresAvances.EditIndexe5.Text);
end;

procedure TFSParametresAvances.TableauSousMenuClick(Sender: TObject);
begin
     FSParametresAvances.AfficherTableauRubriquesSousMenu.Visible:=false;

     if(FSParametresAvances.EditOrdreMenu.Text='0')then FSParametresAvances.EditIndexe0.Text:=FSParametresAvances.TableauSousMenu.Cells[1,FSParametresAvances.TableauSousMenu.Row];
     if(FSParametresAvances.EditOrdreMenu.Text='1')then FSParametresAvances.EditIndexe1.Text:=FSParametresAvances.TableauSousMenu.Cells[2,FSParametresAvances.TableauSousMenu.Row];
     if(FSParametresAvances.EditOrdreMenu.Text='2')then FSParametresAvances.EditIndexe2.Text:=FSParametresAvances.TableauSousMenu.Cells[3,FSParametresAvances.TableauSousMenu.Row];
     if(FSParametresAvances.EditOrdreMenu.Text='3')then FSParametresAvances.EditIndexe3.Text:=FSParametresAvances.TableauSousMenu.Cells[4,FSParametresAvances.TableauSousMenu.Row];
     if(FSParametresAvances.EditOrdreMenu.Text='4')then FSParametresAvances.EditIndexe4.Text:=FSParametresAvances.TableauSousMenu.Cells[5,FSParametresAvances.TableauSousMenu.Row];
     if(FSParametresAvances.EditOrdreMenu.Text='5')then FSParametresAvances.EditIndexe5.Text:=FSParametresAvances.TableauSousMenu.Cells[6,FSParametresAvances.TableauSousMenu.Row];
end;

procedure TFSParametresAvances.BitBtn21Click(Sender: TObject);
var  OrdreMenu:integer;
begin
     FSParametresAvances.AfficherTableauRubriquesSousMenu.Visible:=false;

     if(strtointeger(FSParametresAvances.EditOrdreMenu.Text)>0)then
     begin
          FSParametresAvances.EditOrdreMenu.Text:=inttostr(strtointeger(FSParametresAvances.EditOrdreMenu.Text)-2);
          OrdreMenu:=strtointeger(FSParametresAvances.EditOrdreMenu.Text);
          if(OrdreMenu<5)then FSParametresAvances.EditIndexe5.Text:='';
          if(OrdreMenu<4)then FSParametresAvances.EditIndexe4.Text:='';
          if(OrdreMenu<3)then FSParametresAvances.EditIndexe3.Text:='';
          if(OrdreMenu<2)then FSParametresAvances.EditIndexe2.Text:='';
          if(OrdreMenu<1)then FSParametresAvances.EditIndexe1.Text:='';
          if(OrdreMenu<0)then FSParametresAvances.EditIndexe0.Text:='';

          ImporterDataSousMenu(FSParametresAvances.TableauSousMenu,FSParametresAvances.EditOrdreMenu,FSParametresAvances.EditIndexe0.Text,FSParametresAvances.EditIndexe1.Text,FSParametresAvances.EditIndexe2.Text,FSParametresAvances.EditIndexe3.Text,FSParametresAvances.EditIndexe4.Text,FSParametresAvances.EditIndexe5.Text);
     end;
end;

procedure TFSParametresAvances.BitAfficherTableauRubriquesSousMenuClick(Sender: TObject);
var  i,iSelect,RExistant,RSupprimer,RSauvgarder:integer;   OKSousMenu:boolean;
begin
     FSParametresAvances.AfficherTableauRubriquesSousMenu.Visible:=false;

     if(FSParametresAvances.BitAfficherTableauRubriquesSousMenu.Caption='Valider')then
     begin
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

               if(inttostr(RRubriquesSousMenu.PositionRubriqueSousMenu)=FSParametresAvances.EditPositionRubriqueSousMenu.Text)
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
          RRubriquesSousMenu.PositionRubriqueSousMenu:=i;
          RRubriquesSousMenu.PositionSousMenu0:=FSParametresAvances.EditPosition0RubriquesSousMenu.Text;
          RRubriquesSousMenu.PositionSousMenu1:=FSParametresAvances.EditPosition1RubriquesSousMenu.Text;
          RRubriquesSousMenu.PositionSousMenu2:=FSParametresAvances.EditPosition2RubriquesSousMenu.Text;
          RRubriquesSousMenu.PositionSousMenu3:=FSParametresAvances.EditPosition3RubriquesSousMenu.Text;
          RRubriquesSousMenu.PositionSousMenu4:=FSParametresAvances.EditPosition4RubriquesSousMenu.Text;
          RRubriquesSousMenu.PositionSousMenu5:=FSParametresAvances.EditPosition5RubriquesSousMenu.Text;
          RRubriquesSousMenu.NomSousMenu:=FSParametresAvances.EditNouvelAffichageRubriquesSousMenus.Text;
          if(FSParametresAvances.EditNouvelAffichageRubriquesSousMenus.Text<>'')
          then RRubriquesSousMenu.CaptionSousMenu:=FSParametresAvances.EditNouvelAffichageRubriquesSousMenus.Text
          else RRubriquesSousMenu.CaptionSousMenu:=FSParametresAvances.EditAffichageRubriquesSousMenus.Text;
          RRubriquesSousMenu.ActiveSousMenu:=FSParametresAvances.RBActiveRubriquesSousMenus.Checked;
          Write(FRubriquesSousMenu,RRubriquesSousMenu);
          CloseFile(FRubriquesSousMenu);
     end;

     if(FSParametresAvances.BitAfficherTableauRubriquesSousMenu.Caption='Supprimer')then
     begin
          if(SupprimerFRubriquesSousMenu(FSParametresAvances.EditPositionRubriqueSousMenu.Text,RExistant,RSupprimer,RSauvgarder))then
          begin
               if(FSParametresAvances.RBNonActiveRubriquesSousMenus.Checked=true)then
               begin
                    AppliquerRubriquesSousMenu(FSParametresAvances.EditPosition0RubriquesSousMenu.Text,FSParametresAvances.EditPosition1RubriquesSousMenu.Text,FSParametresAvances.EditPosition2RubriquesSousMenu.Text,FSParametresAvances.EditPosition3RubriquesSousMenu.Text,FSParametresAvances.EditPosition4RubriquesSousMenu.Text,FSParametresAvances.EditPosition5RubriquesSousMenu.Text,true);
               end;
          end;
     end;

     ListeRubriquesSousMenu(FSParametresAvances.TableauRubriquesSousMenu); 
     FSParametresAvances.TableauRubriquesSousMenu.SetFocus;
     
     FSParametresAvances.RBModificationOpere.Checked:=true;
end;

procedure TFSParametresAvances.TableauSousMenuKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.AfficherTableauRubriquesSousMenu.Visible:=true;
          FSParametresAvances.BitAfficherTableauRubriquesSousMenu.Kind:=bkAll;
          FSParametresAvances.BitAfficherTableauRubriquesSousMenu.Caption:='Valider';

          FSParametresAvances.EditPositionRubriqueSousMenu.Text:='';
          FSParametresAvances.EditPosition0RubriquesSousMenu.Text:=FSParametresAvances.TableauSousMenu.Cells[1,FSParametresAvances.TableauSousMenu.Row];
          FSParametresAvances.EditPosition1RubriquesSousMenu.Text:=FSParametresAvances.TableauSousMenu.Cells[2,FSParametresAvances.TableauSousMenu.Row];
          FSParametresAvances.EditPosition2RubriquesSousMenu.Text:=FSParametresAvances.TableauSousMenu.Cells[3,FSParametresAvances.TableauSousMenu.Row];
          FSParametresAvances.EditPosition3RubriquesSousMenu.Text:=FSParametresAvances.TableauSousMenu.Cells[4,FSParametresAvances.TableauSousMenu.Row];
          FSParametresAvances.EditPosition4RubriquesSousMenu.Text:=FSParametresAvances.TableauSousMenu.Cells[5,FSParametresAvances.TableauSousMenu.Row];
          FSParametresAvances.EditPosition5RubriquesSousMenu.Text:=FSParametresAvances.TableauSousMenu.Cells[6,FSParametresAvances.TableauSousMenu.Row];
          FSParametresAvances.EditNomRubriquesSousMenus.Text:=FSParametresAvances.TableauSousMenu.Cells[7,FSParametresAvances.TableauSousMenu.Row];
          FSParametresAvances.EditAffichageRubriquesSousMenus.Text:=FSParametresAvances.TableauSousMenu.Cells[8,FSParametresAvances.TableauSousMenu.Row];
          FSParametresAvances.EditNouvelAffichageRubriquesSousMenus.Text:='';
          if(strtoboolean(FSParametresAvances.TableauSousMenu.Cells[9,FSParametresAvances.TableauSousMenu.Row])=true)
          then FSParametresAvances.RBActiveRubriquesSousMenus.Checked:=true
          else FSParametresAvances.RBNonActiveRubriquesSousMenus.Checked:=true;

          FSParametresAvances.AfficherEnabelTableauRubriquesSousMenu.Enabled:=true;
          FSParametresAvances.EditNouvelAffichageRubriquesSousMenus.SetFocus;
     end;
end;

procedure TFSParametresAvances.TableauRubriquesSousMenuKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_DELETE]then
     begin
          FSParametresAvances.AfficherTableauRubriquesSousMenu.Visible:=true;
          FSParametresAvances.BitAfficherTableauRubriquesSousMenu.Kind:=bkCancel;
          FSParametresAvances.BitAfficherTableauRubriquesSousMenu.Caption:='Supprimer';

          FSParametresAvances.EditPositionRubriqueSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[0,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition0RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[1,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition1RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[2,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition2RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[3,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition3RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[4,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition4RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[5,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition5RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[6,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditNomRubriquesSousMenus.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[7,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditAffichageRubriquesSousMenus.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[8,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditNouvelAffichageRubriquesSousMenus.Text:='';
          if(strtoboolean(FSParametresAvances.TableauRubriquesSousMenu.Cells[9,FSParametresAvances.TableauRubriquesSousMenu.Row])=true)
          then FSParametresAvances.RBActiveRubriquesSousMenus.Checked:=true
          else FSParametresAvances.RBNonActiveRubriquesSousMenus.Checked:=true;

          FSParametresAvances.AfficherEnabelTableauRubriquesSousMenu.Enabled:=false;
          FSParametresAvances.BitAfficherTableauRubriquesSousMenu.SetFocus;
     end;
end;

Procedure ListeRubriquesSousMenu(TableauRubriquesSousMenu:TStringGrid);
var  R,C:integer;    NotRow,NotCol:string;
begin
     TableauRubriquesSousMenu.ColCount:=10;
     TableauRubriquesSousMenu.Cols[0].Text:='P°';
     TableauRubriquesSousMenu.Cols[1].Text:='P°0';
     TableauRubriquesSousMenu.Cols[2].Text:='P°1';
     TableauRubriquesSousMenu.Cols[3].Text:='P°2';
     TableauRubriquesSousMenu.Cols[4].Text:='P°3';
     TableauRubriquesSousMenu.Cols[5].Text:='P°4';
     TableauRubriquesSousMenu.Cols[6].Text:='P°5';
     TableauRubriquesSousMenu.Cols[7].Text:='Nom de la rubrique Menu';
     TableauRubriquesSousMenu.Cols[8].Text:='Affichage';
     TableauRubriquesSousMenu.Cols[9].Text:='Activation';

     TableauRubriquesSousMenu.RowCount:=2;
     TableauRubriquesSousMenu.Rows[1].Text:='';


     OpenFParc(RParc);
     ChRubriquesSousMenu:=RParc.Parcours+'\'+Entreprise+'FRubriquesSousMenu';
     assignfile(FRubriquesSousMenu,ChRubriquesSousMenu);
     if FileExists(ChRubriquesSousMenu)then
     Reset(FRubriquesSousMenu)
     else Rewrite(FRubriquesSousMenu);
     Seek(FRubriquesSousMenu,0);
     R:=0;
     while not eof(FRubriquesSousMenu)do
     begin
          read(FRubriquesSousMenu,RRubriquesSousMenu);
          R:=R+1;
          TableauRubriquesSousMenu.Rows[R].Text:=inttostr(R);
          TableauRubriquesSousMenu.Cells[0,R]:=inttostr(RRubriquesSousMenu.PositionRubriqueSousMenu);
          TableauRubriquesSousMenu.Cells[1,R]:=RRubriquesSousMenu.PositionSousMenu0;
          TableauRubriquesSousMenu.Cells[2,R]:=RRubriquesSousMenu.PositionSousMenu1;
          TableauRubriquesSousMenu.Cells[3,R]:=RRubriquesSousMenu.PositionSousMenu2;
          TableauRubriquesSousMenu.Cells[4,R]:=RRubriquesSousMenu.PositionSousMenu3;
          TableauRubriquesSousMenu.Cells[5,R]:=RRubriquesSousMenu.PositionSousMenu4;
          TableauRubriquesSousMenu.Cells[6,R]:=RRubriquesSousMenu.PositionSousMenu5;
          TableauRubriquesSousMenu.Cells[7,R]:=RRubriquesSousMenu.NomSousMenu;
          TableauRubriquesSousMenu.Cells[8,R]:=RRubriquesSousMenu.CaptionSousMenu;
          TableauRubriquesSousMenu.Cells[9,R]:=booleantostr(RRubriquesSousMenu.ActiveSousMenu);
     end;
     CloseFile(FRubriquesSousMenu);

     if(R>0)then TableauRubriquesSousMenu.RowCount:=R+1
            else TableauRubriquesSousMenu.RowCount:=2;

     NotRow:='';
     NotCol:='1-7';
     for C:=0 to TableauRubriquesSousMenu.ColCount-1 do if(ExisteNumInTexte(inttostr(C),NotCol))then TableauRubriquesSousMenu.ColWidths[C]:=0;
     AjusterColWidth(TableauRubriquesSousMenu,NotRow,NotCol);
end;

procedure TFSParametresAvances.PageParametresMenuShow(Sender: TObject);
begin
     ListeRubriquesSousMenu(FSParametresAvances.TableauRubriquesSousMenu);
end;

Function ActivationRubriquesSousMenu(NomSousMenu:string):boolean;
var  ActivationRSM:boolean;
begin
     ActivationRubriquesSousMenu:=true;

     OpenFParc(RParc);
     ChRubriquesSousMenu:=RParc.Parcours+'\'+Entreprise+'FRubriquesSousMenu';
     assignfile(FRubriquesSousMenu,ChRubriquesSousMenu);
     if FileExists(ChRubriquesSousMenu)then
     Reset(FRubriquesSousMenu)
     else Rewrite(FRubriquesSousMenu);
     Seek(FRubriquesSousMenu,0);
     ActivationRSM:=false;
     while not eof(FRubriquesSousMenu)and(ActivationRSM=false)do
     begin
          read(FRubriquesSousMenu,RRubriquesSousMenu);

          if(RRubriquesSousMenu.NomSousMenu=NomSousMenu)
          then
          begin
               ActivationRSM:=true;
               ActivationRubriquesSousMenu:=RRubriquesSousMenu.ActiveSousMenu;
          end;
     end;
     CloseFile(FRubriquesSousMenu);
end;

Procedure AppliquerRubriquesSousMenu(PositionSousMenu0,PositionSousMenu1,PositionSousMenu2,PositionSousMenu3,PositionSousMenu4,PositionSousMenu5:string; OKVisibilite:boolean);
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
               FSMenuPrincipal.MenuPrincipal.Items[strtointeger(PositionSousMenu0)].Items[strtointeger(PositionSousMenu1)].Items[strtointeger(PositionSousMenu2)].Items[strtointeger(PositionSousMenu3)].Items[strtointeger(PositionSousMenu4)].Items[strtointeger(PositionSousMenu5)].Visible:=OKVisibilite;
          end
          else
          if(PositionSousMenu4<>'')then
          begin
               FSMenuPrincipal.MenuPrincipal.Items[strtointeger(PositionSousMenu0)].Items[strtointeger(PositionSousMenu1)].Items[strtointeger(PositionSousMenu2)].Items[strtointeger(PositionSousMenu3)].Items[strtointeger(PositionSousMenu4)].Visible:=OKVisibilite;
          end
          else
          if(PositionSousMenu3<>'')then
          begin
               FSMenuPrincipal.MenuPrincipal.Items[strtointeger(PositionSousMenu0)].Items[strtointeger(PositionSousMenu1)].Items[strtointeger(PositionSousMenu2)].Items[strtointeger(PositionSousMenu3)].Visible:=OKVisibilite;
          end
          else
          if(PositionSousMenu2<>'')then
          begin
               FSMenuPrincipal.MenuPrincipal.Items[strtointeger(PositionSousMenu0)].Items[strtointeger(PositionSousMenu1)].Items[strtointeger(PositionSousMenu2)].Visible:=OKVisibilite;
          end
          else
          if(PositionSousMenu1<>'')then
          begin
               FSMenuPrincipal.MenuPrincipal.Items[strtointeger(PositionSousMenu0)].Items[strtointeger(PositionSousMenu1)].Visible:=OKVisibilite;
          end
          else
          if(PositionSousMenu0<>'')then
          begin
               FSMenuPrincipal.MenuPrincipal.Items[strtointeger(PositionSousMenu0)].Visible:=OKVisibilite;
          end;
     Exit;
     end;

     OpenFParc(RParc);
     ChRubriquesSousMenu:=RParc.Parcours+'\'+Entreprise+'FRubriquesSousMenu';
     assignfile(FRubriquesSousMenu,ChRubriquesSousMenu);
     if FileExists(ChRubriquesSousMenu)then
     Reset(FRubriquesSousMenu)
     else Rewrite(FRubriquesSousMenu);
     Seek(FRubriquesSousMenu,0);
     while not eof(FRubriquesSousMenu)do
     begin
          read(FRubriquesSousMenu,RRubriquesSousMenu);

          if(RRubriquesSousMenu.PositionSousMenu5<>'')and(strtointeger(RRubriquesSousMenu.PositionSousMenu5)>=0)then
          begin
               if(RRubriquesSousMenu.ActiveSousMenu=false)
               then FSMenuPrincipal.MenuPrincipal.Items[strtointeger(RRubriquesSousMenu.PositionSousMenu0)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu1)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu2)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu3)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu4)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu5)].Visible:=false
               else
               if(RRubriquesSousMenu.CaptionSousMenu<>'')
               then FSMenuPrincipal.MenuPrincipal.Items[strtointeger(RRubriquesSousMenu.PositionSousMenu0)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu1)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu2)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu3)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu4)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu5)].Caption:=RRubriquesSousMenu.CaptionSousMenu
          end
          else
          if(RRubriquesSousMenu.PositionSousMenu4<>'')and(strtointeger(RRubriquesSousMenu.PositionSousMenu4)>=0)then
          begin
               if(RRubriquesSousMenu.ActiveSousMenu=false)
               then FSMenuPrincipal.MenuPrincipal.Items[strtointeger(RRubriquesSousMenu.PositionSousMenu0)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu1)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu2)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu3)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu4)].Visible:=false
               else
               if(RRubriquesSousMenu.CaptionSousMenu<>'')
               then FSMenuPrincipal.MenuPrincipal.Items[strtointeger(RRubriquesSousMenu.PositionSousMenu0)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu1)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu2)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu3)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu4)].Caption:=RRubriquesSousMenu.CaptionSousMenu
          end
          else
          if(RRubriquesSousMenu.PositionSousMenu3<>'')and(strtointeger(RRubriquesSousMenu.PositionSousMenu3)>=0)then
          begin
               if(RRubriquesSousMenu.ActiveSousMenu=false)
               then FSMenuPrincipal.MenuPrincipal.Items[strtointeger(RRubriquesSousMenu.PositionSousMenu0)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu1)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu2)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu3)].Visible:=false
               else
               if(RRubriquesSousMenu.CaptionSousMenu<>'')
               then FSMenuPrincipal.MenuPrincipal.Items[strtointeger(RRubriquesSousMenu.PositionSousMenu0)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu1)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu2)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu3)].Caption:=RRubriquesSousMenu.CaptionSousMenu
          end
          else
          if(RRubriquesSousMenu.PositionSousMenu2<>'')and(strtointeger(RRubriquesSousMenu.PositionSousMenu2)>=0)then
          begin
               if(RRubriquesSousMenu.ActiveSousMenu=false)
               then FSMenuPrincipal.MenuPrincipal.Items[strtointeger(RRubriquesSousMenu.PositionSousMenu0)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu1)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu2)].Visible:=false
               else
               if(RRubriquesSousMenu.CaptionSousMenu<>'')
               then FSMenuPrincipal.MenuPrincipal.Items[strtointeger(RRubriquesSousMenu.PositionSousMenu0)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu1)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu2)].Caption:=RRubriquesSousMenu.CaptionSousMenu
          end
          else
          if(RRubriquesSousMenu.PositionSousMenu1<>'')and(strtointeger(RRubriquesSousMenu.PositionSousMenu1)>=0)then
          begin
               if(RRubriquesSousMenu.ActiveSousMenu=false)
               then FSMenuPrincipal.MenuPrincipal.Items[strtointeger(RRubriquesSousMenu.PositionSousMenu0)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu1)].Visible:=false
               else
               if(RRubriquesSousMenu.CaptionSousMenu<>'')
               then FSMenuPrincipal.MenuPrincipal.Items[strtointeger(RRubriquesSousMenu.PositionSousMenu0)].Items[strtointeger(RRubriquesSousMenu.PositionSousMenu1)].Caption:=RRubriquesSousMenu.CaptionSousMenu
          end
          else
          if(RRubriquesSousMenu.PositionSousMenu0<>'')and((strtointeger(RRubriquesSousMenu.PositionSousMenu0)>=0))then
          begin
               if(RRubriquesSousMenu.ActiveSousMenu=false)
               then FSMenuPrincipal.MenuPrincipal.Items[strtointeger(RRubriquesSousMenu.PositionSousMenu0)].Visible:=false
               else
               if(RRubriquesSousMenu.CaptionSousMenu<>'')
               then FSMenuPrincipal.MenuPrincipal.Items[strtointeger(RRubriquesSousMenu.PositionSousMenu0)].Caption:=RRubriquesSousMenu.CaptionSousMenu
          end;
     end;
     CloseFile(FRubriquesSousMenu);
end;

procedure TFSParametresAvances.BitBtn18Click(Sender: TObject);
begin
     FSParametresAvances.AfficherTableauRubriquesSousMenu.Visible:=false;
end;

procedure TFSParametresAvances.BitBtn17Click(Sender: TObject);
begin
     AppliquerRubriquesSousMenu('','','','','','',true);
end;


procedure TFSParametresAvances.TableauRubriquesSousMenuKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['m','M']then
     begin
          FSParametresAvances.AfficherTableauRubriquesSousMenu.Visible:=true;
          FSParametresAvances.BitAfficherTableauRubriquesSousMenu.Kind:=bkAll;
          FSParametresAvances.BitAfficherTableauRubriquesSousMenu.Caption:='Valider';

          FSParametresAvances.EditPositionRubriqueSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[0,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition0RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[1,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition1RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[2,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition2RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[3,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition3RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[4,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition4RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[5,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition5RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[6,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditNomRubriquesSousMenus.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[7,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditAffichageRubriquesSousMenus.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[8,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditNouvelAffichageRubriquesSousMenus.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[8,FSParametresAvances.TableauRubriquesSousMenu.Row];
          if(strtoboolean(FSParametresAvances.TableauRubriquesSousMenu.Cells[9,FSParametresAvances.TableauRubriquesSousMenu.Row])=true)
          then FSParametresAvances.RBActiveRubriquesSousMenus.Checked:=true
          else FSParametresAvances.RBNonActiveRubriquesSousMenus.Checked:=true;

          FSParametresAvances.AfficherEnabelTableauRubriquesSousMenu.Enabled:=true;
          FSParametresAvances.EditNouvelAffichageRubriquesSousMenus.SetFocus;
     end;

     if key in['s','S']then
     begin
          FSParametresAvances.AfficherTableauRubriquesSousMenu.Visible:=true;
          FSParametresAvances.BitAfficherTableauRubriquesSousMenu.Kind:=bkCancel;
          FSParametresAvances.BitAfficherTableauRubriquesSousMenu.Caption:='Supprimer';

          FSParametresAvances.EditPositionRubriqueSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[0,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition0RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[1,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition1RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[2,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition2RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[3,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition3RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[4,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition4RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[5,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditPosition5RubriquesSousMenu.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[6,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditNomRubriquesSousMenus.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[7,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditAffichageRubriquesSousMenus.Text:=FSParametresAvances.TableauRubriquesSousMenu.Cells[8,FSParametresAvances.TableauRubriquesSousMenu.Row];
          FSParametresAvances.EditNouvelAffichageRubriquesSousMenus.Text:='';
          if(strtoboolean(FSParametresAvances.TableauRubriquesSousMenu.Cells[9,FSParametresAvances.TableauRubriquesSousMenu.Row])=true)
          then FSParametresAvances.RBActiveRubriquesSousMenus.Checked:=true
          else FSParametresAvances.RBNonActiveRubriquesSousMenus.Checked:=true;

          FSParametresAvances.AfficherEnabelTableauRubriquesSousMenu.Enabled:=false;
          FSParametresAvances.BitAfficherTableauRubriquesSousMenu.SetFocus;
     end;
end;

Function FunctOKRedemarrerCodeFondateurParDefaut:boolean;
var  OKRedemarrerCodeFondateurParDefaut:boolean;
begin
     OKRedemarrerCodeFondateurParDefaut:=false;

     OpenFParc(RParc);
     ChRedemarreCodeFondateurParDefaut:=RParc.Parcours+'\'+'FRedemarreCodeFondateurParDefaut';
     assignfile(FRedemarreCodeFondateurParDefaut,ChRedemarreCodeFondateurParDefaut);
     if FileExists(ChRedemarreCodeFondateurParDefaut)then
     begin
          Reset(FRedemarreCodeFondateurParDefaut);

          Seek(FRedemarreCodeFondateurParDefaut,0);
          if not eof(FRedemarreCodeFondateurParDefaut)then
          begin
               Read(FRedemarreCodeFondateurParDefaut,RRedemarreCodeFondateurParDefaut);   Application.ProcessMessages;
               OKRedemarrerCodeFondateurParDefaut:=RRedemarreCodeFondateurParDefaut.OKRedemarrerCodeFondateurParDefaut;
          end;
          CloseFile(FRedemarreCodeFondateurParDefaut);
     end;

     FunctOKRedemarrerCodeFondateurParDefaut:=OKRedemarrerCodeFondateurParDefaut;
end;

Procedure EnregistrerRedemarrerCodeFondateurParDefaut(OKRedemarreCodeFondateurParDefaut:boolean);
begin
     OpenFParc(RParc);
     ChRedemarreCodeFondateurParDefaut:=RParc.Parcours+'\'+'FRedemarreCodeFondateurParDefaut';
     assignfile(FRedemarreCodeFondateurParDefaut,ChRedemarreCodeFondateurParDefaut);
     if FileExists(ChRedemarreCodeFondateurParDefaut)
     then Reset(FRedemarreCodeFondateurParDefaut)
     else Rewrite(FRedemarreCodeFondateurParDefaut);
     Seek(FRedemarreCodeFondateurParDefaut,0);
     Truncate(FRedemarreCodeFondateurParDefaut);
     RRedemarreCodeFondateurParDefaut.OKRedemarrerCodeFondateurParDefaut:=OKRedemarreCodeFondateurParDefaut;
     Write(FRedemarreCodeFondateurParDefaut,RRedemarreCodeFondateurParDefaut);
     CloseFile(FRedemarreCodeFondateurParDefaut);
end;

procedure TFSParametresAvances.BitBtn20Click(Sender: TObject);
begin

     FSParametresAvances.RBModificationOpere.Checked:=false;
     FSParametresAvances.Close;
     FSApplicationTerminate.Show;
     FSApplicationTerminate.AfficheApplicationTerminate.Caption:='Voulez vous redémarrer Business-Proces en mode Fondateur ?';
     FSApplicationTerminate.BitOK.SetFocus;

     FSApplicationTerminate.EditApplicationTerminate.Text:='Redémarrer';
     FSApplicationTerminate.RBCodeFondateurParDefaut.Checked:=true;
end;

procedure TFSParametresAvances.TableauIntituleImprimeClick(
  Sender: TObject);
begin
     FSParametresAvances.AfficheTableauIntituleImprime.Visible:=false;
end;

procedure TFSParametresAvances.TableauIntituleImprimeKeyPress(
  Sender: TObject; var Key: Char);
begin
     if Key in['n','N']then
     begin
          FSParametresAvances.BitAfficheTableauIntituleImprime.Kind:=bkAll;
          FSParametresAvances.BitAfficheTableauIntituleImprime.Caption:='Valider';
          FSParametresAvances.AfficheTableauIntituleImprime.Visible:=true;
          FSParametresAvances.EditPositionIntituleImprime.Text:='';
          FSParametresAvances.EditNomImprime.Text:='';
          FSParametresAvances.EditTitreImprime.Text:='';
          FSParametresAvances.EditSousTitreImprime.Text:='';

          FSParametresAvances.EditNomImprime.SetFocus;
     end;

     if Key in['m','M']then
     begin
          FSParametresAvances.BitAfficheTableauIntituleImprime.Kind:=bkAll;
          FSParametresAvances.BitAfficheTableauIntituleImprime.Caption:='Valider';
          FSParametresAvances.AfficheTableauIntituleImprime.Visible:=true;
          FSParametresAvances.EditPositionIntituleImprime.Text:=FSParametresAvances.TableauIntituleImprime.Cells[1,FSParametresAvances.TableauIntituleImprime.Row];
          FSParametresAvances.EditNomImprime.Text:=FSParametresAvances.TableauIntituleImprime.Cells[2,FSParametresAvances.TableauIntituleImprime.Row];
          FSParametresAvances.EditTitreImprime.Text:=FSParametresAvances.TableauIntituleImprime.Cells[3,FSParametresAvances.TableauIntituleImprime.Row];
          FSParametresAvances.EditSousTitreImprime.Text:=FSParametresAvances.TableauIntituleImprime.Cells[4,FSParametresAvances.TableauIntituleImprime.Row];

          FSParametresAvances.EditTitreImprime.SetFocus;
     end;

     if Key in['s','S']then
     begin
          FSParametresAvances.BitAfficheTableauIntituleImprime.Kind:=bkCancel;
          FSParametresAvances.BitAfficheTableauIntituleImprime.Caption:='Supprimer';
          FSParametresAvances.AfficheTableauIntituleImprime.Visible:=true;
          FSParametresAvances.EditPositionIntituleImprime.Text:=FSParametresAvances.TableauIntituleImprime.Cells[1,FSParametresAvances.TableauIntituleImprime.Row];
          FSParametresAvances.EditNomImprime.Text:=FSParametresAvances.TableauIntituleImprime.Cells[2,FSParametresAvances.TableauIntituleImprime.Row];
          FSParametresAvances.EditTitreImprime.Text:=FSParametresAvances.TableauIntituleImprime.Cells[3,FSParametresAvances.TableauIntituleImprime.Row];
          FSParametresAvances.EditSousTitreImprime.Text:=FSParametresAvances.TableauIntituleImprime.Cells[4,FSParametresAvances.TableauIntituleImprime.Row];

          FSParametresAvances.BitAfficheTableauIntituleImprime.SetFocus;
     end;
end;

procedure TFSParametresAvances.BitBtn22Click(Sender: TObject);
begin
     FSParametresAvances.AfficheTableauIntituleImprime.Visible:=false;
end;

procedure TFSParametresAvances.BitAfficheTableauIntituleImprimeClick(Sender: TObject);
var  i,iSelect,RExistant,RSupprimer,RSauvgarder:integer; OKIntituleImprime:boolean;
begin
     FSParametresAvances.AfficheTableauIntituleImprime.Visible:=false;

     if(FSParametresAvances.BitAfficheTableauIntituleImprime.Caption='Valider')then
     begin
          OpenFParc(RParc);
          ChIntituleImprime:=RParc.Parcours+'\'+Entreprise+'FIntituleImprime';
          assignfile(FIntituleImprime,ChIntituleImprime);
          if FileExists(ChIntituleImprime)then
          Reset(FIntituleImprime)
          else Rewrite(FIntituleImprime);
          Seek(FIntituleImprime,0);
          OKIntituleImprime:=false;
          i:=0;
          iSelect:=0;
          while not eof(FIntituleImprime)and(OKIntituleImprime=false)do
          begin
               read(FIntituleImprime,RIntituleImprime);

               if(inttostr(RIntituleImprime.PositionIntituleImprime)=FSParametresAvances.EditPositionIntituleImprime.Text)
               or(RIntituleImprime.NomImprime=FSParametresAvances.EditNomImprime.Text)
               then
               begin
                    OKIntituleImprime:=true;
                    iSelect:=i;
               end;
          i:=i+1;
          end;

          if(OKIntituleImprime=true)then i:=iSelect;
          Seek(FIntituleImprime,i);
          RIntituleImprime.PositionIntituleImprime:=i;
          RIntituleImprime.NomImprime:=FSParametresAvances.EditNomImprime.Text;
          RIntituleImprime.TitreImprime:=FSParametresAvances.EditTitreImprime.Text;
          RIntituleImprime.SousTitreImprime:=FSParametresAvances.EditSousTitreImprime.Text;
          Write(FIntituleImprime,RIntituleImprime);
          CloseFile(FIntituleImprime);
     end;

     if(FSParametresAvances.BitAfficheTableauIntituleImprime.Caption='Supprimer')then
     begin
          if(SupprimerFIntituleImprime(FSParametresAvances.EditPositionIntituleImprime.Text,RExistant,RSupprimer,RSauvgarder))then
          begin

          end;
     end;

     ListeIntituleImprime(FSParametresAvances.TableauIntituleImprime);
     FSParametresAvances.TableauIntituleImprime.SetFocus;
end;

procedure TFSParametresAvances.EditNomImprimeEnter(Sender: TObject);
begin
     FSParametresAvances.TableauListeImprimes.Left:=FSParametresAvances.AfficheTableauIntituleImprime.Left+FSParametresAvances.EditTitreImprime.Left;
     FSParametresAvances.TableauListeImprimes.Top:=FSParametresAvances.AfficheTableauIntituleImprime.Top+FSParametresAvances.EditTitreImprime.Top;
     FSParametresAvances.TableauListeImprimes.Visible:=true;

     ListeImprime(FSParametresAvances.TableauListeImprimes);
     FSParametresAvances.TableauListeImprimes.SetFocus;
end;

procedure TFSParametresAvances.TableauListeImprimesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.TableauListeImprimes.Visible:=false;
          FSParametresAvances.EditNomImprime.Text:=FSParametresAvances.TableauListeImprimes.Cells[2,FSParametresAvances.TableauListeImprimes.Row];
          FSParametresAvances.EditTitreImprime.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditNomImprimeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditTitreImprime.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditTitreImprimeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.EditSousTitreImprime.SetFocus;
     end;
end;

procedure TFSParametresAvances.EditSousTitreImprimeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.BitAfficheTableauIntituleImprime.SetFocus;
     end;
end;

Procedure ListeIntituleImprime(TableauIntituleImprime:TStringGrid);
var  R,C:integer;    NotRow,NotCol:string;
begin
     TableauIntituleImprime.ColCount:=5;
     TableauIntituleImprime.Cols[0].Text:='Or';
     TableauIntituleImprime.Cols[1].Text:='P°';
     TableauIntituleImprime.Cols[2].Text:='Nom';
     TableauIntituleImprime.Cols[3].Text:='Titre';
     TableauIntituleImprime.Cols[4].Text:='Sous Titre';

     TableauIntituleImprime.RowCount:=2;
     TableauIntituleImprime.Rows[1].Text:='';

     OpenFParc(RParc);
     ChIntituleImprime:=RParc.Parcours+'\'+Entreprise+'FIntituleImprime';
     assignfile(FIntituleImprime,ChIntituleImprime);
     if FileExists(ChIntituleImprime)then
     Reset(FIntituleImprime)
     else Rewrite(FIntituleImprime);
     Seek(FIntituleImprime,0);
     R:=0;
     while not eof(FIntituleImprime)do
     begin
          read(FIntituleImprime,RIntituleImprime);
          R:=R+1;
          TableauIntituleImprime.Rows[R].Text:=inttostr(R);
          TableauIntituleImprime.Cells[1,R]:=inttostr(RIntituleImprime.PositionIntituleImprime);
          TableauIntituleImprime.Cells[2,R]:=RIntituleImprime.NomImprime;
          TableauIntituleImprime.Cells[3,R]:=RIntituleImprime.TitreImprime;
          TableauIntituleImprime.Cells[4,R]:=RIntituleImprime.SousTitreImprime;
     end;
     CloseFile(FIntituleImprime);

     if(R>0)then TableauIntituleImprime.RowCount:=R+1
            else TableauIntituleImprime.RowCount:=2;

     NotRow:='';
     NotCol:='';
     for C:=0 to TableauIntituleImprime.ColCount-1 do if(ExisteNumInTexte(inttostr(C),NotCol))then TableauIntituleImprime.ColWidths[C]:=0;
     AjusterColWidth(TableauIntituleImprime,NotRow,NotCol);
end;

Procedure ListeImprime(TableauImprime:TStringGrid);
var  R,C:integer;    NotRow,NotCol:string;
begin
     TableauImprime.ColCount:=3;
     TableauImprime.Cols[0].Text:='Or';
     TableauImprime.Cols[1].Text:='P°';
     TableauImprime.Cols[2].Text:='Nom';

     TableauImprime.RowCount:=2;
     TableauImprime.Rows[1].Text:='';

     OpenFParc(RParc);
     ChImprime:=RParc.Parcours+'\'+Entreprise+'FImprime';
     assignfile(FImprime,ChImprime);
     if FileExists(ChImprime)then
     Reset(FImprime)
     else Rewrite(FImprime);
     Seek(FImprime,0);
     R:=0;
     while not eof(FImprime)do
     begin
          read(FImprime,RImprime);
          R:=R+1;
          TableauImprime.Rows[R].Text:=inttostr(R);
          TableauImprime.Cells[1,R]:=inttostr(RImprime.PositionImprime);
          TableauImprime.Cells[2,R]:=RImprime.NomImprime;
     end;
     CloseFile(FImprime);

     if(R>0)then TableauImprime.RowCount:=R+1
            else TableauImprime.RowCount:=2;

     NotRow:='';
     NotCol:='';
     for C:=0 to TableauImprime.ColCount-1 do if(ExisteNumInTexte(inttostr(C),NotCol))then TableauImprime.ColWidths[C]:=0;
     AjusterColWidth(TableauImprime,NotRow,NotCol);
end;

procedure TFSParametresAvances.TableauImprimeKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key in['n','N']then
     begin
          FSParametresAvances.BitAfficheTableauImprime.Kind:=bkAll;
          FSParametresAvances.BitAfficheTableauImprime.Caption:='Valider';
          FSParametresAvances.AfficheTableauImprime.Visible:=true;
          FSParametresAvances.EditPositionImprime.Text:='';
          FSParametresAvances.EditNamImprime.Text:='';

          FSParametresAvances.EditNamImprime.SetFocus;
     end;

     if Key in['m','M']then
     begin
          FSParametresAvances.BitAfficheTableauImprime.Kind:=bkAll;
          FSParametresAvances.BitAfficheTableauImprime.Caption:='Valider';
          FSParametresAvances.AfficheTableauImprime.Visible:=true;
          FSParametresAvances.EditPositionImprime.Text:=FSParametresAvances.TableauImprime.Cells[1,FSParametresAvances.TableauImprime.Row];
          FSParametresAvances.EditNamImprime.Text:=FSParametresAvances.TableauImprime.Cells[2,FSParametresAvances.TableauImprime.Row];

          FSParametresAvances.EditNamImprime.SetFocus;
     end;

     if Key in['s','S']then
     begin
          FSParametresAvances.BitAfficheTableauImprime.Kind:=bkCancel;
          FSParametresAvances.BitAfficheTableauImprime.Caption:='Supprimer';
          FSParametresAvances.AfficheTableauImprime.Visible:=true;
          FSParametresAvances.EditPositionImprime.Text:=FSParametresAvances.TableauImprime.Cells[1,FSParametresAvances.TableauImprime.Row];
          FSParametresAvances.EditNamImprime.Text:=FSParametresAvances.TableauImprime.Cells[2,FSParametresAvances.TableauImprime.Row];

          FSParametresAvances.BitAfficheTableauImprime.SetFocus;
     end;
end;

procedure TFSParametresAvances.BitAfficheTableauImprimeClick(
  Sender: TObject);
var  i,iSelect,RExistant,RSupprimer,RSauvgarder:integer; OKImprime:boolean;
begin
     FSParametresAvances.AfficheTableauImprime.Visible:=false;

     if(FSParametresAvances.BitAfficheTableauImprime.Caption='Valider')then
     begin
          OpenFParc(RParc);
          ChImprime:=RParc.Parcours+'\'+Entreprise+'FImprime';
          assignfile(FImprime,ChImprime);
          if FileExists(ChImprime)then
          Reset(FImprime)
          else Rewrite(FImprime);
          Seek(FImprime,0);
          OKImprime:=false;
          i:=0;
          iSelect:=0;
          while not eof(FImprime)and(OKImprime=false)do
          begin
               read(FImprime,RImprime);

               if(inttostr(RImprime.PositionImprime)=FSParametresAvances.EditPositionImprime.Text)
               then
               begin
                    OKImprime:=true;
                    iSelect:=i;
               end;
          i:=i+1;
          end;

          if(OKImprime=true)then i:=iSelect;
          Seek(FImprime,i);
          RImprime.PositionImprime:=i;
          RImprime.NomImprime:=FSParametresAvances.EditNamImprime.Text;
          Write(FImprime,RImprime);
          CloseFile(FImprime);
     end;

     if(FSParametresAvances.BitAfficheTableauImprime.Caption='Supprimer')then
     begin
          if(SupprimerFImprime(FSParametresAvances.EditPositionImprime.Text,RExistant,RSupprimer,RSauvgarder))then
          begin

          end;
     end;

     ListeImprime(FSParametresAvances.TableauImprime);
     FSParametresAvances.TableauImprime.SetFocus;
end;

procedure TFSParametresAvances.TableauImprimeClick(Sender: TObject);
begin
     FSParametresAvances.AfficheTableauImprime.Visible:=false;
end;

procedure TFSParametresAvances.BitBtn23Click(Sender: TObject);
begin
     FSParametresAvances.AfficheTableauImprime.Visible:=false;
end;

procedure TFSParametresAvances.EditNamImprimeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresAvances.BitAfficheTableauImprime.SetFocus;
     end;
end;

procedure TFSParametresAvances.PageIntituleImprimeShow(Sender: TObject);
begin
     ListeIntituleImprime(FSParametresAvances.TableauIntituleImprime);
     ListeImprime(FSParametresAvances.TableauImprime);
end;

procedure TFSParametresAvances.BitBtn24Click(Sender: TObject);
begin
     PrintFactureDinamique.DataEntrepriseBasPage.Lines.Text:=FSParametresAvances.EditBasPage.Lines.Text;

     PrintFactureDinamique.CadreTextInfoBasPage.Enabled:=false;
     PrintFactureDinamique.TextInfoBasPage.Enabled:=false;
     PrintFactureDinamique.Preview;
end;

Procedure ProcAfficherInfoBasPage(FichierMemo:TMemo);
var  TexteLigne,AdresseFichierTexte:string;
     FichierTexte:TextFile;
begin
     FichierMemo.Lines.Text:='';

     OpenFParc(RParc);
     AdresseFichierTexte:=RParc.Parcours+'\'+Exercice+'FInfosBasPage.txt';
     if FileExists(AdresseFichierTexte)then
     begin
          AssignFile(FichierTexte,AdresseFichierTexte);
          try
          Reset(FichierTexte);
          while not eof(FichierTexte)do
          begin
               Readln(FichierTexte,TexteLigne);
               FichierMemo.Lines.Add(TexteLigne);
          end;
          finally
          CloseFile(FichierTexte);
          end;
     end;
end;

Procedure ProcEnregistrerInfoBasPage(FichierMemo:TMemo);
var  AdresseFichierTexte:string;
     FichierTexte:TextFile;
begin
     OpenFParc(RParc);
     AdresseFichierTexte:=RParc.Parcours+'\'+Exercice+'FInfosBasPage.txt';
     if FileExists(AdresseFichierTexte)then
     begin
          AssignFile(FichierTexte,AdresseFichierTexte);
          Erase(FichierTexte);
     end;

     FichierMemo.Lines.SaveToFile(AdresseFichierTexte);
end;

procedure TFSParametresAvances.TabSheet1Show(Sender: TObject);
begin
     ProcAfficherInfoBasPage(FSParametresAvances.EditBasPage);
end;

procedure TFSParametresAvances.BitBtn25Click(Sender: TObject);
begiN
     ProcEnregistrerInfoBasPage(FSParametresAvances.EditBasPage);
end;

End.
