unit UnitFSFormulairePreselection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, ComCtrls, Buttons, Mask;

type
  TFSFormulairePreselection = class(TForm)
    PageControl1: TPageControl;
    PageFormulairePreselection: TTabSheet;
    TabSheet1: TTabSheet;
    BitBtn1: TBitBtn;
    TableauFormulairePreselectionAffiche: TStringGrid;
    EditNumProjetAffiche: TEdit;
    EditDesignationProjetAffiche: TEdit;
    Label9: TLabel;
    Label11: TLabel;
    EditTypeLogementAffiche: TComboBox;
    EditEtatLogementAffiche: TComboBox;
    Label12: TLabel;
    Label13: TLabel;
    TableauTiers: TStringGrid;
    TableauProjet: TStringGrid;
    EditAccordAffiche: TComboBox;
    Bevel10: TBevel;
    Label10: TLabel;
    AfficheOptionPrint: TPanel;
    Bevel12: TBevel;
    RadioGroup3: TRadioGroup;
    StaticText7: TStaticText;
    RBOrientationPapier: TComboBox;
    RBAjustement: TCheckBox;
    BitBtn4: TBitBtn;
    RBRubriqueTrieTableauAvis: TCheckBox;
    EditRubriqueTrie: TEdit;
    AfficheOperation: TPanel;
    Bevel14: TBevel;
    BitValiderOperation: TBitBtn;
    BitNonOperation: TBitBtn;
    TimerCliqueColor: TTimer;
    MessageAfficheOperation: TMemo;
    TitreEtat: TMemo;
    RBAlignementTitre: TComboBox;
    StaticText1: TStaticText;
    Bevel15: TBevel;
    BitBtn5: TBitBtn;
    Bevel16: TBevel;
    AfficheDomiciliation: TPanel;
    Bevel17: TBevel;
    BitBtn9: TBitBtn;
    BitBtn8: TBitBtn;
    Bevel18: TBevel;
    RBEtatAffiche: TCheckBox;
    PageOptions: TTabSheet;
    GroupBox1: TGroupBox;
    RBOKProjet: TCheckBox;
    RBOKStructure: TCheckBox;
    RBOKNature: TCheckBox;
    RBOKCodification: TCheckBox;
    RBOKSurface: TCheckBox;
    Panel4: TPanel;
    EditChargementTypeProces: TComboBox;
    EditChargementFichierConcerne: TComboBox;
    Label1: TLabel;
    EditTitreChargementFichierConcerne: TLabel;
    Panel5: TPanel;
    AfficheOperationFOrmulairePreselection: TPanel;
    Bevel1: TBevel;
    TiersUtilise: TLabel;
    EditTiers: TEdit;
    BitBtn3: TBitBtn;
    EditCodeTiers: TEdit;
    Label2: TLabel;
    Bevel2: TBevel;
    EditNumProjet: TEdit;
    EditDesignationProjet: TEdit;
    BitBtn6: TBitBtn;
    Bevel3: TBevel;
    Label3: TLabel;
    EditTypeLogement: TComboBox;
    Label4: TLabel;
    Bevel4: TBevel;
    EditEtatLogement: TComboBox;
    Bevel7: TBevel;
    Bevel6: TBevel;
    Bevel5: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    EditMontantLogement: TEdit;
    EditMontantLogementLettre: TMemo;
    EditSimulationBanque: TEdit;
    EditSimulationBanqueLettre: TMemo;
    EditApportPersonnel: TEdit;
    EditApportPersonnelLettre: TMemo;
    EditApportInitial: TEdit;
    EditApportInitialLettre: TMemo;
    CacheAfficheDetailApportInitial: TPanel;
    RadioGroup1: TRadioGroup;
    RBFavorable: TRadioButton;
    RBDefavorable: TRadioButton;
    RBInstance: TRadioButton;
    Panel1: TPanel;
    EditAccord: TEdit;
    EditMotifAccord: TMemo;
    RBEtatAfficheTraitement: TCheckBox;
    BitValiderPreselection: TBitBtn;
    Bevel13: TBevel;
    Bevel27: TBevel;
    TableauFormulairePreselection: TStringGrid;
    EditDateFormulairePreselection: TDateTimePicker;
    Bevel28: TBevel;
    Label27: TLabel;
    AfficheDureePreselection: TPanel;
    AfficheImprimer: TPanel;
    Bevel8: TBevel;
    Bevel11: TBevel;
    Bevel24: TBevel;
    BitPrintFormulairePreselection: TBitBtn;
    BitPrintAutorisationVersement: TBitBtn;
    BitPrintAvisVersement: TBitBtn;
    RBImpressionDouble: TCheckBox;
    BitBtn2: TBitBtn;
    Bevel29: TBevel;
    BitBtn7: TBitBtn;
    Bevel30: TBevel;
    BitBtn11: TBitBtn;
    Bevel31: TBevel;
    Bevel32: TBevel;
    Label26: TLabel;
    EditPositionFormulairePreselection: TEdit;
    Bevel9: TBevel;
    AfficheDetailApportInitial: TPanel;
    Bevel20: TBevel;
    Bevel19: TBevel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label15: TLabel;
    Bevel21: TBevel;
    Bevel22: TBevel;
    Bevel23: TBevel;
    ClickModifDateReglementApportInitial: TLabel;
    BitBtn10: TBitBtn;
    BitValiderDetailApportInitial: TBitBtn;
    EditModeReglementApportInitial: TComboBox;
    EditDomiciliation: TComboBox;
    EditNumPiece: TEdit;
    EditObservation: TEdit;
    RBOKReglementApportInitial: TCheckBox;
    EditDateReglementApportInitial: TMaskEdit;
    BitOKReglementApportInitial: TBitBtn;
    EditDateReglementApportInitialInsert: TDateTimePicker;
    CacheDetailApportInitial: TPanel;
    AfficheOperationDureePreselection: TPanel;
    Bevel25: TBevel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    EditDureePreselection: TEdit;
    EditUniteDureePreselection: TComboBox;
    EditDateFinPreselection: TEdit;
    BitOperationDureePreselection: TBitBtn;
    Bevel33: TBevel;
    BitBtn12: TBitBtn;
    Bevel34: TBevel;
    Bevel35: TBevel;
    BitBtn13: TBitBtn;
    Bevel36: TBevel;
    Bevel37: TBevel;
    Bevel38: TBevel;
    Bevel39: TBevel;
    Bevel40: TBevel;
    Bevel41: TBevel;
    Bevel42: TBevel;
    Bevel43: TBevel;
    Bevel44: TBevel;
    AfficheSignataire: TPanel;
    Label8: TLabel;
    EditSignataire: TComboBox;
    AfficheInfoPlus: TPanel;
    Bevel26: TBevel;
    Cible: TLabel;
    Label24: TLabel;
    EditRowSelect: TEdit;
    RBIndiquerReservationStructure: TCheckBox;
    Bevel45: TBevel;
    Label25: TLabel;
    EditEtatReglementApportInitial: TComboBox;
    RBApportPersonnelFixe: TCheckBox;
    PageControl2: TPageControl;
    PageAgence: TTabSheet;
    PageTexteAutorisation: TTabSheet;
    TableauDomiciliation: TStringGrid;
    EditTexteAutorisation: TRichEdit;
    procedure EditTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTiersKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDesignationProjetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauProjetDblClick(Sender: TObject);
    procedure TableauProjetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTypeLogementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditEtatLogementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMontantLogementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSimulationBanqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditApportPersonnelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBFavorableKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBDefavorableKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBInstanceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMontantLogementKeyPress(Sender: TObject; var Key: Char);
    procedure EditSimulationBanqueKeyPress(Sender: TObject; var Key: Char);
    procedure EditApportPersonnelKeyPress(Sender: TObject; var Key: Char);
    procedure EditMontantLogementEnter(Sender: TObject);
    procedure EditMontantLogementExit(Sender: TObject);
    procedure EditSimulationBanqueEnter(Sender: TObject);
    procedure EditSimulationBanqueExit(Sender: TObject);
    procedure EditApportPersonnelEnter(Sender: TObject);
    procedure EditApportPersonnelExit(Sender: TObject);
    procedure BitValiderPreselectionClick(Sender: TObject);
    procedure RBFavorableClick(Sender: TObject);
    procedure RBDefavorableClick(Sender: TObject);
    procedure RBInstanceClick(Sender: TObject);
    procedure PageFormulairePreselectionShow(Sender: TObject);
    procedure TableauFormulairePreselectionClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditTypeLogementAfficheChange(Sender: TObject);
    procedure EditEtatLogementAfficheChange(Sender: TObject);
    procedure EditAccordAfficheChange(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure AfficheOptionPrintClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TableauFormulairePreselectionAfficheClick(Sender: TObject);
    procedure BitPrintFormulairePreselectionClick(Sender: TObject);
    procedure BitNonOperationClick(Sender: TObject);
    procedure BitValiderOperationClick(Sender: TObject);
    procedure TimerCliqueColorTimer(Sender: TObject);
    procedure AfficheOperationEnter(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitPrintAutorisationVersementClick(Sender: TObject);
    procedure AfficheImprimerClick(Sender: TObject);
    procedure EditMontantLogementKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSimulationBanqueKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditApportInitialEnter(Sender: TObject);
    procedure EditApportInitialExit(Sender: TObject);
    procedure EditApportInitialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditApportInitialKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure TableauDomiciliationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn9Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure TableauDomiciliationDblClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitValiderDetailApportInitialClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitOKReglementApportInitialClick(Sender: TObject);
    procedure BitPrintAvisVersementClick(Sender: TObject);
    procedure EditDateReglementApportInitialInsertChange(Sender: TObject);
    procedure EditModeReglementApportInitialSelect(Sender: TObject);
    procedure EditModeReglementApportInitialKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDomiciliationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumPieceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditObservationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDateReglementApportInitialInsertKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure RBEtatAfficheClick(Sender: TObject);
    procedure RBEtatAfficheTraitementClick(Sender: TObject);
    procedure EditDateReglementApportInitialDblClick(Sender: TObject);
    procedure ClickModifDateReglementApportInitialDblClick(
      Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditUniteDureePreselectionKeyPress(Sender: TObject; var Key: Char);
    procedure AfficheDureePreselectionClick(Sender: TObject);
    procedure EditDureePreselectionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditUniteDureePreselectionKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDateFinPreselectionKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDureePreselectionKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDateFormulairePreselectionClick(Sender: TObject);
    procedure EditUniteDureePreselectionClick(Sender: TObject);
    procedure TableauFormulairePreselectionKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure RBOKProjetClick(Sender: TObject);
    procedure RBOKStructureClick(Sender: TObject);
    procedure RBOKNatureClick(Sender: TObject);
    procedure RBOKCodificationClick(Sender: TObject);
    procedure RBOKSurfaceClick(Sender: TObject);
    procedure EditChargementTypeProcesChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitOperationDureePreselectionClick(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure CacheAfficheDetailApportInitialClick(Sender: TObject);
    procedure EditDureePreselectionKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditEtatReglementApportInitialChange(Sender: TObject);
    procedure EditEtatReglementApportInitialKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditAccordAfficheKeyPress(Sender: TObject; var Key: Char);
    procedure RBApportPersonnelFixeClick(Sender: TObject);
    procedure EditApportPersonnelKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauFormulairePreselectionAfficheDblClick(
      Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSFormulairePreselection: TFSFormulairePreselection;

Procedure ListeFormulairePreselection(TableauFormulairePreselection:TStringGrid; NumProjet,TypeLogement,EtatLogement,Accord,RelementApportInitial:string; PositionSelect:integer; EtatAffiche:string);
Procedure AfficherSelectionTableau(TableauFormulairePreselection:TStringGrid; Row:integer);
Function ControleModification(TableauFormulairePreselection:TStringGrid; RowSelect:string; var RowModif,ColModif:integer):boolean;
Procedure ImprimeAutorisationVersement;
Procedure InfoReglementApportInitial(Accord:string; OKReglementApportInitial:boolean);
Procedure ActionReglementApportInitial(Accord:string; OKReglementApportInitial:boolean);
Function PrevoirDateFinDuree(DatePrincipale:string; delais:integer; UniteDelais:string):string;

implementation

Uses UnitInitialisation, UnitFSAvis, UnitFSGenerateurBase, UnitPrintFormulairePreselection,
     UnitPrintAutorisationVerssement, UnitPintAvis, UnitSuppression, UnitFSTiers,
  UnitFSMenuPrincipal;

var

TFormulairePreselection,TFormulairePreselectionCopie:TFormulairePreselections;
RFormulairePreselection,RFormulairePreselectionCopie:RFormulairePreselections;
FFormulairePreselection,FFormulairePreselectionCopie:FFormulairePreselections;
ChFormulairePreselection,ChFormulairePreselectionCopie:string250;

RParc:RInstalle;
FParc:FInstalle;
ParcInstalle:string250;

TClient:TTierss;
RClient:RTierss;
FClient:FTierss;
ChClient:string250;

TDomiciliation:TDomiciliations;
RDomiciliation:RDomiciliations;
FDomiciliation:FDomiciliations;
ChDomiciliation:string250;

{$R *.dfm}

Procedure InfoReglementApportInitial(Accord:string; OKReglementApportInitial:boolean);
begin
     FSFormulairePreselection.EditDateReglementApportInitial.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[18,FSFormulairePreselection.TableauFormulairePreselection.Row];
     FSFormulairePreselection.EditModeReglementApportInitial.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[19,FSFormulairePreselection.TableauFormulairePreselection.Row];
     FSFormulairePreselection.EditDomiciliation.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[20,FSFormulairePreselection.TableauFormulairePreselection.Row];
     FSFormulairePreselection.EditNumPiece.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[21,FSFormulairePreselection.TableauFormulairePreselection.Row];
     FSFormulairePreselection.EditObservation.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[22,FSFormulairePreselection.TableauFormulairePreselection.Row];

     if(Accord='Favorable')then
     begin
          if(OKReglementApportInitial=true)then
          begin
               FSFormulairePreselection.BitOKReglementApportInitial.Caption:='Annuler le Règlement de l''apport Initial !';
               FSFormulairePreselection.CacheDetailApportInitial.Visible:=false;
               FSFormulairePreselection.CacheDetailApportInitial.Caption:='Versement effectuer !';
               FSFormulairePreselection.EditDateReglementApportInitial.Enabled:=true;
               FSFormulairePreselection.ClickModifDateReglementApportInitial.Enabled:=true;
               FSFormulairePreselection.EditModeReglementApportInitial.Enabled:=true;
               FSFormulairePreselection.EditDomiciliation.Enabled:=true;
               FSFormulairePreselection.EditNumPiece.Enabled:=true;
               FSFormulairePreselection.EditObservation.Enabled:=true;
          end
          else
          begin
               FSFormulairePreselection.BitOKReglementApportInitial.Caption:='Accorder le règlement de l''apport initial !';
               FSFormulairePreselection.CacheDetailApportInitial.Visible:=true;
               FSFormulairePreselection.CacheDetailApportInitial.Caption:='Aucun versement effectuer !';
               FSFormulairePreselection.EditDateReglementApportInitial.Enabled:=false;
               FSFormulairePreselection.ClickModifDateReglementApportInitial.Enabled:=false;
               FSFormulairePreselection.EditModeReglementApportInitial.Enabled:=false;
               FSFormulairePreselection.EditDomiciliation.Enabled:=false;
               FSFormulairePreselection.EditNumPiece.Enabled:=false;
               FSFormulairePreselection.EditObservation.Enabled:=false;
          end;
     end
     else
     begin
          FSFormulairePreselection.CacheDetailApportInitial.Visible:=true;

          if(FSFormulairePreselection.EditAccord.Text='Instance')then
          begin
               FSFormulairePreselection.CacheDetailApportInitial.Caption:='Présélection en Instance ! Aucun versement à effectuer !';
          end;

          if(FSFormulairePreselection.EditAccord.Text='Défavorable')then
          begin
               FSFormulairePreselection.CacheDetailApportInitial.Caption:='Présélection défavorable ! Aucun versement à effectuer !';
          end;

          FSFormulairePreselection.BitOKReglementApportInitial.Caption:='Aucun versement à effectuer !';
     end;

     FSFormulairePreselection.CacheAfficheDetailApportInitial.Caption:=FSFormulairePreselection.CacheDetailApportInitial.Caption;

     if(FSFormulairePreselection.RBOKReglementApportInitial.Checked=true)
     then
     begin
          FSFormulairePreselection.CacheAfficheDetailApportInitial.Color:=clLime;
          FSFormulairePreselection.CacheAfficheDetailApportInitial.Font.Color:=clBlack;
     end
     else
     begin
          if(FSFormulairePreselection.RBFavorable.Checked=true)then
          begin
               FSFormulairePreselection.CacheAfficheDetailApportInitial.Color:=$002D96FF;
               FSFormulairePreselection.CacheAfficheDetailApportInitial.Font.Color:=clBlack;
          end
          else
          begin
               FSFormulairePreselection.CacheAfficheDetailApportInitial.Color:=clBlack;
               FSFormulairePreselection.CacheAfficheDetailApportInitial.Font.Color:=clWhite;
          end
     end;
end;

Procedure ActionReglementApportInitial(Accord:string; OKReglementApportInitial:boolean);
begin
     if(Firstlaters(FSFormulairePreselection.BitOKReglementApportInitial.Caption,8)='Accorder')then
     begin
          FSFormulairePreselection.BitOKReglementApportInitial.Caption:='Annuler le Règlement de l''apport Initial !';
          FSFormulairePreselection.RBOKReglementApportInitial.Checked:=true;
          FSFormulairePreselection.CacheDetailApportInitial.Visible:=false;
          FSFormulairePreselection.EditDateReglementApportInitial.Enabled:=true;
          FSFormulairePreselection.ClickModifDateReglementApportInitial.Enabled:=true;
          FSFormulairePreselection.EditModeReglementApportInitial.Enabled:=true;
          FSFormulairePreselection.EditDomiciliation.Enabled:=true;
          FSFormulairePreselection.EditNumPiece.Enabled:=true;
          FSFormulairePreselection.EditObservation.Enabled:=true;

          FSFormulairePreselection.EditDateReglementApportInitial.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[18,FSFormulairePreselection.TableauFormulairePreselection.Row];
          FSFormulairePreselection.EditModeReglementApportInitial.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[19,FSFormulairePreselection.TableauFormulairePreselection.Row];
          FSFormulairePreselection.EditDomiciliation.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[20,FSFormulairePreselection.TableauFormulairePreselection.Row];
          FSFormulairePreselection.EditNumPiece.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[21,FSFormulairePreselection.TableauFormulairePreselection.Row];

          if(FSFormulairePreselection.TableauFormulairePreselection.Cells[22,FSFormulairePreselection.TableauFormulairePreselection.Row]<>'')
          then FSFormulairePreselection.EditObservation.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[22,FSFormulairePreselection.TableauFormulairePreselection.Row]
          else FSFormulairePreselection.EditObservation.Text:='Règlement Apport Initial de la préselection';

          FSFormulairePreselection.EditDateReglementApportInitial.SetFocus;
     end
     else
     if(Firstlaters(FSFormulairePreselection.BitOKReglementApportInitial.Caption,7)='Annuler')then
     begin
          FSFormulairePreselection.BitOKReglementApportInitial.Caption:='Accorder le règlement de l''apport initial !';
          FSFormulairePreselection.RBOKReglementApportInitial.Checked:=false;
          FSFormulairePreselection.CacheDetailApportInitial.Visible:=true;
          FSFormulairePreselection.CacheDetailApportInitial.Caption:='Annulation du Règlement !';
          FSFormulairePreselection.EditDateReglementApportInitial.Enabled:=false;
          FSFormulairePreselection.ClickModifDateReglementApportInitial.Enabled:=false;
          FSFormulairePreselection.EditModeReglementApportInitial.Enabled:=false;
          FSFormulairePreselection.EditDomiciliation.Enabled:=false;
          FSFormulairePreselection.EditNumPiece.Enabled:=false;
          FSFormulairePreselection.EditObservation.Enabled:=false;

          FSFormulairePreselection.EditDateReglementApportInitial.Text:='  /  /    ';
          FSFormulairePreselection.EditModeReglementApportInitial.Text:='';
          FSFormulairePreselection.EditDomiciliation.Text:='';
          FSFormulairePreselection.EditNumPiece.Text:='';
          FSFormulairePreselection.EditObservation.Text:='';
     end
     else
     begin
          InfoReglementApportInitial(Accord,OKReglementApportInitial);
     end;
end;

Procedure ImprimeAutorisationVersement;
var   ChiffreTexte:string;
begin
     OpenFParc(RParc);
     PrintAutorisationVerssement.TitreEntreprise1.Caption:=RParc.Text1;
     PrintAutorisationVerssement.TitreEntreprise2.Caption:=RParc.Text2;
     PrintAutorisationVerssement.TitreEntreprise3.Caption:=RParc.Text3;
     PrintAutorisationVerssement.TitreEntreprise4.Caption:=RParc.Text4;

     RClient:=ChercherTiers(FSFormulairePreselection.EditChargementTypeProces.Text,FSFormulairePreselection.EditChargementFichierConcerne.Text,FSFormulairePreselection.TableauFormulairePreselection.Cells[3,FSFormulairePreselection.TableauFormulairePreselection.Row],'');

     PrintAutorisationVerssement.TitreEtat.Caption:='Autorisation de Versement N°: '+inttostr(strtointeger(FSFormulairePreselection.TableauFormulairePreselection.Cells[1,FSFormulairePreselection.TableauFormulairePreselection.Row])+1);
     PrintAutorisationVerssement.DataDateFormulaire.Caption:='Edition: '+FSFormulairePreselection.TableauFormulairePreselection.Cells[2,FSFormulairePreselection.TableauFormulairePreselection.Row];
     PrintAutorisationVerssement.DataNometPrenom.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[4,FSFormulairePreselection.TableauFormulairePreselection.Row];
     PrintAutorisationVerssement.DataDateNaissance.Caption:=RClient.DateNaisTiers;

     if(RClient.NaturePieceIdentiteTiers<>'')
     then PrintAutorisationVerssement.TitrePieceIdentite.Caption:=RClient.NaturePieceIdentiteTiers
     else PrintAutorisationVerssement.TitrePieceIdentite.Caption:='Nature Pièce d''Identité';
     if(RClient.NumPieceIdentiteTiers<>'')
     then PrintAutorisationVerssement.DataPieceIdentite.Caption:=RClient.NumPieceIdentiteTiers
     else PrintAutorisationVerssement.DataPieceIdentite.Caption:='.............................................................................................';

     PrintAutorisationVerssement.DataFonction.Caption:=RClient.FonctionTiers;
     PrintAutorisationVerssement.DataSignataire.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[15,FSFormulairePreselection.TableauFormulairePreselection.Row];

     PrintAutorisationVerssement.DataAutorisation.Lines.Text:='';
     PrintAutorisationVerssement.DataAutorisation.Lines.Add(FSFormulairePreselection.EditTexteAutorisation.Lines.Text);
     PrintAutorisationVerssement.DataAutorisation.Lines.Add('      ');

     PrintAutorisationVerssement.DataAutorisation.Lines.Add('          Veuillez autoriser, au concerné cité ci-dessus, le versement d''un montant de '+FSFormulairePreselection.TableauFormulairePreselection.Cells[12,FSFormulairePreselection.TableauFormulairePreselection.Row]+' DA,'+
                                                            ' Soit en lettres : '+ChiffreenLettre(FSFormulairePreselection.TableauFormulairePreselection.Cells[12,FSFormulairePreselection.TableauFormulairePreselection.Row])+
                                                            ', Au compte bancaire N° : '+FSFormulairePreselection.TableauDomiciliation.Cells[3,FSFormulairePreselection.TableauDomiciliation.Row]+' agence : '+FSFormulairePreselection.TableauDomiciliation.Cells[2,FSFormulairePreselection.TableauDomiciliation.Row]+
                                                            ' Ouvert au nom de : '+RParc.Text1);
     PrintAutorisationVerssement.DataAutorisation.Lines.Add('      ');
     PrintAutorisationVerssement.DataAutorisation.Lines.Add('          Veuillez agréer, notre meilleure et parfaite considération');
     PrintAutorisationVerssement.Preview;
     FSFormulairePreselection.AfficheDomiciliation.Visible:=false;
end;

Function ControleModification(TableauFormulairePreselection:TStringGrid; RowSelect:string; var RowModif,ColModif:integer):boolean;
var   OKModification:boolean;
begin
     OKModification:=false;

     if(RowSelect<>'')then
     begin
          if(strtointeger(FSFormulairePreselection.EditPositionFormulairePreselection.Text)<>strtointeger(TableauFormulairePreselection.Cells[1,strtointeger(RowSelect)]))    then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=1; end;
          if(datetostr(FSFormulairePreselection.EditDateFormulairePreselection.Date)<>TableauFormulairePreselection.Cells[2,strtointeger(RowSelect)])                         then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=2; end;
          if(FSFormulairePreselection.EditCodeTiers.Text<>TableauFormulairePreselection.Cells[3,strtointeger(RowSelect)])                                                     then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=3; end;
          if(FSFormulairePreselection.EditTiers.Text<>TableauFormulairePreselection.Cells[4,strtointeger(RowSelect)])                                                         then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=4; end;
          if(FSFormulairePreselection.EditNumProjet.Text<>TableauFormulairePreselection.Cells[5,strtointeger(RowSelect)])                                                     then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=5; end;
          if(FSFormulairePreselection.EditDesignationProjet.Text<>TableauFormulairePreselection.Cells[6,strtointeger(RowSelect)])                                             then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=6; end;
          if(FSFormulairePreselection.EditTypeLogement.Text<>TableauFormulairePreselection.Cells[7,strtointeger(RowSelect)])                                                  then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=7; end;
          if(FSFormulairePreselection.EditEtatLogement.Text<>TableauFormulairePreselection.Cells[8,strtointeger(RowSelect)])                                                  then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=8; end;
          if(strtoreal(FSFormulairePreselection.EditMontantLogement.Text)<>strtoreal(TableauFormulairePreselection.Cells[9,strtointeger(RowSelect)]))                         then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=9; end;
          if(strtoreal(FSFormulairePreselection.EditSimulationBanque.Text)<>strtoreal(TableauFormulairePreselection.Cells[10,strtointeger(RowSelect)]))                       then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=10; end;
          if(strtoreal(FSFormulairePreselection.EditApportPersonnel.Text)<>strtoreal(TableauFormulairePreselection.Cells[11,strtointeger(RowSelect)]))                        then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=11; end;
          if(strtoreal(FSFormulairePreselection.EditApportInitial.Text)<>strtoreal(TableauFormulairePreselection.Cells[12,strtointeger(RowSelect)]))                          then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=12; end;
          if(FSFormulairePreselection.EditAccord.Text<>TableauFormulairePreselection.Cells[13,strtointeger(RowSelect)])                                                       then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=13; end;
          if(FSFormulairePreselection.EditMotifAccord.Text<>TableauFormulairePreselection.Cells[14,strtointeger(RowSelect)])                                                  then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=14; end;
          if(FSFormulairePreselection.EditSignataire.Text<>TableauFormulairePreselection.Cells[15,strtointeger(RowSelect)])                                                   then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=15; end;

          if(FSFormulairePreselection.RBOKReglementApportInitial.Checked<>strtoboolean(TableauFormulairePreselection.Cells[17,strtointeger(RowSelect)]))                      then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=17; end;
          if(FSFormulairePreselection.EditDateReglementApportInitial.Text<>TableauFormulairePreselection.Cells[18,strtointeger(RowSelect)])                                   then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=18; end;
          if(FSFormulairePreselection.EditModeReglementApportInitial.Text<>TableauFormulairePreselection.Cells[19,strtointeger(RowSelect)])                                   then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=19; end;
          if(FSFormulairePreselection.EditDomiciliation.Text<>TableauFormulairePreselection.Cells[20,strtointeger(RowSelect)])                                                then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=20; end;
          if(FSFormulairePreselection.EditNumPiece.Text<>TableauFormulairePreselection.Cells[21,strtointeger(RowSelect)])                                                     then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=21; end;
          if(FSFormulairePreselection.EditObservation.Text<>TableauFormulairePreselection.Cells[22,strtointeger(RowSelect)])                                                  then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=22; end;
          if(FSFormulairePreselection.EditDureePreselection.Text<>TableauFormulairePreselection.Cells[23,strtointeger(RowSelect)])                                            then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=23; end;
          if(FSFormulairePreselection.EditUniteDureePreselection.Text<>TableauFormulairePreselection.Cells[24,strtointeger(RowSelect)])                                       then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=24; end;
          if(FSFormulairePreselection.EditDateFinPreselection.Text<>TableauFormulairePreselection.Cells[25,strtointeger(RowSelect)])                                          then begin OKModification:=true; RowModif:=strtointeger(RowSelect); ColModif:=25; end;
     end
     else
     begin
          OKModification:=true;
          RowModif:=1;
          ColModif:=1;
     end;

     ControleModification:=OKModification;
end;

Procedure AfficherSelectionTableau(TableauFormulairePreselection:TStringGrid; Row:integer);
var i:integer; ChiffreTexte,MessageTexte:string;
begin
     FSFormulairePreselection.EditRowSelect.Text:=inttostr(FSFormulairePreselection.TableauFormulairePreselection.Row);
     FSFormulairePreselection.EditPositionFormulairePreselection.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[1,Row];
     if DateCorrecte(FSFormulairePreselection.TableauFormulairePreselection.Cells[2,Row])
     then FSFormulairePreselection.EditDateFormulairePreselection.Date:=strtodate(FSFormulairePreselection.TableauFormulairePreselection.Cells[2,Row]);

     FSFormulairePreselection.EditDureePreselection.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[23,Row];
     FSFormulairePreselection.EditUniteDureePreselection.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[24,Row];
     if DateCorrecte(FSFormulairePreselection.TableauFormulairePreselection.Cells[25,Row])
     then FSFormulairePreselection.EditDateFinPreselection.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[25,Row];

     FSFormulairePreselection.EditCodeTiers.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[3,Row];
     FSFormulairePreselection.EditTiers.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[4,Row];
     FSFormulairePreselection.EditNumProjet.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[5,Row];
     FSFormulairePreselection.EditDesignationProjet.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[6,Row];
     FSFormulairePreselection.EditTypeLogement.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[7,Row];
     FSFormulairePreselection.EditEtatLogement.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[8,Row];

     FSFormulairePreselection.EditMontantLogement.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[9,Row];

     FSFormulairePreselection.EditMontantLogementLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditMontantLogement.Text);

     FSFormulairePreselection.EditSimulationBanque.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[10,Row];

     FSFormulairePreselection.EditSimulationBanqueLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditSimulationBanque.Text);

     FSFormulairePreselection.EditApportPersonnel.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[11,Row];

     FSFormulairePreselection.EditApportPersonnelLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditApportPersonnel.Text);

     FSFormulairePreselection.EditApportInitial.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[12,Row];

     FSFormulairePreselection.EditApportInitialLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditApportInitial.Text);

     FSFormulairePreselection.EditAccord.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[13,Row];
     FSFormulairePreselection.EditMotifAccord.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[14,Row];
     FSFormulairePreselection.EditSignataire.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[15,Row];
     FSFormulairePreselection.RBOKReglementApportInitial.Checked:=strtoboolean(FSFormulairePreselection.TableauFormulairePreselection.Cells[17,Row]);
     if(FSFormulairePreselection.RBFavorable.Caption=FSFormulairePreselection.EditAccord.Text)then FSFormulairePreselection.RBFavorable.Checked:=true;
     if(FSFormulairePreselection.RBDefavorable.Caption=FSFormulairePreselection.EditAccord.Text)then FSFormulairePreselection.RBDeFavorable.Checked:=true;
     if(FSFormulairePreselection.RBInstance.Caption=FSFormulairePreselection.EditAccord.Text)then FSFormulairePreselection.RBInstance.Checked:=true;

     InfoReglementApportInitial(FSFormulairePreselection.EditAccord.Text,FSFormulairePreselection.RBOKReglementApportInitial.Checked);

     MessageTexte:=FSFormulairePreselection.EditAccord.Text;
     i:=0;
     if(FSFormulairePreselection.RBInstance.Checked=true)then
     begin
          MessageTexte:='Aucune Confirmation !';
          if(DateCorrecte(FSFormulairePreselection.TableauFormulairePreselection.Cells[25,Row]))then
          begin
               if(strtodate(FSFormulairePreselection.TableauFormulairePreselection.Cells[25,Row])>=Date)then
               begin
                    MessageTexte:='Confirmation avant: ';
                    while(strtodate(FSFormulairePreselection.TableauFormulairePreselection.Cells[25,Row])>Date+i)do
                    begin
                         i:=i+1;
                    end;
               end;

               if(Date>strtodate(FSFormulairePreselection.TableauFormulairePreselection.Cells[25,Row]))then
               begin
                    MessageTexte:='Délais dépassé de : ';
                    while(Date>strtodate(FSFormulairePreselection.TableauFormulairePreselection.Cells[25,Row])+i)do
                    begin
                         i:=i+1;
                    end;
               end;
          end;
     end;

     if(i>0)then FSFormulairePreselection.AfficheDureePreselection.Caption:=MessageTexte+Completezerogauche(inttostr(i),'2')+' Jours !'
            else FSFormulairePreselection.AfficheDureePreselection.Caption:=MessageTexte;
end;

Procedure ListeFormulairePreselection(TableauFormulairePreselection:TStringGrid; NumProjet,TypeLogement,EtatLogement,Accord,RelementApportInitial:string; PositionSelect:integer; EtatAffiche:string);
var  i,R,C,Row:integer;   OKFormulaire:boolean;   NotRow,NotCol:string;
begin
     OpenFParc(RParc);
     ChFormulairePreselection:=RParc.Parcours+'\'+Exercice+'FFormulairePreselection';
     assignfile(FFormulairePreselection,ChFormulairePreselection);
     if FileExists(ChFormulairePreselection)then
     Reset(FFormulairePreselection)
     else Rewrite(FFormulairePreselection);
     Seek(FFormulairePreselection,0);
     i:=0;
     while not eof(FFormulairePreselection)do
     begin
          read(FFormulairePreselection,RFormulairePreselection);
          if(PositionSelect=RFormulairePreselection.NumFormulairePreselection)then PositionSelect:=i;
          RFormulairePreselection.NumFormulairePreselection:=i;
          Seek(FFormulairePreselection,i);
          write(FFormulairePreselection,RFormulairePreselection);
          i:=i+1;
     end;
     CloseFile(FFormulairePreselection);

     TableauFormulairePreselection.ColCount:=26;
     TableauFormulairePreselection.RowCount:=2;
     TableauFormulairePreselection.Rows[1].Text:='';

     TableauFormulairePreselection.Cols[0].Text:='N°';
     TableauFormulairePreselection.Cols[1].Text:='P°';
     TableauFormulairePreselection.Cols[2].Text:='Date';
     TableauFormulairePreselection.Cols[3].Text:='CodeTiers';
     TableauFormulairePreselection.Cols[4].Text:='Tiers';
     TableauFormulairePreselection.Cols[5].Text:='NumProjet';
     TableauFormulairePreselection.Cols[6].Text:='Désignation Projet';
     TableauFormulairePreselection.Cols[7].Text:='Type Logement';
     TableauFormulairePreselection.Cols[8].Text:='Etat Logement';
     TableauFormulairePreselection.Cols[9].Text:='Montant Logement';
     TableauFormulairePreselection.Cols[10].Text:='Simulation Banque';
     TableauFormulairePreselection.Cols[11].Text:='Apport Personnel';
     TableauFormulairePreselection.Cols[12].Text:='Apport Initial';
     TableauFormulairePreselection.Cols[13].Text:='Accord';
     TableauFormulairePreselection.Cols[14].Text:='Motif Accord';
     TableauFormulairePreselection.Cols[15].Text:='Signataire';
     TableauFormulairePreselection.Cols[16].Text:='Téléphone';
     TableauFormulairePreselection.Cols[17].Text:='Reglement Effectué';
     TableauFormulairePreselection.Cols[18].Text:='Date Régl.A.Initial';
     TableauFormulairePreselection.Cols[19].Text:='Mode Réglement';
     TableauFormulairePreselection.Cols[20].Text:='Domiciliation';
     TableauFormulairePreselection.Cols[21].Text:='NumPiece';
     TableauFormulairePreselection.Cols[22].Text:='Obsérvation';
     TableauFormulairePreselection.Cols[23].Text:='Durée';
     TableauFormulairePreselection.Cols[24].Text:='Unité Durée';
     TableauFormulairePreselection.Cols[25].Text:='Date Fin Durée';


     OpenFParc(RParc);
     ChFormulairePreselection:=RParc.Parcours+'\'+Exercice+'FFormulairePreselection';
     assignfile(FFormulairePreselection,ChFormulairePreselection);
     if FileExists(ChFormulairePreselection)then
     Reset(FFormulairePreselection)
     else Rewrite(FFormulairePreselection);
     Seek(FFormulairePreselection,0);
     R:=0;
     OKFormulaire:=false;
     Row:=1;
     while not eof(FFormulairePreselection)do
     begin
          read(FFormulairePreselection,RFormulairePreselection);

          if(NumProjet<>'')then
          begin
               if(Firstlaters(RFormulairePreselection.NumProjet,longueur(NumProjet))=NumProjet)
               then OKFormulaire:=true
               else OKFormulaire:=false;
          end
          else OKFormulaire:=true;

          if(OKFormulaire=true)then
          begin
               if(TypeLogement<>'')and((TypeLogement<>'Tous'))then
               begin
                    if(RFormulairePreselection.TypeLogement=TypeLogement)
                    then OKFormulaire:=true
                    else OKFormulaire:=false;
               end
               else OKFormulaire:=true;
          end;

          if(OKFormulaire=true)then
          begin
               if(EtatLogement<>'')and(EtatLogement<>'Tous')then
               begin
                    if(RFormulairePreselection.EtatLogement=EtatLogement)
                    then OKFormulaire:=true
                    else OKFormulaire:=false;
               end
               else OKFormulaire:=true;
          end;

          if(OKFormulaire=true)then
          begin
               if(Accord<>'')and(Accord<>'Tous')then
               begin
                    if(RFormulairePreselection.Accord=Accord)
                    then OKFormulaire:=true
                    else OKFormulaire:=false;
               end
               else OKFormulaire:=true;
          end;

          if(OKFormulaire=true)then
          begin
               if(RelementApportInitial<>'')and(RelementApportInitial<>'Tous')then
               begin
                    if(RelementApportInitial='Réglé')then
                    begin
                         OKFormulaire:=RFormulairePreselection.OKReglementApportInitial;
                    end;
                    if(RelementApportInitial='Non Réglé')then
                    begin
                         OKFormulaire:=not(RFormulairePreselection.OKReglementApportInitial);
                    end;
               end
               else OKFormulaire:=true;
          end;

          if(OKFormulaire=true)then
          begin
               RClient:=ChercherTiers(FSFormulairePreselection.EditChargementTypeProces.Text,FSFormulairePreselection.EditChargementFichierConcerne.Text,RFormulairePreselection.CodeTier,RFormulairePreselection.Tiers);

               R:=R+1;
               TableauFormulairePreselection.Rows[R].Text:=inttostr(R);
               TableauFormulairePreselection.Cells[1,R]:=inttostr(RFormulairePreselection.NumFormulairePreselection);
               TableauFormulairePreselection.Cells[2,R]:=RFormulairePreselection.DateFormulairePreselection;
               TableauFormulairePreselection.Cells[3,R]:=RFormulairePreselection.CodeTier;
               TableauFormulairePreselection.Cells[4,R]:=RFormulairePreselection.Tiers;
               TableauFormulairePreselection.Cells[5,R]:=RFormulairePreselection.NumProjet;
               TableauFormulairePreselection.Cells[6,R]:=IdentiteStructureProjet(RFormulairePreselection.NumProjet,FSFormulairePreselection.RBOKProjet.Checked,FSFormulairePreselection.RBOKStructure.Checked,FSFormulairePreselection.RBOKNature.Checked,FSFormulairePreselection.RBOKCodification.Checked,FSFormulairePreselection.RBOKSurface.Checked);
               TableauFormulairePreselection.Cells[7,R]:=RFormulairePreselection.TypeLogement;
               TableauFormulairePreselection.Cells[8,R]:=RFormulairePreselection.EtatLogement;
               TableauFormulairePreselection.Cells[9,R]:=Vergule(floattostr(RFormulairePreselection.MontantLogement),'2','C','');
               TableauFormulairePreselection.Cells[10,R]:=Vergule(floattostr(RFormulairePreselection.SimulationBanque),'2','C','');
               TableauFormulairePreselection.Cells[11,R]:=Vergule(floattostr(RFormulairePreselection.MontantLogement-RFormulairePreselection.SimulationBanque),'2','C','');
               TableauFormulairePreselection.Cells[12,R]:=Vergule(floattostr(RFormulairePreselection.ApportInitial),'2','C','');
               TableauFormulairePreselection.Cells[13,R]:=RFormulairePreselection.Accord;
               TableauFormulairePreselection.Cells[14,R]:=RFormulairePreselection.MotifAccord;
               TableauFormulairePreselection.Cells[15,R]:=RFormulairePreselection.Signataire;
               TableauFormulairePreselection.Cells[16,R]:=RClient.NumTelephoneTiers;
               TableauFormulairePreselection.Cells[17,R]:=booleantostr(RFormulairePreselection.OKReglementApportInitial);
               TableauFormulairePreselection.Cells[18,R]:=RFormulairePreselection.DateReglementApportInitial;
               TableauFormulairePreselection.Cells[19,R]:=RFormulairePreselection.ModeReglementApportInitial;
               TableauFormulairePreselection.Cells[20,R]:=RFormulairePreselection.Domiciliation;
               TableauFormulairePreselection.Cells[21,R]:=RFormulairePreselection.NumPiece;
               TableauFormulairePreselection.Cells[22,R]:=RFormulairePreselection.Observation;
               TableauFormulairePreselection.Cells[23,R]:=inttostr(RFormulairePreselection.DureePreselection);
               TableauFormulairePreselection.Cells[24,R]:=RFormulairePreselection.UniteDureePreselection;
               TableauFormulairePreselection.Cells[25,R]:=RFormulairePreselection.DateFinDureePreselection;

               if(PositionSelect=RFormulairePreselection.NumFormulairePreselection)then Row:=R;
          end;
     end;
     CloseFile(FFormulairePreselection);

     if(R>0)then TableauFormulairePreselection.RowCount:=R+1
            else TableauFormulairePreselection.RowCount:=2;

    TableauFormulairePreselection.Row:=Row;
    FSFormulairePreselection.EditRowSelect.Text:=inttostr(Row);

     NotRow:='';

     if(EtatAffiche='Formulaire')then
     begin
          NotCol:='3;5;15;18-25';
     end
     else
     begin
          NotCol:='3;5-15;23-25';
     end;

     for C:=1 to TableauFormulairePreselection.ColCount-1 do
     begin
          if(ExisteNuminTexte(inttostr(C),NotCol))then
          begin
               TableauFormulairePreselection.ColWidths[C]:=0;
          end;
     end;

     AjusterColWidth(TableauFormulairePreselection,NotRow,NotCol);

     AfficherSelectionTableau(TableauFormulairePreselection,Row);
end;

procedure TFSFormulairePreselection.EditTiersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSFormulairePreselection.TableauTiers.Visible=true)
     then FSFormulairePreselection.TableauTiers.SetFocus
     else FSFormulairePreselection.EditDesignationProjet.SetFocus;
