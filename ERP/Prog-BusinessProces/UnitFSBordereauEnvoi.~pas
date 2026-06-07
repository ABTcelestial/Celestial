unit UnitFSBordereauEnvoi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, Grids;

type
  TFSBordereauEnvoi = class(TForm)
    PageControl1: TPageControl;
    PageBordereauEnvoi: TTabSheet;
    ListeBordereauEnvoi: TTabSheet;
    Bevel1: TBevel;
    EditDestinationBordereau: TMemo;
    EditDateBordereau: TDateTimePicker;
    BitBtn1: TBitBtn;
    EditFaitA: TComboBox;
    Panel10: TPanel;
    TitreEditTiersFichierConserne: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    EditTiersFichierConserne: TComboBox;
    EditTiersTypeProces: TComboBox;
    EditTiersCodeTiers: TEdit;
    EditTiersNomTiers: TEdit;
    Bevel2: TBevel;
    TableauTiersListeTiers: TStringGrid;
    Bevel3: TBevel;
    Panel1: TPanel;
    EditNumBordereau: TEdit;
    EditRefference: TComboBox;
    EditAnneeBordereau: TEdit;
    BitValiderBordereau: TBitBtn;
    TableauBordereauEnvoi: TStringGrid;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    AfficheConfirmeOperationBordereau: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Bevel4: TBevel;
    EditPositionBordereau: TEdit;
    Bevel5: TBevel;
    EditObservationBordereauCopie: TMemo;
    EditExomplairesBordereauCopie: TMemo;
    EditDesignationBordereauCopie: TMemo;
    TableauDetailBordereauEnvoi: TStringGrid;
    AfficheDetailBordereauEnvoi: TPanel;
    EditDesignationBordereau: TMemo;
    EditExomplairesBordereau: TMemo;
    EditObservationBordereau: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    Bevel7: TBevel;
    Bevel8: TBevel;
    EditPositionDetailBordereau: TEdit;
    AfficheOperationDetailBordereau: TPanel;
    Bevel9: TBevel;
    BitNonDetailBordereau: TBitBtn;
    BitOuiDetailBordereau: TBitBtn;
    EditObservationBordereauTeste: TMemo;
    EditExomplairesBordereauTeste: TMemo;
    EditDesignationBordereauTeste: TMemo;
    Bevel11: TBevel;
    BitBtn11: TBitBtn;
    EditSourceAutoImporte: TEdit;
    EditPositionRegistreAutoImporte: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel12: TBevel;
    AfficheAutoImporte: TPanel;
    TableauAutoImporte: TStringGrid;
    EditChoisSource: TComboBox;
    Label3: TLabel;
    Bevel13: TBevel;
    EditChoisDateBegin: TDateTimePicker;
    EditChoisDateEnd: TDateTimePicker;
    Bevel14: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    AfficheTypeMouvement: TPanel;
    EditTypeMouvement: TComboBox;
    EditMouvement: TComboBox;
    EditPositionListeMouvementBegin: TEdit;
    EditPositionListeMouvementEnd: TEdit;
    TitreTypeMouvement: TLabel;
    TitreMouvement: TLabel;
    Bevel36: TBevel;
    Label9: TLabel;
    EditExercice: TComboBox;
    Bevel46: TBevel;
    Label30: TLabel;
    EditMois: TComboBox;
    MouvementAfficher: TPanel;
    PageOptions: TTabSheet;
    MemoLiseAvisTrouver: TMemo;
    ListeDateTrouver: TEdit;
    ListeNumPieceTrouver: TEdit;
    ListeDomiciliationPieceTrouver: TEdit;
    ListeDomiciliationAvisTrouver: TEdit;
    ListeModePaiementTrouver: TEdit;
    ListeNumAvisTrouver: TEdit;
    TableauListeAvis: TStringGrid;
    EditListePositionEnregistres: TEdit;
    Label10: TLabel;
    BitBtn12: TBitBtn;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    AfficheOperationBordereauEnvoi: TPanel;
    Bevel10: TBevel;
    BitBtn9: TBitBtn;
    Bevel6: TBevel;
    BitBtn10: TBitBtn;
    BitBtn8: TBitBtn;
    Panel4: TPanel;
    Label7: TLabel;
    EditSignataire: TComboBox;
    EditNumOrdreBordereauEnvoiTeste: TMemo;
    EditNumOrdreBordereauEnvoiCopie: TMemo;
    EditExerciceBordereauEnvoi: TComboBox;
    Label6: TLabel;
    Bevel18: TBevel;
    Label8: TLabel;
    EditMoisBordereauEnvoi: TComboBox;
    Bevel19: TBevel;
    Label27: TLabel;
    Bevel44: TBevel;
    EditDateDebutBordereauEnvoi: TDateTimePicker;
    Label11: TLabel;
    EditDateFinBordereauEnvoi: TDateTimePicker;
    AfficherListeBordereauEnvoi: TPanel;
    BitListeBordereauEnvoi: TBitBtn;
    Bevel20: TBevel;
    Panel3: TPanel;
    EditBordereauEnvoiNomTiers: TEdit;
    Label12: TLabel;
    EditBordereauEnvoiFichierConserne: TComboBox;
    TitreEditBordereauEnvoiFichierConserne: TLabel;
    EditBordereauEnvoiTypeProces: TComboBox;
    Label14: TLabel;
    TableauBordereauEnvoiListeTiers: TStringGrid;
    EditBordereauEnvoiCodeTiers: TEdit;
    BitBtn13: TBitBtn;
    AfficheBordereauEnvoiOptionPrint: TPanel;
    RadioGroup4: TRadioGroup;
    StaticText1: TStaticText;
    RBBordereauEnvoiOrientationPapier: TComboBox;
    RBBordereauEnvoiAjustement: TCheckBox;
    BitBtn18: TBitBtn;
    TitreEtat: TRichEdit;
    IncEditEditNbrExemple: TUpDown;
    EditEditNbrExemple: TEdit;
    EditObservation: TComboBox;
    Bevel21: TBevel;
    RBListeDetailBordereauEnvoi: TCheckBox;
    RBSautLigne: TCheckBox;
    IncrimenteEditPositionBordereau: TUpDown;
    BitBtn14: TBitBtn;
    EditRowTableauDetailBordereauEnvoi: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure EditTiersTypeProcesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTiersTypeProcesSelect(Sender: TObject);
    procedure EditTiersFichierConserneSelect(Sender: TObject);
    procedure EditTiersNomTiersEnter(Sender: TObject);
    procedure EditTiersNomTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTiersNomTiersKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauTiersListeTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitValiderBordereauClick(Sender: TObject);
    procedure TableauBordereauEnvoiDblClick(Sender: TObject);
    procedure TableauBordereauEnvoiClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ListeBordereauEnvoiShow(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitNonDetailBordereauClick(Sender: TObject);
    procedure TableauDetailBordereauEnvoiClick(Sender: TObject);
    procedure BitOuiDetailBordereauClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure EditChoisSourceKeyPress(Sender: TObject; var Key: Char);
    procedure EditChoisSourceChange(Sender: TObject);
    procedure EditMouvementChange(Sender: TObject);
    procedure EditChoisDateBeginChange(Sender: TObject);
    procedure EditChoisDateEndChange(Sender: TObject);
    procedure EditTypeMouvementChange(Sender: TObject);
    procedure EditExerciceSelect(Sender: TObject);
    procedure EditMoisSelect(Sender: TObject);
    procedure TableauAutoImporteDblClick(Sender: TObject);
    procedure TableauTiersListeTiersExit(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure AfficheAutoImporteMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheDetailBordereauEnvoiMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableauTiersListeTiersMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AfficheOperationDetailBordereauMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure EditExerciceBordereauEnvoiSelect(Sender: TObject);
    procedure EditMoisBordereauEnvoiSelect(Sender: TObject);
    procedure EditDateDebutBordereauEnvoiChange(Sender: TObject);
    procedure EditDateFinBordereauEnvoiChange(Sender: TObject);
    procedure BitListeBordereauEnvoiClick(Sender: TObject);
    procedure EditBordereauEnvoiTypeProcesSelect(Sender: TObject);
    procedure EditBordereauEnvoiFichierConserneSelect(Sender: TObject);
    procedure EditBordereauEnvoiNomTiersEnter(Sender: TObject);
    procedure EditBordereauEnvoiNomTiersKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditBordereauEnvoiNomTiersKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauBordereauEnvoiListeTiersKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauBordereauEnvoiListeTiersExit(Sender: TObject);
    procedure TableauBordereauEnvoiListeTiersMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BitBtn13Click(Sender: TObject);
    procedure AfficheBordereauEnvoiOptionPrintClick(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure IncEditEditNbrExempleClick(Sender: TObject; Button: TUDBtnType);
    procedure EditObservationChange(Sender: TObject);
    procedure RBListeDetailBordereauEnvoiClick(Sender: TObject);
    procedure IncrimenteEditPositionBordereauClick(Sender: TObject; Button: TUDBtnType);
    procedure TableauBordereauEnvoiContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure BitBtn14Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSBordereauEnvoi: TFSBordereauEnvoi;

  Procedure AfficherBordereauEnvoi(PositionBordereau,ReferenceBordereau,NumBordereau,AnneeBordereau,RowSelectTableauDetailBordereauEnvoi:string);
  Procedure ProcListeBordereauEnvoi(TableauBordereauEnvoi:TStringGrid; TypeProces,FichierConcerneTiers,CodeTiers,Reference,DateDebut,DateFin:string);
  Procedure ProcListeDetailBordereauEnvoi(TableauDetailBordereauEnvoi:TStringGrid; PositionBordereau,RowSelect:string);
  Procedure FonctionListeDetailBordereauEnvoi(TableauDetailBordereauEnvoi:TStringGrid; RowInt,ColData:integer; PositionBordereau:string; var RowOut:integer);
  Function ControleValideBordereau(PositionBordereau:string):boolean;
  Procedure ListePositionEnregistres(SourceAutoImporte:string; EditListePositionEnregistres:TEdit);
  Procedure InitialisationAutoImporte;
  Procedure AfficherListeAutoImporte(Source:string);
  Procedure ProcListeAvisAutoImporte(TableauListeAvis:TStringGrid; BaseAvis,TypeProcesTiers,FichierConserneTiers,DateDebut,DateFin:string);
  Procedure MiseAJourPositionBordereauEnvoi;

implementation

uses UnitInitialisation, UnitSuppression, UnitFSMenuPrincipal, UnitPrintBordereauEnvoi, UnitFSTiers, UnitPointeurs,
     UnitFSFicheSaisie, UnitFSGenerateurMouvement;

{$R *.dfm}

procedure TFSBordereauEnvoi.BitBtn1Click(Sender: TObject);
var   R,i,NumPage,NbrPage,Reste,CountInsert,CapacityMax,Capacity,CapacityTeste,CapacityLast:integer;
      DataCapacity:string;
      OKCapacityMax:boolean;
begin
     CapacityMax:=33;

     FSBordereauEnvoi.EditNumOrdreBordereauEnvoiCopie.Lines.Text:='';
     FSBordereauEnvoi.EditDesignationBordereauCopie.Lines.Text:='';
     FSBordereauEnvoi.EditExomplairesBordereauCopie.Lines.Text:='';
     FSBordereauEnvoi.EditObservationBordereauCopie.Lines.Text:='';
     for R:=0 to CapacityMax do
     begin
          FSBordereauEnvoi.EditNumOrdreBordereauEnvoiCopie.Lines.Add('');
          FSBordereauEnvoi.EditExomplairesBordereauCopie.Lines.Add('');
          FSBordereauEnvoi.EditObservationBordereauCopie.Lines.Add('');
     end;

     FSBordereauEnvoi.EditNumOrdreBordereauEnvoiTeste.Lines.Text:='';
     FSBordereauEnvoi.EditDesignationBordereauTeste.Lines.Text:='';
     FSBordereauEnvoi.EditExomplairesBordereauTeste.Lines.Text:='';
     FSBordereauEnvoi.EditObservationBordereauTeste.Lines.Text:='';
     for R :=1 to FSBordereauEnvoi.TableauDetailBordereauEnvoi.RowCount-1 do
     begin
          FSBordereauEnvoi.EditNumOrdreBordereauEnvoiTeste.Lines.Add(Completezerogauche(FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[0,R],'2'));
          FSBordereauEnvoi.EditDesignationBordereauTeste.Lines.Add(FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[3,R]);
          FSBordereauEnvoi.EditExomplairesBordereauTeste.Lines.Add(FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[4,R]);
          FSBordereauEnvoi.EditObservationBordereauTeste.Lines.Add(FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[5,R]);

          if(FSBordereauEnvoi.RBSautLigne.Checked=true)then
          if(R<FSBordereauEnvoi.TableauDetailBordereauEnvoi.RowCount-1)then
          begin
               FSBordereauEnvoi.EditNumOrdreBordereauEnvoiTeste.Lines.Add('');
               FSBordereauEnvoi.EditDesignationBordereauTeste.Lines.Add('');
               FSBordereauEnvoi.EditExomplairesBordereauTeste.Lines.Add('');
               FSBordereauEnvoi.EditObservationBordereauTeste.Lines.Add('');
          end;
     end;
     CapacityTeste:=FSBordereauEnvoi.EditDesignationBordereauTeste.Lines.Capacity;
     DataCapacity:=FSBordereauEnvoi.EditDesignationBordereauTeste.Name;
     
     if CapacityTeste<=FSBordereauEnvoi.EditExomplairesBordereauTeste.Lines.Capacity then
     begin
          CapacityTeste:=FSBordereauEnvoi.EditExomplairesBordereauTeste.Lines.Capacity;
          DataCapacity:=FSBordereauEnvoi.EditExomplairesBordereauTeste.Name;
     end;
     if CapacityTeste<=FSBordereauEnvoi.EditObservationBordereauTeste.Lines.Capacity then
     begin
          CapacityTeste:=FSBordereauEnvoi.EditObservationBordereauTeste.Lines.Capacity;
          DataCapacity:=FSBordereauEnvoi.EditObservationBordereauTeste.Name;
     end;

     Division(CapacityTeste,CapacityMax,NbrPage,Reste);
     if(Reste>0)then NbrPage:=NbrPage+1;

     OpenFParc(RParc);
     PrintBordereauEnvoi.TextEntreprise.Caption:=RParc.Text1;
     PrintBordereauEnvoi.TextD2.Caption:=RParc.Text2;
     PrintBordereauEnvoi.TextD3.Caption:=RParc.Text3;
     PrintBordereauEnvoi.TextD4.Caption:=RParc.Text4;
     PrintBordereauEnvoi.Logo.Picture:=FSMenuPrincipal.Logo.Picture;

     PrintBordereauEnvoi.DataNumBordereauEnvoi.Caption:='BORDEREAU  D''ENVOI N° '+FSBordereauEnvoi.EditNumBordereau.Text;
     PrintBordereauEnvoi.DataReference.Caption:=FSBordereauEnvoi.EditRefference.Text+'/'+FSBordereauEnvoi.EditNumBordereau.Text+'/'+FSBordereauEnvoi.EditAnneeBordereau.Text;
     PrintBordereauEnvoi.TitreDate.Caption:=FSBordereauEnvoi.EditFaitA.Text+datetostr(FSBordereauEnvoi.EditDateBordereau.Date);
     PrintBordereauEnvoi.TitreDestination.Lines.Text:=FSBordereauEnvoi.EditDestinationBordereau.Lines.Text;
     PrintBordereauEnvoi.TitreSignataire.Caption:=FSBordereauEnvoi.EditSignataire.Text;

     Capacity:=0;
     CapacityLast:=0;
     NumPage:=0;
     CountInsert:=0;
     OKCapacityMax:=false;
     R:=1;
     while(R<=FSBordereauEnvoi.TableauDetailBordereauEnvoi.RowCount-1)do
     begin
          FSBordereauEnvoi.EditNumOrdreBordereauEnvoiTeste.Lines.Text:=Completezerogauche(FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[0,R],'2');
          FSBordereauEnvoi.EditDesignationBordereauTeste.Lines.Text:=FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[3,R];
          FSBordereauEnvoi.EditExomplairesBordereauTeste.Lines.Text:=FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[4,R];
          FSBordereauEnvoi.EditObservationBordereauTeste.Lines.Text:=FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[5,R];

          CapacityTeste:=0;
          DataCapacity:=FSBordereauEnvoi.EditDesignationBordereauTeste.Name;
          for i:=0 to FSBordereauEnvoi.EditDesignationBordereauTeste.Lines.Count do
          begin
               if(FSBordereauEnvoi.EditDesignationBordereauTeste.Lines.Strings[i]<>'')then
               begin
                    CapacityTeste:=CapacityTeste+1;
               end;
          end;
          if CapacityTeste<FSBordereauEnvoi.EditExomplairesBordereauTeste.Lines.Capacity then begin CapacityTeste:=FSBordereauEnvoi.EditExomplairesBordereauTeste.Lines.Capacity; DataCapacity:=FSBordereauEnvoi.EditExomplairesBordereauTeste.Name; end;
          if CapacityTeste<FSBordereauEnvoi.EditObservationBordereauTeste.Lines.Capacity then begin CapacityTeste:=FSBordereauEnvoi.EditObservationBordereauTeste.Lines.Capacity; DataCapacity:=FSBordereauEnvoi.EditObservationBordereauTeste.Name; end;

          if(FSBordereauEnvoi.RBSautLigne.Checked=true)then CapacityTeste:=CapacityTeste+1;

          if((Capacity+CapacityTeste)<=CapacityMax)then
          begin
                Capacity:=Capacity+CapacityTeste;
                
                CountInsert:=FSBordereauEnvoi.EditDesignationBordereauCopie.Lines.Count;
                for i:=0 to FSBordereauEnvoi.EditDesignationBordereauTeste.Lines.Count do
                begin
                     if(FSBordereauEnvoi.EditDesignationBordereauTeste.Lines.Strings[i]<>'')then
                     begin
                          FSBordereauEnvoi.EditDesignationBordereauCopie.Lines.Add(FSBordereauEnvoi.EditDesignationBordereauTeste.Lines.Strings[i]);
                     end;
                end;

                FSBordereauEnvoi.EditNumOrdreBordereauEnvoiCopie.Lines.Insert(CountInsert,FSBordereauEnvoi.EditNumOrdreBordereauEnvoiTeste.Lines.Text);
                FSBordereauEnvoi.EditExomplairesBordereauCopie.Lines.Insert(CountInsert,FSBordereauEnvoi.EditExomplairesBordereauTeste.Lines.Text);
                FSBordereauEnvoi.EditObservationBordereauCopie.Lines.Insert(CountInsert,FSBordereauEnvoi.EditObservationBordereauTeste.Lines.Text);

                if(FSBordereauEnvoi.RBSautLigne.Checked=true)then FSBordereauEnvoi.EditDesignationBordereauCopie.Lines.Add('');

                CapacityLast:=Capacity;

          end
          else
          begin
               OKCapacityMax:=true;
          end;

          if(OKCapacityMax=true)or(R=FSBordereauEnvoi.TableauDetailBordereauEnvoi.RowCount-1)then
          begin
               PrintBordereauEnvoi.DataNumOrdre.Lines.Text:=FSBordereauEnvoi.EditNumOrdreBordereauEnvoiCopie.Lines.Text;
               PrintBordereauEnvoi.DataDesignation.Lines.Text:=FSBordereauEnvoi.EditDesignationBordereauCopie.Lines.Text;
               PrintBordereauEnvoi.DataExemplaires.Lines.Text:=FSBordereauEnvoi.EditExomplairesBordereauCopie.Lines.Text;
               PrintBordereauEnvoi.DataObservation.Lines.Text:=FSBordereauEnvoi.EditObservationBordereauCopie.Lines.Text;
               NumPage:=NumPage+1;
               PrintBordereauEnvoi.DataNumPage.Caption:='Page: '+inttostr(NumPage)+'/'+inttostr(NbrPage);
               PrintBordereauEnvoi.Preview;

               PrintBordereauEnvoi.DataNumOrdre.Lines.Clear;
               PrintBordereauEnvoi.DataDesignation.Lines.Clear;
               PrintBordereauEnvoi.DataExemplaires.Lines.Clear;
               PrintBordereauEnvoi.DataObservation.Lines.Clear;
               FSBordereauEnvoi.EditNumOrdreBordereauEnvoiCopie.Lines.Clear;
               FSBordereauEnvoi.EditDesignationBordereauCopie.Lines.Clear;
               FSBordereauEnvoi.EditExomplairesBordereauCopie.Lines.Clear;
               FSBordereauEnvoi.EditObservationBordereauCopie.Lines.Clear;

               /////////////////  Initialisation Etat Print ///////////////////
               Capacity:=0;
               CapacityLast:=0;
               if(OKCapacityMax=true)then R:=R-1;
               OKCapacityMax:=false;
               /////////////////////////////////////////////////////////////////
          end;
     R:=R+1;
     end;

end;

procedure TFSBordereauEnvoi.EditTiersTypeProcesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSBordereauEnvoi.EditTiersFichierConserne.SetFocus;
end;

end;

procedure TFSBordereauEnvoi.EditTiersTypeProcesSelect(Sender: TObject);
begin
     ListeTypeFichierTiersBox(FSBordereauEnvoi.EditTiersTypeProces.Text,'','',EditTiersFichierConserne,FSBordereauEnvoi.TitreEditTiersFichierConserne);
     FSBordereauEnvoi.TableauTiersListeTiers.Visible:=true;
     ListeTiers(FSBordereauEnvoi.TableauTiersListeTiers,FSBordereauEnvoi.EditTiersTypeProces.Text,FSBordereauEnvoi.EditTiersFichierConserne.Text,'','','',true);
end;

procedure TFSBordereauEnvoi.EditTiersFichierConserneSelect(
  Sender: TObject);
begin
     FSBordereauEnvoi.TableauTiersListeTiers.Visible:=true;
     ListeTiers(FSBordereauEnvoi.TableauTiersListeTiers,FSBordereauEnvoi.EditTiersTypeProces.Text,FSBordereauEnvoi.EditTiersFichierConserne.Text,'','','',true);
end;

procedure TFSBordereauEnvoi.EditTiersNomTiersEnter(Sender: TObject);
begin
     FSBordereauEnvoi.TableauTiersListeTiers.Visible:=true;
     ListeTiers(FSBordereauEnvoi.TableauTiersListeTiers,FSBordereauEnvoi.EditTiersTypeProces.Text,FSBordereauEnvoi.EditTiersFichierConserne.Text,'','','',true);
end;

procedure TFSBordereauEnvoi.EditTiersNomTiersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSBordereauEnvoi.TableauTiersListeTiers.SetFocus;
end;

end;

procedure TFSBordereauEnvoi.EditTiersNomTiersKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     ListeTiers(FSBordereauEnvoi.TableauTiersListeTiers,FSBordereauEnvoi.EditTiersTypeProces.Text,FSBordereauEnvoi.EditTiersFichierConserne.Text,'','',FSBordereauEnvoi.EditTiersNomTiers.Text,true);
end;

procedure TFSBordereauEnvoi.TableauTiersListeTiersKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var   MonsieurLe:string;
begin

if key in[VK_RETURN]then
begin
     MonsieurLe:='';

     if(FSBordereauEnvoi.EditTiersTypeProces.Text='Comptabilité')then
     begin
          MonsieurLe:='Monsieur ';
          FSBordereauEnvoi.EditTiersCodeTiers.Text:=FSBordereauEnvoi.TableauTiersListeTiers.Cells[1,FSBordereauEnvoi.TableauTiersListeTiers.Row];
          FSBordereauEnvoi.EditTiersNomTiers.Text:=FSBordereauEnvoi.TableauTiersListeTiers.Cells[2,FSBordereauEnvoi.TableauTiersListeTiers.Row];
     end
     else
     if(FSBordereauEnvoi.EditTiersTypeProces.Text='Social')then
     begin
          if(FSBordereauEnvoi.TableauTiersListeTiers.Cells[24,FSBordereauEnvoi.TableauTiersListeTiers.Row]<>'')
          then MonsieurLe:='Monsieur le '+FSBordereauEnvoi.TableauTiersListeTiers.Cells[24,FSBordereauEnvoi.TableauTiersListeTiers.Row]+' '
          else MonsieurLe:='Monsieur le responsable ';
          FSBordereauEnvoi.EditTiersCodeTiers.Text:=FSBordereauEnvoi.TableauTiersListeTiers.Cells[1,FSBordereauEnvoi.TableauTiersListeTiers.Row];
          FSBordereauEnvoi.EditTiersNomTiers.Text:=FSBordereauEnvoi.TableauTiersListeTiers.Cells[4,FSBordereauEnvoi.TableauTiersListeTiers.Row]+' '+FSBordereauEnvoi.TableauTiersListeTiers.Cells[5,FSBordereauEnvoi.TableauTiersListeTiers.Row];
     end
     else
     if(FSBordereauEnvoi.EditTiersTypeProces.Text='Commercial')or(FSBordereauEnvoi.EditTiersTypeProces.Text='Business')then
     begin
          if(FSBordereauEnvoi.EditTiersFichierConserne.Text<>'FProjetFinance')then
          begin
               if(FSBordereauEnvoi.TableauTiersListeTiers.Cells[7,FSBordereauEnvoi.TableauTiersListeTiers.Row]<>'')
               then MonsieurLe:='Monssieur le '+FSBordereauEnvoi.TableauTiersListeTiers.Cells[7,FSBordereauEnvoi.TableauTiersListeTiers.Row]+' '
               else MonsieurLe:='Monssieur le responsable ';
               FSBordereauEnvoi.EditTiersCodeTiers.Text:=FSBordereauEnvoi.TableauTiersListeTiers.Cells[1,FSBordereauEnvoi.TableauTiersListeTiers.Row];
               FSBordereauEnvoi.EditTiersNomTiers.Text:=FSBordereauEnvoi.TableauTiersListeTiers.Cells[2,FSBordereauEnvoi.TableauTiersListeTiers.Row];
          end
          else
          begin
               if(FSBordereauEnvoi.TableauTiersListeTiers.Cells[4,FSBordereauEnvoi.TableauTiersListeTiers.Row]<>'')
               then MonsieurLe:='Monsieur le responsable du '+FSBordereauEnvoi.TableauTiersListeTiers.Cells[4,FSBordereauEnvoi.TableauTiersListeTiers.Row]+' '
               else MonsieurLe:='Monsieur le responsable de ';
               FSBordereauEnvoi.EditTiersCodeTiers.Text:=FSBordereauEnvoi.TableauTiersListeTiers.Cells[1,FSBordereauEnvoi.TableauTiersListeTiers.Row];
               FSBordereauEnvoi.EditTiersNomTiers.Text:=FSBordereauEnvoi.TableauTiersListeTiers.Cells[2,FSBordereauEnvoi.TableauTiersListeTiers.Row];
          end;
     end
     else
     if(FSBordereauEnvoi.EditTiersTypeProces.Text='Paie')then
     begin
          MonsieurLe:='Monsieur ';
          FSBordereauEnvoi.EditTiersCodeTiers.Text:=FSBordereauEnvoi.TableauTiersListeTiers.Cells[1,FSBordereauEnvoi.TableauTiersListeTiers.Row];
          FSBordereauEnvoi.EditTiersNomTiers.Text:=FSBordereauEnvoi.TableauTiersListeTiers.Cells[2,FSBordereauEnvoi.TableauTiersListeTiers.Row];
     end
     else
     //if(FSBordereauEnvoi.EditTiersTypeProces.Text='')then
     begin
          MonsieurLe:='Monsieur ';
          FSBordereauEnvoi.EditTiersCodeTiers.Text:=FSBordereauEnvoi.TableauTiersListeTiers.Cells[1,FSBordereauEnvoi.TableauTiersListeTiers.Row];
          FSBordereauEnvoi.EditTiersNomTiers.Text:=FSBordereauEnvoi.TableauTiersListeTiers.Cells[2,FSBordereauEnvoi.TableauTiersListeTiers.Row];
     end;

     FSBordereauEnvoi.EditDestinationBordereau.Lines.Text:='';
     FSBordereauEnvoi.EditDestinationBordereau.Lines.Add('A');
     FSBordereauEnvoi.EditDestinationBordereau.Lines.Add(MonsieurLe+FSBordereauEnvoi.EditTiersNomTiers.Text);
     FSBordereauEnvoi.EditDestinationBordereau.SetFocus;
     FSBordereauEnvoi.TableauTiersListeTiers.Visible:=false;
end;

end;

procedure TFSBordereauEnvoi.BitValiderBordereauClick(Sender: TObject);
var  i,iExiste:integer;    OKBordereau:boolean;
begin
     OpenFParc(RParc);
     ChBordereauEnvoi:=RParc.Parcours+'\'+Exercice+'FBordereauEnvoi';
     assignfile(FBordereauEnvoi,ChBordereauEnvoi);
     if FileExists(ChBordereauEnvoi)then
     Reset(FBordereauEnvoi)
     else Rewrite(FBordereauEnvoi);
     Seek(FBordereauEnvoi,0);
     i:=0;
     OKBordereau:=false;
     while not eof(FBordereauEnvoi)and(OKBordereau=false)do
     begin
          read(FBordereauEnvoi,RBordereauEnvoi);
          if(inttostr(RBordereauEnvoi.PositionBordereau)=FSBordereauEnvoi.EditPositionBordereau.Text)
          then
          begin
               OKBordereau:=true;
               iExiste:=i;
          end;
     i:=i+1;
     end;

     if(OKBordereau=true)then i:=iExiste;

     Seek(FBordereauEnvoi,i);
     RBordereauEnvoi.PositionBordereau:=i;
     RBordereauEnvoi.ReferenceBordereau:=FSBordereauEnvoi.EditRefference.Text;
     RBordereauEnvoi.NumBordereau:=strtointeger(FSBordereauEnvoi.EditNumBordereau.Text);
     RBordereauEnvoi.AnneeBordereau:=FSBordereauEnvoi.EditAnneeBordereau.Text;
     RBordereauEnvoi.FaitABordereau:=FSBordereauEnvoi.EditFaitA.Text;
     RBordereauEnvoi.DateBordereau:=datetostr(FSBordereauEnvoi.EditDateBordereau.Date);
     RBordereauEnvoi.TypeProces:=FSBordereauEnvoi.EditTiersTypeProces.Text;
     RBordereauEnvoi.FichierConcerneTiers:=FSBordereauEnvoi.EditTiersFichierConserne.Text;
     RBordereauEnvoi.CodeTiers:=FSBordereauEnvoi.EditTiersCodeTiers.Text;
     RBordereauEnvoi.DestinationBordereau:=FSBordereauEnvoi.EditDestinationBordereau.Lines.Text;
     RBordereauEnvoi.Signataire:=FSBordereauEnvoi.EditSignataire.Text;
     write(FBordereauEnvoi,RBordereauEnvoi);

     CloseFile(FBordereauEnvoi);

     //if(OKBordereau=true)
     //then Affichermessage('Bordereau modifié avec succès !')
     //else Affichermessage('Bordereau ajouté avec succès !');

     ProcListeBordereauEnvoi(FSBordereauEnvoi.TableauBordereauEnvoi,FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text,FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.Text,FSBordereauEnvoi.EditBordereauEnvoiCodeTiers.Text,'',datetostr(FSBordereauEnvoi.EditDateDebutBordereauEnvoi.Date),datetostr(FSBordereauEnvoi.EditDateFinBordereauEnvoi.Date));
     FSBordereauEnvoi.TableauBordereauEnvoi.Row:=FSBordereauEnvoi.TableauBordereauEnvoi.RowCount-1;
     AfficherBordereauEnvoi(FSBordereauEnvoi.EditPositionBordereau.Text,FSBordereauEnvoi.EditRefference.Text,FSBordereauEnvoi.EditNumBordereau.Text,FSBordereauEnvoi.EditAnneeBordereau.Text,FSBordereauEnvoi.EditRowTableauDetailBordereauEnvoi.Text);

     FSBordereauEnvoi.AfficheOperationBordereauEnvoi.Enabled:=true;
end;

Procedure ProcListeBordereauEnvoi(TableauBordereauEnvoi:TStringGrid; TypeProces,FichierConcerneTiers,CodeTiers,Reference,DateDebut,DateFin:string);
var  R,C:integer;  OKBordereau:boolean;   NotRow,NotCol:string;
begin
     TableauBordereauEnvoi.ColCount:=13;
     TableauBordereauEnvoi.Cols[0].Text:='N°';
     TableauBordereauEnvoi.Cols[1].Text:='P°';
     TableauBordereauEnvoi.Cols[2].Text:='Réf';
     TableauBordereauEnvoi.Cols[3].Text:='Numéro';
     TableauBordereauEnvoi.Cols[4].Text:='Anneée';
     TableauBordereauEnvoi.Cols[5].Text:='Fait à';
     TableauBordereauEnvoi.Cols[6].Text:='Date';
     TableauBordereauEnvoi.Cols[7].Text:='TypeProces';
     TableauBordereauEnvoi.Cols[8].Text:='FichierConcerneTiers';
     TableauBordereauEnvoi.Cols[9].Text:='CodeTiers';
     TableauBordereauEnvoi.Cols[10].Text:='Tiers';
     TableauBordereauEnvoi.Cols[11].Text:='Déstination';
     TableauBordereauEnvoi.Cols[12].Text:='Signataire';

     TableauBordereauEnvoi.RowCount:=2;
     TableauBordereauEnvoi.Rows[1].Text:='';

     OpenFParc(RParc);
     ChBordereauEnvoi:=RParc.Parcours+'\'+Exercice+'FBordereauEnvoi';
     assignfile(FBordereauEnvoi,ChBordereauEnvoi);
     if FileExists(ChBordereauEnvoi)then
     Reset(FBordereauEnvoi)
     else Rewrite(FBordereauEnvoi);
     Seek(FBordereauEnvoi,0);
     R:=0;
     while not eof(FBordereauEnvoi)do
     begin
          read(FBordereauEnvoi,RBordereauEnvoi);

          OKBordereau:=true;

          if(OKBordereau=true)then
          begin
                if(TypeProces<>'')and(TypeProces<>'Tous')then
                begin
                     if(RBordereauEnvoi.TypeProces=TypeProces)
                     then OKBordereau:=true
                     else OKBordereau:=false;
                end;
          end;

          if(OKBordereau=true)then
          begin
                if(FichierConcerneTiers<>'')and(FichierConcerneTiers<>'Tous')then
                begin
                     if(RBordereauEnvoi.FichierConcerneTiers=FichierConcerneTiers)
                     then OKBordereau:=true
                     else OKBordereau:=false;
                end;
          end;

          if(OKBordereau=true)then
          begin
                if(CodeTiers<>'')then
                begin
                     if(RBordereauEnvoi.CodeTiers=CodeTiers)
                     then OKBordereau:=true
                     else OKBordereau:=false;
                end;
          end;

          if(OKBordereau=true)then
          begin
               if(Reference<>'')then
               begin
                    if(RBordereauEnvoi.ReferenceBordereau=Reference)
                    then OKBordereau:=true
                    else OKBordereau:=false;
               end;
         end;

          if(OKBordereau=true)then
          begin
                if(DateDebut<>'')and(DateFin<>'')then
                begin
                     if(strtodate(RBordereauEnvoi.DateBordereau)>=strtodate(DateDebut))
                     and(strtodate(RBordereauEnvoi.DateBordereau)<=strtodate(DateFin))
                     then OKBordereau:=true
                     else OKBordereau:=false;
                end;
          end;

          if(OKBordereau=true)then
          begin
               R:=R+1;
               TableauBordereauEnvoi.Rows[R].Text:=inttostr(R);
               TableauBordereauEnvoi.Cells[1,R]:=inttostr(RBordereauEnvoi.PositionBordereau);
               TableauBordereauEnvoi.Cells[2,R]:=RBordereauEnvoi.ReferenceBordereau;
               TableauBordereauEnvoi.Cells[3,R]:=inttostr(RBordereauEnvoi.NumBordereau);
               TableauBordereauEnvoi.Cells[4,R]:=RBordereauEnvoi.AnneeBordereau;
               TableauBordereauEnvoi.Cells[5,R]:=RBordereauEnvoi.FaitABordereau;
               TableauBordereauEnvoi.Cells[6,R]:=RBordereauEnvoi.DateBordereau;
               TableauBordereauEnvoi.Cells[7,R]:=RBordereauEnvoi.TypeProces;
               TableauBordereauEnvoi.Cells[8,R]:=RBordereauEnvoi.FichierConcerneTiers;
               TableauBordereauEnvoi.Cells[9,R]:=RBordereauEnvoi.CodeTiers;
               RTiers:=chercherTiers(RBordereauEnvoi.TypeProces,RBordereauEnvoi.FichierConcerneTiers,RBordereauEnvoi.CodeTiers,'');
               TableauBordereauEnvoi.Cells[10,R]:=RTiers.NomTiers+' '+RTiers.PrenomTiers;

               if(FSBordereauEnvoi.RBListeDetailBordereauEnvoi.Checked=true)then
               begin
                    FonctionListeDetailBordereauEnvoi(TableauBordereauEnvoi,R,11,inttostr(RBordereauEnvoi.PositionBordereau),R);
               end
               else
               begin
                    TableauBordereauEnvoi.Cells[11,R]:=RBordereauEnvoi.DestinationBordereau;
               end;

               TableauBordereauEnvoi.Cells[12,R]:=RBordereauEnvoi.Signataire;
          end;

     end;
     CloseFile(FBordereauEnvoi);

     if(R>0)then TableauBordereauEnvoi.RowCount:=R+1
            else TableauBordereauEnvoi.RowCount:=2;

     NotRow:='';
     NotCol:='1;2;12';

     for C:=1 to TableauBordereauEnvoi.ColCount-1 do if Existenumintexte(inttostr(C),NotCol)then TableauBordereauEnvoi.ColWidths[C]:=0;
     AjusterColWidth(TableauBordereauEnvoi,NotRow,NotCol);

     for C:=0 to TableauBordereauEnvoi.ColCount-1 do
     begin
          if(TableauBordereauEnvoi.ColWidths[C]>FSBordereauEnvoi.EditDesignationBordereauCopie.Width)
          then TableauBordereauEnvoi.ColWidths[C]:=FSBordereauEnvoi.EditDesignationBordereauCopie.Width;
     end;
end;

Procedure ProcListeDetailBordereauEnvoi(TableauDetailBordereauEnvoi:TStringGrid; PositionBordereau,RowSelect:string);
var  R,C:integer;  OKDetailBordereau:boolean;   NotRow,NotCol:string;
begin
     TableauDetailBordereauEnvoi.ColCount:=8;
     TableauDetailBordereauEnvoi.Cols[0].Text:='N°';
     TableauDetailBordereauEnvoi.Cols[1].Text:='P°B';
     TableauDetailBordereauEnvoi.Cols[2].Text:='P°DB';
     TableauDetailBordereauEnvoi.Cols[3].Text:='Désignation';
     TableauDetailBordereauEnvoi.Cols[4].Text:='Exe';
     TableauDetailBordereauEnvoi.Cols[5].Text:='Obs';
     TableauDetailBordereauEnvoi.Cols[6].Text:='Source';
     TableauDetailBordereauEnvoi.Cols[7].Text:='P°Registre';

     TableauDetailBordereauEnvoi.RowCount:=2;
     TableauDetailBordereauEnvoi.Rows[1].Text:='';

     OpenFParc(RParc);
     ChDetailBordereauEnvoi:=RParc.Parcours+'\'+Exercice+'FDetailBordereauEnvoi';
     assignfile(FDetailBordereauEnvoi,ChDetailBordereauEnvoi);
     if FileExists(ChDetailBordereauEnvoi)then
     Reset(FDetailBordereauEnvoi)
     else Rewrite(FDetailBordereauEnvoi);
     Seek(FDetailBordereauEnvoi,0);
     R:=0;
     while not eof(FDetailBordereauEnvoi)do
     begin
          read(FDetailBordereauEnvoi,RDetailBordereauEnvoi);

          if(PositionBordereau<>'')then
          begin
               if(inttostr(RDetailBordereauEnvoi.PositionBordereau)=PositionBordereau)
               then OKDetailBordereau:=true
               else OKDetailBordereau:=false;
          end
          else OKDetailBordereau:=false;

          if(OKDetailBordereau=true)then
          begin
               R:=R+1;
               TableauDetailBordereauEnvoi.Rows[R].Text:=inttostr(R);
               TableauDetailBordereauEnvoi.Cells[1,R]:=inttostr(RDetailBordereauEnvoi.PositionBordereau);
               TableauDetailBordereauEnvoi.Cells[2,R]:=inttostr(RDetailBordereauEnvoi.PositionDetailBordereau);
               TableauDetailBordereauEnvoi.Cells[3,R]:=RDetailBordereauEnvoi.DesignationDetailBordereau;
               TableauDetailBordereauEnvoi.Cells[4,R]:=RDetailBordereauEnvoi.ExemplaireDetailBordereau;
               TableauDetailBordereauEnvoi.Cells[5,R]:=RDetailBordereauEnvoi.ObservationDetailBordereau;
               TableauDetailBordereauEnvoi.Cells[6,R]:=RDetailBordereauEnvoi.SourceAutoImporte;
               TableauDetailBordereauEnvoi.Cells[7,R]:=RDetailBordereauEnvoi.PositionRegistreAutoImporte;
          end;

     end;
     CloseFile(FDetailBordereauEnvoi);

     if(R>0)then TableauDetailBordereauEnvoi.RowCount:=R+1
            else TableauDetailBordereauEnvoi.RowCount:=2;

     NotRow:='';
     NotCol:='1;2;6;7';

     for C:=0 to TableauDetailBordereauEnvoi.ColCount-1 do if Existenumintexte(inttostr(C),NotCol)then TableauDetailBordereauEnvoi.ColWidths[C]:=0;
     //AjusterColWidth(TableauDetailBordereauEnvoi,NotRow,NotCol);

     if(RowSelect<>'')and(strtointeger(RowSelect)>0)and(strtointeger(RowSelect)<=TableauDetailBordereauEnvoi.RowCount-1)then TableauDetailBordereauEnvoi.Row:=strtointeger(RowSelect);
end;

Procedure FonctionListeDetailBordereauEnvoi(TableauDetailBordereauEnvoi:TStringGrid; RowInt,ColData:integer; PositionBordereau:string; var RowOut:integer);
var  R,C:integer;  OKDetailBordereau:boolean;   NotRow,NotCol:string;
begin
     OpenFParc(RParc);
     ChDetailBordereauEnvoi:=RParc.Parcours+'\'+Exercice+'FDetailBordereauEnvoi';
     assignfile(FDetailBordereauEnvoi,ChDetailBordereauEnvoi);
     if FileExists(ChDetailBordereauEnvoi)then
     Reset(FDetailBordereauEnvoi)
     else Rewrite(FDetailBordereauEnvoi);
     Seek(FDetailBordereauEnvoi,0);
     R:=0;
     while not eof(FDetailBordereauEnvoi)do
     begin
          read(FDetailBordereauEnvoi,RDetailBordereauEnvoi);

          if(PositionBordereau<>'')then
          begin
               if(inttostr(RDetailBordereauEnvoi.PositionBordereau)=PositionBordereau)
               then OKDetailBordereau:=true
               else OKDetailBordereau:=false;
          end
          else OKDetailBordereau:=false;

          if(OKDetailBordereau=true)then
          begin
               TableauDetailBordereauEnvoi.Cells[ColData,RowInt]:=RDetailBordereauEnvoi.ExemplaireDetailBordereau+' '+RDetailBordereauEnvoi.DesignationDetailBordereau+'.';
               RowInt:=RowInt+1;
          end;

     end;
     CloseFile(FDetailBordereauEnvoi);

     RowOut:=RowInt;
end;

Procedure AfficherBordereauEnvoi(PositionBordereau,ReferenceBordereau,NumBordereau,AnneeBordereau,RowSelectTableauDetailBordereauEnvoi:string);
var  OKBordereau:boolean;
begin
     FSBordereauEnvoi.IncrimenteEditPositionBordereau.Position:=strtointeger(PositionBordereau);
     FSBordereauEnvoi.EditPositionBordereau.Text:=PositionBordereau;
     FSBordereauEnvoi.EditRefference.Text:='';
     FSBordereauEnvoi.EditNumBordereau.Text:='';
     FSBordereauEnvoi.EditAnneeBordereau.Text:='';
     FSBordereauEnvoi.EditFaitA.Text:='';
     FSBordereauEnvoi.EditDateBordereau.Date:=Date;
     FSBordereauEnvoi.EditTiersTypeProces.Text:='';
     FSBordereauEnvoi.EditTiersFichierConserne.Text:='';
     FSBordereauEnvoi.EditTiersCodeTiers.Text:='';
     FSBordereauEnvoi.EditDestinationBordereau.Lines.Text:='';
     FSBordereauEnvoi.EditSignataire.Text:='';

     ///////////////////////////////////////////////////////////////////////////
     FSBordereauEnvoi.TableauDetailBordereauEnvoi.ColCount:=8;
     FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cols[0].Text:='N°';
     FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cols[1].Text:='P°B';
     FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cols[2].Text:='P°DB';
     FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cols[3].Text:='Désignation';
     FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cols[4].Text:='Exe';
     FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cols[5].Text:='Obs';
     FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cols[6].Text:='Source';
     FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cols[7].Text:='P°Registre';

     FSBordereauEnvoi.TableauDetailBordereauEnvoi.RowCount:=2;
     FSBordereauEnvoi.TableauDetailBordereauEnvoi.Rows[1].Text:='';
     ///////////////////////////////////////////////////////////////////////////

     OpenFParc(RParc);
     ChBordereauEnvoi:=RParc.Parcours+'\'+Exercice+'FBordereauEnvoi';
     assignfile(FBordereauEnvoi,ChBordereauEnvoi);
     if FileExists(ChBordereauEnvoi)then
     Reset(FBordereauEnvoi)
     else Rewrite(FBordereauEnvoi);
     Seek(FBordereauEnvoi,0);
     OKBordereau:=false;
     while not eof(FBordereauEnvoi)and(OKBordereau=false)do
     begin
          read(FBordereauEnvoi,RBordereauEnvoi);
          if(inttostr(RBordereauEnvoi.PositionBordereau)=PositionBordereau)
          or((RBordereauEnvoi.ReferenceBordereau=ReferenceBordereau)
          and(inttostr(RBordereauEnvoi.NumBordereau)=NumBordereau)
          and(RBordereauEnvoi.AnneeBordereau=AnneeBordereau))
          then
          begin
               OKBordereau:=true;
               FSBordereauEnvoi.EditRefference.Text:=RBordereauEnvoi.ReferenceBordereau;
               FSBordereauEnvoi.EditNumBordereau.Text:=Completezerogauche(inttostr(RBordereauEnvoi.NumBordereau),'4');
               FSBordereauEnvoi.EditAnneeBordereau.Text:=RBordereauEnvoi.AnneeBordereau;
               FSBordereauEnvoi.EditFaitA.Text:=RBordereauEnvoi.FaitABordereau;
               FSBordereauEnvoi.EditDateBordereau.Date:=strtodate(RBordereauEnvoi.DateBordereau);
               FSBordereauEnvoi.EditTiersTypeProces.Text:=RBordereauEnvoi.TypeProces;
               FSBordereauEnvoi.EditTiersFichierConserne.Text:=RBordereauEnvoi.FichierConcerneTiers;
               FSBordereauEnvoi.EditTiersCodeTiers.Text:=RBordereauEnvoi.CodeTiers;
               FSBordereauEnvoi.EditDestinationBordereau.Lines.Text:=RBordereauEnvoi.DestinationBordereau;
               FSBordereauEnvoi.EditSignataire.Text:=RBordereauEnvoi.Signataire;
                                                                                                                                     
               ProcListeDetailBordereauEnvoi(FSBordereauEnvoi.TableauDetailBordereauEnvoi,FSBordereauEnvoi.EditPositionBordereau.Text,RowSelectTableauDetailBordereauEnvoi);
          end;
     end;
     CloseFile(FBordereauEnvoi);
end;

procedure TFSBordereauEnvoi.TableauBordereauEnvoiDblClick(Sender: TObject);
begin
     AfficherBordereauEnvoi(FSBordereauEnvoi.TableauBordereauEnvoi.Cells[1,FSBordereauEnvoi.TableauBordereauEnvoi.Row],FSBordereauEnvoi.TableauBordereauEnvoi.Cells[2,FSBordereauEnvoi.TableauBordereauEnvoi.Row],FSBordereauEnvoi.TableauBordereauEnvoi.Cells[3,FSBordereauEnvoi.TableauBordereauEnvoi.Row],FSBordereauEnvoi.TableauBordereauEnvoi.Cells[4,FSBordereauEnvoi.TableauBordereauEnvoi.Row],FSBordereauEnvoi.EditRowTableauDetailBordereauEnvoi.Text);
     FSBordereauEnvoi.AfficheOperationBordereauEnvoi.Enabled:=true;
     FSBordereauEnvoi.PageBordereauEnvoi.Show;
end;

procedure TFSBordereauEnvoi.TableauBordereauEnvoiClick(Sender: TObject);
begin
     FSBordereauEnvoi.AfficheConfirmeOperationBordereau.Visible:=false;
     FSBordereauEnvoi.AfficheBordereauEnvoiOptionPrint.Height:=25;
end;

procedure TFSBordereauEnvoi.BitBtn5Click(Sender: TObject);
begin
     FSBordereauEnvoi.AfficheConfirmeOperationBordereau.Visible:=false;
end;

procedure TFSBordereauEnvoi.BitBtn6Click(Sender: TObject);
var  ONBordereau:boolean;
begin
     DeleteFBordereauEnvoi(FSBordereauEnvoi.TableauBordereauEnvoi.Cells[1,FSBordereauEnvoi.TableauBordereauEnvoi.Row],ONBordereau);
     if(ONBordereau=true)then DeleteFDetailBordereauEnvoi(FSBordereauEnvoi.TableauBordereauEnvoi.Cells[1,FSBordereauEnvoi.TableauBordereauEnvoi.Row],'Tous',ONBordereau);
     ProcListeBordereauEnvoi(FSBordereauEnvoi.TableauBordereauEnvoi,FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text,FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.Text,FSBordereauEnvoi.EditBordereauEnvoiCodeTiers.Text,'',datetostr(FSBordereauEnvoi.EditDateDebutBordereauEnvoi.Date),datetostr(FSBordereauEnvoi.EditDateFinBordereauEnvoi.Date));
     FSBordereauEnvoi.AfficheConfirmeOperationBordereau.Visible:=false;
end;

procedure TFSBordereauEnvoi.BitBtn4Click(Sender: TObject);
begin
     FSBordereauEnvoi.AfficheConfirmeOperationBordereau.Visible:=true;
     FSBordereauEnvoi.AfficheConfirmeOperationBordereau.Caption:='Voulez vous supprimer le bordereau ?';
end;

procedure TFSBordereauEnvoi.BitBtn3Click(Sender: TObject);
var  NumBordereau:integer;
begin
     FSBordereauEnvoi.EditRowTableauDetailBordereauEnvoi.Text:='';

     if(FSBordereauEnvoi.EditPositionBordereau.Text<>'')
     and(ControleValideBordereau(FSBordereauEnvoi.EditPositionBordereau.Text)=false)then
     begin
          affichermessage('Vous n''avais pas enregistré les modifications !');
          FSBordereauEnvoi.BitValiderBordereau.SetFocus;
     end
     else
     begin
           FSBordereauEnvoi.AfficheOperationBordereauEnvoi.Enabled:=false;

           FSBordereauEnvoi.EditPositionBordereau.Text:='';
           FSBordereauEnvoi.EditRefference.ItemIndex:=0;
           FSBordereauEnvoi.EditNumBordereau.Text:='';
           FSBordereauEnvoi.EditAnneeBordereau.Text:=Lastlaters(datetostr(date),4);
           FSBordereauEnvoi.EditFaitA.ItemIndex:=0;
           FSBordereauEnvoi.EditDateBordereau.Date:=Date;

           FSBordereauEnvoi.EditTiersTypeProces.ItemIndex:=0;
           ListeTypeFichierTiersBox(FSBordereauEnvoi.EditTiersTypeProces.Text,'','',FSBordereauEnvoi.EditTiersFichierConserne,FSBordereauEnvoi.TitreEditTiersFichierConserne);
           FSBordereauEnvoi.EditTiersFichierConserne.ItemIndex:=0;
           FSBordereauEnvoi.EditTiersCodeTiers.Text:='';
           FSBordereauEnvoi.EditDestinationBordereau.Lines.Text:='';
           FSBordereauEnvoi.EditSignataire.ItemIndex:=0;
           FSBordereauEnvoi.EditTiersNomTiers.SetFocus;

           OpenFParc(RParc);
           ChBordereauEnvoi:=RParc.Parcours+'\'+Exercice+'FBordereauEnvoi';
           assignfile(FBordereauEnvoi,ChBordereauEnvoi);
           if FileExists(ChBordereauEnvoi)then
           Reset(FBordereauEnvoi)
           else Rewrite(FBordereauEnvoi);
           Seek(FBordereauEnvoi,0);
           NumBordereau:=1;
           while not eof(FBordereauEnvoi)do
           begin
                read(FBordereauEnvoi,RBordereauEnvoi);
                if(NumBordereau<=RBordereauEnvoi.NumBordereau)then NumBordereau:=RBordereauEnvoi.NumBordereau+1;
           end;
           CloseFile(FBordereauEnvoi);

           FSBordereauEnvoi.EditNumBordereau.Text:=inttostr(NumBordereau);
           ProcListeDetailBordereauEnvoi(FSBordereauEnvoi.TableauDetailBordereauEnvoi,FSBordereauEnvoi.EditPositionBordereau.Text,FSBordereauEnvoi.EditRowTableauDetailBordereauEnvoi.Text);
     end;
end;

procedure TFSBordereauEnvoi.ListeBordereauEnvoiShow(Sender: TObject);
begin
     ProcListeBordereauEnvoi(FSBordereauEnvoi.TableauBordereauEnvoi,FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text,FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.Text,FSBordereauEnvoi.EditBordereauEnvoiCodeTiers.Text,'',datetostr(FSBordereauEnvoi.EditDateDebutBordereauEnvoi.Date),datetostr(FSBordereauEnvoi.EditDateFinBordereauEnvoi.Date));
     FSBordereauEnvoi.AfficheBordereauEnvoiOptionPrint.Height:=25;
end;

Function ControleValideBordereau(PositionBordereau:string):boolean;
var      OKBordereau:boolean;
begin
       OpenFParc(RParc);
       ChBordereauEnvoi:=RParc.Parcours+'\'+Exercice+'FBordereauEnvoi';
       assignfile(FBordereauEnvoi,ChBordereauEnvoi);
       if FileExists(ChBordereauEnvoi)then
       Reset(FBordereauEnvoi)
       else Rewrite(FBordereauEnvoi);
       Seek(FBordereauEnvoi,0);
       OKBordereau:=false;
       ControleValideBordereau:=true;
       while not eof(FBordereauEnvoi)and(OKBordereau=false)do
       begin
            read(FBordereauEnvoi,RBordereauEnvoi);
            if(PositionBordereau<>'')
            and(inttostr(RBordereauEnvoi.PositionBordereau)=PositionBordereau)then
            begin
                 OKBordereau:=true;
                 if(RBordereauEnvoi.PositionBordereau<>strtointeger(FSBordereauEnvoi.EditPositionBordereau.Text))then ControleValideBordereau:=false;
                 if(RBordereauEnvoi.ReferenceBordereau<>FSBordereauEnvoi.EditRefference.Text)then ControleValideBordereau:=false;
                 if(RBordereauEnvoi.NumBordereau<>strtointeger(FSBordereauEnvoi.EditNumBordereau.Text))then ControleValideBordereau:=false;
                 if(RBordereauEnvoi.AnneeBordereau<>FSBordereauEnvoi.EditAnneeBordereau.Text)then ControleValideBordereau:=false;
                 if(RBordereauEnvoi.FaitABordereau<>FSBordereauEnvoi.EditFaitA.Text)then ControleValideBordereau:=false;
                 if(RBordereauEnvoi.DateBordereau<>datetostr(FSBordereauEnvoi.EditDateBordereau.Date))then ControleValideBordereau:=false;
                 if(RBordereauEnvoi.TypeProces<>FSBordereauEnvoi.EditTiersTypeProces.Text)then ControleValideBordereau:=false;
                 if(RBordereauEnvoi.FichierConcerneTiers<>FSBordereauEnvoi.EditTiersFichierConserne.Text)then ControleValideBordereau:=false;
                 if(RBordereauEnvoi.CodeTiers<>FSBordereauEnvoi.EditTiersCodeTiers.Text)then ControleValideBordereau:=false;
                 if(RBordereauEnvoi.DestinationBordereau<>FSBordereauEnvoi.EditDestinationBordereau.Lines.Text)then ControleValideBordereau:=false;
                 if(RBordereauEnvoi.Signataire<>FSBordereauEnvoi.EditSignataire.Text)then ControleValideBordereau:=false;
            end;
       end;
       CloseFile(FBordereauEnvoi);
end;

procedure TFSBordereauEnvoi.BitBtn7Click(Sender: TObject);
begin
     FSBordereauEnvoi.AfficheDetailBordereauEnvoi.Visible:=false;
end;

procedure TFSBordereauEnvoi.BitBtn8Click(Sender: TObject);
var i:integer;
begin
     FSBordereauEnvoi.AfficheDetailBordereauEnvoi.Visible:=true;
     FSBordereauEnvoi.EditRowTableauDetailBordereauEnvoi.Text:='';
     FSBordereauEnvoi.AfficheDetailBordereauEnvoi.Left:=144;
     FSBordereauEnvoi.AfficheDetailBordereauEnvoi.Top:=200;
     FSBordereauEnvoi.EditDesignationBordereau.Lines.Text:='';
     FSBordereauEnvoi.EditExomplairesBordereau.Lines.Text:='';
     FSBordereauEnvoi.EditObservationBordereau.Lines.Text:='';
     FSBordereauEnvoi.EditPositionDetailBordereau.Text:='';
     FSBordereauEnvoi.EditListePositionEnregistres.Text:='';

     FSBordereauEnvoi.EditObservation.ItemIndex:=-1;
     FSBordereauEnvoi.IncEditEditNbrExemple.Position:=0;

     FSBordereauEnvoi.EditDesignationBordereau.SetFocus;
end;

procedure TFSBordereauEnvoi.BitBtn2Click(Sender: TObject);
var  i,iExiste:integer;    OKDetailBordereau:boolean;
begin
     OpenFParc(RParc);
     ChDetailBordereauEnvoi:=RParc.Parcours+'\'+Exercice+'FDetailBordereauEnvoi';
     assignfile(FDetailBordereauEnvoi,ChDetailBordereauEnvoi);
     if FileExists(ChDetailBordereauEnvoi)then
     Reset(FDetailBordereauEnvoi)
     else Rewrite(FDetailBordereauEnvoi);
     Seek(FDetailBordereauEnvoi,0);
     i:=0;
     OKDetailBordereau:=false;
     while not eof(FDetailBordereauEnvoi)and(OKDetailBordereau=false)do
     begin
          read(FDetailBordereauEnvoi,RDetailBordereauEnvoi);
          if(inttostr(RDetailBordereauEnvoi.PositionBordereau)=FSBordereauEnvoi.EditPositionBordereau.Text)
          and(inttostr(RDetailBordereauEnvoi.PositionDetailBordereau)=FSBordereauEnvoi.EditPositionDetailBordereau.Text)
          then
          begin
               OKDetailBordereau:=true;
               iExiste:=i;
          end;
     i:=i+1;
     end;

     if(OKDetailBordereau=true)then i:=iExiste;

     Seek(FDetailBordereauEnvoi,i);
     RDetailBordereauEnvoi.PositionBordereau:=strtointeger(FSBordereauEnvoi.EditPositionBordereau.Text);
     RDetailBordereauEnvoi.PositionDetailBordereau:=i;
     RDetailBordereauEnvoi.DesignationDetailBordereau:=FSBordereauEnvoi.EditDesignationBordereau.Lines.Text;
     RDetailBordereauEnvoi.ExemplaireDetailBordereau:=FSBordereauEnvoi.EditExomplairesBordereau.Lines.Text;
     RDetailBordereauEnvoi.ObservationDetailBordereau:=FSBordereauEnvoi.EditObservationBordereau.Lines.Text;
     RDetailBordereauEnvoi.SourceAutoImporte:=FSBordereauEnvoi.EditSourceAutoImporte.Text;
     RDetailBordereauEnvoi.PositionRegistreAutoImporte:=FSBordereauEnvoi.EditPositionRegistreAutoImporte.Text;
     write(FDetailBordereauEnvoi,RDetailBordereauEnvoi);

     CloseFile(FDetailBordereauEnvoi);

     {if(OKDetailBordereau=true)
     then Affichermessage('Détail Bordereau modifié avec succès !')
     else Affichermessage('Détail Bordereau ajouté avec succès !'); }

     AfficherBordereauEnvoi(FSBordereauEnvoi.EditPositionBordereau.Text,FSBordereauEnvoi.EditRefference.Text,FSBordereauEnvoi.EditNumBordereau.Text,FSBordereauEnvoi.EditAnneeBordereau.Text,FSBordereauEnvoi.EditRowTableauDetailBordereauEnvoi.Text);
     FSBordereauEnvoi.AfficheDetailBordereauEnvoi.Visible:=false;

end;

procedure TFSBordereauEnvoi.BitNonDetailBordereauClick(Sender: TObject);
begin
     FSBordereauEnvoi.AfficheOperationDetailBordereau.Visible:=false;
end;

procedure TFSBordereauEnvoi.TableauDetailBordereauEnvoiClick(
  Sender: TObject);
var  CapacityTeste:integer;
begin
     FSBordereauEnvoi.TableauTiersListeTiers.Visible:=false;
     FSBordereauEnvoi.AfficheAutoImporte.Visible:=false;
     FSBordereauEnvoi.AfficheOperationDetailBordereau.Visible:=false;
     FSBordereauEnvoi.AfficheDetailBordereauEnvoi.Visible:=false;

     FSBordereauEnvoi.EditDesignationBordereauTeste.Lines.Text:=FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[3,FSBordereauEnvoi.TableauDetailBordereauEnvoi.Row];
     FSBordereauEnvoi.EditExomplairesBordereauTeste.Lines.Text:=FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[4,FSBordereauEnvoi.TableauDetailBordereauEnvoi.Row];
     FSBordereauEnvoi.EditObservationBordereauTeste.Lines.Text:=FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[5,FSBordereauEnvoi.TableauDetailBordereauEnvoi.Row];

     CapacityTeste:=FSBordereauEnvoi.EditDesignationBordereauTeste.Lines.Capacity;
     if CapacityTeste<=FSBordereauEnvoi.EditExomplairesBordereauTeste.Lines.Capacity then CapacityTeste:=FSBordereauEnvoi.EditExomplairesBordereauTeste.Lines.Capacity;
     if CapacityTeste<=FSBordereauEnvoi.EditObservationBordereauTeste.Lines.Capacity then CapacityTeste:=FSBordereauEnvoi.EditObservationBordereauTeste.Lines.Capacity;

     FSBordereauEnvoi.TableauDetailBordereauEnvoi.DefaultRowHeight:=24;

     FSBordereauEnvoi.TableauDetailBordereauEnvoi.RowHeights[FSBordereauEnvoi.TableauDetailBordereauEnvoi.Row]:=MaxInt(24,CapacityTeste*20);
end;

procedure TFSBordereauEnvoi.BitOuiDetailBordereauClick(Sender: TObject);
var  OKDetailBordereau:boolean;
begin
     DeleteFDetailBordereauEnvoi(FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[1,FSBordereauEnvoi.TableauDetailBordereauEnvoi.Row],FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[2,FSBordereauEnvoi.TableauDetailBordereauEnvoi.Row],OKDetailBordereau);
     FSBordereauEnvoi.AfficheOperationDetailBordereau.Visible:=false;

     ProcListeBordereauEnvoi(FSBordereauEnvoi.TableauBordereauEnvoi,FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text,FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.Text,FSBordereauEnvoi.EditBordereauEnvoiCodeTiers.Text,'',datetostr(FSBordereauEnvoi.EditDateDebutBordereauEnvoi.Date),datetostr(FSBordereauEnvoi.EditDateFinBordereauEnvoi.Date));
     FSBordereauEnvoi.TableauBordereauEnvoi.Row:=FSBordereauEnvoi.TableauBordereauEnvoi.RowCount-1;
     AfficherBordereauEnvoi(FSBordereauEnvoi.TableauBordereauEnvoi.Cells[1,FSBordereauEnvoi.TableauBordereauEnvoi.Row],FSBordereauEnvoi.TableauBordereauEnvoi.Cells[2,FSBordereauEnvoi.TableauBordereauEnvoi.Row],FSBordereauEnvoi.TableauBordereauEnvoi.Cells[3,FSBordereauEnvoi.TableauBordereauEnvoi.Row],FSBordereauEnvoi.TableauBordereauEnvoi.Cells[4,FSBordereauEnvoi.TableauBordereauEnvoi.Row],FSBordereauEnvoi.EditRowTableauDetailBordereauEnvoi.Text);
end;

procedure TFSBordereauEnvoi.BitBtn9Click(Sender: TObject);
begin
     FSBordereauEnvoi.AfficheOperationDetailBordereau.Visible:=true;
     FSBordereauEnvoi.EditRowTableauDetailBordereauEnvoi.Text:=inttostr(FSBordereauEnvoi.TableauDetailBordereauEnvoi.Row);
     FSBordereauEnvoi.AfficheOperationDetailBordereau.Caption:='Voulez vous supprimer le Détail bordereau ?';
end;

procedure TFSBordereauEnvoi.BitBtn10Click(Sender: TObject);
begin
     FSBordereauEnvoi.AfficheDetailBordereauEnvoi.Visible:=true;
     FSBordereauEnvoi.EditRowTableauDetailBordereauEnvoi.Text:=inttostr(FSBordereauEnvoi.TableauDetailBordereauEnvoi.Row);
     FSBordereauEnvoi.AfficheDetailBordereauEnvoi.Left:=144;
     FSBordereauEnvoi.AfficheDetailBordereauEnvoi.Top:=200;
     FSBordereauEnvoi.EditPositionDetailBordereau.Text:=FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[2,FSBordereauEnvoi.TableauDetailBordereauEnvoi.Row];
     FSBordereauEnvoi.EditDesignationBordereau.Lines.Text:=FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[3,FSBordereauEnvoi.TableauDetailBordereauEnvoi.Row];
     FSBordereauEnvoi.EditExomplairesBordereau.Lines.Text:=FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[4,FSBordereauEnvoi.TableauDetailBordereauEnvoi.Row];
     FSBordereauEnvoi.EditObservationBordereau.Lines.Text:=FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[5,FSBordereauEnvoi.TableauDetailBordereauEnvoi.Row];
     FSBordereauEnvoi.EditSourceAutoImporte.Text:=FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[6,FSBordereauEnvoi.TableauDetailBordereauEnvoi.Row];
     FSBordereauEnvoi.EditPositionRegistreAutoImporte.Text:=FSBordereauEnvoi.TableauDetailBordereauEnvoi.Cells[7,FSBordereauEnvoi.TableauDetailBordereauEnvoi.Row];

     FSBordereauEnvoi.EditObservation.ItemIndex:=-1;
     FSBordereauEnvoi.IncEditEditNbrExemple.Position:=0;
     
     ListePositionEnregistres(FSBordereauEnvoi.EditSourceAutoImporte.Text,FSBordereauEnvoi.EditListePositionEnregistres);
end;

procedure TFSBordereauEnvoi.BitBtn11Click(Sender: TObject);
begin
     FSBordereauEnvoi.AfficheAutoImporte.Visible:=true;
     FSBordereauEnvoi.AfficheAutoImporte.Left:=FSBordereauEnvoi.AfficheDetailBordereauEnvoi.Left;
     FSBordereauEnvoi.AfficheAutoImporte.Top:=FSBordereauEnvoi.AfficheDetailBordereauEnvoi.Top;

     if(FSBordereauEnvoi.MouvementAfficher.Caption='')then
     begin
          FSBordereauEnvoi.EditExercice.Text:=ExerciceAnnee;
          FSBordereauEnvoi.EditChoisDateBegin.Date:=strtodate('01/01/'+FSBordereauEnvoi.EditExercice.Text);
          FSBordereauEnvoi.EditChoisDateEnd.Date:=strtodate('31/12/'+FSBordereauEnvoi.EditExercice.Text);
          FSBordereauEnvoi.EditMois.ItemIndex:=-1;
          FSBordereauEnvoi.EditChoisSource.ItemIndex:=-1;
          FSBordereauEnvoi.EditTypeMouvement.ItemIndex:=-1;
          FSBordereauEnvoi.EditMouvement.ItemIndex:=-1;
          FSBordereauEnvoi.EditSourceAutoImporte.Text:='';
          FSBordereauEnvoi.EditPositionRegistreAutoImporte.Text:='';
          FSBordereauEnvoi.EditChoisSource.SetFocus;
     end
     else FSBordereauEnvoi.TableauAutoImporte.SetFocus;
end;

procedure TFSBordereauEnvoi.EditChoisSourceKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSBordereauEnvoi.EditChoisSourceChange(Sender: TObject);
var  l:integer; TypeProces,FichierConserne,Adresse:string;
begin
     InitialisationAutoImporte;

     if(FSBordereauEnvoi.EditChoisSource.Text='Mouvement')then
     begin
          FSBordereauEnvoi.AfficheTypeMouvement.Visible:=true;
          FSBordereauEnvoi.TitreTypeMouvement.Caption:='Type Mouvement';
          FSBordereauEnvoi.TitreMouvement.Caption:='Mouvement';

          TypeProces:='Business';   FichierConserne:='FTypeMouvement';
          if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
          end;

          ChTypeMouvement:=Adresse;
          assignfile(FTypeMouvement,ChTypeMouvement);
          if FileExists(ChTypeMouvement)then
          Reset(FTypeMouvement)
          else begin Rewrite(FTypeMouvement); exit end;
          seek(FTypeMouvement,0);
          l:=0;
          FSBordereauEnvoi.EditTypeMouvement.Items.Text:='';
          while not eof(FTypeMouvement)do
          begin
               Read(FTypeMouvement,RTypeMouvement);

               FSBordereauEnvoi.EditTypeMouvement.Items.Add(RTypeMouvement.DesignationTypeMouvement);
               l:=l+1;
          end;
          CloseFile(FTypeMouvement);

          FSBordereauEnvoi.EditTypeMouvement.ItemIndex:=-1;
     end;

     if(Firstlaters(FSBordereauEnvoi.EditChoisSource.Text,longueur('Avis'))='Avis')then
     begin
          FSBordereauEnvoi.AfficheTypeMouvement.Visible:=true;

          FSBordereauEnvoi.TitreTypeMouvement.Caption:='Type Proces';
          FSBordereauEnvoi.TitreMouvement.Caption:='Fichiers';

          FSBordereauEnvoi.EditTypeMouvement.Items.Clear;
          FSBordereauEnvoi.EditTypeMouvement.Text:='';
          FSBordereauEnvoi.EditTypeMouvement.Items.Add('Business');
          FSBordereauEnvoi.EditTypeMouvement.Items.Add('Commercial');
          FSBordereauEnvoi.EditTypeMouvement.Items.Add('Paie');
          FSBordereauEnvoi.EditTypeMouvement.Items.Add('Comptabilité');
          FSBordereauEnvoi.EditTypeMouvement.Items.Add('Social');

          FSBordereauEnvoi.EditTypeMouvement.ItemIndex:=-1;

          FSBordereauEnvoi.EditMouvement.Items.Clear;
          FSBordereauEnvoi.EditMouvement.Text:='';
          FSBordereauEnvoi.EditMouvement.ItemIndex:=-1;
     end;


     ListePositionEnregistres(FSBordereauEnvoi.EditChoisSource.Text,FSBordereauEnvoi.EditListePositionEnregistres);
end;

procedure TFSBordereauEnvoi.EditMouvementChange(Sender: TObject);
var  AnneeDebut,MoisDebut,AnneeFin,MoisFin,PositionListeMouvementBegin,PositionListeMouvementEnd:integer; AdresseMouvement:string;
begin
     FSBordereauEnvoi.AfficheTypeMouvement.Visible:=false;
     FSBordereauEnvoi.MouvementAfficher.Caption:=FSBordereauEnvoi.EditMouvement.Text;

     AnneeDebut:=strtointeger(Midellaters(datetostr(FSBordereauEnvoi.EditChoisDateBegin.Date),7,10));
     MoisDebut:=strtointeger(Midellaters(datetostr(FSBordereauEnvoi.EditChoisDateBegin.Date),4,5));
     AnneeFin:=strtointeger(Midellaters(datetostr(FSBordereauEnvoi.EditChoisDateEnd.Date),7,10));
     MoisFin:=strtointeger(Midellaters(datetostr(FSBordereauEnvoi.EditChoisDateEnd.Date),4,5));

     RMouvementCopie:=ChercherMouvement(inttostr(FSBordereauEnvoi.EditTypeMouvement.ItemIndex),FSBordereauEnvoi.EditMouvement.ItemIndex,AdresseMouvement);
     PositionListeMouvementBegin:=RMouvementCopie.RegistrePositionListeMouvementParPeriode[AnneeDebut,MoisDebut].PositionListeMouvementBegin;
     PositionListeMouvementEnd:=RMouvementCopie.RegistrePositionListeMouvementParPeriode[AnneeFin,MoisFin].PositionListeMouvementEnd;

     FSBordereauEnvoi.EditPositionListeMouvementBegin.Text:=inttostr(PositionListeMouvementBegin);
     FSBordereauEnvoi.EditPositionListeMouvementEnd.Text:=inttostr(PositionListeMouvementEnd);
     AfficherListeAutoImporte(FSBordereauEnvoi.EditChoisSource.Text);
end;

procedure TFSBordereauEnvoi.EditChoisDateBeginChange(Sender: TObject);
begin
     AfficherListeAutoImporte(FSBordereauEnvoi.EditChoisSource.Text);
end;

procedure TFSBordereauEnvoi.EditChoisDateEndChange(Sender: TObject);
begin
     AfficherListeAutoImporte(FSBordereauEnvoi.EditChoisSource.Text);
end;

procedure TFSBordereauEnvoi.EditTypeMouvementChange(Sender: TObject);
var  l:integer;   TypeProces,FichierConserne,Adresse:string;
begin
     InitialisationAutoImporte;

     if(FSBordereauEnvoi.EditChoisSource.Text='Mouvement')then
     begin
           FSBordereauEnvoi.TitreMouvement.Caption:='Mouvement';

           TypeProces:='Business';   FichierConserne:='FMouvement';
           if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
           end;

           ChMouvement:=IndiqueAdresseMouvement(inttostr(FSBordereauEnvoi.EditTypeMouvement.ItemIndex),TypeProcesReseaux);

           assignfile(FMouvement,ChMouvement);
           if FileExists(ChMouvement)then
           Reset(FMouvement)
           else begin Rewrite(FMouvement); exit end;
           seek(FMouvement,0);
           l:=0;
           FSBordereauEnvoi.EditMouvement.Items.Text:='';
           while not eof(FMouvement)do
           begin
                Read(FMouvement,RMouvement);
                if(RMouvement.PositionTypeMouvement=FSBordereauEnvoi.EditTypeMouvement.ItemIndex)then
                begin
                     FSBordereauEnvoi.EditMouvement.Items.Add(RMouvement.DesignationMouvement);
               
                end
                else
                begin
                     FSBordereauEnvoi.EditMouvement.Items.Add('//////////');
                end;

           l:=l+1;
           end;
           CloseFile(FMouvement);
     end;

     if(Firstlaters(FSBordereauEnvoi.EditChoisSource.Text,longueur('Avis'))='Avis')then
     begin
          ListeTypeFichierTiersBox(FSBordereauEnvoi.EditTypeMouvement.Text,'','',FSBordereauEnvoi.EditMouvement,FSBordereauEnvoi.TitreMouvement);
     end;

     FSBordereauEnvoi.EditMouvement.ItemIndex:=-1;
end;

procedure TFSBordereauEnvoi.EditExerciceSelect(Sender: TObject);
begin
     FSBordereauEnvoi.EditChoisDateBegin.Date:=strtodate('01/01/'+FSBordereauEnvoi.EditExercice.Text);
     FSBordereauEnvoi.EditChoisDateEnd.Date:=strtodate('31/12/'+FSBordereauEnvoi.EditExercice.Text);

     AfficherListeAutoImporte(FSBordereauEnvoi.EditChoisSource.Text);
end;

procedure TFSBordereauEnvoi.EditMoisSelect(Sender: TObject);
begin
     FSBordereauEnvoi.EditChoisDateBegin.Date:=strtodate('01/'+Completezerogauche(MidelLaters(FSBordereauEnvoi.EditMois.Text,2,3),'2')+'/'+FSBordereauEnvoi.EditExercice.Text);
     FSBordereauEnvoi.EditChoisDateEnd.Date:=strtodate(Completezerogauche(inttostr(LastDay(datetostr(FSBordereauEnvoi.EditChoisDateBegin.Date))),'2')+'/'+Completezerogauche(MidelLaters(FSBordereauEnvoi.EditMois.Text,2,3),'2')+'/'+FSBordereauEnvoi.EditExercice.Text);

     AfficherListeAutoImporte(FSBordereauEnvoi.EditChoisSource.Text);
end;

procedure TFSBordereauEnvoi.TableauAutoImporteDblClick(Sender: TObject);
var  RBNumAvis,RBModePayement,RBDomiciliation,RBNumPiece,RBDateAvis,RBDateExecution:boolean;
begin
      FSBordereauEnvoi.AfficheAutoImporte.Visible:=false;
      FSBordereauEnvoi.EditSourceAutoImporte.Text:=FSBordereauEnvoi.EditChoisSource.Text;

      if(FSBordereauEnvoi.EditChoisSource.Text='Mouvement')then
      begin
           if(FSBordereauEnvoi.TableauAutoImporte.Cells[40,FSBordereauEnvoi.TableauAutoImporte.Row]<>FSBordereauEnvoi.EditPositionRegistreAutoImporte.Text)then
           begin
                if(not ExisteNumInTexte(FSBordereauEnvoi.TableauAutoImporte.Cells[40,FSBordereauEnvoi.TableauAutoImporte.Row],FSBordereauEnvoi.EditListePositionEnregistres.Text))then
                begin
                     FSBordereauEnvoi.EditPositionRegistreAutoImporte.Text:=FSBordereauEnvoi.TableauAutoImporte.Cells[40,FSBordereauEnvoi.TableauAutoImporte.Row];
                end
                else
                begin
                     showmessage('Le mouvement est déjas enregistré !');
                     Exit;
                end;
           end;

            FSBordereauEnvoi.EditDesignationBordereau.Lines.Text:='';
            FSBordereauEnvoi.EditDesignationBordereau.Lines.Add(FSBordereauEnvoi.MouvementAfficher.Caption+' N° '+
                                                                FSBordereauEnvoi.TableauAutoImporte.Cells[2,FSBordereauEnvoi.TableauAutoImporte.Row]+' du '+
                                                                FSBordereauEnvoi.TableauAutoImporte.Cells[5,FSBordereauEnvoi.TableauAutoImporte.Row]+' Montant '+
                                                                FSBordereauEnvoi.TableauAutoImporte.Cells[11,FSBordereauEnvoi.TableauAutoImporte.Row]+' {'+
                                                                FSBordereauEnvoi.TableauAutoImporte.Cells[10,FSBordereauEnvoi.TableauAutoImporte.Row]+'}');

            RBNumAvis:=false;
            RBModePayement:=true;
            RBDomiciliation:=true;
            RBNumPiece:=true;
            RBDateAvis:=true;
            RBDateExecution:=false;
            ChercherAvis(FSBordereauEnvoi.TableauAutoImporte.Cells[31,FSBordereauEnvoi.TableauAutoImporte.Row],'','','',RBNumAvis,RBModePayement,RBDomiciliation,RBNumPiece,RBDateAvis,RBDateExecution,FSBordereauEnvoi.TableauListeAvis,FSBordereauEnvoi.ListeNumAvisTrouver,FSBordereauEnvoi.ListeModePaiementTrouver,FSBordereauEnvoi.ListeDomiciliationAvisTrouver,FSBordereauEnvoi.ListeDomiciliationPieceTrouver,FSBordereauEnvoi.ListeNumPieceTrouver,FSBordereauEnvoi.ListeDateTrouver,FSBordereauEnvoi.MemoLiseAvisTrouver);

            if(FSBordereauEnvoi.MemoLiseAvisTrouver.Lines.Text<>'')
            then FSBordereauEnvoi.EditDesignationBordereau.Lines.Add('{'+FSBordereauEnvoi.MemoLiseAvisTrouver.Lines.Text+'}')
            else
            if((FSBordereauEnvoi.TableauAutoImporte.Cells[27,FSBordereauEnvoi.TableauAutoImporte.Row]<>'')
            or (FSBordereauEnvoi.TableauAutoImporte.Cells[29,FSBordereauEnvoi.TableauAutoImporte.Row]<>'')
            or (FSBordereauEnvoi.TableauAutoImporte.Cells[30,FSBordereauEnvoi.TableauAutoImporte.Row]<>''))
            then FSBordereauEnvoi.EditDesignationBordereau.Lines.Add('{'+FSBordereauEnvoi.TableauAutoImporte.Cells[27,FSBordereauEnvoi.TableauAutoImporte.Row]+' '+FSBordereauEnvoi.TableauAutoImporte.Cells[29,FSBordereauEnvoi.TableauAutoImporte.Row]+' '+FSBordereauEnvoi.TableauAutoImporte.Cells[30,FSBordereauEnvoi.TableauAutoImporte.Row]+'}')
      end
      else
      if(FSBordereauEnvoi.EditChoisSource.Text='Prélèvement')then
      begin
           FSBordereauEnvoi.EditPositionRegistreAutoImporte.Text:=FSBordereauEnvoi.TableauAutoImporte.Cells[40,FSBordereauEnvoi.TableauAutoImporte.Row];
      end
      else
      if(FSBordereauEnvoi.EditChoisSource.Text='Situation')then
      begin
           FSBordereauEnvoi.EditPositionRegistreAutoImporte.Text:=FSBordereauEnvoi.TableauAutoImporte.Cells[40,FSBordereauEnvoi.TableauAutoImporte.Row];
      end
      else
      if(Firstlaters(FSBordereauEnvoi.EditChoisSource.Text,longueur('Avis'))='Avis')then
      begin
           FSBordereauEnvoi.EditPositionRegistreAutoImporte.Text:=FSBordereauEnvoi.TableauAutoImporte.Cells[40,FSBordereauEnvoi.TableauAutoImporte.Row];

           FSBordereauEnvoi.EditDesignationBordereau.Lines.Text:='';
           FSBordereauEnvoi.EditDesignationBordereau.Lines.Add(FSBordereauEnvoi.TableauAutoImporte.Cells[3,FSBordereauEnvoi.TableauAutoImporte.Row]+' '+
                                                                FSBordereauEnvoi.TableauAutoImporte.Cells[4,FSBordereauEnvoi.TableauAutoImporte.Row]+' N° '+
                                                                FSBordereauEnvoi.TableauAutoImporte.Cells[5,FSBordereauEnvoi.TableauAutoImporte.Row]+' Montant '+
                                                                FSBordereauEnvoi.TableauAutoImporte.Cells[6,FSBordereauEnvoi.TableauAutoImporte.Row]+' {'+
                                                                FSBordereauEnvoi.TableauAutoImporte.Cells[11,FSBordereauEnvoi.TableauAutoImporte.Row]+' '+FSBordereauEnvoi.TableauAutoImporte.Cells[12,FSBordereauEnvoi.TableauAutoImporte.Row]+'}');
      end;


end;

Procedure ListePositionEnregistres(SourceAutoImporte:string; EditListePositionEnregistres:TEdit);
begin
     EditListePositionEnregistres.Text:='';

     OpenFParc(RParc);
     ChDetailBordereauEnvoi:=RParc.Parcours+'\'+Exercice+'FDetailBordereauEnvoi';
     assignfile(FDetailBordereauEnvoi,ChDetailBordereauEnvoi);
     if FileExists(ChDetailBordereauEnvoi)then
     Reset(FDetailBordereauEnvoi)
     else Rewrite(FDetailBordereauEnvoi);
     Seek(FDetailBordereauEnvoi,0);
     while not eof(FDetailBordereauEnvoi)do
     begin
          read(FDetailBordereauEnvoi,RDetailBordereauEnvoi);

          if(RDetailBordereauEnvoi.SourceAutoImporte=SourceAutoImporte)then
          begin
               if(EditListePositionEnregistres.Text='')
               then EditListePositionEnregistres.Text:=RDetailBordereauEnvoi.PositionRegistreAutoImporte
               else EditListePositionEnregistres.Text:=EditListePositionEnregistres.Text+';'+RDetailBordereauEnvoi.PositionRegistreAutoImporte;
          end;

     end;
     CloseFile(FDetailBordereauEnvoi);
end;

procedure TFSBordereauEnvoi.TableauTiersListeTiersExit(Sender: TObject);
begin
     FSBordereauEnvoi.TableauTiersListeTiers.Visible:=false;
end;

procedure TFSBordereauEnvoi.BitBtn12Click(Sender: TObject);
begin
     FSBordereauEnvoi.AfficheAutoImporte.Visible:=false;
end;

procedure TFSBordereauEnvoi.AfficheAutoImporteMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSBordereauEnvoi.AfficheDetailBordereauEnvoiMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSBordereauEnvoi.TableauTiersListeTiersMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSBordereauEnvoi.AfficheOperationDetailBordereauMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

Procedure InitialisationAutoImporte;
begin
     FSBordereauEnvoi.TableauAutoImporte.RowCount:=2;
     FSBordereauEnvoi.TableauAutoImporte.Rows[1].Text:='';
end;

procedure TFSBordereauEnvoi.FormShow(Sender: TObject);
begin
     FSFicheSaisie.EditExecutionProcAfficheListeMouvementPointeur.Text:='0';

     FSBordereauEnvoi.EditChoisSource.Items.Text:='';
     FSBordereauEnvoi.EditChoisSource.Items.Add('Mouvement');
     FSBordereauEnvoi.EditChoisSource.Items.Add('Prélèvement');
     FSBordereauEnvoi.EditChoisSource.Items.Add('Situation');

     if not(FunctionAdresseProces('Business','FBaseAvis','',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+'FBaseAvis '+'recherché !');
     end;

     ChBaseAvisRecherche:=Adresse;
     assignfile(FBaseAvisRecherche,ChBaseAvisRecherche);
     if FileExists(ChBaseAvisRecherche)then
     begin
          try
          Reset(FBaseAvisRecherche);
          Seek(FBaseAvisRecherche,0);
          while not eof(FBaseAvisRecherche)do
          begin
               read(FBaseAvisRecherche,RBaseAvisRecherche);  Application.ProcessMessages;

               FSBordereauEnvoi.EditChoisSource.Items.Add(Lastlaters(RBaseAvisRecherche.DesignationBaseAvis,longueur(RBaseAvisRecherche.DesignationBaseAvis)-1));
          end;
          Finally
          CloseFile(FBaseAvisRecherche);
          end;
     end;

     FSBordereauEnvoi.EditChoisSource.ItemIndex:=-1;
end;

Procedure AfficherListeAutoImporte(Source:string);
begin
     if(Source='Mouvement')then
     begin
          ProcAfficheListeMouvementPointeur(FSBordereauEnvoi.TableauAutoImporte,inttostr(FSBordereauEnvoi.EditTypeMouvement.ItemIndex),inttostr(FSBordereauEnvoi.EditMouvement.ItemIndex),FSBordereauEnvoi.EditPositionListeMouvementBegin.Text,FSBordereauEnvoi.EditPositionListeMouvementEnd.Text,datetostr(FSBordereauEnvoi.EditChoisDateBegin.Date),datetostr(FSBordereauEnvoi.EditChoisDateEnd.Date),'','','','','','','','',false,false,true,true,true,true,'');
     end;

     if(Source='Prélèvement')then
     begin

     end;
     
     if(Source='Situation')then
     begin

     end;

     if(Firstlaters(Source,longueur('Avis'))='Avis')then
     begin
          ProcListeAvisAutoImporte(FSBordereauEnvoi.TableauAutoImporte,'F'+Source,FSBordereauEnvoi.EditTypeMouvement.Text,FSBordereauEnvoi.EditMouvement.Text,datetostr(FSBordereauEnvoi.EditChoisDateBegin.Date),datetostr(FSBordereauEnvoi.EditChoisDateEnd.Date));
     end;
end;

Procedure ProcListeAvisAutoImporte(TableauListeAvis:TStringGrid; BaseAvis,TypeProcesTiers,FichierConserneTiers,DateDebut,DateFin:string);
var  R:integer;  OKAvis:boolean;  FichierConserneAvis,TypeProcesAvis,AdresseAvis:string;
begin
     TableauListeAvis.ColCount:=13;
     TableauListeAvis.Cols[0].Text:='Or';
     TableauListeAvis.Cols[1].Text:='Num';
     TableauListeAvis.Cols[2].Text:='Date';
     TableauListeAvis.Cols[3].Text:='Mode Paiement';
     TableauListeAvis.Cols[4].Text:='Domiciliation';
     TableauListeAvis.Cols[5].Text:='Num Pièce';
     TableauListeAvis.Cols[6].Text:='Montant';
     TableauListeAvis.Cols[7].Text:='     Nature     ';
     TableauListeAvis.Cols[8].Text:='TypeProces';
     TableauListeAvis.Cols[9].Text:='AvisConcerneTiers';
     TableauListeAvis.Cols[10].Text:='Code Tiers';
     TableauListeAvis.Cols[11].Text:='Nom Tiers';
     TableauListeAvis.Cols[12].Text:='Prénom Tiers';

     TableauListeAvis.RowCount:=2;
     TableauListeAvis.Rows[1].Text:='';
     R:=0;

     if not(FunctionAdresseProces('Business','FBaseAvis','',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+'FBaseAvis '+'recherché !');
     end;

     ChBaseAvisRecherche:=Adresse;
     assignfile(FBaseAvisRecherche,ChBaseAvisRecherche);
     if FileExists(ChBaseAvisRecherche)then
     begin
          try
          Reset(FBaseAvisRecherche);
          Seek(FBaseAvisRecherche,0);
          while not eof(FBaseAvisRecherche)do
          begin
               read(FBaseAvisRecherche,RBaseAvisRecherche);  Application.ProcessMessages;

               FichierConserneAvis:=RBaseAvisRecherche.DesignationBaseAvis;

               if(FunctionFichierInclu(BaseAvis,FichierConserneAvis))then
               begin
                    TypeProcesAvis:='Business';
                    if not(FunctionAdresseProces(TypeProcesAvis,FichierConserneAvis,'',AdresseAvis,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                    begin
                         AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserneAvis+' recherché !');
                    end;

                    ChAvis:=AdresseAvis;
                    assignfile(FAvis,ChAvis);
                    try
                    if FileExists(ChAvis)then
                    Reset(FAvis)
                    else begin affichermessage('Attention ! {'+ChAvis+'} n''existe pas !'); exit; end;//Rewrite(FAvis);
                    Seek(FAvis,0);
                    while not eof(FAvis)do
                    begin
                         read(FAvis,RAvis);

                         OKAvis:=RAvis.ValiditeAvis;

                         if(OKAvis=true)then
                         begin
                              if(RAvis.TypeProces=TypeProcesTiers)
                              then OKAvis:=true
                              else OKAvis:=false;
                         end;

                         if(OKAvis=true)then
                         begin
                              if(RAvis.AvisConcerneTiers=FichierConserneTiers)
                              then OKAvis:=true
                              else OKAvis:=false;
                         end;

                         if(OKAvis=true)then
                         begin
                              if (strtodate(RAvis.DateAvis)>=strtodate(DateDebut))
                              and(strtodate(RAvis.DateAvis)<=strtodate(DateFin))
                              then OKAvis:=true
                              else OKAvis:=false;
                         end;

                         if(OKAvis=true)then
                         begin
                              R:=R+1;
                              TableauListeAvis.Rows[R].Text:='';
                              TableauListeAvis.Cells[1,R]:=inttostr(RAvis.NumAvis);
                              TableauListeAvis.Cells[2,R]:=RAvis.DateAvis;
                              TableauListeAvis.Cells[3,R]:=RAvis.ModePaiement;
                              TableauListeAvis.Cells[4,R]:=RAvis.DomiciliationPiece;
                              TableauListeAvis.Cells[5,R]:=RAvis.NumPiece;
                              TableauListeAvis.Cells[6,R]:=vergule(floattostr(RAvis.Montant),'2','C','');
                              TableauListeAvis.Cells[7,R]:=RAvis.NatureDepense;
                              TableauListeAvis.Cells[8,R]:=RAvis.TypeProces;
                              TableauListeAvis.Cells[9,R]:=RAvis.AvisConcerneTiers;
                              TableauListeAvis.Cells[10,R]:=RAvis.CodeTiers;
                              TableauListeAvis.Cells[11,R]:='';
                              TableauListeAvis.Cells[12,R]:='';
                         end;
                    end;
                    finally
                    CloseFile(FAvis);
                    end;
               end;
          end;
          finally
          closefile(FBaseAvisRecherche);
          end;
     end;

     if(R>0)then TableauListeAvis.RowCount:=R+1
            else TableauListeAvis.RowCount:=2;

     IndiquerNomPrenomMultiTiers(TableauListeAvis,8,9,10,'11','12','','','','','','');
     
     AjusterColWidth(TableauListeAvis,'','');
end;

procedure TFSBordereauEnvoi.EditExerciceBordereauEnvoiSelect(
  Sender: TObject);
begin
     FSBordereauEnvoi.EditDateDebutBordereauEnvoi.Date:=strtodate('01/01/'+FSBordereauEnvoi.EditExerciceBordereauEnvoi.Text);
     FSBordereauEnvoi.EditDateFinBordereauEnvoi.Date:=strtodate('31/12/'+FSBordereauEnvoi.EditExerciceBordereauEnvoi.Text);
     FSBordereauEnvoi.EditMoisBordereauEnvoi.ItemIndex:=-1;
     FSBordereauEnvoi.EditDateDebutBordereauEnvoi.SetFocus;

     FSBordereauEnvoi.AfficherListeBordereauEnvoi.Visible:=true;
end;

procedure TFSBordereauEnvoi.EditMoisBordereauEnvoiSelect(Sender: TObject);
begin
     FSBordereauEnvoi.EditDateDebutBordereauEnvoi.Date:=strtodate('01/'+Completezerogauche(MidelLaters(FSBordereauEnvoi.EditMoisBordereauEnvoi.Text,2,3),'2')+'/'+FSBordereauEnvoi.EditExerciceBordereauEnvoi.Text);
     FSBordereauEnvoi.EditDateFinBordereauEnvoi.Date:=strtodate(Completezerogauche(inttostr(LastDay(datetostr(FSBordereauEnvoi.EditDateDebutBordereauEnvoi.Date))),'2')+'/'+Completezerogauche(MidelLaters(FSBordereauEnvoi.EditMoisBordereauEnvoi.Text,2,3),'2')+'/'+FSBordereauEnvoi.EditExerciceBordereauEnvoi.Text);

     FSBordereauEnvoi.AfficherListeBordereauEnvoi.Visible:=true;
end;

procedure TFSBordereauEnvoi.EditDateDebutBordereauEnvoiChange(
  Sender: TObject);
begin
     FSBordereauEnvoi.AfficherListeBordereauEnvoi.Visible:=true;
end;

procedure TFSBordereauEnvoi.EditDateFinBordereauEnvoiChange(
  Sender: TObject);
begin
     FSBordereauEnvoi.AfficherListeBordereauEnvoi.Visible:=true;
end;

procedure TFSBordereauEnvoi.BitListeBordereauEnvoiClick(Sender: TObject);
begin
     ProcListeBordereauEnvoi(FSBordereauEnvoi.TableauBordereauEnvoi,FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text,FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.Text,FSBordereauEnvoi.EditBordereauEnvoiCodeTiers.Text,'',datetostr(FSBordereauEnvoi.EditDateDebutBordereauEnvoi.Date),datetostr(FSBordereauEnvoi.EditDateFinBordereauEnvoi.Date));
     FSBordereauEnvoi.AfficherListeBordereauEnvoi.Visible:=false;
end;

procedure TFSBordereauEnvoi.EditBordereauEnvoiTypeProcesSelect(
  Sender: TObject);
begin
     FSBordereauEnvoi.AfficherListeBordereauEnvoi.Visible:=true;
     ListeTypeFichierTiersBox(FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text,'','',FSBordereauEnvoi.EditBordereauEnvoiFichierConserne,FSBordereauEnvoi.TitreEditBordereauEnvoiFichierConserne);
     FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Visible:=true;
     if(FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text<>'Tous')then ListeTiers(FSBordereauEnvoi.TableauBordereauEnvoiListeTiers,FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text,FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.Text,'','','',true);
end;

procedure TFSBordereauEnvoi.EditBordereauEnvoiFichierConserneSelect(
  Sender: TObject);
begin
     FSBordereauEnvoi.AfficherListeBordereauEnvoi.Visible:=true;
     FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Visible:=true;
     ListeTiers(FSBordereauEnvoi.TableauBordereauEnvoiListeTiers,FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text,FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.Text,'','','',true);
end;

procedure TFSBordereauEnvoi.EditBordereauEnvoiNomTiersEnter(
  Sender: TObject);
begin
     FSBordereauEnvoi.AfficherListeBordereauEnvoi.Visible:=true;
     FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Visible:=true;
     ListeTiers(FSBordereauEnvoi.TableauBordereauEnvoiListeTiers,FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text,FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.Text,'','','',true);
end;

procedure TFSBordereauEnvoi.EditBordereauEnvoiNomTiersKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.SetFocus;
end;

end;

procedure TFSBordereauEnvoi.EditBordereauEnvoiNomTiersKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     ListeTiers(FSBordereauEnvoi.TableauBordereauEnvoiListeTiers,FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text,FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.Text,'','',FSBordereauEnvoi.EditBordereauEnvoiNomTiers.Text,true);
end;

procedure TFSBordereauEnvoi.TableauBordereauEnvoiListeTiersKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key in[VK_RETURN]then
begin
    if(FSBordereauEnvoi.EditTiersTypeProces.Text='Comptabilité')then
     begin
          FSBordereauEnvoi.EditBordereauEnvoiCodeTiers.Text:=FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Cells[1,FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Row];
          FSBordereauEnvoi.EditBordereauEnvoiNomTiers.Text:=FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Cells[2,FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Row];
     end
     else
     if(FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text='Social')then
     begin
          FSBordereauEnvoi.EditBordereauEnvoiCodeTiers.Text:=FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Cells[1,FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Row];
          FSBordereauEnvoi.EditBordereauEnvoiNomTiers.Text:=FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Cells[4,FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Row]+' '+FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Cells[5,FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Row];
     end
     else
     if(FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text='Commercial')or(FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text='Business')then
     begin
          if(FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.Text<>'FProjetFinance')then
          begin
               FSBordereauEnvoi.EditBordereauEnvoiCodeTiers.Text:=FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Cells[1,FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Row];
               FSBordereauEnvoi.EditBordereauEnvoiNomTiers.Text:=FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Cells[2,FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Row];
          end
          else
          begin
               FSBordereauEnvoi.EditBordereauEnvoiCodeTiers.Text:=FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Cells[1,FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Row];
               FSBordereauEnvoi.EditBordereauEnvoiNomTiers.Text:=FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Cells[2,FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Row];
          end;
     end
     else
     if(FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text='Paie')then
     begin
          FSBordereauEnvoi.EditBordereauEnvoiCodeTiers.Text:=FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Cells[1,FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Row];
          FSBordereauEnvoi.EditBordereauEnvoiNomTiers.Text:=FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Cells[2,FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Row];
     end
     else
     //if(FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text='')then
     begin
          FSBordereauEnvoi.EditBordereauEnvoiCodeTiers.Text:=FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Cells[1,FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Row];
          FSBordereauEnvoi.EditBordereauEnvoiNomTiers.Text:=FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Cells[2,FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Row];
     end;

     FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Visible:=false;
end;
end;

procedure TFSBordereauEnvoi.TableauBordereauEnvoiListeTiersExit(
  Sender: TObject);
begin
FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Visible:=false;
end;

procedure TFSBordereauEnvoi.TableauBordereauEnvoiListeTiersMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
     DeplacerObjet(Sender);
end;

procedure TFSBordereauEnvoi.BitBtn13Click(Sender: TObject);
begin
     FSBordereauEnvoi.AfficherListeBordereauEnvoi.Visible:=true;
     FSBordereauEnvoi.TableauBordereauEnvoiListeTiers.Visible:=false;
     FSBordereauEnvoi.EditBordereauEnvoiCodeTiers.Text:='';
     FSBordereauEnvoi.EditBordereauEnvoiNomTiers.Text:='';
end;

procedure TFSBordereauEnvoi.AfficheBordereauEnvoiOptionPrintClick(
  Sender: TObject);
begin
if(FSBordereauEnvoi.AfficheBordereauEnvoiOptionPrint.Height=25)
then FSBordereauEnvoi.AfficheBordereauEnvoiOptionPrint.Height:=217
else FSBordereauEnvoi.AfficheBordereauEnvoiOptionPrint.Height:=25;
end;

procedure TFSBordereauEnvoi.BitBtn18Click(Sender: TObject);
var  R:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;
begin
     FSBordereauEnvoi.AfficheBordereauEnvoiOptionPrint.Height:=25;

     FSBordereauEnvoi.TitreEtat.Lines.Text:='';
     FSBordereauEnvoi.TitreEtat.Lines.Add('Liste Bordereaux d''envoi');
     if(FSBordereauEnvoi.EditBordereauEnvoiCodeTiers.Text<>'')then
     FSBordereauEnvoi.TitreEtat.Lines.Add(Lastlaters(FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.Text,longueur(FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.Text)-1)+': '+FSBordereauEnvoi.EditBordereauEnvoiNomTiers.Text);
     FSBordereauEnvoi.TitreEtat.Lines.Add('Période: du '+datetostr(FSBordereauEnvoi.EditDateDebutBordereauEnvoi.Date)+' au '+datetostr(FSBordereauEnvoi.EditDateFinBordereauEnvoi.Date));

     TitreEtat:=FSBordereauEnvoi.TitreEtat.Lines.Text;

     GrasARow:='0';
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0';
     RightARow:='';
     RightACol:='';

     OptionsImpression(FSBordereauEnvoi.TableauBordereauEnvoi,'Center',0,1,TitreEtat,FSBordereauEnvoi.RBBordereauEnvoiAjustement.Checked,FSBordereauEnvoi.RBBordereauEnvoiOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSBordereauEnvoi.IncEditEditNbrExempleClick(Sender: TObject;
  Button: TUDBtnType);
begin
     FSBordereauEnvoi.EditExomplairesBordereau.Lines.Text:=Completezerogauche(FSBordereauEnvoi.EditEditNbrExemple.Text,'2');
end;

procedure TFSBordereauEnvoi.EditObservationChange(Sender: TObject);
begin
     FSBordereauEnvoi.EditObservationBordereau.Lines.Text:=FSBordereauEnvoi.EditObservation.Text;
end;

procedure TFSBordereauEnvoi.RBListeDetailBordereauEnvoiClick(
  Sender: TObject);
begin
     FSBordereauEnvoi.AfficherListeBordereauEnvoi.Visible:=true;
end;

procedure TFSBordereauEnvoi.IncrimenteEditPositionBordereauClick(Sender: TObject;
  Button: TUDBtnType);
begin
     AfficherBordereauEnvoi(FSBordereauEnvoi.EditPositionBordereau.Text,'','','',FSBordereauEnvoi.EditRowTableauDetailBordereauEnvoi.Text);
end;

procedure TFSBordereauEnvoi.TableauBordereauEnvoiContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     AjusterColWidth(TableauBordereauEnvoi,'','');
end;

Procedure MiseAJourPositionBordereauEnvoi;
var  i:integer;
begin
     OpenFParc(RParc);
     ChBordereauEnvoi:=RParc.Parcours+'\'+Exercice+'FBordereauEnvoi';
     assignfile(FBordereauEnvoi,ChBordereauEnvoi);
     if FileExists(ChBordereauEnvoi)then
     begin
          Reset(FBordereauEnvoi);
          Seek(FBordereauEnvoi,0);
          i:=0;
          while not eof(FBordereauEnvoi)do
          begin
               read(FBordereauEnvoi,RBordereauEnvoi);
               RBordereauEnvoi.PositionBordereau:=i;
               Seek(FBordereauEnvoi,i);
               Write(FBordereauEnvoi,RBordereauEnvoi);
          i:=i+1;
          end;
          CloseFile(FBordereauEnvoi);
     end;

     ProcListeBordereauEnvoi(FSBordereauEnvoi.TableauBordereauEnvoi,FSBordereauEnvoi.EditBordereauEnvoiTypeProces.Text,FSBordereauEnvoi.EditBordereauEnvoiFichierConserne.Text,FSBordereauEnvoi.EditBordereauEnvoiCodeTiers.Text,'',datetostr(FSBordereauEnvoi.EditDateDebutBordereauEnvoi.Date),datetostr(FSBordereauEnvoi.EditDateFinBordereauEnvoi.Date));
end;

procedure TFSBordereauEnvoi.BitBtn14Click(Sender: TObject);
begin
     MiseAJourPositionBordereauEnvoi;
end;

end.
