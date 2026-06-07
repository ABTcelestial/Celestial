unit UnitFSSituations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Mask, StdCtrls, ExtCtrls, Buttons, ComCtrls, TeEngine,
  Series, TeeProcs, Chart;

type
  TFSSituations = class(TForm)
    PageControl1: TPageControl;
    PageSituation: TTabSheet;
    PageStatistique: TTabSheet;
    AfficheSituationStructureStatistique: TPanel;
    TableauSituationStructureStatistique: TStringGrid;
    TableauAvance: TStringGrid;
    PageDiagramme: TTabSheet;
    AfficheDiagrammeSituation: TPanel;
    RadioGroup3: TRadioGroup;
    EditARowEvolutionMarche: TEdit;
    TableauEvolutionMarche: TStringGrid;
    BitEvolutionMarche: TBitBtn;
    Diagramme: TChart;
    EditValeurMarche: TMemo;
    EditARowEvolutionMarchePrint: TEdit;
    EditNStructurePrint: TEdit;
    EditStructurePrint: TEdit;
    BitBtn90: TBitBtn;
    Series1: TBarSeries;
    Series2: TBarSeries;
    RadioGroup4: TRadioGroup;
    EditIntervalEvolution: TEdit;
    UpDown1: TUpDown;
    RBPasaPas: TCheckBox;
    RadioGroup6: TRadioGroup;
    RBMarche: TRadioButton;
    RBArticle: TRadioButton;
    AfficheDiagrammeStructures: TPanel;
    BitBtn56: TBitBtn;
    TableauDiagrammeStructures: TStringGrid;
    RBParStructure: TCheckBox;
    PagePricipale: TTabSheet;
    Bevel22: TBevel;
    Bevel23: TBevel;
    TableauPrincipal: TStringGrid;
    BitBtn47: TBitBtn;
    AfficheListeSituation: TPanel;
    TableauListeSituation: TStringGrid;
    AfficheActionListeSituation: TPanel;
    BitBtn52: TBitBtn;
    BitActionSituation: TBitBtn;
    BitBtn53: TBitBtn;
    BitVoirListeSituation: TBitBtn;
    AfficheValiderSituation: TPanel;
    Bevel21: TBevel;
    BitBtn51: TBitBtn;
    BitValiderSituation: TBitBtn;
    BitBtn37: TBitBtn;
    BitBtn54: TBitBtn;
    BitBtn55: TBitBtn;
    AffichePrintParStructure: TPanel;
    Bevel43: TBevel;
    TableauDecompteStructures: TStringGrid;
    BitBtn87: TBitBtn;
    RBSelectDecompte: TCheckBox;
    PageControl2: TPageControl;
    PageMemoire: TTabSheet;
    Memoire: TMemo;
    RadioGroup15: TRadioGroup;
    PageDetailCredit: TTabSheet;
    TableauDetailCredit: TStringGrid;
    RadioGroup14: TRadioGroup;
    AfficheMarche: TPanel;
    LabelNatureProjet: TLabel;
    Label1: TLabel;
    Label25: TLabel;
    Label4: TLabel;
    EditNSMarche: TEdit;
    EditMarche: TEdit;
    EditNStructureMarche: TEdit;
    EditStructureMarche: TEdit;
    EditNStatistiqueMarche: TEdit;
    EditStatistiqueMarche: TEdit;
    EditTypeProjet: TComboBox;
    IndiceAfficheStructure: TEdit;
    IndiceAfficheStatistique: TEdit;
    Panel1: TPanel;
    Label46: TLabel;
    Label14: TLabel;
    EditCodeMaitreOuvrage: TEdit;
    EditMaitreOuvrage: TEdit;
    Panel2: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    EditNAttachementMarche: TEdit;
    EditDateAttachement: TMaskEdit;
    IndiceAfficheAttachement: TEdit;
    BitBtn1: TBitBtn;
    TableauDecompteSituation: TStringGrid;
    TableauSelection: TStringGrid;
    TableauLAttachement: TStringGrid;
    AfficheOptionsSituation: TPanel;
    Bevel38: TBevel;
    BitValiderOptionsSituation: TBitBtn;
    BitBtn27: TBitBtn;
    RadioGroup13: TRadioGroup;
    RBCummulerAttachements: TRadioButton;
    RBDistinguerAttachements: TRadioButton;
    Panel16: TPanel;
    RadioGroup11: TRadioGroup;
    RBSituationParMarche: TRadioButton;
    RBSituationParStructure: TRadioButton;
    RBSituationParStatistique: TRadioButton;
    EditOptionSituationParStructure: TEdit;
    EditOptionSituationParStatistique: TEdit;
    EditCummulerAttachement: TEdit;
    EditSituationNAvenant: TEdit;
    IndiceAffichageAvenantSituation: TEdit;
    EditSituationAvenant: TEdit;
    EditSourceStatistiqueMarche: TEdit;
    EditNSituationMarche: TEdit;
    Label6: TLabel;
    Bevel1: TBevel;
    TestePrintDevis: TMemo;
    TableauAnalyseMontantMarche: TStringGrid;
    TimerEvolutionMarche: TTimer;
    TimerClic: TTimer;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label3: TLabel;
    EditIntervallePeriodeAvancement: TEdit;
    IntervallePeriodeAvancement: TUpDown;
    Bevel4: TBevel;
    TabSheet1: TTabSheet;
    TableauDetailAttachement: TStringGrid;
    BitBtn2: TBitBtn;
    AfficheTitreStructure: TPanel;
    BitBtn86: TBitBtn;
    AfficheOptionPrintApprovisionnementSituation: TPanel;
    Bevel39: TBevel;
    RadioGroup5: TRadioGroup;
    RBTravauxPrecedent: TRadioButton;
    RBTravauxMois: TRadioButton;
    RBTravauxCumule: TRadioButton;
    BitBtn67: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn64: TBitBtn;
    BitBtn5: TBitBtn;
    RadioGroup1: TRadioGroup;
    RBSituation: TRadioButton;
    RBDetail: TRadioButton;
    RBAttachement: TRadioButton;
    RBDecompte: TRadioButton;
    AffcicheTransfertExecl: TPanel;
    BitBtn3: TBitBtn;
    Bevel5: TBevel;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Panel3: TPanel;
    BitBtn7: TBitBtn;
    EditMarcheControle: TMemo;
    TabSheet2: TTabSheet;
    TableauInformationEnTete: TStringGrid;
    Panel4: TPanel;
    AfficheModifierSituation: TPanel;
    BitModifierSituation: TBitBtn;
    BitBtn9: TBitBtn;
    PageDetailSituationMarche: TTabSheet;
    TableauDetailSituationMarche: TStringGrid;
    AfficheAdresseFDetailSituationMarche: TPanel;
    Panel6: TPanel;
    RadioGroup2: TRadioGroup;
    RBCalculeABaseDetailSituationMarcheAnterieure: TRadioButton;
    RBCalculeABaseTousAttachements: TRadioButton;
    EditPositionSituation: TEdit;
    Bevel6: TBevel;
    AfficheOperationSituation: TPanel;
    BitBtn57: TBitBtn;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    BitBtn8: TBitBtn;
    BitBtn10: TBitBtn;
    RadioGroup7: TRadioGroup;
    RBOrientationPapierSituation: TComboBox;
    RBAjustementSituation: TCheckBox;
    EditDesignationSituation: TEdit;
    Bevel10: TBevel;
    Label7: TLabel;
    AfficheValiderMessageSituation: TPanel;
    TableauAvenantMarche: TStringGrid;
    RadioGroup8: TRadioGroup;
    RBValiditeSituation: TRadioButton;
    RBAnnuler: TRadioButton;
    EditModePaiement: TComboBox;
    EditNumDomiciliationPiece: TEdit;
    EditDomiciliationPiece: TComboBox;
    EditNumPiece: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    RBValiditeSituationModifier: TRadioButton;
    RBAnnulerModifier: TRadioButton;
    RadioGroup9: TRadioGroup;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditModePaiementModifier: TComboBox;
    EditNumDomiciliationPieceModifier: TEdit;
    EditNumPieceModifier: TEdit;
    EditDomiciliationPieceModifier: TComboBox;
    Bevel11: TBevel;
    EditListeNumAvisModifier: TEdit;
    Label15: TLabel;
    Bevel12: TBevel;
    BitBtn11: TBitBtn;
    Bevel13: TBevel;
    EditListeNumAvis: TEdit;
    Label16: TLabel;
    BitBtn12: TBitBtn;
    Bevel14: TBevel;
    AfficheListeAvis: TPanel;
    Bevel35: TBevel;
    Label56: TLabel;
    Label57: TLabel;
    Bevel36: TBevel;
    Bevel37: TBevel;
    TableauListeAvis: TStringGrid;
    EditDateDebutAvis: TDateTimePicker;
    EditDateFinAvis: TDateTimePicker;
    BitBtn13: TBitBtn;
    EditEtatOrigineImputationAvis: TComboBox;
    RBModePayementNumAvis: TCheckBox;
    RBModePayementModePayement: TCheckBox;
    RBModePayementDomiciliation: TCheckBox;
    RBModePayementNumPiece: TCheckBox;
    RBAfficherHeureImpression: TCheckBox;
    RBAfficherCodeArticleComplet: TCheckBox;
    RBAfficheCryptageEtat: TCheckBox;
    RBAfficheReferenceListeMouvement: TCheckBox;
    EditTitreReferenceListeMouvement: TComboBox;
    Panel8: TPanel;
    RadioGroup10: TRadioGroup;
    RBModePayementDateAvis: TRadioButton;
    RBModePayementDateExecution: TRadioButton;
    TableauListeAvisTrouver: TStringGrid;
    EditListeNumAvisTrouver: TEdit;
    EditListeModePaiementTrouver: TEdit;
    EditListeDomiciliationAvisTrouver: TEdit;
    EditListeDomiciliationPieceTrouver: TEdit;
    EditListeNumPieceTrouver: TEdit;
    EditListeDateTrouver: TEdit;
    EditMemoLiseAvisTrouver: TMemo;
    EditBaseAvisFichierConcerne: TComboBox;
    EditSourceDemande: TEdit;
    RBAutoBaseAvisFichierConcerne: TCheckBox;
    EditOperationBaseAvisFichierTiersConserne: TEdit;
    EditAddBaseAvisFichierTiersConserne: TEdit;
    TitreEditBaseAvis: TLabel;
    TimerADDBaseAvisFichierConcerne: TTimer;
    IncrimentEditMaxColWidth: TUpDown;
    EditMaxColWidth: TEdit;
    AfficheNouvelleSituation: TPanel;
    BitValiderNewSituation: TBitBtn;
    EditDesignationSituationNew: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    EditNSituationMarcheNew: TEdit;
    Label19: TLabel;
    EditNSMarcheNew: TEdit;
    Label20: TLabel;
    EditNAttachementNew: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    EditModePaiementNew: TEdit;
    Label24: TLabel;
    EditNumDomiciliationNew: TEdit;
    Label26: TLabel;
    EditDomiciliationNew: TEdit;
    Label27: TLabel;
    EditNumPieceNew: TEdit;
    Label28: TLabel;
    EditMontantSituationTTCBrutNew: TEdit;
    EditRetenueGarantieNew: TEdit;
    Label29: TLabel;
    Label30: TLabel;
    EditMontantRetenueGarantieNew: TEdit;
    Label31: TLabel;
    EditMontantSituationTTCNetNew: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    EditListeNumAvisNew: TEdit;
    RBValiditeSituationNew: TCheckBox;
    EditDateSituationMarcheNew: TDateTimePicker;
    RBParStructureNew: TCheckBox;
    RBParStatistiqueNew: TCheckBox;
    Label34: TLabel;
    RBCummulerAttachementNew: TCheckBox;
    Label35: TLabel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    BitBtn15: TBitBtn;
    Bevel17: TBevel;
    Label36: TLabel;
    Bevel18: TBevel;
    BitBtn14: TBitBtn;
    Bevel19: TBevel;
    Bevel20: TBevel;
    Bevel24: TBevel;
    EditNumSituationAfficher: TEdit;
    RBChargerMontantAvisPourSituation: TCheckBox;
    EditMontantAvisModifier: TEdit;
    RBNumerotationParAnnee: TCheckBox;
    AdresseSituationMarche: TPanel;
    procedure EditTypeProjetChange(Sender: TObject);
    procedure EditTypeProjetEnter(Sender: TObject);
    procedure EditTypeProjetKeyPress(Sender: TObject; var Key: Char);
    procedure EditNSMarcheEnter(Sender: TObject);
    procedure EditNStructureMarcheEnter(Sender: TObject);
    procedure EditNStatistiqueMarcheEnter(Sender: TObject);
    procedure TableauSelectionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure TableauLAttachementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauLAttachementClick(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure TableauDecompteSituationClick(Sender: TObject);
    procedure BitValiderOptionsSituationClick(Sender: TObject);
    procedure PageSituationShow(Sender: TObject);
    procedure BitBtn47Click(Sender: TObject);
    procedure BitBtn51Click(Sender: TObject);
    procedure BitValiderSituationClick(Sender: TObject);
    procedure BitBtn54Click(Sender: TObject);
    procedure BitBtn55Click(Sender: TObject);
    procedure BitBtn37Click(Sender: TObject);
    procedure BitBtn86Click(Sender: TObject);
    procedure RBSelectDecompteClick(Sender: TObject);
    procedure BitBtn87Click(Sender: TObject);
    procedure BitVoirListeSituationClick(Sender: TObject);
    procedure BitBtn53Click(Sender: TObject);
    procedure TableauListeSituationClick(Sender: TObject);
    procedure TableauListeSituationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauListeSituationKeyPress(Sender: TObject;
      var Key: Char);
    procedure PageDiagrammeShow(Sender: TObject);
    procedure RBMarcheClick(Sender: TObject);
    procedure RBArticleClick(Sender: TObject);
    procedure EditIntervalEvolutionKeyPress(Sender: TObject;
      var Key: Char);
    procedure RBPasaPasClick(Sender: TObject);
    procedure BitEvolutionMarcheClick(Sender: TObject);
    procedure BitBtn56Click(Sender: TObject);
    procedure TableauDiagrammeStructuresKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtn90Click(Sender: TObject);
    procedure TimerEvolutionMarcheTimer(Sender: TObject);
    procedure BitBtn52Click(Sender: TObject);
    procedure BitActionSituationClick(Sender: TObject);
    procedure IntervallePeriodeAvancementClick(Sender: TObject;
      Button: TUDBtnType);
    procedure BitBtn2Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure BitBtn64Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn67Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure PagePricipaleShow(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure TableauPrincipalClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure TableauAnalyseMontantMarcheClick(Sender: TObject);
    procedure TableauSelectionClick(Sender: TObject);
    procedure TableauSelectionKeyPress(Sender: TObject; var Key: Char);
    procedure BitModifierSituationClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TableauDecompteSituationDblClick(Sender: TObject);
    procedure TableauDetailAttachementDblClick(Sender: TObject);
    procedure AfficheOperationSituationClick(Sender: TObject);
    procedure BitBtn57Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure TableauSituationStructureStatistiqueDblClick(
      Sender: TObject);
    procedure EditListeNumAvisModifierDblClick(Sender: TObject);
    procedure EditListeNumAvisDblClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure TableauListeAvisDblClick(Sender: TObject);
    procedure TableauListeAvisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn13Click(Sender: TObject);
    procedure EditDateDebutAvisChange(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure EditBaseAvisFichierConcerneKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditBaseAvisFichierConcerneSelect(Sender: TObject);
    procedure TimerADDBaseAvisFichierConcerneTimer(Sender: TObject);
    procedure IncrimentEditMaxColWidthClick(Sender: TObject;
      Button: TUDBtnType);
    procedure BitValiderNewSituationClick(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure EditDesignationSituationNewKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditListeNumAvisNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNSituationMarcheNewKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditNSMarcheNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNAttachementNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBValiditeSituationNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDateSituationMarcheNewKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditModePaiementNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumDomiciliationNewKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDomiciliationNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumPieceNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMontantSituationTTCBrutNewKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditRetenueGarantieNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMontantRetenueGarantieNewKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditMontantSituationTTCNetNewKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure RBParStructureNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBParStatistiqueNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBCummulerAttachementNewKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditMontantSituationTTCBrutNewKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditRetenueGarantieNewKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMontantSituationTTCBrutNewEnter(Sender: TObject);
    procedure EditMontantSituationTTCBrutNewExit(Sender: TObject);
    procedure AfficheOptionsSituationMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheOptionPrintApprovisionnementSituationMouseDown(
      Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure AfficheListeSituationMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheNouvelleSituationMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheValiderSituationMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheModifierSituationMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheListeAvisMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AffichePrintParStructureMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheActionListeSituationMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BitBtn14Click(Sender: TObject);
    procedure TableauLAttachementMouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditMontantAvisModifierEnter(Sender: TObject);
    procedure EditMontantAvisModifierExit(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSSituations: TFSSituations;

  Function ProcNouveauNumSituationMarche(NSMarche,NAttachement:integer; RBNumerotationParAnnee:boolean; AnneeSituation:string):integer;
  Function ProcLastNumSituationMarchePeriode(NSMarche:integer; DateLast:string):string;
  Procedure ProcAfficheSituation(ParStructure,ParStatistique,CummuleAttachement:boolean);
  Procedure ProcAfficheSituationMagique(ParStructure,ParStatistique,CummuleAttachement:boolean);
  Procedure ProcAfficheSituationExiste(NumSituation:string; ParStructure,ParStatistique,CummuleAttachement:boolean);
  Function DateDetailAttachement(NSMarche,NAttachement:string):string;
  Procedure TrierSituation(Indice:integer);
  Procedure ProcAfficheStructureStatistique(TableauSituationStructureStatistique:TStringGrid; NSMarche:integer; ParStructure,ParStatistique:boolean);
  Procedure ProcAfficheStructureStatistiqueExiste(TableauSituationStructureStatistique:TStringGrid; NSMarche,NSituation:integer; ParStructure,ParStatistique:boolean);
  Procedure ProcAffichePrincipale(NSMarche:integer);
  Procedure ProcAfficheAvance(NSMarche:integer);
  Procedure ProcRemplireMarche(MPrecedent,MCumule:real);
  Procedure ProcRemplireFormule;
  Procedure ProcRemplireAvance(NFinance:integer; MPrecedent,MCumule,MRetenueMois:real);
  Procedure ClearPrincipale(Indice:integer; Visible:boolean);
  Procedure InitialisationPrincipale(ARow,Indice:integer);
  Procedure TotalPrincipale(Visible:boolean);
  Procedure ClearStatistique(Indice:integer; Visible:boolean);
  Procedure InitialisationStatistique(ARow,Indice:integer);
  Procedure TotalStatistique(Visible:boolean);
  Procedure ClearSituation(Indice:integer; Visible:boolean);
  Procedure InitialisationSituation(ARow,Indice:integer);
  Procedure HeightSituationMarche(Indice:integer; var Position:integer);
  Procedure ProcAfficheListeSituation(TableauListeSituation:TStringGrid; NSMarche:string);
  Procedure ProcAfficheEvolutionMarche(NSMarche:integer);
  Procedure DetailSituationMarche(TableauDetailSituationMarche:TStringGrid;  DateSituationBegin,DateSituationEnd:string; NSMarche,NStructure,NStatistique,NAvenant:integer; ParStructure,ParStatistique,CummuleAttachement:boolean);
  Procedure ListeDetailSituationMarche(TableauDetailSituationMarche:TStringGrid; NumSituation,NSMarche,AnneeSituation:string);
  Procedure CumuleSituationMarchePeriode(NSMarche,DateBegin,DateEnde:string; var CumulSituationTTCBrut,ValeurRetenueGarantie,CumulRetenueGarantie,CumulSituationTTCNet:real; var NombreSituation:integer);
  Procedure MiseAJourValeurStatistique(TableauStatistique:TStringGrid; NSituation:integer);
  Procedure InitialisationFSSituation;

implementation

Uses   UnitInitialisation, UnitSuppression ,UnitFSMarche,
       UnitFSMenuPrincipal, UnitPrintAttachement, UnitFSAttachements,
  UnitPrintPrincipaleSituationMarche, UnitPrintRecapitulatifSituationMarche,
  UnitPrintSituationMarche, UnitPrintDiagramme, UnitPrintDiagrammeDouble,
  UnitFSApprovisionnement, UnitFSDetailMarche, UnitFSFicheSaisie, UnitFSGenerateurBase;

{$R *.dfm}

procedure TFSSituations.EditTypeProjetChange(Sender: TObject);
begin
     FSSituations.EditNSMarche.Text:='';
     FSSituations.EditMarche.Text:='';
     FSSituations.EditSourceStatistiqueMarche.Text:='';
     FSSituations.EditNStructureMarche.Text:='';
     FSSituations.EditStructureMarche.Text:='';
     FSSituations.EditNStatistiqueMarche.Text:='';
     FSSituations.EditStatistiqueMarche.Text:='';
     FSSituations.EditCodeMaitreOuvrage.Text:='';
     FSSituations.EditMaitreOuvrage.Text:='';

     FSSituations.LabelNatureProjet.Caption:=FSSituations.EditTypeProjet.Text;
end;

procedure TFSSituations.EditTypeProjetEnter(Sender: TObject);
begin
     FSSituations.TableauSelection.Visible:=false;
end;

procedure TFSSituations.EditTypeProjetKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSSituations.EditNSMarcheEnter(Sender: TObject);
begin
     InitialisationFSSituation;
     
     FSSituations.TableauSelection.Visible:=true;
     FSSituations.TableauSelection.Top:=FSSituations.AfficheMarche.Top+FSSituations.EditNSMarche.Top+FSSituations.EditNSMarche.Height+2;
     FSSituations.TableauSelection.Left:=FSSituations.AfficheMarche.Left+FSSituations.EditNSMarche.Left;
     ProcAfficheMarche(FSSituations.TableauSelection,FSSituations.EditTypeProjet.Text,'');
     FSSituations.TableauSelection.Cells[0,0]:='Mch';
     FSSituations.TableauSelection.SetFocus;

     FSSituations.AdresseSituationMarche.Caption:=FSMarche.AfficheAdresseMarche.Caption;
end;

procedure TFSSituations.EditNStructureMarcheEnter(Sender: TObject);
begin
     InitialisationFSSituation;
     
     FSSituations.TableauSelection.Visible:=true;
     FSSituations.TableauSelection.Top:=FSSituations.AfficheMarche.Top+FSSituations.EditNStructureMarche.Top+FSSituations.EditNStructureMarche.Height+2;
     FSSituations.TableauSelection.Left:=FSSituations.AfficheMarche.Left+FSSituations.EditNStructureMarche.Left;
     ProcAfficheStructureMarche(FSSituations.TableauSelection,FSSituations.EditNSMarche.Text);
     FSSituations.TableauSelection.Cells[0,0]:='Str';
     FSSituations.TableauSelection.SetFocus;
end;

procedure TFSSituations.EditNStatistiqueMarcheEnter(Sender: TObject);
begin
     InitialisationFSSituation;
     
     FSSituations.TableauSelection.Visible:=true;
     FSSituations.TableauSelection.Top:=FSSituations.AfficheMarche.Top+FSSituations.EditNStatistiqueMarche.Top+FSSituations.EditNStatistiqueMarche.Height+2;
     FSSituations.TableauSelection.Left:=FSSituations.AfficheMarche.Left+FSSituations.EditNStatistiqueMarche.Left;
     ProcAfficheStatistiqueMarche(FSSituations.TableauSelection,FSSituations.EditNSMarche.Text,FSSituations.EditNStructureMarche.Text);
     FSSituations.TableauSelection.Cells[0,0]:='Stq';
     FSSituations.TableauSelection.SetFocus;
end;

procedure TFSSituations.TableauSelectionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  NSMarche,NStructureMarche,NStatistique,NAttachement:integer;  TypeProces,FichierConcerne:string;
begin
     if key in[VK_ESCAPE]then
     begin
          FSSituations.TableauSelection.Visible:=false;
          FSSituations.TableauDecompteSituation.SetFocus;
     end;

     if key in[VK_RETURN]then
     begin
          if(FSSituations.TableauSelection.Cells[0,0]='Choix')then
          begin
               FSSituations.EditNStructureMarche.Text:=FSSituations.TableauSelection.Cells[3,FSSituations.TableauSelection.Row];
               FSSituations.EditStructureMarche.Text:=FSSituations.TableauSelection.Cells[4,FSSituations.TableauSelection.Row];
               FSSituations.EditNStatistiqueMarche.Text:=FSSituations.TableauSelection.Cells[5,FSSituations.TableauSelection.Row];
               FSSituations.EditStatistiqueMarche.Text:=FSSituations.TableauSelection.Cells[6,FSSituations.TableauSelection.Row];
               FSSituations.TableauSelection.Visible:=false;
               FSSituations.TableauDecompteSituation.SetFocus;
          end
          else
          if(FSSituations.TableauSelection.Cells[0,0]='Stq')then
          begin
               FSSituations.EditNStatistiqueMarche.Text:=FSSituations.TableauSelection.Cells[3,FSSituations.TableauSelection.Row];
               FSSituations.EditStatistiqueMarche.Text:=FSSituations.TableauSelection.Cells[4,FSSituations.TableauSelection.Row];
               FSSituations.TableauSelection.Visible:=false;
               FSSituations.TableauDecompteSituation.SetFocus;
          end
          else
          if(FSSituations.TableauSelection.Cells[0,0]='Str')then
          begin
               FSSituations.EditNStructureMarche.Text:=FSSituations.TableauSelection.Cells[2,FSSituations.TableauSelection.Row];
               FSSituations.EditStructureMarche.Text:=FSSituations.TableauSelection.Cells[3,FSSituations.TableauSelection.Row];
               FSSituations.TableauSelection.Visible:=false;
               FSSituations.EditNStatistiqueMarche.SetFocus;
               FSSituations.EditNStatistiqueMarche.Text:='';
               FSSituations.EditStatistiqueMarche.Text:='';
          end
          else
          if(FSSituations.TableauSelection.Cells[0,0]='Mch')then
          begin
               FSSituations.EditNSMarche.Text:=FSSituations.TableauSelection.Cells[1,FSSituations.TableauSelection.Row];
               FSSituations.EditMarche.Text:=FSSituations.TableauSelection.Cells[4,FSSituations.TableauSelection.Row];
               FSSituations.EditSourceStatistiqueMarche.Text:=FSSituations.TableauSelection.Cells[18,FSSituations.TableauSelection.Row];

               RMarcheCopie:=ChercherMarche(strtointeger(FSSituations.EditNSMarche.Text));

               TypeProces:=RMarcheCopie.TypeProces; FichierConcerne:=RMarcheCopie.FichierConcerneTiers;
               RTiers:=ChercherTiers(TypeProces,FichierConcerne,FSSituations.TableauSelection.Cells[5,FSSituations.TableauSelection.Row],'');
               FSSituations.EditCodeMaitreOuvrage.Text:=RTiers.CodeTiers;
               FSSituations.EditMaitreOuvrage.Text:=RTiers.NomTiers+' '+RTiers.PrenomTiers;

               if(FSSituations.RBAutoBaseAvisFichierConcerne.Checked=true)
               then FSSituations.EditBaseAvisFichierConcerne.Text:=IndiqueBaseAvis(FichierConcerne);



               AfficheValeuresStatistiqueMarche(FSSituations.TableauAnalyseMontantMarche,FSSituations.EditNSMarche.Text);

               FSSituations.EditNStructureMarche.Text:='';
               FSSituations.EditStructureMarche.Text:='';
               FSSituations.EditNStatistiqueMarche.Text:='';
               FSSituations.EditStatistiqueMarche.Text:='';

               ListeAvenantMarche(FSSituations.TableauAvenantMarche,FSSituations.EditNSMarche.Text);

               ListeStructureStatistiqueExistante(FSSituations.TableauSelection,strtointeger(FSSituations.EditNSMarche.Text));
               FSSituations.TableauSelection.Cells[0,0]:='Choix';
          end;

          if(FSSituations.EditNStructureMarche.Text<>'')then FSSituations.IndiceAfficheStructure.Text:='1' else FSSituations.IndiceAfficheStructure.Text:='0';
          if(FSSituations.EditNStatistiqueMarche.Text<>'')then FSSituations.IndiceAfficheStatistique.Text:='1' else FSSituations.IndiceAfficheStatistique.Text:='0';
          if(FSSituations.EditNAttachementMarche.Text<>'')then FSSituations.IndiceAfficheAttachement.Text:='1' else FSSituations.IndiceAfficheAttachement.Text:='0';
     end;
end;

procedure TFSSituations.BitBtn1Click(Sender: TObject);
begin
     InitialisationFSSituation;

     FSSituations.TableauSelection.Visible:=false;
     FSSituations.TableauLAttachement.Visible:=true;
     ProcAfficheAttachement(FSSituations.TableauLAttachement,FSSituations.EditNSMarche.Text,FSSituations.EditNAttachementMarche.Text,False);
     FSSituations.AdresseSituationMarche.Caption:=FSAttachements.AfficheAdresseAttachement.Caption;
end;

procedure TFSSituations.TableauLAttachementKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  NumSituation:string; NSMarche,NStructureMarche,NStatistique,NAttachement:integer;   OKStructure,OKStatistique:boolean;
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.EditNSituationMarche.Text:='';
          FSSituations.EditNAttachementMarche.Text:=FSSituations.TableauLAttachement.Cells[3,FSSituations.TableauLAttachement.Row];
          FSSituations.EditDateAttachement.Text:=FSSituations.TableauLAttachement.Cells[4,FSSituations.TableauLAttachement.Row];
          if(FSSituations.EditNAttachementMarche.Text<>'')then FSSituations.IndiceAfficheAttachement.Text:='1' else FSSituations.IndiceAfficheAttachement.Text:='0';

          NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
          NStructureMarche:=strtointeger(FSSituations.EditNStructureMarche.Text)*strtointeger(FSSituations.IndiceAfficheStructure.Text);
          NStatistique:=strtointeger(FSSituations.EditNStatistiqueMarche.Text)*strtointeger(FSSituations.IndiceAfficheStatistique.Text);
          NAttachement:=strtointeger(FSSituations.EditNAttachementMarche.Text)*strtointeger(FSSituations.IndiceAfficheAttachement.Text);

          RSituationMarcheCopie:=ChercherSituationMarche(FSSituations.EditNSMarche.Text,'',FSSituations.EditNAttachementMarche.Text);
          FSSituations.EditNSituationMarche.Text:=Inttostr(ProcNouveauNumSituationMarche(strtointeger(FSSituations.EditNSMarche.Text),strtointeger(FSSituations.EditNAttachementMarche.Text),FSSituations.RBNumerotationParAnnee.Checked,Lastlaters(FSSituations.EditDateAttachement.text,4)));

          ProcAfficheDetailAttachement(FSSituations.TableauDetailAttachement,NSMarche,NStructureMarche,NStatistique,NAttachement);

          FSSituations.TableauLAttachement.Visible:=false;

          NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);

          FSSituations.AfficheOptionsSituation.Visible:=true;

          FSSituations.RBSituationParMarche.Enabled:=true;
          FSSituations.RBSituationParMarche.Checked:=true;
          FSSituations.RBSituationParMarche.SetFocus;

          FSSituations.RBSituationParStructure.Checked:=false;
          FSSituations.RBSituationParStructure.Enabled:=false;

          FSSituations.RBSituationParStatistique.Checked:=false;
          FSSituations.RBSituationParStatistique.Enabled:=false;

          FSSituations.RBDistinguerAttachements.Checked:=true;

          //NumSituation:=ProcLastNumSituationMarchePeriode(NSMarche,FSSituations.TableauLAttachement.Cells[4,FSSituations.TableauLAttachement.Row]);
          NumSituation:=FSSituations.EditNSituationMarche.Text;
          ListeDetailSituationMarche(FSSituations.TableauDetailSituationMarche,NumSituation,FSSituations.EditNSMarche.Text,lastlaters(FSSituations.EditDateAttachement.Text,4));
          if(FSSituations.TableauDetailSituationMarche.RowCount>=2)and(FSSituations.TableauDetailSituationMarche.Cells[10,1]<>'')
          then FSSituations.RBCalculeABaseDetailSituationMarcheAnterieure.Checked:=true
          else FSSituations.RBCalculeABaseTousAttachements.Checked:=true;

          {***************** Structure ********************}
          TypeProces:='Business'; FichierConcerne:='FStructureMarche';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChStructureMarche:=Adresse;
          assignfile(FStructureMarche,ChStructureMarche);
          if FileExists(ChStructureMarche)then
          Reset(FStructureMarche)
          else Rewrite(FStructureMarche);
          Seek(FStructureMarche,0);
          OKStructure:=false;
          while not eof(FStructureMarche)and(OKStructure=false)do
          begin
               Read(FStructureMarche,RStructureMarche);
               if(RStructureMarche.NSMarche=NSMarche)then
               begin
                    OKStructure:=true;
                    FSSituations.RBSituationParStructure.Enabled:=true;
               end;
          end;
          CloseFile(FStructureMarche);
          {***************** Statistique ********************}
          TypeProces:='Business'; FichierConcerne:='FStatistiqueMarche';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChStatistiqueMarche:=Adresse;
          assignfile(FStatistiqueMarche,ChStatistiqueMarche);
          if FileExists(ChStatistiqueMarche)then
          Reset(FStatistiqueMarche)
          else Rewrite(FStatistiqueMarche);
          Seek(FStatistiqueMarche,0);
          OKStatistique:=false;
          OKStatistique:=false;
          while not eof(FStatistiqueMarche)and(OKStatistique=false)do
          begin
               Read(FStatistiqueMarche,RStatistiqueMarche);
               if(RStatistiqueMarche.NSMarche=NSMarche)then
               begin
                    OKStatistique:=true;
                    FSSituations.RBSituationParStatistique.Enabled:=true;
               end;
          end;
          CloseFile(FStatistiqueMarche);


          if(OKStructure=true)then
          begin
               if(FSSituations.EditSourceStatistiqueMarche.Text='StructureMarché')then
               begin
                    FSSituations.RBSituationParStructure.Checked:=true;
                    FSSituations.RBSituationParStructure.SetFocus;
               end;

          end;
     end;
end;

procedure TFSSituations.TableauLAttachementClick(Sender: TObject);
begin
     FSSituations.AfficheOptionsSituation.Visible:=false;
end;

procedure TFSSituations.BitBtn27Click(Sender: TObject);
begin
     FSSituations.AfficheOptionsSituation.Visible:=false;
end;

procedure TFSSituations.TableauDecompteSituationClick(Sender: TObject);
begin
     FSSituations.AfficheOptionsSituation.Visible:=false;
     FSSituations.TableauSelection.Visible:=false;
     FSSituations.TableauLAttachement.Visible:=false;
end;

procedure TFSSituations.BitValiderOptionsSituationClick(Sender: TObject);
var ParStructure,ParStatistique,CummuleAttachement:boolean;
    C,NSMarche,NStructure,NStatistique,NAvenant:integer;
    DateSituationBegin,DateSituationEnd:string;
begin

DateSituationBegin:=FSSituations.EditDateAttachement.Text;
DateSituationEnd:=FSSituations.EditDateAttachement.Text;

ParStructure:=FSSituations.RBSituationParStructure.Checked;
ParStatistique:=FSSituations.RBSituationParStatistique.Checked;
CummuleAttachement:=FSSituations.RBCummulerAttachements.Checked;

NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
NStructure:=strtointeger(FSSituations.EditNStructureMarche.Text)*strtointeger(FSSituations.IndiceAfficheStructure.Text);
NStatistique:=strtointeger(FSSituations.EditNStatistiqueMarche.Text)*strtointeger(FSSituations.IndiceAfficheStatistique.Text);
NAvenant:=strtointeger(FSSituations.EditSituationNAvenant.Text)*strtointeger(FSSituations.IndiceAffichageAvenantSituation.Text);

FSSituations.EditOptionSituationParStructure.Text:=booltostr(ParStructure);
FSSituations.EditOptionSituationParStatistique.Text:=booltostr(ParStatistique);
FSSituations.EditCummulerAttachement.Text:=booltostr(CummuleAttachement);

if(FSSituations.RBCalculeABaseDetailSituationMarcheAnterieure.Checked=true)
then ProcAfficheSituationMagique(ParStructure,ParStatistique,CummuleAttachement)
else ProcAfficheSituation(ParStructure,ParStatistique,CummuleAttachement);

DetailSituationMarche(FSSituations.TableauDetailSituationMarche,DateSituationBegin,DateSituationEnd,NSMarche,NStructure,NStatistique,NAvenant,ParStructure,ParStatistique,CummuleAttachement);

FSSituations.TableauDecompteSituation.SetFocus;
FSSituations.AfficheOptionsSituation.Visible:=false;

for C:=1 to FSSituations.TableauDecompteSituation.ColCount-1 do
begin
     if(FSSituations.TableauDecompteSituation.ColWidths[C]>strtointeger(FSSituations.EditMaxColWidth.Text))then FSSituations.TableauDecompteSituation.ColWidths[C]:=strtointeger(FSSituations.EditMaxColWidth.Text);
end;
end;

Procedure ProcAfficheSituation(ParStructure,ParStatistique,CummuleAttachement:boolean);
var  OK,OKStructure,OKStatistique,OKDecision,OKCode,OKCode1,OKCode2,OKPalceMois:boolean;
     i,R,C,l,j,NSMarche,NStructure,NStatistique,NAvenant,RowMax,RowGlobal,ARow,Mois,MoisP:integer;
     Quantite,QuantiteObjetMarche,QuantiteObjetAvenant,RetenueGarantie:real; CodeStructureSituation,DateAttachement:string[10];
     IntituleProjet,IntituleEtat,NotCol,NumSituation:string;
begin

IntituleProjet:=FSSituations.EditTypeProjet.Text;
IntituleEtat:='Situation';

NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
NStructure:=strtointeger(FSSituations.EditNStructureMarche.Text)*strtointeger(FSSituations.IndiceAfficheStructure.Text);
NStatistique:=strtointeger(FSSituations.EditNStatistiqueMarche.Text)*strtointeger(FSSituations.IndiceAfficheStatistique.Text);
NAvenant:=strtointeger(FSSituations.EditSituationNAvenant.Text)*strtointeger(FSSituations.IndiceAffichageAvenantSituation.Text);

FSSituations.TableauDecompteSituation.ColCount:=17;
FSSituations.TableauDecompteSituation.Cols[0].Text:='N°';
FSSituations.TableauDecompteSituation.Cols[1].Text:='Désignation';
FSSituations.TableauDecompteSituation.Cols[2].Text:='U';
FSSituations.TableauDecompteSituation.Cols[3].Text:='Q.'+IntituleProjet;
FSSituations.TableauDecompteSituation.Cols[4].Text:='Qte.Précéd.';
FSSituations.TableauDecompteSituation.Cols[5].Text:='Qte.Mois';
FSSituations.TableauDecompteSituation.Cols[6].Text:='Qte.Cummulé';
FSSituations.TableauDecompteSituation.Cols[7].Text:='P.U.';
FSSituations.TableauDecompteSituation.Cols[8].Text:='M.Précéd.';
FSSituations.TableauDecompteSituation.Cols[9].Text:='M.Mois';
FSSituations.TableauDecompteSituation.Cols[10].Text:='M.Cummulé';
FSSituations.TableauDecompteSituation.Cols[11].Text:='Trie';
FSSituations.TableauDecompteSituation.Cols[12].Text:=IntituleProjet;
FSSituations.TableauDecompteSituation.Cols[13].Text:='Code Produit';
FSSituations.TableauDecompteSituation.Cols[14].Text:='Qte.Avenant';
FSSituations.TableauDecompteSituation.Cols[15].Text:='Qte.Mois.O.M';
FSSituations.TableauDecompteSituation.Cols[16].Text:='Qte.Mois.O.A';

TypeProces:='Business'; FichierConcerne:='FDetailAttachement'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDetailAttachement:=Adresse;
assignfile(FDetailAttachement,ChDetailAttachement);
if FileExists(ChDetailAttachement)then
Reset(FDetailAttachement)
else Rewrite(FDetailAttachement);
Seek(FDetailAttachement,0);
i:=0;
R:=0;
Mois:=strtointeger(FSSituations.EditDateAttachement.Text[7]+
                   FSSituations.EditDateAttachement.Text[8]+
                   FSSituations.EditDateAttachement.Text[9]+
                   FSSituations.EditDateAttachement.Text[10]+
                   FSSituations.EditDateAttachement.Text[4]+
                   FSSituations.EditDateAttachement.Text[5]);

while not eof(FDetailAttachement) do
begin
     Read(FDetailAttachement,RDetailAttachement);   
     if(stringtodate(DateDetailAttachement(inttostr(NSMarche),inttostr(RDetailAttachement.NAttachement)),'Date Détail attachement '+RDetailAttachement.DesignationArticle)<=stringtodate(FSSituations.EditDateAttachement.Text,'FSSituations.EditDateAttachement.Text'))
     and(Strtointeger(DTrie('M',RDetailAttachement.CodeTrie))=NSMarche)then
     begin
          OKStructure:=true;
          if(NStructure<>0)then
          begin
               if(Strtointeger(DTrie('S',RDetailAttachement.CodeTrie))=NStructure)
               then OKStructure:=true
               else OKStructure:=false;
          end
          else OKStructure:=true;

          if(OKStructure=true)then
          begin
               if(NStatistique<>0)then
               begin
                    if(Strtointeger(DTrie('T',RDetailAttachement.CodeTrie))=NStatistique)
                    then OKStatistique:=true
                    else OKStatistique:=false;
               end
          else OKStatistique:=true;
          end;

          OKDecision:=false;
          if(FSSituations.EditTypeProjet.Text='Marche')then
          begin
               Quantite:=0;
               QuantiteObjetMarche:=0;
               if(RDetailAttachement.QuantiteAttachementRealise<>0)then
               begin
                    OKDecision:=true;
                    Quantite:=RDetailAttachement.QuantiteAttachementRealise;

                    if(RDetailAttachement.QuantiteAttachementObjetMarche<>0)
                    then
                    begin
                         QuantiteObjetMarche:=RDetailAttachement.QuantiteAttachementObjetMarche;
                    end;

                    if((RDetailAttachement.QuantiteAttachementObjetAvenant)<>0)
                    then
                    begin
                         QuantiteObjetAvenant:=RDetailAttachement.QuantiteAttachementObjetAvenant;
                    end;
               end
               else OKDecision:=false;
          end
          else
          if(FSSituations.EditTypeProjet.Text='Avenant')then
          begin
               if(Strtointeger(DTrie('A',RDetailAttachement.CodeTrie))=NAvenant)then
               begin
                    if(RDetailAttachement.QuantiteAttachementRealise<>0)then
                    begin
                         if((RDetailAttachement.QuantiteAttachementObjetAvenant)<>0)
                         then
                         begin
                              OKDecision:=true;
                              QuantiteObjetAvenant:=RDetailAttachement.QuantiteAttachementObjetAvenant;
                         end
                         else OKDecision:=false;
                    end
                    else
                    begin
                         if(Strtointeger(DTrie('A',RDetailAttachement.CodeTrie))>0)
                         then OKDecision:=true
                         else OKDecision:=false;
                    end;
               end
               else OKDecision:=false;
          end;
     end
     else
     begin
          OKStructure:=false;
          OKStatistique:=false;
          OKDecision:=false;
     end;

     if((OKStructure=true)and(OKStatistique=true)and(OKDecision=true))
     then
     begin
          OKPalceMois:=false;
          DateAttachement:=DateDetailAttachement(inttostr(NSMarche),inttostr(RDetailAttachement.NAttachement));
          if(CummuleAttachement=true)then
          begin
               MoisP:=strtointeger(DateAttachement[7]+
                                   DateAttachement[8]+
                                   DateAttachement[9]+
                                   DateAttachement[10]+
                                   DateAttachement[4]+
                                   DateAttachement[5]);
               if(MoisP=Mois)then OKPalceMois:=true
               else
               if(MoisP<Mois)then OKPalceMois:=false;
          end
          else
          begin
               if(stringtodate(DateAttachement,'DateAttachement '+inttostr(RDetailAttachement.NAttachement))=stringtodate(FSSituations.EditDateAttachement.Text,'FSSituations.EditDateAttachement.Text'))
               then OKPalceMois:=true
               else
               if(stringtodate(DateAttachement,'DateAttachement '+inttostr(RDetailAttachement.NAttachement))<stringtodate(FSSituations.EditDateAttachement.Text,'FSSituations.EditDateAttachement.Text'))
               then OKPalceMois:=false;
          end;

          OK:=false;
          i:=1;
          while(i<=R)and(OK=false)do
          begin
               if(TrieOptionArticleSituation(RDetailAttachement.CodeTrie,ParStructure,ParStatistique)=
                  TrieOptionArticleSituation(FSSituations.TableauDecompteSituation.Cells[11,i],ParStructure,ParStatistique))
               then
               begin
                    OK:=true;
                    if(OKPalceMois=true)then
                    begin
                         FSSituations.TableauDecompteSituation.Cells[5,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[5,i])+Quantite);
                         FSSituations.TableauDecompteSituation.Cells[6,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[6,i])+Quantite);

                         FSSituations.TableauDecompteSituation.Cells[15,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[15,i])+QuantiteObjetMarche);
                         FSSituations.TableauDecompteSituation.Cells[16,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[16,i])+QuantiteObjetAvenant);
                    end
                    else
                    begin
                         FSSituations.TableauDecompteSituation.Cells[4,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[4,i])+Quantite);
                         FSSituations.TableauDecompteSituation.Cells[6,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[6,i])+Quantite);
                    end;
               end;
          i:=i+1;
          end;

          if(OK=false)then
          begin
               R:=R+1;
               FSSituations.TableauDecompteSituation.Rows[R].Text:='';
               FSSituations.TableauDecompteSituation.Cells[0,R]:=RDetailAttachement.NArticle;
               FSSituations.TableauDecompteSituation.Cells[1,R]:=RDetailAttachement.DesignationArticle;
               FSSituations.TableauDecompteSituation.Cells[2,R]:=RDetailAttachement.UniteM;
               FSSituations.TableauDecompteSituation.Cells[3,R]:='0';

               if(OKPalceMois=true)then
               begin
                    FSSituations.TableauDecompteSituation.Cells[4,R]:='0';
                    FSSituations.TableauDecompteSituation.Cells[5,R]:=floattostr(Quantite);
                    FSSituations.TableauDecompteSituation.Cells[6,R]:=floattostr(Quantite);

                    FSSituations.TableauDecompteSituation.Cells[15,R]:=floattostr(QuantiteObjetMarche);
                    FSSituations.TableauDecompteSituation.Cells[16,R]:=floattostr(QuantiteObjetAvenant);
               end
               else
               begin
                    FSSituations.TableauDecompteSituation.Cells[4,R]:=floattostr(Quantite);
                    FSSituations.TableauDecompteSituation.Cells[5,R]:='0';
                    FSSituations.TableauDecompteSituation.Cells[6,R]:=floattostr(Quantite);
               end;

               FSSituations.TableauDecompteSituation.Cells[7,R]:=floattostr(RDetailAttachement.PrixUnitaire);
               FSSituations.TableauDecompteSituation.Cells[8,R]:='0';
               FSSituations.TableauDecompteSituation.Cells[9,R]:='0';
               FSSituations.TableauDecompteSituation.Cells[10,R]:='0';
               FSSituations.TableauDecompteSituation.Cells[11,R]:=TrieOptionArticleSituation(RDetailAttachement.CodeTrie,ParStructure,ParStatistique);
               FSSituations.TableauDecompteSituation.Cells[12,R]:='0';
               FSSituations.TableauDecompteSituation.Cells[13,R]:=RDetailAttachement.CodeStock;
          end;
     end;
end;
CloseFile(FDetailAttachement);

for i:=1 to R do
begin
     TypeProces:='Business'; FichierConcerne:='FDetail'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChDetailMarche:=Adresse;
     assignfile(FDetailMarche,ChDetailMarche);
     if FileExists(ChDetailMarche)then
     Reset(FDetailMarche)
     else Rewrite(FDetailMarche);
     Seek(FDetailMarche,0);
     OK:=false;
     while not eof(FDetailMarche)do
     begin
          Read(FDetailMarche,RDetailMarche);
          if((strtointeger(DTrie('A',RDetailMarche.CodeTrie))=NAvenant)
          and(TrieOptionArticleSituation(RDetailMarche.CodeTrie,ParStructure,ParStatistique)=TrieOptionArticleSituation(FSSituations.TableauDecompteSituation.Cells[11,i],ParStructure,ParStatistique)))
          then
          begin
               OK:=true;
               if(RDetailMarche.QuantiteGlobale>0)then
               FSSituations.TableauDecompteSituation.Cells[3,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[3,i])+RDetailMarche.QuantiteGlobale);
          end;
     end;
     CloseFile(FDetailMarche);

     FSSituations.TableauDecompteSituation.Cells[14,i]:=floattostr(FuntionQuantiteListeAvenantMarche(FSSituations.TableauAvenantMarche,FSSituations.TableauDecompteSituation.Cells[11,i],ParStructure,ParStatistique));

     if(OK=true)then//and(strtoreal(FSSituations.TableauDecompteSituation.Cells[3,i])>0))then
     begin
     FSSituations.TableauDecompteSituation.Cells[3,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[3,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[4,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[4,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[5,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[5,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[6,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[6,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[7,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[7,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[8,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[4,i])*strtoreal(FSSituations.TableauDecompteSituation.Cells[7,i])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[9,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[5,i])*strtoreal(FSSituations.TableauDecompteSituation.Cells[7,i])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[10,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[12,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[3,i])*strtoreal(FSSituations.TableauDecompteSituation.Cells[7,i])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[15,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[15,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[16,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[16,i],'3','N','');
     end
     else
     begin
     FSSituations.TableauDecompteSituation.Cells[3,i]:='';
     FSSituations.TableauDecompteSituation.Cells[4,i]:='';
     FSSituations.TableauDecompteSituation.Cells[5,i]:='';
     FSSituations.TableauDecompteSituation.Cells[6,i]:='';
     FSSituations.TableauDecompteSituation.Cells[7,i]:='';
     FSSituations.TableauDecompteSituation.Cells[8,i]:='';
     FSSituations.TableauDecompteSituation.Cells[9,i]:='';
     FSSituations.TableauDecompteSituation.Cells[10,i]:='';
     FSSituations.TableauDecompteSituation.Cells[12,i]:='';
     FSSituations.TableauDecompteSituation.Cells[15,i]:='';
     FSSituations.TableauDecompteSituation.Cells[16,i]:='';
     end;
end;

if(R>0)then FSSituations.TableauDecompteSituation.RowCount:=R+1
       else
       begin
            FSSituations.TableauDecompteSituation.RowCount:=2;
            FSSituations.TableauDecompteSituation.Rows[1].Text:='';
       end;

if(R>0)then
begin
TrierSituation(11);
RowGlobal:=FSSituations.TableauDecompteSituation.RowCount;
RowMax:=RowGlobal+2;
//FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+3;
FSSituations.TableauDecompteSituation.Rows[RowGlobal].Text:='';
FSSituations.TableauDecompteSituation.Cells[0,RowGlobal]:='';
FSSituations.TableauDecompteSituation.Cells[1,RowGlobal]:='Montant H.T. '+IntituleEtat;
FSSituations.TableauDecompteSituation.Cells[11,RowGlobal]:='ZZZ';
FSSituations.TableauDecompteSituation.Cells[8,RowGlobal]:='0,000';
FSSituations.TableauDecompteSituation.Cells[9,RowGlobal]:='0,000';
FSSituations.TableauDecompteSituation.Cells[10,RowGlobal]:='0,000';
FSSituations.TableauDecompteSituation.Cells[12,RowGlobal]:='0,000';
FSSituations.TableauDecompteSituation.Cells[13,RowGlobal]:='';
j:=0;
R:=1;
while(R<=RowGlobal-1)do
begin
     if(FSSituations.TableauDecompteSituation.Cells[11,R]<>'')
     then
     begin
     FSSituations.TableauDecompteSituation.Cells[8,RowGlobal]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,RowGlobal])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[9,RowGlobal]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,RowGlobal])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[10,RowGlobal]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,RowGlobal])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[12,RowGlobal]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,RowGlobal])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
          OKCode:=false;
          OKCode1:=false;
          OKCode2:=false;
          i:=RowGlobal+1;
          while((i<=RowMax)and((OKCode=false)or(OKCode1=false)or(OKCode2=false)))do
          begin
               if FSSituations.TableauDecompteSituation.Cells[11,i]=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],15)+'00.00.00.00'
               then
               begin
                    OKCode:=true;
                    FSSituations.TableauDecompteSituation.Cells[8,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[9,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[10,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[12,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
               end;
               if(FSSituations.TableauDecompteSituation.Cells[11,i]=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],17)+'.ZZ')
               then
               begin
                    OKCode1:=true;
                    FSSituations.TableauDecompteSituation.Cells[8,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[9,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[10,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[12,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
               end;
               if(FSSituations.TableauDecompteSituation.Cells[11,i]=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],20)+'.ZZ')
               then
               begin
                    OKCode2:=true;
                    FSSituations.TableauDecompteSituation.Cells[8,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[9,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[10,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[12,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
               end;
          i:=i+1;
          end;

          if(OKCode=false)then
          begin
               //FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+(2*j);
               RowMax:=RowMax+(2*j);
               FSSituations.TableauDecompteSituation.Rows[RowMax-1].Text:='';
               FSSituations.TableauDecompteSituation.Rows[RowMax].Text:='';

               RStructureMarche:=ChercherStructureMarche(strtointeger(DTrie('M',FSSituations.TableauDecompteSituation.Cells[11,R])),strtointeger(DTrie('S',FSSituations.TableauDecompteSituation.Cells[11,R])));
               RStatistiqueMarche:=ChercherStatistiqueMarche(strtointeger(DTrie('M',FSSituations.TableauDecompteSituation.Cells[11,R])),strtointeger(DTrie('T',FSSituations.TableauDecompteSituation.Cells[11,R])));

               if(RStructureMarche.StructureMarche='')
               and(RStatistiqueMarche.StatistiqueMarche='')
               then  FSSituations.TableauDecompteSituation.Cells[1,RowMax-1]:='Marché Global:'
               else FSSituations.TableauDecompteSituation.Cells[1,RowMax-1]:=RStructureMarche.StructureMarche+': '+RStatistiqueMarche.StatistiqueMarche;
               FSSituations.TableauDecompteSituation.Cells[11,RowMax-1]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],15)+'00.00.00.00';
               FSSituations.TableauDecompteSituation.Rows[RowMax].Text:='';

               FSSituations.TableauDecompteSituation.Cells[1,RowMax]:='Montant H.T  '+RStructureMarche.StructureMarche;
               FSSituations.TableauDecompteSituation.Cells[11,RowMax]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],15)+'Z';
               FSSituations.TableauDecompteSituation.Cells[8,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[9,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[10,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[12,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[12,R],'3','N','');
               j:=1;
          end;
          if(OKCode1=false)then
          begin
               //FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+j;
               //ARow:=FSSituations.TableauDecompteSituation.RowCount-1;
               RowMax:=RowMax+j;

               FSSituations.TableauDecompteSituation.Rows[RowMax].Text:='';

               FSSituations.TableauDecompteSituation.Cells[1,RowMax]:='Total: '+LastLaters(FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],17),2);
               FSSituations.TableauDecompteSituation.Cells[11,RowMax]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],17)+'.ZZ';
               FSSituations.TableauDecompteSituation.Cells[8,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[9,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[10,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[12,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[12,R],'3','N','');
               j:=1;
          end;
          if(OKCode2=false)
          and((FSSituations.TableauDecompteSituation.Cells[2,R]='')or(FSSituations.TableauDecompteSituation.Cells[7,R]=''))
          and(longueur(FSSituations.TableauDecompteSituation.Cells[11,R])=26)   //31
          and(Lastlaters(FSSituations.TableauDecompteSituation.Cells[11,R],8)<>'00.00.00')
          then
          begin
               //FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+j;
               //ARow:=FSSituations.TableauDecompteSituation.RowCount-1;
               RowMax:=RowMax+1;
               FSSituations.TableauDecompteSituation.Rows[RowMax].Text:='';

               FSSituations.TableauDecompteSituation.Cells[1,RowMax]:='Sous Total: '+LastLaters(FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],20),5);
               FSSituations.TableauDecompteSituation.Cells[11,RowMax]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],20)+'.ZZ';
               FSSituations.TableauDecompteSituation.Cells[8,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[9,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[10,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[12,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[12,R],'3','N','');
               j:=1;
          end;
     end;
R:=R+1;
end;
if(RowMax>0)
then FSSituations.TableauDecompteSituation.RowCount:=RowMax+1
else FSSituations.TableauDecompteSituation.RowCount:=2;

TrierSituation(11);
{************************* STATISTIQUES ****************************}
NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
ProcAfficheStructureStatistique(FSSituations.TableauSituationStructureStatistique,NSMarche,ParStructure,ParStatistique);
FSSituations.RBMarche.Checked:=true;

for ARow:=1 to FSSituations.TableauDecompteSituation.RowCount-1 do
begin
     if(Longueur(FSSituations.TableauDecompteSituation.Cells[11,ARow])>15)
     then
     begin
          if(FSSituations.TableauDecompteSituation.Cells[11,ARow][16]='Z')
          then
          begin
               R:=1;
               while(R<=FSSituations.TableauSituationStructureStatistique.RowCount-1)do
               begin
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=Firstlaters(FSSituations.TableauDecompteSituation.Cells[11,ARow],5))then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[3,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[4,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[5,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[6,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                    end
                    else
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=Firstlaters(FSSituations.TableauDecompteSituation.Cells[11,ARow],10))then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[3,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,R])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,ARow]));
                         FSSituations.TableauSituationStructureStatistique.Cells[4,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,R])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,ARow]));
                         FSSituations.TableauSituationStructureStatistique.Cells[5,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,R])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,ARow]));
                         FSSituations.TableauSituationStructureStatistique.Cells[6,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,R])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,ARow]));
                    end
                    else
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=Firstlaters(FSSituations.TableauDecompteSituation.Cells[11,ARow],15))then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[3,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[4,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[5,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[6,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                    end;

               R:=R+1;
               end;
          end;
     end;
end;

TypeProces:='Business'; FichierConcerne:='FDetail'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDetailMarche:=Adresse;
assignfile(FDetailMarche,ChDetailMarche);
if FileExists(ChDetailMarche)then
Reset(FDetailMarche)
else Rewrite(FDetailMarche);
Seek(FDetailMarche,0);
OK:=false;
FSSituations.EditValeurMarche.Text:='0';
while not eof(FDetailMarche)and(OK=false)do
begin
     Read(FDetailMarche,RDetailMarche);
     if(DTrie('M',RDetailMarche.CodeTrie)=FSSituations.EditNSMarche.Text)
     then
     begin
          CodeStructureSituation:='';
          if((ParStructure=true)or(ParStatistique=true))
          then CodeStructureSituation:=completezerogauche(DTrie('M',RDetailMarche.CodeTrie),'5')+completezerogauche(DTrie('S',RDetailMarche.CodeTrie),'5')
          else CodeStructureSituation:=completezerogauche(DTrie('M',RDetailMarche.CodeTrie),'5')+'00000';

          FSSituations.EditValeurMarche.Text:=floattostr(strtoreal(FSSituations.EditValeurMarche.Text)+(RDetailMarche.QuantiteGlobale*RDetailMarche.PrixUnitaire));
          R:=1;
          while R<=FSSituations.TableauSituationStructureStatistique.RowCount-1 do
          begin
               if(Longueur(FSSituations.TableauSituationStructureStatistique.Cells[0,R])=10)then
               begin
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=CodeStructureSituation)then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[7,R]:=
                         floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[7,R])+(RDetailMarche.QuantiteGlobale*RDetailMarche.PrixUnitaire));
                    end;
               end;

               if(Longueur(FSSituations.TableauSituationStructureStatistique.Cells[0,R])=5)then
               begin
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=completezerogauche(DTrie('M',RDetailMarche.CodeTrie),'5'))then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[7,R]:=
                         floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[7,R])+(RDetailMarche.QuantiteGlobale*RDetailMarche.PrixUnitaire*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                    end;
               end;
          R:=R+1;
          end;
     end;
end;
CloseFile(FDetailMarche);
FSSituations.EditValeurMarche.Text:=vergule(FSSituations.EditValeurMarche.Text,'2','C','')+' DA';

R:=1;
while(R<=FSSituations.TableauSituationStructureStatistique.RowCount-1)do
begin
     if(FSSituations.TableauSituationStructureStatistique.Cells[8,R]<>'')then
     begin
          l:=R;
          while(l<=FSSituations.TableauSituationStructureStatistique.RowCount-1)do
          begin
               if(FSSituations.TableauSituationStructureStatistique.Cells[8,R]=FSSituations.TableauSituationStructureStatistique.Cells[0,l])then
               begin
                    FSSituations.TableauSituationStructureStatistique.Cells[3,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,R]));
                    FSSituations.TableauSituationStructureStatistique.Cells[4,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,R]));
                    FSSituations.TableauSituationStructureStatistique.Cells[5,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,R]));
                    FSSituations.TableauSituationStructureStatistique.Cells[6,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,R]));
                    FSSituations.TableauSituationStructureStatistique.Cells[7,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[7,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[7,R]));
               end;
          l:=l+1;
          end;
     end;
R:=R+1;
end;

NumSituation:=ProcLastNumSituationMarchePeriode(NSMarche,FSSituations.EditDateAttachement.Text);
MiseAJourValeurStatistique(FSSituations.TableauSituationStructureStatistique,strtointeger(NumSituation));

{*****************************PRINCIPALE**********************************}
ProcAffichePrincipale(NSMarche);
ProcAfficheAvance(NSMarche);
ProcRemplireMarche(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,FSSituations.TableauSituationStructureStatistique.RowCount-1]),strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,FSSituations.TableauSituationStructureStatistique.RowCount-1]));
ProcRemplireFormule;
{*****************************PRINCIPALE**********************************}
{*****************************MEMOIRE**********************************}
TypeProces:='Business'; FichierConcerne:='FMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChMarche:=Adresse;
assignfile(FMarche,ChMarche);
if FileExists(ChMarche)then
Reset(FMarche)
else Rewrite(FMarche);
Seek(FMarche,0);
OK:=false;
RetenueGarantie:=0;
while not eof(FMarche)and(OK=false)do
begin
     Read(FMarche,RMarche);
     if(RMarche.NSMarche=NSMarche)then
     begin
          OK:=true;
          RetenueGarantie:=RMarche.RetenueGarantie;
     end;
end;
CloseFile(FMarche);

FSSituations.Memoire.Lines.Clear;
if((strtoreal(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1])>0)
or((RetenueGarantie>0)and(strtoreal(FSSituations.TableauPrincipal.Cells[6,1])>0)))
then
begin
     FSSituations.Memoire.Lines.Add('Pour mémoire:');
     FSSituations.Memoire.Lines.Add('');

     if(strtoreal(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1])>0)
     then
     begin
          FSSituations.Memoire.Lines.Add('rembourssement des avances cumulés au '+FSSituations.EditDateAttachement.Text+' de '+vergule(floattostr((strtoreal(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1])/strtoreal(FSSituations.TableauAvance.Cells[3,FSSituations.TableauAvance.RowCount-1]))*100),'2','C','')+' % soit: '+vergule(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1],'2','C','')+' DA');
          FSSituations.Memoire.Lines.Add('');
     end;

     if((RetenueGarantie>0)
     and(strtoreal(FSSituations.TableauPrincipal.Cells[6,1])>0))
     then
     begin
          FSSituations.Memoire.Lines.Add('Retenue de garantie cumulées au '+FSSituations.EditDateAttachement.Text+' soit: '+Vergule(floattostr((strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,FSSituations.TableauSituationStructureStatistique.RowCount-1])+strtoreal(FSSituations.TableauAvance.Cells[3,FSSituations.TableauAvance.RowCount-1])-strtoreal(FSSituations.TableauAvance.Cells[2,FSSituations.TableauAvance.RowCount-1])-strtoreal(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1]))*RetenueGarantie/100),'2','C','')+' DA');
          FSSituations.Memoire.Lines.Add('');
     end;

FSSituations.Memoire.Height:=MaxInt((FSSituations.Memoire.Lines.Capacity*18),200);
end;
{***************************FIN MEMOIRE**********************************}
R:=1;
while(R<=FSSituations.TableauDecompteSituation.RowCount-1)do
begin
     FSSituations.TableauDecompteSituation.Cells[1,R]:=' '+FSSituations.TableauDecompteSituation.Cells[1,R];
     FSSituations.TableauDecompteSituation.Cells[3,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[3,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[4,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[4,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[5,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[5,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[6,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[6,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[7,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[7,R],'2','C','');
     FSSituations.TableauDecompteSituation.Cells[8,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'2','C','');
     FSSituations.TableauDecompteSituation.Cells[9,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'2','C','');
     FSSituations.TableauDecompteSituation.Cells[10,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'2','C','');
R:=R+1;
end;

R:=1;
while(R<=FSSituations.TableauSituationStructureStatistique.RowCount-1)do
begin
     FSSituations.TableauSituationStructureStatistique.Cells[3,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[3,R],'2','C','');
     FSSituations.TableauSituationStructureStatistique.Cells[4,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[4,R],'2','C','');
     FSSituations.TableauSituationStructureStatistique.Cells[5,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[5,R],'2','C','');
     FSSituations.TableauSituationStructureStatistique.Cells[6,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[6,R],'2','C','');
     FSSituations.TableauSituationStructureStatistique.Cells[7,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[7,R],'2','C','');
R:=R+1;
end;

R:=1;
while(R<=FSSituations.TableauAvance.RowCount-1)do
begin
     FSSituations.TableauAvance.Cells[2,R]:=vergule(FSSituations.TableauAvance.Cells[2,R],'2','C','');
     FSSituations.TableauAvance.Cells[3,R]:=vergule(FSSituations.TableauAvance.Cells[3,R],'2','C','');
     FSSituations.TableauAvance.Cells[4,R]:=vergule(FSSituations.TableauAvance.Cells[4,R],'2','C','');
     FSSituations.TableauAvance.Cells[5,R]:=vergule(FSSituations.TableauAvance.Cells[5,R],'2','C','');
R:=R+1;
end;

R:=1;
while(R<=FSSituations.TableauPrincipal.RowCount-1)do
begin
     FSSituations.TableauPrincipal.Cells[6,R]:=vergule(FSSituations.TableauPrincipal.Cells[6,R],'2','C','');
R:=R+1;
end;

{************************* FIN STATISTIQUES ****************************}
end;

NotCol:='11-13';
for C:=0 to FSSituations.TableauDecompteSituation.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauDecompteSituation.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauDecompteSituation,'',NotCol);

NotCol:='0;1;8';
for C:=0 to FSSituations.TableauSituationStructureStatistique.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauSituationStructureStatistique.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauSituationStructureStatistique,'',NotCol);

NotCol:='';
for C:=0 to FSSituations.TableauAvance.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauAvance.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauAvance,'',NotCol);

NotCol:='0-4';
for C:=0 to FSSituations.TableauPrincipal.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauPrincipal.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauPrincipal,'',NotCol);
end;

Function DateDetailAttachement(NSMarche,NAttachement:string):string;
var   OKAttachement:boolean; DateTrouve:string;
begin
     DateDetailAttachement:='';
     DateTrouve:='';

     if(NAttachement<>'')and(NSMarche<>'')then
     begin          
          TypeProces:='Business'; FichierConcerne:='FAttachement';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
                //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChLAttachement:=Adresse;
          assignfile(FLAttachement,ChLAttachement);
          if FileExists(ChLAttachement)then
          Reset(FLAttachement)
          else Rewrite(FLAttachement);
          Seek(FLAttachement,0);
          OKAttachement:=false;
          while not eof(FLAttachement)and(OKAttachement=false)do
          begin
               Read(FLAttachement,RLAttachement);
               if(RLAttachement.NSMarche=strtointeger(NSMarche))
               and(RLAttachement.NAttachement=strtointeger(NAttachement))
               then
               begin
                    OKAttachement:=true;
                    DateDetailAttachement:=RLAttachement.Date;
                    DateTrouve:=RLAttachement.Date;
               end;
          end;
          CloseFile(FLAttachement);
     end
     else
     begin
          if(NAttachement='')then showmessage(' Num attachement vide !');
          if(NSMarche='')then showmessage('Num Marche vide !');
     end;

     if(OKAttachement=false)then  showmessage('l''attachement N° '+NAttachement+' du marche N° '+NSMarche+' n''existe pas !');
     if(DateTrouve='')then showmessage('la date de l''attachement N° '+NAttachement+' du marche N° '+NSMarche+' est vide !');
end;

Procedure TrierSituation(Indice:integer);
var OK:boolean; i,R,m,j,ARow,VarA,VarB:integer;
begin
R:=FSSituations.TableauDecompteSituation.RowCount;
FSSituations.TableauDecompteSituation.Rows[R].Text:='';
OK:=true;
while(OK=true)do
begin
OK:=false;
for i:=1 to FSSituations.TableauDecompteSituation.RowCount-2 do
begin
     if(FSSituations.TableauDecompteSituation.Cells[Indice,i]>FSSituations.TableauDecompteSituation.Cells[Indice,i+1])then
     begin
          OK:=true;
          for m:=1 to 3 do
          begin
               for j:=0 to FSSituations.TableauDecompteSituation.ColCount-1 do
               begin
                    if m=1 then begin VarA:=R; VarB:=i;end;
                    if m=2 then begin VarA:=i; VarB:=i+1;end;
                    if m=3 then begin VarA:=i+1; VarB:=R;end;
                    FSSituations.TableauDecompteSituation.Cells[j,VarA]:=FSSituations.TableauDecompteSituation.Cells[j,VarB];
               end;
          end;
          FSSituations.TableauDecompteSituation.Rows[R].Text:='';
     end;
end;
end;

end;

Procedure ProcAfficheStructureStatistique(TableauSituationStructureStatistique:TStringGrid; NSMarche:integer; ParStructure,ParStatistique:boolean);
var i,m,l:integer;  TVA:real; NbrTVA,NbrTTC,Plus,TexteTVA,TexteTTC,SourceStatistiqueMarche,CodeTrieStructure,NStructure,NStatistique:string;
begin
TVA:=0;  NbrTVA:='';  NbrTTC:='';  Plus:='';  TexteTVA:='';  TexteTTC:='';
TableauSituationStructureStatistique.ColCount:=9;
TableauSituationStructureStatistique.Cols[0].Text:='';
TableauSituationStructureStatistique.Cols[1].Text:='';
TableauSituationStructureStatistique.Cols[2].Text:='Désignation';
TableauSituationStructureStatistique.Cols[3].Text:='Montant H.T/Précédent';
TableauSituationStructureStatistique.Cols[4].Text:='Montant H.T/MOIS';
TableauSituationStructureStatistique.Cols[5].Text:='Montant H.T GLOBAL';
TableauSituationStructureStatistique.Cols[6].Text:='Montant Article Utilisé';
TableauSituationStructureStatistique.Cols[7].Text:='Montant Marché';
TableauSituationStructureStatistique.Cols[8].Text:='Cummuler ?';

TableauSituationStructureStatistique.RowCount:=2;
TableauSituationStructureStatistique.Rows[1].Text:='';

SourceStatistiqueMarche:=ChercherMarche(NSMarche).SourceStatistiqueMarche;

if((ParStructure=false)and(ParStatistique=false))then
begin
     i:=1;
     TableauSituationStructureStatistique.Rows[i].Text:='';
     TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(NSMarche),'5')+'00000';
     TableauSituationStructureStatistique.Cells[1,i]:='100';
     TableauSituationStructureStatistique.Cells[2,i]:='Marché Global';
end
else
begin
     TypeProces:='Business'; FichierConcerne:='FStructureMarche';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChStructureMarche:=Adresse;
     assignfile(FStructureMarche,ChStructureMarche);
     if FileExists(ChStructureMarche)then
     Reset(FStructureMarche)
     else Rewrite(FStructureMarche);
     Seek(FStructureMarche,0);
     i:=0;
     while not eof(FStructureMarche) do
     begin
          Read(FStructureMarche,RStructureMarche);
          if(RStructureMarche.NSMarche=NSMarche)then
          begin
               i:=i+1;
               TableauSituationStructureStatistique.Rows[i].Text:='';
               TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(RStructureMarche.NSMarche),'5')+Completezerogauche(inttostr(RStructureMarche.NStructureMarche),'5');
               TableauSituationStructureStatistique.Cells[1,i]:='100';
               TableauSituationStructureStatistique.Cells[2,i]:=RStructureMarche.StructureMarche;
          end;
    end;
end;

          TypeProces:='Business'; FichierConcerne:='FStatistiqueMarche';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChStatistiqueMarche:=Adresse;
          assignfile(FStatistiqueMarche,ChStatistiqueMarche);
          if FileExists(ChStatistiqueMarche)then
          Reset(FStatistiqueMarche)
          else Rewrite(FStatistiqueMarche);
          Seek(FStatistiqueMarche,0);
          m:=0;
          while not eof(FStatistiqueMarche) do
          begin
               Read(FStatistiqueMarche,RStatistiqueMarche);
               if(RStatistiqueMarche.NSMarche=NSMarche)then
               begin
                    m:=m+1;
                    TVA:=TVA+(RStatistiqueMarche.PourcentageStatistiqueMarche*RStatistiqueMarche.TVAStatistiqueMarche)/100
               end;
          end;

          if(m=0)then
          begin
               TVA:=19;
               i:=i+1;
               TableauSituationStructureStatistique.Rows[i].Text:='';
               TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(NSMarche),'5');
               TableauSituationStructureStatistique.Cells[1,i]:='100';
               TableauSituationStructureStatistique.Cells[2,i]:='MONTANT GENERAL EN HT';
               i:=i+1;
               TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(NSMarche),'5');
               TableauSituationStructureStatistique.Cells[1,i]:=floattostr(TVA);
               TableauSituationStructureStatistique.Cells[2,i]:='TVA '+floattostr(TVA)+' %';
               i:=i+1;
               TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(NSMarche),'5');
               TableauSituationStructureStatistique.Cells[1,i]:=floattostr(100+TVA);
               TableauSituationStructureStatistique.Cells[2,i]:='MONTANT TOTAL EN TTC';
          end
          else
          if(m>1)then
          begin
               i:=i+1;
               TableauSituationStructureStatistique.Rows[i].Text:='';
               TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(NSMarche),'5');
               TableauSituationStructureStatistique.Cells[1,i]:='100';
               TableauSituationStructureStatistique.Cells[2,i]:='MONTANT GENERAL EN HT';
          end;

          TypeProces:='Business'; FichierConcerne:='FStatistiqueMarche';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChStatistiqueMarche:=Adresse;
          assignfile(FStatistiqueMarche,ChStatistiqueMarche);
          if FileExists(ChStatistiqueMarche)then
          Reset(FStatistiqueMarche)
          else Rewrite(FStatistiqueMarche);
          Seek(FStatistiqueMarche,0);
          l:=0;
          while not eof(FStatistiqueMarche) do
          begin
               Read(FStatistiqueMarche,RStatistiqueMarche);
               if(RStatistiqueMarche.NSMarche=NSMarche)then
               begin
                    i:=i+1;////////////////////////////////////////////////// Saut de ligne
                    TableauSituationStructureStatistique.Rows[i].Text:=''; // Saut de ligne

                    if(ParStructure=false)and(ParStatistique=false)
                    then NStructure:='00000'
                    else NStructure:=Completezerogauche(RStatistiqueMarche.NStructureMarche,'5');

                    if(ParStatistique=false)
                    then NStatistique:='00000'
                    else NStatistique:=Completezerogauche(inttostr(RStatistiqueMarche.NStatistiqueMarche),'5');

                    CodeTrieStructure:=Completezerogauche(inttostr(RStatistiqueMarche.NSMarche),'5')+NStructure+NStatistique;

                    l:=l+1;
                    if(l>1)then Plus:='+' else Plus:='';
                    i:=i+1;
                    TableauSituationStructureStatistique.Rows[i].Text:='';
                    if(SourceStatistiqueMarche='Marche')
                    then TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(RStatistiqueMarche.NSMarche),'5')
                    else TableauSituationStructureStatistique.Cells[0,i]:=CodeTrieStructure;
                    TableauSituationStructureStatistique.Cells[1,i]:=floattostr(RStatistiqueMarche.PourcentageStatistiqueMarche);
                    TableauSituationStructureStatistique.Cells[2,i]:='MONTANT '+RStatistiqueMarche.StatistiqueMarche+' ('+floattostr(RStatistiqueMarche.PourcentageStatistiqueMarche)+'%) EN HT';
                    TableauSituationStructureStatistique.Cells[8,i]:='HT';
                    i:=i+1;
                    TableauSituationStructureStatistique.Rows[i].Text:='';
                    if(m>1)then TexteTVA:=' ..........'+inttostr(l) else TexteTVA:='';
                    if(SourceStatistiqueMarche='Marche')
                    then TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(RStatistiqueMarche.NSMarche),'5')
                    else TableauSituationStructureStatistique.Cells[0,i]:=CodeTrieStructure;
                    TableauSituationStructureStatistique.Cells[1,i]:=floattostr(RStatistiqueMarche.TVAStatistiqueMarche*RStatistiqueMarche.PourcentageStatistiqueMarche/100);
                    TableauSituationStructureStatistique.Cells[2,i]:='TVA '+floattostr(RStatistiqueMarche.TVAStatistiqueMarche)+' %'+TexteTVA;
                    TableauSituationStructureStatistique.Cells[8,i]:='TVA';
                    NbrTVA:=NbrTVA+Plus+'('+inttostr(l)+')';
                    i:=i+1;
                    TableauSituationStructureStatistique.Rows[i].Text:='';
                    if(m>1)then TexteTTC:=' ..........'+inttostr(m+l+1) else TexteTTC:='';
                    if(SourceStatistiqueMarche='Marche')
                    then TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(RStatistiqueMarche.NSMarche),'5')
                    else TableauSituationStructureStatistique.Cells[0,i]:=CodeTrieStructure;
                    TableauSituationStructureStatistique.Cells[1,i]:=floattostr(RStatistiqueMarche.PourcentageStatistiqueMarche*((100+RStatistiqueMarche.TVAStatistiqueMarche)/100));
                    TableauSituationStructureStatistique.Cells[2,i]:='MONTANT '+RStatistiqueMarche.StatistiqueMarche+' EN TTC'+TexteTTC;
                    TableauSituationStructureStatistique.Cells[8,i]:='TTC';
                    NbrTTC:=NbrTTC+Plus+'('+inttostr(m+l+1)+')';
               end;
          end;
          if(l>1)then
          begin
               i:=i+1;////////////////////////////////////////////////// Saut de ligne
               TableauSituationStructureStatistique.Rows[i].Text:=''; // Saut de ligne
               
               i:=i+1;
               TableauSituationStructureStatistique.Rows[i].Text:='';
               TableauSituationStructureStatistique.Cells[0,i]:='TVA';
               TableauSituationStructureStatistique.Cells[1,i]:=floattostr(TVA);
               TableauSituationStructureStatistique.Cells[2,i]:='TOTAL TVA ..........'+inttostr(l+1)+' = '+NbrTVA;
               i:=i+1;
               TableauSituationStructureStatistique.Rows[i].Text:='';
               TableauSituationStructureStatistique.Cells[0,i]:='TTC';
               TableauSituationStructureStatistique.Cells[1,i]:=floattostr(100+TVA);
               TableauSituationStructureStatistique.Cells[2,i]:='MONTANT TOTAL EN TTC ..........'+inttostr(m+l+2)+' = '+NbrTTC;
          end;

          if(i>0)then TableauSituationStructureStatistique.RowCount:=i+1
                 else TableauSituationStructureStatistique.RowCount:=2;

          AjusterColWidth(TableauSituationStructureStatistique,'','');
end;

Procedure ProcAfficheStructureStatistiqueExiste(TableauSituationStructureStatistique:TStringGrid; NSMarche,NSituation:integer; ParStructure,ParStatistique:boolean);
var i,m,l:integer;  TVA:real; NbrTVA,NbrTTC,Plus,TexteTVA,TexteTTC,SourceStatistiqueMarche,CodeTrieStructure,NStructure,NStatistique:string;
begin
TVA:=0;  NbrTVA:='';  NbrTTC:='';  Plus:='';  TexteTVA:='';  TexteTTC:='';
TableauSituationStructureStatistique.ColCount:=9;
TableauSituationStructureStatistique.Cols[0].Text:='';
TableauSituationStructureStatistique.Cols[1].Text:='';
TableauSituationStructureStatistique.Cols[2].Text:='Désignation';
TableauSituationStructureStatistique.Cols[3].Text:='Montant H.T/Précédent';
TableauSituationStructureStatistique.Cols[4].Text:='Montant H.T/MOIS';
TableauSituationStructureStatistique.Cols[5].Text:='Montant H.T GLOBAL';
TableauSituationStructureStatistique.Cols[6].Text:='Montant Article Utilisé';
TableauSituationStructureStatistique.Cols[7].Text:='Montant Marché';
TableauSituationStructureStatistique.Cols[8].Text:='Cummuler ?';

TableauSituationStructureStatistique.RowCount:=2;
TableauSituationStructureStatistique.Rows[1].Text:='';

SourceStatistiqueMarche:=ChercherMarche(NSMarche).SourceStatistiqueMarche;

if((ParStructure=false)and(ParStatistique=false))then
begin
     i:=1;
     TableauSituationStructureStatistique.Rows[i].Text:='';
     TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(NSMarche),'5')+'00000';
     TableauSituationStructureStatistique.Cells[1,i]:='100';
     TableauSituationStructureStatistique.Cells[2,i]:='Marché Global';
end
else
begin
     TypeProces:='Business'; FichierConcerne:='FStructureMarcheArchive Situation '+inttostr(NSituation);
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChStructureMarche:=Adresse;
     if not FileExists(ChStructureMarche)then
     begin
          TypeProces:='Business'; FichierConcerne:='FStructureMarche';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChStructureMarche:=Adresse;
     end;

     assignfile(FStructureMarche,ChStructureMarche);
     if FileExists(ChStructureMarche)then
     Reset(FStructureMarche)
     else Rewrite(FStructureMarche);
     Seek(FStructureMarche,0);
     i:=0;
     while not eof(FStructureMarche) do
     begin
          Read(FStructureMarche,RStructureMarche);
          if(RStructureMarche.NSMarche=NSMarche)then
          begin
               i:=i+1;
               TableauSituationStructureStatistique.Rows[i].Text:='';
               TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(RStructureMarche.NSMarche),'5')+Completezerogauche(inttostr(RStructureMarche.NStructureMarche),'5');
               TableauSituationStructureStatistique.Cells[1,i]:='100';
               TableauSituationStructureStatistique.Cells[2,i]:=RStructureMarche.StructureMarche;
          end;
    end;
end;

          TypeProces:='Business'; FichierConcerne:='FStatistiqueMarcheArchive Situation '+inttostr(NSituation);
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChStatistiqueMarche:=Adresse;
          if not FileExists(ChStatistiqueMarche)then
          begin
               TypeProces:='Business'; FichierConcerne:='FStatistiqueMarche';
               if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
               begin
                    //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
               end;
               ChStatistiqueMarche:=Adresse;
          end;

          assignfile(FStatistiqueMarche,ChStatistiqueMarche);
          if FileExists(ChStatistiqueMarche)then
          Reset(FStatistiqueMarche)
          else Rewrite(FStatistiqueMarche);
          Seek(FStatistiqueMarche,0);
          m:=0;
          while not eof(FStatistiqueMarche) do
          begin
               Read(FStatistiqueMarche,RStatistiqueMarche);
               if(RStatistiqueMarche.NSMarche=NSMarche)then
               begin
                    m:=m+1;
                    TVA:=TVA+(RStatistiqueMarche.PourcentageStatistiqueMarche*RStatistiqueMarche.TVAStatistiqueMarche)/100
               end;
          end;

          if(m=0)then
          begin
               TVA:=19;
               i:=i+1;
               TableauSituationStructureStatistique.Rows[i].Text:='';
               TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(NSMarche),'5');
               TableauSituationStructureStatistique.Cells[1,i]:='100';
               TableauSituationStructureStatistique.Cells[2,i]:='MONTANT GENERAL EN HT';
               i:=i+1;
               TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(NSMarche),'5');
               TableauSituationStructureStatistique.Cells[1,i]:=floattostr(TVA);
               TableauSituationStructureStatistique.Cells[2,i]:='TVA '+floattostr(TVA)+' %';
               i:=i+1;
               TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(NSMarche),'5');
               TableauSituationStructureStatistique.Cells[1,i]:=floattostr(100+TVA);
               TableauSituationStructureStatistique.Cells[2,i]:='MONTANT TOTAL EN TTC';
          end
          else
          if(m>1)then
          begin
               i:=i+1;
               TableauSituationStructureStatistique.Rows[i].Text:='';
               TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(NSMarche),'5');
               TableauSituationStructureStatistique.Cells[1,i]:='100';
               TableauSituationStructureStatistique.Cells[2,i]:='MONTANT GENERAL EN HT';
          end;

          TypeProces:='Business'; FichierConcerne:='FStatistiqueMarcheArchive Situation '+inttostr(NSituation);;
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
                    //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChStatistiqueMarche:=Adresse;
          if not FileExists(ChStatistiqueMarche)then
          begin
               TypeProces:='Business'; FichierConcerne:='FStatistiqueMarche';
               if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
               begin
                    //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
               end;
               ChStatistiqueMarche:=Adresse;
          end;

          assignfile(FStatistiqueMarche,ChStatistiqueMarche);
          if FileExists(ChStatistiqueMarche)then
          Reset(FStatistiqueMarche)
          else Rewrite(FStatistiqueMarche);
          Seek(FStatistiqueMarche,0);
          l:=0;
          while not eof(FStatistiqueMarche) do
          begin
               Read(FStatistiqueMarche,RStatistiqueMarche);
               if(RStatistiqueMarche.NSMarche=NSMarche)then
               begin
                    i:=i+1;////////////////////////////////////////////////// Saut de ligne
                    TableauSituationStructureStatistique.Rows[i].Text:=''; // Saut de ligne

                    if(ParStructure=false)and(ParStatistique=false)
                    then NStructure:='00000'
                    else NStructure:=Completezerogauche(RStatistiqueMarche.NStructureMarche,'5');

                    if(ParStatistique=false)
                    then NStatistique:='00000'
                    else NStatistique:=Completezerogauche(inttostr(RStatistiqueMarche.NStatistiqueMarche),'5');

                    CodeTrieStructure:=Completezerogauche(inttostr(RStatistiqueMarche.NSMarche),'5')+NStructure+NStatistique;

                    l:=l+1;
                    if(l>1)then Plus:='+' else Plus:='';
                    i:=i+1;
                    TableauSituationStructureStatistique.Rows[i].Text:='';
                    if(SourceStatistiqueMarche='Marche')
                    then TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(RStatistiqueMarche.NSMarche),'5')
                    else TableauSituationStructureStatistique.Cells[0,i]:=CodeTrieStructure;
                    TableauSituationStructureStatistique.Cells[1,i]:=floattostr(RStatistiqueMarche.PourcentageStatistiqueMarche);
                    TableauSituationStructureStatistique.Cells[2,i]:='MONTANT '+RStatistiqueMarche.StatistiqueMarche+' ('+floattostr(RStatistiqueMarche.PourcentageStatistiqueMarche)+'%) EN HT';
                    TableauSituationStructureStatistique.Cells[8,i]:='HT';
                    i:=i+1;
                    TableauSituationStructureStatistique.Rows[i].Text:='';
                    if(m>1)then TexteTVA:=' ..........'+inttostr(l) else TexteTVA:='';
                    if(SourceStatistiqueMarche='Marche')
                    then TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(RStatistiqueMarche.NSMarche),'5')
                    else TableauSituationStructureStatistique.Cells[0,i]:=CodeTrieStructure;
                    TableauSituationStructureStatistique.Cells[1,i]:=floattostr(RStatistiqueMarche.TVAStatistiqueMarche*RStatistiqueMarche.PourcentageStatistiqueMarche/100);
                    TableauSituationStructureStatistique.Cells[2,i]:='TVA '+floattostr(RStatistiqueMarche.TVAStatistiqueMarche)+' %'+TexteTVA;
                    TableauSituationStructureStatistique.Cells[8,i]:='TVA';
                    NbrTVA:=NbrTVA+Plus+'('+inttostr(l)+')';
                    i:=i+1;
                    TableauSituationStructureStatistique.Rows[i].Text:='';
                    if(m>1)then TexteTTC:=' ..........'+inttostr(m+l+1) else TexteTTC:='';
                    if(SourceStatistiqueMarche='Marche')
                    then TableauSituationStructureStatistique.Cells[0,i]:=Completezerogauche(inttostr(RStatistiqueMarche.NSMarche),'5')
                    else TableauSituationStructureStatistique.Cells[0,i]:=CodeTrieStructure;
                    TableauSituationStructureStatistique.Cells[1,i]:=floattostr(RStatistiqueMarche.PourcentageStatistiqueMarche*((100+RStatistiqueMarche.TVAStatistiqueMarche)/100));
                    TableauSituationStructureStatistique.Cells[2,i]:='MONTANT '+RStatistiqueMarche.StatistiqueMarche+' EN TTC'+TexteTTC;
                    TableauSituationStructureStatistique.Cells[8,i]:='TTC';
                    NbrTTC:=NbrTTC+Plus+'('+inttostr(m+l+1)+')';
               end;
          end;
          if(l>1)then
          begin
               i:=i+1;////////////////////////////////////////////////// Saut de ligne
               TableauSituationStructureStatistique.Rows[i].Text:=''; // Saut de ligne
               
               i:=i+1;
               TableauSituationStructureStatistique.Rows[i].Text:='';
               TableauSituationStructureStatistique.Cells[0,i]:='TVA';
               TableauSituationStructureStatistique.Cells[1,i]:=floattostr(TVA);
               TableauSituationStructureStatistique.Cells[2,i]:='TOTAL TVA ..........'+inttostr(l+1)+' = '+NbrTVA;
               i:=i+1;
               TableauSituationStructureStatistique.Rows[i].Text:='';
               TableauSituationStructureStatistique.Cells[0,i]:='TTC';
               TableauSituationStructureStatistique.Cells[1,i]:=floattostr(100+TVA);
               TableauSituationStructureStatistique.Cells[2,i]:='MONTANT TOTAL EN TTC ..........'+inttostr(m+l+2)+' = '+NbrTTC;
          end;

          if(i>0)then TableauSituationStructureStatistique.RowCount:=i+1
                 else TableauSituationStructureStatistique.RowCount:=2;

          AjusterColWidth(TableauSituationStructureStatistique,'','');
end;

Procedure ProcAffichePrincipale(NSMarche:integer);
var   i,R:integer; TypeAction:string;  Signe,SigneA,SigneN:string[2];
      RetenueGarantie:real;  OK:boolean;
      IntituleEtat,IntituleProjet:string;
begin
IntituleProjet:=FSSituations.EditTypeProjet.Text;
IntituleEtat:='Situation';

TypeProces:='Business'; FichierConcerne:='FMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChMarche:=Adresse;
assignfile(FMarche,ChMarche);
if FileExists(ChMarche)then
Reset(FMarche)
else Rewrite(FMarche);
Seek(FMarche,0);
OK:=false;
RetenueGarantie:=0;
while not eof(FMarche)and(OK=false)do
begin
     Read(FMarche,RMarche);
     if(RMarche.NSMarche=NSMarche)then
     begin
          OK:=true;
          RetenueGarantie:=RMarche.RetenueGarantie;
     end;
end;
CloseFile(FMarche);

FSSituations.TableauPrincipal.Cols[1].Text:='N°';
FSSituations.TableauPrincipal.Cols[2].Text:='Indice';
FSSituations.TableauPrincipal.Cols[3].Text:='Précédent';
FSSituations.TableauPrincipal.Cols[4].Text:='Cumulés';
FSSituations.TableauPrincipal.Cols[5].Text:=IntituleEtat+' arrêtée au: '+FSSituations.EditDateAttachement.Text;
FSSituations.TableauPrincipal.Cols[6].Text:='Montant (DA)';

FSSituations.TableauPrincipal.RowCount:=2;
FSSituations.TableauPrincipal.Rows[1].Text:='';

TypeProces:='Business'; FichierConcerne:='FFinance';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChFinance:=Adresse;
assignfile(FFinance,ChFinance);
if FileExists(ChFinance)then
Reset(FFinance)
else Rewrite(FFinance);
i:=0;

for R:=1 to 3 do
begin
     if(R=1)then
     begin
          i:=i+1;
          FSSituations.TableauPrincipal.Rows[i].Text:='';
          FSSituations.TableauPrincipal.Cells[1,i]:='';
          FSSituations.TableauPrincipal.Cells[2,i]:=Completezerogauche(inttostr(NSMarche),'5');
          FSSituations.TableauPrincipal.Cells[3,i]:='0';
          FSSituations.TableauPrincipal.Cells[4,i]:='1';
          FSSituations.TableauPrincipal.Cells[5,i]:='Montant des Travaux Cumulés';
          TypeAction:=' Totales';
     end;
     if(R=2)then
     begin
          i:=i+1;
          FSSituations.TableauPrincipal.Rows[i].Text:='';
          FSSituations.TableauPrincipal.Cells[1,i]:='';
          FSSituations.TableauPrincipal.Cells[2,i]:=Completezerogauche(inttostr(NSMarche),'5');
          FSSituations.TableauPrincipal.Cells[3,i]:='1';
          FSSituations.TableauPrincipal.Cells[4,i]:='0';
          FSSituations.TableauPrincipal.Cells[5,i]:='Montant des Travaux réalisés précédemment';
          TypeAction:=' Reçues';
     end;
     if(R=3)then
     begin
          i:=i+1;
          FSSituations.TableauPrincipal.Rows[i].Text:='';
          FSSituations.TableauPrincipal.Cells[1,i]:='';
          FSSituations.TableauPrincipal.Cells[2,i]:='';
          FSSituations.TableauPrincipal.Cells[3,i]:='';
          FSSituations.TableauPrincipal.Cells[4,i]:='';
          FSSituations.TableauPrincipal.Cells[5,i]:='Rembourssement à effectuer';
          TypeAction:='';
     end;
     Seek(FFinance,0);
     while not eof(FFinance)do
     begin
          Read(FFinance,RFinance);
          i:=i+1;
          if(R=1)then begin Signe:='+'; SigneA:='0'; SigneN:='1'; end;
          if(R=2)then begin Signe:='+'; SigneA:='1'; SigneN:='0'; end;
          if(R=3)then begin Signe:='-'; SigneA:='0'; SigneN:='1'; end;
          FSSituations.TableauPrincipal.Rows[i].Text:='';
          FSSituations.TableauPrincipal.Cells[1,i]:=Signe;
          FSSituations.TableauPrincipal.Cells[2,i]:=inttostr(RFinance.NFinance);
          FSSituations.TableauPrincipal.Cells[3,i]:=SigneA;
          FSSituations.TableauPrincipal.Cells[4,i]:=SigneN;
          FSSituations.TableauPrincipal.Cells[5,i]:=RFinance.DesignFinance+TypeAction;
     end;
     if(R=1)then
     begin
          i:=i+1;
          FSSituations.TableauPrincipal.Rows[i].Text:='1';
          FSSituations.TableauPrincipal.Cells[1,i]:='+';
          FSSituations.TableauPrincipal.Cells[2,i]:=Completezerogauche(inttostr(NSMarche),'5');
          FSSituations.TableauPrincipal.Cells[3,i]:='0';
          FSSituations.TableauPrincipal.Cells[4,i]:='1';
          FSSituations.TableauPrincipal.Cells[5,i]:='Total (01)';
     end;
     if(R=2)then
     begin
          i:=i+1;
          FSSituations.TableauPrincipal.Rows[i].Text:='2';
          FSSituations.TableauPrincipal.Cells[1,i]:='+';
          FSSituations.TableauPrincipal.Cells[2,i]:=Completezerogauche(inttostr(NSMarche),'5');
          FSSituations.TableauPrincipal.Cells[3,i]:='1';
          FSSituations.TableauPrincipal.Cells[4,i]:='0';
          FSSituations.TableauPrincipal.Cells[5,i]:='Total (02)';
          i:=i+1;
          FSSituations.TableauPrincipal.Rows[i].Text:='3=1-2';
          FSSituations.TableauPrincipal.Cells[1,i]:='';
          FSSituations.TableauPrincipal.Cells[2,i]:='';
          FSSituations.TableauPrincipal.Cells[3,i]:='';
          FSSituations.TableauPrincipal.Cells[4,i]:='';
          FSSituations.TableauPrincipal.Cells[5,i]:='Montant brute de la '+IntituleEtat+' (03)=(01)-(02)';
     end;
     if(R=3)then
     begin
          i:=i+1;
          FSSituations.TableauPrincipal.Rows[i].Text:='4';
          FSSituations.TableauPrincipal.Cells[1,i]:='-';
          FSSituations.TableauPrincipal.Cells[2,i]:='';
          FSSituations.TableauPrincipal.Cells[3,i]:='0';
          FSSituations.TableauPrincipal.Cells[4,i]:='1';
          FSSituations.TableauPrincipal.Cells[5,i]:='Total (04)';
          i:=i+1;
          FSSituations.TableauPrincipal.Rows[i].Text:='5=3-4';
          FSSituations.TableauPrincipal.Cells[1,i]:='';
          FSSituations.TableauPrincipal.Cells[2,i]:='';
          FSSituations.TableauPrincipal.Cells[3,i]:='';
          FSSituations.TableauPrincipal.Cells[4,i]:='';
          FSSituations.TableauPrincipal.Cells[5,i]:='Montant Net de la '+IntituleEtat+' TTC (05)=(03)-(04)';
          i:=i+1;
          FSSituations.TableauPrincipal.Rows[i].Text:='6=5*G';
          FSSituations.TableauPrincipal.Cells[1,i]:='';
          FSSituations.TableauPrincipal.Cells[2,i]:='';
          FSSituations.TableauPrincipal.Cells[3,i]:='';
          FSSituations.TableauPrincipal.Cells[4,i]:=floattostr(RetenueGarantie/100);
          FSSituations.TableauPrincipal.Cells[5,i]:='Retenue de Garantie '+floattostr(RetenueGarantie)+'%'+' (06)';
          i:=i+1;
          FSSituations.TableauPrincipal.Rows[i].Text:='7=5-6';
          FSSituations.TableauPrincipal.Cells[1,i]:='';
          FSSituations.TableauPrincipal.Cells[2,i]:='';
          FSSituations.TableauPrincipal.Cells[3,i]:='';
          FSSituations.TableauPrincipal.Cells[4,i]:='';
          FSSituations.TableauPrincipal.Cells[5,i]:='Montant Net à payer TTC (07)=(05)-(06)';
     end;
end;

CloseFile(FFinance);
if(i>0)then FSSituations.TableauPrincipal.RowCount:=i+1
       else FSSituations.TableauPrincipal.RowCount:=2;

end;

Procedure ProcAfficheAvance(NSMarche:integer);
var i,Mois,MoisOp,RF:integer;
begin
FSSituations.TableauAvance.Cols[0].Text:='NFinance';
FSSituations.TableauAvance.Cols[1].Text:='Operation Financière';
FSSituations.TableauAvance.Cols[2].Text:='Avances Reçues';
FSSituations.TableauAvance.Cols[3].Text:='Avances Cumulés';
FSSituations.TableauAvance.Cols[4].Text:='Rembourssement à effectuer';
FSSituations.TableauAvance.Cols[5].Text:='Rembourssement Cumulés';

FSSituations.TableauAvance.RowCount:=2;
FSSituations.TableauAvance.Rows[1].Text:='';

TypeProces:='Business'; FichierConcerne:='FFinance';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChFinance:=Adresse;
assignfile(FFinance,ChFinance);
if FileExists(ChFinance)then
Reset(FFinance)
else Rewrite(FFinance);
Seek(FFinance,0);
RF:=0;
while not eof(FFinance)do
begin
     Read(FFinance,RFinance);
     RF:=RF+1;
     FSSituations.TableauAvance.Rows[RF].Text:='';
     FSSituations.TableauAvance.Cells[0,RF]:=inttostr(RFinance.NFinance);
     FSSituations.TableauAvance.Cells[1,RF]:=RFinance.DesignFinance;
end;
CloseFile(FFinance);
RF:=RF+1;
FSSituations.TableauAvance.Rows[RF].Text:='';
FSSituations.TableauAvance.Cells[0,RF]:='';
FSSituations.TableauAvance.Cells[1,RF]:='          TOTAL ';

if(RF>0)then FSSituations.TableauAvance.RowCount:=RF+1
       else FSSituations.TableauAvance.RowCount:=2;

Mois:=strtointeger(FSSituations.EditDateAttachement.Text[4]+FSSituations.EditDateAttachement.Text[5]);

TypeProces:='Business'; FichierConcerne:='FOperationFinance';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChOperationFinance:=Adresse;
assignfile(FOperationFinance,ChOperationFinance);
if FileExists(ChOperationFinance)then
Reset(FOperationFinance)
else Rewrite(FOperationFinance);
Seek(FOperationFinance,0);
i:=0;
while not eof(FOperationFinance) do
begin
     Read(FOperationFinance,ROperationFinance);
     if((ROperationFinance.NSMarche=NSMarche)
     and(strtodate(ROperationFinance.DateOperation)<=strtodate(FSSituations.EditDateAttachement.Text)))
     then
     begin
          MoisOp:=strtointeger(ROperationFinance.DateOperation[4]+ROperationFinance.DateOperation[5]);
          for RF:=1 to FSSituations.TableauAvance.RowCount-2 do
          begin
               if(strtointeger(FSSituations.TableauAvance.Cells[0,RF])=ROperationFinance.NFinance)then
               begin
                    if(ROperationFinance.DebitCredit=1)then
                    begin
                         if((ROperationFinance.DateReception<>'')
                         and(ROperationFinance.DateReception<>' ')
                         and(ROperationFinance.DateReception<>'  /  /    '))
                         then
                         begin
                              if(strtodate(ROperationFinance.DateReception)<=strtodate(FSSituations.EditDateAttachement.Text))then
                              begin
                              FSSituations.TableauAvance.Cells[2,RF]:=floattostr(strtoreal(FSSituations.TableauAvance.Cells[2,RF])+ROperationFinance.MontantFinance);
                              FSSituations.TableauAvance.Cells[2,FSSituations.TableauAvance.RowCount-1]:=floattostr(strtoreal(FSSituations.TableauAvance.Cells[2,FSSituations.TableauAvance.RowCount-1])+ROperationFinance.MontantFinance);
                              end;
                         end;

                         FSSituations.TableauAvance.Cells[3,RF]:=floattostr(strtoreal(FSSituations.TableauAvance.Cells[3,RF])+ROperationFinance.MontantFinance);
                         FSSituations.TableauAvance.Cells[3,FSSituations.TableauAvance.RowCount-1]:=floattostr(strtoreal(FSSituations.TableauAvance.Cells[3,FSSituations.TableauAvance.RowCount-1])+ROperationFinance.MontantFinance);
                    end
                    else
                    if(ROperationFinance.DebitCredit=-1)then
                    begin
                         if(MoisOp=Mois)then
                         begin
                              FSSituations.TableauAvance.Cells[4,RF]:=floattostr(strtoreal(FSSituations.TableauAvance.Cells[4,RF])+ROperationFinance.MontantFinance);
                              FSSituations.TableauAvance.Cells[4,FSSituations.TableauAvance.RowCount-1]:=floattostr(strtoreal(FSSituations.TableauAvance.Cells[4,FSSituations.TableauAvance.RowCount-1])+ROperationFinance.MontantFinance);
                         end;
                         FSSituations.TableauAvance.Cells[5,RF]:=floattostr(strtoreal(FSSituations.TableauAvance.Cells[5,RF])+ROperationFinance.MontantFinance);
                         FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1]:=floattostr(strtoreal(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1])+ROperationFinance.MontantFinance);
                    end;
               end;
          end;
     end;
end;

for RF:=1 to FSSituations.TableauAvance.RowCount-2 do
begin
     ProcRemplireAvance(strtointeger(FSSituations.TableauAvance.Cells[0,RF]),strtoreal(FSSituations.TableauAvance.Cells[2,RF]),strtoreal(FSSituations.TableauAvance.Cells[3,RF]),strtoreal(FSSituations.TableauAvance.Cells[4,RF]));
end;
end;

Procedure ProcRemplireMarche(MPrecedent,MCumule:real);
var  RM:integer;
begin
for RM:=1 to FSSituations.TableauPrincipal.RowCount-1 do
begin
     if(Longueur(FSSituations.TableauPrincipal.Cells[2,RM])=5)then
     begin
          FSSituations.TableauPrincipal.Cells[6,RM]:=floattostr(strtoreal(FSSituations.TableauPrincipal.Cells[6,RM])+
                                                  (strtoreal(FSSituations.TableauPrincipal.Cells[3,RM])*MPrecedent)+
                                                  (strtoreal(FSSituations.TableauPrincipal.Cells[4,RM])*MCumule));
     end;
end;
end;

Procedure ProcRemplireFormule;
var  RF,RF1,Indice:integer;
begin
Indice:=1;
for RF:=1 to FSSituations.TableauPrincipal.RowCount-1 do
begin
     if(Longueur(FSSituations.TableauPrincipal.Cells[0,RF])=5)then
     begin
          if((FSSituations.TableauPrincipal.Cells[0,RF][4]='-')
          or(FSSituations.TableauPrincipal.Cells[0,RF][4]='+'))then
          begin
               if(FSSituations.TableauPrincipal.Cells[0,RF][4]='-')then Indice:=-1;
               if(FSSituations.TableauPrincipal.Cells[0,RF][4]='+')then Indice:=1;

               for RF1:=1 to RF-1 do
               begin
                    if(longueur(FSSituations.TableauPrincipal.Cells[0,RF1])>=1)then
                    begin
                         if(FSSituations.TableauPrincipal.Cells[0,RF1][1]=FSSituations.TableauPrincipal.Cells[0,RF][3])then
                         begin
                              FSSituations.TableauPrincipal.Cells[6,RF]:=floattostr(strtoreal(FSSituations.TableauPrincipal.Cells[6,RF])+
                                                                       strtoreal(FSSituations.TableauPrincipal.Cells[6,RF1]));
                         end;
                         if(FSSituations.TableauPrincipal.Cells[0,RF1][1]=FSSituations.TableauPrincipal.Cells[0,RF][5])then
                         begin
                              FSSituations.TableauPrincipal.Cells[6,RF]:=floattostr(strtoreal(FSSituations.TableauPrincipal.Cells[6,RF])+
                                                                       Indice*strtoreal(FSSituations.TableauPrincipal.Cells[6,RF1]));
                         end;
                    end;
               end;
          end
          else
          if(FSSituations.TableauPrincipal.Cells[0,RF][4]='*')then
          begin
               for RF1:=1 to RF-1 do
               begin
                    if(longueur(FSSituations.TableauPrincipal.Cells[0,RF1])>=1)then
                    begin
                         if(FSSituations.TableauPrincipal.Cells[0,RF1][1]=FSSituations.TableauPrincipal.Cells[0,RF][3])then
                         begin
                              FSSituations.TableauPrincipal.Cells[6,RF]:=floattostr(strtoreal(FSSituations.TableauPrincipal.Cells[4,RF])*
                                                                       strtoreal(FSSituations.TableauPrincipal.Cells[6,RF1]));
                         end;
                    end;
               end;
          end;
     end;
end;
end;

Procedure ProcRemplireAvance(NFinance:integer; MPrecedent,MCumule,MRetenueMois:real);
var  RA:integer;
begin
for RA:=1 to FSSituations.TableauPrincipal.RowCount-1 do
begin
     if(FSSituations.TableauPrincipal.Cells[1,RA]<>'')then
     begin
          if(FSSituations.TableauPrincipal.Cells[1,RA]='+')then
          begin
               if(longueur(FSSituations.TableauPrincipal.Cells[2,RA])=1)then
               begin
                    if(strtointeger(FSSituations.TableauPrincipal.Cells[2,RA])=NFinance)then
                    begin
                         FSSituations.TableauPrincipal.Cells[6,RA]:=floattostr(strtoreal(FSSituations.TableauPrincipal.Cells[6,RA])+
                                                                  (strtoreal(FSSituations.TableauPrincipal.Cells[3,RA])*MPrecedent)+
                                                                  (strtoreal(FSSituations.TableauPrincipal.Cells[4,RA])*MCumule));
                    end;
               end
               else FSSituations.TableauPrincipal.Cells[6,RA]:=floattostr(strtoreal(FSSituations.TableauPrincipal.Cells[6,RA])+
                                                                  (strtoreal(FSSituations.TableauPrincipal.Cells[3,RA])*MPrecedent)+
                                                                  (strtoreal(FSSituations.TableauPrincipal.Cells[4,RA])*MCumule));
          end
          else
          if(FSSituations.TableauPrincipal.Cells[1,RA]='-')then
          begin
               if(longueur(FSSituations.TableauPrincipal.Cells[2,RA])=1)then
               begin
                    if(strtointeger(FSSituations.TableauPrincipal.Cells[2,RA])=NFinance)then
                    begin
                         FSSituations.TableauPrincipal.Cells[6,RA]:=floattostr(strtoreal(FSSituations.TableauPrincipal.Cells[6,RA])+
                                                                  (strtoreal(FSSituations.TableauPrincipal.Cells[4,RA])*MRetenueMois));
                    end;
               end
               else FSSituations.TableauPrincipal.Cells[6,RA]:=floattostr(strtoreal(FSSituations.TableauPrincipal.Cells[6,RA])+
                                                             (strtoreal(FSSituations.TableauPrincipal.Cells[4,RA])*MRetenueMois));
          end;

     end;
end;

end;

procedure TFSSituations.PageSituationShow(Sender: TObject);
begin
     FSSituations.TableauDecompteSituation.SetFocus;
end;

procedure TFSSituations.BitBtn47Click(Sender: TObject);
var  i,NSituation:integer; ErreurSituation,ExisteSituation:boolean;  TypeProces,FichierConserne,Adresse:string;
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;


if(strtoreal(FSSituations.TableauPrincipal.Cells[6,1])=0)then
begin
     if(FSSituations.EditTypeProjet.Text='Marche')then
     begin
          showmessage('Aucune Situation Validée !');  
     end
     else
     begin
          showmessage('Aucune Facture d''Avenant Validée !');
     end;

     Exit;
end;

TypeProces:='Business'; FichierConcerne:='FSituationMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChSituationMarche:=Adresse;
assignfile(FSituationMarche,ChSituationMarche);
if FileExists(ChSituationMarche)then
Reset(FSituationMarche)
else Rewrite(FSituationMarche);
Seek(FSituationMarche,0);
i:=0;
if(strtointeger(FSSituations.EditNAttachementMarche.Text)=0)
then NSituation:=0
else NSituation:=1;
while not eof(FSituationMarche)do
begin
     Read(FSituationMarche,RSituationMarche);
     if(RSituationMarche.NSMarche=strtointeger(FSSituations.EditNSMarche.Text))
     then
     begin
          ErreurSituation:=false;
          if(strtodate(RSituationMarche.DateSituationMarche)>=strtodate(FSSituations.EditDateAttachement.Text))
          then ErreurSituation:=true;

          if(ErreurSituation=false)and(strtobool(FSSituations.EditCummulerAttachement.Text)=true)then
          begin
               if(strtointeger(RSituationMarche.DateSituationMarche[4]+
                               RSituationMarche.DateSituationMarche[5]+
                               RSituationMarche.DateSituationMarche[7]+
                               RSituationMarche.DateSituationMarche[8]+
                               RSituationMarche.DateSituationMarche[9]+
                               RSituationMarche.DateSituationMarche[10])=
                               strtointeger(FSSituations.EditDateAttachement.Text[4]+
                                            FSSituations.EditDateAttachement.Text[5]+
                                            FSSituations.EditDateAttachement.Text[7]+
                                            FSSituations.EditDateAttachement.Text[8]+
                                            FSSituations.EditDateAttachement.Text[9]+
                                            FSSituations.EditDateAttachement.Text[10]))
               then ErreurSituation:=true;
          end;

          if(ErreurSituation=true)then
          begin
               showmessage('Veuillez vérifier les Situations SVP !');
               FSSituations.BitVoirListeSituation.SetFocus;
               Exit;
          end
          else
          begin
                if(FSSituations.RBNumerotationParAnnee.Checked=true)then
                begin
                     if(Lastlaters(RSituationMarche.DateSituationMarche,4)=Lastlaters(FSSituations.EditDateAttachement.Text,4))then
                     if(RSituationMarche.NSituationMarche>=NSituation)then NSituation:=RSituationMarche.NSituationMarche+1;
                end
                else
                begin
                     if(RSituationMarche.NSituationMarche>=NSituation)then NSituation:=RSituationMarche.NSituationMarche+1;
                end;
          end;
     end;

     i:=i+1;
end;

FSSituations.AfficheValiderSituation.Visible:=true;
FSSituations.EditPositionSituation.Text:=inttostr(i);

if(FSSituations.EditTypeProjet.Text='Marche')then
begin
     FSSituations.EditDesignationSituation.Text:='Situation';
     FSSituations.AfficheValiderMessageSituation.Caption:='Valider la Situation N° '+Completezerogauche(inttostr(NSituation),'2')+' du '+FSSituations.EditDateAttachement.Text
end
else
begin
     FSSituations.EditDesignationSituation.Text:='Facture d''Avenant';
     FSSituations.AfficheValiderMessageSituation.Caption:='Valider la Facture d''Avenant N° '+Completezerogauche(inttostr(NSituation),'2')+' du '+FSSituations.EditDateAttachement.Text;
end;

TypeProces:='Business';
FichierConserne:='FDomiciliation';
if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
end;
ChDomiciliation:=Adresse;
assignfile(FDomiciliation,ChDomiciliation);
if FileExists(ChDomiciliation)then
Reset(FDomiciliation)
else Rewrite(FDomiciliation);
Seek(FDomiciliation,0);
FSSituations.EditDomiciliationPiece.Items.Text:='Autres';
while not eof(FDomiciliation)do
begin
     read(FDomiciliation,RDomiciliation);
     FSSituations.EditDomiciliationPiece.Items.Add(RDomiciliation.DesignationDomiciliation);
end;
CloseFile(FDomiciliation);

FSSituations.EditDomiciliationPiece.ItemIndex:=-1;
FSSituations.EditModePaiement.ItemIndex:=-1;
FSSituations.EditNumDomiciliationPiece.Text:='';
FSSituations.EditDomiciliationPiece.Text:='';
FSSituations.EditNumPiece.Text:='';
FSSituations.EditListeNumAvis.Text:='';
FSSituations.RBValiditeSituation.Checked:=true;

FSSituations.BitValiderSituation.SetFocus;
end;

procedure TFSSituations.BitBtn51Click(Sender: TObject);
begin
FSSituations.AfficheValiderSituation.Visible:=false;
end;

procedure TFSSituations.BitValiderSituationClick(Sender: TObject);
var  i,R,NSituation:integer;
begin
TypeProces:='Business'; FichierConcerne:='FSituationMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChSituationMarche:=Adresse;
assignfile(FSituationMarche,ChSituationMarche);
if FileExists(ChSituationMarche)then
Reset(FSituationMarche)
else Rewrite(FSituationMarche);
Seek(FSituationMarche,0);
i:=strtointeger(FSSituations.EditPositionSituation.Text);
NSituation:=ProcNouveauNumSituationMarche(strtointeger(FSSituations.EditNSMarche.Text),strtointeger(FSSituations.EditNAttachementMarche.Text),FSSituations.RBNumerotationParAnnee.Checked,Lastlaters(FSSituations.EditDateAttachement.text,4));

if(FSSituations.EditDesignationSituation.Text<>'')
then RSituationMarche.DesignationSituation:=FSSituations.EditDesignationSituation.Text
else
begin
     if(FSSituations.EditTypeProjet.Text='Marche')
     then RSituationMarche.DesignationSituation:='Situation'
     else RSituationMarche.DesignationSituation:='Facture d''Avenant';
end;
RSituationMarche.NSituationMarche:=NSituation;
RSituationMarche.NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
RSituationMarche.NAttachement:=FSSituations.EditNAttachementMarche.Text;
RSituationMarche.ValiditeSituation:=FSSituations.RBValiditeSituation.Checked;
RSituationMarche.DateSituationMarche:=FSSituations.EditDateAttachement.Text;
RSituationMarche.ModePaiement:=FSSituations.EditModePaiement.Text;
RSituationMarche.NumDomiciliation:=FSSituations.EditNumDomiciliationPiece.Text;
RSituationMarche.Domiciliation:=FSSituations.EditDomiciliationPiece.Text;
RSituationMarche.NumPiece:=FSSituations.EditNumPiece.Text;
if(FSSituations.TableauPrincipal.RowCount>3)then
begin
     RSituationMarche.MontantSituationTTCBrut:=strtoreal(FSSituations.TableauPrincipal.Cells[6,FSSituations.TableauPrincipal.RowCount-3]);
     RSituationMarche.RetenueGarantie:=strtoreal(FSSituations.TableauPrincipal.Cells[4,FSSituations.TableauPrincipal.RowCount-2])*100;
     RSituationMarche.MontantRetenueGarantie:=strtoreal(FSSituations.TableauPrincipal.Cells[6,FSSituations.TableauPrincipal.RowCount-2]);
     RSituationMarche.MontantSituationTTCNet:=strtoreal(FSSituations.TableauPrincipal.Cells[6,FSSituations.TableauPrincipal.RowCount-1]);
end;
RSituationMarche.ParStructure:=strtobool(FSSituations.EditOptionSituationParStructure.Text);
RSituationMarche.ParStatistique:=strtobool(FSSituations.EditOptionSituationParStatistique.Text);
RSituationMarche.CummulerAttachement:=strtobool(FSSituations.EditCummulerAttachement.Text);
RSituationMarche.ListeNumAvis:=FSSituations.EditListeNumAvis.Text;
Seek(FSituationMarche,i);
write(FSituationMarche,RSituationMarche);
CloseFile(FSituationMarche);
FSSituations.EditNSituationMarche.Text:=Completezerogauche(inttostr(NSituation),'2');
FSSituations.AfficheValiderSituation.Visible:=false;

////////////////////////////////////////////////////////////////////////////////
TypeProces:='Business'; FichierConcerne:='FDetailSituationMarche '+FSSituations.EditNSMarche.Text+' '+inttostr(NSituation)+'_'+lastlaters(FSSituations.EditDateAttachement.Text,4);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDetailSituationMarche:=Adresse;
assignfile(FDetailSituationMarche,ChDetailSituationMarche);
if FileExists(ChDetailSituationMarche)then
Reset(FDetailSituationMarche)
else Rewrite(FDetailSituationMarche);
Seek(FDetailSituationMarche,0);
Truncate(FDetailSituationMarche);
i:=0;
R:=1;
while(R<=FSSituations.TableauDetailSituationMarche.RowCount-1)do
begin
     RDetailSituationMarche.NDetailSituationMarche:=i;
     RDetailSituationMarche.NSituationMarche:=NSituation;
     RDetailSituationMarche.NArticle:=FSSituations.TableauDetailSituationMarche.Cells[0,R];
     RDetailSituationMarche.DesignationArticle:=FSSituations.TableauDetailSituationMarche.Cells[1,R];
     RDetailSituationMarche.UniteM:=FSSituations.TableauDetailSituationMarche.Cells[2,R];
     RDetailSituationMarche.QuantiteSituationMarcheRealisePrecedement:=strtofloat(FSSituations.TableauDetailSituationMarche.Cells[3,R]);
     RDetailSituationMarche.QuantiteSituationMarcheRealiseMois:=strtofloat(FSSituations.TableauDetailSituationMarche.Cells[4,R]);
     RDetailSituationMarche.QuantiteSituationMarcheObjetMarchePrecedement:=strtofloat(FSSituations.TableauDetailSituationMarche.Cells[5,R]);
     RDetailSituationMarche.QuantiteSituationMarcheObjetMarcheMois:=strtofloat(FSSituations.TableauDetailSituationMarche.Cells[6,R]);
     RDetailSituationMarche.QuantiteSituationMarcheObjetAvenantPrecedement:=strtofloat(FSSituations.TableauDetailSituationMarche.Cells[7,R]);
     RDetailSituationMarche.QuantiteSituationMarcheObjetAvenantMois:=strtofloat(FSSituations.TableauDetailSituationMarche.Cells[8,R]);
     RDetailSituationMarche.PrixUnitaire:=strtofloat(FSSituations.TableauDetailSituationMarche.Cells[9,R]);
     RDetailSituationMarche.CodeTrie:=FSSituations.TableauDetailSituationMarche.Cells[10,R];
     RDetailSituationMarche.CodeStock:=FSSituations.TableauDetailSituationMarche.Cells[11,R];

     Seek(FDetailSituationMarche,i);
     write(FDetailSituationMarche,RDetailSituationMarche);
     i:=i+1;
R:=R+1;
end;
CloseFile(FDetailSituationMarche);
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
TypeProces:='Business'; FichierConcerne:='FStructureMarcheArchive Situation '+inttostr(NSituation);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChStructureMarcheArchive:=Adresse;
assignfile(FStructureMarcheArchive,ChStructureMarcheArchive);
if FileExists(ChStructureMarcheArchive)then
Reset(FStructureMarcheArchive)
else Rewrite(FStructureMarcheArchive);
Seek(FStructureMarcheArchive,0);
Truncate(FStructureMarcheArchive);

TypeProces:='Business'; FichierConcerne:='FStructureMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChStructureMarche:=Adresse;
assignfile(FStructureMarche,ChStructureMarche);
if FileExists(ChStructureMarche)then
Reset(FStructureMarche)
else Rewrite(FStructureMarche);
Seek(FStructureMarche,0);
i:=0;
while not eof(FStructureMarche) do
begin
     Read(FStructureMarche,RStructureMarcheArchive);
     Seek(FStructureMarcheArchive,i);
     write(FStructureMarcheArchive,RStructureMarcheArchive);
     i:=i+1;
end;
CloseFile(FStructureMarche);
CloseFile(FStructureMarcheArchive);
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
TypeProces:='Business'; FichierConcerne:='FStatistiqueMarcheArchive Situation '+inttostr(NSituation);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChStatistiqueMarcheArchive:=Adresse;
assignfile(FStatistiqueMarcheArchive,ChStatistiqueMarcheArchive);
if FileExists(ChStatistiqueMarcheArchive)then
Reset(FStatistiqueMarcheArchive)
else Rewrite(FStatistiqueMarcheArchive);
Seek(FStatistiqueMarcheArchive,0);
Truncate(FStatistiqueMarcheArchive);

TypeProces:='Business'; FichierConcerne:='FStatistiqueMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChStatistiqueMarche:=Adresse;
assignfile(FStatistiqueMarche,ChStatistiqueMarche);
if FileExists(ChStatistiqueMarche)then
Reset(FStatistiqueMarche)
else Rewrite(FStatistiqueMarche);
Seek(FStatistiqueMarche,0);
i:=0;
while not eof(FStatistiqueMarche) do
begin
     Read(FStatistiqueMarche,RStatistiqueMarcheArchive);
     Seek(FStatistiqueMarcheArchive,i);
     write(FStatistiqueMarcheArchive,RStatistiqueMarcheArchive);
     i:=i+1;
end;
CloseFile(FStatistiqueMarche);
CloseFile(FStatistiqueMarcheArchive);
////////////////////////////////////////////////////////////////////////////////

TypeProces:='Business'; FichierConcerne:='FDataStatistiqueSituation '+inttostr(NSituation);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDataStatistiqueSituation:=Adresse;
assignfile(FDataStatistiqueSituation,ChDataStatistiqueSituation);
if FileExists(ChDataStatistiqueSituation)then
Reset(FDataStatistiqueSituation)
else Rewrite(FDataStatistiqueSituation);
Seek(FDataStatistiqueSituation,0);
Truncate(FDataStatistiqueSituation);

i:=0;
R:=1;
while(R<=FSSituations.TableauSituationStructureStatistique.RowCount-1)do
begin
     if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]<>'')then
     begin
          RDataStatistiqueSituation.DataCode:=FSSituations.TableauSituationStructureStatistique.Cells[0,R]+FSSituations.TableauSituationStructureStatistique.Cells[8,R];
          RDataStatistiqueSituation.ValeurData:=strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
          write(FDataStatistiqueSituation,RDataStatistiqueSituation);
          Seek(FDataStatistiqueSituation,i);
          write(FDataStatistiqueSituation,RDataStatistiqueSituation);
          i:=i+1;
     end;
R:=R+1;
end;
CloseFile(FDataStatistiqueSituation);
end;

procedure TFSSituations.BitBtn54Click(Sender: TObject);
var OKPrint,OK:boolean;  i,l,R,m,n,AjoutLigne:integer;  MontantMarcheFixe,MontantMarche,TVAMarche:real;
    IntituleProjet,IntituleEtat:string;
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MI',true)then exit;

IntituleProjet:=FSSituations.EditTypeProjet.Text;
IntituleEtat:='Situation';

PrintPrincipaleSituationMarche.TitreMontantPayer.Caption
:='Le montant net a payer par la présente '+IntituleEtat+' s''élève a la somme en TTC de:';

if(FSSituations.EditNSituationMarche.Text<>'')then
begin

PrintPrincipaleSituationMarche.EtatEntreprise.Lines.Clear;

PrintPrincipaleSituationMarche.EtatTitre.Caption:=IntituleEtat+' N° '+FSSituations.EditNSituationMarche.Text;
{*******************Entreprise***************}
OpenFParc(RParc);
PrintPrincipaleSituationMarche.EtatEntreprise.Lines.Add('');
PrintPrincipaleSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text1);
PrintPrincipaleSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text2);
PrintPrincipaleSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text3);
PrintPrincipaleSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text4);
PrintPrincipaleSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text5);
{***************Fin Entreprise***************}

PrintPrincipaleSituationMarche.EtatEntreprise.Lines.Add('');

{******************MARCHE***************}
TypeProces:='Business'; FichierConcerne:='FMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChMarche:=Adresse;
assignfile(FMarche,ChMarche);
if FileExists(ChMarche)then
Reset(FMarche)
else Rewrite(FMarche);
Seek(FMarche,0);
i:=0;
OK:=false;
while not eof(FMarche)and(OK=false)do
begin
     Read(FMarche,RMarche);
     if(RMarche.NSMarche=strtointeger(FSSituations.EditNSMarche.Text))then
     begin
          OK:=true;
          PrintPrincipaleSituationMarche.EtatEntreprise.Lines.Add('  '+IntituleProjet+' N°: '+RMarche.RefMarche+' du '+RMarche.DateMarche);
          PrintPrincipaleSituationMarche.EtatEntreprise.Lines.Add('  Objet: '+RMarche.Marche);
          PrintPrincipaleSituationMarche.EtatEntreprise.Lines.Add('  Maitre de l''ouvrage: '+FSSituations.EditMaitreOuvrage.Text);
          MontantMarcheFixe:=RMarche.MontantMarche;
     end;

end;
CloseFile(FMarche);

MontantMarche:=strtoreal(FSSituations.TableauAnalyseMontantMarche.Cells[6,FSSituations.TableauAnalyseMontantMarche.RowCount-1]);

if(MontantMarcheFixe<>MontantMarche)then showmessage('Le montant du '+IntituleProjet+': ('+Vergule(floattostr(MontantMarcheFixe),'2','C','')+') ne correspond pas au Devis Quantitatif et Estimatif: ('+Vergule(floattostr(MontantMarche),'2','C','')+') !');

PrintPrincipaleSituationMarche.EtatEntreprise.Lines.Add('  Montant du '+IntituleProjet+' en TTC: '+vergule(floattostr(MontantMarcheFixe),'2','C','')+' DA.');
PrintPrincipaleSituationMarche.EtatEntreprise.Height:=PrintPrincipaleSituationMarche.EtatEntreprise.Lines.Capacity*16;
{***************Fin MARCHE***************}

PrintPrincipaleSituationMarche.TitreMemoire.Lines.Text:='';
PrintPrincipaleSituationMarche.TitreMemoire.Lines.Text:=FSSituations.Memoire.Lines.Text;
PrintPrincipaleSituationMarche.TitreMemoire.Height:=PrintPrincipaleSituationMarche.TitreMemoire.Lines.Capacity*15;


for l:=1 to 25 do ClearPrincipale(l,false);
for l:=1 to 25 do InitialisationPrincipale(l,l);

R:=1;
m:=1;
L:=0;
PrintPrincipaleSituationMarche.Designation.Lines.Text:=FSSituations.TableauPrincipal.Cells[5,0];
PrintPrincipaleSituationMarche.Montant.Lines.Text:=FSSituations.TableauPrincipal.Cells[6,0];
while(R<=FSSituations.TableauPrincipal.RowCount-1)do
begin
     l:=l+1;
     ClearPrincipale(l,true);
     InitialisationPrincipale(R,l);

     if(R=((m-1)*25)+1)then
     begin
          PrintPrincipaleSituationMarche.Designation1.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant1.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+2)then
     begin
          PrintPrincipaleSituationMarche.Designation2.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant2.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+3)then
     begin
          PrintPrincipaleSituationMarche.Designation3.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant3.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+4)then
     begin
          PrintPrincipaleSituationMarche.Designation4.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant4.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+5)then
     begin
          PrintPrincipaleSituationMarche.Designation5.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant5.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+6)then
     begin
          PrintPrincipaleSituationMarche.Designation6.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant6.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+7)then
     begin
          PrintPrincipaleSituationMarche.Designation7.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant7.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+8)then
     begin
          PrintPrincipaleSituationMarche.Designation8.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant8.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+9)then
     begin
          PrintPrincipaleSituationMarche.Designation9.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant9.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+10)then
     begin
          PrintPrincipaleSituationMarche.Designation10.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant10.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+11)then
     begin
          PrintPrincipaleSituationMarche.Designation11.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant11.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+12)then
     begin
          PrintPrincipaleSituationMarche.Designation12.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant12.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+13)then
     begin
          PrintPrincipaleSituationMarche.Designation13.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant13.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+14)then
     begin
          PrintPrincipaleSituationMarche.Designation14.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant14.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+15)then
     begin
          PrintPrincipaleSituationMarche.Designation15.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant15.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+16)then
     begin
          PrintPrincipaleSituationMarche.Designation16.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant16.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+17)then
     begin
          PrintPrincipaleSituationMarche.Designation17.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant17.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+18)then
     begin
          PrintPrincipaleSituationMarche.Designation18.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant18.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+19)then
     begin
          PrintPrincipaleSituationMarche.Designation19.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant19.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+20)then
     begin
          PrintPrincipaleSituationMarche.Designation20.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant20.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+21)then
     begin
          PrintPrincipaleSituationMarche.Designation21.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant21.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+22)then
     begin
          PrintPrincipaleSituationMarche.Designation22.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant22.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+23)then
     begin
          PrintPrincipaleSituationMarche.Designation23.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant23.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+24)then
     begin
          PrintPrincipaleSituationMarche.Designation24.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant24.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;
     if(R=((m-1)*25)+25)then
     begin
          PrintPrincipaleSituationMarche.Designation25.Lines.Add(FSSituations.TableauPrincipal.Cells[5,R]);
          PrintPrincipaleSituationMarche.Montant25.Lines.Add(FSSituations.TableauPrincipal.Cells[6,R]);
     end;

     if(l=25)or(R=FSSituations.TableauPrincipal.RowCount-1)then
     begin
          if(R=FSSituations.TableauPrincipal.RowCount-1)
          then
          begin
               PrintPrincipaleSituationMarche.TitreMontantPayer.Top:=(l*19)+70;
               TotalPrincipale(true)
          end
          else TotalPrincipale(false);
          PrintPrincipaleSituationMarche.Preview;
          l:=0;
          for n:=(R+1)to MinInt((R+25),FSSituations.TableauPrincipal.RowCount-1)do
          begin
               l:=l+1;
               InitialisationPrincipale(n,l);
          end;

          for l:=1 to 25 do ClearPrincipale(l,false);
          m:=m+1;
          l:=0;
     end;

R:=R+1;
end;

end;
end;

procedure TFSSituations.BitBtn55Click(Sender: TObject);
var OKPrint,OK:boolean;  i,l,m,R,n,AjoutLigne:integer;  MontantMarcheFixe,MontantMarche,TVAMarche:real;
    IntituleProjet,IntituleEtat:string;
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MI',true)then exit;

IntituleProjet:=FSSituations.EditTypeProjet.Text;
IntituleEtat:='Situation';

if(FSSituations.EditNSituationMarche.Text<>'')then
begin
PrintRecapitulatifSituationMarche.EtatEntreprise.Lines.Clear;

PrintRecapitulatifSituationMarche.EtatTitre.Caption:='RECAPITULATION GENERAL '+IntituleEtat+' N° '+FSSituations.EditNSituationMarche.Text+' Arrêté au: '+FSSituations.EditDateAttachement.Text;
{*******************Entreprise***************}
OpenFParc(RParc);
PrintRecapitulatifSituationMarche.EtatEntreprise.Lines.Add('');
PrintRecapitulatifSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text1);
PrintRecapitulatifSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text2);
PrintRecapitulatifSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text3);
PrintRecapitulatifSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text4);
PrintRecapitulatifSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text5);
{***************Fin Entreprise***************}

PrintRecapitulatifSituationMarche.EtatEntreprise.Lines.Add('');

{******************MARCHE***************}
TypeProces:='Business'; FichierConcerne:='FMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChMarche:=Adresse;
assignfile(FMarche,ChMarche);
if FileExists(ChMarche)then
Reset(FMarche)
else Rewrite(FMarche);
Seek(FMarche,0);
i:=0;
OK:=false;
while not eof(FMarche)and(OK=false)do
begin
     Read(FMarche,RMarche);
     if(RMarche.NSMarche=strtointeger(FSSituations.EditNSMarche.Text))then
     begin
          OK:=true;
          PrintRecapitulatifSituationMarche.EtatEntreprise.Lines.Add('  '+IntituleProjet+' N°: '+RMarche.RefMarche+' du '+RMarche.DateMarche);
          PrintRecapitulatifSituationMarche.EtatEntreprise.Lines.Add('  Objet: '+RMarche.Marche);
          PrintRecapitulatifSituationMarche.EtatEntreprise.Lines.Add('  Maitre de l''ouvrage: '+FSSituations.EditMaitreOuvrage.Text);
          MontantMarcheFixe:=RMarche.MontantMarche;
     end;

end;
CloseFile(FMarche);

MontantMarche:=strtoreal(FSSituations.TableauAnalyseMontantMarche.Cells[6,FSSituations.TableauAnalyseMontantMarche.RowCount-1]);

if(MontantMarcheFixe<>MontantMarche)then showmessage('Le montant du '+IntituleProjet+': ('+Vergule(floattostr(MontantMarcheFixe),'2','C','')+') ne correspond pas au Devis Quantitatif et Estimatif: ('+Vergule(floattostr(MontantMarche),'2','C','')+') !');

PrintRecapitulatifSituationMarche.EtatEntreprise.Lines.Add('  Montant du '+IntituleProjet+' en TTC: '+vergule(floattostr(MontantMarcheFixe),'2','C','')+' DA.');
PrintRecapitulatifSituationMarche.EtatEntreprise.Height:=PrintRecapitulatifSituationMarche.EtatEntreprise.Lines.Capacity*15;
{***************Fin MARCHE***************}

for l:=1 to 25 do ClearStatistique(l,false);
for l:=1 to 25 do InitialisationStatistique(l,l);

R:=1;
m:=1;
L:=0;
while(R<=FSSituations.TableauSituationStructureStatistique.RowCount-1)do
begin
     l:=l+1;
     ClearStatistique(l,true);
     InitialisationStatistique(R,l);

     if(R=((m-1)*25)+1)then
     begin
          PrintRecapitulatifSituationMarche.Designation1.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois1.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal1.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+2)then
     begin
          PrintRecapitulatifSituationMarche.Designation2.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois2.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal2.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+3)then
     begin
          PrintRecapitulatifSituationMarche.Designation3.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois3.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal3.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+4)then
     begin
          PrintRecapitulatifSituationMarche.Designation4.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois4.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal4.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+5)then
     begin
          PrintRecapitulatifSituationMarche.Designation5.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois5.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal5.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+6)then
     begin
          PrintRecapitulatifSituationMarche.Designation6.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois6.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal6.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+7)then
     begin
          PrintRecapitulatifSituationMarche.Designation7.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois7.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal7.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+8)then
     begin
          PrintRecapitulatifSituationMarche.Designation8.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois8.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal8.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+9)then
     begin
          PrintRecapitulatifSituationMarche.Designation9.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois9.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal9.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+10)then
     begin
          PrintRecapitulatifSituationMarche.Designation10.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois10.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal10.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+11)then
     begin
          PrintRecapitulatifSituationMarche.Designation11.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois11.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal11.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+12)then
     begin
          PrintRecapitulatifSituationMarche.Designation12.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois12.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal12.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+13)then
     begin
          PrintRecapitulatifSituationMarche.Designation13.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois13.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal13.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+14)then
     begin
          PrintRecapitulatifSituationMarche.Designation14.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois14.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal14.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+15)then
     begin
          PrintRecapitulatifSituationMarche.Designation15.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois15.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal15.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+16)then
     begin
          PrintRecapitulatifSituationMarche.Designation16.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois16.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal16.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+17)then
     begin
          PrintRecapitulatifSituationMarche.Designation17.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois17.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal17.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+18)then
     begin
          PrintRecapitulatifSituationMarche.Designation18.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois18.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal18.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+19)then
     begin
          PrintRecapitulatifSituationMarche.Designation19.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois19.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal19.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+20)then
     begin
          PrintRecapitulatifSituationMarche.Designation20.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois20.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal20.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25
     )+21)then
     begin
          PrintRecapitulatifSituationMarche.Designation21.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois21.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal21.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+22)then
     begin
          PrintRecapitulatifSituationMarche.Designation22.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois22.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal22.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+23)then
     begin
          PrintRecapitulatifSituationMarche.Designation23.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois23.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal23.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+24)then
     begin
          PrintRecapitulatifSituationMarche.Designation24.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois24.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal24.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;
     if(R=((m-1)*25)+25)then
     begin
          PrintRecapitulatifSituationMarche.Designation25.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[2,R]);
          PrintRecapitulatifSituationMarche.MontantMois25.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[4,R]);
          PrintRecapitulatifSituationMarche.MontantGlobal25.Lines.Add(FSSituations.TableauSituationStructureStatistique.Cells[5,R]);
     end;


     if(l=25)or(R=FSSituations.TableauSituationStructureStatistique.RowCount-1)then
     begin
          PrintRecapitulatifSituationMarche.LigneFin.Top:=(l*20)+20;
          PrintRecapitulatifSituationMarche.ColonneFin.Height:=(l*20)+25;
          if(R=FSSituations.TableauSituationStructureStatistique.RowCount-1)
          then TotalStatistique(true)
          else TotalStatistique(false);
          PrintRecapitulatifSituationMarche.Preview;
          l:=0;
          for n:=(R+1)to MinInt((R+25),FSSituations.TableauSituationStructureStatistique.RowCount-1)do
          begin
               l:=l+1;
               InitialisationStatistique(n,l);
          end;

          for l:=1 to 25 do ClearStatistique(l,false);
          m:=m+1;
          l:=0;
     end;

R:=R+1;
end;

end;
end;

procedure TFSSituations.BitBtn37Click(Sender: TObject);
var OKPrint,OK,OKHeightMax:boolean;  i,l,R,m,n,AjoutLigne,Position,HeightRow,HeightMax:integer;  MontantMarcheFixe,MontantMarche,TVAMarche:real;
    IntituleEtat,IntituleProjet:string;
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MI',true)then exit;

IntituleProjet:=FSSituations.EditTypeProjet.Text;
IntituleEtat:='Situation';

FSSituations.AffichePrintParStructure.Visible:=true;
FSSituations.AfficheTitreStructure.Caption:='Décompte';

FSSituations.TableauDecompteStructures.Cols[0].Text:='N°';
FSSituations.TableauDecompteStructures.Cols[1].Text:='Structures du Marché';
FSSituations.TableauDecompteStructures.RowCount:=2;
FSSituations.TableauDecompteStructures.Rows[1].Text:='';

TypeProces:='Business'; FichierConcerne:='FStructureMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChStructureMarche:=Adresse;
assignfile(FStructureMarche,ChStructureMarche);
if FileExists(ChStructureMarche)then
Reset(FStructureMarche)
else Rewrite(FStructureMarche);
Seek(FStructureMarche,0);
i:=0;
while not eof(FStructureMarche) do
begin
     Read(FStructureMarche,RStructureMarche);
     if(RStructureMarche.NSMarche=strtointeger(FSSituations.EditNSMarche.Text))then
     begin
          i:=i+1;
          FSSituations.TableauDecompteStructures.Cells[0,i]:=Completezerogauche(inttostr(RStructureMarche.NSMarche),'5')+Completezerogauche(inttostr(RStructureMarche.NStructureMarche),'5');
          FSSituations.TableauDecompteStructures.Cells[1,i]:=RStructureMarche.StructureMarche;
     end;
end;
if(i>0)then
begin
     FSSituations.TableauDecompteStructures.RowCount:=i+1;
     FSSituations.TableauDecompteStructures.SetFocus;
     FSSituations.RBSelectDecompte.Checked:=false;
     FSSituations.RBSelectDecompte.Caption:='Par Structure';

end
else
begin
FSSituations.AffichePrintParStructure.Visible:=false;

if(FSSituations.EditNSituationMarche.Text<>'')then
begin

PrintSituationMarche.EtatEntreprise.Lines.Clear;

PrintSituationMarche.EtatTitre.Caption:='Décompte Provisoire des Travaux réalisés de la '+IntituleEtat+' N° '+FSSituations.EditNSituationMarche.Text+' Arrêté au: '+FSSituations.EditDateAttachement.Text;
{*******************Entreprise***************}
OpenFParc(RParc);
PrintSituationMarche.EtatEntreprise.Lines.Add('');
PrintSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text1);
PrintSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text2);
PrintSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text3);
PrintSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text4);
PrintSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text5);
{***************Fin Entreprise***************}

PrintSituationMarche.EtatEntreprise.Lines.Add('');

{******************MARCHE***************}
TypeProces:='Business'; FichierConcerne:='FMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChMarche:=Adresse;
assignfile(FMarche,ChMarche);
if FileExists(ChMarche)then
Reset(FMarche)
else Rewrite(FMarche);
Seek(FMarche,0);
i:=0;
OK:=false;
while not eof(FMarche)and(OK=false)do
begin
     Read(FMarche,RMarche);
     if(RMarche.NSMarche=strtointeger(FSSituations.EditNSMarche.Text))then
     begin
          OK:=true;
          PrintSituationMarche.EtatEntreprise.Lines.Add('  '+IntituleProjet+' N°: '+RMarche.RefMarche+' du '+RMarche.DateMarche);
          PrintSituationMarche.EtatEntreprise.Lines.Add('  Objet: '+RMarche.Marche);
          PrintSituationMarche.EtatEntreprise.Lines.Add('  Maitre de l''ouvrage: '+FSSituations.EditMaitreOuvrage.Text);
          MontantMarcheFixe:=RMarche.MontantMarche;
     end;

end;
CloseFile(FMarche);

MontantMarche:=strtoreal(FSSituations.TableauAnalyseMontantMarche.Cells[6,FSSituations.TableauAnalyseMontantMarche.RowCount-1]);

if(MontantMarcheFixe<>MontantMarche)then showmessage('Le montant du '+IntituleProjet+': ('+Vergule(floattostr(MontantMarcheFixe),'2','C','')+') ne correspond pas au Devis Quantitatif et Estimatif: ('+Vergule(floattostr(MontantMarche),'2','C','')+') !');

PrintSituationMarche.EtatEntreprise.Lines.Add('  Montant du '+IntituleProjet+' en TTC: '+vergule(floattostr(MontantMarcheFixe),'2','C','')+' DA.');
PrintSituationMarche.EtatEntreprise.Height:=PrintSituationMarche.EtatEntreprise.Lines.Capacity*15;
{***************Fin MARCHE***************}

for l:=1 to 27 do ClearSituation(l,false);
for l:=1 to 27 do InitialisationSituation(l,l);

HeightMax:=520;

R:=1;
m:=1;
L:=0;
Position:=32;
while(R<=FSSituations.TableauDecompteSituation.RowCount-1)do
begin
FSSituations.TestePrintDevis.Lines.Text:=FSSituations.TableauDecompteSituation.Cells[1,R];
HeightRow:=FSSituations.TestePrintDevis.Lines.Count*20;
OKHeightMax:=true;
if((Position+HeightRow)<HeightMax)then
begin
     l:=l+1;
     OKHeightMax:=false;
     ClearSituation(l,true);
     InitialisationSituation(R,l);

     if(l=1)then
     begin
          PrintSituationMarche.Code1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=2)then
     begin
          PrintSituationMarche.Code2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=3)then
     begin
          PrintSituationMarche.Code3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=4)then
     begin
          PrintSituationMarche.Code4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=5)then
     begin
          PrintSituationMarche.Code5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=6)then
     begin
          PrintSituationMarche.Code6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=7)then
     begin
          PrintSituationMarche.Code7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=8)then
     begin
          PrintSituationMarche.Code8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=9)then
     begin
          PrintSituationMarche.Code9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=10)then
     begin
          PrintSituationMarche.Code10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=11)then
     begin
          PrintSituationMarche.Code11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=12)then
     begin
          PrintSituationMarche.Code12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=13)then
     begin
          PrintSituationMarche.Code13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=14)then
     begin
          PrintSituationMarche.Code14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=15)then
     begin
          PrintSituationMarche.Code15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=16)then
     begin
          PrintSituationMarche.Code16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=17)then
     begin
          PrintSituationMarche.Code17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=18)then
     begin
          PrintSituationMarche.Code18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=19)then
     begin
          PrintSituationMarche.Code19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=20)then
     begin
          PrintSituationMarche.Code20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=21)then
     begin
          PrintSituationMarche.Code21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=22)then
     begin
          PrintSituationMarche.Code22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=23)then
     begin
          PrintSituationMarche.Code23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=24)then
     begin
          PrintSituationMarche.Code24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=25)then
     begin
          PrintSituationMarche.Code25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=26)then
     begin
          PrintSituationMarche.Code26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=27)then
     begin
          PrintSituationMarche.Code27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;

     HeightSituationMarche(l,Position);
end
else R:=R-1;

     if(l=27)or(R=FSSituations.TableauDecompteSituation.RowCount-1)or(OKHeightMax=true)then
     begin
          PrintSituationMarche.Preview;
          l:=0;
          for n:=(R+1)to MinInt((R+27),FSSituations.TableauDecompteSituation.RowCount-1)do
          begin
               l:=l+1;
               InitialisationSituation(n,l);
          end;

          for l:=1 to 27 do ClearSituation(l,false);

          Position:=32;
          m:=m+1;
          l:=0;
     end;
R:=R+1;
end;

end;
end;

end;

Procedure ClearPrincipale(Indice:integer; Visible:boolean);
begin
     if(Indice=1)then
     begin
          PrintPrincipaleSituationMarche.Designation1.Lines.Clear;   PrintPrincipaleSituationMarche.Designation1.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant1.Lines.Clear;       PrintPrincipaleSituationMarche.Montant1.Enabled:=Visible;
     end;
     if(Indice=2)then
     begin
          PrintPrincipaleSituationMarche.Designation2.Lines.Clear;   PrintPrincipaleSituationMarche.Designation2.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant2.Lines.Clear;       PrintPrincipaleSituationMarche.Montant2.Enabled:=Visible;
     end;
     if(Indice=3)then
     begin
          PrintPrincipaleSituationMarche.Designation3.Lines.Clear;   PrintPrincipaleSituationMarche.Designation3.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant3.Lines.Clear;       PrintPrincipaleSituationMarche.Montant3.Enabled:=Visible;
     end;
     if(Indice=4)then
     begin
          PrintPrincipaleSituationMarche.Designation4.Lines.Clear;   PrintPrincipaleSituationMarche.Designation4.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant4.Lines.Clear;   PrintPrincipaleSituationMarche.Montant4.Enabled:=Visible;
     end;
     if(Indice=5)then
     begin
          PrintPrincipaleSituationMarche.Designation5.Lines.Clear;   PrintPrincipaleSituationMarche.Designation5.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant5.Lines.Clear;   PrintPrincipaleSituationMarche.Montant5.Enabled:=Visible;
     end;
     if(Indice=6)then
     begin
          PrintPrincipaleSituationMarche.Designation6.Lines.Clear;   PrintPrincipaleSituationMarche.Designation6.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant6.Lines.Clear;   PrintPrincipaleSituationMarche.Montant6.Enabled:=Visible;
     end;
     if(Indice=7)then
     begin
          PrintPrincipaleSituationMarche.Designation7.Lines.Clear;   PrintPrincipaleSituationMarche.Designation7.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant7.Lines.Clear;   PrintPrincipaleSituationMarche.Montant7.Enabled:=Visible;
     end;
     if(Indice=8)then
     begin
          PrintPrincipaleSituationMarche.Designation8.Lines.Clear;   PrintPrincipaleSituationMarche.Designation8.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant8.Lines.Clear;   PrintPrincipaleSituationMarche.Montant8.Enabled:=Visible;
     end;
     if(Indice=9)then
     begin
          PrintPrincipaleSituationMarche.Designation9.Lines.Clear;   PrintPrincipaleSituationMarche.Designation9.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant9.Lines.Clear;   PrintPrincipaleSituationMarche.Montant9.Enabled:=Visible;
     end;
     if(Indice=10)then
     begin
          PrintPrincipaleSituationMarche.Designation10.Lines.Clear;   PrintPrincipaleSituationMarche.Designation10.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant10.Lines.Clear;   PrintPrincipaleSituationMarche.Montant10.Enabled:=Visible;
     end;
     if(Indice=11)then
     begin
          PrintPrincipaleSituationMarche.Designation11.Lines.Clear;   PrintPrincipaleSituationMarche.Designation11.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant11.Lines.Clear;   PrintPrincipaleSituationMarche.Montant11.Enabled:=Visible;
     end;
     if(Indice=12)then
     begin
          PrintPrincipaleSituationMarche.Designation12.Lines.Clear;   PrintPrincipaleSituationMarche.Designation12.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant12.Lines.Clear;   PrintPrincipaleSituationMarche.Montant12.Enabled:=Visible;
     end;
     if(Indice=13)then
     begin
          PrintPrincipaleSituationMarche.Designation13.Lines.Clear;   PrintPrincipaleSituationMarche.Designation13.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant13.Lines.Clear;   PrintPrincipaleSituationMarche.Montant13.Enabled:=Visible;
     end;
     if(Indice=14)then
     begin
          PrintPrincipaleSituationMarche.Designation14.Lines.Clear;   PrintPrincipaleSituationMarche.Designation14.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant14.Lines.Clear;   PrintPrincipaleSituationMarche.Montant14.Enabled:=Visible;
     end;
     if(Indice=15)then
     begin
          PrintPrincipaleSituationMarche.Designation15.Lines.Clear;   PrintPrincipaleSituationMarche.Designation15.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant15.Lines.Clear;   PrintPrincipaleSituationMarche.Montant15.Enabled:=Visible;
     end;
     if(Indice=16)then
     begin
          PrintPrincipaleSituationMarche.Designation16.Lines.Clear;   PrintPrincipaleSituationMarche.Designation16.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant16.Lines.Clear;   PrintPrincipaleSituationMarche.Montant16.Enabled:=Visible;
     end;
     if(Indice=17)then
     begin
          PrintPrincipaleSituationMarche.Designation17.Lines.Clear;   PrintPrincipaleSituationMarche.Designation17.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant17.Lines.Clear;   PrintPrincipaleSituationMarche.Montant17.Enabled:=Visible;
     end;
     if(Indice=18)then
     begin
          PrintPrincipaleSituationMarche.Designation18.Lines.Clear;   PrintPrincipaleSituationMarche.Designation18.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant18.Lines.Clear;   PrintPrincipaleSituationMarche.Montant18.Enabled:=Visible;
     end;
     if(Indice=19)then
     begin
          PrintPrincipaleSituationMarche.Designation19.Lines.Clear;   PrintPrincipaleSituationMarche.Designation19.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant19.Lines.Clear;   PrintPrincipaleSituationMarche.Montant19.Enabled:=Visible;
     end;
     if(Indice=20)then
     begin
          PrintPrincipaleSituationMarche.Designation20.Lines.Clear;   PrintPrincipaleSituationMarche.Designation20.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant20.Lines.Clear;   PrintPrincipaleSituationMarche.Montant20.Enabled:=Visible;
     end;
     if(Indice=21)then
     begin
          PrintPrincipaleSituationMarche.Designation21.Lines.Clear;   PrintPrincipaleSituationMarche.Designation21.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant21.Lines.Clear;   PrintPrincipaleSituationMarche.Montant21.Enabled:=Visible;
     end;
     if(Indice=22)then
     begin
          PrintPrincipaleSituationMarche.Designation22.Lines.Clear;   PrintPrincipaleSituationMarche.Designation22.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant22.Lines.Clear;   PrintPrincipaleSituationMarche.Montant22.Enabled:=Visible;
     end;
     if(Indice=23)then
     begin
          PrintPrincipaleSituationMarche.Designation23.Lines.Clear;   PrintPrincipaleSituationMarche.Designation23.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant23.Lines.Clear;   PrintPrincipaleSituationMarche.Montant23.Enabled:=Visible;
     end;
     if(Indice=24)then
     begin
          PrintPrincipaleSituationMarche.Designation24.Lines.Clear;   PrintPrincipaleSituationMarche.Designation24.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant24.Lines.Clear;   PrintPrincipaleSituationMarche.Montant24.Enabled:=Visible;
     end;
     if(Indice=25)then
     begin
          PrintPrincipaleSituationMarche.Designation25.Lines.Clear;   PrintPrincipaleSituationMarche.Designation25.Enabled:=Visible;
          PrintPrincipaleSituationMarche.Montant25.Lines.Clear;   PrintPrincipaleSituationMarche.Montant25.Enabled:=Visible;
     end;
end;

Procedure InitialisationPrincipale(ARow,Indice:integer);
begin
if(FSSituations.TableauPrincipal.Cells[6,ARow]='')
then
begin
     PrintPrincipaleSituationMarche.TitreExemple.Alignment:=taCenter;
     PrintPrincipaleSituationMarche.TitreExemple.Font.Style:=[fsBold,fsUnderline];
end
else
if(FSSituations.TableauPrincipal.Cells[0,ARow]<>'')
then
begin
     PrintPrincipaleSituationMarche.TitreExemple.Font.Style:=[fsBold];
     if(FSSituations.TableauPrincipal.Cells[1,ARow]<>'')
     then PrintPrincipaleSituationMarche.TitreExemple.Alignment:=taCenter
     else PrintPrincipaleSituationMarche.TitreExemple.Alignment:=taLeftJustify;
end
else
begin
     PrintPrincipaleSituationMarche.TitreExemple.Alignment:=taLeftJustify;
     PrintPrincipaleSituationMarche.TitreExemple.Font.Style:=[];
end;

     if(Indice=1)then
     begin
          PrintPrincipaleSituationMarche.Designation1.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation1.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant1.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=2)then
     begin
          PrintPrincipaleSituationMarche.Designation2.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation2.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant2.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=3)then
     begin
          PrintPrincipaleSituationMarche.Designation3.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation3.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant3.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=4)then
     begin
          PrintPrincipaleSituationMarche.Designation4.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation4.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant4.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=5)then
     begin
          PrintPrincipaleSituationMarche.Designation5.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation5.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant5.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=6)then
     begin
          PrintPrincipaleSituationMarche.Designation6.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation6.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant6.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=7)then
     begin
          PrintPrincipaleSituationMarche.Designation7.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation7.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant7.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=8)then
     begin
          PrintPrincipaleSituationMarche.Designation8.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation8.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant8.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=9)then
     begin
          PrintPrincipaleSituationMarche.Designation9.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation9.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant9.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=10)then
     begin
          PrintPrincipaleSituationMarche.Designation10.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation10.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant10.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=11)then
     begin
          PrintPrincipaleSituationMarche.Designation11.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation11.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant11.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=12)then
     begin
          PrintPrincipaleSituationMarche.Designation12.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation12.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant12.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=13)then
     begin
          PrintPrincipaleSituationMarche.Designation13.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation13.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant13.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=14)then
     begin
          PrintPrincipaleSituationMarche.Designation14.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation14.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant14.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=15)then
     begin
          PrintPrincipaleSituationMarche.Designation15.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation15.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant15.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=16)then
     begin
          PrintPrincipaleSituationMarche.Designation16.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation16.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant16.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=17)then
     begin
          PrintPrincipaleSituationMarche.Designation17.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation17.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant17.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=18)then
     begin
          PrintPrincipaleSituationMarche.Designation18.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation18.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant18.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=19)then
     begin
          PrintPrincipaleSituationMarche.Designation19.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation19.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant19.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=20)then
     begin
          PrintPrincipaleSituationMarche.Designation20.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation20.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant20.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=21)then
     begin
          PrintPrincipaleSituationMarche.Designation21.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation21.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant21.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=22)then
     begin
          PrintPrincipaleSituationMarche.Designation22.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation22.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant22.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=23)then
     begin
          PrintPrincipaleSituationMarche.Designation23.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation23.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant23.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=24)then
     begin
          PrintPrincipaleSituationMarche.Designation24.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation24.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant24.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=25)then
     begin
          PrintPrincipaleSituationMarche.Designation25.Alignment:=PrintPrincipaleSituationMarche.TitreExemple.Alignment;
          PrintPrincipaleSituationMarche.Designation25.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
          PrintPrincipaleSituationMarche.Montant25.Font.Style:=PrintPrincipaleSituationMarche.TitreExemple.Font.Style;
     end;
end;

Procedure TotalPrincipale(Visible:boolean);
begin
     PrintPrincipaleSituationMarche.TitreMontantPayer.Enabled:=Visible;
     PrintPrincipaleSituationMarche.MontantPayer.Enabled:=Visible;
     PrintPrincipaleSituationMarche.MaitreOuvrage01.Enabled:=Visible;
     PrintPrincipaleSituationMarche.MaitreOuvrage02.Enabled:=Visible;
     PrintPrincipaleSituationMarche.MaitreOuvrage03.Enabled:=Visible;
     PrintPrincipaleSituationMarche.MaitreOuvrage04.Enabled:=Visible;
     PrintPrincipaleSituationMarche.MaitreOuvrage05.Enabled:=Visible;
     PrintPrincipaleSituationMarche.Entreprise01.Enabled:=Visible;
     PrintPrincipaleSituationMarche.Entreprise02.Enabled:=Visible;
     PrintPrincipaleSituationMarche.Entreprise03.Enabled:=Visible;

     if(Visible=true)then
     begin
          PrintPrincipaleSituationMarche.MontantPayer.Top:=PrintPrincipaleSituationMarche.TitreMontantPayer.Top+25;
          PrintPrincipaleSituationMarche.MaitreOuvrage01.Top:=PrintPrincipaleSituationMarche.MontantPayer.Height+
                                                              PrintPrincipaleSituationMarche.MontantPayer.Top+23;
          PrintPrincipaleSituationMarche.MaitreOuvrage02.Top:=PrintPrincipaleSituationMarche.MaitreOuvrage01.Top+(16*1);
          PrintPrincipaleSituationMarche.MaitreOuvrage03.Top:=PrintPrincipaleSituationMarche.MaitreOuvrage01.Top+(16*2);
          PrintPrincipaleSituationMarche.MaitreOuvrage04.Top:=PrintPrincipaleSituationMarche.MaitreOuvrage01.Top+(16*8);
          PrintPrincipaleSituationMarche.MaitreOuvrage05.Top:=PrintPrincipaleSituationMarche.MaitreOuvrage01.Top+(16*9);

          PrintPrincipaleSituationMarche.Entreprise01.Top:=PrintPrincipaleSituationMarche.MaitreOuvrage01.Top;
          PrintPrincipaleSituationMarche.Entreprise02.Top:=PrintPrincipaleSituationMarche.Entreprise01.Top+(16*1);
          PrintPrincipaleSituationMarche.Entreprise03.Top:=PrintPrincipaleSituationMarche.Entreprise01.Top+(16*8);

          PrintPrincipaleSituationMarche.MontantPayer.Lines.Clear;;
          PrintPrincipaleSituationMarche.MontantPayer.Lines.Text:=ChiffreEnLettre(VerguletoNum(FSSituations.TableauPrincipal.Cells[6,FSSituations.TableauPrincipal.RowCount-1]));
          PrintPrincipaleSituationMarche.MontantPayer.Height:=PrintPrincipaleSituationMarche.MontantPayer.Lines.Capacity*20;
     end;
end;

Procedure ClearStatistique(Indice:integer; Visible:boolean);
begin
     if(Indice=1)then
     begin
          PrintRecapitulatifSituationMarche.Designation1.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation1.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois1.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois1.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal1.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal1.Enabled:=Visible;
     end;
     if(Indice=2)then
     begin
          PrintRecapitulatifSituationMarche.Designation2.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation2.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois2.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois2.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal2.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal2.Enabled:=Visible;
     end;
     if(Indice=3)then
     begin
          PrintRecapitulatifSituationMarche.Designation3.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation3.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois3.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois3.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal3.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal3.Enabled:=Visible;
     end;
     if(Indice=4)then
     begin
          PrintRecapitulatifSituationMarche.Designation4.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation4.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois4.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois4.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal4.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal4.Enabled:=Visible;
     end;
     if(Indice=5)then
     begin
          PrintRecapitulatifSituationMarche.Designation5.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation5.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois5.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois5.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal5.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal5.Enabled:=Visible;
     end;
     if(Indice=6)then
     begin
          PrintRecapitulatifSituationMarche.Designation6.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation6.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois6.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois6.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal6.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal6.Enabled:=Visible;
     end;
     if(Indice=7)then
     begin
          PrintRecapitulatifSituationMarche.Designation7.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation7.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois7.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois7.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal7.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal7.Enabled:=Visible;
     end;
     if(Indice=8)then
     begin
          PrintRecapitulatifSituationMarche.Designation8.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation8.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois8.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois8.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal8.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal8.Enabled:=Visible;
     end;
     if(Indice=9)then
     begin
          PrintRecapitulatifSituationMarche.Designation9.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation9.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois9.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois9.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal9.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal9.Enabled:=Visible;
     end;
     if(Indice=10)then
     begin
          PrintRecapitulatifSituationMarche.Designation10.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation10.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois10.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois10.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal10.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal10.Enabled:=Visible;
     end;
     if(Indice=11)then
     begin
          PrintRecapitulatifSituationMarche.Designation11.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation11.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois11.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois11.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal11.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal11.Enabled:=Visible;
     end;
     if(Indice=12)then
     begin
          PrintRecapitulatifSituationMarche.Designation12.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation12.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois12.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois12.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal12.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal12.Enabled:=Visible;
     end;
     if(Indice=13)then
     begin
          PrintRecapitulatifSituationMarche.Designation13.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation13.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois13.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois13.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal13.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal13.Enabled:=Visible;
     end;
     if(Indice=14)then
     begin
          PrintRecapitulatifSituationMarche.Designation14.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation14.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois14.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois14.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal14.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal14.Enabled:=Visible;
     end;
     if(Indice=15)then
     begin
          PrintRecapitulatifSituationMarche.Designation15.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation15.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois15.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois15.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal15.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal15.Enabled:=Visible;
     end;
     if(Indice=16)then
     begin
          PrintRecapitulatifSituationMarche.Designation16.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation16.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois16.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois16.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal16.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal16.Enabled:=Visible;
     end;
     if(Indice=17)then
     begin
          PrintRecapitulatifSituationMarche.Designation17.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation17.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois17.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois17.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal17.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal17.Enabled:=Visible;
     end;
     if(Indice=18)then
     begin
          PrintRecapitulatifSituationMarche.Designation18.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation18.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois18.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois18.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal18.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal18.Enabled:=Visible;
     end;
     if(Indice=19)then
     begin
          PrintRecapitulatifSituationMarche.Designation19.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation19.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois19.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois19.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal19.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal19.Enabled:=Visible;
     end;
     if(Indice=20)then
     begin
          PrintRecapitulatifSituationMarche.Designation20.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation20.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois20.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois20.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal20.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal20.Enabled:=Visible;
     end;
     if(Indice=21)then
     begin
          PrintRecapitulatifSituationMarche.Designation21.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation21.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois21.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois21.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal21.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal21.Enabled:=Visible;
     end;
     if(Indice=22)then
     begin
          PrintRecapitulatifSituationMarche.Designation22.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation22.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois22.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois22.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal22.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal22.Enabled:=Visible;
     end;
     if(Indice=23)then
     begin
          PrintRecapitulatifSituationMarche.Designation23.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation23.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois23.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois23.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal23.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal23.Enabled:=Visible;
     end;
     if(Indice=24)then
     begin
          PrintRecapitulatifSituationMarche.Designation24.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation24.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois24.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois24.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal24.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal24.Enabled:=Visible;
     end;
     if(Indice=25)then
     begin
          PrintRecapitulatifSituationMarche.Designation25.Lines.Clear;       PrintRecapitulatifSituationMarche.Designation25.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantMois25.Lines.Clear;       PrintRecapitulatifSituationMarche.MontantMois25.Enabled:=Visible;
          PrintRecapitulatifSituationMarche.MontantGlobal25.Lines.Clear;     PrintRecapitulatifSituationMarche.MontantGlobal25.Enabled:=Visible;
     end;
end;

Procedure InitialisationStatistique(ARow,Indice:integer);
begin
if(Longueur(FSSituations.TableauSituationStructureStatistique.Cells[0,ARow])=10)
then
begin
     PrintRecapitulatifSituationMarche.TitreExemple.Font.Style:=[];
     PrintRecapitulatifSituationMarche.TitreExemple.Alignment:=taCenter;
end
else
begin
     PrintRecapitulatifSituationMarche.TitreExemple.Font.Style:=[fsBold];
     PrintRecapitulatifSituationMarche.TitreExemple.Alignment:=taLeftJustify;
end;

     if(Indice=1)then
     begin
          PrintRecapitulatifSituationMarche.Designation1.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation1.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois1.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal1.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=2)then
     begin
          PrintRecapitulatifSituationMarche.Designation2.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation2.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois2.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal2.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=3)then
     begin
          PrintRecapitulatifSituationMarche.Designation3.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation3.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois3.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal3.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=4)then
     begin
          PrintRecapitulatifSituationMarche.Designation4.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation4.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois4.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal4.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=5)then
     begin
          PrintRecapitulatifSituationMarche.Designation5.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation5.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois5.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal5.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=6)then
     begin
          PrintRecapitulatifSituationMarche.Designation6.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation6.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois6.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal6.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=7)then
     begin
          PrintRecapitulatifSituationMarche.Designation7.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation7.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois7.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal7.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=8)then
     begin
          PrintRecapitulatifSituationMarche.Designation8.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation8.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois8.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal8.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=9)then
     begin
          PrintRecapitulatifSituationMarche.Designation9.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation9.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois9.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal9.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=10)then
     begin
          PrintRecapitulatifSituationMarche.Designation10.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation10.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois10.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal10.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=11)then
     begin
          PrintRecapitulatifSituationMarche.Designation11.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation11.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois11.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal11.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=12)then
     begin
          PrintRecapitulatifSituationMarche.Designation12.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation12.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois12.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal12.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=13)then
     begin
          PrintRecapitulatifSituationMarche.Designation13.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation13.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois13.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal13.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=14)then
     begin
          PrintRecapitulatifSituationMarche.Designation14.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation14.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois14.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal14.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=15)then
     begin
          PrintRecapitulatifSituationMarche.Designation15.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation15.Font.Style:=PrintRecapitulatifSituationMarche
          .TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois15.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal15.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=16)then
     begin
          PrintRecapitulatifSituationMarche.Designation16.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation16.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois16.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal16.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=17)then
     begin
          PrintRecapitulatifSituationMarche.Designation17.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation17.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois17.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal17.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=18)then
     begin
          PrintRecapitulatifSituationMarche.Designation18.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation18.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois18.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal18.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=19)then
     begin
          PrintRecapitulatifSituationMarche.Designation19.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation19.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois19.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal19.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=20)then
     begin
          PrintRecapitulatifSituationMarche.Designation20.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation20.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois20.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal20.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=21)then
     begin
          PrintRecapitulatifSituationMarche.Designation21.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation21.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois21.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal21.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=22)then
     begin
          PrintRecapitulatifSituationMarche.Designation22.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation22.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois22.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal22.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=23)then
     begin
          PrintRecapitulatifSituationMarche.Designation23.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation23.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois23.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal23.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=24)then
     begin
          PrintRecapitulatifSituationMarche.Designation24.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation24.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois24.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal24.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=25)then
     begin
          PrintRecapitulatifSituationMarche.Designation25.Alignment:=PrintRecapitulatifSituationMarche.TitreExemple.Alignment;
          PrintRecapitulatifSituationMarche.Designation25.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantMois25.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
          PrintRecapitulatifSituationMarche.MontantGlobal25.Font.Style:=PrintRecapitulatifSituationMarche.TitreExemple.Font.Style;
     end;

end;

Procedure TotalStatistique(Visible:boolean);
begin
     PrintRecapitulatifSituationMarche.TitreMontantPayer.Enabled:=Visible;
     PrintRecapitulatifSituationMarche.MontantPayer.Enabled:=Visible;
     PrintRecapitulatifSituationMarche.MaitreOuvrage.Enabled:=Visible;
     PrintRecapitulatifSituationMarche.BET.Enabled:=Visible;
     PrintRecapitulatifSituationMarche.Entreprise.Enabled:=Visible;

     if(Visible=true)then
     begin
          PrintRecapitulatifSituationMarche.TitreMontantPayer.Top:=PrintRecapitulatifSituationMarche.LigneFin.Top+29;
          PrintRecapitulatifSituationMarche.MontantPayer.Top:=PrintRecapitulatifSituationMarche.LigneFin.Top+57;
          PrintRecapitulatifSituationMarche.MaitreOuvrage.Top:=PrintRecapitulatifSituationMarche.MontantPayer.Height+
                                                               PrintRecapitulatifSituationMarche.MontantPayer.Top+20;
          PrintRecapitulatifSituationMarche.BET.Top:=PrintRecapitulatifSituationMarche.MaitreOuvrage.Top;
          PrintRecapitulatifSituationMarche.Entreprise.Top:=PrintRecapitulatifSituationMarche.MaitreOuvrage.Top;

          PrintRecapitulatifSituationMarche.MontantPayer.Lines.Clear;
          PrintRecapitulatifSituationMarche.MontantPayer.Lines.Text:=ChiffreEnLettre(VerguletoNum(FSSituations.TableauSituationStructureStatistique.Cells[5,FSSituations.TableauSituationStructureStatistique.RowCount-1]));
          PrintRecapitulatifSituationMarche.MontantPayer.Height:=PrintRecapitulatifSituationMarche.MontantPayer.Lines.Capacity*20;
     end;
end;

Procedure ClearSituation(Indice:integer; Visible:boolean);
begin
     if(Indice=1)then
     begin
          PrintSituationMarche.Code1.Lines.Clear;           PrintSituationMarche.Code1.Enabled:=Visible;
          PrintSituationMarche.Desig1.Lines.Clear;          PrintSituationMarche.Desig1.Enabled:=Visible;
          PrintSituationMarche.Um1.Lines.Clear;             PrintSituationMarche.Um1.Enabled:=Visible;
          PrintSituationMarche.QteMarche1.Lines.Clear;      PrintSituationMarche.QteMarche1.Enabled:=Visible;
          PrintSituationMarche.QtePrec1.Lines.Clear;        PrintSituationMarche.QtePrec1.Enabled:=Visible;
          PrintSituationMarche.QteMois1.Lines.Clear;        PrintSituationMarche.QteMois1.Enabled:=Visible;
          PrintSituationMarche.QteTotale1.Lines.Clear;      PrintSituationMarche.QteTotale1.Enabled:=Visible;
          PrintSituationMarche.PrixUnit1.Lines.Clear;       PrintSituationMarche.PrixUnit1.Enabled:=Visible;
          PrintSituationMarche.MontantPrec1.Lines.Clear;    PrintSituationMarche.MontantPrec1.Enabled:=Visible;
          PrintSituationMarche.MontantMois1.Lines.Clear;    PrintSituationMarche.MontantMois1.Enabled:=Visible;
          PrintSituationMarche.MontantCumule1.Lines.Clear;  PrintSituationMarche.MontantCumule1.Enabled:=Visible;
     end;
     if(Indice=2)then
     begin
          PrintSituationMarche.Code2.Lines.Clear;           PrintSituationMarche.Code2.Enabled:=Visible;
          PrintSituationMarche.Desig2.Lines.Clear;          PrintSituationMarche.Desig2.Enabled:=Visible;
          PrintSituationMarche.Um2.Lines.Clear;             PrintSituationMarche.Um2.Enabled:=Visible;
          PrintSituationMarche.QteMarche2.Lines.Clear;      PrintSituationMarche.QteMarche2.Enabled:=Visible;
          PrintSituationMarche.QtePrec2.Lines.Clear;        PrintSituationMarche.QtePrec2.Enabled:=Visible;
          PrintSituationMarche.QteMois2.Lines.Clear;        PrintSituationMarche.QteMois2.Enabled:=Visible;
          PrintSituationMarche.QteTotale2.Lines.Clear;      PrintSituationMarche.QteTotale2.Enabled:=Visible;
          PrintSituationMarche.PrixUnit2.Lines.Clear;       PrintSituationMarche.PrixUnit2.Enabled:=Visible;
          PrintSituationMarche.MontantPrec2.Lines.Clear;    PrintSituationMarche.MontantPrec2.Enabled:=Visible;
          PrintSituationMarche.MontantMois2.Lines.Clear;    PrintSituationMarche.MontantMois2.Enabled:=Visible;
          PrintSituationMarche.MontantCumule2.Lines.Clear;  PrintSituationMarche.MontantCumule2.Enabled:=Visible;
     end;
     if(Indice=3)then
     begin
          PrintSituationMarche.Code3.Lines.Clear;           PrintSituationMarche.Code3.Enabled:=Visible;
          PrintSituationMarche.Desig3.Lines.Clear;          PrintSituationMarche.Desig3.Enabled:=Visible;
          PrintSituationMarche.Um3.Lines.Clear;             PrintSituationMarche.Um3.Enabled:=Visible;
          PrintSituationMarche.QteMarche3.Lines.Clear;      PrintSituationMarche.QteMarche3.Enabled:=Visible;
          PrintSituationMarche.QtePrec3.Lines.Clear;        PrintSituationMarche.QtePrec3.Enabled:=Visible;
          PrintSituationMarche.QteMois3.Lines.Clear;        PrintSituationMarche.QteMois3.Enabled:=Visible;
          PrintSituationMarche.QteTotale3.Lines.Clear;      PrintSituationMarche.QteTotale3.Enabled:=Visible;
          PrintSituationMarche.PrixUnit3.Lines.Clear;       PrintSituationMarche.PrixUnit3.Enabled:=Visible;
          PrintSituationMarche.MontantPrec3.Lines.Clear;    PrintSituationMarche.MontantPrec3.Enabled:=Visible;
          PrintSituationMarche.MontantMois3.Lines.Clear;    PrintSituationMarche.MontantMois3.Enabled:=Visible;
          PrintSituationMarche.MontantCumule3.Lines.Clear;  PrintSituationMarche.MontantCumule3.Enabled:=Visible;
     end;
     if(Indice=4)then
     begin
          PrintSituationMarche.Code4.Lines.Clear;           PrintSituationMarche.Code4.Enabled:=Visible;
          PrintSituationMarche.Desig4.Lines.Clear;          PrintSituationMarche.Desig4.Enabled:=Visible;
          PrintSituationMarche.Um4.Lines.Clear;             PrintSituationMarche.Um4.Enabled:=Visible;
          PrintSituationMarche.QteMarche4.Lines.Clear;      PrintSituationMarche.QteMarche4.Enabled:=Visible;
          PrintSituationMarche.QtePrec4.Lines.Clear;        PrintSituationMarche.QtePrec4.Enabled:=Visible;
          PrintSituationMarche.QteMois4.Lines.Clear;        PrintSituationMarche.QteMois4.Enabled:=Visible;
          PrintSituationMarche.QteTotale4.Lines.Clear;      PrintSituationMarche.QteTotale4.Enabled:=Visible;
          PrintSituationMarche.PrixUnit4.Lines.Clear;       PrintSituationMarche.PrixUnit4.Enabled:=Visible;
          PrintSituationMarche.MontantPrec4.Lines.Clear;    PrintSituationMarche.MontantPrec4.Enabled:=Visible;
          PrintSituationMarche.MontantMois4.Lines.Clear;    PrintSituationMarche.MontantMois4.Enabled:=Visible;
          PrintSituationMarche.MontantCumule4.Lines.Clear;  PrintSituationMarche.MontantCumule4.Enabled:=Visible;
     end;
     if(Indice=5)then
     begin
          PrintSituationMarche.Code5.Lines.Clear;           PrintSituationMarche.Code5.Enabled:=Visible;
          PrintSituationMarche.Desig5.Lines.Clear;          PrintSituationMarche.Desig5.Enabled:=Visible;
          PrintSituationMarche.Um5.Lines.Clear;             PrintSituationMarche.Um5.Enabled:=Visible;
          PrintSituationMarche.QteMarche5.Lines.Clear;      PrintSituationMarche.QteMarche5.Enabled:=Visible;
          PrintSituationMarche.QtePrec5.Lines.Clear;        PrintSituationMarche.QtePrec5.Enabled:=Visible;
          PrintSituationMarche.QteMois5.Lines.Clear;        PrintSituationMarche.QteMois5.Enabled:=Visible;
          PrintSituationMarche.QteTotale5.Lines.Clear;      PrintSituationMarche.QteTotale5.Enabled:=Visible;
          PrintSituationMarche.PrixUnit5.Lines.Clear;       PrintSituationMarche.PrixUnit5.Enabled:=Visible;
          PrintSituationMarche.MontantPrec5.Lines.Clear;    PrintSituationMarche.MontantPrec5.Enabled:=Visible;
          PrintSituationMarche.MontantMois5.Lines.Clear;    PrintSituationMarche.MontantMois5.Enabled:=Visible;
          PrintSituationMarche.MontantCumule5.Lines.Clear;  PrintSituationMarche.MontantCumule5.Enabled:=Visible;
     end;
     if(Indice=6)then
     begin
          PrintSituationMarche.Code6.Lines.Clear;           PrintSituationMarche.Code6.Enabled:=Visible;
          PrintSituationMarche.Desig6.Lines.Clear;          PrintSituationMarche.Desig6.Enabled:=Visible;
          PrintSituationMarche.Um6.Lines.Clear;             PrintSituationMarche.Um6.Enabled:=Visible;
          PrintSituationMarche.QteMarche6.Lines.Clear;      PrintSituationMarche.QteMarche6.Enabled:=Visible;
          PrintSituationMarche.QtePrec6.Lines.Clear;        PrintSituationMarche.QtePrec6.Enabled:=Visible;
          PrintSituationMarche.QteMois6.Lines.Clear;        PrintSituationMarche.QteMois6.Enabled:=Visible;
          PrintSituationMarche.QteTotale6.Lines.Clear;      PrintSituationMarche.QteTotale6.Enabled:=Visible;
          PrintSituationMarche.PrixUnit6.Lines.Clear;       PrintSituationMarche.PrixUnit6.Enabled:=Visible;
          PrintSituationMarche.MontantPrec6.Lines.Clear;    PrintSituationMarche.MontantPrec6.Enabled:=Visible;
          PrintSituationMarche.MontantMois6.Lines.Clear;    PrintSituationMarche.MontantMois6.Enabled:=Visible;
          PrintSituationMarche.MontantCumule6.Lines.Clear;  PrintSituationMarche.MontantCumule6.Enabled
          :=Visible;
     end;
     if(Indice=7)then
     begin
          PrintSituationMarche.Code7.Lines.Clear;           PrintSituationMarche.Code7.Enabled:=Visible;
          PrintSituationMarche.Desig7.Lines.Clear;          PrintSituationMarche.Desig7.Enabled:=Visible;
          PrintSituationMarche.Um7.Lines.Clear;             PrintSituationMarche.Um7.Enabled:=Visible;
          PrintSituationMarche.QteMarche7.Lines.Clear;      PrintSituationMarche.QteMarche7.Enabled:=Visible;
          PrintSituationMarche.QtePrec7.Lines.Clear;        PrintSituationMarche.QtePrec7.Enabled:=Visible;
          PrintSituationMarche.QteMois7.Lines.Clear;        PrintSituationMarche.QteMois7.Enabled:=Visible;
          PrintSituationMarche.QteTotale7.Lines.Clear;      PrintSituationMarche.QteTotale7.Enabled:=Visible;
          PrintSituationMarche.PrixUnit7.Lines.Clear;       PrintSituationMarche.PrixUnit7.Enabled:=Visible;
          PrintSituationMarche.MontantPrec7.Lines.Clear;    PrintSituationMarche.MontantPrec7.Enabled:=Visible;
          PrintSituationMarche.MontantMois7.Lines.Clear;    PrintSituationMarche.MontantMois7.Enabled:=Visible;
          PrintSituationMarche.MontantCumule7.Lines.Clear;  PrintSituationMarche.MontantCumule7.Enabled:=Visible;
     end;
     if(Indice=8)then
     begin
          PrintSituationMarche.Code8.Lines.Clear;           PrintSituationMarche.Code8.Enabled:=Visible;
          PrintSituationMarche.Desig8.Lines.Clear;          PrintSituationMarche.Desig8.Enabled:=Visible;
          PrintSituationMarche.Um8.Lines.Clear;             PrintSituationMarche.Um8.Enabled:=Visible;
          PrintSituationMarche.QteMarche8.Lines.Clear;      PrintSituationMarche.QteMarche8.Enabled:=Visible;
          PrintSituationMarche.QtePrec8.Lines.Clear;        PrintSituationMarche.QtePrec8.Enabled:=Visible;
          PrintSituationMarche.QteMois8.Lines.Clear;        PrintSituationMarche.QteMois8.Enabled:=Visible;
          PrintSituationMarche.QteTotale8.Lines.Clear;      PrintSituationMarche.QteTotale8.Enabled:=Visible;
          PrintSituationMarche.PrixUnit8.Lines.Clear;       PrintSituationMarche.PrixUnit8.Enabled:=Visible;
          PrintSituationMarche.MontantPrec8.Lines.Clear;    PrintSituationMarche.MontantPrec8.Enabled:=Visible;
          PrintSituationMarche.MontantMois8.Lines.Clear;    PrintSituationMarche.MontantMois8.Enabled:=Visible;
          PrintSituationMarche.MontantCumule8.Lines.Clear;  PrintSituationMarche.MontantCumule8.Enabled:=Visible;
     end;
     if(Indice=9)then
     begin
          PrintSituationMarche.Code9.Lines.Clear;           PrintSituationMarche.Code9.Enabled:=Visible;
          PrintSituationMarche.Desig9.Lines.Clear;          PrintSituationMarche.Desig9.Enabled:=Visible;
          PrintSituationMarche.Um9.Lines.Clear;             PrintSituationMarche.Um9.Enabled:=Visible;
          PrintSituationMarche.QteMarche9.Lines.Clear;      PrintSituationMarche.QteMarche9.Enabled:=Visible;
          PrintSituationMarche.QtePrec9.Lines.Clear;        PrintSituationMarche.QtePrec9.Enabled:=Visible;
          PrintSituationMarche.QteMois9.Lines.Clear;        PrintSituationMarche.QteMois9.Enabled:=Visible;
          PrintSituationMarche.QteTotale9.Lines.Clear;      PrintSituationMarche.QteTotale9.Enabled:=Visible;
          PrintSituationMarche.PrixUnit9.Lines.Clear;       PrintSituationMarche.PrixUnit9.Enabled:=Visible;
          PrintSituationMarche.MontantPrec9.Lines.Clear;    PrintSituationMarche.MontantPrec9.Enabled:=Visible;
          PrintSituationMarche.MontantMois9.Lines.Clear;    PrintSituationMarche.MontantMois9.Enabled:=Visible;
          PrintSituationMarche.MontantCumule9.Lines.Clear;  PrintSituationMarche.MontantCumule9.Enabled:=Visible;
     end;
     if(Indice=10)then
     begin
          PrintSituationMarche.Code10.Lines.Clear;           PrintSituationMarche.Code10.Enabled:=Visible;
          PrintSituationMarche.Desig10.Lines.Clear;          PrintSituationMarche.Desig10.Enabled:=Visible;
          PrintSituationMarche.Um10.Lines.Clear;             PrintSituationMarche.Um10.Enabled:=Visible;
          PrintSituationMarche.QteMarche10.Lines.Clear;      PrintSituationMarche.QteMarche10.Enabled:=Visible;
          PrintSituationMarche.QtePrec10.Lines.Clear;        PrintSituationMarche.QtePrec10.Enabled:=Visible;
          PrintSituationMarche.QteMois10.Lines.Clear;        PrintSituationMarche.QteMois10.Enabled:=Visible;
          PrintSituationMarche.QteTotale10.Lines.Clear;      PrintSituationMarche.QteTotale10.Enabled:=Visible;
          PrintSituationMarche.PrixUnit10.Lines.Clear;       PrintSituationMarche.PrixUnit10.Enabled:=Visible;
          PrintSituationMarche.MontantPrec10.Lines.Clear;    PrintSituationMarche.MontantPrec10.Enabled:=Visible;
          PrintSituationMarche.MontantMois10.Lines.Clear;    PrintSituationMarche.MontantMois10.Enabled:=Visible;
          PrintSituationMarche.MontantCumule10.Lines.Clear;  PrintSituationMarche.MontantCumule10.Enabled:=Visible;
     end;
     if(Indice=11)then
     begin
          PrintSituationMarche.Code11.Lines.Clear;           PrintSituationMarche.Code11.Enabled:=Visible;
          PrintSituationMarche.Desig11.Lines.Clear;          PrintSituationMarche.Desig11.Enabled:=Visible;
          PrintSituationMarche.Um11.Lines.Clear;             PrintSituationMarche.Um11.Enabled:=Visible;
          PrintSituationMarche.QteMarche11.Lines.Clear;      PrintSituationMarche.QteMarche11.Enabled:=Visible;
          PrintSituationMarche.QtePrec11.Lines.Clear;        PrintSituationMarche.QtePrec11.Enabled:=Visible;
          PrintSituationMarche.QteMois11.Lines.Clear;        PrintSituationMarche.QteMois11.Enabled:=Visible;
          PrintSituationMarche.QteTotale11.Lines.Clear;      PrintSituationMarche.QteTotale11.Enabled:=Visible;
          PrintSituationMarche.PrixUnit11.Lines.Clear;       PrintSituationMarche.PrixUnit11.Enabled:=Visible;
          PrintSituationMarche.MontantPrec11.Lines.Clear;    PrintSituationMarche.MontantPrec11.Enabled:=Visible;
          PrintSituationMarche.MontantMois11.Lines.Clear;    PrintSituationMarche.MontantMois11.Enabled:=Visible;
          PrintSituationMarche.MontantCumule11.Lines.Clear;  PrintSituationMarche.MontantCumule11.Enabled:=Visible;
     end;
     if(Indice=12)then
     begin
          PrintSituationMarche.Code12.Lines.Clear;           PrintSituationMarche.Code12.Enabled:=Visible;
          PrintSituationMarche.Desig12.Lines.Clear;          PrintSituationMarche.Desig12.Enabled:=Visible;
          PrintSituationMarche.Um12.Lines.Clear;             PrintSituationMarche.Um12.Enabled:=Visible;
          PrintSituationMarche.QteMarche12.Lines.Clear;      PrintSituationMarche.QteMarche12.Enabled:=Visible;
          PrintSituationMarche.QtePrec12.Lines.Clear;        PrintSituationMarche.QtePrec12.Enabled:=Visible;
          PrintSituationMarche.QteMois12.Lines.Clear;        PrintSituationMarche.QteMois12.Enabled:=Visible;
          PrintSituationMarche.QteTotale12.Lines.Clear;      PrintSituationMarche.QteTotale12.Enabled:=Visible;
          PrintSituationMarche.PrixUnit12.Lines.Clear;       PrintSituationMarche.PrixUnit12.Enabled:=Visible;
          PrintSituationMarche.MontantPrec12.Lines.Clear;    PrintSituationMarche.MontantPrec12.Enabled:=Visible;
          PrintSituationMarche.MontantMois12.Lines.Clear;    PrintSituationMarche.MontantMois12.Enabled:=Visible;
          PrintSituationMarche.MontantCumule12.Lines.Clear;  PrintSituationMarche.MontantCumule12.Enabled:=Visible;
     end;
     if(Indice=13)then
     begin
          PrintSituationMarche.Code13.Lines.Clear;           PrintSituationMarche.Code13.Enabled:=Visible;
          PrintSituationMarche.Desig13.Lines.Clear;          PrintSituationMarche.Desig13.Enabled:=Visible;
          PrintSituationMarche.Um13.Lines.Clear;             PrintSituationMarche.Um13.Enabled:=Visible;
          PrintSituationMarche.QteMarche13.Lines.Clear;      PrintSituationMarche.QteMarche13.Enabled:=Visible;
          PrintSituationMarche.QtePrec13.Lines.Clear;        PrintSituationMarche.QtePrec13.Enabled:=Visible;
          PrintSituationMarche.QteMois13.Lines.Clear;        PrintSituationMarche.QteMois13.Enabled:=Visible;
          PrintSituationMarche.QteTotale13.Lines.Clear;      PrintSituationMarche.QteTotale13.Enabled:=Visible;
          PrintSituationMarche.PrixUnit13.Lines.Clear;       PrintSituationMarche.PrixUnit13.Enabled:=Visible;
          PrintSituationMarche.MontantPrec13.Lines.Clear;    PrintSituationMarche.MontantPrec13.Enabled:=Visible;
          PrintSituationMarche.MontantMois13.Lines.Clear;    PrintSituationMarche.MontantMois13.Enabled:=Visible;
          PrintSituationMarche.MontantCumule13.Lines.Clear;  PrintSituationMarche.MontantCumule13.Enabled:=Visible;
     end;
     if(Indice=14)then
     begin
          PrintSituationMarche.Code14.Lines.Clear;           PrintSituationMarche.Code14.Enabled:=Visible;
          PrintSituationMarche.Desig14.Lines.Clear;          PrintSituationMarche.Desig14.Enabled:=Visible;
          PrintSituationMarche.Um14.Lines.Clear;             PrintSituationMarche.Um14.Enabled:=Visible;
          PrintSituationMarche.QteMarche14.Lines.Clear;      PrintSituationMarche.QteMarche14.Enabled:=Visible;
          PrintSituationMarche.QtePrec14.Lines.Clear;        PrintSituationMarche.QtePrec14.Enabled:=Visible;
          PrintSituationMarche.QteMois14.Lines.Clear;        PrintSituationMarche.QteMois14.Enabled:=Visible;
          PrintSituationMarche.QteTotale14.Lines.Clear;      PrintSituationMarche.QteTotale14.Enabled:=Visible;
          PrintSituationMarche.PrixUnit14.Lines.Clear;       PrintSituationMarche.PrixUnit14.Enabled:=Visible;
          PrintSituationMarche.MontantPrec14.Lines.Clear;    PrintSituationMarche.MontantPrec14.Enabled:=Visible;
          PrintSituationMarche.MontantMois14.Lines.Clear;    PrintSituationMarche.MontantMois14.Enabled:=Visible;
          PrintSituationMarche.MontantCumule14.Lines.Clear;  PrintSituationMarche.MontantCumule14.Enabled:=Visible;
     end;
     if(Indice=15)then
     begin
          PrintSituationMarche.Code15.Lines.Clear;           PrintSituationMarche.Code15.Enabled:=Visible;
          PrintSituationMarche.Desig15.Lines.Clear;          PrintSituationMarche.Desig15.Enabled:=Visible;
          PrintSituationMarche.Um15.Lines.Clear;             PrintSituationMarche.Um15.Enabled:=Visible;
          PrintSituationMarche.QteMarche15.Lines.Clear;      PrintSituationMarche.QteMarche15.Enabled:=Visible;
          PrintSituationMarche.QtePrec15.Lines.Clear;        PrintSituationMarche.QtePrec15.Enabled:=Visible;
          PrintSituationMarche.QteMois15.Lines.Clear;        PrintSituationMarche.QteMois15.Enabled:=Visible;
          PrintSituationMarche.QteTotale15.Lines.Clear;      PrintSituationMarche.QteTotale15.Enabled:=Visible;
          PrintSituationMarche.PrixUnit15.Lines.Clear;       PrintSituationMarche.PrixUnit15.Enabled:=Visible;
          PrintSituationMarche.MontantPrec15.Lines.Clear;    PrintSituationMarche.MontantPrec15.Enabled:=Visible;
          PrintSituationMarche.MontantMois15.Lines.Clear;    PrintSituationMarche.MontantMois15.Enabled:=Visible;
          PrintSituationMarche.MontantCumule15.Lines.Clear;  PrintSituationMarche.MontantCumule15.Enabled:=Visible;
     end;
     if(Indice=16)then
     begin
          PrintSituationMarche.Code16.Lines.Clear;           PrintSituationMarche.Code16.Enabled:=Visible;
          PrintSituationMarche.Desig16.Lines.Clear;          PrintSituationMarche.Desig16.Enabled:=Visible;
          PrintSituationMarche.Um16.Lines.Clear;             PrintSituationMarche.Um16.Enabled:=Visible;
          PrintSituationMarche.QteMarche16.Lines.Clear;      PrintSituationMarche.QteMarche16.Enabled:=Visible;
          PrintSituationMarche.QtePrec16.Lines.Clear;        PrintSituationMarche.QtePrec16.Enabled:=Visible;
          PrintSituationMarche.QteMois16.Lines.Clear;        PrintSituationMarche.QteMois16.Enabled:=Visible;
          PrintSituationMarche.QteTotale16.Lines.Clear;      PrintSituationMarche.QteTotale16.Enabled:=Visible;
          PrintSituationMarche.PrixUnit16.Lines.Clear;       PrintSituationMarche.PrixUnit16.Enabled:=Visible;
          PrintSituationMarche.MontantPrec16.Lines.Clear;    PrintSituationMarche.MontantPrec16.Enabled:=Visible;
          PrintSituationMarche.MontantMois16.Lines.Clear;    PrintSituationMarche.MontantMois16.Enabled:=Visible;
          PrintSituationMarche.MontantCumule16.Lines.Clear;  PrintSituationMarche.MontantCumule16.Enabled:=Visible;
     end;
     if(Indice=17)then
     begin
          PrintSituationMarche.Code17.Lines.Clear;           PrintSituationMarche.Code17.Enabled:=Visible;
          PrintSituationMarche.Desig17.Lines.Clear;          PrintSituationMarche.Desig17.Enabled:=Visible;
          PrintSituationMarche.Um17.Lines.Clear;             PrintSituationMarche.Um17.Enabled:=Visible;
          PrintSituationMarche.QteMarche17.Lines.Clear;      PrintSituationMarche.QteMarche17.Enabled:=Visible;
          PrintSituationMarche.QtePrec17.Lines.Clear;        PrintSituationMarche.QtePrec17.Enabled:=Visible;
          PrintSituationMarche.QteMois17.Lines.Clear;        PrintSituationMarche.QteMois17.Enabled:=Visible;
          PrintSituationMarche.QteTotale17.Lines.Clear;      PrintSituationMarche.QteTotale17.Enabled:=Visible;
          PrintSituationMarche.PrixUnit17.Lines.Clear;       PrintSituationMarche.PrixUnit17.Enabled:=Visible;
          PrintSituationMarche.MontantPrec17.Lines.Clear;    PrintSituationMarche.MontantPrec17.Enabled:=Visible;
          PrintSituationMarche.MontantMois17.Lines.Clear;    PrintSituationMarche.MontantMois17.Enabled:=Visible;
          PrintSituationMarche.MontantCumule17.Lines.Clear;  PrintSituationMarche.MontantCumule17.Enabled:=Visible;
     end;
     if(Indice=18)then
     begin
          PrintSituationMarche.Code18.Lines.Clear;           PrintSituationMarche.Code18.Enabled:=Visible;
          PrintSituationMarche.Desig18.Lines.Clear;          PrintSituationMarche.Desig18.Enabled:=Visible;
          PrintSituationMarche.Um18.Lines.Clear;             PrintSituationMarche.Um18.Enabled:=Visible;
          PrintSituationMarche.QteMarche18.Lines.Clear;      PrintSituationMarche.QteMarche18.Enabled:=Visible;
          PrintSituationMarche.QtePrec18.Lines.Clear;        PrintSituationMarche.QtePrec18.Enabled:=Visible;
          PrintSituationMarche.QteMois18.Lines.Clear;        PrintSituationMarche.QteMois18.Enabled:=Visible;
          PrintSituationMarche.QteTotale18.Lines.Clear;      PrintSituationMarche.QteTotale18.Enabled:=Visible;
          PrintSituationMarche.PrixUnit18.Lines.Clear;       PrintSituationMarche.PrixUnit18.Enabled:=Visible;
          PrintSituationMarche.MontantPrec18.Lines.Clear;    PrintSituationMarche.MontantPrec18.Enabled:=Visible;
          PrintSituationMarche.MontantMois18.Lines.Clear;    PrintSituationMarche.MontantMois18.Enabled:=Visible;
          PrintSituationMarche.MontantCumule18.Lines.Clear;  PrintSituationMarche.MontantCumule18.Enabled:=Visible;
     end;
     if(Indice=19)then
     begin
          PrintSituationMarche.Code19.Lines.Clear;           PrintSituationMarche.Code19.Enabled:=Visible;
          PrintSituationMarche.Desig19.Lines.Clear;          PrintSituationMarche.Desig19.Enabled:=Visible;
          PrintSituationMarche.Um19.Lines.Clear;             PrintSituationMarche.Um19.Enabled:=Visible;
          PrintSituationMarche.QteMarche19.Lines.Clear;      PrintSituationMarche.QteMarche19.Enabled:=Visible;
          PrintSituationMarche.QtePrec19.Lines.Clear;        PrintSituationMarche.QtePrec19.Enabled:=Visible;
          PrintSituationMarche.QteMois19.Lines.Clear;        PrintSituationMarche.QteMois19.Enabled:=Visible;
          PrintSituationMarche.QteTotale19.Lines.Clear;      PrintSituationMarche.QteTotale19.Enabled:=Visible;
          PrintSituationMarche.PrixUnit19.Lines.Clear;       PrintSituationMarche.PrixUnit19.Enabled:=Visible;
          PrintSituationMarche.MontantPrec19.Lines.Clear;    PrintSituationMarche.MontantPrec19.Enabled:=Visible;
          PrintSituationMarche.MontantMois19.Lines.Clear;    PrintSituationMarche.MontantMois19.Enabled:=Visible;
          PrintSituationMarche.MontantCumule19.Lines.Clear;  PrintSituationMarche.MontantCumule19.Enabled:=Visible;
     end;
     if(Indice=20)then
     begin
          PrintSituationMarche.Code20.Lines.Clear;           PrintSituationMarche.Code20.Enabled:=Visible;
          PrintSituationMarche.Desig20.Lines.Clear;          PrintSituationMarche.Desig20.Enabled:=Visible;
          PrintSituationMarche.Um20.Lines.Clear;             PrintSituationMarche.Um20.Enabled:=Visible;
          PrintSituationMarche.QteMarche20.Lines.Clear;      PrintSituationMarche.QteMarche20.Enabled:=Visible;
          PrintSituationMarche.QtePrec20.Lines.Clear;        PrintSituationMarche.QtePrec20.Enabled:=Visible;
          PrintSituationMarche.QteMois20.Lines.Clear;        PrintSituationMarche.QteMois20.Enabled:=Visible;
          PrintSituationMarche.QteTotale20.Lines.Clear;      PrintSituationMarche.QteTotale20.Enabled:=Visible;
          PrintSituationMarche.PrixUnit20.Lines.Clear;       PrintSituationMarche.PrixUnit20.Enabled:=Visible;
          PrintSituationMarche.MontantPrec20.Lines.Clear;    PrintSituationMarche.MontantPrec20.Enabled:=Visible;
          PrintSituationMarche.MontantMois20.Lines.Clear;    PrintSituationMarche.MontantMois20.Enabled:=Visible;
          PrintSituationMarche.MontantCumule20.Lines.Clear;  PrintSituationMarche.MontantCumule20.Enabled:=Visible;
     end;
     if(Indice=21)then
     begin
          PrintSituationMarche.Code21.Lines.Clear;           PrintSituationMarche.Code21.Enabled:=Visible;
          PrintSituationMarche.Desig21.Lines.Clear;          PrintSituationMarche.Desig21.Enabled:=Visible;
          PrintSituationMarche.Um21.Lines.Clear;             PrintSituationMarche.Um21.Enabled:=Visible;
          PrintSituationMarche.QteMarche21.Lines.Clear;      PrintSituationMarche.QteMarche21.Enabled:=Visible;
          PrintSituationMarche.QtePrec21.Lines.Clear;        PrintSituationMarche.QtePrec21.Enabled:=Visible;
          PrintSituationMarche.QteMois21.Lines.Clear;        PrintSituationMarche.QteMois21.Enabled:=Visible;
          PrintSituationMarche.QteTotale21.Lines.Clear;      PrintSituationMarche.QteTotale21.Enabled:=Visible;
          PrintSituationMarche.PrixUnit21.Lines.Clear;       PrintSituationMarche.PrixUnit21.Enabled:=Visible;
          PrintSituationMarche.MontantPrec21.Lines.Clear;    PrintSituationMarche.MontantPrec21.Enabled:=Visible;
          PrintSituationMarche.MontantMois21.Lines.Clear;    PrintSituationMarche.MontantMois21.Enabled:=Visible;
          PrintSituationMarche.MontantCumule21.Lines.Clear;  PrintSituationMarche.MontantCumule21.Enabled:=Visible;
     end;
     if(Indice=22)then
     begin
          PrintSituationMarche.Code22.Lines.Clear;           PrintSituationMarche.Code22.Enabled:=Visible;
          PrintSituationMarche.Desig22.Lines.Clear;          PrintSituationMarche.Desig22.Enabled:=Visible;
          PrintSituationMarche.Um22.Lines.Clear;             PrintSituationMarche.Um22.Enabled:=Visible;
          PrintSituationMarche.QteMarche22.Lines.Clear;      PrintSituationMarche.QteMarche22.Enabled:=Visible;
          PrintSituationMarche.QtePrec22.Lines.Clear;        PrintSituationMarche.QtePrec22.Enabled:=Visible;
          PrintSituationMarche.QteMois22.Lines.Clear;        PrintSituationMarche.QteMois22.Enabled:=Visible;
          PrintSituationMarche.QteTotale22.Lines.Clear;      PrintSituationMarche.QteTotale22.Enabled:=Visible;
          PrintSituationMarche.PrixUnit22.Lines.Clear;       PrintSituationMarche.PrixUnit22.Enabled:=Visible;
          PrintSituationMarche.MontantPrec22.Lines.Clear;    PrintSituationMarche.MontantPrec22.Enabled:=Visible;
          PrintSituationMarche.MontantMois22.Lines.Clear;    PrintSituationMarche.MontantMois22.Enabled:=Visible;
          PrintSituationMarche.MontantCumule22.Lines.Clear;  PrintSituationMarche.MontantCumule22.Enabled:=Visible;
     end;
     if(Indice=23)then
     begin
          PrintSituationMarche.Code23.Lines.Clear;           PrintSituationMarche.Code23.Enabled:=Visible;
          PrintSituationMarche.Desig23.Lines.Clear;          PrintSituationMarche.Desig23.Enabled:=Visible;
          PrintSituationMarche.Um23.Lines.Clear;             PrintSituationMarche.Um23.Enabled:=Visible;
          PrintSituationMarche.QteMarche23.Lines.Clear;      PrintSituationMarche.QteMarche23.Enabled:=Visible;
          PrintSituationMarche.QtePrec23.Lines.Clear;        PrintSituationMarche.QtePrec23.Enabled:=Visible;
          PrintSituationMarche.QteMois23.Lines.Clear;        PrintSituationMarche.QteMois23.Enabled:=Visible;
          PrintSituationMarche.QteTotale23.Lines.Clear;      PrintSituationMarche.QteTotale23.Enabled:=Visible;
          PrintSituationMarche.PrixUnit23.Lines.Clear;       PrintSituationMarche.PrixUnit23.Enabled:=Visible;
          PrintSituationMarche.MontantPrec23.Lines.Clear;    PrintSituationMarche.MontantPrec23.Enabled:=Visible;
          PrintSituationMarche.MontantMois23.Lines.Clear;    PrintSituationMarche.MontantMois23.Enabled:=Visible;
          PrintSituationMarche.MontantCumule23.Lines.Clear;  PrintSituationMarche.MontantCumule23.Enabled:=Visible;
     end;
     if(Indice=24)then
     begin
          PrintSituationMarche.Code24.Lines.Clear;           PrintSituationMarche.Code24.Enabled:=Visible;
          PrintSituationMarche.Desig24.Lines.Clear;          PrintSituationMarche.Desig24.Enabled:=Visible;
          PrintSituationMarche.Um24.Lines.Clear;             PrintSituationMarche.Um24.Enabled:=Visible;
          PrintSituationMarche.QteMarche24.Lines.Clear;      PrintSituationMarche.QteMarche24.Enabled:=Visible;
          PrintSituationMarche.QtePrec24.Lines.Clear;        PrintSituationMarche.QtePrec24.Enabled:=Visible;
          PrintSituationMarche.QteMois24.Lines.Clear;        PrintSituationMarche.QteMois24.Enabled:=Visible;
          PrintSituationMarche.QteTotale24.Lines.Clear;      PrintSituationMarche.QteTotale24.Enabled:=Visible;
          PrintSituationMarche.PrixUnit24.Lines.Clear;       PrintSituationMarche.PrixUnit24.Enabled:=Visible;
          PrintSituationMarche.MontantPrec24.Lines.Clear;    PrintSituationMarche.MontantPrec24.Enabled:=Visible;
          PrintSituationMarche.MontantMois24.Lines.Clear;    PrintSituationMarche.MontantMois24.Enabled:=Visible;
          PrintSituationMarche.MontantCumule24.Lines.Clear;  PrintSituationMarche.MontantCumule24.Enabled:=Visible;
     end;
     if(Indice=25)then
     begin
          PrintSituationMarche.Code25.Lines.Clear;           PrintSituationMarche.Code25.Enabled:=Visible;
          PrintSituationMarche.Desig25.Lines.Clear;          PrintSituationMarche.Desig25.Enabled:=Visible;
          PrintSituationMarche.Um25.Lines.Clear;             PrintSituationMarche.Um25.Enabled:=Visible;
          PrintSituationMarche.QteMarche25.Lines.Clear;      PrintSituationMarche.QteMarche25.Enabled:=Visible;
          PrintSituationMarche.QtePrec25.Lines.Clear;        PrintSituationMarche.QtePrec25.Enabled:=Visible;
          PrintSituationMarche.QteMois25.Lines.Clear;        PrintSituationMarche.QteMois25.Enabled:=Visible;
          PrintSituationMarche.QteTotale25.Lines.Clear;      PrintSituationMarche.QteTotale25.Enabled:=Visible;
          PrintSituationMarche.PrixUnit25.Lines.Clear;       PrintSituationMarche.PrixUnit25.Enabled:=Visible;
          PrintSituationMarche.MontantPrec25.Lines.Clear;    PrintSituationMarche.MontantPrec25.Enabled:=Visible;
          PrintSituationMarche.MontantMois25.Lines.Clear;    PrintSituationMarche.MontantMois25.Enabled:=Visible;
          PrintSituationMarche.MontantCumule25.Lines.Clear;  PrintSituationMarche.MontantCumule25.Enabled:=Visible;
     end;
     if(Indice=26)then
     begin
          PrintSituationMarche.Code26.Lines.Clear;           PrintSituationMarche.Code26.Enabled:=Visible;
          PrintSituationMarche.Desig26.Lines.Clear;          PrintSituationMarche.Desig26.Enabled:=Visible;
          PrintSituationMarche.Um26.Lines.Clear;             PrintSituationMarche.Um26.Enabled:=Visible;
          PrintSituationMarche.QteMarche26.Lines.Clear;      PrintSituationMarche.QteMarche26.Enabled:=Visible;
          PrintSituationMarche.QtePrec26.Lines.Clear;        PrintSituationMarche.QtePrec26.Enabled:=Visible;
          PrintSituationMarche.QteMois26.Lines.Clear;        PrintSituationMarche.QteMois26.Enabled:=Visible;
          PrintSituationMarche.QteTotale26.Lines.Clear;      PrintSituationMarche.QteTotale26.Enabled:=Visible;
          PrintSituationMarche.PrixUnit26.Lines.Clear;       PrintSituationMarche.PrixUnit26.Enabled:=Visible;
          PrintSituationMarche.MontantPrec26.Lines.Clear;    PrintSituationMarche.MontantPrec26.Enabled:=Visible;
          PrintSituationMarche.MontantMois26.Lines.Clear;    PrintSituationMarche.MontantMois26.Enabled:=Visible;
          PrintSituationMarche.MontantCumule26.Lines.Clear;  PrintSituationMarche.MontantCumule26.Enabled:=Visible;
     end;
     if(Indice=27)then
     begin
          PrintSituationMarche.Code27.Lines.Clear;           PrintSituationMarche.Code27.Enabled:=Visible;
          PrintSituationMarche.Desig27.Lines.Clear;          PrintSituationMarche.Desig27.Enabled:=Visible;
          PrintSituationMarche.Um27.Lines.Clear;             PrintSituationMarche.Um27.Enabled:=Visible;
          PrintSituationMarche.QteMarche27.Lines.Clear;      PrintSituationMarche.QteMarche27.Enabled:=Visible;
          PrintSituationMarche.QtePrec27.Lines.Clear;        PrintSituationMarche.QtePrec27.Enabled:=Visible;
          PrintSituationMarche.QteMois27.Lines.Clear;        PrintSituationMarche.QteMois27.Enabled:=Visible;
          PrintSituationMarche.QteTotale27.Lines.Clear;      PrintSituationMarche.QteTotale27.Enabled:=Visible;
          PrintSituationMarche.PrixUnit27.Lines.Clear;       PrintSituationMarche.PrixUnit27.Enabled:=Visible;
          PrintSituationMarche.MontantPrec27.Lines.Clear;    PrintSituationMarche.MontantPrec27.Enabled:=Visible;
          PrintSituationMarche.MontantMois27.Lines.Clear;    PrintSituationMarche.MontantMois27.Enabled:=Visible;
          PrintSituationMarche.MontantCumule27.Lines.Clear;  PrintSituationMarche.MontantCumule27.Enabled:=Visible;
     end;
end;

Procedure InitialisationSituation(ARow,Indice:integer);
begin

if((FSSituations.TableauDecompteSituation.Cells[3,ARow]='')
and(FSSituations.TableauDecompteSituation.Cells[7,ARow]=''))
then
begin
     PrintSituationMarche.TitreExemple.Font.Style:=[fsBold];

     if(FSSituations.TableauDecompteSituation.Cells[0,ARow]='')
     then
     begin
          PrintSituationMarche.TitreExemple.Alignment:=taCenter;
          PrintSituationMarche.TitreExemple.Font.Style:=[fsBold];
     end
     else
     begin
          PrintSituationMarche.TitreExemple.Alignment:=taLeftJustify;
          PrintSituationMarche.TitreExemple.Font.Style:=[fsBold,fsUnderline];
     end;

end
else
begin
     PrintSituationMarche.TitreExemple.Alignment:=taLeftJustify;
     PrintSituationMarche.TitreExemple.Font.Style:=[];
end;

     if(Indice=1)then
     begin
          PrintSituationMarche.Desig1.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig1.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec1.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois1.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule1.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=2)then
     begin
          PrintSituationMarche.Desig2.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig2.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec2.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois2.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule2.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=3)then
     begin
          PrintSituationMarche.Desig3.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig3.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec3.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois3.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule3.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=4)then
     begin
          PrintSituationMarche.Desig4.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig4.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec4.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois4.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule4.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=5)then
     begin
          PrintSituationMarche.Desig5.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig5.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec5.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois5.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule5.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=6)then
     begin
          PrintSituationMarche.Desig6.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig6.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec6.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois6.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule6.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=7)then
     begin
          PrintSituationMarche.Desig7.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig7.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec7.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois7.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule7.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=8)then
     begin
          PrintSituationMarche.Desig8.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig8.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec8.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois8.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule8.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=9)then
     begin
          PrintSituationMarche.Desig9.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig9.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec9.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois9.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule9.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=10)then
     begin
          PrintSituationMarche.Desig10.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig10.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec10.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois10.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule10.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=11)then
     begin
          PrintSituationMarche.Desig11.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig11.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec11.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois11.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule11.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=12)then
     begin
          PrintSituationMarche.Desig12.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig12.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec12.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois12.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule12.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=13)then
     begin
          PrintSituationMarche.Desig13.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig13.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec13.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois13.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule13.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=14)then
     begin
          PrintSituationMarche.Desig14.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig14.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec14.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois14.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule14.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=15)then
     begin
          PrintSituationMarche.Desig15.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig15.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec15.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois15.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule15.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=16)then
     begin
          PrintSituationMarche.Desig16.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig16.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec16.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois16.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule16.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=17)then
     begin
          PrintSituationMarche.Desig17.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig17.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec17.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois17.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule17.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=18)then
     begin
          PrintSituationMarche.Desig18.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig18.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec18.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois18.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule18.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=19)then
     begin
          PrintSituationMarche.Desig19.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig19.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec19.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois19.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule19.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=20)then
     begin
          PrintSituationMarche.Desig20.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig20.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec20.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois20.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule20.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=21)then
     begin
          PrintSituationMarche.Desig21.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig21.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec21.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois21.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule21.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=22)then
     begin
          PrintSituationMarche.Desig22.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig22.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec22.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois22.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule22.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=23)then
     begin
          PrintSituationMarche.Desig23.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig23.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec23.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois23.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule23.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=24)then
     begin
          PrintSituationMarche.Desig24.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig24.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec24.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois24.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule24.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=25)then
     begin
          PrintSituationMarche.Desig25.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig25.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec25.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois25.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule25.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=26)then
     begin
          PrintSituationMarche.Desig26.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig26.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec26.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois26.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule26.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
     if(Indice=27)then
     begin
          PrintSituationMarche.Desig27.Alignment:=PrintSituationMarche.TitreExemple.Alignment;
          PrintSituationMarche.Desig27.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantPrec27.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantMois27.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
          PrintSituationMarche.MontantCumule27.Font.Style:=PrintSituationMarche.TitreExemple.Font.Style;
     end;
end;

Procedure HeightSituationMarche(Indice:integer; var Position:integer);
var  LigneR,PositionInt,PositionMax:integer;
begin
PositionMax:=520;
     if(Indice=1)then
     begin
          PrintSituationMarche.Code1.Top:=32;
          PrintSituationMarche.Desig1.Top:=32;
          PrintSituationMarche.Um1.Top:=32;
          PrintSituationMarche.QteMarche1.Top:=32;
          PrintSituationMarche.QtePrec1.Top:=32;
          PrintSituationMarche.QteMois1.Top:=32;
          PrintSituationMarche.QteTotale1.Top:=32;
          PrintSituationMarche.PrixUnit1.Top:=32;
          PrintSituationMarche.MontantPrec1.Top:=32;
          PrintSituationMarche.MontantMois1.Top:=32;
          PrintSituationMarche.MontantCumule1.Top:=32;

          PrintSituationMarche.Desig1.Height:=PrintSituationMarche.Desig1.Lines.Capacity*18;
          PrintSituationMarche.Code1.Height:=PrintSituationMarche.Desig1.Height;
          PrintSituationMarche.Um1.Height:=PrintSituationMarche.Desig1.Height;
          PrintSituationMarche.QteMarche1.Height:=PrintSituationMarche.Desig1.Height;
          PrintSituationMarche.QtePrec1.Height:=PrintSituationMarche.Desig1.Height;
          PrintSituationMarche.QteMois1.Height:=PrintSituationMarche.Desig1.Height;
          PrintSituationMarche.QteTotale1.Height:=PrintSituationMarche.Desig1.Height;
          PrintSituationMarche.PrixUnit1.Height:=PrintSituationMarche.Desig1.Height;
          PrintSituationMarche.MontantPrec1.Height:=PrintSituationMarche.Desig1.Height;
          PrintSituationMarche.MontantMois1.Height:=PrintSituationMarche.Desig1.Height;
          PrintSituationMarche.MontantCumule1.Height:=PrintSituationMarche.Desig1.Height;
     Position:=PrintSituationMarche.Desig1.Top+PrintSituationMarche.Desig1.Height-1;
     end;
     if(Indice=2)then
     begin
          PrintSituationMarche.Desig2.Height:=PrintSituationMarche.Desig2.Lines.Capacity*18;
          PrintSituationMarche.Code2.Height:=PrintSituationMarche.Desig2.Height;
          PrintSituationMarche.Um2.Height:=PrintSituationMarche.Desig2.Height;
          PrintSituationMarche.QteMarche2.Height:=PrintSituationMarche.Desig2.Height;
          PrintSituationMarche.QtePrec2.Height:=PrintSituationMarche.Desig2.Height;
          PrintSituationMarche.QteMois2.Height:=PrintSituationMarche.Desig2.Height;
          PrintSituationMarche.QteTotale2.Height:=PrintSituationMarche.Desig2.Height;
          PrintSituationMarche.PrixUnit2.Height:=PrintSituationMarche.Desig2.Height;
          PrintSituationMarche.MontantPrec2.Height:=PrintSituationMarche.Desig2.Height;
          PrintSituationMarche.MontantMois2.Height:=PrintSituationMarche.Desig2.Height;
          PrintSituationMarche.MontantCumule2.Height:=PrintSituationMarche.Desig2.Height;
     Position:=PrintSituationMarche.Desig2.Top+PrintSituationMarche.Desig2.Height-1;
     end;
     if(Indice=3)then
     begin
          PrintSituationMarche.Desig3.Height:=PrintSituationMarche.Desig3.Lines.Capacity*18;
          PrintSituationMarche.Code3.Height:=PrintSituationMarche.Desig3.Height;
          PrintSituationMarche.Um3.Height:=PrintSituationMarche.Desig3.Height;
          PrintSituationMarche.QteMarche3.Height:=PrintSituationMarche.Desig3.Height;
          PrintSituationMarche.QtePrec3.Height:=PrintSituationMarche.Desig3.Height;
          PrintSituationMarche.QteMois3.Height:=PrintSituationMarche.Desig3.Height;
          PrintSituationMarche.QteTotale3.Height:=PrintSituationMarche.Desig3.Height;
          PrintSituationMarche.PrixUnit3.Height:=PrintSituationMarche.Desig3.Height;
          PrintSituationMarche.MontantPrec3.Height:=PrintSituationMarche.Desig3.Height;
          PrintSituationMarche.MontantMois3.Height:=PrintSituationMarche.Desig3.Height;
          PrintSituationMarche.MontantCumule3.Height:=PrintSituationMarche.Desig3.Height;
     Position:=PrintSituationMarche.Desig3.Top+PrintSituationMarche.Desig3.Height-1;
     end;
     if(Indice=4)then
     begin
          PrintSituationMarche.Desig4.Height:=PrintSituationMarche.Desig4.Lines.Capacity*18;
          PrintSituationMarche.Code4.Height:=PrintSituationMarche.Desig4.Height;
          PrintSituationMarche.Um4.Height:=PrintSituationMarche.Desig4.Height;
          PrintSituationMarche.QteMarche4.Height:=PrintSituationMarche.Desig4.Height;
          PrintSituationMarche.QtePrec4.Height:=PrintSituationMarche.Desig4.Height;
          PrintSituationMarche.QteMois4.Height:=PrintSituationMarche.Desig4.Height;
          PrintSituationMarche.QteTotale4.Height:=PrintSituationMarche.Desig4.Height;
          PrintSituationMarche.PrixUnit4.Height:=PrintSituationMarche.Desig4.Height;
          PrintSituationMarche.MontantPrec4.Height:=PrintSituationMarche.Desig4.Height;
          PrintSituationMarche.MontantMois4.Height:=PrintSituationMarche.Desig4.Height;
          PrintSituationMarche.MontantCumule4.Height:=PrintSituationMarche.Desig4.Height;
     Position:=PrintSituationMarche.Desig4.Top+PrintSituationMarche.Desig4.Height-1;
     end;
     if(Indice=5)then
     begin
          PrintSituationMarche.Desig5.Height:=PrintSituationMarche.Desig5.Lines.Capacity*18;
          PrintSituationMarche.Code5.Height:=PrintSituationMarche.Desig5.Height;
          PrintSituationMarche.Um5.Height:=PrintSituationMarche.Desig5.Height;
          PrintSituationMarche.QteMarche5.Height:=PrintSituationMarche.Desig5.Height;
          PrintSituationMarche.QtePrec5.Height:=PrintSituationMarche.Desig5.Height;
          PrintSituationMarche.QteMois5.Height:=PrintSituationMarche.Desig5.Height;
          PrintSituationMarche.QteTotale5.Height:=PrintSituationMarche.Desig5.Height;
          PrintSituationMarche.PrixUnit5.Height:=PrintSituationMarche.Desig5.Height;
          PrintSituationMarche.MontantPrec5.Height:=PrintSituationMarche.Desig5.Height;
          PrintSituationMarche.MontantMois5.Height:=PrintSituationMarche.Desig5.Height;
          PrintSituationMarche.MontantCumule5.Height:=PrintSituationMarche.Desig5.Height;
     Position:=PrintSituationMarche.Desig5.Top+PrintSituationMarche.Desig5.Height-1;
     end;
     if(Indice=6)then
     begin
          PrintSituationMarche.Desig6.Height:=PrintSituationMarche.Desig6.Lines.Capacity*18;
          PrintSituationMarche.Code6.Height:=PrintSituationMarche.Desig6.Height;
          PrintSituationMarche.Um6.Height:=PrintSituationMarche.Desig6.Height;
          PrintSituationMarche.QteMarche6.Height:=PrintSituationMarche.Desig6.Height;
          PrintSituationMarche.QtePrec6.Height:=PrintSituationMarche.Desig6.Height;
          PrintSituationMarche.QteMois6.Height:=PrintSituationMarche.Desig6.Height;
          PrintSituationMarche.QteTotale6.Height:=PrintSituationMarche.Desig6.Height;
          PrintSituationMarche.PrixUnit6.Height:=PrintSituationMarche.Desig6.Height;
          PrintSituationMarche.MontantPrec6.Height:=PrintSituationMarche.Desig6.Height;
          PrintSituationMarche.MontantMois6.Height:=PrintSituationMarche.Desig6.Height;
          PrintSituationMarche.MontantCumule6.Height:=PrintSituationMarche.Desig6.Height;
     Position:=PrintSituationMarche.Desig6.Top+PrintSituationMarche.Desig6.Height-1;
     end;
     if(Indice=7)then
     begin
          PrintSituationMarche.Desig7.Height:=PrintSituationMarche.Desig7.Lines.Capacity*18;
          PrintSituationMarche.Code7.Height:=PrintSituationMarche.Desig7.Height;
          PrintSituationMarche.Um7.Height:=PrintSituationMarche.Desig7.Height;
          PrintSituationMarche.QteMarche7.Height:=PrintSituationMarche.Desig7.Height;
          PrintSituationMarche.QtePrec7.Height:=PrintSituationMarche.Desig7.Height;
          PrintSituationMarche.QteMois7.Height:=PrintSituationMarche.Desig7.Height;
          PrintSituationMarche.QteTotale7.Height:=PrintSituationMarche.Desig7.Height;
          PrintSituationMarche.PrixUnit7.Height:=PrintSituationMarche.Desig7.Height;
          PrintSituationMarche.MontantPrec7.Height:=PrintSituationMarche.Desig7.Height;
          PrintSituationMarche.MontantMois7.Height:=PrintSituationMarche.Desig7.Height;
          PrintSituationMarche.MontantCumule7.Height:=PrintSituationMarche.Desig7.Height;
     Position:=PrintSituationMarche.Desig7.Top+PrintSituationMarche.Desig7.Height-1;
     end;
     if(Indice=8)then
     begin
          PrintSituationMarche.Desig8.Height:=PrintSituationMarche.Desig8.Lines.Capacity*18;
          PrintSituationMarche.Code8.Height:=PrintSituationMarche.Desig8.Height;
          PrintSituationMarche.Um8.Height:=PrintSituationMarche.Desig8.Height;
          PrintSituationMarche.QteMarche8.Height:=PrintSituationMarche.Desig8.Height;
          PrintSituationMarche.QtePrec8.Height:=PrintSituationMarche.Desig8.Height;
          PrintSituationMarche.QteMois8.Height:=PrintSituationMarche.Desig8.Height;
          PrintSituationMarche.QteTotale8.Height:=PrintSituationMarche.Desig8.Height;
          PrintSituationMarche.PrixUnit8.Height:=PrintSituationMarche.Desig8.Height;
          PrintSituationMarche.MontantPrec8.Height:=PrintSituationMarche.Desig8.Height;
          PrintSituationMarche.MontantMois8.Height:=PrintSituationMarche.Desig8.Height;
          PrintSituationMarche.MontantCumule8.Height:=PrintSituationMarche.Desig8.Height;
     Position:=PrintSituationMarche.Desig8.Top+PrintSituationMarche.Desig8.Height-1;
     end;
     if(Indice=9)then
     begin
          PrintSituationMarche.Desig9.Height:=PrintSituationMarche.Desig9.Lines.Capacity*18;
          PrintSituationMarche.Code9.Height:=PrintSituationMarche.Desig9.Height;
          PrintSituationMarche.Um9.Height:=PrintSituationMarche.Desig9.Height;
          PrintSituationMarche.QteMarche9.Height:=PrintSituationMarche.Desig9.Height;
          PrintSituationMarche.QtePrec9.Height:=PrintSituationMarche.Desig9.Height;
          PrintSituationMarche.QteMois9.Height:=PrintSituationMarche.Desig9.Height;
          PrintSituationMarche.QteTotale9.Height:=PrintSituationMarche.Desig9.Height;
          PrintSituationMarche.PrixUnit9.Height:=PrintSituationMarche.Desig9.Height;
          PrintSituationMarche.MontantPrec9.Height:=PrintSituationMarche.Desig9.Height;
          PrintSituationMarche.MontantMois9.Height:=PrintSituationMarche.Desig9.Height;
          PrintSituationMarche.MontantCumule9.Height:=PrintSituationMarche.Desig9.Height;
     Position:=PrintSituationMarche.Desig9.Top+PrintSituationMarche.Desig9.Height-1;
     end;
     if(Indice=10)then
     begin
          PrintSituationMarche.Desig10.Height:=PrintSituationMarche.Desig10.Lines.Capacity*18;
          PrintSituationMarche.Code10.Height:=PrintSituationMarche.Desig10.Height;
          PrintSituationMarche.Um10.Height:=PrintSituationMarche.Desig10.Height;
          PrintSituationMarche.QteMarche10.Height:=PrintSituationMarche.Desig10.Height;
          PrintSituationMarche.QtePrec10.Height:=PrintSituationMarche.Desig10.Height;
          PrintSituationMarche.QteMois10.Height:=PrintSituationMarche.Desig10.Height;
          PrintSituationMarche.QteTotale10.Height:=PrintSituationMarche.Desig10.Height;
          PrintSituationMarche.PrixUnit10.Height:=PrintSituationMarche.Desig10.Height;
          PrintSituationMarche.MontantPrec10.Height:=PrintSituationMarche.Desig10.Height;
          PrintSituationMarche.MontantMois10.Height:=PrintSituationMarche.Desig10.Height;
          PrintSituationMarche.MontantCumule10.Height:=PrintSituationMarche.Desig10.Height;
     Position:=PrintSituationMarche.Desig10.Top+PrintSituationMarche.Desig10.Height-1;
     end;
     if(Indice=11)then
     begin
          PrintSituationMarche.Desig11.Height:=PrintSituationMarche.Desig11.Lines.Capacity*18;
          PrintSituationMarche.Code11.Height:=PrintSituationMarche.Desig11.Height;
          PrintSituationMarche.Um11.Height:=PrintSituationMarche.Desig11.Height;
          PrintSituationMarche.QteMarche11.Height:=PrintSituationMarche.Desig11.Height;
          PrintSituationMarche.QtePrec11.Height:=PrintSituationMarche.Desig11.Height;
          PrintSituationMarche.QteMois11.Height:=PrintSituationMarche.Desig11.Height;
          PrintSituationMarche.QteTotale11.Height:=PrintSituationMarche.Desig11.Height;
          PrintSituationMarche.PrixUnit11.Height:=PrintSituationMarche.Desig11.Height;
          PrintSituationMarche.MontantPrec11.Height:=PrintSituationMarche.Desig11.Height;
          PrintSituationMarche.MontantMois11.Height:=PrintSituationMarche.Desig11.Height;
          PrintSituationMarche.MontantCumule11.Height:=PrintSituationMarche.Desig11.Height;
     Position:=PrintSituationMarche.Desig11.Top+PrintSituationMarche.Desig11.Height-1;
     end;
     if(Indice=12)then
     begin
          PrintSituationMarche.Desig12.Height:=PrintSituationMarche.Desig12.Lines.Capacity*18;
          PrintSituationMarche.Code12.Height:=PrintSituationMarche.Desig12.Height;
          PrintSituationMarche.Um12.Height:=PrintSituationMarche.Desig12.Height;
          PrintSituationMarche.QteMarche12.Height:=PrintSituationMarche.Desig12.Height;
          PrintSituationMarche.QtePrec12.Height:=PrintSituationMarche.Desig12.Height;
          PrintSituationMarche.QteMois12.Height:=PrintSituationMarche.Desig12.Height;
          PrintSituationMarche.QteTotale12.Height:=PrintSituationMarche.Desig12.Height;
          PrintSituationMarche.PrixUnit12.Height:=PrintSituationMarche.Desig12.Height;
          PrintSituationMarche.MontantPrec12.Height:=PrintSituationMarche.Desig12.Height;
          PrintSituationMarche.MontantMois12.Height:=PrintSituationMarche.Desig12.Height;
          PrintSituationMarche.MontantCumule12.Height:=PrintSituationMarche.Desig12.Height;
     Position:=PrintSituationMarche.Desig12.Top+PrintSituationMarche.Desig12.Height-1;
     end;
     if(Indice=13)then
     begin
          PrintSituationMarche.Desig13.Height:=PrintSituationMarche.Desig13.Lines.Capacity*18;
          PrintSituationMarche.Code13.Height:=PrintSituationMarche.Desig13.Height;
          PrintSituationMarche.Um13.Height:=PrintSituationMarche.Desig13.Height;
          PrintSituationMarche.QteMarche13.Height:=PrintSituationMarche.Desig13.Height;
          PrintSituationMarche.QtePrec13.Height:=PrintSituationMarche.Desig13.Height;
          PrintSituationMarche.QteMois13.Height:=PrintSituationMarche.Desig13.Height;
          PrintSituationMarche.QteTotale13.Height:=PrintSituationMarche.Desig13.Height;
          PrintSituationMarche.PrixUnit13.Height:=PrintSituationMarche.Desig13.Height;
          PrintSituationMarche.MontantPrec13.Height:=PrintSituationMarche.Desig13.Height;
          PrintSituationMarche.MontantMois13.Height:=PrintSituationMarche.Desig13.Height;
          PrintSituationMarche.MontantCumule13.Height:=PrintSituationMarche.Desig13.Height;
     Position:=PrintSituationMarche.Desig13.Top+PrintSituationMarche.Desig13.Height-1;
     end;
     if(Indice=14)then
     begin
          PrintSituationMarche.Desig14.Height:=PrintSituationMarche.Desig14.Lines.Capacity*18;
          PrintSituationMarche.Code14.Height:=PrintSituationMarche.Desig14.Height;
          PrintSituationMarche.Um14.Height:=PrintSituationMarche.Desig14.Height;
          PrintSituationMarche.QteMarche14.Height:=PrintSituationMarche.Desig14.Height;
          PrintSituationMarche.QtePrec14.Height:=PrintSituationMarche.Desig14.Height;
          PrintSituationMarche.QteMois14.Height:=PrintSituationMarche.Desig14.Height;
          PrintSituationMarche.QteTotale14.Height:=PrintSituationMarche.Desig14.Height;
          PrintSituationMarche.PrixUnit14.Height:=PrintSituationMarche.Desig14.Height;
          PrintSituationMarche.MontantPrec14.Height:=PrintSituationMarche.Desig14.Height;
          PrintSituationMarche.MontantMois14.Height:=PrintSituationMarche.Desig14.Height;
          PrintSituationMarche.MontantCumule14.Height:=PrintSituationMarche.Desig14.Height;
     Position:=PrintSituationMarche.Desig14.Top+PrintSituationMarche.Desig14.Height-1;
     end;
     if(Indice=15)then
     begin
          PrintSituationMarche.Desig15.Height:=PrintSituationMarche.Desig15.Lines.Capacity*18;
          PrintSituationMarche.Code15.Height:=PrintSituationMarche.Desig15.Height;
          PrintSituationMarche.Um15.Height:=PrintSituationMarche.Desig15.Height;
          PrintSituationMarche.QteMarche15.Height:=PrintSituationMarche.Desig15.Height;
          PrintSituationMarche.QtePrec15.Height:=PrintSituationMarche.Desig15.Height;
          PrintSituationMarche.QteMois15.Height:=PrintSituationMarche.Desig15.Height;
          PrintSituationMarche.QteTotale15.Height:=PrintSituationMarche.Desig15.Height;
          PrintSituationMarche.PrixUnit15.Height:=PrintSituationMarche.Desig15.Height;
          PrintSituationMarche.MontantPrec15.Height:=PrintSituationMarche.Desig15.Height;
          PrintSituationMarche.MontantMois15.Height:=PrintSituationMarche.Desig15.Height;
          PrintSituationMarche.MontantCumule15.Height:=PrintSituationMarche.Desig15.Height;
     Position:=PrintSituationMarche.Desig15.Top+PrintSituationMarche.Desig15.Height-1;
     end;
     if(Indice=16)then
     begin
          PrintSituationMarche.Desig16.Height:=PrintSituationMarche.Desig16.Lines.Capacity*18;
          PrintSituationMarche.Code16.Height:=PrintSituationMarche.Desig16.Height;
          PrintSituationMarche.Um16.Height:=PrintSituationMarche.Desig16.Height;
          PrintSituationMarche.QteMarche16.Height:=PrintSituationMarche.Desig16.Height;
          PrintSituationMarche.QtePrec16.Height:=PrintSituationMarche.Desig16.Height;
          PrintSituationMarche.QteMois16.Height:=PrintSituationMarche.Desig16.Height;
          PrintSituationMarche.QteTotale16.Height:=PrintSituationMarche.Desig16.Height;
          PrintSituationMarche.PrixUnit16.Height:=PrintSituationMarche.Desig16.Height;
          PrintSituationMarche.MontantPrec16.Height:=PrintSituationMarche.Desig16.Height;
          PrintSituationMarche.MontantMois16.Height:=PrintSituationMarche.Desig16.Height;
          PrintSituationMarche.MontantCumule16.Height:=PrintSituationMarche.Desig16.Height;
     Position:=PrintSituationMarche.Desig16.Top+PrintSituationMarche.Desig16.Height-1;
     end;
     if(Indice=17)then
     begin
          PrintSituationMarche.Desig17.Height:=PrintSituationMarche.Desig17.Lines.Capacity*18;
          PrintSituationMarche.Code17.Height:=PrintSituationMarche.Desig17.Height;
          PrintSituationMarche.Um17.Height:=PrintSituationMarche.Desig17.Height;
          PrintSituationMarche.QteMarche17.Height:=PrintSituationMarche.Desig17.Height;
          PrintSituationMarche.QtePrec17.Height:=PrintSituationMarche.Desig17.Height;
          PrintSituationMarche.QteMois17.Height:=PrintSituationMarche.Desig17.Height;
          PrintSituationMarche.QteTotale17.Height:=PrintSituationMarche.Desig17.Height;
          PrintSituationMarche.PrixUnit17.Height:=PrintSituationMarche.Desig17.Height;
          PrintSituationMarche.MontantPrec17.Height:=PrintSituationMarche.Desig17.Height;
          PrintSituationMarche.MontantMois17.Height:=PrintSituationMarche.Desig17.Height;
          PrintSituationMarche.MontantCumule17.Height:=PrintSituationMarche.Desig17.Height;
     Position:=PrintSituationMarche.Desig17.Top+PrintSituationMarche.Desig17.Height-1;
     end;
     if(Indice=18)then
     begin
          PrintSituationMarche.Desig18.Height:=PrintSituationMarche.Desig18.Lines.Capacity*18;
          PrintSituationMarche.Code18.Height:=PrintSituationMarche.Desig18.Height;
          PrintSituationMarche.Um18.Height:=PrintSituationMarche.Desig18.Height;
          PrintSituationMarche.QteMarche18.Height:=PrintSituationMarche.Desig18.Height;
          PrintSituationMarche.QtePrec18.Height:=PrintSituationMarche.Desig18.Height;
          PrintSituationMarche.QteMois18.Height:=PrintSituationMarche.Desig18.Height;
          PrintSituationMarche.QteTotale18.Height:=PrintSituationMarche.Desig18.Height;
          PrintSituationMarche.PrixUnit18.Height:=PrintSituationMarche.Desig18.Height;
          PrintSituationMarche.MontantPrec18.Height:=PrintSituationMarche.Desig18.Height;
          PrintSituationMarche.MontantMois18.Height:=PrintSituationMarche.Desig18.Height;
          PrintSituationMarche.MontantCumule18.Height:=PrintSituationMarche.Desig18.Height;
     Position:=PrintSituationMarche.Desig18.Top+PrintSituationMarche.Desig18.Height-1;
     end;
     if(Indice=19)then
     begin
          PrintSituationMarche.Desig19.Height:=PrintSituationMarche.Desig19.Lines.Capacity*18;
          PrintSituationMarche.Code19.Height:=PrintSituationMarche.Desig19.Height;
          PrintSituationMarche.Um19.Height:=PrintSituationMarche.Desig19.Height;
          PrintSituationMarche.QteMarche19.Height:=PrintSituationMarche.Desig19.Height;
          PrintSituationMarche.QtePrec19.Height:=PrintSituationMarche.Desig19.Height;
          PrintSituationMarche.QteMois19.Height:=PrintSituationMarche.Desig19.Height;
          PrintSituationMarche.QteTotale19.Height:=PrintSituationMarche.Desig19.Height;
          PrintSituationMarche.PrixUnit19.Height:=PrintSituationMarche.Desig19.Height;
          PrintSituationMarche.MontantPrec19.Height:=PrintSituationMarche.Desig19.Height;
          PrintSituationMarche.MontantMois19.Height:=PrintSituationMarche.Desig19.Height;
          PrintSituationMarche.MontantCumule19.Height:=PrintSituationMarche.Desig19.Height;
     Position:=PrintSituationMarche.Desig19.Top+PrintSituationMarche.Desig19.Height-1;
     end;
     if(Indice=20)then
     begin
          PrintSituationMarche.Desig20.Height:=PrintSituationMarche.Desig20.Lines.Capacity*18;
          PrintSituationMarche.Code20.Height:=PrintSituationMarche.Desig20.Height;
          PrintSituationMarche.Um20.Height:=PrintSituationMarche.Desig20.Height;
          PrintSituationMarche.QteMarche20.Height:=PrintSituationMarche.Desig20.Height;
          PrintSituationMarche.QtePrec20.Height:=PrintSituationMarche.Desig20.Height;
          PrintSituationMarche.QteMois20.Height:=PrintSituationMarche.Desig20.Height;
          PrintSituationMarche.QteTotale20.Height:=PrintSituationMarche.Desig20.Height;
          PrintSituationMarche.PrixUnit20.Height:=PrintSituationMarche.Desig20.Height;
          PrintSituationMarche.MontantPrec20.Height:=PrintSituationMarche.Desig20.Height;
          PrintSituationMarche.MontantMois20.Height:=PrintSituationMarche.Desig20.Height;
          PrintSituationMarche.MontantCumule20.Height:=PrintSituationMarche.Desig20.Height;
     Position:=PrintSituationMarche.Desig20.Top+PrintSituationMarche.Desig20.Height-1;
     end;
     if(Indice=21)then
     begin
          PrintSituationMarche.Desig21.Height:=PrintSituationMarche.Desig21.Lines.Capacity*18;
          PrintSituationMarche.Code21.Height:=PrintSituationMarche.Desig21.Height;
          PrintSituationMarche.Um21.Height:=PrintSituationMarche.Desig21.Height;
          PrintSituationMarche.QteMarche21.Height:=PrintSituationMarche.Desig21.Height;
          PrintSituationMarche.QtePrec21.Height:=PrintSituationMarche.Desig21.Height;
          PrintSituationMarche.QteMois21.Height:=PrintSituationMarche.Desig21.Height;
          PrintSituationMarche.QteTotale21.Height:=PrintSituationMarche.Desig21.Height;
          PrintSituationMarche.PrixUnit21.Height:=PrintSituationMarche.Desig21.Height;
          PrintSituationMarche.MontantPrec21.Height:=PrintSituationMarche.Desig21.Height;
          PrintSituationMarche.MontantMois21.Height:=PrintSituationMarche.Desig21.Height;
          PrintSituationMarche.MontantCumule21.Height:=PrintSituationMarche.Desig21.Height;
     Position:=PrintSituationMarche.Desig21.Top+PrintSituationMarche.Desig21.Height-1;
     end;
     if(Indice=22)then
     begin
          PrintSituationMarche.Desig22.Height:=PrintSituationMarche.Desig22.Lines.Capacity*18;
          PrintSituationMarche.Code22.Height:=PrintSituationMarche.Desig22.Height;
          PrintSituationMarche.Um22.Height:=PrintSituationMarche.Desig22.Height;
          PrintSituationMarche.QteMarche22.Height:=PrintSituationMarche.Desig22.Height;
          PrintSituationMarche.QtePrec22.Height:=PrintSituationMarche.Desig22.Height;
          PrintSituationMarche.QteMois22.Height:=PrintSituationMarche.Desig22.Height;
          PrintSituationMarche.QteTotale22.Height:=PrintSituationMarche.Desig22.Height;
          PrintSituationMarche.PrixUnit22.Height:=PrintSituationMarche.Desig22.Height;
          PrintSituationMarche.MontantPrec22.Height:=PrintSituationMarche.Desig22.Height;
          PrintSituationMarche.MontantMois22.Height:=PrintSituationMarche.Desig22.Height;
          PrintSituationMarche.MontantCumule22.Height:=PrintSituationMarche.Desig22.Height;
     Position:=PrintSituationMarche.Desig22.Top+PrintSituationMarche.Desig22.Height-1;
     end;
     if(Indice=23)then
     begin
          PrintSituationMarche.Desig23.Height:=PrintSituationMarche.Desig23.Lines.Capacity*18;
          PrintSituationMarche.Code23.Height:=PrintSituationMarche.Desig23.Height;
          PrintSituationMarche.Um23.Height:=PrintSituationMarche.Desig23.Height;
          PrintSituationMarche.QteMarche23.Height:=PrintSituationMarche.Desig23.Height;
          PrintSituationMarche.QtePrec23.Height:=PrintSituationMarche.Desig23.Height;
          PrintSituationMarche.QteMois23.Height:=PrintSituationMarche.Desig23.Height;
          PrintSituationMarche.QteTotale23.Height:=PrintSituationMarche.Desig23.Height;
          PrintSituationMarche.PrixUnit23.Height:=PrintSituationMarche.Desig23.Height;
          PrintSituationMarche.MontantPrec23.Height:=PrintSituationMarche.Desig23.Height;
          PrintSituationMarche.MontantMois23.Height:=PrintSituationMarche.Desig23.Height;
          PrintSituationMarche.MontantCumule23.Height:=PrintSituationMarche.Desig23.Height;
     Position:=PrintSituationMarche.Desig23.Top+PrintSituationMarche.Desig23.Height-1;
     end;
     if(Indice=24)then
     begin
          PrintSituationMarche.Desig24.Height:=PrintSituationMarche.Desig24.Lines.Capacity*18;
          PrintSituationMarche.Code24.Height:=PrintSituationMarche.Desig24.Height;
          PrintSituationMarche.Um24.Height:=PrintSituationMarche.Desig24.Height;
          PrintSituationMarche.QteMarche24.Height:=PrintSituationMarche.Desig24.Height;
          PrintSituationMarche.QtePrec24.Height:=PrintSituationMarche.Desig24.Height;
          PrintSituationMarche.QteMois24.Height:=PrintSituationMarche.Desig24.Height;
          PrintSituationMarche.QteTotale24.Height:=PrintSituationMarche.Desig24.Height;
          PrintSituationMarche.PrixUnit24.Height:=PrintSituationMarche.Desig24.Height;
          PrintSituationMarche.MontantPrec24.Height:=PrintSituationMarche.Desig24.Height;
          PrintSituationMarche.MontantMois24.Height:=PrintSituationMarche.Desig24.Height;
          PrintSituationMarche.MontantCumule24.Height:=PrintSituationMarche.Desig24.Height;
     Position:=PrintSituationMarche.Desig24.Top+PrintSituationMarche.Desig24.Height-1;
     end;
     if(Indice=25)then
     begin
          PrintSituationMarche.Desig25.Height:=PrintSituationMarche.Desig25.Lines.Capacity*18;
          PrintSituationMarche.Code25.Height:=PrintSituationMarche.Desig25.Height;
          PrintSituationMarche.Um25.Height:=PrintSituationMarche.Desig25.Height;
          PrintSituationMarche.QteMarche25.Height:=PrintSituationMarche.Desig25.Height;
          PrintSituationMarche.QtePrec25.Height:=PrintSituationMarche.Desig25.Height;
          PrintSituationMarche.QteMois25.Height:=PrintSituationMarche.Desig25.Height;
          PrintSituationMarche.QteTotale25.Height:=PrintSituationMarche.Desig25.Height;
          PrintSituationMarche.PrixUnit25.Height:=PrintSituationMarche.Desig25.Height;
          PrintSituationMarche.MontantPrec25.Height:=PrintSituationMarche.Desig25.Height;
          PrintSituationMarche.MontantMois25.Height:=PrintSituationMarche.Desig25.Height;
          PrintSituationMarche.MontantCumule25.Height:=PrintSituationMarche.Desig25.Height;
     Position:=PrintSituationMarche.Desig25.Top+PrintSituationMarche.Desig25.Height-1;
     end;
     if(Indice=26)then
     begin
          PrintSituationMarche.Desig26.Height:=PrintSituationMarche.Desig26.Lines.Capacity*18;
          PrintSituationMarche.Code26.Height:=PrintSituationMarche.Desig26.Height;
          PrintSituationMarche.Um26.Height:=PrintSituationMarche.Desig26.Height;
          PrintSituationMarche.QteMarche26.Height:=PrintSituationMarche.Desig26.Height;
          PrintSituationMarche.QtePrec26.Height:=PrintSituationMarche.Desig26.Height;
          PrintSituationMarche.QteMois26.Height:=PrintSituationMarche.Desig26.Height;
          PrintSituationMarche.QteTotale26.Height:=PrintSituationMarche.Desig26.Height;
          PrintSituationMarche.PrixUnit26.Height:=PrintSituationMarche.Desig26.Height;
          PrintSituationMarche.MontantPrec26.Height:=PrintSituationMarche.Desig26.Height;
          PrintSituationMarche.MontantMois26.Height:=PrintSituationMarche.Desig26.Height;
          PrintSituationMarche.MontantCumule26.Height:=PrintSituationMarche.Desig26.Height;
     Position:=PrintSituationMarche.Desig26.Top+PrintSituationMarche.Desig26.Height-1;
     end;
     if(Indice=27)then
     begin
          PrintSituationMarche.Desig27.Height:=PrintSituationMarche.Desig27.Lines.Capacity*18;
          PrintSituationMarche.Code27.Height:=PrintSituationMarche.Desig27.Height;
          PrintSituationMarche.Um27.Height:=PrintSituationMarche.Desig27.Height;
          PrintSituationMarche.QteMarche27.Height:=PrintSituationMarche.Desig27.Height;
          PrintSituationMarche.QtePrec27.Height:=PrintSituationMarche.Desig27.Height;
          PrintSituationMarche.QteMois27.Height:=PrintSituationMarche.Desig27.Height;
          PrintSituationMarche.QteTotale27.Height:=PrintSituationMarche.Desig27.Height;
          PrintSituationMarche.PrixUnit27.Height:=PrintSituationMarche.Desig27.Height;
          PrintSituationMarche.MontantPrec27.Height:=PrintSituationMarche.Desig27.Height;
          PrintSituationMarche.MontantMois27.Height:=PrintSituationMarche.Desig27.Height;
          PrintSituationMarche.MontantCumule27.Height:=PrintSituationMarche.Desig27.Height;
     Position:=PrintSituationMarche.Desig27.Top+PrintSituationMarche.Desig27.Height-1;
     end;
     {********************* SUITE *********************************************}
     PositionInt:=Position;
     for LigneR:=Indice+1 to 27 do
     begin
          if(LigneR=2)then
          begin
               PrintSituationMarche.Code2.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig2.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um2.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche2.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec2.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois2.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale2.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit2.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec2.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois2.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule2.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig2.Top+PrintSituationMarche.Desig2.Height-1;
          end;
          if(LigneR=3)then
          begin
               PrintSituationMarche.Code3.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig3.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um3.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche3.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec3.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois3.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale3.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit3.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec3.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois3.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule3.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig3.Top+PrintSituationMarche.Desig2.Height-1;
          end;
          
          if(LigneR=4)then
          begin
               PrintSituationMarche.Code4.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig4.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um4.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche4.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec4.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois4.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale4.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit4.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec4.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois4.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule4.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig4.Top+PrintSituationMarche.Desig4.Height-1;
          end;
          
          if(LigneR=5)then
          begin
               PrintSituationMarche.Code5.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig5.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um5.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche5.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec5.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois5.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale5.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit5.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec5.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois5.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule5.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig5.Top+PrintSituationMarche.Desig5.Height-1;
          end;

          if(LigneR=6)then
          begin
               PrintSituationMarche.Code6.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig6.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um6.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche6.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec6.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois6.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale6.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit6.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec6.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois6.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule6.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig6.Top+PrintSituationMarche.Desig6.Height-1;
          end;
          
          if(LigneR=7)then
          begin
               PrintSituationMarche.Code7.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig7.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um7.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche7.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec7.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois7.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale7.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit7.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec7.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois7.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule7.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig7.Top+PrintSituationMarche.Desig7.Height-1;
          end;
          
          if(LigneR=8)then
          begin
               PrintSituationMarche.Code8.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig8.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um8.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche8.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec8.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois8.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale8.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit8.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec8.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois8.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule8.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig8.Top+PrintSituationMarche.Desig8.Height-1;
          end;
          
          if(LigneR=9)then
          begin
               PrintSituationMarche.Code9.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig9.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um9.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche9.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec9.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois9.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale9.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit9.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec9.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois9.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule9.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig9.Top+PrintSituationMarche.Desig9.Height-1;
          end;
          
          if(LigneR=10)then
          begin
               PrintSituationMarche.Code10.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig10.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um10.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche10.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec10.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois10.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale10.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit10.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec10.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois10.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule10.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig10.Top+PrintSituationMarche.Desig10.Height-1;
          end;
          
          if(LigneR=11)then
          begin
               PrintSituationMarche.Code11.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig11.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um11.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche11.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec11.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois11.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale11.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit11.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec11.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois11.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule11.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig11.Top+PrintSituationMarche.Desig11.Height-1;
          end;
          
          if(LigneR=12)then
          begin
               PrintSituationMarche.Code12.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig12.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um12.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche12.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec12.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois12.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale12.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit12.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec12.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois12.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule12.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig12.Top+PrintSituationMarche.Desig12.Height-1;
          end;
          
          if(LigneR=13)then
          begin
               PrintSituationMarche.Code13.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig13.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um13.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche13.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec13.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois13.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale13.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit13.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec13.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois13.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule13.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig13.Top+PrintSituationMarche.Desig13.Height-1;
          end;
          
          if(LigneR=14)then
          begin
               PrintSituationMarche.Code14.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig14.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um14.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche14.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec14.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois14.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale14.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit14.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec14.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois14.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule14.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig14.Top+PrintSituationMarche.Desig14.Height-1;
          end;
          
          if(LigneR=15)then
          begin
               PrintSituationMarche.Code15.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig15.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um15.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche15.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec15.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois15.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale15.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit15.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec15.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois15.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule15.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig15.Top+PrintSituationMarche.Desig15.Height-1;
          end;
          
          if(LigneR=16)then
          begin
               PrintSituationMarche.Code16.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig16.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um16.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche16.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec16.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois16.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale16.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit16.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec16.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois16.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule16.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig16.Top+PrintSituationMarche.Desig16.Height-1;
          end;
          
          if(LigneR=17)then
          begin
               PrintSituationMarche.Code17.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig17.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um17.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche17.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec17.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois17.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale17.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit17.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec17.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois17.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule17.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig17.Top+PrintSituationMarche.Desig17.Height-1;
          end;
          
          if(LigneR=18)then
          begin
               PrintSituationMarche.Code18.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig18.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um18.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche18.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec18.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois18.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale18.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit18.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec18.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois18.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule18.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig18.Top+PrintSituationMarche.Desig18.Height-1;
          end;
          
          if(LigneR=19)then
          begin
               PrintSituationMarche.Code19.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig19.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um19.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche19.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec19.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois19.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale19.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit19.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec19.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois19.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule19.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig19.Top+PrintSituationMarche.Desig19.Height-1;
          end;
          
          if(LigneR=20)then
          begin
               PrintSituationMarche.Code20.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig20.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um20.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche20.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec20.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois20.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale20.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit20.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec20.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois20.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule20.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig20.Top+PrintSituationMarche.Desig20.Height-1;
          end;
          
          if(LigneR=21)then
          begin
               PrintSituationMarche.Code21.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig21.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um21.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche21.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec21.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois21.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale21.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit21.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec21.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois21.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule21.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig21.Top+PrintSituationMarche.Desig21.Height-1;
          end;
          
          if(LigneR=22)then
          begin
               PrintSituationMarche.Code22.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig22.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um22.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche22.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec22.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois22.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale22.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit22.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec22.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois22.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule22.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig22.Top+PrintSituationMarche.Desig22.Height-1;
          end;
          
          if(LigneR=23)then
          begin
               PrintSituationMarche.Code23.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig23.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um23.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche23.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec23.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois23.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale23.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit23.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec23.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois23.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule23.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig23.Top+PrintSituationMarche.Desig23.Height-1;
          end;
          
          if(LigneR=24)then
          begin
               PrintSituationMarche.Code24.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig24.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um24.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche24.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec24.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois24.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale24.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit24.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec24.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois24.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule24.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig24.Top+PrintSituationMarche.Desig24.Height-1;
          end;
          
          if(LigneR=25)then
          begin
               PrintSituationMarche.Code25.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig25.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um25.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche25.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec25.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois25.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale25.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit25.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec25.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois25.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule25.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig25.Top+PrintSituationMarche.Desig25.Height-1;
          end;
          
          if(LigneR=26)then
          begin
               PrintSituationMarche.Code26.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig26.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um26.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche26.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec26.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois26.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale26.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit26.Top:=MinInt(PositionInt,PositionMax);               
               PrintSituationMarche.MontantPrec26.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois26.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule26.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig26.Top+PrintSituationMarche.Desig26.Height-1;
          end;
          
          if(LigneR=27)then
          begin
               PrintSituationMarche.Code27.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Desig27.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.Um27.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMarche27.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QtePrec27.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteMois27.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.QteTotale27.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.PrixUnit27.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantPrec27.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantMois27.Top:=MinInt(PositionInt,PositionMax);
               PrintSituationMarche.MontantCumule27.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintSituationMarche.Desig27.Top+PrintSituationMarche.Desig27.Height-1;
          end;
     end;
end;


procedure TFSSituations.BitBtn86Click(Sender: TObject);
begin
FSSituations.AffichePrintParStructure.Visible:=false;
end;

procedure TFSSituations.RBSelectDecompteClick(Sender: TObject);
begin
if(FSSituations.RBSelectDecompte.Checked=true)
then FSSituations.RBSelectDecompte.Caption:='Structures cumulées'
else FSSituations.RBSelectDecompte.Caption:='Par Structure';
end;

procedure TFSSituations.BitBtn87Click(Sender: TObject);
var OKPrint,OK,OKStructure,OKHeightMax:boolean;  i,l,R,m,n,AjoutLigne,Position,HeightRow,HeightMax,NStructureMarche,NStatistique,NAttachement:integer;  MontantMarcheFixe,MontantMarche,TVAMarche:real;
    IntituleEtat,IntituleProjet,NSMarche,IndiceAfficheStructure:string;
begin

if(FSSituations.AfficheTitreStructure.Caption='Décompte')then
begin
     IntituleProjet:=FSSituations.EditTypeProjet.Text;
     IntituleEtat:='Situation';

     if(FSSituations.EditNSituationMarche.Text<>'')then
     begin
     PrintSituationMarche.EtatEntreprise.Lines.Clear;

     PrintSituationMarche.EtatTitre.Caption:='Décompte Provisoire des Travaux réalisés de la '+IntituleEtat+' N° '+FSSituations.EditNSituationMarche.Text+' Arrêté au: '+FSSituations.EditDateAttachement.Text;
     {*******************Entreprise***************}
     OpenFParc(RParc);
     PrintSituationMarche.EtatEntreprise.Lines.Add('');
     PrintSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text1);
     PrintSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text2);
     PrintSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text3);
     PrintSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text4);
     PrintSituationMarche.EtatEntreprise.Lines.Add('  '+RParc.Text5);
     {***************Fin Entreprise***************}

     PrintSituationMarche.EtatEntreprise.Lines.Add('');

     NSMarche:=FSSituations.EditNSMarche.Text;

     {******************MARCHE***************}
     TypeProces:='Business'; FichierConcerne:='FMarche';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChMarche:=Adresse;
     assignfile(FMarche,ChMarche);
     if FileExists(ChMarche)then
     Reset(FMarche)
     else Rewrite(FMarche);
     Seek(FMarche,0);
     i:=0;
     OK:=false;
     while not eof(FMarche)and(OK=false)do
     begin
          Read(FMarche,RMarche);
          if(RMarche.NSMarche=strtointeger(FSSituations.EditNSMarche.Text))then
          begin
               OK:=true;
               PrintSituationMarche.EtatEntreprise.Lines.Add('  '+IntituleProjet+' N°: '+RMarche.RefMarche+' du '+RMarche.DateMarche);
               PrintSituationMarche.EtatEntreprise.Lines.Add('  Objet: '+RMarche.Marche);
               PrintSituationMarche.EtatEntreprise.Lines.Add('  Maitre de l''ouvrage: '+FSSituations.EditMaitreOuvrage.Text);
               MontantMarcheFixe:=RMarche.MontantMarche;
          end;

     end;
     CloseFile(FMarche);

     MontantMarche:=strtoreal(FSSituations.TableauAnalyseMontantMarche.Cells[6,FSSituations.TableauAnalyseMontantMarche.RowCount-1]);

     if(MontantMarcheFixe<>MontantMarche)then showmessage('Le montant du '+IntituleProjet+': ('+Vergule(floattostr(MontantMarcheFixe),'2','C','')+') ne correspond pas au Devis Quantitatif et Estimatif: ('+Vergule(floattostr(MontantMarche),'2','C','')+') !');

     PrintSituationMarche.EtatEntreprise.Lines.Add('  Montant du '+IntituleProjet+' en TTC: '+vergule(floattostr(MontantMarcheFixe),'2','C','')+' DA.');
     PrintSituationMarche.EtatEntreprise.Height:=PrintSituationMarche.EtatEntreprise.Lines.Capacity*15;
     {***************Fin MARCHE***************}

     for l:=1 to 27 do ClearSituation(l,false);
     for l:=1 to 27 do InitialisationSituation(l,l);

     HeightMax:=520;

     R:=1;
     m:=1;
     L:=0;
     Position:=32;
     while(R<=FSSituations.TableauDecompteSituation.RowCount-1)do
     begin
          OKStructure:=true;
          if(FSSituations.RBSelectDecompte.Checked=false)then
          begin
               if(Firstlaters(FSSituations.TableauDecompteSituation.Cells[11,R],10)=
                  Firstlaters(FSSituations.TableauDecompteStructures.Cells[0,FSSituations.TableauDecompteStructures.Row],10))
               then OKStructure:=true
               else OKStructure:=false;
          end;

     PrintSituationMarche.QteMarche.Lines.Text:=FSSituations.TableauDecompteSituation.Cells[3,0];

     if(OKStructure=true)then
     begin // CONDITION
          FSSituations.TestePrintDevis.Lines.Text:=FSSituations.TableauDecompteSituation.Cells[1,R];
          HeightRow:=FSSituations.TestePrintDevis.Lines.Count*20;
          OKHeightMax:=true;
          if(Position+HeightRow<HeightMax)then
          begin
          l:=l+1;
          OKHeightMax:=false;
          ClearSituation(l,true);
          InitialisationSituation(R,l);

          if(l=1)then
          begin
          PrintSituationMarche.Code1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule1.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=2)then
     begin
          PrintSituationMarche.Code2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule2.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=3)then
     begin
          PrintSituationMarche.Code3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule3.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=4)then
     begin
          PrintSituationMarche.Code4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule4.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=5)then
     begin
          PrintSituationMarche.Code5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule5.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=6)then
     begin
          PrintSituationMarche.Code6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule6.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=7)then
     begin
          PrintSituationMarche.Code7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule7.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=8)then
     begin
          PrintSituationMarche.Code8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule8.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=9)then
     begin
          PrintSituationMarche.Code9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule9.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=10)then
     begin
          PrintSituationMarche.Code10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule10.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=11)then
     begin
          PrintSituationMarche.Code11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule11.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=12)then
     begin
          PrintSituationMarche.Code12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule12.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=13)then
     begin
          PrintSituationMarche.Code13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule13.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=14)then
     begin
          PrintSituationMarche.Code14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule14.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=15)then
     begin
          PrintSituationMarche.Code15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule15.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=16)then
     begin
          PrintSituationMarche.Code16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule16.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=17)then
     begin
          PrintSituationMarche.Code17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule17.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=18)then
     begin
          PrintSituationMarche.Code18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule18.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=19)then
     begin
          PrintSituationMarche.Code19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule19.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=20)then
     begin
          PrintSituationMarche.Code20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule20.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=21)then
     begin
          PrintSituationMarche.Code21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule21.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=22)then
     begin
          PrintSituationMarche.Code22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule22.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=23)then
     begin
          PrintSituationMarche.Code23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule23.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=24)then
     begin
          PrintSituationMarche.Code24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule24.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=25)then
     begin
          PrintSituationMarche.Code25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule25.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=26)then
     begin
          PrintSituationMarche.Code26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule26.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;
     if(l=27)then
     begin
          PrintSituationMarche.Code27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[0,R]);
          PrintSituationMarche.Desig27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[1,R]);
          PrintSituationMarche.Um27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[2,R]);
          PrintSituationMarche.QteMarche27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[3,R]);
          PrintSituationMarche.QtePrec27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[4,R]);
          PrintSituationMarche.QteMois27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[5,R]);
          PrintSituationMarche.QteTotale27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[6,R]);
          PrintSituationMarche.PrixUnit27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[7,R]);
          PrintSituationMarche.MontantPrec27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[8,R]);
          PrintSituationMarche.MontantMois27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[9,R]);
          PrintSituationMarche.MontantCumule27.Lines.Add(FSSituations.TableauDecompteSituation.Cells[10,R]);
     end;

     HeightSituationMarche(l,Position);
     end
     else R:=R-1;
end;//CONDITION 

     if(l=27)or(R=FSSituations.TableauDecompteSituation.RowCount-1)or(OKHeightMax=true)then
     begin
          PrintSituationMarche.Preview;
          l:=0;
          for n:=(R+1)to MinInt((R+27),FSSituations.TableauDecompteSituation.RowCount-1)do
          begin
               l:=l+1;
               InitialisationSituation(n,l);
          end;

          for l:=1 to 27 do ClearSituation(l,false);

          Position:=32;
          m:=m+1;
          l:=0;
     end;
R:=R+1;
end;

end;
end;            

if(FSSituations.AfficheTitreStructure.Caption='Attachement')then
begin
     NSMarche:=FSSituations.EditNSMarche.Text;
     NAttachement:=strtointeger(FSSituations.EditNAttachementMarche.Text)*strtointeger(FSSituations.IndiceAfficheAttachement.Text);
     if(FSSituations.RBSelectDecompte.Checked=true)then
     begin
          NStructureMarche:=0;
          NStatistique:=0;
          IndiceAfficheStructure:='0';
     end
     else
     begin
          NStructureMarche:=strtointeger(FSSituations.TableauDecompteStructures.Cells[0,FSSituations.TableauDecompteStructures.Row]);
          NStatistique:=0;
          IndiceAfficheStructure:='1';
     end;
     ProcAfficheDetailAttachement(FSSituations.TableauDetailAttachement,strtointeger(NSMarche),NStructureMarche,NStatistique,NAttachement);

     ImprimerAttachement(FSSituations.TableauDetailAttachement,FSSituations.EditTypeProjet.Text,FSSituations.EditNSMarche.Text,FSSituations.TableauDecompteStructures.Cells[1,FSSituations.TableauDecompteStructures.Row],FSSituations.EditNAttachementMarche.Text,IndiceAfficheStructure);
end;

if(FSSituations.AfficheTitreStructure.Caption='AttachementExcel')then
begin
     NSMarche:=FSSituations.EditNSMarche.Text;
     NAttachement:=strtointeger(FSSituations.EditNAttachementMarche.Text)*strtointeger(FSSituations.IndiceAfficheAttachement.Text);
     if(FSSituations.RBSelectDecompte.Checked=true)then
     begin
          NStructureMarche:=0;
          NStatistique:=0;
          IndiceAfficheStructure:='0';
     end
     else
     begin
          NStructureMarche:=strtointeger(FSSituations.TableauDecompteStructures.Cells[0,FSSituations.TableauDecompteStructures.Row]);
          NStatistique:=0;
          IndiceAfficheStructure:='1';
     end;
     ProcAfficheDetailAttachement(FSSituations.TableauDetailAttachement,strtointeger(NSMarche),NStructureMarche,NStatistique,NAttachement);

     TableauToExcel(FSSituations.TableauDetailAttachement,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,'Attachement Situation N° '+FSSituations.EditNSituationMarche.Text+' du '+FSSituations.EditDateAttachement.Text,FSSituations.EditMarche.Text,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

end;

procedure TFSSituations.BitVoirListeSituationClick(Sender: TObject);
var   R,RowSelect:integer;   OKSituation:boolean;
begin
FSSituations.AfficheOperationSituation.Height:=33;
FSSituations.AfficheListeSituation.Visible:=true;
ProcAfficheListeSituation(FSSituations.TableauListeSituation,FSSituations.EditNSMarche.Text);

RowSelect:=1;
R:=1;
OKSituation:=false;
while(R<=FSSituations.TableauListeSituation.RowCount-1)and(OKSituation=false)do
begin
     if(strtointeger(FSSituations.TableauListeSituation.Cells[2,R])=strtointeger(FSSituations.EditNSituationMarche.Text))
     and(strtointeger(FSSituations.TableauListeSituation.Cells[3,R])=strtointeger(FSSituations.EditNSMarche.Text))
     and(FSSituations.TableauListeSituation.Cells[5,R]=FSSituations.EditDateAttachement.Text)
     then
     begin
          OKSituation:=true;
          RowSelect:=R;
     end;
R:=R+1;
end;
FSSituations.TableauListeSituation.Row:=RowSelect;
FSSituations.TableauListeSituation.SetFocus;
end;

Procedure ProcAfficheListeSituation(TableauListeSituation:TStringGrid; NSMarche:string);
var  i:integer;   MTTCBrut,RG,MRG,MTTCNet,ComuleSituation:real;   NotCol:string;  OKSituation:boolean;
begin
TableauListeSituation.ColCount:=14;
TableauListeSituation.Cols[1].Text:='Désignation';
TableauListeSituation.Cols[2].Text:=' N°';
TableauListeSituation.Cols[3].Text:='N°.Marché';
TableauListeSituation.Cols[4].Text:='N°Attachement';
TableauListeSituation.Cols[5].Text:='Date';
TableauListeSituation.Cols[6].Text:='M.TTC.Brut';
TableauListeSituation.Cols[7].Text:='R.G.(%)';
TableauListeSituation.Cols[8].Text:='M.R.G';
TableauListeSituation.Cols[9].Text:='M.TTC.Net';
TableauListeSituation.Cols[10].Text:='Par Structure';
TableauListeSituation.Cols[11].Text:='Par Statistique';
TableauListeSituation.Cols[12].Text:='CummulerAttachements';
TableauListeSituation.Cols[13].Text:='Cummule';
TableauListeSituation.RowCount:=2;
TableauListeSituation.Rows[1].Text:='';

TypeProces:='Business'; FichierConcerne:='FSituationMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChSituationMarche:=Adresse;  FSSituations.AdresseSituationMarche.Caption:=ChSituationMarche;
assignfile(FSituationMarche,ChSituationMarche);
if FileExists(ChSituationMarche)then
Reset(FSituationMarche)
else Rewrite(FSituationMarche);
Seek(FSituationMarche,0);
i:=0;
MTTCBrut:=0; RG:=0; MRG:=0; MTTCNet:=0; ComuleSituation:=0;
while not eof(FSituationMarche)do
begin
     Read(FSituationMarche,RSituationMarche);

     if(NSMarche<>'')then
     begin
          if(RSituationMarche.NSMarche=strtointeger(NSMarche))
          then OKSituation:=true
          else OKSituation:=false;
     end
     else OKSituation:=true;  

     if(OKSituation=true)then
     begin
         i:=i+1;
         TableauListeSituation.Rows[i].Text:='';
         if(RSituationMarche.NSituationMarche<>0)
         then TableauListeSituation.Cells[1,i]:=RSituationMarche.DesignationSituation+' N° '+Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2')+'/'+Lastlaters(RSituationMarche.DateSituationMarche,4)
         else TableauListeSituation.Cells[1,i]:=RSituationMarche.DesignationSituation+' Inventaire au '+RSituationMarche.DateSituationMarche;
         TableauListeSituation.Cells[2,i]:=Completezerogauche(inttostr(RSituationMarche.NSituationMarche),'2');
         TableauListeSituation.Cells[3,i]:=Completezerogauche(inttostr(RSituationMarche.NSMarche),'2');
         TableauListeSituation.Cells[4,i]:=RSituationMarche.NAttachement;
         TableauListeSituation.Cells[5,i]:=RSituationMarche.DateSituationMarche;
         TableauListeSituation.Cells[6,i]:=Vergule(floattostr(RSituationMarche.MontantSituationTTCBrut),'2','C','');
         TableauListeSituation.Cells[7,i]:=Vergule(floattostr(RSituationMarche.RetenueGarantie),'2','C','')+' %';
         TableauListeSituation.Cells[8,i]:=Vergule(floattostr(RSituationMarche.MontantRetenueGarantie),'2','C','');
         TableauListeSituation.Cells[9,i]:=Vergule(floattostr(RSituationMarche.MontantSituationTTCNet),'2','C','');
         TableauListeSituation.Cells[10,i]:=booltostr(RSituationMarche.ParStructure);
         TableauListeSituation.Cells[11,i]:=booltostr(RSituationMarche.ParStatistique);
         TableauListeSituation.Cells[12,i]:=booltostr(RSituationMarche.CummulerAttachement);
         TableauListeSituation.Cells[13,i]:='';

     MTTCBrut:=MTTCBrut+RSituationMarche.MontantSituationTTCBrut;
     RG:=RG+RSituationMarche.RetenueGarantie;
     MRG:=MRG+RSituationMarche.MontantRetenueGarantie;
     MTTCNet:=MTTCNet+RSituationMarche.MontantSituationTTCNet;
     end;
end;
CloseFile(FSituationMarche);

if(i>0)then
       begin
            RG:=RG/i;
            i:=i+1;
            TableauListeSituation.Rows[i].Text:='';
            i:=i+1;
            TableauListeSituation.Cells[5,i]:='  TOTAL: ';
            TableauListeSituation.Cells[6,i]:=Vergule(floattostr(MTTCBrut),'2','C','');
            TableauListeSituation.Cells[7,i]:=Vergule(floattostr(RG),'2','C','')+' %';
            TableauListeSituation.Cells[8,i]:=Vergule(floattostr(MRG),'2','C','');
            TableauListeSituation.Cells[9,i]:=Vergule(floattostr(MTTCNet),'2','C','');
            TableauListeSituation.RowCount:=i+1;

            TrierTableauARowSpecial(TableauListeSituation,1,TableauListeSituation.RowCount-3,0,'5','Date','+');

            i:=1;
            while(i<=TableauListeSituation.RowCount-3)do
            begin
                 ComuleSituation:=ComuleSituation+strtoreal(TableauListeSituation.Cells[9,i]);
                 TableauListeSituation.Cells[13,i]:=Vergule(floattostr(ComuleSituation),'2','C','');
            i:=i+1;
            end;

            TableauListeSituation.Row:=i;
       end
       else TableauListeSituation.RowCount:=2;

       NotCol:='2-4;10-12';
       for i:=1 to TableauListeSituation.ColCount-1 do if existeNumInTexte(inttostr(i),NotCol)then TableauListeSituation.ColWidths[i]:=0;
       AjusterColWidth(TableauListeSituation,'',NotCol);
end;

procedure TFSSituations.BitBtn53Click(Sender: TObject);
begin
FSSituations.TableauPrincipal.SetFocus;
FSSituations.AfficheListeSituation.Visible:=false;
end;

procedure TFSSituations.TableauListeSituationClick(Sender: TObject);
begin
FSSituations.AfficheModifierSituation.Visible:=false;
FSSituations.AfficheActionListeSituation.Visible:=false;
FSSituations.AffichePrintParStructure.Visible:=false;
FSSituations.AfficheOperationSituation.Height:=33;
end;

procedure TFSSituations.TableauListeSituationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var   ParStructure,ParStatistique,CummuleAttachement:boolean;    DateSituation,NumSituation,NSMarche,IndiceAfficheStructure:string; C,NStructureMarche,NStatistique,NAttachement:integer;
begin

if((FSSituations.TableauListeSituation.Cells[2,FSSituations.TableauListeSituation.Row]<>'')
and(FSSituations.TableauListeSituation.Cells[3,FSSituations.TableauListeSituation.Row]<>''))
then
begin

if key in[VK_RETURN]then
begin
     ParStructure:=strtobool(FSSituations.TableauListeSituation.Cells[10,FSSituations.TableauListeSituation.Row]);
     ParStatistique:=strtobool(FSSituations.TableauListeSituation.Cells[11,FSSituations.TableauListeSituation.Row]);
     CummuleAttachement:=strtobool(FSSituations.TableauListeSituation.Cells[12,FSSituations.TableauListeSituation.Row]);
     EditOptionSituationParStructure.Text:=booltostr(ParStructure);
     EditOptionSituationParStatistique.Text:=booltostr(ParStatistique);
     FSSituations.EditNSituationMarche.Text:=Completezerogauche(FSSituations.TableauListeSituation.Cells[2,FSSituations.TableauListeSituation.Row],'2');
     FSSituations.EditNSMarche.Text:=Withoutzerogauche(FSSituations.TableauListeSituation.Cells[3,FSSituations.TableauListeSituation.Row]);
     FSSituations.EditNAttachementMarche.Text:=FSSituations.TableauListeSituation.Cells[4,FSSituations.TableauListeSituation.Row];
     FSSituations.IndiceAfficheAttachement.Text:='1';
     FSSituations.EditDateAttachement.Text:=FSSituations.TableauListeSituation.Cells[5,FSSituations.TableauListeSituation.Row];

     NSMarche:=FSSituations.EditNSMarche.Text;
     NumSituation:=FSSituations.EditNSituationMarche.Text;
     DateSituation:=FSSituations.EditDateAttachement.Text;

     NStructureMarche:=0;
     NStatistique:=0;
     NAttachement:=strtointeger(FSSituations.EditNAttachementMarche.Text)*strtointeger(FSSituations.IndiceAfficheAttachement.Text);
     ProcAfficheDetailAttachement(FSSituations.TableauDetailAttachement,strtointeger(NSMarche),NStructureMarche,NStatistique,NAttachement);

     ListeDetailSituationMarche(FSSituations.TableauDetailSituationMarche,NumSituation,NSMarche,Lastlaters(DateSituation,4));

     if(FSSituations.TableauDetailSituationMarche.RowCount>=2)and(FSSituations.TableauDetailSituationMarche.Cells[10,1]<>'')
     then ProcAfficheSituationExiste(FSSituations.EditNSituationMarche.Text,ParStructure,ParStatistique,CummuleAttachement)
     else ProcAfficheSituation(ParStructure,ParStatistique,CummuleAttachement);

     FSSituations.TableauPrincipal.SetFocus;
     FSSituations.AfficheListeSituation.Visible:=false;

     for C:=1 to FSSituations.TableauDecompteSituation.ColCount-1 do
     begin
          if(FSSituations.TableauDecompteSituation.ColWidths[C]>strtointeger(FSSituations.EditMaxColWidth.Text))then FSSituations.TableauDecompteSituation.ColWidths[C]:=strtointeger(FSSituations.EditMaxColWidth.Text);
     end;
end;

if key in[VK_DELETE]then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

     FSSituations.AfficheActionListeSituation.Visible:=true;
     FSSituations.AfficheActionListeSituation.Caption:='Supprimer ?';
     FSSituations.BitActionSituation.Kind:=bkCancel;
     FSSituations.BitActionSituation.Caption:='Supprimer';
     FSSituations.BitActionSituation.SetFocus;
end;

end;
end;

procedure TFSSituations.TableauListeSituationKeyPress(Sender: TObject;
  var Key: Char);
var  TypeProces,FichierConserne,Adresse:string;
begin
     if key in['n','N']then
     begin
          FSSituations.AfficheNouvelleSituation.Visible:=true;
          
          FSSituations.EditDesignationSituationNew.Text:='Situation';
          FSSituations.EditNSituationMarcheNew.Text:='';
          FSSituations.EditNSMarcheNew.Text:=FSSituations.EditNSMarche.Text;
          FSSituations.EditNAttachementNew.Text:='';
          FSSituations.RBValiditeSituationNew.Checked:=true;
          FSSituations.EditDateSituationMarcheNew.Date:=date;
          FSSituations.EditModePaiementNew.Text:='';
          FSSituations.EditNumDomiciliationNew.Text:='';
          FSSituations.EditDomiciliationNew.Text:='';
          FSSituations.EditNumPieceNew.Text:='';
          FSSituations.EditMontantSituationTTCBrutNew.Text:='';
          FSSituations.EditRetenueGarantieNew.Text:='';
          FSSituations.EditMontantRetenueGarantieNew.Text:='';
          FSSituations.EditMontantSituationTTCNetNew.Text:='';
          FSSituations.RBParStructureNew.Checked:=false;
          FSSituations.RBParStatistiqueNew.Checked:=true;
          FSSituations.RBCummulerAttachementNew.Checked:=false;
          FSSituations.EditListeNumAvisNew.Text:='';

          FSSituations.EditNSituationMarcheNew.SetFocus;
     end;

     if key in['r','R']then
     begin
          FSSituations.AfficheNouvelleSituation.Visible:=true;

          RSituationMarcheCopie:=ChercherSituationMarche(FSSituations.TableauListeSituation.Cells[3,FSSituations.TableauListeSituation.Row],FSSituations.TableauListeSituation.Cells[2,FSSituations.TableauListeSituation.Row],'');
          FSSituations.EditDesignationSituationNew.Text:=RSituationMarcheCopie.DesignationSituation;
          FSSituations.EditNSituationMarcheNew.Text:=inttostr(RSituationMarcheCopie.NSituationMarche);
          FSSituations.EditNSMarcheNew.Text:=inttostr(RSituationMarcheCopie.NSMarche);
          FSSituations.EditNAttachementNew.Text:=RSituationMarcheCopie.NAttachement;
          FSSituations.RBValiditeSituationNew.Checked:=RSituationMarcheCopie.ValiditeSituation;
          FSSituations.EditDateSituationMarcheNew.Date:=strtodate(RSituationMarcheCopie.DateSituationMarche);
          FSSituations.EditModePaiementNew.Text:=RSituationMarcheCopie.ModePaiement;
          FSSituations.EditNumDomiciliationNew.Text:=RSituationMarcheCopie.NumDomiciliation;
          FSSituations.EditDomiciliationNew.Text:=RSituationMarcheCopie.Domiciliation;
          FSSituations.EditNumPieceNew.Text:=RSituationMarcheCopie.NumPiece;
          FSSituations.EditMontantSituationTTCBrutNew.Text:=Vergule(floattostr(RSituationMarcheCopie.MontantSituationTTCBrut),'2','C','');
          FSSituations.EditRetenueGarantieNew.Text:=Vergule(floattostr(RSituationMarcheCopie.RetenueGarantie),'2','C','');
          FSSituations.EditMontantRetenueGarantieNew.Text:=floattostr(RSituationMarcheCopie.MontantRetenueGarantie);
          FSSituations.EditMontantSituationTTCNetNew.Text:=Vergule(floattostr(RSituationMarcheCopie.MontantSituationTTCNet),'2','C','');
          FSSituations.RBParStructureNew.Checked:=RSituationMarcheCopie.ParStructure;
          FSSituations.RBParStatistiqueNew.Checked:=RSituationMarcheCopie.ParStatistique;
          FSSituations.RBCummulerAttachementNew.Checked:=RSituationMarcheCopie.CummulerAttachement;
          FSSituations.EditListeNumAvisNew.Text:=RSituationMarcheCopie.ListeNumAvis;

          FSSituations.EditDesignationSituationNew.SetFocus;
     end;

      if((FSSituations.TableauListeSituation.Cells[2,FSSituations.TableauListeSituation.Row]<>'')
      and(FSSituations.TableauListeSituation.Cells[3,FSSituations.TableauListeSituation.Row]<>''))
      then
      begin
            if key in['s','S','-']then
            begin
            if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

                 FSSituations.AfficheActionListeSituation.Visible:=true;
                 FSSituations.AfficheActionListeSituation.Caption:='Supprimer ?';
                 FSSituations.BitActionSituation.Kind:=bkCancel;
                 FSSituations.BitActionSituation.Caption:='Supprimer';
                 FSSituations.BitActionSituation.SetFocus;
            end;

            if key in['m','M']then
            begin
                 if(FSSituations.EditNSituationMarche.Text<>'')
                 and(FSSituations.EditNSMarche.Text<>'')
                 and(FSSituations.EditDateAttachement.Text<>'  /  /    ')
                 and(strtointeger(FSSituations.TableauListeSituation.Cells[2,FSSituations.TableauListeSituation.Row])=strtointeger(FSSituations.EditNSituationMarche.Text))
                 and(strtointeger(FSSituations.TableauListeSituation.Cells[3,FSSituations.TableauListeSituation.Row])=strtointeger(FSSituations.EditNSMarche.Text))
                 and(FSSituations.TableauListeSituation.Cells[5,FSSituations.TableauListeSituation.Row]=FSSituations.EditDateAttachement.Text)
                 then
                 begin
                      FSSituations.AfficheModifierSituation.Visible:=true;
                      TypeProces:='Business';
                      FichierConserne:='FDomiciliation';
                      if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                      begin
                           AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
                      end;
                      ChDomiciliation:=Adresse;
                      assignfile(FDomiciliation,ChDomiciliation);
                      if FileExists(ChDomiciliation)then
                      Reset(FDomiciliation)
                      else Rewrite(FDomiciliation);
                      Seek(FDomiciliation,0);
                      FSSituations.EditDomiciliationPieceModifier.Items.Text:='Autres';
                      while not eof(FDomiciliation)do
                      begin
                           read(FDomiciliation,RDomiciliation);
                           FSSituations.EditDomiciliationPieceModifier.Items.Add(RDomiciliation.DesignationDomiciliation);
                      end;
                      CloseFile(FDomiciliation);          

                      RSituationMarcheCopie:=ChercherSituationMarche(FSSituations.EditNSMarche.Text,FSSituations.EditNSituationMarche.Text,'');
                      FSSituations.EditModePaiementModifier.Text:=RSituationMarcheCopie.ModePaiement;
                      FSSituations.EditNumDomiciliationPieceModifier.Text:=RSituationMarcheCopie.NumDomiciliation;
                      FSSituations.EditDomiciliationPieceModifier.Text:=RSituationMarcheCopie.Domiciliation;
                      FSSituations.EditNumPieceModifier.Text:=RSituationMarcheCopie.NumPiece;
                      FSSituations.EditListeNumAvisModifier.Text:=RSituationMarcheCopie.ListeNumAvis;

                      if(RSituationMarcheCopie.ValiditeSituation=true)
                      then FSSituations.RBValiditeSituationModifier.Checked:=true
                      else FSSituations.RBAnnulerModifier.Checked:=true;

                      FSSituations.BitModifierSituation.SetFocus;
                 end
                 else
                 begin
                      showmessage('La Situation sélectionnée, n''est pas celle affichée !');
                 end;
            end;
      end;
end;

procedure TFSSituations.PageDiagrammeShow(Sender: TObject);
var  R:integer;
begin
FSSituations.EditARowEvolutionMarche.Text:='';

FSSituations.Series1.Clear;
FSSituations.Series2.Clear;

FSSituations.Diagramme.Title.Text.Text:='Structures du '+FSSituations.EditTypeProjet.Text+' Arrêté au: '+FSSituations.EditDateAttachement.Text;

for R:=1 to FSSituations.TableauSituationStructureStatistique.RowCount-1 do
begin
     if(Longueur(FSSituations.TableauSituationStructureStatistique.Cells[0,R])=10)
     then
     begin
          FSSituations.Series1.Add(strtoreal(VerguletoNum(FSSituations.TableauSituationStructureStatistique.Cells[5,R])),FSSituations.TableauSituationStructureStatistique.Cells[2,R],clTeeColor);

          if(FSSituations.RBArticle.Checked=true)then
          FSSituations.Series2.Add(strtoreal(VerguletoNum(FSSituations.TableauSituationStructureStatistique.Cells[6,R])),FSSituations.TableauSituationStructureStatistique.Cells[2,R],clTeeColor);

          if(FSSituations.RBMarche.Checked=true)then
          FSSituations.Series2.Add(strtoreal(VerguletoNum(FSSituations.TableauSituationStructureStatistique.Cells[7,R])),FSSituations.TableauSituationStructureStatistique.Cells[2,R],clTeeColor);

     end;
end;
end;

procedure TFSSituations.RBMarcheClick(Sender: TObject);
var  R:integer;
begin
FSSituations.EditARowEvolutionMarche.Text:='';

FSSituations.Series1.Clear;
FSSituations.Series2.Clear;

FSSituations.Diagramme.Title.Text.Text:='Structures du Marché Arrêté au: '+FSSituations.EditDateAttachement.Text;

for R:=1 to FSSituations.TableauSituationStructureStatistique.RowCount-1 do
begin
     if(Longueur(FSSituations.TableauSituationStructureStatistique.Cells[0,R])=10)
     then
     begin
          FSSituations.Series1.Add(strtoreal(VerguletoNum(FSSituations.TableauSituationStructureStatistique.Cells[5,R])),FSSituations.TableauSituationStructureStatistique.Cells[2,R],clTeeColor);
          FSSituations.Series2.Add(strtoreal(VerguletoNum(FSSituations.TableauSituationStructureStatistique.Cells[7,R])),FSSituations.TableauSituationStructureStatistique.Cells[2,R],clTeeColor);
     end;
end;
end;

procedure TFSSituations.RBArticleClick(Sender: TObject);
var   R:integer;
begin
FSSituations.EditARowEvolutionMarche.Text:='';

FSSituations.Series1.Clear;
FSSituations.Series2.Clear;

FSSituations.Diagramme.Title.Text.Text:='Structures du Marché Arrêté au: '+FSSituations.EditDateAttachement.Text;

for R:=1 to FSSituations.TableauSituationStructureStatistique.RowCount-1 do
begin
     if(Longueur(FSSituations.TableauSituationStructureStatistique.Cells[0,R])=10)
     then
     begin
          FSSituations.Series1.Add(strtoreal(VerguletoNum(FSSituations.TableauSituationStructureStatistique.Cells[5,R])),FSSituations.TableauSituationStructureStatistique.Cells[2,R],clTeeColor);
          FSSituations.Series2.Add(strtoreal(VerguletoNum(FSSituations.TableauSituationStructureStatistique.Cells[6,R])),FSSituations.TableauSituationStructureStatistique.Cells[2,R],clTeeColor);
     end;
end;
end;

procedure TFSSituations.EditIntervalEvolutionKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key in['0'..'9'])then key:=#0;
end;

procedure TFSSituations.RBPasaPasClick(Sender: TObject);
begin
if(FSSituations.RBPasaPas.Checked=true)
then
begin
     FSSituations.EditIntervalEvolution.Text:='10';
     //FSSituations.EditARowEvolutionMarche.Text:='';
     FSSituations.TimerEvolutionMarche.Enabled:=false;
end
else
begin
     FSSituations.EditIntervalEvolution.Text:='100';
     //FSSituations.EditARowEvolutionMarche.Text:='';
     FSSituations.TimerEvolutionMarche.Enabled:=true;
end;
end;

procedure TFSSituations.BitEvolutionMarcheClick(Sender: TObject);
var  OK,OKStructure,OKAvenant,OKCode,OKCode1,OKCode2:boolean;
     i,R,C,V,j,l,m,NSMarche,NStructure,RowMax,ARow,Mois,MoisP:integer;
     Quantite:real;  DateMarche,DateBegin,DateEnd,DateAttachement:string[10];  NotCol:string;
begin

if(FSSituations.EditARowEvolutionMarche.Text='')then
begin
FSSituations.EditARowEvolutionMarche.Text:='3';
FSSituations.EditARowEvolutionMarchePrint.Text:='3';

NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
ProcAfficheEvolutionMarche(NSMarche);

{****************************** VALEURS MARCHE **********************************}
TypeProces:='Business'; FichierConcerne:='FDetail'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDetailMarche:=Adresse;
assignfile(FDetailMarche,ChDetailMarche);
if FileExists(ChDetailMarche)then
Reset(FDetailMarche)
else Rewrite(FDetailMarche);
Seek(FDetailMarche,0);
OK:=false;
FSSituations.EditValeurMarche.Text:='0';
while not eof(FDetailMarche)and(OK=false)do
begin
     Read(FDetailMarche,RDetailMarche);
     if(DTrie('M',RDetailMarche.CodeTrie)=FSSituations.EditNSMarche.Text)
     then
     begin
          R:=1;
          while R<=FSSituations.TableauEvolutionMarche.ColCount-1 do
          begin
               if(Longueur(FSSituations.TableauEvolutionMarche.Cells[R,0])=10)then
               begin
                    if(FSSituations.TableauEvolutionMarche.Cells[R,0]=completezerogauche(DTrie('M',RDetailMarche.CodeTrie),'5')+completezerogauche(DTrie('S',RDetailMarche.CodeTrie),'5'))then
                    begin
                         FSSituations.TableauEvolutionMarche.Cells[R,2]:=
                         floattostr(strtoreal(FSSituations.TableauEvolutionMarche.Cells[R,2])+(RDetailMarche.QuantiteGlobale*RDetailMarche.PrixUnitaire));
                         FSSituations.EditValeurMarche.Text:=floattostr(strtoreal(FSSituations.EditValeurMarche.Text)+(RDetailMarche.QuantiteGlobale*RDetailMarche.PrixUnitaire));
                    end;
               end;
          R:=R+1;
          end;
     end;
end;
FSSituations.EditValeurMarche.Text:=vergule(FSSituations.EditValeurMarche.Text,'2','C','')+' DA';
{****************************** ATTACHEMENTS **********************************}
TypeProces:='Business'; FichierConcerne:='FDetailAttachement'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDetailAttachement:=Adresse;
assignfile(FDetailAttachement,ChDetailAttachement);
if FileExists(ChDetailAttachement)then
Reset(FDetailAttachement)
else Rewrite(FDetailAttachement);
Seek(FDetailAttachement,0);
i:=3;
FSSituations.TableauEvolutionMarche.Rows[i].Text:='';
FSSituations.TableauEvolutionMarche.Cells[0,i]:=ChercherMarche(NSMarche).DateMarche;

while not eof(FDetailAttachement) do
begin
     Read(FDetailAttachement,RDetailAttachement);
     if(Strtointeger(DTrie('M',RDetailAttachement.CodeTrie))=NSMarche)
     then
     begin
          OK:=false;
          R:=4;
          while(R<=i)and(OK=false)do
          begin
               if(DateDetailAttachement(inttostr(NSMarche),inttostr(RDetailAttachement.NAttachement))=FSSituations.TableauEvolutionMarche.Cells[0,R])
               then OK:=true;
               R:=R+1;
          end;

          if(OK=false)then
          begin
               i:=i+1;
               FSSituations.TableauEvolutionMarche.Rows[i].Text:='';
               FSSituations.TableauEvolutionMarche.Cells[0,i]:=DateDetailAttachement(inttostr(NSMarche),inttostr(RDetailAttachement.NAttachement));
          end;
     end;
end;
if(i>0)then FSSituations.TableauEvolutionMarche.RowCount:=i+1
       else FSSituations.TableauEvolutionMarche.RowCount:=2;

{****************************** SITUATIONS **********************************}
for V:=4 to TableauEvolutionMarche.RowCount-1 do
begin
FSSituations.TableauDecompteSituation.RowCount:=2;
FSSituations.TableauDecompteSituation.Rows[1].Text:='';

NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
NStructure:=strtointeger(FSSituations.EditNStructureMarche.Text)*strtointeger(FSSituations.IndiceAfficheStructure.Text);

TypeProces:='Business'; FichierConcerne:='FDetailAttachement'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDetailAttachement:=Adresse;
assignfile(FDetailAttachement,ChDetailAttachement);
if FileExists(ChDetailAttachement)then
Reset(FDetailAttachement)
else Rewrite(FDetailAttachement);
Seek(FDetailAttachement,0);
i:=0;
R:=0;
Mois:=strtointeger(Firstlaters(FSSituations.TableauEvolutionMarche.Cells[0,V],10)[7]+
                   Firstlaters(FSSituations.TableauEvolutionMarche.Cells[0,V],10)[8]+
                   Firstlaters(FSSituations.TableauEvolutionMarche.Cells[0,V],10)[9]+
                   Firstlaters(FSSituations.TableauEvolutionMarche.Cells[0,V],10)[10]+
                   Firstlaters(FSSituations.TableauEvolutionMarche.Cells[0,V],10)[4]+
                   Firstlaters(FSSituations.TableauEvolutionMarche.Cells[0,V],10)[5]);

while not eof(FDetailAttachement) do
begin
     Read(FDetailAttachement,RDetailAttachement);
     if((strtodate(DateDetailAttachement(inttostr(NSMarche),inttostr(RDetailAttachement.NAttachement)))<=strtodate(Firstlaters(FSSituations.TableauEvolutionMarche.Cells[0,V],10)))
     and(Strtointeger(DTrie('M',RDetailAttachement.CodeTrie))=NSMarche))then
     begin
          OKStructure:=true;
          if(NStructure<>0)then
          begin
               if(Strtointeger(DTrie('S',RDetailAttachement.CodeTrie))=NStructure)
               then OKStructure:=true
               else OKStructure:=false;
          end
          else OKStructure:=true;

          OKAvenant:=false;
          if(FSSituations.EditNSMarche.Text<>'')then
          begin
               Quantite:=0;
               if(RDetailAttachement.QuantiteAttachementRealise>0)then
               begin
                    if(RDetailAttachement.QuantiteAttachementObjetMarche>0)
                    then
                    begin
                         OKAvenant:=true;
                         Quantite:=RDetailAttachement.QuantiteAttachementObjetMarche;
                    end
                    else OKAvenant:=false;
               end
               else
               begin
                    if(Strtointeger(DTrie('A',RDetailAttachement.CodeTrie))=0)
                    then OKAvenant:=true
                    else OKAvenant:=false;
               end;
          end;
     end
     else
     begin
          OKStructure:=false;
          OKAvenant:=false;
     end;

     if((OKStructure=true)and(OKAvenant=true))
     then
     begin
          DateAttachement:=DateDetailAttachement(inttostr(NSMarche),inttostr(RDetailAttachement.NAttachement));
          MoisP:=strtointeger(DateAttachement[7]+
                              DateAttachement[8]+
                              DateAttachement[9]+
                              DateAttachement[10]+
                              DateAttachement[4]+
                              DateAttachement[5]);

          OK:=false;
          i:=1;
          while(i<=R)and(OK=false)do
          begin
               if(RDetailAttachement.CodeTrie=FSSituations.TableauDecompteSituation.Cells[11,i])
               then
               begin
                    OK:=true;
                    if(MoisP<Mois)then
                    begin
                         FSSituations.TableauDecompteSituation.Cells[4,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[4,i])+Quantite);
                         FSSituations.TableauDecompteSituation.Cells[6,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[6,i])+Quantite);
                    end;
                    if(MoisP=Mois)then
                    begin
                         FSSituations.TableauDecompteSituation.Cells[5,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[5,i])+Quantite);
                         FSSituations.TableauDecompteSituation.Cells[6,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[6,i])+Quantite);
                    end;
               end;
          i:=i+1;
          end;

          if(OK=false)then
          begin
               R:=R+1;
               FSSituations.TableauDecompteSituation.Rows[R].Text:='';
               FSSituations.TableauDecompteSituation.Cells[0,R]:=RDetailAttachement.NArticle;
               FSSituations.TableauDecompteSituation.Cells[1,R]:=RDetailAttachement.DesignationArticle;
               FSSituations.TableauDecompteSituation.Cells[2,R]:=RDetailAttachement.UniteM;
               FSSituations.TableauDecompteSituation.Cells[3,R]:='0';
               if(MoisP<Mois)then
               begin
                    FSSituations.TableauDecompteSituation.Cells[4,R]:=floattostr(Quantite);
                    FSSituations.TableauDecompteSituation.Cells[5,R]:='0';
                    FSSituations.TableauDecompteSituation.Cells[6,R]:=floattostr(Quantite);

               end;
               if(MoisP=Mois)then
               begin
                    FSSituations.TableauDecompteSituation.Cells[4,R]:='0';
                    FSSituations.TableauDecompteSituation.Cells[5,R]:=floattostr(Quantite);
                    FSSituations.TableauDecompteSituation.Cells[6,R]:=floattostr(Quantite);
               end;

               FSSituations.TableauDecompteSituation.Cells[7,R]:=floattostr(RDetailAttachement.PrixUnitaire);
               FSSituations.TableauDecompteSituation.Cells[8,R]:='0';
               FSSituations.TableauDecompteSituation.Cells[9,R]:='0';
               FSSituations.TableauDecompteSituation.Cells[10,R]:='0';
               FSSituations.TableauDecompteSituation.Cells[11,R]:=RDetailAttachement.CodeTrie;
               FSSituations.TableauDecompteSituation.Cells[12,R]:='0';
          end;
     end;
end;

for i:=1 to R do
begin
     TypeProces:='Business'; FichierConcerne:='FDetail'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChDetailMarche:=Adresse;
     assignfile(FDetailMarche,ChDetailMarche);
     if FileExists(ChDetailMarche)then
     Reset(FDetailMarche)
     else Rewrite(FDetailMarche);
     Seek(FDetailMarche,0);
     OK:=false;
     while not eof(FDetailMarche)and(OK=false)do
     begin
          Read(FDetailMarche,RDetailMarche);
          if(RDetailMarche.CodeTrie=FSSituations.TableauDecompteSituation.Cells[11,i])
          then
          begin
               OK:=true;
               if(RDetailMarche.QuantiteGlobale>0)then
               FSSituations.TableauDecompteSituation.Cells[3,i]:=floattostr(RDetailMarche.QuantiteGlobale);
          end;
     end;
     if((OK=true)and(strtoreal(FSSituations.TableauDecompteSituation.Cells[3,i])>0))then
     begin
     FSSituations.TableauDecompteSituation.Cells[3,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[3,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[4,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[4,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[5,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[5,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[6,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[6,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[7,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[7,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[8,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[4,i])*strtoreal(FSSituations.TableauDecompteSituation.Cells[7,i])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[9,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[5,i])*strtoreal(FSSituations.TableauDecompteSituation.Cells[7,i])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[10,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[12,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[3,i])*strtoreal(FSSituations.TableauDecompteSituation.Cells[7,i])),'3','N','');
     end
     else
     begin
     FSSituations.TableauDecompteSituation.Cells[3,i]:='';
     FSSituations.TableauDecompteSituation.Cells[4,i]:='';
     FSSituations.TableauDecompteSituation.Cells[5,i]:='';
     FSSituations.TableauDecompteSituation.Cells[6,i]:='';
     FSSituations.TableauDecompteSituation.Cells[7,i]:='';
     FSSituations.TableauDecompteSituation.Cells[8,i]:='';
     FSSituations.TableauDecompteSituation.Cells[9,i]:='';
     FSSituations.TableauDecompteSituation.Cells[10,i]:='';
     FSSituations.TableauDecompteSituation.Cells[12,i]:='';
     end;
end;

if(R>0)then FSSituations.TableauDecompteSituation.RowCount:=R+1
       else FSSituations.TableauDecompteSituation.RowCount:=2;

if(R>0)then
begin
TrierSituation(10);
RowMax:=FSSituations.TableauDecompteSituation.RowCount-1;
FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+3;
FSSituations.TableauDecompteSituation.Rows[RowMax+1].Text:='';
FSSituations.TableauDecompteSituation.Cells[0,RowMax+1]:='';
FSSituations.TableauDecompteSituation.Cells[1,RowMax+1]:='Montant H.T. SITUATION';
FSSituations.TableauDecompteSituation.Cells[11,RowMax+1]:='ZZZ';
FSSituations.TableauDecompteSituation.Cells[8,RowMax+1]:='0,000';
FSSituations.TableauDecompteSituation.Cells[9,RowMax+1]:='0,000';
FSSituations.TableauDecompteSituation.Cells[10,RowMax+1]:='0,000';
FSSituations.TableauDecompteSituation.Cells[12,RowMax+1]:='0,000';
j:=0;
R:=1;
while(R<=RowMax)do
begin
     if((FSSituations.TableauDecompteSituation.Cells[11,R]<>'')
     and(FSSituations.TableauDecompteSituation.Cells[3,R]<>''))
     then
     begin
     FSSituations.TableauDecompteSituation.Cells[8,RowMax+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,RowMax+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[9,RowMax+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,RowMax+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[10,RowMax+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,RowMax+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[12,RowMax+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,RowMax+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
          OKCode:=false;
          OKCode1:=false;
          OKCode2:=false;
          i:=RowMax+1;
          while((i<=FSSituations.TableauDecompteSituation.RowCount-1)and((OKCode=false)or(OKCode1=false)or(OKCode2=false)))do
          begin
               if FSSituations.TableauDecompteSituation.Cells[11,i]=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],15)+'00.00.00.00'
               then
               begin
                    OKCode:=true;
                    FSSituations.TableauDecompteSituation.Cells[8,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[9,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[10,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[12,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
               end;
               if FSSituations.TableauDecompteSituation.Cells[11,i]=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],17)+'.ZZ'
               then
               begin
                    OKCode1:=true;
                    FSSituations.TableauDecompteSituation.Cells[8,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[9,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[10,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[12,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
               end;
               if FSSituations.TableauDecompteSituation.Cells[11,i]=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],20)+'.ZZ'
               then
               begin
                    OKCode2:=true;
                    FSSituations.TableauDecompteSituation.Cells[8,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[9,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[10,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[12,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
               end;
          i:=i+1;
          end;

          if(OKCode=false)then
          begin
               FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+(2*j);
               ARow:=FSSituations.TableauDecompteSituation.RowCount-2;
               FSSituations.TableauDecompteSituation.Rows[ARow].Text:='';

               RStructureMarche:=ChercherStructureMarche(strtointeger(DTrie('M',FSSituations.TableauDecompteSituation.Cells[11,R])),strtointeger(DTrie('S',FSSituations.TableauDecompteSituation.Cells[11,R])));
               FSSituations.TableauDecompteSituation.Cells[1,ARow]:=RStructureMarche.StructureMarche;
               FSSituations.TableauDecompteSituation.Cells[11,ARow]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],15)+'00.00.00.00';
               FSSituations.TableauDecompteSituation.Rows[ARow+1].Text:='';

               FSSituations.TableauDecompteSituation.Cells[1,ARow+1]:='Montant H.T  '+RStructureMarche.StructureMarche;
               FSSituations.TableauDecompteSituation.Cells[11,ARow+1]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],15)+'Z';
               FSSituations.TableauDecompteSituation.Cells[8,ARow+1]:=Vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'3','N','');         
               FSSituations.TableauDecompteSituation.Cells[9,ARow+1]:=Vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[10,ARow+1]:=Vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[12,ARow+1]:=Vergule(FSSituations.TableauDecompteSituation.Cells[12,R],'3','N','');
               j:=1;
          end;
          if(OKCode1=false)then
          begin
               FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+j;
               ARow:=FSSituations.TableauDecompteSituation.RowCount-1;
               FSSituations.TableauDecompteSituation.Rows[ARow].Text:='';

               FSSituations.TableauDecompteSituation.Cells[1,ARow]:='Total: '+LastLaters(FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],17),2);
               FSSituations.TableauDecompteSituation.Cells[11,ARow]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],17)+'.ZZ';
               FSSituations.TableauDecompteSituation.Cells[8,ARow]:=Vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[9,ARow]:=Vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[10,ARow]:=Vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[12,ARow]:=Vergule(FSSituations.TableauDecompteSituation.Cells[12,R],'3','N','');
               j:=1;
          end;
          if(OKCode2=false)then
          begin
               FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+j;
               ARow:=FSSituations.TableauDecompteSituation.RowCount-1;
               FSSituations.TableauDecompteSituation.Rows[ARow].Text:='';

               FSSituations.TableauDecompteSituation.Cells[1,ARow]:='Sous Total: '+LastLaters(FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],20),5);
               FSSituations.TableauDecompteSituation.Cells[11,ARow]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],20)+'.ZZ';
               FSSituations.TableauDecompteSituation.Cells[8,ARow]:=Vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[9,ARow]:=Vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[10,ARow]:=Vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[12,ARow]:=Vergule(FSSituations.TableauDecompteSituation.Cells[12,R],'3','N','');
               j:=1;
          end;
     end;

R:=R+1;
end;
TrierSituation(11);

{****************************** REMPLISSAGE EVOLUTION **********************************}
for ARow:=1 to FSSituations.TableauDecompteSituation.RowCount-1 do
begin
     if(Longueur(FSSituations.TableauDecompteSituation.Cells[11,ARow])>15)
     then
     begin
          if(FSSituations.TableauDecompteSituation.Cells[11,ARow][16]='Z')
          then
          begin
               C:=1;
               while(C<=FSSituations.TableauEvolutionMarche.ColCount-1)do
               begin
                    if(FSSituations.TableauEvolutionMarche.Cells[C,0]=Firstlaters(FSSituations.TableauDecompteSituation.Cells[11,ARow],10))
                    then
                    begin
                         FSSituations.TableauEvolutionMarche.Cells[C,V]:=floattostr(strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,V])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,ARow]));
                    end;
               C:=C+1;
               end;
          end;
     end;
end;
{*****************************FIN REMPLISSAGE EVOLUTION **********************************}
end;
end;
{****************************** FIN SITUATIONS **********************************}
end;

for R:=1 to FSSituations.TableauDecompteSituation.RowCount-1 do
begin
     FSSituations.TableauDecompteSituation.Cells[3,R]:=Vergule(FSSituations.TableauDecompteSituation.Cells[3,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[4,R]:=Vergule(FSSituations.TableauDecompteSituation.Cells[4,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[5,R]:=Vergule(FSSituations.TableauDecompteSituation.Cells[5,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[6,R]:=Vergule(FSSituations.TableauDecompteSituation.Cells[6,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[7,R]:=Vergule(FSSituations.TableauDecompteSituation.Cells[7,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[8,R]:=Vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[9,R]:=Vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[10,R]:=Vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[12,R]:=Vergule(FSSituations.TableauDecompteSituation.Cells[12,R],'3','C','');
end;

if(FSSituations.RBParStructure.Checked=true)then
begin
FSSituations.AfficheDiagrammeStructures.Visible:=true;

FSSituations.TableauDiagrammeStructures.Cols[0].Text:='N°';
FSSituations.TableauDiagrammeStructures.Cols[1].Text:='Structures du Marché';
FSSituations.TableauDiagrammeStructures.RowCount:=2;
FSSituations.TableauDiagrammeStructures.Rows[1].Text:='';

          TypeProces:='Business'; FichierConcerne:='FStructureMarche';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChStructureMarche:=Adresse;
          assignfile(FStructureMarche,ChStructureMarche);
          if FileExists(ChStructureMarche)then
          Reset(FStructureMarche)
          else Rewrite(FStructureMarche);
          Seek(FStructureMarche,0);
          i:=0;
          while not eof(FStructureMarche) do
          begin
               Read(FStructureMarche,RStructureMarche);
               if(RStructureMarche.NSMarche=strtointeger(FSSituations.EditNSMarche.Text))then
               begin
                    i:=i+1;
                    FSSituations.TableauDiagrammeStructures.Cells[0,i]:=Completezerogauche(inttostr(RStructureMarche.NSMarche),'5')+Completezerogauche(inttostr(RStructureMarche.NStructureMarche),'5');
                    FSSituations.TableauDiagrammeStructures.Cells[1,i]:=RStructureMarche.StructureMarche;
               end;
          end;
          if(i>0)then FSSituations.TableauDiagrammeStructures.RowCount:=i+1
                 else FSSituations.TableauDiagrammeStructures.RowCount:=2;

          AjusterColWidth(FSSituations.TableauDiagrammeStructures,'','');

FSSituations.TableauDiagrammeStructures.SetFocus;
end
else FSSituations.TimerEvolutionMarche.Enabled:=true;

NotCol:='11-13';
for C:=0 to FSSituations.TableauDecompteSituation.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauDecompteSituation.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauDecompteSituation,'',NotCol);

NotCol:='0;1;8';         
for C:=0 to FSSituations.TableauSituationStructureStatistique.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauSituationStructureStatistique.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauSituationStructureStatistique,'',NotCol);

NotCol:='';
for C:=0 to FSSituations.TableauAvance.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauAvance.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauAvance,'',NotCol);

NotCol:='0-4';
for C:=0 to FSSituations.TableauPrincipal.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauPrincipal.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauPrincipal,'',NotCol);


l:=FSSituations.TableauEvolutionMarche.RowCount-1;
for R:=4 to FSSituations.TableauEvolutionMarche.RowCount-1 do
begin
     DateBegin:=FSSituations.TableauEvolutionMarche.Cells[0,R-1];
     DateBegin:=Datetostr(strtodate(DateBegin)+FSSituations.IntervallePeriodeAvancement.Position);
     DateEnd:=FSSituations.TableauEvolutionMarche.Cells[0,R];
     if(strtodate(DateBegin)<strtodate(DateEnd))then
     while(strtodate(DateBegin)<strtodate(DateEnd))do
     begin
          l:=l+1;
          FSSituations.TableauEvolutionMarche.Rows[l].Text:='';
          FSSituations.TableauEvolutionMarche.Cells[0,l]:=DateBegin;
          DateBegin:=Datetostr(strtodate(DateBegin)+FSSituations.IntervallePeriodeAvancement.Position);
     end;
end;
FSSituations.TableauEvolutionMarche.RowCount:=l+1;


TrierTableauARowSpecial(FSSituations.TableauEvolutionMarche,3,FSSituations.TableauEvolutionMarche.RowCount-1,0,'0','Date','+');

for C:=1 to FSSituations.TableauEvolutionMarche.ColCount-1 do
begin
     R:=3;
     While(R<=FSSituations.TableauEvolutionMarche.RowCount-1)do
     begin
          if(strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,R])>0)or(strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,R])=0)then
          begin
               l:=R+1;
               j:=0;
               while(FSSituations.TableauEvolutionMarche.Cells[C,l]='')and(l<=FSSituations.TableauEvolutionMarche.RowCount-1)do
               begin
                    l:=l+1;
                    j:=j+1;
               end;
               if(strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,l])>0)then
               begin
                    m:=0;
                    for i:=R+1 to l-1 do
                    begin
                         m:=m+1;
                         if(strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,l])>0)then
                         FSSituations.TableauEvolutionMarche.Cells[C,i]:=floattostr(strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,R])+((strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,l])-strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,R]))/(j+1))*m);
                   end;
               R:=l-1;
               end;
          end;
     R:=R+1;
     end;
end;


for R:=2 to FSSituations.TableauEvolutionMarche.RowCount-1 do
for C:=1 to FSSituations.TableauEvolutionMarche.ColCount-1 do FSSituations.TableauEvolutionMarche.Cells[C,R]:=Vergule(FSSituations.TableauEvolutionMarche.Cells[C,R],'2','C','');
AjusterColWidth(FSSituations.TableauEvolutionMarche,'','');
end;

procedure TFSSituations.BitBtn56Click(Sender: TObject);
begin
FSSituations.AfficheDiagrammeStructures.Visible:=false;
end;

procedure TFSSituations.TableauDiagrammeStructuresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  R,C:integer; OK:boolean;
begin

if key in[VK_RETURN]then
begin
FSSituations.Series1.Clear;
FSSituations.Series2.Clear;

FSSituations.Diagramme.Title.Text.Text:='Evolution '+FSSituations.TableauDiagrammeStructures.Cells[1,FSSituations.TableauDiagrammeStructures.Row]+' Arrêté au: '+FSSituations.TableauEvolutionMarche.Cells[0,FSSituations.TableauEvolutionMarche.RowCount-1];
C:=1;
OK:=false;
while(C<=FSSituations.TableauEvolutionMarche.ColCount-1)and(OK=false)do
begin
     if(FSSituations.TableauEvolutionMarche.Cells[C,0]=FSSituations.TableauDiagrammeStructures.Cells[0,FSSituations.TableauDiagrammeStructures.Row])then
     begin
          OK:=true;
          FSSituations.EditNStructurePrint.Text:=FSSituations.TableauDiagrammeStructures.Cells[0,FSSituations.TableauDiagrammeStructures.Row];
          FSSituations.EditStructurePrint.Text:=FSSituations.TableauDiagrammeStructures.Cells[1,FSSituations.TableauDiagrammeStructures.Row];

          for R:=3 to FSSituations.TableauEvolutionMarche.RowCount-1 do
          begin
               FSSituations.Series1.Add(strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,R]),FSSituations.TableauEvolutionMarche.Cells[0,R],clTeeColor);
               FSSituations.Series2.Add(strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,2]),FSSituations.TableauEvolutionMarche.Cells[0,R],clTeeColor);
          end;
     end;
C:=C+1;
end;
FSSituations.AfficheDiagrammeStructures.Visible:=false;
end;
end;

procedure TFSSituations.BitBtn90Click(Sender: TObject);
var   R,C,NSMarche:integer; OK:boolean;
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MI',true)then exit;

NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
RMarche:=ChercherMarche(NSMarche);
OpenFParc(RParc);
PrintDiagrammeDouble.EtatEntreprise.Caption:=RParc.Text1;
PrintDiagrammeDouble.EtatMarche.Caption:=RMarche.Marche;
PrintDiagrammeDouble.Series1.Clear;
PrintDiagrammeDouble.Series2.Clear;

if(FSSituations.RBParStructure.Checked=true)then
begin
     PrintDiagrammeDouble.EtatTitre.Caption:='Avancement graphique par Structure';
     PrintDiagrammeDouble.Diagramme.Chart.Title.Text.Text:='Evolution '+FSSituations.EditStructurePrint.Text+' Arrêté au: '+FSSituations.TableauEvolutionMarche.Cells[0,FSSituations.TableauEvolutionMarche.RowCount-1];
     C:=1;
     OK:=false;
     while(C<=FSSituations.TableauEvolutionMarche.ColCount-1)and(OK=false)do
     begin
          if(FSSituations.TableauEvolutionMarche.Cells[C,0]=FSSituations.EditNStructurePrint.Text)then
          begin
               OK:=true;

               for R:=3 to FSSituations.TableauEvolutionMarche.RowCount-1 do
               begin
                    PrintDiagrammeDouble.Series1.Add(strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,R]),FSSituations.TableauEvolutionMarche.Cells[0,R],clTeeColor);
                    PrintDiagrammeDouble.Series2.Add(strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,2]),FSSituations.TableauEvolutionMarche.Cells[0,R],clTeeColor);
               end;
          end;
     C:=C+1;
     end;
end
else
begin
     PrintDiagrammeDouble.EtatTitre.Caption:='Avancement graphique Global';

     R:=strtointeger(FSSituations.EditARowEvolutionMarchePrint.Text);
     PrintDiagrammeDouble.Diagramme.Chart.Title.Text.Text:='Structures du Marché Arrêté au: '+FSSituations.TableauEvolutionMarche.Cells[0,R];
     for C:=1 to FSSituations.TableauEvolutionMarche.ColCount-1 do
     begin
          PrintDiagrammeDouble.Series1.Add(strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,R]),FSSituations.TableauEvolutionMarche.Cells[C,1],clTeeColor);
          PrintDiagrammeDouble.Series2.Add(strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,2]),FSSituations.TableauEvolutionMarche.Cells[C,1],clTeeColor);
     end;
end;

PrintDiagrammeDouble.Preview;
end;

procedure TFSSituations.TimerEvolutionMarcheTimer(Sender: TObject);
var  R,C,i:integer;
begin
FSSituations.TimerEvolutionMarche.Interval:=strtointeger(FSSituations.EditIntervalEvolution.Text);
FSSituations.Series1.Clear;
FSSituations.Series2.Clear;
R:=strtointeger(FSSituations.EditARowEvolutionMarche.Text);
FSSituations.Diagramme.Title.Text.Text:='Structures du Marché Arrêté au: '+FSSituations.TableauEvolutionMarche.Cells[0,R];
for C:=1 to FSSituations.TableauEvolutionMarche.ColCount-1 do
begin
     FSSituations.Series1.Add(strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,R]),FSSituations.TableauEvolutionMarche.Cells[C,1],clTeeColor);
     FSSituations.Series2.Add(strtoreal(FSSituations.TableauEvolutionMarche.Cells[C,2]),FSSituations.TableauEvolutionMarche.Cells[C,1],clTeeColor);
end;

FSSituations.EditARowEvolutionMarchePrint.Text:=FSSituations.EditARowEvolutionMarche.Text;

if(strtointeger(FSSituations.EditARowEvolutionMarche.Text)<FSSituations.TableauEvolutionMarche.RowCount-1)
then
begin
     FSSituations.EditARowEvolutionMarche.Text:=inttostr(strtointeger(FSSituations.EditARowEvolutionMarche.Text)+1);
end
else
begin
     FSSituations.EditARowEvolutionMarche.Text:='3';
     FSSituations.TimerEvolutionMarche.Enabled:=false;
end;

if(FSSituations.RBPasaPas.Checked=true)then FSSituations.TimerEvolutionMarche.Enabled:=false;
end;

Procedure ProcAfficheEvolutionMarche(NSMarche:integer);
var  i:integer;
begin
FSSituations.TableauEvolutionMarche.ColCount:=2;
FSSituations.TableauEvolutionMarche.RowCount:=3;
FSSituations.TableauEvolutionMarche.Rows[0].Text:='Code Str.';
FSSituations.TableauEvolutionMarche.Rows[1].Text:='Str;';
FSSituations.TableauEvolutionMarche.Rows[2].Text:='M.Marché';


          TypeProces:='Business'; FichierConcerne:='FStructureMarche';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChStructureMarche:=Adresse;
          assignfile(FStructureMarche,ChStructureMarche);
          if FileExists(ChStructureMarche)then
          Reset(FStructureMarche)
          else Rewrite(FStructureMarche);
          Seek(FStructureMarche,0);
          i:=0;
          while not eof(FStructureMarche) do
          begin
               Read(FStructureMarche,RStructureMarche);
               if(RStructureMarche.NSMarche=NSMarche)then
               begin
                    i:=i+1;
                    FSSituations.TableauEvolutionMarche.Cols[i].Text:='';
                    FSSituations.TableauEvolutionMarche.Cells[i,0]:=Completezerogauche(inttostr(RStructureMarche.NSMarche),'5')+Completezerogauche(inttostr(RStructureMarche.NStructureMarche),'5');
                    FSSituations.TableauEvolutionMarche.Cells[i,1]:=RStructureMarche.StructureMarche;
               end;
          end;
          if(i>0)then FSSituations.TableauEvolutionMarche.ColCount:=i+1
                 else FSSituations.TableauEvolutionMarche.ColCount:=2;
end;


procedure TFSSituations.BitBtn52Click(Sender: TObject);
begin
FSSituations.TableauListeSituation.SetFocus;
FSSituations.AfficheActionListeSituation.Visible:=false;
end;

procedure TFSSituations.BitActionSituationClick(Sender: TObject);
var   Confirme:boolean;
begin
DeleteFSituationMarche(FSSituations.TableauListeSituation.Cells[3,FSSituations.TableauListeSituation.Row],FSSituations.TableauListeSituation.Cells[2,FSSituations.TableauListeSituation.Row],FSSituations.TableauListeSituation.Cells[5,FSSituations.TableauListeSituation.Row],Confirme);
ProcAfficheListeSituation(FSSituations.TableauListeSituation,FSSituations.EditNSMarche.Text);
FSSituations.TableauListeSituation.SetFocus;
FSSituations.AfficheActionListeSituation.Visible:=false;
end;

procedure TFSSituations.IntervallePeriodeAvancementClick(Sender: TObject;
  Button: TUDBtnType);
var    NSMarche:integer;
begin
FSSituations.EditARowEvolutionMarche.Text:='';
NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
ProcAfficheEvolutionMarche(NSMarche);
end;

procedure TFSSituations.BitBtn2Click(Sender: TObject);
var  i:integer;
begin
FSSituations.AffichePrintParStructure.Visible:=true;
FSSituations.AfficheTitreStructure.Caption:='Attachement';

FSSituations.TableauDecompteStructures.Cols[0].Text:='N°';
FSSituations.TableauDecompteStructures.Cols[1].Text:='Structures du Marché';
FSSituations.TableauDecompteStructures.RowCount:=2;
FSSituations.TableauDecompteStructures.Rows[1].Text:='';

TypeProces:='Business'; FichierConcerne:='FStructureMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChStructureMarche:=Adresse;
assignfile(FStructureMarche,ChStructureMarche);
if FileExists(ChStructureMarche)then
Reset(FStructureMarche)
else Rewrite(FStructureMarche);
Seek(FStructureMarche,0);
i:=0;
while not eof(FStructureMarche) do
begin
     Read(FStructureMarche,RStructureMarche);
     if(RStructureMarche.NSMarche=strtointeger(FSSituations.EditNSMarche.Text))then
     begin
          i:=i+1;
          FSSituations.TableauDecompteStructures.Cells[0,i]:=inttostr(RStructureMarche.NStructureMarche);
          FSSituations.TableauDecompteStructures.Cells[1,i]:=RStructureMarche.StructureMarche;
     end;
end;
if(i>0)then
begin
     FSSituations.TableauDecompteStructures.RowCount:=i+1;
     FSSituations.TableauDecompteStructures.SetFocus;
     FSSituations.RBSelectDecompte.Checked:=false;
     FSSituations.RBSelectDecompte.Caption:='Par Structure';

end
else
begin

end;

end;

procedure TFSSituations.TabSheet1Show(Sender: TObject);
var  NSMarche,NStructureMarche,NStatistique,NAttachement:integer;
begin
     if(FSSituations.EditNAttachementMarche.Text<>'')then
     begin
          NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
          NStructureMarche:=0;
          NStatistique:=0;
          NAttachement:=strtointeger(FSSituations.EditNAttachementMarche.Text)*strtointeger(FSSituations.IndiceAfficheAttachement.Text);
          ProcAfficheDetailAttachement(FSSituations.TableauDetailAttachement,NSMarche,NStructureMarche,NStatistique,NAttachement);
     end;
end;

procedure TFSSituations.BitBtn64Click(Sender: TObject);
begin
FSSituations.AfficheOptionPrintApprovisionnementSituation.Visible:=true;
FSSituations.RBTravauxPrecedent.Checked:=true;
FSSituations.RBTravauxPrecedent.SetFocus;
end;

procedure TFSSituations.BitBtn26Click(Sender: TObject);
begin
FSSituations.AfficheOptionPrintApprovisionnementSituation.Visible:=false;
end;

procedure TFSSituations.BitBtn67Click(Sender: TObject);
var  R,k,l,Indice:integer; NumAvanant:string[5];
      CProduit:string[30]; OKProd:boolean;  NSMarche,NStructure,NStatistique,NAvenant:string;
begin
FSApprovisionnement.EditNSMarche.Text:=FSSituations.EditNSMarche.Text;
FSApprovisionnement.EditMarche.Text:=FSSituations.EditMarche.Text;
FSApprovisionnement.EditNStructure.Text:=FSSituations.EditNStructureMarche.Text;
FSApprovisionnement.EditStructure.Text:=FSSituations.EditStructureMarche.Text;
FSApprovisionnement.EditNAvenant.Text:=FSSituations.EditSituationNAvenant.Text;
FSApprovisionnement.EditAvenant.Text:=FSSituations.EditSituationAvenant.Text;

if(FSSituations.RBTravauxPrecedent.Checked=true)then Indice:=4;
if(FSSituations.RBTravauxMois.Checked=true)then Indice:=5;
if(FSSituations.RBTravauxCumule.Checked=true)then Indice:=6;

NSMarche:=FSSituations.EditNSMarche.Text;
NStructure:=FSSituations.EditNStructureMarche.Text;
NStatistique:=FSSituations.EditNStatistiqueMarche.Text;
NAvenant:='';

R:=1;
k:=0;
while(R<=FSSituations.TableauDecompteSituation.RowCount-1)do
begin
     if((FSSituations.TableauDecompteSituation.Cells[Indice,R]<>'')
     and(FSSituations.TableauDecompteSituation.Cells[13,R]<>''))
     then
     begin
          CProduit:='';
          CProduit:=ExtentionFormuleCodeProduit(NSMarche,NStructure,NStatistique)+
                    FSSituations.TableauDecompteSituation.Cells[13,R];
          OKProd:=false;
          if(k>0)then
          begin
               l:=0;
               while(l<=K-1)and(OKProd=false)do
               begin
                    if(TApprovisionnement[l].CodeStock=CProduit)then
                    begin
                         OKProd:=true;
                         TApprovisionnement[l].Quantite:=TApprovisionnement[l].Quantite+strtoreal(FSSituations.TableauDecompteSituation.Cells[Indice,R])
                    end;
               l:=l+1;
               end;
          end;

          if(OKProd=false)then
          begin
          k:=k+1;
          setlength(TApprovisionnement,k);
          TApprovisionnement[k-1].CodeStock:=CProduit;
          TApprovisionnement[k-1].Quantite:=strtoreal(FSSituations.TableauDecompteSituation.Cells[Indice,R]);
          end;
     end;
R:=R+1;
end;

CalculeApprovisionnement(TApprovisionnement,k);

FSSituations.AfficheOptionPrintApprovisionnementSituation.Visible:=false;
end;

procedure TFSSituations.BitBtn5Click(Sender: TObject);
begin
     if(FSSituations.RBSituation.Checked=true)then TableauToExcel(FSSituations.TableauPrincipal,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,FSSituations.RBSituation.caption+' N° '+FSSituations.EditNSituationMarche.Text,FSSituations.EditMarche.Text,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
     if(FSSituations.RBDetail.Checked=true)then TableauToExcel(FSSituations.TableauSituationStructureStatistique,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,FSSituations.RBDetail.caption+', Situation N° '+FSSituations.EditNSituationMarche.Text,FSSituations.EditMarche.Text,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
     if(FSSituations.RBDecompte.Checked=true)then TableauToExcel(FSSituations.TableauDecompteSituation,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,FSSituations.RBDecompte.caption+', Situation N° '+FSSituations.EditNSituationMarche.Text,FSSituations.EditMarche.Text,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
     if(FSSituations.RBAttachement.Checked=true)then TableauToExcel(FSSituations.TableauDetailAttachement,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,FSSituations.RBAttachement.caption+', Situation N° '+FSSituations.EditNSituationMarche.Text,FSSituations.EditMarche.Text,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

procedure TFSSituations.Panel3Click(Sender: TObject);
begin
     if(FSSituations.AffcicheTransfertExecl.Height=40)
     then FSSituations.AffcicheTransfertExecl.Height:=185
     else FSSituations.AffcicheTransfertExecl.Height:=40;
end;

procedure TFSSituations.BitBtn3Click(Sender: TObject);
begin
     TableauToExcel(FSSituations.TableauDecompteSituation,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,'Décompte Situation N° '+FSSituations.EditNSituationMarche.Text+' du '+FSSituations.EditDateAttachement.Text,FSSituations.EditMarche.Text,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
     FSSituations.AffcicheTransfertExecl.Height:=40;
end;

procedure TFSSituations.BitBtn4Click(Sender: TObject);
begin
     TableauToExcel(FSSituations.TableauSituationStructureStatistique,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,'Structure Situation N° '+FSSituations.EditNSituationMarche.Text+' du '+FSSituations.EditDateAttachement.Text,FSSituations.EditMarche.Text,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
     FSSituations.AffcicheTransfertExecl.Height:=40;
end;

procedure TFSSituations.BitBtn6Click(Sender: TObject);
begin
     TableauToExcel(FSSituations.TableauPrincipal,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,'Principale Situation N° '+FSSituations.EditNSituationMarche.Text+' du '+FSSituations.EditDateAttachement.Text,FSSituations.EditMarche.Text,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
     FSSituations.AffcicheTransfertExecl.Height:=40;
end;

procedure TFSSituations.PagePricipaleShow(Sender: TObject);
begin
     FSSituations.AffcicheTransfertExecl.Height:=40;
end;

procedure TFSSituations.BitBtn7Click(Sender: TObject);
var  i:integer;
begin
FSSituations.AffichePrintParStructure.Visible:=true;
FSSituations.AfficheTitreStructure.Caption:='AttachementExcel';

FSSituations.TableauDecompteStructures.Cols[0].Text:='N°';
FSSituations.TableauDecompteStructures.Cols[1].Text:='Structures du Marché';
FSSituations.TableauDecompteStructures.RowCount:=2;
FSSituations.TableauDecompteStructures.Rows[1].Text:='';

TypeProces:='Business'; FichierConcerne:='FStructureMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChStructureMarche:=Adresse;
assignfile(FStructureMarche,ChStructureMarche);
if FileExists(ChStructureMarche)then
Reset(FStructureMarche)
else Rewrite(FStructureMarche);
Seek(FStructureMarche,0);
i:=0;
while not eof(FStructureMarche) do
begin
     Read(FStructureMarche,RStructureMarche);
     if(RStructureMarche.NSMarche=strtointeger(FSSituations.EditNSMarche.Text))then
     begin
          i:=i+1;
          FSSituations.TableauDecompteStructures.Cells[0,i]:=inttostr(RStructureMarche.NStructureMarche);
          FSSituations.TableauDecompteStructures.Cells[1,i]:=RStructureMarche.StructureMarche;
     end;
end;
if(i>0)then
begin
     FSSituations.TableauDecompteStructures.RowCount:=i+1;
     FSSituations.TableauDecompteStructures.SetFocus;
     FSSituations.RBSelectDecompte.Checked:=false;
     FSSituations.RBSelectDecompte.Caption:='Par Structure';

end
else
begin

end;

FSSituations.AffcicheTransfertExecl.Height:=40;
end;

procedure TFSSituations.TableauPrincipalClick(Sender: TObject);
begin
     FSSituations.AffcicheTransfertExecl.Height:=40;
     FSSituations.AfficheOperationSituation.Height:=33;
end;

procedure TFSSituations.PageControl1Change(Sender: TObject);
begin
     FSSituations.AffcicheTransfertExecl.Height:=40;
end;

procedure TFSSituations.TableauAnalyseMontantMarcheClick(Sender: TObject);
begin
     FSSituations.AffcicheTransfertExecl.Height:=40;
end;

procedure TFSSituations.TableauSelectionClick(Sender: TObject);
var  R:integer;
begin
     if(FSSituations.TableauSelection.Cells[0,0]='Mch')then
     begin
           for R:=1 to FSSituations.TableauSelection.RowCount-1 do
           begin
                if(R=FSSituations.TableauSelection.Row)then
                begin
                     FSMarche.EditMarcheControle.Lines.Text:=FSSituations.TableauSelection.Cells[4,R];
                     FSSituations.TableauSelection.RowHeights[R]:=FSMarche.EditMarcheControle.Lines.Capacity*20;
                end
                else FSSituations.TableauSelection.RowHeights[R]:=20;
           end;
     end;
end;

procedure TFSSituations.TableauSelectionKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSSituations.BitModifierSituationClick(Sender: TObject);
var  i,iSelect:integer;   OKSituation:boolean;
begin
      TypeProces:='Business'; FichierConcerne:='FSituationMarche';
      if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
      begin
           //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
      end;
      ChSituationMarche:=Adresse;
      assignfile(FSituationMarche,ChSituationMarche);
      if FileExists(ChSituationMarche)then
      Reset(FSituationMarche)
      else Rewrite(FSituationMarche);
      Seek(FSituationMarche,0);
      i:=0;
      iSelect:=i;
      OKSituation:=false;
      while not eof(FSituationMarche)and(OKSituation=false)do
      begin
           Read(FSituationMarche,RSituationMarche);
           if(RSituationMarche.NSMarche=strtointeger(FSSituations.EditNSMarche.Text))
           and(RSituationMarche.NSituationMarche=strtointeger(FSSituations.EditNSituationMarche.Text))
           and(RSituationMarche.DateSituationMarche=FSSituations.EditDateAttachement.Text)
           then
           begin
                OKSituation:=true;
                iSelect:=i;
           end;
      i:=i+1;
      end;

      if(OKSituation=true)then
      begin
            RSituationMarche.ValiditeSituation:=FSSituations.RBValiditeSituationModifier.Checked;
            RSituationMarche.ModePaiement:=FSSituations.EditModePaiementModifier.Text;
            RSituationMarche.NumDomiciliation:=FSSituations.EditNumDomiciliationPieceModifier.Text;
            RSituationMarche.Domiciliation:=FSSituations.EditDomiciliationPieceModifier.Text;
            RSituationMarche.NumPiece:=FSSituations.EditNumPieceModifier.Text;
            //RSituationMarche.NSituationMarche:=NSituation;
            //RSituationMarche.NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
            //RSituationMarche.NAttachement:=FSSituations.EditNAttachementMarche.Text;
            RSituationMarche.DateSituationMarche:=FSSituations.EditDateAttachement.Text;
            if(FSSituations.TableauPrincipal.RowCount>3)then
            begin
                 RSituationMarche.MontantSituationTTCBrut:=strtoreal(FSSituations.TableauPrincipal.Cells[6,FSSituations.TableauPrincipal.RowCount-3]);
                 RSituationMarche.RetenueGarantie:=strtoreal(FSSituations.TableauPrincipal.Cells[4,FSSituations.TableauPrincipal.RowCount-2])*100;
                 RSituationMarche.MontantRetenueGarantie:=strtoreal(FSSituations.TableauPrincipal.Cells[6,FSSituations.TableauPrincipal.RowCount-2]);
                 RSituationMarche.MontantSituationTTCNet:=strtoreal(FSSituations.TableauPrincipal.Cells[6,FSSituations.TableauPrincipal.RowCount-1]);
            end;

            
            if(FSSituations.RBChargerMontantAvisPourSituation.Checked=true)then
            begin
                 RSituationMarche.MontantSituationTTCBrut:=strtoreal(FSSituations.EditMontantAvisModifier.Text);
                 RSituationMarche.MontantSituationTTCNet:=RSituationMarche.MontantSituationTTCBrut-RSituationMarche.MontantRetenueGarantie;
            end;

            //RSituationMarche.ParStructure:=strtobool(EditOptionSituationParStructure.Text);
            //RSituationMarche.ParStatistique:=strtobool(EditOptionSituationParStatistique.Text);
            //RSituationMarche.CummulerAttachement:=strtobool(FSSituations.EditCummulerAttachement.Text);
            RSituationMarche.ListeNumAvis:=FSSituations.EditListeNumAvisModifier.Text;
            Seek(FSituationMarche,iSelect);
            write(FSituationMarche,RSituationMarche);
      end;
      CloseFile(FSituationMarche);
      ProcAfficheListeSituation(FSSituations.TableauListeSituation,FSSituations.EditNSMarche.Text);
      FSSituations.AfficheModifierSituation.Visible:=false;
end;

procedure TFSSituations.BitBtn9Click(Sender: TObject);
begin
     FSSituations.AfficheModifierSituation.Visible:=false;
end;

procedure TFSSituations.FormShow(Sender: TObject);
begin
     ActiverNomForm(1,(Sender as TComponent).Name);
     FSSituations.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Fiche Saisie Situations';
end;

Procedure DetailSituationMarche(TableauDetailSituationMarche:TStringGrid;  DateSituationBegin,DateSituationEnd:string; NSMarche,NStructure,NStatistique,NAvenant:integer; ParStructure,ParStatistique,CummuleAttachement:boolean);
var  i,R:integer;   OK,OKStructure,OKStatistique,OKDecision,OKPalceMois:boolean;  DateAttachement,NotCol:string;
     QuantiteRealise,QuantiteObjetMarche,QuantiteObjetAvenant:real;
begin
     TableauDetailSituationMarche.ColCount:=14;
     TableauDetailSituationMarche.Cols[0].Text:='N°Article';
     TableauDetailSituationMarche.Cols[1].Text:='Désignation';
     TableauDetailSituationMarche.Cols[2].Text:='UM';
     TableauDetailSituationMarche.Cols[3].Text:='QtePrecRéalisé';
     TableauDetailSituationMarche.Cols[4].Text:='QteMoisRéalisé';
     TableauDetailSituationMarche.Cols[5].Text:='QtePrecObjetMarché';
     TableauDetailSituationMarche.Cols[6].Text:='QteMoisObjetMarché';
     TableauDetailSituationMarche.Cols[7].Text:='QtePrecObjetAvenant';
     TableauDetailSituationMarche.Cols[8].Text:='QteMoisObjetAvenant';
     TableauDetailSituationMarche.Cols[9].Text:='Prix';
     TableauDetailSituationMarche.Cols[10].Text:='CodeTrie';
     TableauDetailSituationMarche.Cols[11].Text:='CodeStock';
     TableauDetailSituationMarche.Cols[12].Text:='NumDSM';
     TableauDetailSituationMarche.Cols[13].Text:='NumSituation';

     TableauDetailSituationMarche.RowCount:=2;
     TableauDetailSituationMarche.Rows[1].Text:='';

TypeProces:='Business'; FichierConcerne:='FDetailAttachement'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDetailAttachement:=Adresse;
assignfile(FDetailAttachement,ChDetailAttachement);
if FileExists(ChDetailAttachement)then
Reset(FDetailAttachement)
else Rewrite(FDetailAttachement);
Seek(FDetailAttachement,0);
i:=0;
R:=0;

while not eof(FDetailAttachement) do
begin
     Read(FDetailAttachement,RDetailAttachement);
     if(stringtodate(DateDetailAttachement(inttostr(NSMarche),inttostr(RDetailAttachement.NAttachement)),'DetailSituationMarche')<=stringtodate(DateSituationEnd,'DetailSituationMarche'))
     and(Strtointeger(DTrie('M',RDetailAttachement.CodeTrie))=NSMarche)then
     begin
          OKStructure:=true;
          if(NStructure<>0)then
          begin
               if(Strtointeger(DTrie('S',RDetailAttachement.CodeTrie))=NStructure)
               then OKStructure:=true
               else OKStructure:=false;
          end
          else OKStructure:=true;

          if(OKStructure=true)then
          begin
               if(NStatistique<>0)then
               begin
                    if(Strtointeger(DTrie('T',RDetailAttachement.CodeTrie))=NStatistique)
                    then OKStatistique:=true
                    else OKStatistique:=false;
               end
          else OKStatistique:=true;
          end;

          OKDecision:=false;
          if(FSSituations.EditTypeProjet.Text='Marche')then
          begin
               QuantiteRealise:=0;
               QuantiteObjetMarche:=0;
               QuantiteObjetAvenant:=0;
               if(RDetailAttachement.QuantiteAttachementRealise<>0)then
               begin
                    //if(RDetailAttachement.QuantiteAttachementObjetMarche<>0)
                    //then
                    begin
                         OKDecision:=true;
                         QuantiteRealise:=RDetailAttachement.QuantiteAttachementRealise;
                         QuantiteObjetMarche:=RDetailAttachement.QuantiteAttachementObjetMarche;
                         QuantiteObjetAvenant:=RDetailAttachement.QuantiteAttachementObjetAvenant;
                    end
                    //else OKDecision:=false;
               end;
          end
          else
          if(FSSituations.EditTypeProjet.Text='Avenant')then
          begin
               if(Strtointeger(DTrie('A',RDetailAttachement.CodeTrie))=NAvenant)then
               begin
                    if(RDetailAttachement.QuantiteAttachementRealise<>0)then
                    begin
                         //if((RDetailAttachement.QuantiteAttachementRealise-RDetailAttachement.QuantiteAttachementObjetMarche)>0)
                         //then
                         begin
                              OKDecision:=true;
                              QuantiteRealise:=RDetailAttachement.QuantiteAttachementRealise;
                              QuantiteObjetMarche:=RDetailAttachement.QuantiteAttachementObjetMarche;
                              QuantiteObjetAvenant:=RDetailAttachement.QuantiteAttachementObjetAvenant;
                         end
                         //else OKDecision:=false;
                    end
                    else
                    begin
                         if(Strtointeger(DTrie('A',RDetailAttachement.CodeTrie))>0)
                         then OKDecision:=true
                         else OKDecision:=false;
                    end;
               end
               else OKDecision:=false;
          end;
     end
     else
     begin
          OKStructure:=false;
          OKStatistique:=false;
          OKDecision:=false;
     end;

     if((OKStructure=true)and(OKStatistique=true)and(OKDecision=true))
     then
     begin
          OKPalceMois:=false;
          DateAttachement:=DateDetailAttachement(inttostr(NSMarche),inttostr(RDetailAttachement.NAttachement));
          if(CummuleAttachement=true)then
          begin
               if(DateAttachement>=DateSituationBegin)and(DateAttachement<=DateSituationEnd)then OKPalceMois:=true
               else
               if(DateAttachement<DateSituationBegin)or(DateAttachement>DateSituationEnd)then OKPalceMois:=false;
          end
          else
          begin
               if(stringtodate(DateAttachement,'DetailSituationMarche')=stringtodate(DateSituationBegin,'DetailSituationMarche'))or(stringtodate(DateAttachement,'DetailSituationMarche')=stringtodate(DateSituationEnd,'DetailSituationMarche'))
               then OKPalceMois:=true
               else
               if(stringtodate(DateAttachement,'DetailSituationMarche')<>stringtodate(DateSituationBegin,'DetailSituationMarche'))and(stringtodate(DateAttachement,'DetailSituationMarche')<>stringtodate(DateSituationEnd,'DetailSituationMarche'))
               then OKPalceMois:=false;
          end;

          OK:=false;
          i:=1;
          while(i<=R)and(OK=false)do
          begin
               if(TrieOptionArticleSituation(RDetailAttachement.CodeTrie,ParStructure,ParStatistique)=
                  TrieOptionArticleSituation(TableauDetailSituationMarche.Cells[10,i],ParStructure,ParStatistique))
               and(RDetailAttachement.PrixUnitaire=strtoreal(TableauDetailSituationMarche.Cells[9,i]))
               then
               begin
                    OK:=true;
                    if(OKPalceMois=true)then
                    begin
                         TableauDetailSituationMarche.Cells[4,i]:=floattostr(strtoreal(TableauDetailSituationMarche.Cells[4,i])+QuantiteRealise);
                         TableauDetailSituationMarche.Cells[6,i]:=floattostr(strtoreal(TableauDetailSituationMarche.Cells[6,i])+QuantiteObjetMarche);
                         TableauDetailSituationMarche.Cells[8,i]:=floattostr(strtoreal(TableauDetailSituationMarche.Cells[8,i])+QuantiteObjetAvenant);
                    end
                    else
                    begin
                         TableauDetailSituationMarche.Cells[3,i]:=floattostr(strtoreal(TableauDetailSituationMarche.Cells[3,i])+QuantiteRealise);
                         TableauDetailSituationMarche.Cells[5,i]:=floattostr(strtoreal(TableauDetailSituationMarche.Cells[5,i])+QuantiteObjetMarche);
                         TableauDetailSituationMarche.Cells[7,i]:=floattostr(strtoreal(TableauDetailSituationMarche.Cells[7,i])+QuantiteObjetAvenant);
                    end;
               end;
          i:=i+1;
          end;

          if(OK=false)then
          begin
               R:=R+1;
               TableauDetailSituationMarche.Rows[R].Text:='';
               TableauDetailSituationMarche.Cells[0,R]:=RDetailAttachement.NArticle;
               TableauDetailSituationMarche.Cells[1,R]:=RDetailAttachement.DesignationArticle;
               TableauDetailSituationMarche.Cells[2,R]:=RDetailAttachement.UniteM;
               TableauDetailSituationMarche.Cells[3,R]:='0';
               TableauDetailSituationMarche.Cells[4,R]:='0';
               TableauDetailSituationMarche.Cells[5,R]:='0';
               TableauDetailSituationMarche.Cells[6,R]:='0';
               TableauDetailSituationMarche.Cells[7,R]:='0';
               TableauDetailSituationMarche.Cells[8,R]:='0';

               if(OKPalceMois=true)then
               begin
                    TableauDetailSituationMarche.Cells[4,R]:=floattostr(RDetailAttachement.QuantiteAttachementRealise);
                    TableauDetailSituationMarche.Cells[6,R]:=floattostr(RDetailAttachement.QuantiteAttachementObjetMarche);
                    TableauDetailSituationMarche.Cells[8,R]:=floattostr(RDetailAttachement.QuantiteAttachementObjetAvenant);
               end
               else
               begin
                    TableauDetailSituationMarche.Cells[3,R]:=floattostr(RDetailAttachement.QuantiteAttachementRealise);
                    TableauDetailSituationMarche.Cells[5,R]:=floattostr(RDetailAttachement.QuantiteAttachementObjetMarche);
                    TableauDetailSituationMarche.Cells[7,R]:=floattostr(RDetailAttachement.QuantiteAttachementObjetAvenant);
               end;

               TableauDetailSituationMarche.Cells[9,R]:=floattostr(RDetailAttachement.PrixUnitaire);
               TableauDetailSituationMarche.Cells[10,R]:=TrieOptionArticleSituation(RDetailAttachement.CodeTrie,ParStructure,ParStatistique);
               TableauDetailSituationMarche.Cells[11,R]:=RDetailAttachement.CodeStock;
               TableauDetailSituationMarche.Cells[12,R]:='';
               TableauDetailSituationMarche.Cells[13,R]:='';
          end;
     end;
end;
CloseFile(FDetailAttachement);

if(R>0)then TableauDetailSituationMarche.RowCount:=R+1
       else TableauDetailSituationMarche.RowCount:=2;

NotCol:='10;11';
for R:=1 to TableauDetailSituationMarche.ColCount-1 do if existenumintexte(inttostr(R),NotCol)then TableauDetailSituationMarche.ColWidths[R]:=0;
AjusterColWidth(TableauDetailSituationMarche,'',NotCol);

TrierTableauARowSpecial(TableauDetailSituationMarche,1,TableauDetailSituationMarche.RowCount-1,0,'10','','+');
end;

Procedure ListeDetailSituationMarche(TableauDetailSituationMarche:TStringGrid; NumSituation,NSMarche,AnneeSituation:string);
var   R:integer; NotCol:string;
begin
     TableauDetailSituationMarche.ColCount:=14;
     TableauDetailSituationMarche.Cols[0].Text:='N°Article';
     TableauDetailSituationMarche.Cols[1].Text:='Désignation';
     TableauDetailSituationMarche.Cols[2].Text:='UM';
     TableauDetailSituationMarche.Cols[3].Text:='QtePrecRéalisé';
     TableauDetailSituationMarche.Cols[4].Text:='QteMoisRéalisé';
     TableauDetailSituationMarche.Cols[5].Text:='QtePrecObjetMarché';
     TableauDetailSituationMarche.Cols[6].Text:='QteMoisObjetMarché';
     TableauDetailSituationMarche.Cols[7].Text:='QtePrecObjetAvenant';
     TableauDetailSituationMarche.Cols[8].Text:='QteMoisObjetAvenant';
     TableauDetailSituationMarche.Cols[9].Text:='Prix';
     TableauDetailSituationMarche.Cols[10].Text:='CodeTrie';
     TableauDetailSituationMarche.Cols[11].Text:='CodeStock';
     TableauDetailSituationMarche.Cols[12].Text:='NumDSM';
     TableauDetailSituationMarche.Cols[13].Text:='NumSituation';

     TableauDetailSituationMarche.RowCount:=2;
     TableauDetailSituationMarche.Rows[1].Text:='';

     if(NumSituation<>'')then NumSituation:=inttostr(strtointeger(NumSituation));
     FSSituations.EditNumSituationAfficher.Text:=NumSituation;

     TypeProces:='Business'; FichierConcerne:='FDetailSituationMarche '+NSMarche+' '+NumSituation+'_'+AnneeSituation;
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChDetailSituationMarche:=Adresse;
FSSituations.AfficheAdresseFDetailSituationMarche.Caption:=ChDetailSituationMarche;
     assignfile(FDetailSituationMarche,ChDetailSituationMarche);
     if FileExists(ChDetailSituationMarche)then
     Reset(FDetailSituationMarche)
     else Rewrite(FDetailSituationMarche);
     Seek(FDetailSituationMarche,0);
     R:=0;
     while not eof(FDetailSituationMarche) do
     begin
          Read(FDetailSituationMarche,RDetailSituationMarche);
          R:=R+1;
          TableauDetailSituationMarche.Rows[R].Text:='';
          TableauDetailSituationMarche.Cells[0,R]:=RDetailSituationMarche.NArticle;
          TableauDetailSituationMarche.Cells[1,R]:=RDetailSituationMarche.DesignationArticle;
          TableauDetailSituationMarche.Cells[2,R]:=RDetailSituationMarche.UniteM;
          TableauDetailSituationMarche.Cells[3,R]:=Vergule(floattostr(RDetailSituationMarche.QuantiteSituationMarcheRealisePrecedement),'2','C','');
          TableauDetailSituationMarche.Cells[4,R]:=Vergule(floattostr(RDetailSituationMarche.QuantiteSituationMarcheRealiseMois),'2','C','');
          TableauDetailSituationMarche.Cells[5,R]:=Vergule(floattostr(RDetailSituationMarche.QuantiteSituationMarcheObjetMarchePrecedement),'2','C','');
          TableauDetailSituationMarche.Cells[6,R]:=Vergule(floattostr(RDetailSituationMarche.QuantiteSituationMarcheObjetMarcheMois),'2','C','');
          TableauDetailSituationMarche.Cells[7,R]:=Vergule(floattostr(RDetailSituationMarche.QuantiteSituationMarcheObjetAvenantPrecedement),'2','C','');
          TableauDetailSituationMarche.Cells[8,R]:=Vergule(floattostr(RDetailSituationMarche.QuantiteSituationMarcheObjetAvenantMois),'2','C','');
          TableauDetailSituationMarche.Cells[9,R]:=Vergule(floattostr(RDetailSituationMarche.PrixUnitaire),'2','C','');
          TableauDetailSituationMarche.Cells[10,R]:=RDetailSituationMarche.CodeTrie;
          TableauDetailSituationMarche.Cells[11,R]:=RDetailSituationMarche.CodeStock;
          TableauDetailSituationMarche.Cells[12,R]:=inttostr(RDetailSituationMarche.NDetailSituationMarche);
          TableauDetailSituationMarche.Cells[13,R]:=inttostr(RDetailSituationMarche.NSituationMarche);
     end;
     CloseFile(FDetailSituationMarche);

     if(R>0)then TableauDetailSituationMarche.RowCount:=R+1
            else TableauDetailSituationMarche.RowCount:=2;
     NotCol:='10-13';
     for R:=1 to TableauDetailSituationMarche.ColCount-1 do if existenumintexte(inttostr(R),NotCol)then TableauDetailSituationMarche.ColWidths[R]:=0;
     AjusterColWidth(TableauDetailSituationMarche,'',NotCol);
     TrierTableauARowSpecial(TableauDetailSituationMarche,1,TableauDetailSituationMarche.RowCount-1,0,'10','','+');
end;

Procedure ProcAfficheSituationMagique(ParStructure,ParStatistique,CummuleAttachement:boolean);
var  OK,OKStructure,OKStatistique,OKDecision,OKCode,OKCode1,OKCode2,OKPalceMois:boolean;
     i,R,C,l,j,NSMarche,NStructure,NStatistique,NAvenant,RowMax,RowGlobal,ARow,Mois,MoisP:integer;
     Quantite,QuantiteObjetMarche,QuantiteObjetAvenant,RetenueGarantie:real; CodeStructureSituation,DateAttachement:string[10];
     NumSituation,IntituleProjet,IntituleEtat,NotCol:string;
begin

IntituleProjet:=FSSituations.EditTypeProjet.Text;
IntituleEtat:='Situation';

NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
NStructure:=strtointeger(FSSituations.EditNStructureMarche.Text)*strtointeger(FSSituations.IndiceAfficheStructure.Text);
NStatistique:=strtointeger(FSSituations.EditNStatistiqueMarche.Text)*strtointeger(FSSituations.IndiceAfficheStatistique.Text);
NAvenant:=strtointeger(FSSituations.EditSituationNAvenant.Text)*strtointeger(FSSituations.IndiceAffichageAvenantSituation.Text);

FSSituations.TableauDecompteSituation.ColCount:=17;
FSSituations.TableauDecompteSituation.Cols[0].Text:='N°';
FSSituations.TableauDecompteSituation.Cols[1].Text:='Désignation';
FSSituations.TableauDecompteSituation.Cols[2].Text:='U';
FSSituations.TableauDecompteSituation.Cols[3].Text:='Q.'+IntituleProjet;
FSSituations.TableauDecompteSituation.Cols[4].Text:='Qte.Précéd.';
FSSituations.TableauDecompteSituation.Cols[5].Text:='Qte.Mois';
FSSituations.TableauDecompteSituation.Cols[6].Text:='Qte.Cummulé';
FSSituations.TableauDecompteSituation.Cols[7].Text:='P.U.';
FSSituations.TableauDecompteSituation.Cols[8].Text:='M.Précéd.';
FSSituations.TableauDecompteSituation.Cols[9].Text:='M.Mois';
FSSituations.TableauDecompteSituation.Cols[10].Text:='M.Cummulé';
FSSituations.TableauDecompteSituation.Cols[11].Text:='Trie';
FSSituations.TableauDecompteSituation.Cols[12].Text:=IntituleProjet;
FSSituations.TableauDecompteSituation.Cols[13].Text:='Code Produit';
FSSituations.TableauDecompteSituation.Cols[14].Text:='Qte.Avenant';
FSSituations.TableauDecompteSituation.Cols[15].Text:='Qte.Mois.O.M';
FSSituations.TableauDecompteSituation.Cols[16].Text:='Qte.Mois.O.A';

FSSituations.TableauDecompteSituation.RowCount:=2;
FSSituations.TableauDecompteSituation.Rows[1].Text:='';

NumSituation:=ProcLastNumSituationMarchePeriode(NSMarche,FSSituations.EditDateAttachement.Text);

if(NumSituation<>'')then
begin
     ListeDetailSituationMarche(FSSituations.TableauDetailSituationMarche,NumSituation,FSSituations.EditNSMarche.Text,lastlaters(FSSituations.EditDateAttachement.Text,4));
     R:=1;
     while(R<=FSSituations.TableauDetailSituationMarche.RowCount-1)do
     begin
          FSSituations.TableauDecompteSituation.Rows[R].Text:='';
          FSSituations.TableauDecompteSituation.Cells[0,R]:=FSSituations.TableauDetailSituationMarche.Cells[0,R];
          FSSituations.TableauDecompteSituation.Cells[1,R]:=FSSituations.TableauDetailSituationMarche.Cells[1,R];
          FSSituations.TableauDecompteSituation.Cells[2,R]:=FSSituations.TableauDetailSituationMarche.Cells[2,R];
          FSSituations.TableauDecompteSituation.Cells[3,R]:='0';
          FSSituations.TableauDecompteSituation.Cells[4,R]:=floattostr(strtoreal(FSSituations.TableauDetailSituationMarche.Cells[3,R])+strtoreal(FSSituations.TableauDetailSituationMarche.Cells[4,R]));
          FSSituations.TableauDecompteSituation.Cells[5,R]:='0';
          FSSituations.TableauDecompteSituation.Cells[6,R]:=floattostr(strtoreal(FSSituations.TableauDetailSituationMarche.Cells[3,R])+strtoreal(FSSituations.TableauDetailSituationMarche.Cells[4,R]));
          FSSituations.TableauDecompteSituation.Cells[7,R]:=FSSituations.TableauDetailSituationMarche.Cells[9,R];
          FSSituations.TableauDecompteSituation.Cells[8,R]:='0';
          FSSituations.TableauDecompteSituation.Cells[9,R]:='0';
          FSSituations.TableauDecompteSituation.Cells[10,R]:='0';
          FSSituations.TableauDecompteSituation.Cells[11,R]:=TrieOptionArticleSituation(FSSituations.TableauDetailSituationMarche.Cells[10,R],ParStructure,ParStatistique);
          FSSituations.TableauDecompteSituation.Cells[12,R]:='0';
          FSSituations.TableauDecompteSituation.Cells[13,R]:=FSSituations.TableauDetailSituationMarche.Cells[11,R];
          FSSituations.TableauDecompteSituation.Cells[15,R]:='0';
          FSSituations.TableauDecompteSituation.Cells[16,R]:='0';
     R:=R+1;
     end;
end;
R:=R-1;

i:=1;
while(i<=R)do
begin
     FSSituations.TableauDetailSituationMarche.Cells[3,i]:=floattostr(strtoreal(FSSituations.TableauDetailSituationMarche.Cells[3,i])+strtoreal(FSSituations.TableauDetailSituationMarche.Cells[4,i]));
     FSSituations.TableauDetailSituationMarche.Cells[4,i]:='';

     FSSituations.TableauDetailSituationMarche.Cells[5,i]:=floattostr(strtoreal(FSSituations.TableauDetailSituationMarche.Cells[5,i])+strtoreal(FSSituations.TableauDetailSituationMarche.Cells[6,i]));
     FSSituations.TableauDetailSituationMarche.Cells[6,i]:='';

     FSSituations.TableauDetailSituationMarche.Cells[7,i]:=floattostr(strtoreal(FSSituations.TableauDetailSituationMarche.Cells[7,i])+strtoreal(FSSituations.TableauDetailSituationMarche.Cells[8,i]));
     FSSituations.TableauDetailSituationMarche.Cells[8,i]:='';
i:=i+1;
end;

TypeProces:='Business'; FichierConcerne:='FDetailAttachement'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDetailAttachement:=Adresse;
assignfile(FDetailAttachement,ChDetailAttachement);
if FileExists(ChDetailAttachement)then
Reset(FDetailAttachement)
else Rewrite(FDetailAttachement);
Seek(FDetailAttachement,0);
i:=0;

Mois:=strtointeger(FSSituations.EditDateAttachement.Text[7]+
                   FSSituations.EditDateAttachement.Text[8]+
                   FSSituations.EditDateAttachement.Text[9]+
                   FSSituations.EditDateAttachement.Text[10]+
                   FSSituations.EditDateAttachement.Text[4]+
                   FSSituations.EditDateAttachement.Text[5]);

while not eof(FDetailAttachement) do
begin
     Read(FDetailAttachement,RDetailAttachement);   
     if(strtodate(DateDetailAttachement(inttostr(NSMarche),inttostr(RDetailAttachement.NAttachement)))<=strtodate(FSSituations.EditDateAttachement.Text))
     and(Strtointeger(DTrie('M',RDetailAttachement.CodeTrie))=NSMarche)then
     begin
          OKStructure:=true;
          if(NStructure<>0)then
          begin
               if(Strtointeger(DTrie('S',RDetailAttachement.CodeTrie))=NStructure)
               then OKStructure:=true
               else OKStructure:=false;
          end
          else OKStructure:=true;

          if(OKStructure=true)then
          begin
               if(NStatistique<>0)then
               begin
                    if(Strtointeger(DTrie('T',RDetailAttachement.CodeTrie))=NStatistique)
                    then OKStatistique:=true
                    else OKStatistique:=false;
               end
          else OKStatistique:=true;
          end;

          OKDecision:=false;
          if(FSSituations.EditTypeProjet.Text='Marche')then
          begin
               Quantite:=0;
               QuantiteObjetMarche:=0;
               QuantiteObjetAvenant:=0;
               if(RDetailAttachement.QuantiteAttachementRealise<>0)then
               begin
                    OKDecision:=true;
                    Quantite:=RDetailAttachement.QuantiteAttachementRealise;
                    if(RDetailAttachement.QuantiteAttachementObjetMarche<>0)
                    then
                    begin
                         QuantiteObjetMarche:=RDetailAttachement.QuantiteAttachementObjetMarche;
                    end;
                    if((RDetailAttachement.QuantiteAttachementObjetAvenant)<>0)
                    then
                    begin
                         QuantiteObjetAvenant:=RDetailAttachement.QuantiteAttachementObjetAvenant;
                    end;
               end
               else OKDecision:=false;
          end
          else
          if(FSSituations.EditTypeProjet.Text='Avenant')then
          begin
               if(Strtointeger(DTrie('A',RDetailAttachement.CodeTrie))=NAvenant)then
               begin
                    if(RDetailAttachement.QuantiteAttachementRealise<>0)then
                    begin
                         if((RDetailAttachement.QuantiteAttachementObjetAvenant)<>0)
                         then
                         begin
                              OKDecision:=true;
                              QuantiteObjetAvenant:=RDetailAttachement.QuantiteAttachementObjetAvenant;
                         end
                         else OKDecision:=false;
                    end
                    else
                    begin
                         if(Strtointeger(DTrie('A',RDetailAttachement.CodeTrie))>0)
                         then OKDecision:=true
                         else OKDecision:=false;
                    end;
               end
               else OKDecision:=false;
          end;
     end
     else
     begin
          OKStructure:=false;
          OKStatistique:=false;
          OKDecision:=false;
     end;

     if((OKStructure=true)and(OKStatistique=true)and(OKDecision=true))
     then
     begin
          OKPalceMois:=false;
          DateAttachement:=DateDetailAttachement(inttostr(NSMarche),inttostr(RDetailAttachement.NAttachement));
          if(CummuleAttachement=true)then
          begin
               MoisP:=strtointeger(DateAttachement[7]+
                                   DateAttachement[8]+
                                   DateAttachement[9]+
                                   DateAttachement[10]+
                                   DateAttachement[4]+
                                   DateAttachement[5]);
               if(MoisP=Mois)then OKPalceMois:=true
               else
               if(MoisP<Mois)then OKPalceMois:=false;
          end
          else
          begin
               if(strtodate(DateAttachement)=strtodate(FSSituations.EditDateAttachement.Text))
               then OKPalceMois:=true
               else
               if(strtodate(DateAttachement)<strtodate(FSSituations.EditDateAttachement.Text))
               then OKPalceMois:=false;
          end;

          if(OKPalceMois=true)then
          begin
                OK:=false;
                i:=1;
                while(i<=R)and(OK=false)do
                begin
                     if(RDetailAttachement.PrixUnitaire=strtoreal(FSSituations.TableauDecompteSituation.Cells[7,i]))
                     and(TrieOptionArticleSituation(RDetailAttachement.CodeTrie,ParStructure,ParStatistique)=
                        TrieOptionArticleSituation(FSSituations.TableauDecompteSituation.Cells[11,i],ParStructure,ParStatistique))
                     then
                     begin
                          OK:=true;
                          FSSituations.TableauDecompteSituation.Cells[5,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[5,i])+Quantite);
                          FSSituations.TableauDecompteSituation.Cells[6,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[6,i])+Quantite);
                          FSSituations.TableauDecompteSituation.Cells[15,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[15,i])+QuantiteObjetMarche);
                          FSSituations.TableauDecompteSituation.Cells[16,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[16,i])+QuantiteObjetAvenant);

                          FSSituations.TableauDetailSituationMarche.Cells[4,i]:=floattostr(Quantite);
                          FSSituations.TableauDetailSituationMarche.Cells[6,i]:=floattostr(QuantiteObjetMarche);
                          FSSituations.TableauDetailSituationMarche.Cells[8,i]:=floattostr(QuantiteObjetAvenant);
                     end;
                i:=i+1;
                end;

                if(OK=false)then
                begin
                     R:=R+1;
                     FSSituations.TableauDecompteSituation.Rows[R].Text:='';
                     FSSituations.TableauDecompteSituation.Cells[0,R]:=RDetailAttachement.NArticle;
                     FSSituations.TableauDecompteSituation.Cells[1,R]:=RDetailAttachement.DesignationArticle;
                     FSSituations.TableauDecompteSituation.Cells[2,R]:=RDetailAttachement.UniteM;
                     FSSituations.TableauDecompteSituation.Cells[3,R]:='0';
                     FSSituations.TableauDecompteSituation.Cells[4,R]:='0';
                     FSSituations.TableauDecompteSituation.Cells[5,R]:=floattostr(Quantite);
                     FSSituations.TableauDecompteSituation.Cells[6,R]:=floattostr(Quantite);
                     FSSituations.TableauDecompteSituation.Cells[7,R]:=floattostr(RDetailAttachement.PrixUnitaire);
                     FSSituations.TableauDecompteSituation.Cells[8,R]:='0';
                     FSSituations.TableauDecompteSituation.Cells[9,R]:='0';
                     FSSituations.TableauDecompteSituation.Cells[10,R]:='0';
                     FSSituations.TableauDecompteSituation.Cells[11,R]:=TrieOptionArticleSituation(RDetailAttachement.CodeTrie,ParStructure,ParStatistique);
                     FSSituations.TableauDecompteSituation.Cells[12,R]:='0';
                     FSSituations.TableauDecompteSituation.Cells[13,R]:=RDetailAttachement.CodeStock;
                     FSSituations.TableauDecompteSituation.Cells[15,R]:=floattostr(QuantiteObjetMarche);
                     FSSituations.TableauDecompteSituation.Cells[16,R]:=floattostr(QuantiteObjetAvenant);

                     FSSituations.TableauDetailSituationMarche.Rows[R].Text:='';
                     FSSituations.TableauDetailSituationMarche.Cells[0,R]:=RDetailAttachement.NArticle;
                     FSSituations.TableauDetailSituationMarche.Cells[1,R]:=RDetailAttachement.DesignationArticle;
                     FSSituations.TableauDetailSituationMarche.Cells[2,R]:=RDetailAttachement.UniteM;
                     FSSituations.TableauDetailSituationMarche.Cells[3,R]:='0';
                     FSSituations.TableauDetailSituationMarche.Cells[4,R]:=floattostr(Quantite);
                     FSSituations.TableauDetailSituationMarche.Cells[5,R]:='0';
                     FSSituations.TableauDetailSituationMarche.Cells[6,R]:=floattostr(QuantiteObjetMarche);
                     FSSituations.TableauDetailSituationMarche.Cells[7,R]:='0';
                     FSSituations.TableauDetailSituationMarche.Cells[8,R]:=floattostr(QuantiteObjetAvenant);
                     FSSituations.TableauDetailSituationMarche.Cells[9,R]:=floattostr(RDetailAttachement.PrixUnitaire);
                     FSSituations.TableauDetailSituationMarche.Cells[10,R]:=TrieOptionArticleSituation(RDetailAttachement.CodeTrie,ParStructure,ParStatistique);
                     FSSituations.TableauDetailSituationMarche.Cells[11,R]:=RDetailAttachement.CodeStock;
                     FSSituations.TableauDetailSituationMarche.Cells[12,R]:='';
                     FSSituations.TableauDetailSituationMarche.Cells[13,R]:='';
                end;
          end;
     end;
end;
CloseFile(FDetailAttachement);

for i:=1 to R do
begin
     TypeProces:='Business'; FichierConcerne:='FDetail'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChDetailMarche:=Adresse;
     assignfile(FDetailMarche,ChDetailMarche);
     if FileExists(ChDetailMarche)then
     Reset(FDetailMarche)
     else Rewrite(FDetailMarche);
     Seek(FDetailMarche,0);
     OK:=false;
     while not eof(FDetailMarche)do
     begin
          Read(FDetailMarche,RDetailMarche);
          if((strtointeger(DTrie('A',RDetailMarche.CodeTrie))=NAvenant)
          and(TrieOptionArticleSituation(RDetailMarche.CodeTrie,ParStructure,ParStatistique)=TrieOptionArticleSituation(FSSituations.TableauDecompteSituation.Cells[11,i],ParStructure,ParStatistique)))
          then
          begin
               OK:=true;
               if(RDetailMarche.QuantiteGlobale>0)then
               FSSituations.TableauDecompteSituation.Cells[3,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[3,i])+RDetailMarche.QuantiteGlobale);
          end;
     end;
     CloseFile(FDetailMarche);

     FSSituations.TableauDecompteSituation.Cells[14,i]:=floattostr(FuntionQuantiteListeAvenantMarche(FSSituations.TableauAvenantMarche,FSSituations.TableauDecompteSituation.Cells[11,i],ParStructure,ParStatistique));

     if((OK=true))then  //and(strtoreal(FSSituations.TableauDecompteSituation.Cells[3,i])>0)
     begin
           FSSituations.TableauDecompteSituation.Cells[3,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[3,i],'3','N','');
           FSSituations.TableauDecompteSituation.Cells[4,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[4,i],'3','N','');
           FSSituations.TableauDecompteSituation.Cells[5,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[5,i],'3','N','');
           FSSituations.TableauDecompteSituation.Cells[6,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[6,i],'3','N','');
           FSSituations.TableauDecompteSituation.Cells[7,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[7,i],'3','N','');
           FSSituations.TableauDecompteSituation.Cells[8,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[4,i])*strtoreal(FSSituations.TableauDecompteSituation.Cells[7,i])),'3','N','');
           FSSituations.TableauDecompteSituation.Cells[9,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[5,i])*strtoreal(FSSituations.TableauDecompteSituation.Cells[7,i])),'3','N','');
           FSSituations.TableauDecompteSituation.Cells[10,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i])),'3','N','');
           FSSituations.TableauDecompteSituation.Cells[12,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[3,i])*strtoreal(FSSituations.TableauDecompteSituation.Cells[7,i])),'3','N','');
           FSSituations.TableauDecompteSituation.Cells[15,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[15,i],'3','N','');
           FSSituations.TableauDecompteSituation.Cells[16,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[16,i],'3','N','');
     end
     else
     begin
           FSSituations.TableauDecompteSituation.Cells[3,i]:='';
           FSSituations.TableauDecompteSituation.Cells[4,i]:='';
           FSSituations.TableauDecompteSituation.Cells[5,i]:='';
           FSSituations.TableauDecompteSituation.Cells[6,i]:='';
           FSSituations.TableauDecompteSituation.Cells[7,i]:='';
           FSSituations.TableauDecompteSituation.Cells[8,i]:='';
           FSSituations.TableauDecompteSituation.Cells[9,i]:='';
           FSSituations.TableauDecompteSituation.Cells[10,i]:='';
           FSSituations.TableauDecompteSituation.Cells[12,i]:='';
           FSSituations.TableauDecompteSituation.Cells[15,i]:='';
           FSSituations.TableauDecompteSituation.Cells[16,i]:='';
     end;
end;

if(R>0)then
       begin
            FSSituations.TableauDecompteSituation.RowCount:=R+1;
            FSSituations.TableauDetailSituationMarche.RowCount:=R+1;
       end
       else
       begin
            FSSituations.TableauDecompteSituation.RowCount:=2;
            FSSituations.TableauDecompteSituation.Rows[1].Text:='';

            FSSituations.TableauDetailSituationMarche.RowCount:=2;
            FSSituations.TableauDetailSituationMarche.Rows[1].Text:='';
       end;

if(R>0)then
begin
TrierSituation(11);
RowGlobal:=FSSituations.TableauDecompteSituation.RowCount;
RowMax:=RowGlobal+2;
//FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+3;
FSSituations.TableauDecompteSituation.Rows[RowGlobal].Text:='';
FSSituations.TableauDecompteSituation.Cells[0,RowGlobal]:='';
FSSituations.TableauDecompteSituation.Cells[1,RowGlobal]:='Montant H.T. '+IntituleEtat;
FSSituations.TableauDecompteSituation.Cells[11,RowGlobal]:='ZZZ';
FSSituations.TableauDecompteSituation.Cells[8,RowGlobal]:='0,000';
FSSituations.TableauDecompteSituation.Cells[9,RowGlobal]:='0,000';
FSSituations.TableauDecompteSituation.Cells[10,RowGlobal]:='0,000';
FSSituations.TableauDecompteSituation.Cells[12,RowGlobal]:='0,000';
FSSituations.TableauDecompteSituation.Cells[13,RowGlobal]:='';
j:=0;
R:=1;
while(R<=RowGlobal-1)do
begin
     if(FSSituations.TableauDecompteSituation.Cells[11,R]<>'')
     then
     begin
     FSSituations.TableauDecompteSituation.Cells[8,RowGlobal]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,RowGlobal])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[9,RowGlobal]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,RowGlobal])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[10,RowGlobal]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,RowGlobal])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[12,RowGlobal]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,RowGlobal])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
          OKCode:=false;
          OKCode1:=false;
          OKCode2:=false;
          i:=RowGlobal+1;
          while((i<=RowMax)and((OKCode=false)or(OKCode1=false)or(OKCode2=false)))do
          begin
               if FSSituations.TableauDecompteSituation.Cells[11,i]=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],15)+'00.00.00.00'
               then
               begin
                    OKCode:=true;
                    FSSituations.TableauDecompteSituation.Cells[8,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[9,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[10,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[12,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
               end;
               if(FSSituations.TableauDecompteSituation.Cells[11,i]=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],17)+'.ZZ')
               then
               begin
                    OKCode1:=true;
                    FSSituations.TableauDecompteSituation.Cells[8,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[9,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[10,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[12,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
               end;
               if(FSSituations.TableauDecompteSituation.Cells[11,i]=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],20)+'.ZZ')
               then
               begin
                    OKCode2:=true;
                    FSSituations.TableauDecompteSituation.Cells[8,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[9,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[10,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[12,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
               end;
          i:=i+1;
          end;

          if(OKCode=false)then
          begin
               //FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+(2*j);
               RowMax:=RowMax+(2*j);
               FSSituations.TableauDecompteSituation.Rows[RowMax-1].Text:='';
               FSSituations.TableauDecompteSituation.Rows[RowMax].Text:='';

               RStructureMarche:=ChercherStructureMarche(strtointeger(DTrie('M',FSSituations.TableauDecompteSituation.Cells[11,R])),strtointeger(DTrie('S',FSSituations.TableauDecompteSituation.Cells[11,R])));
               RStatistiqueMarche:=ChercherStatistiqueMarche(strtointeger(DTrie('M',FSSituations.TableauDecompteSituation.Cells[11,R])),strtointeger(DTrie('T',FSSituations.TableauDecompteSituation.Cells[11,R])));

               if(RStructureMarche.StructureMarche='')
               and(RStatistiqueMarche.StatistiqueMarche='')
               then  FSSituations.TableauDecompteSituation.Cells[1,RowMax-1]:='Marché Global:'
               else FSSituations.TableauDecompteSituation.Cells[1,RowMax-1]:=RStructureMarche.StructureMarche+': '+RStatistiqueMarche.StatistiqueMarche;
               FSSituations.TableauDecompteSituation.Cells[11,RowMax-1]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],15)+'00.00.00.00';
               FSSituations.TableauDecompteSituation.Rows[RowMax].Text:='';

               FSSituations.TableauDecompteSituation.Cells[1,RowMax]:='Montant H.T  '+RStructureMarche.StructureMarche;
               FSSituations.TableauDecompteSituation.Cells[11,RowMax]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],15)+'Z';
               FSSituations.TableauDecompteSituation.Cells[8,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[9,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[10,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[12,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[12,R],'3','N','');
               j:=1;
          end;
          if(OKCode1=false)then
          begin
               //FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+j;
               //ARow:=FSSituations.TableauDecompteSituation.RowCount-1;
               RowMax:=RowMax+j;

               FSSituations.TableauDecompteSituation.Rows[RowMax].Text:='';

               FSSituations.TableauDecompteSituation.Cells[1,RowMax]:='Total: '+LastLaters(FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],17),2);
               FSSituations.TableauDecompteSituation.Cells[11,RowMax]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],17)+'.ZZ';
               FSSituations.TableauDecompteSituation.Cells[8,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[9,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[10,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[12,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[12,R],'3','N','');
               j:=1;
          end;
          if(OKCode2=false)
          and((FSSituations.TableauDecompteSituation.Cells[2,R]='')or(FSSituations.TableauDecompteSituation.Cells[7,R]=''))
          and(longueur(FSSituations.TableauDecompteSituation.Cells[11,R])=26)   //31
          and(Lastlaters(FSSituations.TableauDecompteSituation.Cells[11,R],8)<>'00.00.00')
          then
          begin
               //FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+j;
               //ARow:=FSSituations.TableauDecompteSituation.RowCount-1;
               RowMax:=RowMax+1;
               FSSituations.TableauDecompteSituation.Rows[RowMax].Text:='';

               FSSituations.TableauDecompteSituation.Cells[1,RowMax]:='Sous Total: '+LastLaters(FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],20),5);
               FSSituations.TableauDecompteSituation.Cells[11,RowMax]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],20)+'.ZZ';
               FSSituations.TableauDecompteSituation.Cells[8,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[9,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[10,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[12,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[12,R],'3','N','');
               j:=1;
          end;
     end;
R:=R+1;
end;
if(RowMax>0)
then FSSituations.TableauDecompteSituation.RowCount:=RowMax+1
else FSSituations.TableauDecompteSituation.RowCount:=2;

TrierSituation(11);
{************************* STATISTIQUES ****************************}
NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
ProcAfficheStructureStatistique(FSSituations.TableauSituationStructureStatistique,NSMarche,ParStructure,ParStatistique);
FSSituations.RBMarche.Checked:=true;

for ARow:=1 to FSSituations.TableauDecompteSituation.RowCount-1 do
begin
     if(Longueur(FSSituations.TableauDecompteSituation.Cells[11,ARow])>15)
     then
     begin
          if(FSSituations.TableauDecompteSituation.Cells[11,ARow][16]='Z')
          then
          begin
               R:=1;
               while(R<=FSSituations.TableauSituationStructureStatistique.RowCount-1)do
               begin
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=Firstlaters(FSSituations.TableauDecompteSituation.Cells[11,ARow],5))then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[3,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[4,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[5,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[6,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                    end
                    else
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=Firstlaters(FSSituations.TableauDecompteSituation.Cells[11,ARow],10))then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[3,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,R])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,ARow]));
                         FSSituations.TableauSituationStructureStatistique.Cells[4,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,R])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,ARow]));
                         FSSituations.TableauSituationStructureStatistique.Cells[5,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,R])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,ARow]));
                         FSSituations.TableauSituationStructureStatistique.Cells[6,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,R])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,ARow]));
                    end
                    else
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=Firstlaters(FSSituations.TableauDecompteSituation.Cells[11,ARow],15))then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[3,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[4,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[5,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[6,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                    end;

               R:=R+1;
               end;
          end;
     end;
end;

TypeProces:='Business'; FichierConcerne:='FDetail'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDetailMarche:=Adresse;
assignfile(FDetailMarche,ChDetailMarche);
if FileExists(ChDetailMarche)then
Reset(FDetailMarche)
else Rewrite(FDetailMarche);
Seek(FDetailMarche,0);
OK:=false;
FSSituations.EditValeurMarche.Text:='0';
while not eof(FDetailMarche)and(OK=false)do
begin
     Read(FDetailMarche,RDetailMarche);
     if(DTrie('M',RDetailMarche.CodeTrie)=FSSituations.EditNSMarche.Text)
     then
     begin
          CodeStructureSituation:='';
          if((ParStructure=true)or(ParStatistique=true))
          then CodeStructureSituation:=completezerogauche(DTrie('M',RDetailMarche.CodeTrie),'5')+completezerogauche(DTrie('S',RDetailMarche.CodeTrie),'5')
          else CodeStructureSituation:=completezerogauche(DTrie('M',RDetailMarche.CodeTrie),'5')+'00000';

          FSSituations.EditValeurMarche.Text:=floattostr(strtoreal(FSSituations.EditValeurMarche.Text)+(RDetailMarche.QuantiteGlobale*RDetailMarche.PrixUnitaire));
          R:=1;
          while R<=FSSituations.TableauSituationStructureStatistique.RowCount-1 do
          begin
               if(Longueur(FSSituations.TableauSituationStructureStatistique.Cells[0,R])=10)then
               begin
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=CodeStructureSituation)then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[7,R]:=
                         floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[7,R])+(RDetailMarche.QuantiteGlobale*RDetailMarche.PrixUnitaire));
                    end;
               end;

               if(Longueur(FSSituations.TableauSituationStructureStatistique.Cells[0,R])=5)then
               begin
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=completezerogauche(DTrie('M',RDetailMarche.CodeTrie),'5'))then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[7,R]:=
                         floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[7,R])+(RDetailMarche.QuantiteGlobale*RDetailMarche.PrixUnitaire*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                    end;
               end;
          R:=R+1;
          end;
     end;
end;
CloseFile(FDetailMarche);
FSSituations.EditValeurMarche.Text:=vergule(FSSituations.EditValeurMarche.Text,'2','C','')+' DA';

R:=1;
while(R<=FSSituations.TableauSituationStructureStatistique.RowCount-1)do
begin
     if(FSSituations.TableauSituationStructureStatistique.Cells[8,R]<>'')then
     begin
          l:=R;
          while(l<=FSSituations.TableauSituationStructureStatistique.RowCount-1)do
          begin
               if(FSSituations.TableauSituationStructureStatistique.Cells[8,R]=FSSituations.TableauSituationStructureStatistique.Cells[0,l])then
               begin
                    FSSituations.TableauSituationStructureStatistique.Cells[3,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,R]));
                    FSSituations.TableauSituationStructureStatistique.Cells[4,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,R]));
                    FSSituations.TableauSituationStructureStatistique.Cells[5,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,R]));
                    FSSituations.TableauSituationStructureStatistique.Cells[6,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,R]));
                    FSSituations.TableauSituationStructureStatistique.Cells[7,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[7,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[7,R]));
               end;
          l:=l+1;
          end;
     end;
R:=R+1;
end;

MiseAJourValeurStatistique(FSSituations.TableauSituationStructureStatistique,strtointeger(NumSituation));

{*****************************PRINCIPALE**********************************}
ProcAffichePrincipale(NSMarche);
ProcAfficheAvance(NSMarche);
ProcRemplireMarche(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,FSSituations.TableauSituationStructureStatistique.RowCount-1]),strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,FSSituations.TableauSituationStructureStatistique.RowCount-1]));
ProcRemplireFormule;
{*****************************PRINCIPALE**********************************}
{*****************************MEMOIRE**********************************}
TypeProces:='Business'; FichierConcerne:='FMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChMarche:=Adresse;
assignfile(FMarche,ChMarche);
if FileExists(ChMarche)then
Reset(FMarche)
else Rewrite(FMarche);
Seek(FMarche,0);
OK:=false;
RetenueGarantie:=0;
while not eof(FMarche)and(OK=false)do
begin
     Read(FMarche,RMarche);
     if(RMarche.NSMarche=NSMarche)then
     begin
          OK:=true;
          RetenueGarantie:=RMarche.RetenueGarantie;
     end;
end;
CloseFile(FMarche);

FSSituations.Memoire.Lines.Clear;
if((strtoreal(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1])>0)
or((RetenueGarantie>0)and(strtoreal(FSSituations.TableauPrincipal.Cells[6,1])>0)))
then
begin
     FSSituations.Memoire.Lines.Add('Pour mémoire:');
     FSSituations.Memoire.Lines.Add('');

     if(strtoreal(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1])>0)
     then
     begin
          FSSituations.Memoire.Lines.Add('rembourssement des avances cumulés au '+FSSituations.EditDateAttachement.Text+' de '+vergule(floattostr((strtoreal(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1])/strtoreal(FSSituations.TableauAvance.Cells[3,FSSituations.TableauAvance.RowCount-1]))*100),'2','C','')+' % soit: '+vergule(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1],'2','C','')+' DA');
          FSSituations.Memoire.Lines.Add('');
     end;

     if((RetenueGarantie>0)
     and(strtoreal(FSSituations.TableauPrincipal.Cells[6,1])>0))
     then
     begin
          FSSituations.Memoire.Lines.Add('Retenue de garantie cumulées au '+FSSituations.EditDateAttachement.Text+' soit: '+Vergule(floattostr((strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,FSSituations.TableauSituationStructureStatistique.RowCount-1])+strtoreal(FSSituations.TableauAvance.Cells[3,FSSituations.TableauAvance.RowCount-1])-strtoreal(FSSituations.TableauAvance.Cells[2,FSSituations.TableauAvance.RowCount-1])-strtoreal(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1]))*RetenueGarantie/100),'2','C','')+' DA');
          FSSituations.Memoire.Lines.Add('');
     end;

FSSituations.Memoire.Height:=MaxInt((FSSituations.Memoire.Lines.Capacity*18),200);
end;
{***************************FIN MEMOIRE**********************************}
R:=1;
while(R<=FSSituations.TableauDecompteSituation.RowCount-1)do
begin
     FSSituations.TableauDecompteSituation.Cells[1,R]:=' '+FSSituations.TableauDecompteSituation.Cells[1,R];
     FSSituations.TableauDecompteSituation.Cells[3,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[3,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[4,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[4,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[5,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[5,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[6,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[6,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[7,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[7,R],'2','C','');
     FSSituations.TableauDecompteSituation.Cells[8,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'2','C','');
     FSSituations.TableauDecompteSituation.Cells[9,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'2','C','');
     FSSituations.TableauDecompteSituation.Cells[10,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'2','C','');
R:=R+1;
end;

R:=1;
while(R<=FSSituations.TableauSituationStructureStatistique.RowCount-1)do
begin
     FSSituations.TableauSituationStructureStatistique.Cells[3,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[3,R],'2','C','');
     FSSituations.TableauSituationStructureStatistique.Cells[4,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[4,R],'2','C','');
     FSSituations.TableauSituationStructureStatistique.Cells[5,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[5,R],'2','C','');
     FSSituations.TableauSituationStructureStatistique.Cells[6,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[6,R],'2','C','');
     FSSituations.TableauSituationStructureStatistique.Cells[7,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[7,R],'2','C','');
R:=R+1;
end;

R:=1;
while(R<=FSSituations.TableauAvance.RowCount-1)do
begin
     FSSituations.TableauAvance.Cells[2,R]:=vergule(FSSituations.TableauAvance.Cells[2,R],'2','C','');
     FSSituations.TableauAvance.Cells[3,R]:=vergule(FSSituations.TableauAvance.Cells[3,R],'2','C','');
     FSSituations.TableauAvance.Cells[4,R]:=vergule(FSSituations.TableauAvance.Cells[4,R],'2','C','');
     FSSituations.TableauAvance.Cells[5,R]:=vergule(FSSituations.TableauAvance.Cells[5,R],'2','C','');
R:=R+1;
end;

R:=1;
while(R<=FSSituations.TableauPrincipal.RowCount-1)do
begin
     FSSituations.TableauPrincipal.Cells[6,R]:=vergule(FSSituations.TableauPrincipal.Cells[6,R],'2','C','');
R:=R+1;
end;

{************************* FIN STATISTIQUES ****************************}
end;

NotCol:='11-13';
for C:=0 to FSSituations.TableauDecompteSituation.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauDecompteSituation.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauDecompteSituation,'',NotCol); FSSituations.TableauDecompteSituation.ColCount:=17;

NotCol:='0;1;8';
for C:=0 to FSSituations.TableauSituationStructureStatistique.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauSituationStructureStatistique.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauSituationStructureStatistique,'',NotCol);

NotCol:='';
for C:=0 to FSSituations.TableauAvance.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauAvance.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauAvance,'',NotCol);

NotCol:='0-4';
for C:=0 to FSSituations.TableauPrincipal.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauPrincipal.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauPrincipal,'',NotCol);
end;

Procedure ProcAfficheSituationExiste(NumSituation:string; ParStructure,ParStatistique,CummuleAttachement:boolean);
var  OK,OKStructure,OKStatistique,OKDecision,OKCode,OKCode1,OKCode2,OKPalceMois:boolean;
     i,R,C,l,j,NSMarche,NStructure,NStatistique,NAvenant,RowMax,RowGlobal,ARow,Mois,MoisP:integer;
     Quantite,RetenueGarantie:real; CodeStructureSituation,DateAttachement:string[10];
     IntituleProjet,IntituleEtat,NotCol:string;
begin

IntituleProjet:=FSSituations.EditTypeProjet.Text;
IntituleEtat:='Situation';

NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
NStructure:=strtointeger(FSSituations.EditNStructureMarche.Text)*strtointeger(FSSituations.IndiceAfficheStructure.Text);
NStatistique:=strtointeger(FSSituations.EditNStatistiqueMarche.Text)*strtointeger(FSSituations.IndiceAfficheStatistique.Text);
NAvenant:=strtointeger(FSSituations.EditSituationNAvenant.Text)*strtointeger(FSSituations.IndiceAffichageAvenantSituation.Text);

FSSituations.TableauDecompteSituation.ColCount:=17;
FSSituations.TableauDecompteSituation.Cols[0].Text:='N°';
FSSituations.TableauDecompteSituation.Cols[1].Text:='Désignation';
FSSituations.TableauDecompteSituation.Cols[2].Text:='U';
FSSituations.TableauDecompteSituation.Cols[3].Text:='Q.'+IntituleProjet;
FSSituations.TableauDecompteSituation.Cols[4].Text:='Qte.Précéd.';
FSSituations.TableauDecompteSituation.Cols[5].Text:='Qte.Mois';
FSSituations.TableauDecompteSituation.Cols[6].Text:='Qte.Cummulé';
FSSituations.TableauDecompteSituation.Cols[7].Text:='P.U.';
FSSituations.TableauDecompteSituation.Cols[8].Text:='M.Précéd.';
FSSituations.TableauDecompteSituation.Cols[9].Text:='M.Mois';
FSSituations.TableauDecompteSituation.Cols[10].Text:='M.Cummulé';
FSSituations.TableauDecompteSituation.Cols[11].Text:='Trie';
FSSituations.TableauDecompteSituation.Cols[12].Text:=IntituleProjet;
FSSituations.TableauDecompteSituation.Cols[13].Text:='Code Produit';
FSSituations.TableauDecompteSituation.Cols[14].Text:='Qte.Avenant';
FSSituations.TableauDecompteSituation.Cols[15].Text:='Qte.Mois.O.M';
FSSituations.TableauDecompteSituation.Cols[16].Text:='Qte.Mois.O.A';

FSSituations.TableauDecompteSituation.RowCount:=2;
FSSituations.TableauDecompteSituation.Rows[1].Text:='';

if(NumSituation<>'')then
begin
     ListeDetailSituationMarche(FSSituations.TableauDetailSituationMarche,NumSituation,FSSituations.EditNSMarche.Text,lastlaters(FSSituations.EditDateAttachement.Text,4));
     R:=1;
     while(R<=FSSituations.TableauDetailSituationMarche.RowCount-1)do
     begin
          FSSituations.TableauDecompteSituation.Rows[R].Text:='';
          FSSituations.TableauDecompteSituation.Cells[0,R]:=FSSituations.TableauDetailSituationMarche.Cells[0,R];
          FSSituations.TableauDecompteSituation.Cells[1,R]:=FSSituations.TableauDetailSituationMarche.Cells[1,R];
          FSSituations.TableauDecompteSituation.Cells[2,R]:=FSSituations.TableauDetailSituationMarche.Cells[2,R];
          FSSituations.TableauDecompteSituation.Cells[3,R]:='0';
          FSSituations.TableauDecompteSituation.Cells[4,R]:=FSSituations.TableauDetailSituationMarche.Cells[3,R];
          FSSituations.TableauDecompteSituation.Cells[5,R]:=FSSituations.TableauDetailSituationMarche.Cells[4,R];
          FSSituations.TableauDecompteSituation.Cells[6,R]:=floattostr(strtoreal(FSSituations.TableauDetailSituationMarche.Cells[3,R])+strtoreal(FSSituations.TableauDetailSituationMarche.Cells[4,R]));
          FSSituations.TableauDecompteSituation.Cells[7,R]:=FSSituations.TableauDetailSituationMarche.Cells[9,R];
          FSSituations.TableauDecompteSituation.Cells[8,R]:='0';
          FSSituations.TableauDecompteSituation.Cells[9,R]:='0';
          FSSituations.TableauDecompteSituation.Cells[10,R]:='0';
          FSSituations.TableauDecompteSituation.Cells[11,R]:=TrieOptionArticleSituation(FSSituations.TableauDetailSituationMarche.Cells[10,R],ParStructure,ParStatistique);
          FSSituations.TableauDecompteSituation.Cells[12,R]:='0';
          FSSituations.TableauDecompteSituation.Cells[13,R]:=FSSituations.TableauDetailSituationMarche.Cells[11,R];

          FSSituations.TableauDecompteSituation.Cells[15,R]:=FSSituations.TableauDetailSituationMarche.Cells[6,R];
          FSSituations.TableauDecompteSituation.Cells[16,R]:=FSSituations.TableauDetailSituationMarche.Cells[8,R];

     R:=R+1;
     end;
end;

for i:=1 to R do
begin
     TypeProces:='Business'; FichierConcerne:='FDetail'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChDetailMarche:=Adresse;
     assignfile(FDetailMarche,ChDetailMarche);
     if FileExists(ChDetailMarche)then
     Reset(FDetailMarche)
     else Rewrite(FDetailMarche);
     Seek(FDetailMarche,0);
     OK:=false;
     while not eof(FDetailMarche)do
     begin
          Read(FDetailMarche,RDetailMarche);
          if((strtointeger(DTrie('A',RDetailMarche.CodeTrie))=NAvenant)
          and(TrieOptionArticleSituation(RDetailMarche.CodeTrie,ParStructure,ParStatistique)=TrieOptionArticleSituation(FSSituations.TableauDecompteSituation.Cells[11,i],ParStructure,ParStatistique)))
          then
          begin
               OK:=true;
               if(RDetailMarche.QuantiteGlobale>0)then
               FSSituations.TableauDecompteSituation.Cells[3,i]:=floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[3,i])+RDetailMarche.QuantiteGlobale);
          end;
     end;
     CloseFile(FDetailMarche);

     FSSituations.TableauDecompteSituation.Cells[14,i]:=floattostr(FuntionQuantiteListeAvenantMarche(FSSituations.TableauAvenantMarche,FSSituations.TableauDecompteSituation.Cells[11,i],ParStructure,ParStatistique));

     if((OK=true)and(strtoreal(FSSituations.TableauDecompteSituation.Cells[3,i])>0))then
     begin
     FSSituations.TableauDecompteSituation.Cells[3,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[3,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[4,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[4,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[5,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[5,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[6,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[6,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[7,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[7,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[8,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[4,i])*strtoreal(FSSituations.TableauDecompteSituation.Cells[7,i])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[9,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[5,i])*strtoreal(FSSituations.TableauDecompteSituation.Cells[7,i])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[10,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[12,i]:=vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[3,i])*strtoreal(FSSituations.TableauDecompteSituation.Cells[7,i])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[15,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[15,i],'3','N','');
     FSSituations.TableauDecompteSituation.Cells[16,i]:=vergule(FSSituations.TableauDecompteSituation.Cells[16,i],'3','N','');
     end
     else
     begin
     FSSituations.TableauDecompteSituation.Cells[3,i]:='';
     FSSituations.TableauDecompteSituation.Cells[4,i]:='';
     FSSituations.TableauDecompteSituation.Cells[5,i]:='';
     FSSituations.TableauDecompteSituation.Cells[6,i]:='';
     FSSituations.TableauDecompteSituation.Cells[7,i]:='';
     FSSituations.TableauDecompteSituation.Cells[8,i]:='';
     FSSituations.TableauDecompteSituation.Cells[9,i]:='';
     FSSituations.TableauDecompteSituation.Cells[10,i]:='';
     FSSituations.TableauDecompteSituation.Cells[12,i]:='';
     FSSituations.TableauDecompteSituation.Cells[15,i]:='';
     FSSituations.TableauDecompteSituation.Cells[16,i]:='';
     end;
end;

if(R>0)then FSSituations.TableauDecompteSituation.RowCount:=R+1
       else
       begin
            FSSituations.TableauDecompteSituation.RowCount:=2;
            FSSituations.TableauDecompteSituation.Rows[1].Text:='';
       end;

if(R>0)then
begin
TrierSituation(11);
RowGlobal:=FSSituations.TableauDecompteSituation.RowCount;
RowMax:=RowGlobal+2;
//FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+3;
FSSituations.TableauDecompteSituation.Rows[RowGlobal].Text:='';
FSSituations.TableauDecompteSituation.Cells[0,RowGlobal]:='';
FSSituations.TableauDecompteSituation.Cells[1,RowGlobal]:='Montant H.T. '+IntituleEtat;
FSSituations.TableauDecompteSituation.Cells[11,RowGlobal]:='ZZZ';
FSSituations.TableauDecompteSituation.Cells[8,RowGlobal]:='0,000';
FSSituations.TableauDecompteSituation.Cells[9,RowGlobal]:='0,000';
FSSituations.TableauDecompteSituation.Cells[10,RowGlobal]:='0,000';
FSSituations.TableauDecompteSituation.Cells[12,RowGlobal]:='0,000';
FSSituations.TableauDecompteSituation.Cells[13,RowGlobal]:='';
j:=0;
R:=1;
while(R<=RowGlobal-1)do
begin
     if(FSSituations.TableauDecompteSituation.Cells[11,R]<>'')
     then
     begin
     FSSituations.TableauDecompteSituation.Cells[8,RowGlobal]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,RowGlobal])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[9,RowGlobal]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,RowGlobal])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[10,RowGlobal]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,RowGlobal])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
     FSSituations.TableauDecompteSituation.Cells[12,RowGlobal]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,RowGlobal])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
          OKCode:=false;
          OKCode1:=false;
          OKCode2:=false;
          i:=RowGlobal+1;
          while((i<=RowMax)and((OKCode=false)or(OKCode1=false)or(OKCode2=false)))do
          begin
               if FSSituations.TableauDecompteSituation.Cells[11,i]=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],15)+'00.00.00.00'
               then
               begin
                    OKCode:=true;
                    FSSituations.TableauDecompteSituation.Cells[8,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[9,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[10,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[12,i+1]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,i+1])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
               end;
               if(FSSituations.TableauDecompteSituation.Cells[11,i]=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],17)+'.ZZ')
               then
               begin
                    OKCode1:=true;
                    FSSituations.TableauDecompteSituation.Cells[8,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[9,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[10,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[12,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
               end;
               if(FSSituations.TableauDecompteSituation.Cells[11,i]=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],20)+'.ZZ')
               then
               begin
                    OKCode2:=true;
                    FSSituations.TableauDecompteSituation.Cells[8,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[9,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[10,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,R])),'3','N','');
                    FSSituations.TableauDecompteSituation.Cells[12,i]:=Vergule(floattostr(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,i])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,R])),'3','N','');
               end;
          i:=i+1;
          end;

          if(OKCode=false)then
          begin
               //FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+(2*j);
               RowMax:=RowMax+(2*j);
               FSSituations.TableauDecompteSituation.Rows[RowMax-1].Text:='';
               FSSituations.TableauDecompteSituation.Rows[RowMax].Text:='';

               RStructureMarche:=ChercherStructureMarche(strtointeger(DTrie('M',FSSituations.TableauDecompteSituation.Cells[11,R])),strtointeger(DTrie('S',FSSituations.TableauDecompteSituation.Cells[11,R])));
               RStatistiqueMarche:=ChercherStatistiqueMarche(strtointeger(DTrie('M',FSSituations.TableauDecompteSituation.Cells[11,R])),strtointeger(DTrie('T',FSSituations.TableauDecompteSituation.Cells[11,R])));

               if(RStructureMarche.StructureMarche='')
               and(RStatistiqueMarche.StatistiqueMarche='')
               then  FSSituations.TableauDecompteSituation.Cells[1,RowMax-1]:='Marché Global:'
               else FSSituations.TableauDecompteSituation.Cells[1,RowMax-1]:=RStructureMarche.StructureMarche+': '+RStatistiqueMarche.StatistiqueMarche;
               FSSituations.TableauDecompteSituation.Cells[11,RowMax-1]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],15)+'00.00.00.00';
               FSSituations.TableauDecompteSituation.Rows[RowMax].Text:='';

               FSSituations.TableauDecompteSituation.Cells[1,RowMax]:='Montant H.T  '+RStructureMarche.StructureMarche;
               FSSituations.TableauDecompteSituation.Cells[11,RowMax]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],15)+'Z';
               FSSituations.TableauDecompteSituation.Cells[8,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[9,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[10,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[12,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[12,R],'3','N','');
               j:=1;
          end;
          if(OKCode1=false)then
          begin
               //FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+j;
               //ARow:=FSSituations.TableauDecompteSituation.RowCount-1;
               RowMax:=RowMax+j;

               FSSituations.TableauDecompteSituation.Rows[RowMax].Text:='';

               FSSituations.TableauDecompteSituation.Cells[1,RowMax]:='Total: '+LastLaters(FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],17),2);
               FSSituations.TableauDecompteSituation.Cells[11,RowMax]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],17)+'.ZZ';
               FSSituations.TableauDecompteSituation.Cells[8,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[9,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[10,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[12,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[12,R],'3','N','');
               j:=1;
          end;
          if(OKCode2=false)
          and((FSSituations.TableauDecompteSituation.Cells[2,R]='')or(FSSituations.TableauDecompteSituation.Cells[7,R]=''))
          and(longueur(FSSituations.TableauDecompteSituation.Cells[11,R])=26)   //31
          and(Lastlaters(FSSituations.TableauDecompteSituation.Cells[11,R],8)<>'00.00.00')
          then
          begin
               //FSSituations.TableauDecompteSituation.RowCount:=FSSituations.TableauDecompteSituation.RowCount+j;
               //ARow:=FSSituations.TableauDecompteSituation.RowCount-1;
               RowMax:=RowMax+1;
               FSSituations.TableauDecompteSituation.Rows[RowMax].Text:='';

               FSSituations.TableauDecompteSituation.Cells[1,RowMax]:='Sous Total: '+LastLaters(FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],20),5);
               FSSituations.TableauDecompteSituation.Cells[11,RowMax]:=FirstLaters(FSSituations.TableauDecompteSituation.Cells[11,R],20)+'.ZZ';
               FSSituations.TableauDecompteSituation.Cells[8,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[9,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[10,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'3','N','');
               FSSituations.TableauDecompteSituation.Cells[12,RowMax]:=Vergule(FSSituations.TableauDecompteSituation.Cells[12,R],'3','N','');
               j:=1;
          end;
     end;
R:=R+1;
end;
if(RowMax>0)
then FSSituations.TableauDecompteSituation.RowCount:=RowMax+1
else FSSituations.TableauDecompteSituation.RowCount:=2;

TrierSituation(11);
{************************* STATISTIQUES ****************************}
NSMarche:=strtointeger(FSSituations.EditNSMarche.Text);
ProcAfficheStructureStatistiqueExiste(FSSituations.TableauSituationStructureStatistique,NSMarche,strtointeger(NumSituation),ParStructure,ParStatistique);
FSSituations.RBMarche.Checked:=true;

for ARow:=1 to FSSituations.TableauDecompteSituation.RowCount-1 do
begin
     if(Longueur(FSSituations.TableauDecompteSituation.Cells[11,ARow])>15)
     then
     begin
          if(FSSituations.TableauDecompteSituation.Cells[11,ARow][16]='Z')
          then
          begin
               R:=1;
               while(R<=FSSituations.TableauSituationStructureStatistique.RowCount-1)do
               begin
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=Firstlaters(FSSituations.TableauDecompteSituation.Cells[11,ARow],5))then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[3,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[4,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[5,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[6,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                    end
                    else
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=Firstlaters(FSSituations.TableauDecompteSituation.Cells[11,ARow],10))then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[3,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,R])+strtoreal(FSSituations.TableauDecompteSituation.Cells[8,ARow]));
                         FSSituations.TableauSituationStructureStatistique.Cells[4,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,R])+strtoreal(FSSituations.TableauDecompteSituation.Cells[9,ARow]));
                         FSSituations.TableauSituationStructureStatistique.Cells[5,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,R])+strtoreal(FSSituations.TableauDecompteSituation.Cells[10,ARow]));
                         FSSituations.TableauSituationStructureStatistique.Cells[6,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,R])+strtoreal(FSSituations.TableauDecompteSituation.Cells[12,ARow]));
                    end
                    else
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=Firstlaters(FSSituations.TableauDecompteSituation.Cells[11,ARow],15))then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[3,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[8,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[4,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[9,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[5,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[10,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                         FSSituations.TableauSituationStructureStatistique.Cells[6,R]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,R])+(strtoreal(FSSituations.TableauDecompteSituation.Cells[12,ARow])*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                    end;

               R:=R+1;
               end;
          end;
     end;
end;

TypeProces:='Business'; FichierConcerne:='FDetail'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDetailMarche:=Adresse;
assignfile(FDetailMarche,ChDetailMarche);
if FileExists(ChDetailMarche)then
Reset(FDetailMarche)
else Rewrite(FDetailMarche);
Seek(FDetailMarche,0);
OK:=false;
FSSituations.EditValeurMarche.Text:='0';
while not eof(FDetailMarche)and(OK=false)do
begin
     Read(FDetailMarche,RDetailMarche);
     if(DTrie('M',RDetailMarche.CodeTrie)=FSSituations.EditNSMarche.Text)
     then
     begin
          CodeStructureSituation:='';
          if((ParStructure=true)or(ParStatistique=true))
          then CodeStructureSituation:=completezerogauche(DTrie('M',RDetailMarche.CodeTrie),'5')+completezerogauche(DTrie('S',RDetailMarche.CodeTrie),'5')
          else CodeStructureSituation:=completezerogauche(DTrie('M',RDetailMarche.CodeTrie),'5')+'00000';

          FSSituations.EditValeurMarche.Text:=floattostr(strtoreal(FSSituations.EditValeurMarche.Text)+(RDetailMarche.QuantiteGlobale*RDetailMarche.PrixUnitaire));
          R:=1;
          while R<=FSSituations.TableauSituationStructureStatistique.RowCount-1 do
          begin
               if(Longueur(FSSituations.TableauSituationStructureStatistique.Cells[0,R])=10)then
               begin
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=CodeStructureSituation)then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[7,R]:=
                         floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[7,R])+(RDetailMarche.QuantiteGlobale*RDetailMarche.PrixUnitaire));
                    end;
               end;

               if(Longueur(FSSituations.TableauSituationStructureStatistique.Cells[0,R])=5)then
               begin
                    if(FSSituations.TableauSituationStructureStatistique.Cells[0,R]=completezerogauche(DTrie('M',RDetailMarche.CodeTrie),'5'))then
                    begin
                         FSSituations.TableauSituationStructureStatistique.Cells[7,R]:=
                         floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[7,R])+(RDetailMarche.QuantiteGlobale*RDetailMarche.PrixUnitaire*strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[1,R])/100));
                    end;
               end;
          R:=R+1;
          end;
     end;
end;
CloseFile(FDetailMarche);
FSSituations.EditValeurMarche.Text:=vergule(FSSituations.EditValeurMarche.Text,'2','C','')+' DA';

R:=1;
while(R<=FSSituations.TableauSituationStructureStatistique.RowCount-1)do
begin
     if(FSSituations.TableauSituationStructureStatistique.Cells[8,R]<>'')then
     begin
          l:=R;
          while(l<=FSSituations.TableauSituationStructureStatistique.RowCount-1)do
          begin
               if(FSSituations.TableauSituationStructureStatistique.Cells[8,R]=FSSituations.TableauSituationStructureStatistique.Cells[0,l])then
               begin
                    FSSituations.TableauSituationStructureStatistique.Cells[3,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,R]));
                    FSSituations.TableauSituationStructureStatistique.Cells[4,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[4,R]));
                    FSSituations.TableauSituationStructureStatistique.Cells[5,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,R]));
                    FSSituations.TableauSituationStructureStatistique.Cells[6,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[6,R]));
                    FSSituations.TableauSituationStructureStatistique.Cells[7,l]:=floattostr(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[7,l])+strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[7,R]));
               end;
          l:=l+1;
          end;
     end;
R:=R+1;
end;

MiseAJourValeurStatistique(FSSituations.TableauSituationStructureStatistique,strtointeger(NumSituation)-1);

{*****************************PRINCIPALE**********************************}
ProcAffichePrincipale(NSMarche);
ProcAfficheAvance(NSMarche);
ProcRemplireMarche(strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[3,FSSituations.TableauSituationStructureStatistique.RowCount-1]),strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,FSSituations.TableauSituationStructureStatistique.RowCount-1]));
ProcRemplireFormule;
{*****************************PRINCIPALE**********************************}
{*****************************MEMOIRE**********************************}
TypeProces:='Business'; FichierConcerne:='FMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChMarche:=Adresse;
assignfile(FMarche,ChMarche);
if FileExists(ChMarche)then
Reset(FMarche)
else Rewrite(FMarche);
Seek(FMarche,0);
OK:=false;
RetenueGarantie:=0;
while not eof(FMarche)and(OK=false)do
begin
     Read(FMarche,RMarche);
     if(RMarche.NSMarche=NSMarche)then
     begin
          OK:=true;
          RetenueGarantie:=RMarche.RetenueGarantie;
     end;
end;
CloseFile(FMarche);

FSSituations.Memoire.Lines.Clear;
if((strtoreal(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1])>0)
or((RetenueGarantie>0)and(strtoreal(FSSituations.TableauPrincipal.Cells[6,1])>0)))
then
begin
     FSSituations.Memoire.Lines.Add('Pour mémoire:');
     FSSituations.Memoire.Lines.Add('');

     if(strtoreal(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1])>0)
     then
     begin
          FSSituations.Memoire.Lines.Add('rembourssement des avances cumulés au '+FSSituations.EditDateAttachement.Text+' de '+vergule(floattostr((strtoreal(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1])/strtoreal(FSSituations.TableauAvance.Cells[3,FSSituations.TableauAvance.RowCount-1]))*100),'2','C','')+' % soit: '+vergule(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1],'2','C','')+' DA');
          FSSituations.Memoire.Lines.Add('');
     end;

     if((RetenueGarantie>0)
     and(strtoreal(FSSituations.TableauPrincipal.Cells[6,1])>0))
     then
     begin
          FSSituations.Memoire.Lines.Add('Retenue de garantie cumulées au '+FSSituations.EditDateAttachement.Text+' soit: '+Vergule(floattostr((strtoreal(FSSituations.TableauSituationStructureStatistique.Cells[5,FSSituations.TableauSituationStructureStatistique.RowCount-1])+strtoreal(FSSituations.TableauAvance.Cells[3,FSSituations.TableauAvance.RowCount-1])-strtoreal(FSSituations.TableauAvance.Cells[2,FSSituations.TableauAvance.RowCount-1])-strtoreal(FSSituations.TableauAvance.Cells[5,FSSituations.TableauAvance.RowCount-1]))*RetenueGarantie/100),'2','C','')+' DA');
          FSSituations.Memoire.Lines.Add('');
     end;

FSSituations.Memoire.Height:=MaxInt((FSSituations.Memoire.Lines.Capacity*18),200);
end;
{***************************FIN MEMOIRE**********************************}
R:=1;
while(R<=FSSituations.TableauDecompteSituation.RowCount-1)do
begin
     FSSituations.TableauDecompteSituation.Cells[1,R]:=' '+FSSituations.TableauDecompteSituation.Cells[1,R];
     FSSituations.TableauDecompteSituation.Cells[3,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[3,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[4,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[4,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[5,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[5,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[6,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[6,R],'3','C','');
     FSSituations.TableauDecompteSituation.Cells[7,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[7,R],'2','C','');
     FSSituations.TableauDecompteSituation.Cells[8,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[8,R],'2','C','');
     FSSituations.TableauDecompteSituation.Cells[9,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[9,R],'2','C','');
     FSSituations.TableauDecompteSituation.Cells[10,R]:=vergule(FSSituations.TableauDecompteSituation.Cells[10,R],'2','C','');
R:=R+1;
end;

R:=1;
while(R<=FSSituations.TableauSituationStructureStatistique.RowCount-1)do
begin
     FSSituations.TableauSituationStructureStatistique.Cells[3,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[3,R],'2','C','');
     FSSituations.TableauSituationStructureStatistique.Cells[4,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[4,R],'2','C','');
     FSSituations.TableauSituationStructureStatistique.Cells[5,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[5,R],'2','C','');
     FSSituations.TableauSituationStructureStatistique.Cells[6,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[6,R],'2','C','');
     FSSituations.TableauSituationStructureStatistique.Cells[7,R]:=vergule(FSSituations.TableauSituationStructureStatistique.Cells[7,R],'2','C','');
R:=R+1;
end;

R:=1;
while(R<=FSSituations.TableauAvance.RowCount-1)do
begin
     FSSituations.TableauAvance.Cells[2,R]:=vergule(FSSituations.TableauAvance.Cells[2,R],'2','C','');
     FSSituations.TableauAvance.Cells[3,R]:=vergule(FSSituations.TableauAvance.Cells[3,R],'2','C','');
     FSSituations.TableauAvance.Cells[4,R]:=vergule(FSSituations.TableauAvance.Cells[4,R],'2','C','');
     FSSituations.TableauAvance.Cells[5,R]:=vergule(FSSituations.TableauAvance.Cells[5,R],'2','C','');
R:=R+1;
end;

R:=1;
while(R<=FSSituations.TableauPrincipal.RowCount-1)do
begin
     FSSituations.TableauPrincipal.Cells[6,R]:=vergule(FSSituations.TableauPrincipal.Cells[6,R],'2','C','');
R:=R+1;
end;

{************************* FIN STATISTIQUES ****************************}
end;

NotCol:='11-13';
for C:=0 to FSSituations.TableauDecompteSituation.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauDecompteSituation.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauDecompteSituation,'',NotCol);

NotCol:='0;1;8';
for C:=0 to FSSituations.TableauSituationStructureStatistique.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauSituationStructureStatistique.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauSituationStructureStatistique,'',NotCol);

NotCol:='';
for C:=0 to FSSituations.TableauAvance.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauAvance.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauAvance,'',NotCol);

NotCol:='0-4';
for C:=0 to FSSituations.TableauPrincipal.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSSituations.TableauPrincipal.ColWidths[C]:=0;
AjusterColWidth(FSSituations.TableauPrincipal,'',NotCol);
end;

Function ProcNouveauNumSituationMarche(NSMarche,NAttachement:integer; RBNumerotationParAnnee:boolean; AnneeSituation:string):integer;
var  NSituation:integer;  OKSituation:boolean;
begin
      TypeProces:='Business'; FichierConcerne:='FSituationMarche';
      if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
      begin
           //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
      end;
      ChSituationMarcheRecherche:=Adresse;
      assignfile(FSituationMarcheRecherche,ChSituationMarcheRecherche);
      if FileExists(ChSituationMarcheRecherche)then
      Reset(FSituationMarcheRecherche)
      else Rewrite(FSituationMarcheRecherche);
      Seek(FSituationMarcheRecherche,0);
      if(NAttachement=0)
      then NSituation:=0
      else NSituation:=1;
      OKSituation:=false;
      while not eof(FSituationMarcheRecherche)and(OKSituation=false)do
      begin
           Read(FSituationMarcheRecherche,RSituationMarcheRecherche);
      
           if(RSituationMarcheRecherche.NSMarche=NSMarche)then
           begin
                if(strtointeger(RSituationMarcheRecherche.NAttachement)=NAttachement)
                and(Lastlaters(RSituationMarcheRecherche.DateSituationMarche,4)=AnneeSituation)then
                begin
                     OKSituation:=true;
                     NSituation:=RSituationMarcheRecherche.NSituationMarche;
                end
                else
                if(RBNumerotationParAnnee=true)then
                begin
                     if(Lastlaters(RSituationMarcheRecherche.DateSituationMarche,4)=AnneeSituation)then
                     begin
                          if(RSituationMarcheRecherche.NSituationMarche>=NSituation)then NSituation:=RSituationMarcheRecherche.NSituationMarche+1;
                     end;
                end
                else
                begin
                     if(RSituationMarcheRecherche.NSituationMarche>=NSituation)then NSituation:=RSituationMarcheRecherche.NSituationMarche+1;
                end;
           end;
      end;
      CloseFile(FSituationMarcheRecherche);

      ProcNouveauNumSituationMarche:=NSituation;
end;

Function ProcLastNumSituationMarchePeriode(NSMarche:integer; DateLast:string):string;
var  i:integer;    NSituation,DateTrouver:string;
begin
      TypeProces:='Business'; FichierConcerne:='FSituationMarche';
      if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
      begin
           //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
      end;
      ChSituationMarcheRecherche:=Adresse;
      assignfile(FSituationMarcheRecherche,ChSituationMarcheRecherche);
      if FileExists(ChSituationMarcheRecherche)then
      Reset(FSituationMarcheRecherche)
      else Rewrite(FSituationMarcheRecherche);
      Seek(FSituationMarcheRecherche,0);
      i:=0;
      NSituation:='';
      DateTrouver:='';
      while not eof(FSituationMarcheRecherche)do
      begin
           Read(FSituationMarcheRecherche,RSituationMarcheRecherche);
           if(RSituationMarcheRecherche.NSMarche=NSMarche)and(stringtodate(RSituationMarcheRecherche.DateSituationMarche,'ProcLastNumSituationMarchePeriode')<stringtodate(DateLast,'ProcLastNumSituationMarchePeriode'))then
           begin
                if(DateTrouver='')then DateTrouver:=RSituationMarcheRecherche.DateSituationMarche;

                if(stringtodate(RSituationMarcheRecherche.DateSituationMarche,'ProcLastNumSituationMarchePeriode')>=stringtodate(DateTrouver,'ProcLastNumSituationMarchePeriode'))then
                begin
                     NSituation:=inttostr(RSituationMarcheRecherche.NSituationMarche);
                     DateTrouver:=RSituationMarcheRecherche.DateSituationMarche;
                end;
           end;
           i:=i+1;
      end;
      CloseFile(FSituationMarcheRecherche);

      ProcLastNumSituationMarchePeriode:=NSituation;
end;

procedure TFSSituations.TableauDecompteSituationDblClick(Sender: TObject);
begin
     TrierTableauARowSpecial(FSSituations.TableauDecompteSituation,1,FSSituations.TableauDecompteSituation.RowCount-1,0,'11','','+');
end;

procedure TFSSituations.TableauDetailAttachementDblClick(Sender: TObject);
begin
     TrierTableauARowSpecial(FSSituations.TableauDetailAttachement,1,FSSituations.TableauDetailAttachement.RowCount-1,0,'10','','+');
end;

Procedure CumuleSituationMarchePeriode(NSMarche,DateBegin,DateEnde:string; var CumulSituationTTCBrut,ValeurRetenueGarantie,CumulRetenueGarantie,CumulSituationTTCNet:real; var NombreSituation:integer);
var  OKSituation:boolean;
begin
     CumulSituationTTCBrut:=0;
     ValeurRetenueGarantie:=0;
     CumulRetenueGarantie:=0;
     CumulSituationTTCNet:=0;
     NombreSituation:=0;

     TypeProces:='Business'; FichierConcerne:='FSituationMarche';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChSituationMarcheRecherche:=Adresse;
     assignfile(FSituationMarcheRecherche,ChSituationMarcheRecherche);
     if FileExists(ChSituationMarcheRecherche)then
     Reset(FSituationMarcheRecherche)
     else Rewrite(FSituationMarcheRecherche);
     Seek(FSituationMarcheRecherche,0);
     while not eof(FSituationMarcheRecherche)do
     begin
          Read(FSituationMarcheRecherche,RSituationMarcheRecherche);

          if(NSMarche<>'')then
          begin
               if(RSituationMarcheRecherche.NSMarche=strtointeger(NSMarche))
               then OKSituation:=true
               else OKSituation:=false;

          end
          else OKSituation:=true;

          if(OKSituation=true)then
          begin
               if(datecorrecte(DateBegin))then
               begin
                    if(stringtodate(RSituationMarcheRecherche.DateSituationMarche,'CumuleSituationMarchePeriode')>=stringtodate(DateBegin,'CumuleSituationMarchePeriode'))
                    then OKSituation:=true
                    else OKSituation:=false;
               end
               else OKSituation:=true;

               if(datecorrecte(DateEnde))then
               begin
                    if(stringtodate(RSituationMarcheRecherche.DateSituationMarche,'CumuleSituationMarchePeriode')<=stringtodate(DateEnde,'CumuleSituationMarchePeriode'))
                    then OKSituation:=true
                    else OKSituation:=false;
               end
               else OKSituation:=true;
          end;

          if(OKSituation=true)then
          begin
               NombreSituation:=NombreSituation+1;
               CumulSituationTTCBrut:=CumulSituationTTCBrut+RSituationMarcheRecherche.MontantSituationTTCBrut;
               CumulRetenueGarantie:=CumulRetenueGarantie+RSituationMarcheRecherche.MontantRetenueGarantie;
               CumulSituationTTCNet:=CumulSituationTTCNet+RSituationMarcheRecherche.MontantSituationTTCNet;
          end;
     end;
     CloseFile(FSituationMarcheRecherche);

     if(CumulSituationTTCBrut<>0)then ValeurRetenueGarantie:=(CumulRetenueGarantie/CumulSituationTTCBrut)*100;
end;

procedure TFSSituations.AfficheOperationSituationClick(Sender: TObject);
begin
     if(FSSituations.AfficheOperationSituation.Height=33)
     then FSSituations.AfficheOperationSituation.Height:=273
     else FSSituations.AfficheOperationSituation.Height:=33;
end;

procedure TFSSituations.BitBtn57Click(Sender: TObject);
begin
     FSSituations.AfficheOperationSituation.Height:=33;
end;

procedure TFSSituations.BitBtn8Click(Sender: TObject);
var  R,C:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;  ImprimeTableau:boolean;
begin
     FSSituations.AfficheOperationSituation.Height:=33;
     
     TitreEtat:='Liste Situations marché '+FSSituations.EditMarche.Text+' Année '+ExerciceAnnee;
     ImprimeTableau:=true;
     GrasARow:='0;'+inttostr(FSSituations.TableauListeSituation.RowCount-1);
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0;2-5;10-12';
     RightARow:='';
     RightACol:='6-9;13';
     R:=0;
     OptionsImpression(FSSituations.TableauListeSituation,'Center',R,1,TitreEtat,FSSituations.RBAjustementSituation.Checked,FSSituations.RBOrientationPapierSituation.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeTableau,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSSituations.BitBtn10Click(Sender: TObject);
begin
     FSSituations.AfficheOperationSituation.Height:=33;
     TableauToExcel(FSSituations.TableauListeSituation,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,'Liste Situations marché '+FSSituations.EditMarche.Text,'Année '+ExerciceAnnee,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

procedure TFSSituations.TableauSituationStructureStatistiqueDblClick(
  Sender: TObject);
begin
     AjusterColWidth(FSSituations.TableauSituationStructureStatistique,'','');
end;

Procedure MiseAJourValeurStatistique(TableauStatistique:TStringGrid; NSituation:integer);
var   R:integer;  OKCode:boolean;
begin
TypeProces:='Business'; FichierConcerne:='FDataStatistiqueSituation '+inttostr(NSituation);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDataStatistiqueSituation:=Adresse;
assignfile(FDataStatistiqueSituation,ChDataStatistiqueSituation);
if FileExists(ChDataStatistiqueSituation)then
begin
     Reset(FDataStatistiqueSituation);

     Seek(FDataStatistiqueSituation,0);
     while not eof(FDataStatistiqueSituation) do
     begin
          Read(FDataStatistiqueSituation,RDataStatistiqueSituation); 
          R:=1;
          OKCode:=false;
          while(R<=TableauStatistique.RowCount-1)and(OKCode=false)do
          begin
               if(RDataStatistiqueSituation.DataCode=TableauStatistique.Cells[0,R]+TableauStatistique.Cells[8,R])then
               begin
                    OKCode:=true;
                    TableauStatistique.Cells[3,R]:=floattostr(RDataStatistiqueSituation.ValeurData);
                    TableauStatistique.Cells[5,R]:=floattostr(strtoreal(TableauStatistique.Cells[3,R])+strtoreal(TableauStatistique.Cells[4,R]));
               end;
          R:=R+1;
          end;
     end;
     CloseFile(FDataStatistiqueSituation);
end;

end;

procedure TFSSituations.EditListeNumAvisModifierDblClick(Sender: TObject);
begin
     FSSituations.EditListeNumAvisModifier.Text:='';
end;

procedure TFSSituations.EditListeNumAvisDblClick(Sender: TObject);
begin
     FSSituations.EditListeNumAvis.Text:='';
end;

procedure TFSSituations.BitBtn11Click(Sender: TObject);
begin
     if ChercherAvis(FSSituations.EditListeNumAvisModifier.Text,FSSituations.EditBaseAvisFichierConcerne.Text,'','',FSSituations.RBModePayementNumAvis.Checked,FSSituations.RBModePayementModePayement.Checked,FSSituations.RBModePayementDomiciliation.Checked,FSSituations.RBModePayementNumPiece.Checked,FSSituations.RBModePayementDateAvis.Checked,FSSituations.RBModePayementDateExecution.Checked,FSSituations.TableauListeAvisTrouver,FSSituations.EditListeNumAvisTrouver,FSSituations.EditListeModePaiementTrouver,FSSituations.EditListeDomiciliationAvisTrouver,FSSituations.EditListeDomiciliationPieceTrouver,FSSituations.EditListeNumPieceTrouver,FSSituations.EditListeDateTrouver,FSSituations.EditMemoLiseAvisTrouver)then
     begin
          FSSituations.EditModePaiementModifier.Text:=FSSituations.EditListeModePaiementTrouver.Text;
          FSSituations.EditDomiciliationPieceModifier.Text:=FSSituations.EditListeDomiciliationPieceTrouver.Text;
          FSSituations.EditNumPieceModifier.Text:=FSSituations.EditListeNumPieceTrouver.Text;
     end
     else
     begin
          FSSituations.AfficheListeAvis.Visible:=true;
          FSSituations.EditSourceDemande.Text:='Modifier';
          FSSituations.EditDateDebutAvis.Date:=strtodate('01/01/'+ExerciceAnnee);;
          FSSituations.EditDateFinAvis.Date:=date;
          RSituationMarcheCopie:=ChercherSituationMarche(FSSituations.EditNSMarche.Text,FSSituations.EditNSituationMarche.Text,'');
          RMarcheCopie:=ChercherMarche(RSituationMarcheCopie.NSMarche);
          ProcListeAvisFicheSaisie(FSSituations.TableauListeAvis,FSSituations.EditBaseAvisFichierConcerne.Text,FSSituations.EditEtatOrigineImputationAvis.Text,datetostr(FSSituations.EditDateDebutAvis.Date),datetostr(FSSituations.EditDateFinAvis.Date),RMarcheCopie.TypeProces,RMarcheCopie.FichierConcerneTiers,RMarcheCopie.CodeMaitreOuvrage);
     end;
end;

procedure TFSSituations.TableauListeAvisDblClick(Sender: TObject);
begin
     if(FSSituations.TableauListeAvis.Cells[0,FSSituations.TableauListeAvis.Row]='')
     then FSSituations.TableauListeAvis.Cells[0,FSSituations.TableauListeAvis.Row]:='OK'
     else FSSituations.TableauListeAvis.Cells[0,FSSituations.TableauListeAvis.Row]:='';
end;

procedure TFSSituations.TableauListeAvisKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  R,l:integer;  MontantAvis:real;   ListeNumAvis,ListeModePayement,ListeDomiciliation,ListeNumPiece:string;
begin
     MontantAvis:=0;
     ListeNumAvis:='';
     R:=1;
     l:=0;
     while(R<=FSSituations.TableauListeAvis.RowCount-1)do
     begin
          if(FSSituations.TableauListeAvis.Cells[0,R]='OK')then
          begin
               l:=l+1;
               if(ListeNumAvis='')
               then ListeNumAvis:=FSSituations.TableauListeAvis.Cells[1,R]
               else ListeNumAvis:=ListeNumAvis+';'+FSSituations.TableauListeAvis.Cells[1,R];

               if(ListeModePayement='')
               then ListeModePayement:=FSSituations.TableauListeAvis.Cells[3,R]
               else ListeModePayement:=ListeModePayement+';'+FSSituations.TableauListeAvis.Cells[3,R];

               if(ListeDomiciliation='')
               then ListeDomiciliation:=FSSituations.TableauListeAvis.Cells[4,R]
               else ListeDomiciliation:=ListeDomiciliation+';'+FSSituations.TableauListeAvis.Cells[4,R];

               if(ListeNumPiece='')
               then ListeNumPiece:=FSSituations.TableauListeAvis.Cells[5,R]
               else ListeNumPiece:=ListeNumPiece+';'+FSSituations.TableauListeAvis.Cells[5,R];

               MontantAvis:=MontantAvis+strtoreal(FSSituations.TableauListeAvis.Cells[6,R]);
          end;
     R:=R+1;
     end;

     if(l=0)then ListeNumAvis:=FSSituations.TableauListeAvis.Cells[1,FSSituations.TableauListeAvis.Row];

     if(FSSituations.EditSourceDemande.Text='Modifier')then
     begin
          FSSituations.EditListeNumAvisModifier.Text:=ListeNumAvis;
          FSSituations.EditModePaiementModifier.Text:=ListeModePayement;
          FSSituations.EditDomiciliationPieceModifier.Text:=ListeDomiciliation;
          FSSituations.EditNumPieceModifier.Text:=ListeNumPiece;
          FSSituations.EditMontantAvisModifier.Text:=Vergule(floattostr(MontantAvis),'2','C','');
     end;

     if(FSSituations.EditSourceDemande.Text='Valider')then
     begin
          FSSituations.EditListeNumAvis.Text:=ListeNumAvis;
          FSSituations.EditModePaiement.Text:=ListeModePayement;
          FSSituations.EditDomiciliationPiece.Text:=ListeDomiciliation;
          FSSituations.EditNumPiece.Text:=ListeNumPiece;
     end;

     FSSituations.AfficheListeAvis.Visible:=false;
end;

procedure TFSSituations.BitBtn13Click(Sender: TObject);
begin
     FSSituations.AfficheListeAvis.Visible:=false;
end;

procedure TFSSituations.EditDateDebutAvisChange(Sender: TObject);
begin
     RSituationMarcheCopie:=ChercherSituationMarche(FSSituations.EditNSMarche.Text,FSSituations.EditNSituationMarche.Text,'');
     RMarcheCopie:=ChercherMarche(RSituationMarcheCopie.NSMarche);
     ProcListeAvisFicheSaisie(FSSituations.TableauListeAvis,FSSituations.EditBaseAvisFichierConcerne.Text,FSSituations.EditEtatOrigineImputationAvis.Text,datetostr(FSSituations.EditDateDebutAvis.Date),datetostr(FSSituations.EditDateFinAvis.Date),RMarcheCopie.TypeProces,RMarcheCopie.FichierConcerneTiers,RMarcheCopie.CodeMaitreOuvrage);
end;

procedure TFSSituations.BitBtn12Click(Sender: TObject);
begin
     if ChercherAvis(FSSituations.EditListeNumAvis.Text,FSSituations.EditBaseAvisFichierConcerne.Text,'','',FSSituations.RBModePayementNumAvis.Checked,FSSituations.RBModePayementModePayement.Checked,FSSituations.RBModePayementDomiciliation.Checked,FSSituations.RBModePayementNumPiece.Checked,FSSituations.RBModePayementDateAvis.Checked,FSSituations.RBModePayementDateExecution.Checked,FSSituations.TableauListeAvisTrouver,FSSituations.EditListeNumAvisTrouver,FSSituations.EditListeModePaiementTrouver,FSSituations.EditListeDomiciliationAvisTrouver,FSSituations.EditListeDomiciliationPieceTrouver,FSSituations.EditListeNumPieceTrouver,FSSituations.EditListeDateTrouver,FSSituations.EditMemoLiseAvisTrouver)then
     begin
          FSSituations.EditModePaiement.Text:=FSSituations.EditListeModePaiementTrouver.Text;
          FSSituations.EditDomiciliationPiece.Text:=FSSituations.EditListeDomiciliationPieceTrouver.Text;
          FSSituations.EditNumPiece.Text:=FSSituations.EditListeNumPieceTrouver.Text;
     end
     else
     begin
          FSSituations.AfficheListeAvis.Visible:=true;
          FSSituations.EditSourceDemande.Text:='Valider';
          FSSituations.EditDateDebutAvis.Date:=strtodate('01/01/'+ExerciceAnnee);;
          FSSituations.EditDateFinAvis.Date:=date;
          RMarcheCopie:=ChercherMarche(strtointeger(FSSituations.EditNSMarche.Text));
          ProcListeAvisFicheSaisie(FSSituations.TableauListeAvis,FSSituations.EditBaseAvisFichierConcerne.Text,FSSituations.EditEtatOrigineImputationAvis.Text,datetostr(FSSituations.EditDateDebutAvis.Date),datetostr(FSSituations.EditDateFinAvis.Date),RMarcheCopie.TypeProces,RMarcheCopie.FichierConcerneTiers,RMarcheCopie.CodeMaitreOuvrage);
     end;
end;

procedure TFSSituations.EditBaseAvisFichierConcerneKeyPress(
  Sender: TObject; var Key: Char);
begin
if(key='+')then
begin
      FSSituations.EditOperationBaseAvisFichierTiersConserne.Text:=key;
      FSSituations.EditAddBaseAvisFichierTiersConserne.Text:=FSSituations.EditBaseAvisFichierConcerne.Text;
end;
key:=#0;
end;

procedure TFSSituations.EditBaseAvisFichierConcerneSelect(Sender: TObject);
begin
     if(FSSituations.EditOperationBaseAvisFichierTiersConserne.Text='+')then
     begin
          if(FSSituations.EditAddBaseAvisFichierTiersConserne.Text<>'')then
          begin
               FSSituations.EditAddBaseAvisFichierTiersConserne.Text:=FSSituations.EditAddBaseAvisFichierTiersConserne.Text+';'+FSSituations.EditBaseAvisFichierConcerne.Text;
          end;

     FSSituations.TimerADDBaseAvisFichierConcerne.Enabled:=true;
     end;
end;

procedure TFSSituations.TimerADDBaseAvisFichierConcerneTimer(
  Sender: TObject);
begin
     FSSituations.TimerADDBaseAvisFichierConcerne.Enabled:=false;

     if(FSSituations.EditOperationBaseAvisFichierTiersConserne.Text='+')then
     begin
          if(FSSituations.EditAddBaseAvisFichierTiersConserne.Text<>'')then
          begin
               FSSituations.EditBaseAvisFichierConcerne.Text:=FSSituations.EditAddBaseAvisFichierTiersConserne.Text;
          end;

     FSSituations.EditOperationBaseAvisFichierTiersConserne.Text:='';
     FSSituations.EditAddBaseAvisFichierTiersConserne.Text:='';
     end;
end;

procedure TFSSituations.IncrimentEditMaxColWidthClick(Sender: TObject;
  Button: TUDBtnType);
var C:integer;  NotCol:string;
begin
     NotCol:='10;11';
     for C:=1 to FSSituations.TableauDecompteSituation.ColCount-1 do if existenumintexte(inttostr(C),NotCol)then FSSituations.TableauDecompteSituation.ColWidths[C]:=0;
     AjusterColWidth(FSSituations.TableauDecompteSituation,'',NotCol);

     for C:=1 to FSSituations.TableauDecompteSituation.ColCount-1 do
     begin
          if(FSSituations.TableauDecompteSituation.ColWidths[C]>strtointeger(FSSituations.EditMaxColWidth.Text))then FSSituations.TableauDecompteSituation.ColWidths[C]:=strtointeger(FSSituations.EditMaxColWidth.Text);
     end;
end;

procedure TFSSituations.BitValiderNewSituationClick(Sender: TObject);
var  i,iSelect:integer;   OKSituation:boolean;
begin
      TypeProces:='Business'; FichierConcerne:='FSituationMarche';
      if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
      begin
           //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
      end;
      ChSituationMarche:=Adresse;
      assignfile(FSituationMarche,ChSituationMarche);
      if FileExists(ChSituationMarche)then
      Reset(FSituationMarche)
      else Rewrite(FSituationMarche);
      Seek(FSituationMarche,0);
      i:=0;
      OKSituation:=false;
      while not eof(FSituationMarche)and(OKSituation=false)do
      begin
           Read(FSituationMarche,RSituationMarche);
           if(RSituationMarche.NSMarche=strtointeger(FSSituations.EditNSMarche.Text))
           and(RSituationMarche.NSituationMarche=strtointeger(FSSituations.EditNSituationMarcheNew.Text))
           then
           begin
                OKSituation:=true;
                iSelect:=i;
           end;
      i:=i+1;
      end;

      if(OKSituation=true)then i:=iSelect;
      RSituationMarche.DesignationSituation:=FSSituations.EditDesignationSituationNew.Text;
      RSituationMarche.NSituationMarche:=strtointeger(FSSituations.EditNSituationMarcheNew.Text);
      RSituationMarche.NSMarche:=strtointeger(FSSituations.EditNSMarcheNew.Text);
      RSituationMarche.NAttachement:=FSSituations.EditNAttachementNew.Text;
      RSituationMarche.ValiditeSituation:=FSSituations.RBValiditeSituationNew.Checked;
      RSituationMarche.DateSituationMarche:=datetostr(FSSituations.EditDateSituationMarcheNew.Date);
      RSituationMarche.ModePaiement:=FSSituations.EditModePaiementNew.Text;
      RSituationMarche.NumDomiciliation:=FSSituations.EditNumDomiciliationNew.Text;
      RSituationMarche.Domiciliation:=FSSituations.EditDomiciliationNew.Text;
      RSituationMarche.NumPiece:=FSSituations.EditNumPieceNew.Text;
      RSituationMarche.MontantSituationTTCBrut:=strtoreal(FSSituations.EditMontantSituationTTCBrutNew.Text);
      RSituationMarche.RetenueGarantie:=strtoreal(FSSituations.EditRetenueGarantieNew.Text);
      RSituationMarche.MontantRetenueGarantie:=strtoreal(FSSituations.EditMontantRetenueGarantieNew.Text);
      RSituationMarche.MontantSituationTTCNet:=strtoreal(FSSituations.EditMontantSituationTTCNetNew.Text);
      RSituationMarche.ParStructure:=FSSituations.RBParStructureNew.Checked;
      RSituationMarche.ParStatistique:=FSSituations.RBParStatistiqueNew.Checked;
      RSituationMarche.CummulerAttachement:=FSSituations.RBCummulerAttachementNew.Checked;
      RSituationMarche.ListeNumAvis:=FSSituations.EditListeNumAvisNew.Text;

      Seek(FSituationMarche,i);
      write(FSituationMarche,RSituationMarche);

      CloseFile(FSituationMarche);
      ProcAfficheListeSituation(FSSituations.TableauListeSituation,FSSituations.EditNSMarche.Text);
      FSSituations.AfficheNouvelleSituation.Visible:=false;
end;

procedure TFSSituations.BitBtn15Click(Sender: TObject);
begin
     FSSituations.AfficheNouvelleSituation.Visible:=false;
end;

procedure TFSSituations.EditDesignationSituationNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.EditNSituationMarcheNew.SetFocus;
     end;
end;

procedure TFSSituations.EditListeNumAvisNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.BitValiderNewSituation.SetFocus;
     end;
end;

procedure TFSSituations.EditNSituationMarcheNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.EditNSMarcheNew.SetFocus;
     end;
end;

procedure TFSSituations.EditNSMarcheNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.EditNAttachementNew.SetFocus;
     end;
end;

procedure TFSSituations.EditNAttachementNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.RBValiditeSituationNew.SetFocus;
     end;
end;

procedure TFSSituations.RBValiditeSituationNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.EditDateSituationMarcheNew.SetFocus;
     end;
end;

procedure TFSSituations.EditDateSituationMarcheNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.EditModePaiementNew.SetFocus;
     end;
end;

procedure TFSSituations.EditModePaiementNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.EditNumDomiciliationNew.SetFocus;
     end;
end;

procedure TFSSituations.EditNumDomiciliationNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.EditDomiciliationNew.SetFocus;
     end;
end;

procedure TFSSituations.EditDomiciliationNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.EditNumPieceNew.SetFocus;
     end;
end;

procedure TFSSituations.EditNumPieceNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.EditMontantSituationTTCBrutNew.SetFocus;
     end;
end;

procedure TFSSituations.EditMontantSituationTTCBrutNewKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.EditRetenueGarantieNew.SetFocus;
     end;
end;

procedure TFSSituations.EditRetenueGarantieNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.EditMontantRetenueGarantieNew.SetFocus;
     end;
end;

procedure TFSSituations.EditMontantRetenueGarantieNewKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.EditMontantSituationTTCNetNew.SetFocus;
     end;
end;

procedure TFSSituations.EditMontantSituationTTCNetNewKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.RBParStructureNew.SetFocus;
     end;
end;

procedure TFSSituations.RBParStructureNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.RBParStatistiqueNew.SetFocus;
     end;
end;

procedure TFSSituations.RBParStatistiqueNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.RBCummulerAttachementNew.SetFocus;
     end;
end;

procedure TFSSituations.RBCummulerAttachementNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSSituations.EditListeNumAvisNew.SetFocus;
     end;
end;

procedure TFSSituations.EditMontantSituationTTCBrutNewKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     FSSituations.EditMontantSituationTTCNetNew.Text:=Vergule(Floattostr(strtoreal(FSSituations.EditMontantSituationTTCBrutNew.Text)+strtoreal(FSSituations.EditMontantRetenueGarantieNew.Text)),'2','C','');
end;

procedure TFSSituations.EditRetenueGarantieNewKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     FSSituations.EditMontantRetenueGarantieNew.Text:=Vergule(Floattostr(strtoreal(FSSituations.EditMontantSituationTTCBrutNew.Text)*strtoreal(FSSituations.EditRetenueGarantieNew.Text)/100),'2','C','');
     FSSituations.EditMontantSituationTTCNetNew.Text:=Vergule(Floattostr(strtoreal(FSSituations.EditMontantSituationTTCBrutNew.Text)+strtoreal(FSSituations.EditMontantRetenueGarantieNew.Text)),'2','C','');
end;

procedure TFSSituations.EditMontantSituationTTCBrutNewEnter(
  Sender: TObject);
begin
     FSSituations.EditMontantSituationTTCBrutNew.Text:=WithoutPoint(FSSituations.EditMontantSituationTTCBrutNew.Text);
end;

procedure TFSSituations.EditMontantSituationTTCBrutNewExit(
  Sender: TObject);
begin
     FSSituations.EditMontantSituationTTCBrutNew.Text:=Vergule(FSSituations.EditMontantSituationTTCBrutNew.Text,'2','C','')
end;

procedure TFSSituations.AfficheOptionsSituationMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSSituations.AfficheOptionPrintApprovisionnementSituationMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSSituations.AfficheListeSituationMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSSituations.AfficheNouvelleSituationMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSSituations.AfficheValiderSituationMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSSituations.AfficheModifierSituationMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSSituations.AfficheListeAvisMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSSituations.AffichePrintParStructureMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSSituations.AfficheActionListeSituationMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSSituations.BitBtn14Click(Sender: TObject);
var  R:integer; NumSituation,NSMarche:string;
begin
     NSMarche:=FSSituations.EditNSMarche.Text;
     NumSituation:=FSSituations.EditNSituationMarche.Text;
     if(NumSituation<>'')then NumSituation:=inttostr(strtointeger(NumSituation));

     TypeProces:='Business'; FichierConcerne:='FDetailSituationMarche '+NSMarche+' '+NumSituation+'_'+lastlaters(FSSituations.EditDateAttachement.Text,4);
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChDetailSituationMarche:=Adresse;
FSSituations.AfficheAdresseFDetailSituationMarche.Caption:=ChDetailSituationMarche;
     assignfile(FDetailSituationMarche,ChDetailSituationMarche);
     if FileExists(ChDetailSituationMarche)then
     Reset(FDetailSituationMarche)
     else Rewrite(FDetailSituationMarche);
     Seek(FDetailSituationMarche,0);
     Truncate(FDetailSituationMarche);
     R:=1;
     while(R<=FSSituations.TableauDetailSituationMarche.RowCount-1)do
     begin
          RDetailSituationMarche.NDetailSituationMarche:=strtointeger(TableauDetailSituationMarche.Cells[12,R]);
          RDetailSituationMarche.NSituationMarche:=strtointeger(TableauDetailSituationMarche.Cells[13,R]);
          RDetailSituationMarche.NArticle:=TableauDetailSituationMarche.Cells[0,R];
          RDetailSituationMarche.DesignationArticle:=TableauDetailSituationMarche.Cells[1,R];
          RDetailSituationMarche.UniteM:=TableauDetailSituationMarche.Cells[2,R];
          RDetailSituationMarche.QuantiteSituationMarcheRealisePrecedement:=strtoreal(TableauDetailSituationMarche.Cells[3,R]);
          RDetailSituationMarche.QuantiteSituationMarcheRealiseMois:=strtoreal(TableauDetailSituationMarche.Cells[4,R]);
          RDetailSituationMarche.QuantiteSituationMarcheObjetMarchePrecedement:=strtoreal(TableauDetailSituationMarche.Cells[5,R]);
          RDetailSituationMarche.QuantiteSituationMarcheObjetMarcheMois:=strtoreal(TableauDetailSituationMarche.Cells[6,R]);
          RDetailSituationMarche.QuantiteSituationMarcheObjetAvenantPrecedement:=strtoreal(TableauDetailSituationMarche.Cells[7,R]);
          RDetailSituationMarche.QuantiteSituationMarcheObjetAvenantMois:=strtoreal(TableauDetailSituationMarche.Cells[8,R]);
          RDetailSituationMarche.PrixUnitaire:=strtoreal(TableauDetailSituationMarche.Cells[9,R]);
          RDetailSituationMarche.CodeTrie:=TableauDetailSituationMarche.Cells[10,R];
          RDetailSituationMarche.CodeStock:=TableauDetailSituationMarche.Cells[11,R];

          Seek(FDetailSituationMarche,R-1);
          write(FDetailSituationMarche,RDetailSituationMarche);
     R:=R+1;
     end;
     CloseFile(FDetailSituationMarche);

     ListeDetailSituationMarche(FSSituations.TableauDetailSituationMarche,NumSituation,NSMarche,lastlaters(FSSituations.EditDateAttachement.Text,4));
end;

procedure TFSSituations.TableauLAttachementMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
     DeplacerObjet(Sender);
end;

Procedure InitialisationFSSituation;
begin
     FSSituations.EditNAttachementMarche.Text:='';
     FSSituations.EditNSituationMarche.Text:='';
     
     FSSituations.TableauDecompteSituation.RowCount:=2;
     FSSituations.TableauDecompteSituation.Rows[1].Text:='';

     FSSituations.TableauSituationStructureStatistique.RowCount:=2;
     FSSituations.TableauSituationStructureStatistique.Rows[1].Text:='';

     FSSituations.TableauAvance.RowCount:=2;
     FSSituations.TableauAvance.Rows[1].Text:='';

     FSSituations.TableauPrincipal.RowCount:=2;
     FSSituations.TableauPrincipal.Rows[1].Text:='';

     FSSituations.TableauAnalyseMontantMarche.RowCount:=2;
     FSSituations.TableauAnalyseMontantMarche.Rows[1].Text:='';

     FSSituations.TableauDetailAttachement.RowCount:=2;
     FSSituations.TableauDetailAttachement.Rows[1].Text:='';

     FSSituations.TableauDetailSituationMarche.RowCount:=2;
     FSSituations.TableauDetailSituationMarche.Rows[1].Text:='';
end;

procedure TFSSituations.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     ActiverNomForm(0,(Sender as TComponent).Name);
end;

procedure TFSSituations.EditMontantAvisModifierEnter(Sender: TObject);
begin
     FSSituations.EditMontantAvisModifier.Text:=Vergule(FSSituations.EditMontantAvisModifier.Text,'2','N','');
end;

procedure TFSSituations.EditMontantAvisModifierExit(Sender: TObject);
begin
     FSSituations.EditMontantAvisModifier.Text:=Vergule(FSSituations.EditMontantAvisModifier.Text,'2','C','');
end;

End.