end;

end;

procedure TFSFormulairePreselection.EditTiersKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
FSFormulairePreselection.Cible.Caption:='Saisie';
FSFormulairePreselection.TableauTiers.Left:=60;
FSFormulairePreselection.TableauTiers.Top:=63;
ListeTiers(FSFormulairePreselection.TableauTiers,FSFormulairePreselection.EditChargementTypeProces.Text,FSFormulairePreselection.EditChargementFichierConcerne.Text,'','',FSFormulairePreselection.EditTiers.Text,true);
end;

procedure TFSFormulairePreselection.TableauTiersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if(key in[VK_RETURN])then
begin
     if(FSFormulairePreselection.Cible.Caption='Saisie')and(FSFormulairePreselection.TableauTiers.Cells[2,FSFormulairePreselection.TableauTiers.Row]<>'Tous')then
     begin
          FSFormulairePreselection.EditCodeTiers.Text:=FSFormulairePreselection.TableauTiers.Cells[1,FSFormulairePreselection.TableauTiers.Row];
          FSFormulairePreselection.EditTiers.Text:=FSFormulairePreselection.TableauTiers.Cells[2,FSFormulairePreselection.TableauTiers.Row];
          FSFormulairePreselection.EditDesignationProjet.SetFocus;
          FSFormulairePreselection.TableauTiers.Visible:=false;
     end;
end;

end;

procedure TFSFormulairePreselection.EditDesignationProjetKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSFormulairePreselection.TableauProjet.Visible=true)
     then FSFormulairePreselection.TableauProjet.SetFocus
     else FSFormulairePreselection.EditTypeLogement.SetFocus;
end;

end;

procedure TFSFormulairePreselection.TableauProjetDblClick(Sender: TObject);
begin

if(FSFormulairePreselection.TableauProjet.Cells[FSFormulairePreselection.TableauProjet.Col,FSFormulairePreselection.TableauProjet.Row]<>'')
then ListeProjetFinance(FSFormulairePreselection.TableauProjet,Firstlaters(FSFormulairePreselection.TableauProjet.Cells[1,FSFormulairePreselection.TableauProjet.Row],5),'','',false,'1','',FSFormulairePreselection.RBIndiquerReservationStructure.Checked,false,FSFormulairePreselection.EditChargementTypeProces.Text,FSFormulairePreselection.EditChargementFichierConcerne.Text)
else ListeProjetFinance(FSFormulairePreselection.TableauProjet,'','','',false,'1','',FSFormulairePreselection.RBIndiquerReservationStructure.Checked,false,FSFormulairePreselection.EditChargementTypeProces.Text,FSFormulairePreselection.EditChargementFichierConcerne.Text);

end;

procedure TFSFormulairePreselection.TableauProjetKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if(key in[VK_RETURN])then
begin
     if(FSFormulairePreselection.Cible.Caption='Saisie')then
     begin
          if(FSFormulairePreselection.TableauProjet.Col>1)
          and(FSFormulairePreselection.TableauProjet.Cells[FSFormulairePreselection.TableauProjet.Col,FSFormulairePreselection.TableauProjet.Row]<>'')
          then
          begin
               FSFormulairePreselection.EditNumProjet.Text:=FSFormulairePreselection.TableauProjet.Cells[1,FSFormulairePreselection.TableauProjet.Row];
               FSFormulairePreselection.EditDesignationProjet.Text:=IdentiteStructureProjet(FSFormulairePreselection.EditNumProjet.Text,FSFormulairePreselection.RBOKProjet.Checked,FSFormulairePreselection.RBOKStructure.Checked,FSFormulairePreselection.RBOKNature.Checked,FSFormulairePreselection.RBOKCodification.Checked,FSFormulairePreselection.RBOKSurface.Checked);
               FSFormulairePreselection.TableauProjet.Visible:=false;
               FSFormulairePreselection.EditTypeLogement.SetFocus;
          end
          else
          begin
               showmessage('Veuillez sélectionner une structure SVP !');
          end;
     end;

     if(FSFormulairePreselection.Cible.Caption='Affiche')then
     begin
          if(FSFormulairePreselection.TableauProjet.Col>1)
          and(FSFormulairePreselection.TableauProjet.Cells[FSFormulairePreselection.TableauProjet.Col,FSFormulairePreselection.TableauProjet.Row]<>'')
          then
          begin
               FSFormulairePreselection.EditNumProjetAffiche.Text:=FSFormulairePreselection.TableauProjet.Cells[1,FSFormulairePreselection.TableauProjet.Row];
               FSFormulairePreselection.EditDesignationProjetAffiche.Text:=IdentiteStructureProjet(FSFormulairePreselection.EditNumProjetAffiche.Text,FSFormulairePreselection.RBOKProjet.Checked,FSFormulairePreselection.RBOKStructure.Checked,FSFormulairePreselection.RBOKNature.Checked,FSFormulairePreselection.RBOKCodification.Checked,FSFormulairePreselection.RBOKSurface.Checked);;
               FSFormulairePreselection.TableauProjet.Visible:=false;
          end
          else
          begin
               showmessage('Veuillez sélectionner une structure SVP !');
          end;
     ListeFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselectionAffiche,FSFormulairePreselection.EditNumProjetAffiche.Text,FSFormulairePreselection.EditTypeLogementAffiche.Text,FSFormulairePreselection.EditEtatLogementAffiche.Text,FSFormulairePreselection.EditAccordAffiche.Text,FSFormulairePreselection.EditEtatReglementApportInitial.Text,1,FSFormulairePreselection.RBEtatAffiche.Caption);
     end;
end;

end;

procedure TFSFormulairePreselection.EditTypeLogementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.EditEtatLogement.SetFocus;
end;

end;

procedure TFSFormulairePreselection.EditEtatLogementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.EditMontantLogement.SetFocus;
end;

end;

procedure TFSFormulairePreselection.EditMontantLogementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.EditSimulationBanque.SetFocus;
end;

end;

procedure TFSFormulairePreselection.EditSimulationBanqueKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.EditApportPersonnel.SetFocus;
end;

end;

procedure TFSFormulairePreselection.EditApportPersonnelKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.EditApportInitial.SetFocus;
end;

end;

procedure TFSFormulairePreselection.RBFavorableKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.EditMotifAccord.SetFocus;
end;

end;

procedure TFSFormulairePreselection.RBDefavorableKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.EditMotifAccord.SetFocus;
end;

end;

procedure TFSFormulairePreselection.RBInstanceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.EditMotifAccord.SetFocus;
end;

end;

procedure TFSFormulairePreselection.CKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.BitValiderPreselection.SetFocus;
end;

end;

procedure TFSFormulairePreselection.EditMontantLogementKeyPress(
  Sender: TObject; var Key: Char);
begin
if key in['?','.',';','/',':']then key:=',';
if not(key in['0'..'9',','])then key:=#0;
end;

procedure TFSFormulairePreselection.EditSimulationBanqueKeyPress(
  Sender: TObject; var Key: Char);
begin

if key in['?','.',';','/',':']then key:=',';
if not(key in['0'..'9',','])then key:=#0;
end;

procedure TFSFormulairePreselection.EditApportPersonnelKeyPress(
  Sender: TObject; var Key: Char);
begin
if key in['?','.',';','/',':']then key:=',';
if not(key in['0'..'9',','])then key:=#0;
end;

procedure TFSFormulairePreselection.EditMontantLogementEnter(
  Sender: TObject);
begin
FSFormulairePreselection.EditMontantLogement.Text:=Vergule(FSFormulairePreselection.EditMontantLogement.Text,'2','N','');
end;

procedure TFSFormulairePreselection.EditMontantLogementExit(
  Sender: TObject);
var   ChiffreTexte:string;
begin
FSFormulairePreselection.EditMontantLogement.Text:=Vergule(FSFormulairePreselection.EditMontantLogement.Text,'2','C','');

FSFormulairePreselection.EditMontantLogementLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditMontantLogement.Text);

if(FSFormulairePreselection.RBApportPersonnelFixe.Checked=false)then
begin
     FSFormulairePreselection.EditApportPersonnel.Text:=Vergule(floattostr(strtoreal(FSFormulairePreselection.EditMontantLogement.Text)-
                                                        strtoreal(FSFormulairePreselection.EditSimulationBanque.Text)),'2','C','');
     FSFormulairePreselection.EditApportPersonnelLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditApportPersonnel.Text);
end
else
begin
     FSFormulairePreselection.EditSimulationBanque.Text:=Vergule(floattostr(strtoreal(FSFormulairePreselection.EditMontantLogement.Text)-
                                                        strtoreal(FSFormulairePreselection.EditApportPersonnel.Text)),'2','C','');
     FSFormulairePreselection.EditSimulationBanqueLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditSimulationBanque.Text);
end;

end;

procedure TFSFormulairePreselection.EditSimulationBanqueEnter(
  Sender: TObject);
begin
FSFormulairePreselection.EditSimulationBanque.Text:=Vergule(FSFormulairePreselection.EditSimulationBanque.Text,'2','N','');
end;

procedure TFSFormulairePreselection.EditSimulationBanqueExit(
  Sender: TObject);
var  ChiffreTexte:string;
begin
FSFormulairePreselection.EditSimulationBanque.Text:=Vergule(FSFormulairePreselection.EditSimulationBanque.Text,'2','C','');

FSFormulairePreselection.EditSimulationBanqueLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditSimulationBanque.Text);

if(FSFormulairePreselection.RBApportPersonnelFixe.Checked=false)then
begin
     FSFormulairePreselection.EditApportPersonnel.Text:=Vergule(floattostr(strtoreal(FSFormulairePreselection.EditMontantLogement.Text)-
                                                        strtoreal(FSFormulairePreselection.EditSimulationBanque.Text)),'2','C','');
     FSFormulairePreselection.EditApportPersonnelLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditApportPersonnel.Text);
end
else
begin
     FSFormulairePreselection.EditSimulationBanque.Text:=Vergule(floattostr(strtoreal(FSFormulairePreselection.EditMontantLogement.Text)-
                                                        strtoreal(FSFormulairePreselection.EditApportPersonnel.Text)),'2','C','');
     FSFormulairePreselection.EditSimulationBanqueLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditSimulationBanque.Text);
end;

end;

procedure TFSFormulairePreselection.EditApportPersonnelEnter(
  Sender: TObject);
begin
FSFormulairePreselection.EditApportPersonnel.Text:=Vergule(FSFormulairePreselection.EditApportPersonnel.Text,'2','N','');
end;

procedure TFSFormulairePreselection.EditApportPersonnelExit(
  Sender: TObject);
begin
FSFormulairePreselection.EditApportPersonnel.Text:=Vergule(FSFormulairePreselection.EditApportPersonnel.Text,'2','C','');

if(FSFormulairePreselection.RBApportPersonnelFixe.Checked=false)then
begin
     FSFormulairePreselection.EditApportPersonnel.Text:=Vergule(floattostr(strtoreal(FSFormulairePreselection.EditMontantLogement.Text)-
                                                        strtoreal(FSFormulairePreselection.EditSimulationBanque.Text)),'2','C','');
     FSFormulairePreselection.EditApportPersonnelLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditApportPersonnel.Text);
end
else
begin
     FSFormulairePreselection.EditSimulationBanque.Text:=Vergule(floattostr(strtoreal(FSFormulairePreselection.EditMontantLogement.Text)-
                                                        strtoreal(FSFormulairePreselection.EditApportPersonnel.Text)),'2','C','');
     FSFormulairePreselection.EditSimulationBanqueLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditSimulationBanque.Text);
end;

end;

procedure TFSFormulairePreselection.BitValiderPreselectionClick(
  Sender: TObject);
var   RowModif,ColModif:integer;
begin
FSFormulairePreselection.AfficheOperation.Visible:=true;

if(FSFormulairePreselection.BitValiderPreselection.Caption='Valider la Présélection !')then
begin
     if(ControleModification(FSFormulairePreselection.TableauFormulairePreselection,FSFormulairePreselection.EditRowSelect.Text,RowModif,ColModif))then
     begin

          if(FSFormulairePreselection.EditPositionFormulairePreselection.Text<>'')then
          begin
               FSFormulairePreselection.TableauFormulairePreselection.Row:=RowModif;
               FSFormulairePreselection.TableauFormulairePreselection.Col:=ColModif;
               FSFormulairePreselection.TableauFormulairePreselection.SetFocus;
          end;

          if(FSFormulairePreselection.EditPositionFormulairePreselection.Text<>'')
          then
          begin
               FSFormulairePreselection.BitValiderOperation.Kind:=bkAll;
               FSFormulairePreselection.BitValiderOperation.Caption:='Valider';
               FSFormulairePreselection.MessageAfficheOperation.Lines.Text:='Voulez vous enregistrer';
               FSFormulairePreselection.MessageAfficheOperation.Lines.Add('les modifications ?');
               FSFormulairePreselection.BitValiderOperation.SetFocus;
          end
          else
          begin
               FSFormulairePreselection.BitValiderOperation.Kind:=bkAll;
               FSFormulairePreselection.BitValiderOperation.Caption:='Valider';
               FSFormulairePreselection.MessageAfficheOperation.Lines.Text:='Voulez vous enregistrer';
               FSFormulairePreselection.MessageAfficheOperation.Lines.Add('la nouvelle présélection ?');
               FSFormulairePreselection.BitValiderOperation.SetFocus;
          end;
     end
     else
     begin
          FSFormulairePreselection.BitValiderOperation.Kind:=bkAll;
          FSFormulairePreselection.BitValiderOperation.Caption:='OK';
          FSFormulairePreselection.MessageAfficheOperation.Lines.Text:='Aucune modification';
          FSFormulairePreselection.MessageAfficheOperation.Lines.Add('à enregistrer ?');
          FSFormulairePreselection.BitNonOperation.SetFocus;
     end;
end;

if(FSFormulairePreselection.BitValiderPreselection.Caption='Supprimer la présélection !')then
begin
     FSFormulairePreselection.AfficheOperation.Visible:=true;
     FSFormulairePreselection.BitValiderOperation.Kind:=bkCancel;
     FSFormulairePreselection.BitValiderOperation.Caption:='Supprimer';
     FSFormulairePreselection.MessageAfficheOperation.Lines.Text:='Voulez vous Supprimer';
     FSFormulairePreselection.MessageAfficheOperation.Lines.Add('l''enregistrement ?');
     FSFormulairePreselection.BitValiderOperation.SetFocus;
end;

end;

procedure TFSFormulairePreselection.RBFavorableClick(Sender: TObject);
begin
     FSFormulairePreselection.EditAccord.Text:=FSFormulairePreselection.RBFavorable.Caption;
end;

procedure TFSFormulairePreselection.RBDefavorableClick(Sender: TObject);
begin

if(FSFormulairePreselection.RBOKReglementApportInitial.Checked=true)then
begin
     showmessage('Attention ! Un versement à été effectué !');
     AfficherSelectionTableau(FSFormulairePreselection.TableauFormulairePreselection,FSFormulairePreselection.TableauFormulairePreselection.Row);
end
else
begin
     FSFormulairePreselection.EditAccord.Text:=FSFormulairePreselection.RBDeFavorable.Caption;
end;

end;

procedure TFSFormulairePreselection.RBInstanceClick(Sender: TObject);
begin

if(FSFormulairePreselection.RBOKReglementApportInitial.Checked=true)then
begin
     showmessage('Attention ! Un versement à été effectué !');
     AfficherSelectionTableau(FSFormulairePreselection.TableauFormulairePreselection,FSFormulairePreselection.TableauFormulairePreselection.Row);
end
else
begin
     FSFormulairePreselection.EditAccord.Text:=FSFormulairePreselection.RBInstance.Caption;
end;

end;

procedure TFSFormulairePreselection.PageFormulairePreselectionShow(
  Sender: TObject);
begin
    FSFormulairePreselection.TiersUtilise.Caption:=FSFormulairePreselection.EditChargementFichierConcerne.Text;

     OpenFParc(RParc);
     ChDomiciliation:=RParc.Parcours+'\'+Exercice+'FDomiciliation';
     assignfile(FDomiciliation,ChDomiciliation);
     if FileExists(ChDomiciliation)then
     Reset(FDomiciliation)
     else Rewrite(FDomiciliation);
     Seek(FDomiciliation,0);
     FSFormulairePreselection.EditDomiciliation.Items.Text:='';
     while not eof(FDomiciliation)do
     begin
          read(FDomiciliation,RDomiciliation);
          FSFormulairePreselection.EditDomiciliation.Items.Add(RDomiciliation.DesignationDomiciliation);
     end;
     CloseFile(FDomiciliation);

     FSFormulairePreselection.EditDomiciliation.ItemIndex:=0;

     FSFormulairePreselection.AfficheDetailApportInitial.Width:=0;

     ListeFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselection,'','','','','',strtointeger(FSFormulairePreselection.EditPositionFormulairePreselection.Text),FSFormulairePreselection.RBEtatAfficheTraitement.Caption);
end;

procedure TFSFormulairePreselection.TableauFormulairePreselectionClick(
  Sender: TObject);
var   RowModif,ColModif:integer;
begin
if(FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Visible=true)then
begin
     FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Visible:=false;
end
else
begin
     FSFormulairePreselection.AfficheImprimer.Height:=33;

     FSFormulairePreselection.TableauTiers.Visible:=false;
     FSFormulairePreselection.TableauProjet.Visible:=false;
     FSFormulairePreselection.AfficheDomiciliation.Visible:=false;

     AfficherSelectionTableau(FSFormulairePreselection.TableauFormulairePreselection,FSFormulairePreselection.TableauFormulairePreselection.Row);
end;

end;

procedure TFSFormulairePreselection.BitBtn1Click(Sender: TObject);
begin
     FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Visible:=true;
     FSFormulairePreselection.AfficheDetailApportInitial.Width:=0;
     FSFormulairePreselection.AfficheOperationDureePreselection.Width:=0;
     FSFormulairePreselection.BitValiderPreselection.Kind:=bkAll;
     FSFormulairePreselection.BitValiderPreselection.Caption:='Valider la Présélection !';
     FSFormulairePreselection.EditRowSelect.Text:='';
     FSFormulairePreselection.EditPositionFormulairePreselection.Text:='';
     FSFormulairePreselection.EditDateFormulairePreselection.Date:=Date;
     FSFormulairePreselection.EditDureePreselection.Text:='0';
     FSFormulairePreselection.EditUniteDureePreselection.ItemIndex:=0;
     FSFormulairePreselection.EditDateFinPreselection.Text:=datetostr(Date);
     FSFormulairePreselection.EditCodeTiers.Text:='';
     FSFormulairePreselection.EditTiers.Text:='';
     FSFormulairePreselection.EditNumProjet.Text:='';
     FSFormulairePreselection.EditDesignationProjet.Text:='';
     FSFormulairePreselection.EditTypeLogement.Text:='';
     FSFormulairePreselection.EditEtatLogement.Text:='';
     FSFormulairePreselection.EditMontantLogement.Text:='';
     FSFormulairePreselection.EditMontantLogementLettre.Text:='';
     FSFormulairePreselection.EditSimulationBanque.Text:='';
     FSFormulairePreselection.EditSimulationBanqueLettre.Text:='';
     FSFormulairePreselection.EditApportPersonnel.Text:='';
     FSFormulairePreselection.EditApportPersonnelLettre.Text:='';
     FSFormulairePreselection.EditApportInitial.Text:='';
     FSFormulairePreselection.EditApportInitialLettre.Text:='';
     FSFormulairePreselection.EditAccord.Text:='';
     FSFormulairePreselection.EditMotifAccord.Text:='';
     FSFormulairePreselection.RBFavorable.Checked:=false;
     FSFormulairePreselection.RBDeFavorable.Checked:=false;
     FSFormulairePreselection.RBInstance.Checked:=false;
     FSFormulairePreselection.EditTiers.SetFocus;

     FSFormulairePreselection.RBOKReglementApportInitial.Checked:=false;
     FSFormulairePreselection.EditDateReglementApportInitial.Enabled:=false;
     FSFormulairePreselection.EditModeReglementApportInitial.Enabled:=false;
     FSFormulairePreselection.EditDomiciliation.Enabled:=false;
     FSFormulairePreselection.EditNumPiece.Enabled:=false;
     FSFormulairePreselection.EditObservation.Enabled:=false;

     FSFormulairePreselection.EditDateReglementApportInitial.Text:='  /  /    ';
     FSFormulairePreselection.EditModeReglementApportInitial.Text:='';
     FSFormulairePreselection.EditDomiciliation.Text:='';
     FSFormulairePreselection.EditNumPiece.Text:='';
     FSFormulairePreselection.EditObservation.Text:='';
end;

procedure TFSFormulairePreselection.EditTypeLogementAfficheChange(
  Sender: TObject);
begin
ListeFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselectionAffiche,FSFormulairePreselection.EditNumProjetAffiche.Text,FSFormulairePreselection.EditTypeLogementAffiche.Text,FSFormulairePreselection.EditEtatLogementAffiche.Text,FSFormulairePreselection.EditAccordAffiche.Text,FSFormulairePreselection.EditEtatReglementApportInitial.Text,1,FSFormulairePreselection.RBEtatAffiche.Caption);
end;

procedure TFSFormulairePreselection.EditEtatLogementAfficheChange(
  Sender: TObject);
begin
ListeFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselectionAffiche,FSFormulairePreselection.EditNumProjetAffiche.Text,FSFormulairePreselection.EditTypeLogementAffiche.Text,FSFormulairePreselection.EditEtatLogementAffiche.Text,FSFormulairePreselection.EditAccordAffiche.Text,FSFormulairePreselection.EditEtatReglementApportInitial.Text,1,FSFormulairePreselection.RBEtatAffiche.Caption);
end;

procedure TFSFormulairePreselection.EditAccordAfficheChange(
  Sender: TObject);
begin
ListeFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselectionAffiche,FSFormulairePreselection.EditNumProjetAffiche.Text,FSFormulairePreselection.EditTypeLogementAffiche.Text,FSFormulairePreselection.EditEtatLogementAffiche.Text,FSFormulairePreselection.EditAccordAffiche.Text,FSFormulairePreselection.EditEtatReglementApportInitial.Text,1,FSFormulairePreselection.RBEtatAffiche.Caption);
end;

procedure TFSFormulairePreselection.TabSheet1Show(Sender: TObject);
begin
     ListeFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselectionAffiche,FSFormulairePreselection.EditNumProjetAffiche.Text,FSFormulairePreselection.EditTypeLogementAffiche.Text,FSFormulairePreselection.EditEtatLogementAffiche.Text,FSFormulairePreselection.EditAccordAffiche.Text,FSFormulairePreselection.EditEtatReglementApportInitial.Text,strtointeger(FSFormulairePreselection.EditPositionFormulairePreselection.Text),FSFormulairePreselection.RBEtatAfficheTraitement.Caption);
end;

procedure TFSFormulairePreselection.AfficheOptionPrintClick(
  Sender: TObject);
begin

if(FSFormulairePreselection.AfficheOptionPrint.Height=31)
then FSFormulairePreselection.AfficheOptionPrint.Height:=271
else FSFormulairePreselection.AfficheOptionPrint.Height:=31;

end;

procedure TFSFormulairePreselection.BitBtn4Click(Sender: TObject);
var   R:integer; GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;
begin
R:=1;
if(FSFormulairePreselection.EditDesignationProjetAffiche.Text<>'')
then FSFormulairePreselection.TitreEtat.Lines.Text:='Liste des Présélection, Structure: '+FSFormulairePreselection.EditDesignationProjetAffiche.Text
else FSFormulairePreselection.TitreEtat.Lines.Text:='Liste des Présélection';
FSFormulairePreselection.TitreEtat.Lines.Add('Type du logement:      '+FSFormulairePreselection.EditTypeLogementAffiche.Text);
FSFormulairePreselection.TitreEtat.Lines.Add('Etat du logement:        '+FSFormulairePreselection.EditEtatLogementAffiche.Text);
FSFormulairePreselection.TitreEtat.Lines.Add('Accord Présélection:   '+FSFormulairePreselection.EditAccordAffiche.Text);
FSFormulairePreselection.TitreEtat.Lines.Add('Etat du Réglement:   '+FSFormulairePreselection.EditEtatReglementApportInitial.Text);


GrasARow:='0';
GrasACol:='0';
CenterARow:='0';
CenterACol:='0;2;3;5';
RightARow:='';
RightACol:='9-12';

OptionsImpression(FSFormulairePreselection.TableauFormulairePreselectionAffiche,FSFormulairePreselection.RBAlignementTitre.Text,0,1,FSFormulairePreselection.TitreEtat.Lines.Text,FSFormulairePreselection.RBAjustement.Checked,FSFormulairePreselection.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
FSFormulairePreselection.AfficheOptionPrint.Height:=31;
end;

procedure TFSFormulairePreselection.TableauFormulairePreselectionAfficheClick(
  Sender: TObject);
var TypeData:string;
begin
FSFormulairePreselection.AfficheOptionPrint.Height:=31;

if(FSFormulairePreselection.RBRubriqueTrieTableauAvis.Checked=true)then
begin
     FSFormulairePreselection.EditRubriqueTrie.Text:=inttostr(FSFormulairePreselection.TableauFormulairePreselectionAffiche.Col);

     TypeData:='';

     if(FSFormulairePreselection.TableauFormulairePreselectionAffiche.Col=2)
     then
     begin
          TypeData:='Date';
     end;

     if(FSFormulairePreselection.TableauFormulairePreselectionAffiche.Col=9)
     or(FSFormulairePreselection.TableauFormulairePreselectionAffiche.Col=10)
     or(FSFormulairePreselection.TableauFormulairePreselectionAffiche.Col=11)
     or(FSFormulairePreselection.TableauFormulairePreselectionAffiche.Col=12)
     then
     begin
          TypeData:='Num';
     end;

     FSFormulairePreselection.RBRubriqueTrieTableauAvis.Checked:=false;
     TrierTableauARowSpecial(FSFormulairePreselection.TableauFormulairePreselectionAffiche,1,FSFormulairePreselection.TableauFormulairePreselectionAffiche.RowCount-1,1,FSFormulairePreselection.EditRubriqueTrie.Text,TypeData,'+');
end;
end;

procedure TFSFormulairePreselection.BitPrintFormulairePreselectionClick(Sender: TObject);
var  ChiffreTexte:string;
begin
FSFormulairePreselection.AfficheImprimer.Height:=33;

OpenFParc(RParc);
PrintFormulairePreselection.TitreEntreprise1.Caption:=RParc.Text1;
PrintFormulairePreselection.TitreEntreprise2.Caption:=RParc.Text2;
PrintFormulairePreselection.TitreEntreprise3.Caption:=RParc.Text3;
PrintFormulairePreselection.TitreEntreprise4.Caption:=RParc.Text4;

RClient:=ChercherTiers(FSFormulairePreselection.EditChargementTypeProces.Text,FSFormulairePreselection.EditChargementFichierConcerne.Text,FSFormulairePreselection.TableauFormulairePreselection.Cells[3,FSFormulairePreselection.TableauFormulairePreselection.Row],'');

PrintFormulairePreselection.TitreEtat.Caption:='Formulaire de présélection N°: '+inttostr(strtointeger(FSFormulairePreselection.TableauFormulairePreselection.Cells[1,FSFormulairePreselection.TableauFormulairePreselection.Row])+1);
PrintFormulairePreselection.DataDateFormulaire.Caption:='Edition: '+FSFormulairePreselection.TableauFormulairePreselection.Cells[2,FSFormulairePreselection.TableauFormulairePreselection.Row];
PrintFormulairePreselection.DataNometPrenom.Lines.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[4,FSFormulairePreselection.TableauFormulairePreselection.Row];
PrintFormulairePreselection.DataDateNaissance.Caption:=RClient.DateNaisTiers;
PrintFormulairePreselection.DataFonction.Caption:=RClient.FonctionTiers;
PrintFormulairePreselection.DataTelephone.Caption:=RClient.NumTelephoneTiers;
PrintFormulairePreselection.DataProjet.Lines.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[6,FSFormulairePreselection.TableauFormulairePreselection.Row];
PrintFormulairePreselection.DataType.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[7,FSFormulairePreselection.TableauFormulairePreselection.Row];
PrintFormulairePreselection.DataEtat.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[8,FSFormulairePreselection.TableauFormulairePreselection.Row];
PrintFormulairePreselection.DataAttribution.Lines.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[7,FSFormulairePreselection.TableauFormulairePreselection.Row]+' '+FSFormulairePreselection.TableauFormulairePreselection.Cells[8,FSFormulairePreselection.TableauFormulairePreselection.Row]+' '+FSFormulairePreselection.TableauFormulairePreselection.Cells[6,FSFormulairePreselection.TableauFormulairePreselection.Row];
PrintFormulairePreselection.DataMontantLogementChiffre.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[9,FSFormulairePreselection.TableauFormulairePreselection.Row];
PrintFormulairePreselection.DataMontantLogementLettre.Lines.Text:=ChiffreenLettre(FSFormulairePreselection.TableauFormulairePreselection.Cells[9,FSFormulairePreselection.TableauFormulairePreselection.Row]);
PrintFormulairePreselection.DataMontantSimulationChiffre.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[10,FSFormulairePreselection.TableauFormulairePreselection.Row];
PrintFormulairePreselection.DataMontantSimulationLettre.Lines.Text:=ChiffreenLettre(FSFormulairePreselection.TableauFormulairePreselection.Cells[10,FSFormulairePreselection.TableauFormulairePreselection.Row]);
PrintFormulairePreselection.DataMontantApportPersonnelChiffre.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[11,FSFormulairePreselection.TableauFormulairePreselection.Row];
PrintFormulairePreselection.DataMontantApportPersonnelLettre.Lines.Text:=ChiffreenLettre(FSFormulairePreselection.TableauFormulairePreselection.Cells[11,FSFormulairePreselection.TableauFormulairePreselection.Row]);
PrintFormulairePreselection.DataMontantApportInitialChiffre.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[12,FSFormulairePreselection.TableauFormulairePreselection.Row];
PrintFormulairePreselection.DataMontantApportInitialLettre.Lines.Text:=ChiffreenLettre(FSFormulairePreselection.TableauFormulairePreselection.Cells[12,FSFormulairePreselection.TableauFormulairePreselection.Row]);
PrintFormulairePreselection.DataAccord.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[13,FSFormulairePreselection.TableauFormulairePreselection.Row];
PrintFormulairePreselection.DataMotifAccord.Lines.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[14,FSFormulairePreselection.TableauFormulairePreselection.Row];
PrintFormulairePreselection.DataSignataire.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[15,FSFormulairePreselection.TableauFormulairePreselection.Row];
PrintFormulairePreselection.Preview;
end;

procedure TFSFormulairePreselection.BitNonOperationClick(Sender: TObject);
begin
FSFormulairePreselection.TimerCliqueColor.Enabled:=false;
FSFormulairePreselection.AfficheOperation.Visible:=false;
AfficherSelectionTableau(FSFormulairePreselection.TableauFormulairePreselection,FSFormulairePreselection.TableauFormulairePreselection.Row);
FSFormulairePreselection.TableauFormulairePreselection.SetFocus;
end;

procedure TFSFormulairePreselection.BitValiderOperationClick(Sender: TObject);
var  i,NumPreselection,RExistant,RSupprimer,RSauvgarder,PositionSelect:integer;   OKFormulaire:boolean;
begin
     PositionSelect:=0;

     if(FSFormulairePreselection.BitValiderOperation.Caption='Valider')then
     begin
          OpenFParc(RParc);
          ChFormulairePreselection:=RParc.Parcours+'\'+Exercice+'FFormulairePreselection';
          assignfile(FFormulairePreselection,ChFormulairePreselection);
          if FileExists(ChFormulairePreselection)then
          Reset(FFormulairePreselection)
          else Rewrite(FFormulairePreselection);
          Seek(FFormulairePreselection,0);
          i:=0;
          NumPreselection:=1;
          OKFormulaire:=false;
          while not eof(FFormulairePreselection)and(OKFormulaire=false)do
          begin
               read(FFormulairePreselection,RFormulairePreselection);
               if(NumPreselection<=RFormulairePreselection.NumFormulairePreselection)then NumPreselection:=RFormulairePreselection.NumFormulairePreselection+1;
               
               if(inttostr(RFormulairePreselection.NumFormulairePreselection)=FSFormulairePreselection.EditPositionFormulairePreselection.Text)then
               begin
                    OKFormulaire:=true;
                    NumPreselection:=RFormulairePreselection.NumFormulairePreselection;
               end
               else i:=i+1;
          end;

          Seek(FFormulairePreselection,i);
          RFormulairePreselection.NumFormulairePreselection:=NumPreselection;
          RFormulairePreselection.DateFormulairePreselection:=datetostr(FSFormulairePreselection.EditDateFormulairePreselection.Date);
          RFormulairePreselection.DureePreselection:=strtointeger(FSFormulairePreselection.EditDureePreselection.Text);
          RFormulairePreselection.UniteDureePreselection:=FSFormulairePreselection.EditUniteDureePreselection.Text;
          RFormulairePreselection.DateFinDureePreselection:=FSFormulairePreselection.EditDateFinPreselection.Text;
          RFormulairePreselection.CodeTier:=FSFormulairePreselection.EditCodeTiers.Text;
          RFormulairePreselection.Tiers:=FSFormulairePreselection.EditTiers.Text;
          RFormulairePreselection.NumProjet:=FSFormulairePreselection.EditNumProjet.Text;
          RFormulairePreselection.DesignationProjet:=FSFormulairePreselection.EditDesignationProjet.Text;
          RFormulairePreselection.TypeLogement:=FSFormulairePreselection.EditTypeLogement.Text;
          RFormulairePreselection.EtatLogement:=FSFormulairePreselection.EditEtatLogement.Text;
          RFormulairePreselection.MontantLogement:=strtoreal(FSFormulairePreselection.EditMontantLogement.Text);
          RFormulairePreselection.SimulationBanque:=strtoreal(FSFormulairePreselection.EditSimulationBanque.Text);
          RFormulairePreselection.ApportInitial:=strtoreal(FSFormulairePreselection.EditApportInitial.Text);
          RFormulairePreselection.Accord:=FSFormulairePreselection.EditAccord.Text;
          RFormulairePreselection.MotifAccord:=FSFormulairePreselection.EditMotifAccord.Text;
          RFormulairePreselection.Signataire:=FSFormulairePreselection.EditSignataire.Text;
          RFormulairePreselection.OKReglementApportInitial:=FSFormulairePreselection.RBOKReglementApportInitial.Checked;
          RFormulairePreselection.DateReglementApportInitial:=FSFormulairePreselection.EditDateReglementApportInitial.Text;
          RFormulairePreselection.ModeReglementApportInitial:=FSFormulairePreselection.EditModeReglementApportInitial.Text;
          RFormulairePreselection.Domiciliation:=FSFormulairePreselection.EditDomiciliation.Text;
          RFormulairePreselection.NumPiece:=FSFormulairePreselection.EditNumPiece.Text;
          RFormulairePreselection.Observation:=FSFormulairePreselection.EditObservation.Text;
          write(FFormulairePreselection,RFormulairePreselection);
          CloseFile(FFormulairePreselection);

          PositionSelect:=i;
     end;

     if(FSFormulairePreselection.BitValiderOperation.Caption='Supprimer')then
     begin
          PositionSelect:=strtointeger(FSFormulairePreselection.TableauFormulairePreselection.Cells[1,FSFormulairePreselection.TableauFormulairePreselection.Row]);
          if(SupprimerFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselection.Cells[1,FSFormulairePreselection.TableauFormulairePreselection.Row],RExistant,RSupprimer,RSauvgarder))then
          begin
               if(RSupprimer>0)
               then AfficherMessage('Suppression réussie ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder))
               else AfficherMessage('Aucun Registre Supprimer ! FTotal: '+inttostr(RExistant)+' FSupprimer: '+inttostr(RSupprimer)+' FSauvgarder: '+inttostr(RSauvgarder));
          end;
     end;

     FSFormulairePreselection.EditPositionFormulairePreselection.Text:=inttostr(PositionSelect);

     ListeFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselection,'','','','','',PositionSelect,FSFormulairePreselection.RBEtatAfficheTraitement.Caption);
     FSFormulairePreselection.TimerCliqueColor.Enabled:=false;
     FSFormulairePreselection.AfficheOperation.Visible:=false;
     FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Visible:=false;
end;

procedure TFSFormulairePreselection.TimerCliqueColorTimer(Sender: TObject);
begin

if(FSFormulairePreselection.AfficheOperation.Visible=true)then
begin
     if(FSFormulairePreselection.AfficheOperation.Color=clBtnFace)then
     begin
          FSFormulairePreselection.AfficheOperation.Color:=clRed;
     end
     else
     begin
          FSFormulairePreselection.AfficheOperation.Color:=clBtnFace;
     end;
end;
end;

procedure TFSFormulairePreselection.AfficheOperationEnter(Sender: TObject);
begin
FSFormulairePreselection.TimerCliqueColor.Enabled:=true;
end;

procedure TFSFormulairePreselection.BitBtn3Click(Sender: TObject);
begin
FSFormulairePreselection.Cible.Caption:='Saisie';
FSFormulairePreselection.TableauTiers.Left:=289;
FSFormulairePreselection.TableauTiers.Top:=215;
ListeTiers(FSFormulairePreselection.TableauTiers,FSFormulairePreselection.EditChargementTypeProces.Text,FSFormulairePreselection.EditChargementFichierConcerne.Text,'','',FSFormulairePreselection.EditTiers.Text,true);
end;

procedure TFSFormulairePreselection.BitBtn6Click(Sender: TObject);
begin
FSFormulairePreselection.Cible.Caption:='Saisie';
FSFormulairePreselection.TableauProjet.Left:=289;
FSFormulairePreselection.TableauProjet.Top:=255;
FSFormulairePreselection.TableauProjet.Visible:=true;
ListeProjetFinance(FSFormulairePreselection.TableauProjet,'','','',false,'1','',FSFormulairePreselection.RBIndiquerReservationStructure.Checked,false,FSFormulairePreselection.EditChargementTypeProces.Text,FSFormulairePreselection.EditChargementFichierConcerne.Text);
end;

procedure TFSFormulairePreselection.BitPrintAutorisationVersementClick(Sender: TObject);
begin
FSFormulairePreselection.AfficheImprimer.Height:=33;

if(FSFormulairePreselection.EditAccord.Text='Favorable')then
begin
     FSFormulairePreselection.AfficheDomiciliation.Visible:=true;
     FSFormulairePreselection.PageAgence.Show;
     ListeDomiciliation(FSFormulairePreselection.TableauDomiciliation);

     FSFormulairePreselection.EditTexteAutorisation.Lines.Text:='          Afin de concrétisé la présélection, pour la réservation d''un '+FSFormulairePreselection.TableauFormulairePreselection.Cells[7,FSFormulairePreselection.TableauFormulairePreselection.Row];
end
else
begin
     if(FSFormulairePreselection.EditAccord.Text='Instance')then showmessage('Présélection en Instance ! Aucun versement à effectuer !');
     if(FSFormulairePreselection.EditAccord.Text='Défavorable')then showmessage('Présélection défavorable ! Aucun versement à effectuer !');
end;

end;

procedure TFSFormulairePreselection.AfficheImprimerClick(Sender: TObject);
begin
if(FSFormulairePreselection.AfficheImprimer.Height=33)
then FSFormulairePreselection.AfficheImprimer.Height:=217
else FSFormulairePreselection.AfficheImprimer.Height:=33;

if(FSFormulairePreselection.EditAccord.Text='Favorable')then
begin
     FSFormulairePreselection.BitPrintAutorisationVersement.Enabled:=true;
     FSFormulairePreselection.BitPrintAvisVersement.Enabled:=FSFormulairePreselection.RBOKReglementApportInitial.Checked;
     FSFormulairePreselection.RBImpressionDouble.Enabled:=FSFormulairePreselection.BitPrintAvisVersement.Enabled;
end
else
begin
     FSFormulairePreselection.BitPrintAutorisationVersement.Enabled:=false;
     FSFormulairePreselection.BitPrintAvisVersement.Enabled:=FSFormulairePreselection.RBOKReglementApportInitial.Checked;
     FSFormulairePreselection.RBImpressionDouble.Enabled:=FSFormulairePreselection.BitPrintAvisVersement.Enabled;
end;

end;

procedure TFSFormulairePreselection.EditMontantLogementKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
FSFormulairePreselection.EditMontantLogementLettre.Text:='';

if(FSFormulairePreselection.RBApportPersonnelFixe.Checked=false)then
begin
     FSFormulairePreselection.EditApportPersonnel.Text:=Vergule(floattostr(strtoreal(FSFormulairePreselection.EditMontantLogement.Text)-
                                                        strtoreal(FSFormulairePreselection.EditSimulationBanque.Text)),'2','C','');
     FSFormulairePreselection.EditApportPersonnelLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditApportPersonnel.Text);
end
else
begin
     FSFormulairePreselection.EditSimulationBanque.Text:=Vergule(floattostr(strtoreal(FSFormulairePreselection.EditMontantLogement.Text)-
                                                        strtoreal(FSFormulairePreselection.EditApportPersonnel.Text)),'2','C','');
     FSFormulairePreselection.EditSimulationBanqueLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditSimulationBanque.Text);
end;
end;

procedure TFSFormulairePreselection.EditSimulationBanqueKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
FSFormulairePreselection.EditSimulationBanqueLettre.Text:='';

if(FSFormulairePreselection.RBApportPersonnelFixe.Checked=false)then
begin
     FSFormulairePreselection.EditApportPersonnel.Text:=Vergule(floattostr(strtoreal(FSFormulairePreselection.EditMontantLogement.Text)-
                                                        strtoreal(FSFormulairePreselection.EditSimulationBanque.Text)),'2','C','');
     FSFormulairePreselection.EditApportPersonnelLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditApportPersonnel.Text);
end
else
begin
     FSFormulairePreselection.EditSimulationBanque.Text:=Vergule(floattostr(strtoreal(FSFormulairePreselection.EditMontantLogement.Text)-
                                                        strtoreal(FSFormulairePreselection.EditApportPersonnel.Text)),'2','C','');
     FSFormulairePreselection.EditSimulationBanqueLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditSimulationBanque.Text);
end;
end;

procedure TFSFormulairePreselection.EditApportInitialEnter(
  Sender: TObject);
begin
FSFormulairePreselection.EditApportInitial.Text:=Vergule(FSFormulairePreselection.EditApportInitial.Text,'2','N','');
end;

procedure TFSFormulairePreselection.EditApportInitialExit(Sender: TObject);
var   ChiffreTexte:string;
begin
FSFormulairePreselection.EditApportInitial.Text:=Vergule(FSFormulairePreselection.EditApportInitial.Text,'2','C','');

FSFormulairePreselection.EditApportInitialLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditApportInitial.Text);

if(strtoreal(FSFormulairePreselection.EditApportInitial.Text)>strtoreal(FSFormulairePreselection.EditApportPersonnel.Text))then
begin
     showmessage('Attention ! Le montant initial doit être inférieur ou égale à l''apport personnel !');
     FSFormulairePreselection.EditApportInitial.SetFocus;
end;

end;

procedure TFSFormulairePreselection.EditApportInitialKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.RBFavorable.SetFocus;
end;

end;

procedure TFSFormulairePreselection.EditApportInitialKeyPress(
  Sender: TObject; var Key: Char);
begin
if key in['?','.',';','/',':']then key:=',';
if not(key in['0'..'9',','])then key:=#0;
end;

procedure TFSFormulairePreselection.BitBtn5Click(Sender: TObject);
begin
FSFormulairePreselection.Cible.Caption:='Affiche';
FSFormulairePreselection.TableauProjet.Left:=44;
FSFormulairePreselection.TableauProjet.Top:=70;
FSFormulairePreselection.TableauProjet.Visible:=true;
ListeProjetFinance(FSFormulairePreselection.TableauProjet,'','','',false,'1','',false,false,FSFormulairePreselection.EditChargementTypeProces.Text,FSFormulairePreselection.EditChargementFichierConcerne.Text);
end;

procedure TFSFormulairePreselection.TableauDomiciliationKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if(key in[VK_RETURN])then
begin
     ImprimeAutorisationVersement;
end;

end;

procedure TFSFormulairePreselection.BitBtn9Click(Sender: TObject);
begin
FSFormulairePreselection.AfficheDomiciliation.Visible:=false;
end;

procedure TFSFormulairePreselection.PageControl1Change(Sender: TObject);
begin
     FSFormulairePreselection.EditRowSelect.Text:='';
     FSFormulairePreselection.TableauTiers.Visible:=false;
     FSFormulairePreselection.TableauProjet.Visible:=false;
     FSFormulairePreselection.AfficheDomiciliation.Visible:=false;
     
     FSFormulairePreselection.EditPositionFormulairePreselection.Text:='';
     EditDateFormulairePreselection.Date:=Date;
     FSFormulairePreselection.EditCodeTiers.Text:='';
     FSFormulairePreselection.EditTiers.Text:='';
     FSFormulairePreselection.EditNumProjet.Text:='';
     FSFormulairePreselection.EditDesignationProjet.Text:='';
     FSFormulairePreselection.EditTypeLogement.Text:='';
     FSFormulairePreselection.EditEtatLogement.Text:='';
     FSFormulairePreselection.EditMontantLogement.Text:='';
     FSFormulairePreselection.EditMontantLogementLettre.Text:='';
     FSFormulairePreselection.EditSimulationBanque.Text:='';
     FSFormulairePreselection.EditSimulationBanqueLettre.Text:='';
     FSFormulairePreselection.EditApportPersonnel.Text:='';
     FSFormulairePreselection.EditApportPersonnelLettre.Text:='';
     FSFormulairePreselection.EditApportInitial.Text:='';
     FSFormulairePreselection.EditApportInitialLettre.Text:='';
     FSFormulairePreselection.EditAccord.Text:='';
     FSFormulairePreselection.EditMotifAccord.Text:='';
end;

procedure TFSFormulairePreselection.TableauDomiciliationDblClick(
  Sender: TObject);
begin
ImprimeAutorisationVersement;
end;

procedure TFSFormulairePreselection.BitBtn10Click(Sender: TObject);
begin
FSFormulairePreselection.AfficheDetailApportInitial.Width:=0;
FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Visible:=false;
end;

procedure TFSFormulairePreselection.BitValiderDetailApportInitialClick(Sender: TObject);
var   RowModif,ColModif:integer;
begin
FSFormulairePreselection.AfficheOperation.Visible:=true;

if(ControleModification(FSFormulairePreselection.TableauFormulairePreselection,FSFormulairePreselection.EditRowSelect.Text,RowModif,ColModif))then
begin
     FSFormulairePreselection.TableauFormulairePreselection.Row:=RowModif;
     FSFormulairePreselection.TableauFormulairePreselection.Col:=ColModif;
     FSFormulairePreselection.TableauFormulairePreselection.SetFocus;

     if(FSFormulairePreselection.EditPositionFormulairePreselection.Text<>'')
     then
     begin
          FSFormulairePreselection.BitValiderOperation.Kind:=bkAll;
          FSFormulairePreselection.BitValiderOperation.Caption:='Valider';
          FSFormulairePreselection.MessageAfficheOperation.Lines.Text:='Voulez vous enregistrer';
          FSFormulairePreselection.MessageAfficheOperation.Lines.Add('les modifications ?');
          FSFormulairePreselection.BitValiderOperation.SetFocus;
     end
     else
     begin
          FSFormulairePreselection.BitValiderOperation.Kind:=bkAll;
          FSFormulairePreselection.BitValiderOperation.Caption:='Valider';
          FSFormulairePreselection.MessageAfficheOperation.Lines.Text:='Voulez vous enregistrer';
          FSFormulairePreselection.MessageAfficheOperation.Lines.Add('la nouvelle présélection ?');
          FSFormulairePreselection.BitValiderOperation.SetFocus;
     end;
end
else
begin
     FSFormulairePreselection.BitValiderOperation.Kind:=bkAll;
     FSFormulairePreselection.BitValiderOperation.Caption:='OK';
     FSFormulairePreselection.MessageAfficheOperation.Lines.Text:='Aucune modification';
     FSFormulairePreselection.MessageAfficheOperation.Lines.Add('à enregistrer ?');
     FSFormulairePreselection.BitNonOperation.SetFocus;
end;

FSFormulairePreselection.AfficheDetailApportInitial.Width:=0;
end;

procedure TFSFormulairePreselection.BitBtn8Click(Sender: TObject);
begin

if(FSFormulairePreselection.EditAccord.Text='Favorable')then
begin
     FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Visible:=true;
     FSFormulairePreselection.AfficheDetailApportInitial.Width:=FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Width-16;;
     FSFormulairePreselection.AfficheOperationDureePreselection.Width:=0;
     FSFormulairePreselection.BitValiderPreselection.Kind:=bkRetry;
     FSFormulairePreselection.BitValiderPreselection.Caption:='';
     AfficherSelectionTableau(FSFormulairePreselection.TableauFormulairePreselection,FSFormulairePreselection.TableauFormulairePreselection.Row);
end
else
begin
     if(FSFormulairePreselection.EditAccord.Text='Instance')then showmessage('Présélection en Instance ! Aucun versement à effectuer !');
     if(FSFormulairePreselection.EditAccord.Text='Défavorable')then showmessage('Présélection défavorable ! Aucun versement à effectuer !');
end;

end;

procedure TFSFormulairePreselection.BitOKReglementApportInitialClick(
  Sender: TObject);
begin
     ActionReglementApportInitial(FSFormulairePreselection.EditAccord.Text,FSFormulairePreselection.RBOKReglementApportInitial.Checked);
end;

procedure TFSFormulairePreselection.BitPrintAvisVersementClick(
  Sender: TObject);
var   VisibleData:boolean;     ChiffreTexte:string;
begin
FSFormulairePreselection.AfficheImprimer.Height:=33;

if(FSFormulairePreselection.RBOKReglementApportInitial.Checked=true)then
begin
     PrintAvis.CacheAvisX.Enabled:=not(FSFormulairePreselection.RBImpressionDouble.Checked);

     {*******************Entreprise***************}
     OpenFParc(RParc);
     PrintAvis.DataEntreprise.Lines.Text:='';
     PrintAvis.DataEntrepriseX.Lines.Text:='';
     PrintAvis.DataEntreprise.Lines.Add(RParc.Text1);  PrintAvis.DataEntrepriseX.Lines.Add(RParc.Text1);
     PrintAvis.DataEntreprise.Lines.Add(RParc.Text2);  PrintAvis.DataEntrepriseX.Lines.Add(RParc.Text2);
     PrintAvis.DataEntreprise.Lines.Add(RParc.Text3);  PrintAvis.DataEntrepriseX.Lines.Add(RParc.Text3);
     PrintAvis.DataEntreprise.Lines.Add(RParc.Text4);  PrintAvis.DataEntrepriseX.Lines.Add(RParc.Text4);
     {***************Fin Entreprise***************}

     if(FSFormulairePreselection.EditModeReglementApportInitial.Text='Chèque')
     or(FSFormulairePreselection.EditModeReglementApportInitial.Text='Bon')
     or(FSFormulairePreselection.EditModeReglementApportInitial.Text='Virement')
     then
     begin
          VisibleData:=true;

          PrintAvis.TitreDataChequeNum.Enabled:=VisibleData;     PrintAvis.TitreDataChequeNumX.Enabled:=VisibleData;
          PrintAvis.CDataChequeNum.Enabled:=VisibleData;         PrintAvis.CDataChequeNumX.Enabled:=VisibleData;
          PrintAvis.DataChequeNum.Enabled:=VisibleData;          PrintAvis.DataChequeNumX.Enabled:=VisibleData;

          PrintAvis.TitreDataDomiciliation.Enabled:=VisibleData; PrintAvis.TitreDataDomiciliationX.Enabled:=VisibleData;
          PrintAvis.CDataDomiciliation.Enabled:=VisibleData;     PrintAvis.CDataDomiciliationX.Enabled:=VisibleData;
          PrintAvis.DataDomiciliation.Enabled:=VisibleData;      PrintAvis.DataDomiciliationX.Enabled:=VisibleData;

          PrintAvis.TitreDataMontant.Enabled:=VisibleData;       PrintAvis.TitreDataMontantX.Enabled:=VisibleData;
          PrintAvis.CDataMontant.Enabled:=VisibleData;           PrintAvis.CDataMontantX.Enabled:=VisibleData;
          PrintAvis.DataMontant.Enabled:=VisibleData;            PrintAvis.DataMontantX.Enabled:=VisibleData;

          PrintAvis.TitreDataChequeNum.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[19,FSFormulairePreselection.TableauFormulairePreselection.Row]+' N°:';   PrintAvis.TitreDataChequeNumX.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[19,FSFormulairePreselection.TableauFormulairePreselection.Row]+' N°:';
          PrintAvis.DataChequeNum.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[21,FSFormulairePreselection.TableauFormulairePreselection.Row];                   PrintAvis.DataChequeNumX.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[21,FSFormulairePreselection.TableauFormulairePreselection.Row];
          PrintAvis.DataDomiciliation.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[20,FSFormulairePreselection.TableauFormulairePreselection.Row];          PrintAvis.DataDomiciliationX.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[20,FSFormulairePreselection.TableauFormulairePreselection.Row];
          if(FSFormulairePreselection.TableauFormulairePreselection.Cells[12,FSFormulairePreselection.TableauFormulairePreselection.Row]<>'')
          then begin PrintAvis.DataMontant.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[12,FSFormulairePreselection.TableauFormulairePreselection.Row]+' DA'; PrintAvis.DataMontantX.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[12,FSFormulairePreselection.TableauFormulairePreselection.Row]+' DA'; end
          else begin PrintAvis.DataMontant.Caption:=''; PrintAvis.DataMontantX.Caption:=''; end;
     end;

     if(FSFormulairePreselection.EditModeReglementApportInitial.Text='Espèce')then
     begin
          VisibleData:=true;

          PrintAvis.TitreDataChequeNum.Enabled:=VisibleData;       PrintAvis.TitreDataChequeNumX.Enabled:=VisibleData;
          PrintAvis.CDataChequeNum.Enabled:=VisibleData;           PrintAvis.CDataChequeNumX.Enabled:=VisibleData;
          PrintAvis.DataChequeNum.Enabled:=VisibleData;            PrintAvis.DataChequeNumX.Enabled:=VisibleData;

          VisibleData:=false;

          PrintAvis.TitreDataDomiciliation.Enabled:=VisibleData;   PrintAvis.TitreDataDomiciliationX.Enabled:=VisibleData;
          PrintAvis.CDataDomiciliation.Enabled:=VisibleData;       PrintAvis.CDataDomiciliationX.Enabled:=VisibleData;
          PrintAvis.DataDomiciliation.Enabled:=VisibleData;        PrintAvis.DataDomiciliationX.Enabled:=VisibleData;

          PrintAvis.TitreDataMontant.Enabled:=VisibleData;         PrintAvis.TitreDataMontantX.Enabled:=VisibleData;
          PrintAvis.CDataMontant.Enabled:=VisibleData;             PrintAvis.CDataMontantX.Enabled:=VisibleData;
          PrintAvis.DataMontant.Enabled:=VisibleData;              PrintAvis.DataMontantX.Enabled:=VisibleData;

          PrintAvis.TitreDataChequeNum.Caption:='Montant:';        PrintAvis.TitreDataChequeNumX.Caption:='Montant:';
          if(FSFormulairePreselection.TableauFormulairePreselection.Cells[12,FSFormulairePreselection.TableauFormulairePreselection.Row]<>'')
          then begin PrintAvis.DataChequeNum.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[12,FSFormulairePreselection.TableauFormulairePreselection.Row]+' DA'; PrintAvis.DataChequeNumX.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[12,FSFormulairePreselection.TableauFormulairePreselection.Row]+' DA'; end
          else begin PrintAvis.DataChequeNum.Caption:=''; PrintAvis.DataChequeNumX.Caption:=''; end;
     end;

     PrintAvis.TitreEtat.Caption:='Avis d''Encaissement '+FSFormulairePreselection.TableauFormulairePreselection.Cells[19,FSFormulairePreselection.TableauFormulairePreselection.Row];     PrintAvis.TitreEtatX.Caption:='Avis d''Encaissement '+FSFormulairePreselection.TableauFormulairePreselection.Cells[19,FSFormulairePreselection.TableauFormulairePreselection.Row];

     PrintAvis.DataEnLettre.Lines.Text:=ChiffreenLettre(FSFormulairePreselection.TableauFormulairePreselection.Cells[12,FSFormulairePreselection.TableauFormulairePreselection.Row]);                              PrintAvis.DataEnLettreX.Lines.Text:=ChiffreenLettre(FSFormulairePreselection.TableauFormulairePreselection.Cells[12,FSFormulairePreselection.TableauFormulairePreselection.Row]);
     PrintAvis.TitreDataTiers.Lines.Text:='Client:';                                                                           PrintAvis.TitreDataTiersX.Lines.Text:='Client:';
     PrintAvis.TitreDataNatureDepence.Caption:='Natured''Encaissement';                                                     PrintAvis.TitreDataNatureDepenceX.Caption:='Natured''Encaissement';
     PrintAvis.TitreVisaTiers.Caption:='Visa Client: ';                                                                     PrintAvis.TitreVisaTiersX.Caption:='Visa Client: ';
     PrintAvis.DataTiers.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[4,FSFormulairePreselection.TableauFormulairePreselection.Row];                                                  PrintAvis.DataTiersX.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[4,FSFormulairePreselection.TableauFormulairePreselection.Row];
     PrintAvis.DataNatureDepence.Lines.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[22,FSFormulairePreselection.TableauFormulairePreselection.Row];                                 PrintAvis.DataNatureDepenceX.Lines.Text:=FSFormulairePreselection.TableauFormulairePreselection.Cells[22,FSFormulairePreselection.TableauFormulairePreselection.Row];
     PrintAvis.TitreVisaEntreprise.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[15,FSFormulairePreselection.TableauFormulairePreselection.Row];                                   PrintAvis.TitreVisaEntrepriseX.Caption:=FSFormulairePreselection.TableauFormulairePreselection.Cells[15,FSFormulairePreselection.TableauFormulairePreselection.Row];

     if(FSFormulairePreselection.TableauFormulairePreselection.Cells[1,FSFormulairePreselection.TableauFormulairePreselection.Row]<>'')then
     begin
          PrintAvis.DataNAvis.Caption:=CompleteZeroGauche(inttostr(strtointeger(FSFormulairePreselection.TableauFormulairePreselection.Cells[1,FSFormulairePreselection.TableauFormulairePreselection.Row])+1),'5');                       PrintAvis.DataNAvisX.Caption:=CompleteZeroGauche(inttostr(strtointeger(FSFormulairePreselection.TableauFormulairePreselection.Cells[1,FSFormulairePreselection.TableauFormulairePreselection.Row])+1),'5');
          PrintAvis.TitreDate.Caption:='AKBOU le, '+FSFormulairePreselection.TableauFormulairePreselection.Cells[18,FSFormulairePreselection.TableauFormulairePreselection.Row];  PrintAvis.TitreDateX.Caption:='AKBOU le, '+FSFormulairePreselection.TableauFormulairePreselection.Cells[18,FSFormulairePreselection.TableauFormulairePreselection.Row];
     end
     else
     begin
          PrintAvis.DataNAvis.Caption:='';                                         PrintAvis.DataNAvisX.Caption:='';
          PrintAvis.TitreDate.Caption:='AKBOU le,       /       /            ';    PrintAvis.TitreDateX.Caption:='AKBOU le,       /       /            ';
     end;

     PrintAvis.Preview;
end;
end;

procedure TFSFormulairePreselection.EditDateReglementApportInitialInsertChange(
  Sender: TObject);
begin
FSFormulairePreselection.EditDateReglementApportInitial.Text:=datetostr(FSFormulairePreselection.EditDateReglementApportInitialInsert.Date);
FSFormulairePreselection.EditDateReglementApportInitialInsert.Visible:=false;
FSFormulairePreselection.EditModeReglementApportInitial.SetFocus;
end;

procedure TFSFormulairePreselection.EditModeReglementApportInitialSelect(
  Sender: TObject);
  var  OKDomiciliation:boolean;
begin

if(FSFormulairePreselection.EditModeReglementApportInitial.Text='Espèce')then
begin
     FSFormulairePreselection.EditNumPiece.Text:=inttostr(strtointeger(FSFormulairePreselection.EditPositionFormulairePreselection.Text)+1);

     OpenFParc(RParc);
     ChDomiciliation:=RParc.Parcours+'\'+Exercice+'FDomiciliation';
     assignfile(FDomiciliation,ChDomiciliation);
     if FileExists(ChDomiciliation)then
     Reset(FDomiciliation)
     else Rewrite(FDomiciliation);
     Seek(FDomiciliation,0);
     OKDomiciliation:=false;
     while not eof(FDomiciliation)and(OKDomiciliation=false)do
     begin
          read(FDomiciliation,RDomiciliation);
          if AnsiUpperCase(firstlaters(RDomiciliation.DesignationDomiciliation,6))=AnsiUpperCase('CAISSE')then
          begin
               OKDomiciliation:=true;
               FSFormulairePreselection.EditDomiciliation.Text:=RDomiciliation.DesignationDomiciliation;
          end;
     end;
     Closefile(FDomiciliation);
end
else
begin
     OpenFParc(RParc);
     ChDomiciliation:=RParc.Parcours+'\'+Exercice+'FDomiciliation';
     assignfile(FDomiciliation,ChDomiciliation);
     if FileExists(ChDomiciliation)then
     Reset(FDomiciliation)
     else Rewrite(FDomiciliation);
     Seek(FDomiciliation,0);
     OKDomiciliation:=false;
     while not eof(FDomiciliation)and(OKDomiciliation=false)do
     begin
          read(FDomiciliation,RDomiciliation);
          if AnsiUpperCase(firstlaters(RDomiciliation.DesignationDomiciliation,6))<>AnsiUpperCase('CAISSE')then
          begin
               OKDomiciliation:=true;
               FSFormulairePreselection.EditDomiciliation.Text:=RDomiciliation.DesignationDomiciliation;
          end;
     end;
     Closefile(FDomiciliation);
end;
end;

procedure TFSFormulairePreselection.EditModeReglementApportInitialKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.EditDomiciliation.SetFocus;
end;

end;

procedure TFSFormulairePreselection.EditDomiciliationKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.EditNumPiece.SetFocus;
end;

end;

procedure TFSFormulairePreselection.EditNumPieceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.EditObservation.SetFocus;
end;

end;

procedure TFSFormulairePreselection.EditObservationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.BitValiderDetailApportInitial.SetFocus;
end;

end;

procedure TFSFormulairePreselection.EditDateReglementApportInitialInsertKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormulairePreselection.EditDateReglementApportInitial.Text:=datetostr(FSFormulairePreselection.EditDateReglementApportInitialInsert.Date);
     FSFormulairePreselection.EditDateReglementApportInitialInsert.Visible:=false;
     FSFormulairePreselection.EditModeReglementApportInitial.SetFocus;
end;

end;

procedure TFSFormulairePreselection.RBEtatAfficheClick(Sender: TObject);
begin

if(FSFormulairePreselection.RBEtatAffiche.Checked=true)
then FSFormulairePreselection.RBEtatAffiche.Caption:='Règlement'
else FSFormulairePreselection.RBEtatAffiche.Caption:='Formulaire';

ListeFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselectionAffiche,FSFormulairePreselection.EditNumProjetAffiche.Text,FSFormulairePreselection.EditTypeLogementAffiche.Text,FSFormulairePreselection.EditEtatLogementAffiche.Text,FSFormulairePreselection.EditAccordAffiche.Text,FSFormulairePreselection.EditEtatReglementApportInitial.Text,1,FSFormulairePreselection.RBEtatAffiche.Caption);

end;

procedure TFSFormulairePreselection.RBEtatAfficheTraitementClick(
  Sender: TObject);
begin

if(FSFormulairePreselection.RBEtatAfficheTraitement.Checked=true)
then FSFormulairePreselection.RBEtatAfficheTraitement.Caption:='Règlement'
else FSFormulairePreselection.RBEtatAfficheTraitement.Caption:='Formulaire';

ListeFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselection,'','','','','',strtointeger(FSFormulairePreselection.EditPositionFormulairePreselection.Text),FSFormulairePreselection.RBEtatAfficheTraitement.Caption);

end;

procedure TFSFormulairePreselection.EditDateReglementApportInitialDblClick(
  Sender: TObject);
begin
     FSFormulairePreselection.EditDateReglementApportInitialInsert.Visible:=true;
     if DateCorrecte(FSFormulairePreselection.EditDateReglementApportInitial.Text)
     then FSFormulairePreselection.EditDateReglementApportInitialInsert.Date:=strtodate(FSFormulairePreselection.EditDateReglementApportInitial.Text)
     else FSFormulairePreselection.EditDateReglementApportInitialInsert.Date:=Date;
     FSFormulairePreselection.EditDateReglementApportInitialInsert.SetFocus;
end;

procedure TFSFormulairePreselection.ClickModifDateReglementApportInitialDblClick(
  Sender: TObject);
begin
     FSFormulairePreselection.EditDateReglementApportInitialInsert.Visible:=true;
     if DateCorrecte(FSFormulairePreselection.EditDateReglementApportInitial.Text)
     then FSFormulairePreselection.EditDateReglementApportInitialInsert.Date:=strtodate(FSFormulairePreselection.EditDateReglementApportInitial.Text)
     else FSFormulairePreselection.EditDateReglementApportInitialInsert.Date:=Date;
     FSFormulairePreselection.EditDateReglementApportInitialInsert.SetFocus;
end;

procedure TFSFormulairePreselection.FormShow(Sender: TObject);
var  i:integer; DateTrue:boolean;
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     FSFormulairePreselection.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Formulaire de Présélection';

     FSFormulairePreselection.AfficheOperationDureePreselection.Left:=8;
     FSFormulairePreselection.AfficheOperationDureePreselection.Top:=8;
     FSFormulairePreselection.AfficheDetailApportInitial.Left:=8;
     FSFormulairePreselection.AfficheDetailApportInitial.Top:=8;
     ListeFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselection,'','','','','',strtointeger(FSFormulairePreselection.EditPositionFormulairePreselection.Text),FSFormulairePreselection.RBEtatAfficheTraitement.Caption);
end;

procedure TFSFormulairePreselection.EditUniteDureePreselectionKeyPress(Sender: TObject;
  var Key: Char);
begin
key:=#0;
end;

procedure TFSFormulairePreselection.AfficheDureePreselectionClick(
  Sender: TObject);
begin
     FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Visible:=true;
     FSFormulairePreselection.AfficheOperationDureePreselection.Width:=545;
     FSFormulairePreselection.AfficheDetailApportInitial.Width:=0;
     FSFormulairePreselection.BitValiderPreselection.Kind:=bkRetry;
     FSFormulairePreselection.BitValiderPreselection.Caption:='';
     AfficherSelectionTableau(FSFormulairePreselection.TableauFormulairePreselection,FSFormulairePreselection.TableauFormulairePreselection.Row);
     FSFormulairePreselection.EditDureePreselection.SetFocus;
end;

procedure TFSFormulairePreselection.EditDureePreselectionKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

     if key in[VK_RETURN]then
     begin
          FSFormulairePreselection.EditUniteDureePreselection.SetFocus;
     end;

end;

procedure TFSFormulairePreselection.EditUniteDureePreselectionKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

     if key in[VK_RETURN]then
     begin
          FSFormulairePreselection.EditDateFinPreselection.SetFocus;
     end;

end;

procedure TFSFormulairePreselection.EditDateFinPreselectionKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

     if key in[VK_RETURN]then
     begin
          FSFormulairePreselection.BitOperationDureePreselection.SetFocus;
     end;

end;

Function PrevoirDateFinDuree(DatePrincipale:string; delais:integer; UniteDelais:string):string;
var  JJ,mm,AAAA,Resultat,Reste:integer; DateTeste,DatePrevue:string[10];
begin

DatePrevue:=DatePrincipale;

jj:=strtointeger(firstlaters(DatePrincipale,2));
mm:=strtointeger(firstlaters(lastlaters(DatePrincipale,7),2));
AAAA:=strtointeger(lastlaters(DatePrincipale,4));

if(UniteDelais='Année')then
begin
     AAAA:=AAAA+delais;

end;

if(UniteDelais='Mois')then
begin
     Division(mm+delais,12,Resultat,Reste);
     if(Reste=0)then Reste:=12;
     mm:=Reste;
     AAAA:=AAAA+Resultat;
end;

if(UniteDelais='Jour')then
begin
     DateTeste:=datetostr(strtodate(DatePrincipale)+delais);
     jj:=strtointeger(firstlaters(DateTeste,2));
     mm:=strtointeger(firstlaters(lastlaters(DateTeste,7),2));
     AAAA:=strtointeger(lastlaters(DateTeste,4));
end;

DatePrevue:=Completezerogauche(inttostr(jj),'2')+'/'+Completezerogauche(inttostr(mm),'2')+'/'+Completezerogauche(inttostr(AAAA),'4');
PrevoirDateFinDuree:=DatePrevue;
end;

procedure TFSFormulairePreselection.EditDureePreselectionKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
FSFormulairePreselection.EditDateFinPreselection.Text:=PrevoirDateFinDuree(datetostr(FSFormulairePreselection.EditDateFormulairePreselection.Date),strtointeger(FSFormulairePreselection.EditDureePreselection.Text),FSFormulairePreselection.EditUniteDureePreselection.Text);
end;

procedure TFSFormulairePreselection.EditDateFormulairePreselectionClick(
  Sender: TObject);
begin
     FSFormulairePreselection.EditDateFinPreselection.Text:=PrevoirDateFinDuree(datetostr(FSFormulairePreselection.EditDateFormulairePreselection.Date),strtointeger(FSFormulairePreselection.EditDureePreselection.Text),FSFormulairePreselection.EditUniteDureePreselection.Text);
end;

procedure TFSFormulairePreselection.EditUniteDureePreselectionClick(
  Sender: TObject);
begin
FSFormulairePreselection.EditDateFinPreselection.Text:=PrevoirDateFinDuree(datetostr(FSFormulairePreselection.EditDateFormulairePreselection.Date),strtointeger(FSFormulairePreselection.EditDureePreselection.Text),FSFormulairePreselection.EditUniteDureePreselection.Text);
end;

procedure TFSFormulairePreselection.TableauFormulairePreselectionKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_DELETE]then
     begin
          FSFormulairePreselection.AfficheOperation.Visible:=true;
          FSFormulairePreselection.BitValiderOperation.Kind:=bkCancel;
          FSFormulairePreselection.BitValiderOperation.Caption:='Supprimer';
          FSFormulairePreselection.MessageAfficheOperation.Lines.Text:='Voulez vous Supprimer';
          FSFormulairePreselection.MessageAfficheOperation.Lines.Add('l''enregistrement ?');
          FSFormulairePreselection.BitValiderOperation.SetFocus;
     end;

end;

procedure TFSFormulairePreselection.RBOKProjetClick(Sender: TObject);
begin
FSFormulairePreselection.EditDesignationProjet.Text:=IdentiteStructureProjet(FSFormulairePreselection.EditNumProjet.Text,FSFormulairePreselection.RBOKProjet.Checked,FSFormulairePreselection.RBOKStructure.Checked,FSFormulairePreselection.RBOKNature.Checked,FSFormulairePreselection.RBOKCodification.Checked,FSFormulairePreselection.RBOKSurface.Checked);
FSFormulairePreselection.EditDesignationProjetAffiche.Text:=IdentiteStructureProjet(FSFormulairePreselection.EditNumProjetAffiche.Text,FSFormulairePreselection.RBOKProjet.Checked,FSFormulairePreselection.RBOKStructure.Checked,FSFormulairePreselection.RBOKNature.Checked,FSFormulairePreselection.RBOKCodification.Checked,FSFormulairePreselection.RBOKSurface.Checked);
end;

procedure TFSFormulairePreselection.RBOKStructureClick(Sender: TObject);
begin
FSFormulairePreselection.EditDesignationProjet.Text:=IdentiteStructureProjet(FSFormulairePreselection.EditNumProjet.Text,FSFormulairePreselection.RBOKProjet.Checked,FSFormulairePreselection.RBOKStructure.Checked,FSFormulairePreselection.RBOKNature.Checked,FSFormulairePreselection.RBOKCodification.Checked,FSFormulairePreselection.RBOKSurface.Checked);
FSFormulairePreselection.EditDesignationProjetAffiche.Text:=IdentiteStructureProjet(FSFormulairePreselection.EditNumProjetAffiche.Text,FSFormulairePreselection.RBOKProjet.Checked,FSFormulairePreselection.RBOKStructure.Checked,FSFormulairePreselection.RBOKNature.Checked,FSFormulairePreselection.RBOKCodification.Checked,FSFormulairePreselection.RBOKSurface.Checked);
end;

procedure TFSFormulairePreselection.RBOKNatureClick(Sender: TObject);
begin
FSFormulairePreselection.EditDesignationProjet.Text:=IdentiteStructureProjet(FSFormulairePreselection.EditNumProjet.Text,FSFormulairePreselection.RBOKProjet.Checked,FSFormulairePreselection.RBOKStructure.Checked,FSFormulairePreselection.RBOKNature.Checked,FSFormulairePreselection.RBOKCodification.Checked,FSFormulairePreselection.RBOKSurface.Checked);
FSFormulairePreselection.EditDesignationProjetAffiche.Text:=IdentiteStructureProjet(FSFormulairePreselection.EditNumProjetAffiche.Text,FSFormulairePreselection.RBOKProjet.Checked,FSFormulairePreselection.RBOKStructure.Checked,FSFormulairePreselection.RBOKNature.Checked,FSFormulairePreselection.RBOKCodification.Checked,FSFormulairePreselection.RBOKSurface.Checked);
end;

procedure TFSFormulairePreselection.RBOKCodificationClick(Sender: TObject);
begin
FSFormulairePreselection.EditDesignationProjet.Text:=IdentiteStructureProjet(FSFormulairePreselection.EditNumProjet.Text,FSFormulairePreselection.RBOKProjet.Checked,FSFormulairePreselection.RBOKStructure.Checked,FSFormulairePreselection.RBOKNature.Checked,FSFormulairePreselection.RBOKCodification.Checked,FSFormulairePreselection.RBOKSurface.Checked);
FSFormulairePreselection.EditDesignationProjetAffiche.Text:=IdentiteStructureProjet(FSFormulairePreselection.EditNumProjetAffiche.Text,FSFormulairePreselection.RBOKProjet.Checked,FSFormulairePreselection.RBOKStructure.Checked,FSFormulairePreselection.RBOKNature.Checked,FSFormulairePreselection.RBOKCodification.Checked,FSFormulairePreselection.RBOKSurface.Checked);
end;

procedure TFSFormulairePreselection.RBOKSurfaceClick(Sender: TObject);
begin
FSFormulairePreselection.EditDesignationProjet.Text:=IdentiteStructureProjet(FSFormulairePreselection.EditNumProjet.Text,FSFormulairePreselection.RBOKProjet.Checked,FSFormulairePreselection.RBOKStructure.Checked,FSFormulairePreselection.RBOKNature.Checked,FSFormulairePreselection.RBOKCodification.Checked,FSFormulairePreselection.RBOKSurface.Checked);
FSFormulairePreselection.EditDesignationProjetAffiche.Text:=IdentiteStructureProjet(FSFormulairePreselection.EditNumProjetAffiche.Text,FSFormulairePreselection.RBOKProjet.Checked,FSFormulairePreselection.RBOKStructure.Checked,FSFormulairePreselection.RBOKNature.Checked,FSFormulairePreselection.RBOKCodification.Checked,FSFormulairePreselection.RBOKSurface.Checked);
end;

procedure TFSFormulairePreselection.EditChargementTypeProcesChange(
  Sender: TObject);
begin
ListeTypeFichierTiersBox(FSFormulairePreselection.EditChargementTypeProces.Text,'','',FSFormulairePreselection.EditChargementFichierConcerne,FSFormulairePreselection.EditTitreChargementFichierConcerne);
end;

procedure TFSFormulairePreselection.BitBtn2Click(Sender: TObject);
begin
FSFormulairePreselection.TableauTiers.Visible:=false;
FSFormulairePreselection.TableauProjet.Visible:=false;
FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Visible:=false;
end;

procedure TFSFormulairePreselection.BitBtn7Click(Sender: TObject);
begin
FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Visible:=true;
FSFormulairePreselection.AfficheDetailApportInitial.Width:=0;
FSFormulairePreselection.AfficheOperationDureePreselection.Width:=0;
FSFormulairePreselection.BitValiderPreselection.Kind:=bkRetry;
FSFormulairePreselection.BitValiderPreselection.Caption:='Valider la Présélection !';
AfficherSelectionTableau(FSFormulairePreselection.TableauFormulairePreselection,FSFormulairePreselection.TableauFormulairePreselection.Row);
end;

procedure TFSFormulairePreselection.BitBtn11Click(Sender: TObject);
begin
     FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Visible:=true;
     FSFormulairePreselection.AfficheDetailApportInitial.Width:=0;
     FSFormulairePreselection.AfficheOperationDureePreselection.Width:=0;
     FSFormulairePreselection.BitValiderPreselection.Kind:=bkCancel;
     FSFormulairePreselection.BitValiderPreselection.Caption:='Supprimer la présélection !';
end;

procedure TFSFormulairePreselection.BitOperationDureePreselectionClick(Sender: TObject);
var   RowModif,ColModif:integer;
begin
FSFormulairePreselection.AfficheOperation.Visible:=true;

if(ControleModification(FSFormulairePreselection.TableauFormulairePreselection,FSFormulairePreselection.EditRowSelect.Text,RowModif,ColModif))then
begin
     FSFormulairePreselection.TableauFormulairePreselection.Row:=RowModif;
     FSFormulairePreselection.TableauFormulairePreselection.Col:=ColModif;
     FSFormulairePreselection.TableauFormulairePreselection.SetFocus;

     if(FSFormulairePreselection.EditPositionFormulairePreselection.Text<>'')
     then
     begin
          FSFormulairePreselection.BitValiderOperation.Kind:=bkAll;
          FSFormulairePreselection.BitValiderOperation.Caption:='Valider';
          FSFormulairePreselection.MessageAfficheOperation.Lines.Text:='Voulez vous enregistrer';
          FSFormulairePreselection.MessageAfficheOperation.Lines.Add('les modifications ?');
          FSFormulairePreselection.BitValiderOperation.SetFocus;
     end
     else
     begin
          FSFormulairePreselection.BitValiderOperation.Kind:=bkAll;
          FSFormulairePreselection.BitValiderOperation.Caption:='Valider';
          FSFormulairePreselection.MessageAfficheOperation.Lines.Text:='Voulez vous enregistrer';
          FSFormulairePreselection.MessageAfficheOperation.Lines.Add('la nouvelle présélection ?');
          FSFormulairePreselection.BitValiderOperation.SetFocus;
     end;
end
else
begin
     FSFormulairePreselection.BitValiderOperation.Kind:=bkAll;
     FSFormulairePreselection.BitValiderOperation.Caption:='OK';
     FSFormulairePreselection.MessageAfficheOperation.Lines.Text:='Aucune modification';
     FSFormulairePreselection.MessageAfficheOperation.Lines.Add('à enregistrer ?');
     FSFormulairePreselection.BitNonOperation.SetFocus;
end;

FSFormulairePreselection.AfficheDetailApportInitial.Width:=0;
end;

procedure TFSFormulairePreselection.BitBtn12Click(Sender: TObject);
begin
     FSFormulairePreselection.AfficheOperationDureePreselection.Width:=0;
     FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Visible:=false;
end;

procedure TFSFormulairePreselection.BitBtn13Click(Sender: TObject);
begin
     FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Visible:=true;
     FSFormulairePreselection.AfficheOperationDureePreselection.Width:=FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Width-16;
     FSFormulairePreselection.AfficheDetailApportInitial.Width:=0;
     FSFormulairePreselection.BitValiderPreselection.Kind:=bkRetry;
     FSFormulairePreselection.BitValiderPreselection.Caption:='';
     AfficherSelectionTableau(FSFormulairePreselection.TableauFormulairePreselection,FSFormulairePreselection.TableauFormulairePreselection.Row);
     FSFormulairePreselection.EditDureePreselection.SetFocus;
end;

procedure TFSFormulairePreselection.CacheAfficheDetailApportInitialClick(
  Sender: TObject);
begin

if(FSFormulairePreselection.EditAccord.Text='Favorable')then
begin
     FSFormulairePreselection.AfficheOperationFOrmulairePreselection.Visible:=true;
     FSFormulairePreselection.AfficheDetailApportInitial.Width:=545;
     FSFormulairePreselection.AfficheOperationDureePreselection.Width:=0;
     FSFormulairePreselection.BitValiderPreselection.Kind:=bkRetry;
     FSFormulairePreselection.BitValiderPreselection.Caption:='';
     AfficherSelectionTableau(FSFormulairePreselection.TableauFormulairePreselection,FSFormulairePreselection.TableauFormulairePreselection.Row);
end
else
begin
     if(FSFormulairePreselection.EditAccord.Text='Instance')then showmessage('Présélection en Instance ! Aucun versement à effectuer !');
     if(FSFormulairePreselection.EditAccord.Text='Défavorable')then showmessage('Présélection défavorable ! Aucun versement à effectuer !');
end;

end;

procedure TFSFormulairePreselection.EditDureePreselectionKeyPress(
  Sender: TObject; var Key: Char);
begin
if key in['?',';','.',':','/']then key:=',';
if not(key in['0'..'9',','])then key:=#0;
end;

procedure TFSFormulairePreselection.EditEtatReglementApportInitialChange(
  Sender: TObject);
begin
ListeFormulairePreselection(FSFormulairePreselection.TableauFormulairePreselectionAffiche,FSFormulairePreselection.EditNumProjetAffiche.Text,FSFormulairePreselection.EditTypeLogementAffiche.Text,FSFormulairePreselection.EditEtatLogementAffiche.Text,FSFormulairePreselection.EditAccordAffiche.Text,FSFormulairePreselection.EditEtatReglementApportInitial.Text,1,FSFormulairePreselection.RBEtatAffiche.Caption);
end;

procedure TFSFormulairePreselection.EditEtatReglementApportInitialKeyPress(
  Sender: TObject; var Key: Char);
begin
     key:=#0;
end;

procedure TFSFormulairePreselection.EditAccordAfficheKeyPress(
  Sender: TObject; var Key: Char);
begin
     key:=#0;
end;

procedure TFSFormulairePreselection.RBApportPersonnelFixeClick(
  Sender: TObject);
begin
     if(FSFormulairePreselection.RBApportPersonnelFixe.Checked=true)then
     begin
          FSFormulairePreselection.EditApportPersonnel.ReadOnly:=Not(FSFormulairePreselection.RBApportPersonnelFixe.Checked);
          FSFormulairePreselection.EditApportPersonnel.Color:=clWindow;
          FSFormulairePreselection.EditSimulationBanque.Color:=$00DADADA;
     end
     else
     begin
         FSFormulairePreselection.EditSimulationBanque.ReadOnly:=FSFormulairePreselection.RBApportPersonnelFixe.Checked;
         FSFormulairePreselection.EditApportPersonnel.Color:=$00DADADA;
         FSFormulairePreselection.EditSimulationBanque.Color:=clWindow;
     end;
end;

procedure TFSFormulairePreselection.EditApportPersonnelKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if(FSFormulairePreselection.RBApportPersonnelFixe.Checked=false)then
begin
     FSFormulairePreselection.EditApportPersonnel.Text:=Vergule(floattostr(strtoreal(FSFormulairePreselection.EditMontantLogement.Text)-
                                                        strtoreal(FSFormulairePreselection.EditSimulationBanque.Text)),'2','C','');
     FSFormulairePreselection.EditApportPersonnelLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditApportPersonnel.Text);
end
else
begin
     FSFormulairePreselection.EditSimulationBanque.Text:=Vergule(floattostr(strtoreal(FSFormulairePreselection.EditMontantLogement.Text)-
                                                        strtoreal(FSFormulairePreselection.EditApportPersonnel.Text)),'2','C','');
     FSFormulairePreselection.EditSimulationBanqueLettre.Text:=ChiffreenLettre(FSFormulairePreselection.EditSimulationBanque.Text);
end;
end;

procedure TFSFormulairePreselection.TableauFormulairePreselectionAfficheDblClick(
  Sender: TObject);
var  R:integer;   OKSelect:boolean;
begin
     R:=1;
     OKSelect:=false;
     while(R<=FSFormulairePreselection.TableauFormulairePreselection.RowCount-1)and(OKSelect=false)do
     begin
          if(FSFormulairePreselection.TableauFormulairePreselection.Cells[1,R]=FSFormulairePreselection.TableauFormulairePreselectionAffiche.Cells[1,FSFormulairePreselection.TableauFormulairePreselectionAffiche.Row])then
          begin
               OKSelect:=true;
               FSFormulairePreselection.PageFormulairePreselection.Show;
               FSFormulairePreselection.TableauFormulairePreselection.Row:=R;
               FSFormulairePreselection.TableauFormulairePreselection.Col:=1;
               FSFormulairePreselection.TableauFormulairePreselection.SetFocus;
          end;
     R:=R+1;
     end;
end;

procedure TFSFormulairePreselection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

end.
