unit UnitFSFormuleComposition;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, Buttons, ComCtrls;

type
  TFSFormuleComposition = class(TForm)
    PagePrincipale: TPageControl;
    PageFormulesCompositions: TTabSheet;
    PageDetailFormuleComposition: TTabSheet;
    AfficheFormule: TPanel;
    CadreBouton: TBevel;
    Bevel3: TBevel;
    AfficheInfoArticle: TPanel;
    Bevel13: TBevel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    EditFCodeProd: TEdit;
    EditFDesignProd: TEdit;
    EditFUMProd: TEdit;
    TableauFormuleComposition: TStringGrid;
    AfficheOptionsFormule: TControlBar;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    BitBtn11: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn12: TBitBtn;
    EditListeComptesRechrcher: TEdit;
    BitTruncateFormuleComposition: TBitBtn;
    AfficheSFamilleMatFormule: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    BitFermerAfficheSFamilleMatFormule: TBitBtn;
    TableauMatFormule: TStringGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    TableauSFamilleMatFormule: TStringGrid;
    EditTypePCN: TEdit;
    IncrimenteEditTypePCN: TUpDown;
    AfficheComposition: TPanel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label43: TLabel;
    Label56: TLabel;
    EditCoefficientPerte: TEdit;
    EditFCodeMatModif: TEdit;
    EditFCoefficient: TEdit;
    EditFCodeMat: TEdit;
    EditFDesignMat: TEdit;
    EditFUMMat: TEdit;
    BitFormulation: TBitBtn;
    BitBtn9: TBitBtn;
    Memo1: TMemo;
    EditFNbrProd: TMemo;
    EditFNbrMat: TMemo;
    EditCoefficientPerteM: TMemo;
    TexteProduit: TMemo;
    TexteMatiere: TMemo;
    TextePerte: TMemo;
    TableauDetailOperationFormuleComposition: TStringGrid;
    TableauListeOperationFormuleComposition: TStringGrid;
    EditTypeStock: TComboBox;
    EditExtention: TEdit;
    EditExtentionCodeProduit: TEdit;
    RadioGroup1: TRadioGroup;
    RBEntreeStock: TRadioButton;
    RBSortieStock: TRadioButton;
    Label2: TLabel;
    EditFRefMat: TEdit;
    EditRowEditing: TEdit;
    RBConfirmeFormuleCompositionApplique: TCheckBox;
    RBRegularisationEntreeStock: TRadioButton;
    RBRegularisationSortieStock: TRadioButton;
    BitBtn2: TBitBtn;
    Bevel4: TBevel;
    BitTruncateOperationFC: TBitBtn;
    EditCodeTrancateOperationFC: TEdit;
    Bevel5: TBevel;
    EditCodeTrancateFormuleComposition: TEdit;
    Bevel6: TBevel;
    Bevel7: TBevel;
    AfficheOptionPrint: TPanel;
    Bevel30: TBevel;
    RadioGroup4: TRadioGroup;
    StaticText1: TStaticText;
    RBOrientationPapier: TComboBox;
    RBAjustement: TCheckBox;
    BitBtn18: TBitBtn;
    TableauTitreDetailOperationFormuleComposition: TStringGrid;
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure TableauFormuleCompositionClick(Sender: TObject);
    procedure TableauFormuleCompositionContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TableauFormuleCompositionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauFormuleCompositionKeyPress(Sender: TObject; var Key: Char);
    procedure StaticText8Click(Sender: TObject);
    procedure StaticText9Click(Sender: TObject);
    procedure StaticText10Click(Sender: TObject);
    procedure StaticText11Click(Sender: TObject);
    procedure StaticText12Click(Sender: TObject);
    procedure AfficheOptionsFormuleClick(Sender: TObject);
    procedure StaticText8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StaticText9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StaticText10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn9Click(Sender: TObject);
    procedure EditFNbrProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditFNbrProdKeyPress(Sender: TObject; var Key: Char);
    procedure EditFNbrProdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditFNbrMatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditFNbrMatKeyPress(Sender: TObject; var Key: Char);
    procedure EditFNbrMatKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCoefficientPerteMKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCoefficientPerteMKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditCoefficientPerteMKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitFormulationClick(Sender: TObject);
    procedure BitFermerAfficheSFamilleMatFormuleClick(Sender: TObject);
    procedure TableauSFamilleMatFormuleClick(Sender: TObject);
    procedure TableauSFamilleMatFormuleKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauMatFormuleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTypeStockChange(Sender: TObject);
    procedure EditTypeStockKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IncrimenteEditTypePCNClick(Sender: TObject;
      Button: TUDBtnType);
    procedure TableauSFamilleMatFormuleEnter(Sender: TObject);
    procedure BitTruncateFormuleCompositionClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableauListeOperationFormuleCompositionClick(
      Sender: TObject);
    procedure BitTruncateOperationFCClick(Sender: TObject);
    procedure EditCodeTrancateOperationFCKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodeTrancateFormuleCompositionKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AfficheOptionPrintClick(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure TableauDetailOperationFormuleCompositionClick(
      Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSFormuleComposition: TFSFormuleComposition;     

  Procedure ProcAfficheFormuleComposition(Extention,CodeStock,DesignationStock,UmStock:string);
  Procedure PreparationFormuleComposition(PositionTM,PositionM,OrdreMouvement,NumMouvement,Mouvement,DateMouvement,CodeTiers,Tiers,NatureOperation:string; var RowEditing:integer);
  Procedure ListeOperationFormuleComposition(TableauListeOperationFormuleComposition:TStringGrid; PositionOperationFCSelect:string);
  Procedure ListeDetailOperationFormuleComposition(TableauDetailListeOperationFormuleComposition:TStringGrid; PositionOperationFC:string);
implementation

Uses UnitInitialisation, UnitSuppression, UnitFSMenuPrincipal;

var

RParc:RInstalle;
RParcCopie:RInstalle;
FParc:FInstalle;
ParcInstalle:string250;

TStock:TStocks;
RStock:RStocks;
FStock:FStocks;
ChStock:string250;

{$R *.dfm}

procedure TFSFormuleComposition.BitBtn10Click(Sender: TObject);
begin
FSFormuleComposition.EditFCodeProd.Text:='';
FSFormuleComposition.EditFDesignProd.Text:='';
FSFormuleComposition.EditFUMProd.Text:='';
FSFormuleComposition.Close;
end;

procedure TFSFormuleComposition.BitBtn11Click(Sender: TObject);
begin
     FSFormuleComposition.AfficheSFamilleMatFormule.Visible:=true;
     ListePlanComptable(FSFormuleComposition.TableauSFamilleMatFormule,FSFormuleComposition.IncrimenteEditTypePCN.Position,FSFormuleComposition.EditListeComptesRechrcher.Text,'',FSFormuleComposition.EditExtention.Text);
     FSFormuleComposition.TableauSFamilleMatFormule.SetFocus;
     FSFormuleComposition.TableauSFamilleMatFormule.Row:=1;
end;

procedure TFSFormuleComposition.BitBtn12Click(Sender: TObject);
var OK:boolean;
begin
OpenFParc(RParc);
ChStock:=RParc.Parcours+'\'+Exercice+FSFormuleComposition.EditTypeStock.Text;
assignfile(FStock,ChStock);
if FileExists(ChStock)then
Reset(FStock)
else Rewrite(FStock);
Seek(FStock,0);
OK:=false;
while not eof(FStock)and(OK=false)do
begin
     read(FStock,RStock);

     if(ExisteFirstLatersNuminTexte(RStock.Code,FSFormuleComposition.EditListeComptesRechrcher.Text)=true)
     and(Lastlaters(RStock.Code,Longueur(FSFormuleComposition.EditFCodeProd.Text)-2)=Lastlaters(FSFormuleComposition.EditFCodeProd.Text,Longueur(FSFormuleComposition.EditFCodeProd.Text)-2))then
     begin
          OK:=true;
          FSFormuleComposition.AfficheComposition.Visible:=true;
          if(FSFormuleComposition.BitFormulation.Caption='.')
          then
          begin
          FSFormuleComposition.BitFormulation.Kind:=bkAll;
          FSFormuleComposition.BitFormulation.Caption:='Valider';
          end;
          FSFormuleComposition.EditFCodeMat.Text:=RStock.Code;
          FSFormuleComposition.EditFDesignMat.Text:=RStock.Design+' '+RStock.Ref;
          FSFormuleComposition.EditFUMMat.Text:=RStock.UM;

          FSFormuleComposition.TexteProduit.Text:=FSFormuleComposition.EditFUMProd.Text+' de '+FSFormuleComposition.EditFDesignProd.Text;
          FSFormuleComposition.TexteMatiere.Text:=FSFormuleComposition.EditFUMMat.Text+' de '+FSFormuleComposition.EditFDesignMat.Text;
          FSFormuleComposition.TextePerte.Text:='% de Perte en '+FSFormuleComposition.EditFDesignMat.Text+' dans '+' 1 '+FSFormuleComposition.EditFUMProd.Text+' de '+FSFormuleComposition.EditFDesignProd.Text;

          FSFormuleComposition.EditFNbrProd.Text:='1';
          FSFormuleComposition.EditFNbrMat.Text:='1';
          FSFormuleComposition.EditFCoefficient.Text:='1';
          FSFormuleComposition.EditCoefficientPerte.Text:='0';
          FSFormuleComposition.EditCoefficientPerteM.Text:='0';
          FSFormuleComposition.EditCoefficientPerteM.SetFocus;
     end;
end;
CloseFile(FStock);

if(OK=false)then
begin
     showmessage('Le produit sélectionné na pas de correspondance en matière première !');
end;

end;

procedure TFSFormuleComposition.TableauFormuleCompositionClick(Sender: TObject);
begin
FSFormuleComposition.AfficheOptionsFormule.Visible:=false;
end;

procedure TFSFormuleComposition.TableauFormuleCompositionContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
FSFormuleComposition.AfficheOptionsFormule.Visible:=true;

if MousePos.X<(FSFormuleComposition.TableauFormuleComposition.Width-FSFormuleComposition.AfficheOptionsFormule.Width)
then FSFormuleComposition.AfficheOptionsFormule.Left:=(MousePos.X+FSFormuleComposition.TableauFormuleComposition.Left)
else FSFormuleComposition.AfficheOptionsFormule.Left:=(FSFormuleComposition.TableauFormuleComposition.Width-
     FSFormuleComposition.AfficheOptionsFormule.Width+FSFormuleComposition.TableauFormuleComposition.Left);

if MousePos.Y<(FSFormuleComposition.TableauFormuleComposition.Height-FSFormuleComposition.AfficheOptionsFormule.Height)
then FSFormuleComposition.AfficheOptionsFormule.Top:=(MousePos.Y+FSFormuleComposition.TableauFormuleComposition.Top)
else FSFormuleComposition.AfficheOptionsFormule.Top:=(FSFormuleComposition.TableauFormuleComposition.Height-
     FSFormuleComposition.AfficheOptionsFormule.Height)+FSFormuleComposition.TableauFormuleComposition.Top;
end;

procedure TFSFormuleComposition.TableauFormuleCompositionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  R,k:integer;
begin

if key in[VK_RETURN]then
begin
FSFormuleComposition.AfficheSFamilleMatFormule.Visible:=true;

FSFormuleComposition.TableauSFamilleMatFormule.ColCount:=5;
FSFormuleComposition.TableauSFamilleMatFormule.Cols[1].Text:='Code';
FSFormuleComposition.TableauSFamilleMatFormule.Cols[2].Text:='Désignation';
FSFormuleComposition.TableauSFamilleMatFormule.Cols[3].Text:='Titre';
FSFormuleComposition.TableauSFamilleMatFormule.Cols[4].Text:='C/D';
FSFormuleComposition.TableauSFamilleMatFormule.RowCount:=2;
FSFormuleComposition.TableauSFamilleMatFormule.Rows[1].Text:='';

OpenFParc(RParc);
ChRegistreCompte:=RParc.Parcours+'\'+Exercice+'FSousFamille'+FSFormuleComposition.EditExtention.Text;
assignfile(FRegistreCompte,ChRegistreCompte);
if FileExists(ChRegistreCompte)then
Reset(FRegistreCompte)
else Rewrite(FRegistreCompte);
Seek(FRegistreCompte,0);
k:=0;
while not eof(FRegistreCompte)do
begin
     read(FRegistreCompte,RRegistreCompte);
     if(strtoint(Firstlaters(RRegistreCompte.CodeCompte,2))in[31])then
     begin
          k:=k+1;
          FSFormuleComposition.TableauSFamilleMatFormule.Rows[k].Text:=inttostr(k);
          FSFormuleComposition.TableauSFamilleMatFormule.Cells[1,k]:=RRegistreCompte.CodeCompte;
          FSFormuleComposition.TableauSFamilleMatFormule.Cells[2,k]:=RRegistreCompte.Designation;
          FSFormuleComposition.TableauSFamilleMatFormule.Cells[3,k]:=RRegistreCompte.ContrePartie.TypeUses;
          FSFormuleComposition.TableauSFamilleMatFormule.Cells[4,k]:=RRegistreCompte.Specificite;
     end;
end;
if(k>0)then FSFormuleComposition.TableauSFamilleMatFormule.RowCount:=k+1
       else FSFormuleComposition.TableauSFamilleMatFormule.RowCount:=2;

FSFormuleComposition.TableauSFamilleMatFormule.SetFocus;
FSFormuleComposition.TableauSFamilleMatFormule.Row:=1;
end;

if key in[VK_DELETE]then
begin
R:=FSFormuleComposition.TableauFormuleComposition.Row;
if(FSFormuleComposition.TableauFormuleComposition.Cells[1,R]<>'')then
begin
FSFormuleComposition.AfficheComposition.Visible:=true;
FSFormuleComposition.BitFormulation.Kind:=bkCancel;
FSFormuleComposition.BitFormulation.Caption:='Supprimer';

FSFormuleComposition.EditFCodeProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[1,R];
FSFormuleComposition.EditFDesignProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[2,R];
FSFormuleComposition.EditFUMProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[3,R];
FSFormuleComposition.EditFNbrProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[4,R];
FSFormuleComposition.EditFNbrMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[5,R];
FSFormuleComposition.EditFCoefficient.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[6,R];
FSFormuleComposition.EditFCodeMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[7,R];
FSFormuleComposition.EditFCodeMatModif.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[7,R];
FSFormuleComposition.EditFDesignMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[8,R];
FSFormuleComposition.EditFUMMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[9,R];
FSFormuleComposition.EditCoefficientPerte.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[10,R];
FSFormuleComposition.EditCoefficientPerteM.Text:=floattostr(strtoreal(FSFormuleComposition.TableauFormuleComposition.Cells[10,R])*100);

FSFormuleComposition.TexteProduit.Text:=FSFormuleComposition.EditFUMProd.Text+' de '+FSFormuleComposition.EditFDesignProd.Text;
FSFormuleComposition.TexteMatiere.Text:=FSFormuleComposition.EditFUMMat.Text+' de '+FSFormuleComposition.EditFDesignMat.Text;
FSFormuleComposition.TextePerte.Text:='% de Perte en '+FSFormuleComposition.EditFDesignMat.Text+' dans '+' 1 '+FSFormuleComposition.EditFUMProd.Text+' de '+FSFormuleComposition.EditFDesignProd.Text;

FSFormuleComposition.BitFormulation.SetFocus;
end;
end;
end;

procedure TFSFormuleComposition.TableauFormuleCompositionKeyPress(Sender: TObject;
  var Key: Char);
var  R,k:integer;
begin

if key in['n','N','+']then
begin
     FSFormuleComposition.AfficheSFamilleMatFormule.Visible:=true;
     ListePlanComptable(FSFormuleComposition.TableauSFamilleMatFormule,FSFormuleComposition.IncrimenteEditTypePCN.Position,FSFormuleComposition.EditListeComptesRechrcher.Text,'',FSFormuleComposition.EditExtention.Text);
     FSFormuleComposition.TableauSFamilleMatFormule.SetFocus;
     FSFormuleComposition.TableauSFamilleMatFormule.Row:=1;
end;

if key in['m','M']then
begin
R:=FSFormuleComposition.TableauFormuleComposition.Row;
if(FSFormuleComposition.TableauFormuleComposition.Cells[1,R]<>'')then
begin
FSFormuleComposition.AfficheComposition.Visible:=true;
FSFormuleComposition.BitFormulation.Kind:=bkRetry;
FSFormuleComposition.BitFormulation.Caption:='Modifier';

FSFormuleComposition.EditFCodeProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[1,R];
FSFormuleComposition.EditFDesignProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[2,R];
FSFormuleComposition.EditFUMProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[3,R];
FSFormuleComposition.EditFNbrProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[4,R];
FSFormuleComposition.EditFNbrMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[5,R];
FSFormuleComposition.EditFCoefficient.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[6,R];
FSFormuleComposition.EditFCodeMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[7,R];
FSFormuleComposition.EditFCodeMatModif.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[7,R];
FSFormuleComposition.EditFDesignMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[8,R];
FSFormuleComposition.EditFRefMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[9,R];
FSFormuleComposition.EditFUMMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[10,R];
FSFormuleComposition.EditCoefficientPerte.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[11,R];
FSFormuleComposition.EditCoefficientPerteM.Text:=floattostr(strtoreal(FSFormuleComposition.TableauFormuleComposition.Cells[11,R])*100);

FSFormuleComposition.TexteProduit.Text:=FSFormuleComposition.EditFUMProd.Text+' de '+FSFormuleComposition.EditFDesignProd.Text;
FSFormuleComposition.TexteMatiere.Text:=FSFormuleComposition.EditFUMMat.Text+' de '+FSFormuleComposition.EditFDesignMat.Text;
FSFormuleComposition.TextePerte.Text:='% de Perte en '+FSFormuleComposition.EditFDesignMat.Text+' dans '+' 1 '+FSFormuleComposition.EditFUMProd.Text+' de '+FSFormuleComposition.EditFDesignProd.Text;

FSFormuleComposition.EditFNbrProd.SetFocus;
end;
end;

if key in['s','S','-']then
begin
R:=FSFormuleComposition.TableauFormuleComposition.Row;
if(FSFormuleComposition.TableauFormuleComposition.Cells[1,R]<>'')then
begin
FSFormuleComposition.AfficheComposition.Visible:=true;
FSFormuleComposition.BitFormulation.Kind:=bkCancel;
FSFormuleComposition.BitFormulation.Caption:='Supprimer';

FSFormuleComposition.EditFCodeProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[1,R];
FSFormuleComposition.EditFDesignProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[2,R];
FSFormuleComposition.EditFUMProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[3,R];
FSFormuleComposition.EditFNbrProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[4,R];
FSFormuleComposition.EditFNbrMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[5,R];
FSFormuleComposition.EditFCoefficient.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[6,R];
FSFormuleComposition.EditFCodeMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[7,R];
FSFormuleComposition.EditFCodeMatModif.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[7,R];
FSFormuleComposition.EditFDesignMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[8,R];
FSFormuleComposition.EditFRefMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[9,R];
FSFormuleComposition.EditFUMMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[10,R]; 
FSFormuleComposition.EditCoefficientPerte.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[11,R];
FSFormuleComposition.EditCoefficientPerteM.Text:=floattostr(strtoreal(FSFormuleComposition.TableauFormuleComposition.Cells[11,R])*100);

FSFormuleComposition.TexteProduit.Text:=FSFormuleComposition.EditFUMProd.Text+' de '+FSFormuleComposition.EditFDesignProd.Text;
FSFormuleComposition.TexteMatiere.Text:=FSFormuleComposition.EditFUMMat.Text+' de '+FSFormuleComposition.EditFDesignMat.Text;
FSFormuleComposition.TextePerte.Text:='% de Perte en '+FSFormuleComposition.EditFDesignMat.Text+' dans '+' 1 '+FSFormuleComposition.EditFUMProd.Text+' de '+FSFormuleComposition.EditFDesignProd.Text;

FSFormuleComposition.BitFormulation.SetFocus;
end;
end;

end;

procedure TFSFormuleComposition.StaticText8Click(Sender: TObject);
begin
     FSFormuleComposition.AfficheSFamilleMatFormule.Visible:=true;
     ListePlanComptable(FSFormuleComposition.TableauSFamilleMatFormule,FSFormuleComposition.IncrimenteEditTypePCN.Position,FSFormuleComposition.EditListeComptesRechrcher.Text,'',FSFormuleComposition.EditExtention.Text);
     FSFormuleComposition.TableauSFamilleMatFormule.SetFocus;
     FSFormuleComposition.TableauSFamilleMatFormule.Row:=1;
     FSFormuleComposition.AfficheOptionsFormule.Visible:=false;
end;

procedure TFSFormuleComposition.StaticText9Click(Sender: TObject);
var   R:integer;
begin
R:=FSFormuleComposition.TableauFormuleComposition.Row;
if(FSFormuleComposition.TableauFormuleComposition.Cells[1,R]<>'')then
begin
FSFormuleComposition.AfficheComposition.Visible:=true;
FSFormuleComposition.BitFormulation.Kind:=bkRetry;
FSFormuleComposition.BitFormulation.Caption:='Modifier';

FSFormuleComposition.EditFCodeProd.Text:=Lastlaters(FSFormuleComposition.TableauFormuleComposition.Cells[1,R],10);
FSFormuleComposition.EditFDesignProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[2,R];
FSFormuleComposition.EditFUMProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[3,R];
FSFormuleComposition.EditFNbrProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[4,R];
FSFormuleComposition.EditFNbrMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[5,R];
FSFormuleComposition.EditFCoefficient.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[6,R];
FSFormuleComposition.EditFCodeMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[7,R];
FSFormuleComposition.EditFCodeMatModif.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[7,R];
FSFormuleComposition.EditFDesignMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[8,R];
FSFormuleComposition.EditFUMMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[9,R];
FSFormuleComposition.EditCoefficientPerte.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[10,R];
FSFormuleComposition.EditCoefficientPerteM.Text:=floattostr(strtoreal(FSFormuleComposition.TableauFormuleComposition.Cells[10,R])*100);

FSFormuleComposition.TexteProduit.Text:=FSFormuleComposition.EditFUMProd.Text+' de '+FSFormuleComposition.EditFDesignProd.Text;
FSFormuleComposition.TexteMatiere.Text:=FSFormuleComposition.EditFUMMat.Text+' de '+FSFormuleComposition.EditFDesignMat.Text;
FSFormuleComposition.TextePerte.Text:='% de Perte en '+FSFormuleComposition.EditFDesignMat.Text+' dans '+' 1 '+FSFormuleComposition.EditFUMProd.Text+' de '+FSFormuleComposition.EditFDesignProd.Text;

FSFormuleComposition.EditFNbrProd.SetFocus;
end;
FSFormuleComposition.AfficheOptionsFormule.Visible:=false;
end;

procedure TFSFormuleComposition.StaticText10Click(Sender: TObject);
var  R:integer;
begin
R:=FSFormuleComposition.TableauFormuleComposition.Row;
if(FSFormuleComposition.TableauFormuleComposition.Cells[1,R]<>'')then
begin
FSFormuleComposition.AfficheComposition.Visible:=true;
FSFormuleComposition.BitFormulation.Kind:=bkCancel;
FSFormuleComposition.BitFormulation.Caption:='Supprimer';

FSFormuleComposition.EditFCodeProd.Text:=Lastlaters(FSFormuleComposition.TableauFormuleComposition.Cells[1,R],10);
FSFormuleComposition.EditFDesignProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[2,R];
FSFormuleComposition.EditFUMProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[3,R];
FSFormuleComposition.EditFNbrProd.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[4,R];
FSFormuleComposition.EditFNbrMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[5,R];
FSFormuleComposition.EditFCoefficient.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[6,R];
FSFormuleComposition.EditFCodeMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[7,R];
FSFormuleComposition.EditFCodeMatModif.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[7,R];
FSFormuleComposition.EditFDesignMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[8,R];
FSFormuleComposition.EditFUMMat.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[9,R];
FSFormuleComposition.EditCoefficientPerte.Text:=FSFormuleComposition.TableauFormuleComposition.Cells[10,R];
FSFormuleComposition.EditCoefficientPerteM.Text:=floattostr(strtoreal(FSFormuleComposition.TableauFormuleComposition.Cells[10,R])*100);

FSFormuleComposition.TexteProduit.Text:=FSFormuleComposition.EditFUMProd.Text+' de '+FSFormuleComposition.EditFDesignProd.Text;
FSFormuleComposition.TexteMatiere.Text:=FSFormuleComposition.EditFUMMat.Text+' de '+FSFormuleComposition.EditFDesignMat.Text;
FSFormuleComposition.TextePerte.Text:='% de Perte en '+FSFormuleComposition.EditFDesignMat.Text+' dans '+' 1 '+FSFormuleComposition.EditFUMProd.Text+' de '+FSFormuleComposition.EditFDesignProd.Text;

FSFormuleComposition.BitFormulation.SetFocus;
end;
FSFormuleComposition.AfficheOptionsFormule.Visible:=false;
end;

procedure TFSFormuleComposition.StaticText11Click(Sender: TObject);
begin
FSFormuleComposition.AfficheOptionsFormule.Visible:=false;
end;

procedure TFSFormuleComposition.StaticText12Click(Sender: TObject);
begin
FSFormuleComposition.AfficheOptionsFormule.Visible:=false;
end;

procedure TFSFormuleComposition.AfficheOptionsFormuleClick(
  Sender: TObject);
begin
FSFormuleComposition.AfficheOptionsFormule.Visible:=false;
end;

procedure TFSFormuleComposition.StaticText8MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormuleComposition.StaticText8.Color:=clSkyBlue;
FSFormuleComposition.StaticText9.Color:=clWhite;
FSFormuleComposition.StaticText10.Color:=clWhite;
FSFormuleComposition.StaticText11.Color:=clWhite;
FSFormuleComposition.StaticText12.Color:=clWhite;
end;

procedure TFSFormuleComposition.StaticText9MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormuleComposition.StaticText9.Color:=clSkyBlue;
FSFormuleComposition.StaticText8.Color:=clWhite;
FSFormuleComposition.StaticText10.Color:=clWhite;
FSFormuleComposition.StaticText11.Color:=clWhite;
FSFormuleComposition.StaticText12.Color:=clWhite;
end;

procedure TFSFormuleComposition.StaticText10MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
FSFormuleComposition.StaticText10.Color:=clSkyBlue;
FSFormuleComposition.StaticText8.Color:=clWhite;
FSFormuleComposition.StaticText9.Color:=clWhite;
FSFormuleComposition.StaticText11.Color:=clWhite;
FSFormuleComposition.StaticText12.Color:=clWhite;
end;

procedure TFSFormuleComposition.BitBtn9Click(Sender: TObject);
begin
FSFormuleComposition.EditFNbrProd.Text:='';
FSFormuleComposition.EditFNbrMat.Text:='';
FSFormuleComposition.EditFCoefficient.Text:='';
FSFormuleComposition.EditFCodeMat.Text:='';
FSFormuleComposition.EditFDesignMat.Text:='';
FSFormuleComposition.EditFUMMat.Text:='';
FSFormuleComposition.BitFormulation.Caption:='.';
FSFormuleComposition.AfficheComposition.Visible:=false;
end;

procedure TFSFormuleComposition.EditFNbrProdKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormuleComposition.EditFNbrMat.SetFocus;
end;

end;

procedure TFSFormuleComposition.EditFNbrProdKeyPress(Sender: TObject;
  var Key: Char);
begin
if key='.'then key:=',';
if not(key in['0'..'9',',','.'])then key:=#0;
end;

procedure TFSFormuleComposition.EditFNbrProdKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (FSFormuleComposition.EditFNbrProd.Text<>'')
and(FSFormuleComposition.EditFNbrMat.Text<>'')
and(FSFormuleComposition.EditFNbrMat.Text<>'0')
then FSFormuleComposition.EditFCoefficient.Text:=floattostr(strtofloat(FSFormuleComposition.EditFNbrMat.Text)/strtofloat(FSFormuleComposition.EditFNbrProd.Text));
end;

procedure TFSFormuleComposition.EditFNbrMatKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormuleComposition.EditCoefficientPerteM.SetFocus;
end;

end;

procedure TFSFormuleComposition.EditFNbrMatKeyPress(Sender: TObject;
  var Key: Char);
begin
if key='.'then key:=',';
if not(key in['0'..'9',',','.'])then key:=#0;
end;

procedure TFSFormuleComposition.EditFNbrMatKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (FSFormuleComposition.EditFNbrProd.Text<>'')
and(FSFormuleComposition.EditFNbrMat.Text<>'')
and(FSFormuleComposition.EditFNbrMat.Text<>'0')
then FSFormuleComposition.EditFCoefficient.Text:=floattostr(strtofloat(FSFormuleComposition.EditFNbrMat.Text)/strtofloat(FSFormuleComposition.EditFNbrProd.Text));
end;

procedure TFSFormuleComposition.EditCoefficientPerteMKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormuleComposition.BitFormulation.SetFocus;
end;

end;

procedure TFSFormuleComposition.EditCoefficientPerteMKeyPress(
  Sender: TObject; var Key: Char);
begin
if key='.'then key:=',';
if not(key in['0'..'9',',','.'])then key:=#0;
end;

procedure TFSFormuleComposition.EditCoefficientPerteMKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
FSFormuleComposition.EditCoefficientPerte.Text:=floattostr(strtoreal(FSFormuleComposition.EditCoefficientPerteM.Text)/100);
end;

procedure TFSFormuleComposition.BitFormulationClick(Sender: TObject);
var  i:integer; OK:boolean;
begin
if  (FSFormuleComposition.EditFNbrProd.Text<>'')
and (FSFormuleComposition.EditFNbrMat.Text<>'')
and (FSFormuleComposition.EditFCoefficient.Text<>'')
and (FSFormuleComposition.EditCoefficientPerte.Text<>'')
then
begin
if(FSFormuleComposition.BitFormulation.Caption='Valider')then
begin
OpenFParc(RParc);
ChFormuleComposition:=RParc.Parcours+'\'+Exercice+'FFormuleComposition';
assignfile(FFormuleComposition,ChFormuleComposition);
if FileExists(ChFormuleComposition)then
Reset(FFormuleComposition)
else Rewrite(FFormuleComposition);
Seek(FFormuleComposition,0);
i:=0;
while not eof(FFormuleComposition) do
begin
     Read(FFormuleComposition,RFormuleComposition);
     i:=i+1;
     if (RFormuleComposition.CodeProd=FSFormuleComposition.EditFCodeProd.Text)
     and(RFormuleComposition.CodeMat=FSFormuleComposition.EditFCodeMat.Text)
     then
     begin
          showmessage('Les Données de la formule sont déjas enregistrées');
          exit;
     end;
end;
{******************************}
Seek(FFormuleComposition,i+1);
Truncate(FFormuleComposition);
RFormuleComposition.CodeStockStructure:='';
RFormuleComposition.TypeStock:=FSFormuleComposition.EditTypeStock.Text;
RFormuleComposition.CodeProd:=FSFormuleComposition.EditFCodeProd.Text;
RFormuleComposition.DesignProd:=FSFormuleComposition.EditFDesignProd.Text;
RFormuleComposition.UMProd:=FSFormuleComposition.EditFUMProd.Text;
RFormuleComposition.CodeMat:=FSFormuleComposition.EditFCodeMat.Text;
RFormuleComposition.DesignMat:=FSFormuleComposition.EditFDesignMat.Text;
RFormuleComposition.RefMat:=FSFormuleComposition.EditFRefMat.Text;
RFormuleComposition.UMMat:=FSFormuleComposition.EditFUMMat.Text;
RFormuleComposition.NbProd:=strtofloat(FSFormuleComposition.EditFNbrProd.Text);
RFormuleComposition.NbMat:=strtofloat(FSFormuleComposition.EditFNbrMat.Text);
RFormuleComposition.CoefficientComposition:=strtofloat(FSFormuleComposition.EditFCoefficient.Text);
RFormuleComposition.CoefficientPerte:=strtofloat(FSFormuleComposition.EditCoefficientPerte.Text);
Write(FFormuleComposition,RFormuleComposition);
Closefile(FFormuleComposition);
end;

if(FSFormuleComposition.BitFormulation.Caption='Modifier')then
begin
OpenFParc(RParc);
ChFormuleComposition:=RParc.Parcours+'\'+Exercice+'FFormuleComposition';
assignfile(FFormuleComposition,ChFormuleComposition);
if FileExists(ChFormuleComposition)then
Reset(FFormuleComposition)
else Rewrite(FFormuleComposition);
Seek(FFormuleComposition,0);
i:=0;
OK:=false;
while not eof(FFormuleComposition)and(OK=false)do
begin
     Read(FFormuleComposition,RFormuleComposition);
     if (RFormuleComposition.CodeProd=FSFormuleComposition.EditFCodeProd.Text)
     and(RFormuleComposition.CodeMat=FSFormuleComposition.EditFCodeMatModif.Text)
     then
     begin
          OK:=true;
          RFormuleComposition.CodeStockStructure:='';
          RFormuleComposition.TypeStock:=FSFormuleComposition.EditTypeStock.Text;
          RFormuleComposition.CodeProd:=FSFormuleComposition.EditFCodeProd.Text;
          RFormuleComposition.DesignProd:=FSFormuleComposition.EditFDesignProd.Text;
          RFormuleComposition.UMProd:=FSFormuleComposition.EditFUMProd.Text;
          RFormuleComposition.CodeMat:=FSFormuleComposition.EditFCodeMat.Text;
          RFormuleComposition.DesignMat:=FSFormuleComposition.EditFDesignMat.Text;
          RFormuleComposition.RefMat:=FSFormuleComposition.EditFRefMat.Text;
          RFormuleComposition.UMMat:=FSFormuleComposition.EditFUMMat.Text;
          RFormuleComposition.NbProd:=strtofloat(FSFormuleComposition.EditFNbrProd.Text);
          RFormuleComposition.NbMat:=strtofloat(FSFormuleComposition.EditFNbrMat.Text);
          RFormuleComposition.CoefficientComposition:=strtofloat(FSFormuleComposition.EditFCoefficient.Text);
          RFormuleComposition.CoefficientPerte:=strtofloat(FSFormuleComposition.EditCoefficientPerte.Text);
          Seek(FFormuleComposition,i);
          write(FFormuleComposition,RFormuleComposition);
     end;
i:=i+1;
end;
end;

if(FSFormuleComposition.BitFormulation.Caption='Supprimer')then
begin
     DeleteFFormuleComposition(FSFormuleComposition.EditFCodeProd.Text,FSFormuleComposition.EditFCodeMat.Text,OK);
end;
{******************************}

ProcAfficheFormuleComposition(FSFormuleComposition.EditExtentionCodeProduit.Text,Lastlaters(FSFormuleComposition.EditFCodeProd.Text,longueur(FSFormuleComposition.EditFCodeProd.Text)-longueur(FSFormuleComposition.EditExtentionCodeProduit.Text)),FSFormuleComposition.EditFDesignProd.Text,FSFormuleComposition.EditFUMProd.Text);
FSFormuleComposition.EditFNbrProd.Text:='';
FSFormuleComposition.EditFNbrMat.Text:='';
FSFormuleComposition.EditFCoefficient.Text:='';
FSFormuleComposition.EditFCodeMat.Text:='';
FSFormuleComposition.EditFDesignMat.Text:='';
FSFormuleComposition.EditFRefMat.Text:='';
FSFormuleComposition.EditFUMMat.Text:='';
FSFormuleComposition.EditCoefficientPerte.Text:='';
FSFormuleComposition.EditCoefficientPerteM.Text:='';
FSFormuleComposition.BitFormulation.Caption:='.';
FSFormuleComposition.AfficheComposition.Visible:=false;

FSFormuleComposition.TableauFormuleComposition.setfocus;
end;
end;

procedure TFSFormuleComposition.BitFermerAfficheSFamilleMatFormuleClick(
  Sender: TObject);
begin
FSFormuleComposition.AfficheSFamilleMatFormule.Visible:=false;
end;

procedure TFSFormuleComposition.TableauSFamilleMatFormuleClick(
  Sender: TObject);
var  R,k:integer;
begin
R:=FSFormuleComposition.TableauSFamilleMatFormule.Row;

FSFormuleComposition.TableauMatFormule.Cols[1].Text:='CodeMat';
FSFormuleComposition.TableauMatFormule.Cols[2].Text:='Désignation';
FSFormuleComposition.TableauMatFormule.Cols[3].Text:='Réference';
FSFormuleComposition.TableauMatFormule.Cols[4].Text:='UM';
FSFormuleComposition.TableauMatFormule.Cols[5].Text:='Qte.Entrée';
FSFormuleComposition.TableauMatFormule.Cols[6].Text:='Qte.Sortie';
FSFormuleComposition.TableauMatFormule.Cols[7].Text:='Qte en Stoch';
FSFormuleComposition.TableauMatFormule.Cols[8].Text:='Qte.Initial';
FSFormuleComposition.TableauMatFormule.Cols[9].Text:='Qte.Limite';
FSFormuleComposition.TableauMatFormule.Cols[10].Text:='Prix d''Achat';
FSFormuleComposition.TableauMatFormule.Cols[11].Text:='Prix de Vent';
FSFormuleComposition.TableauMatFormule.Cols[12].Text:='Emplacement';
FSFormuleComposition.TableauMatFormule.Cols[13].Text:='Fiche de Stock';
FSFormuleComposition.TableauMatFormule.Cols[14].Text:='Titre';
FSFormuleComposition.TableauMatFormule.Cols[15].Text:='Observation';
FSFormuleComposition.TableauMatFormule.Cols[16].Text:='Enreg';
FSFormuleComposition.TableauMatFormule.RowCount:=2;
FSFormuleComposition.TableauMatFormule.Rows[1].Text:='';

OpenFParc(RParc);
ChStock:=RParc.Parcours+'\'+Exercice+'FStock'+FSFormuleComposition.EditTypeStock.Text;
assignfile(FStock,ChStock);
if FileExists(ChStock)then
Reset(FStock)
else Rewrite(FStock);
Seek(FStock,0);
k:=0;
while not eof(FStock)do
begin
     read(FStock,RStock);
     if FirstLaters(RStock.Code,longueur(FSFormuleComposition.TableauSFamilleMatFormule.Cells[1,R]))=FSFormuleComposition.TableauSFamilleMatFormule.Cells[1,R]then
     begin
     k:=k+1;
     FSFormuleComposition.TableauMatFormule.Rows[k].Text:=inttostr(k);
     FSFormuleComposition.TableauMatFormule.Cells[1,k]:=RStock.Code;
     FSFormuleComposition.TableauMatFormule.Cells[2,k]:=RStock.Design;
     FSFormuleComposition.TableauMatFormule.Cells[3,k]:=RStock.Ref;
     FSFormuleComposition.TableauMatFormule.Cells[4,k]:=RStock.UM;
     FSFormuleComposition.TableauMatFormule.Cells[5,k]:=floattostr(RStock.QteEntree);
     FSFormuleComposition.TableauMatFormule.Cells[6,k]:=floattostr(RStock.QteSortie);
     FSFormuleComposition.TableauMatFormule.Cells[7,k]:=floattostr(RStock.QteStock);
     FSFormuleComposition.TableauMatFormule.Cells[8,k]:=floattostr(RStock.QteInitial);
     FSFormuleComposition.TableauMatFormule.Cells[9,k]:=floattostr(RStock.QteLimite);
     FSFormuleComposition.TableauMatFormule.Cells[10,k]:=floattostr(RStock.CoutUnitaire);
     FSFormuleComposition.TableauMatFormule.Cells[11,k]:=floattostr(RStock.PrixVenteDetaille);
     FSFormuleComposition.TableauMatFormule.Cells[12,k]:=RStock.Emplace;
     FSFormuleComposition.TableauMatFormule.Cells[13,k]:=RStock.CodeBarre;
     FSFormuleComposition.TableauMatFormule.Cells[14,k]:=RStock.Emplace;
     FSFormuleComposition.TableauMatFormule.Cells[15,k]:=RStock.Observ;
     FSFormuleComposition.TableauMatFormule.Cells[16,k]:=RStock.enregistrement;
     end;
end;
if(k>0)then FSFormuleComposition.TableauMatFormule.RowCount:=k+1
       else FSFormuleComposition.TableauMatFormule.RowCount:=2;
end;

procedure TFSFormuleComposition.TableauSFamilleMatFormuleKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSFormuleComposition.TableauMatFormule.SetFocus;
end;

end;

procedure TFSFormuleComposition.TableauMatFormuleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var    R:integer;
begin

if key in[VK_RETURN]then
begin
     R:=FSFormuleComposition.TableauMatFormule.Row;
     if(FSFormuleComposition.TableauMatFormule.Cells[1,R]<>'')then
     begin
          FSFormuleComposition.AfficheComposition.Visible:=true;
          if(FSFormuleComposition.BitFormulation.Caption='.')
          then
          begin
          FSFormuleComposition.BitFormulation.Kind:=bkAll;
          FSFormuleComposition.BitFormulation.Caption:='Valider';
          end;
          FSFormuleComposition.EditFCodeMat.Text:=FSFormuleComposition.TableauMatFormule.Cells[1,R];
          FSFormuleComposition.EditFDesignMat.Text:=FSFormuleComposition.TableauMatFormule.Cells[2,R];
          FSFormuleComposition.EditFRefMat.Text:=FSFormuleComposition.TableauMatFormule.Cells[3,R];
          FSFormuleComposition.EditFUMMat.Text:=FSFormuleComposition.TableauMatFormule.Cells[4,R];

          FSFormuleComposition.TexteProduit.Text:=FSFormuleComposition.EditFUMProd.Text+' de '+FSFormuleComposition.EditFDesignProd.Text;
          FSFormuleComposition.TexteMatiere.Text:=FSFormuleComposition.EditFUMMat.Text+' de '+FSFormuleComposition.EditFDesignMat.Text+' '+FSFormuleComposition.EditFRefMat.Text;
          FSFormuleComposition.TextePerte.Text:='% de Perte en '+FSFormuleComposition.EditFDesignMat.Text+' dans '+' 1 '+FSFormuleComposition.EditFUMProd.Text+' de '+FSFormuleComposition.EditFDesignProd.Text;

          FSFormuleComposition.EditFNbrProd.Text:='';
          FSFormuleComposition.EditFNbrMat.Text:='';
          FSFormuleComposition.EditFCoefficient.Text:='';
          FSFormuleComposition.EditCoefficientPerte.Text:='';
          FSFormuleComposition.EditCoefficientPerteM.Text:='';
          FSFormuleComposition.EditFNbrProd.SetFocus;

          FSFormuleComposition.AfficheSFamilleMatFormule.Visible:=false;
    end;
end;
end;

procedure TFSFormuleComposition.EditTypeStockChange(Sender: TObject);
begin
     if(FSFormuleComposition.EditTypeStock.Text='Marche')
     then FSFormuleComposition.EditExtention.Text:=FSFormuleComposition.EditTypeStock.Text
     else FSFormuleComposition.EditExtention.Text:='PlanComptable';
end;

procedure TFSFormuleComposition.EditTypeStockKeyPress(Sender: TObject;
  var Key: Char);
begin
      key:=#0;
end;

Procedure ProcAfficheFormuleComposition(Extention,CodeStock,DesignationStock,UmStock:string);
var  l:integer;
begin
CodeStock:=Extention+CodeStock;

FSFormuleComposition.TableauFormuleComposition.ColCount:=14;
FSFormuleComposition.TableauFormuleComposition.Cols[1].Text:='Code Prod';
FSFormuleComposition.TableauFormuleComposition.Cols[2].Text:='Désignation Prod';
FSFormuleComposition.TableauFormuleComposition.Cols[3].Text:='UM Prod';
FSFormuleComposition.TableauFormuleComposition.Cols[4].Text:='Nbr Prod';
FSFormuleComposition.TableauFormuleComposition.Cols[5].Text:='Nbr Mat';
FSFormuleComposition.TableauFormuleComposition.Cols[6].Text:='Coefficient Comp.';
FSFormuleComposition.TableauFormuleComposition.Cols[7].Text:='Code Mat';
FSFormuleComposition.TableauFormuleComposition.Cols[8].Text:='Désignation Mat';
FSFormuleComposition.TableauFormuleComposition.Cols[9].Text:='Ré Mat';
FSFormuleComposition.TableauFormuleComposition.Cols[10].Text:='UM Mat';
FSFormuleComposition.TableauFormuleComposition.Cols[11].Text:='Coefficient Perte';
FSFormuleComposition.TableauFormuleComposition.Cols[12].Text:='CodeStockStructure';
FSFormuleComposition.TableauFormuleComposition.Cols[13].Text:='TypeStock';

FSFormuleComposition.TableauFormuleComposition.RowCount:=2;
FSFormuleComposition.TableauFormuleComposition.Rows[1].Text:='';

FSFormuleComposition.EditFCodeProd.Text:=CodeStock;
FSFormuleComposition.EditFDesignProd.Text:=DesignationStock;
FSFormuleComposition.EditFUMProd.Text:=UmStock;

OpenFParc(RParc);
ChFormuleComposition:=RParc.Parcours+'\'+Exercice+'FFormuleComposition';
assignfile(FFormuleComposition,ChFormuleComposition);
if FileExists(ChFormuleComposition)then
Reset(FFormuleComposition)
else Rewrite(FFormuleComposition);
Seek(FFormuleComposition,0);
l:=0;
while not eof(FFormuleComposition)do
begin
     read(FFormuleComposition,RFormuleComposition);
     if(RFormuleComposition.CodeProd=CodeStock)
     then
     begin
          l:=l+1;
          FSFormuleComposition.TableauFormuleComposition.Rows[l].Text:=inttostr(l);
          FSFormuleComposition.TableauFormuleComposition.Cells[1,l]:=RFormuleComposition.CodeProd;
          FSFormuleComposition.TableauFormuleComposition.Cells[2,l]:=RFormuleComposition.DesignProd;
          FSFormuleComposition.TableauFormuleComposition.Cells[3,l]:=RFormuleComposition.UMProd;
          FSFormuleComposition.TableauFormuleComposition.Cells[4,l]:=floattostr(RFormuleComposition.NbProd);
          FSFormuleComposition.TableauFormuleComposition.Cells[5,l]:=floattostr(RFormuleComposition.NbMat);
          FSFormuleComposition.TableauFormuleComposition.Cells[6,l]:=floattostr(RFormuleComposition.CoefficientComposition);
          FSFormuleComposition.TableauFormuleComposition.Cells[7,l]:=RFormuleComposition.CodeMat;
          FSFormuleComposition.TableauFormuleComposition.Cells[8,l]:=RFormuleComposition.DesignMat;
          FSFormuleComposition.TableauFormuleComposition.Cells[9,l]:=RFormuleComposition.RefMat;
          FSFormuleComposition.TableauFormuleComposition.Cells[10,l]:=RFormuleComposition.UMMat;
          FSFormuleComposition.TableauFormuleComposition.Cells[11,l]:=floattostr(RFormuleComposition.CoefficientPerte);
          FSFormuleComposition.TableauFormuleComposition.Cells[12,l]:=RFormuleComposition.CodeStockStructure;
          FSFormuleComposition.TableauFormuleComposition.Cells[13,l]:=RFormuleComposition.TypeStock;
     end;
end;
if(l>0)then FSFormuleComposition.TableauFormuleComposition.RowCount:=l+1
       else FSFormuleComposition.TableauFormuleComposition.RowCount:=2;

       AjusterColWidth(FSFormuleComposition.TableauFormuleComposition,'','');

end;

procedure TFSFormuleComposition.FormShow(Sender: TObject);
var C:integer; NotRow,NotCol:string;
begin
     ActiverNomForm(1,(Sender as TComponent).Name);
     FSFormuleComposition.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Formules de Composition';

     FSFormuleComposition.AfficheSFamilleMatFormule.Left:=FSFormuleComposition.AfficheInfoArticle.Left;
     FSFormuleComposition.AfficheSFamilleMatFormule.Top:=FSFormuleComposition.AfficheInfoArticle.Top;

     FSFormuleComposition.AfficheComposition.Left:=FSFormuleComposition.CadreBouton.Left;
     FSFormuleComposition.AfficheComposition.Top:=FSFormuleComposition.CadreBouton.Top;

     FSFormuleComposition.AfficheOptionPrint.Height:=25;


     NotRow:='';
     NotCol:='1;2;3';
     for C:=1 to FSFormuleComposition.TableauListeOperationFormuleComposition.ColCount-1 do if existenumintexte(inttostr(C),NotCol)then FSFormuleComposition.TableauListeOperationFormuleComposition.ColWidths[C]:=0;
     AjusterColWidth(FSFormuleComposition.TableauListeOperationFormuleComposition,NotRow,NotCol);

     NotRow:='';
     NotCol:='5;7';
     for C:=1 to FSFormuleComposition.TableauDetailOperationFormuleComposition.ColCount-1 do if existenumintexte(inttostr(C),NotCol)then FSFormuleComposition.TableauDetailOperationFormuleComposition.ColWidths[C]:=0;
     AjusterColWidth(FSFormuleComposition.TableauDetailOperationFormuleComposition,NotRow,NotCol);
end;

procedure TFSFormuleComposition.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

procedure TFSFormuleComposition.IncrimenteEditTypePCNClick(Sender: TObject;
  Button: TUDBtnType);
begin
     FSFormuleComposition.AfficheSFamilleMatFormule.Visible:=true;
     ListePlanComptable(FSFormuleComposition.TableauSFamilleMatFormule,FSFormuleComposition.IncrimenteEditTypePCN.Position,FSFormuleComposition.EditListeComptesRechrcher.Text,'',FSFormuleComposition.EditExtention.Text);
     FSFormuleComposition.TableauSFamilleMatFormule.SetFocus;
     FSFormuleComposition.TableauSFamilleMatFormule.Row:=1;
end;

procedure TFSFormuleComposition.TableauSFamilleMatFormuleEnter(
  Sender: TObject);
begin
     FSFormuleComposition.TableauSFamilleMatFormuleClick(FSFormuleComposition.TableauSFamilleMatFormule);
end;

procedure TFSFormuleComposition.BitTruncateFormuleCompositionClick(Sender: TObject);
begin
     if(FSFormuleComposition.EditCodeTrancateFormuleComposition.Text='000')then
     begin
          FSFormuleComposition.EditCodeTrancateFormuleComposition.Text:='';
          OpenFParc(RParc);
          ChFormuleComposition:=RParc.Parcours+'\'+Exercice+'FFormuleComposition';
          assignfile(FFormuleComposition,ChFormuleComposition);
          if FileExists(ChFormuleComposition)then
          Reset(FFormuleComposition)
          else Rewrite(FFormuleComposition);
          Seek(FFormuleComposition,0);
          Truncate(FFormuleComposition);
     end
     else
     begin
          showmessage('Opération non autorisé !');
          FSFormuleComposition.EditCodeTrancateFormuleComposition.Text:='';
          FSFormuleComposition.EditCodeTrancateFormuleComposition.SetFocus;
     end;
end;

Procedure PreparationFormuleComposition(PositionTM,PositionM,OrdreMouvement,NumMouvement,Mouvement,DateMouvement,CodeTiers,Tiers,NatureOperation:string; var RowEditing:integer);
begin
     RowEditing:=0;

     FSFormuleComposition.TableauListeOperationFormuleComposition.ColCount:=10;
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cols[0].Text:='P°';
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cols[1].Text:='P°TM';
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cols[2].Text:='P°M';
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cols[3].Text:='Ordre Mouvement';
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cols[4].Text:='Num Mouvement';
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cols[5].Text:='Mouvement';
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cols[6].Text:='Date';
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cols[7].Text:='Code Tiers';
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cols[8].Text:='Tiers';
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cols[9].Text:='Nature';

     FSFormuleComposition.TableauListeOperationFormuleComposition.RowCount:=2;
     FSFormuleComposition.TableauListeOperationFormuleComposition.Rows[1].Text:='';

     FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[0,1]:='';
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[1,1]:=PositionTM;
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[2,1]:=PositionM;
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[3,1]:=OrdreMouvement;
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[4,1]:=NumMouvement;
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[5,1]:=Mouvement;
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[6,1]:=DateMouvement;
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[7,1]:=CodeTiers;
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[8,1]:=Tiers;
     FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[9,1]:=NatureOperation;

     FSFormuleComposition.TableauDetailOperationFormuleComposition.ColCount:=8;
     FSFormuleComposition.TableauDetailOperationFormuleComposition.Cols[0].Text:='P°';
     FSFormuleComposition.TableauDetailOperationFormuleComposition.Cols[1].Text:='Code';
     FSFormuleComposition.TableauDetailOperationFormuleComposition.Cols[2].Text:='Désignation';
     FSFormuleComposition.TableauDetailOperationFormuleComposition.Cols[3].Text:='Réf';
     FSFormuleComposition.TableauDetailOperationFormuleComposition.Cols[4].Text:='U.M';
     FSFormuleComposition.TableauDetailOperationFormuleComposition.Cols[5].Text:='Coût';
     FSFormuleComposition.TableauDetailOperationFormuleComposition.Cols[6].Text:='Quantité';
     FSFormuleComposition.TableauDetailOperationFormuleComposition.Cols[7].Text:='Prix';

     FSFormuleComposition.TableauDetailOperationFormuleComposition.RowCount:=2;
     FSFormuleComposition.TableauDetailOperationFormuleComposition.Rows[1].Text:='';
end;

procedure TFSFormuleComposition.BitBtn2Click(Sender: TObject);
var  i,iSelect,R,PositionOperationFC,PositionOperationFCSelect:integer;
     OKOFComposition,OKDOFComposition:boolean;
begin
     if(FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[1,1]<>'')then
     begin
          OpenFParc(RParc);
          ChOperationFormuleComposition:=RParc.Parcours+'\'+Exercice+'FOperationFormuleComposition';
          assignfile(FOperationFormuleComposition,ChOperationFormuleComposition);
          if FileExists(ChOperationFormuleComposition)then
          Reset(FOperationFormuleComposition)
          else Rewrite(FOperationFormuleComposition);
          Seek(FOperationFormuleComposition,0);
          i:=0;
          iSelect:=0;
          OKOFComposition:=false;
          while not eof(FOperationFormuleComposition)and(OKOFComposition=false)do
          begin
               Read(FOperationFormuleComposition,ROperationFormuleComposition);

               if(inttostr(ROperationFormuleComposition.PositionOperationFC)=FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[0,FSFormuleComposition.TableauListeOperationFormuleComposition.Row])then
               begin
                    OKOFComposition:=true;
                    iSelect:=i;
               end;
          i:=i+1;
          end;

          if(OKOFComposition=true)then i:=iSelect;
          PositionOperationFC:=i;
          ROperationFormuleComposition.PositionOperationFC:=PositionOperationFC;
          ROperationFormuleComposition.PositionTMvt:=strtointeger(FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[1,1]);
          ROperationFormuleComposition.PositionMvt:=strtointeger(FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[2,1]);
          ROperationFormuleComposition.OrdreListeMouvement:=strtointeger(FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[3,1]);
          ROperationFormuleComposition.NumListeMouvement:=strtointeger(FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[4,1]);
          ROperationFormuleComposition.DesignationMouvement:=FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[5,1];
          ROperationFormuleComposition.DateMouvement:=FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[6,1];
          ROperationFormuleComposition.CodeTiers:=FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[7,1];
          ROperationFormuleComposition.Tiers:=FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[8,1];
          ROperationFormuleComposition.NatureOperation:=FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[9,1];

          Seek(FOperationFormuleComposition,i);
          write(FOperationFormuleComposition,ROperationFormuleComposition);

          CloseFile(FOperationFormuleComposition);

          PositionOperationFCSelect:=PositionOperationFC;
     end;
          ///////////////////////////////////////////////////////////////////////////

     R:=1;
     while(R<=FSFormuleComposition.TableauDetailOperationFormuleComposition.RowCount-1)do
     begin
          if(FSFormuleComposition.TableauDetailOperationFormuleComposition.Cells[1,R]<>'')then
          begin
               OpenFParc(RParc);
               ChDetailOperationFormuleComposition:=RParc.Parcours+'\'+Exercice+'FDetailOperationFormuleComposition';
               assignfile(FDetailOperationFormuleComposition,ChDetailOperationFormuleComposition);
               if FileExists(ChDetailOperationFormuleComposition)then
               Reset(FDetailOperationFormuleComposition)
               else Rewrite(FDetailOperationFormuleComposition);
               Seek(FDetailOperationFormuleComposition,0);
               i:=0;
               iSelect:=0;
               OKDOFComposition:=false;
               while not eof(FDetailOperationFormuleComposition)and(OKDOFComposition=false)do
               begin
                    Read(FDetailOperationFormuleComposition,RDetailOperationFormuleComposition);

                    if(inttostr(RDetailOperationFormuleComposition.PositionDetailOperationFC)=FSFormuleComposition.TableauDetailOperationFormuleComposition.Cells[0,R])then
                    begin
                         OKDOFComposition:=true;
                         iSelect:=i;
                    end;
               i:=i+1;
               end;

               if(OKDOFComposition=true)then i:=iSelect;
               RDetailOperationFormuleComposition.PositionDetailOperationFC:=i;
               RDetailOperationFormuleComposition.PositionOperationFC:=PositionOperationFC;
               RDetailOperationFormuleComposition.DateMouvement:=FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[6,1];
               RDetailOperationFormuleComposition.CodeTiers:=FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[7,1];
               RDetailOperationFormuleComposition.CodeArticle:=FSFormuleComposition.TableauDetailOperationFormuleComposition.Cells[1,R];
               RDetailOperationFormuleComposition.DesignationArticle:=FSFormuleComposition.TableauDetailOperationFormuleComposition.Cells[2,R];
               RDetailOperationFormuleComposition.RefArticle:=FSFormuleComposition.TableauDetailOperationFormuleComposition.Cells[3,R];
               RDetailOperationFormuleComposition.UMArticle:=FSFormuleComposition.TableauDetailOperationFormuleComposition.Cells[4,R];
               RDetailOperationFormuleComposition.CoutArticle:=strtoreal(FSFormuleComposition.TableauDetailOperationFormuleComposition.Cells[5,R]);
               RDetailOperationFormuleComposition.QuantiteArticle:=strtoreal(FSFormuleComposition.TableauDetailOperationFormuleComposition.Cells[6,R]);
               RDetailOperationFormuleComposition.PrixArticle:=strtoreal(FSFormuleComposition.TableauDetailOperationFormuleComposition.Cells[7,R]);

               Seek(FDetailOperationFormuleComposition,i);
               write(FDetailOperationFormuleComposition,RDetailOperationFormuleComposition);

               CloseFile(FDetailOperationFormuleComposition);
          end;
     R:=R+1;
     end;

     ListeOperationFormuleComposition(FSFormuleComposition.TableauListeOperationFormuleComposition,inttostr(PositionOperationFCSelect));
     ListeDetailOperationFormuleComposition(FSFormuleComposition.TableauDetailOperationFormuleComposition,FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[0,FSFormuleComposition.TableauListeOperationFormuleComposition.Row]);
end;

Procedure ListeOperationFormuleComposition(TableauListeOperationFormuleComposition:TStringGrid; PositionOperationFCSelect:string);
var  R,RowSelect,C:integer;
     OKOFComposition:boolean;
     NotRow,NotCol:string;
begin
     TableauListeOperationFormuleComposition.ColCount:=10;
     TableauListeOperationFormuleComposition.Cols[0].Text:='P°';
     TableauListeOperationFormuleComposition.Cols[1].Text:='P°TM';
     TableauListeOperationFormuleComposition.Cols[2].Text:='P°M';
     TableauListeOperationFormuleComposition.Cols[3].Text:='Ordre Mouvement';
     TableauListeOperationFormuleComposition.Cols[4].Text:='Num Mouvement';
     TableauListeOperationFormuleComposition.Cols[5].Text:='Mouvement';
     TableauListeOperationFormuleComposition.Cols[6].Text:='Date';
     TableauListeOperationFormuleComposition.Cols[7].Text:='Code Tiers';
     TableauListeOperationFormuleComposition.Cols[8].Text:='Tiers';
     TableauListeOperationFormuleComposition.Cols[9].Text:='Nature';

     TableauListeOperationFormuleComposition.RowCount:=2;
     TableauListeOperationFormuleComposition.Rows[1].Text:='';

     OpenFParc(RParc);
     ChOperationFormuleComposition:=RParc.Parcours+'\'+Exercice+'FOperationFormuleComposition';
     assignfile(FOperationFormuleComposition,ChOperationFormuleComposition);
     if FileExists(ChOperationFormuleComposition)then
     Reset(FOperationFormuleComposition)
     else Rewrite(FOperationFormuleComposition);
     Seek(FOperationFormuleComposition,0);

     R:=0;
     OKOFComposition:=false;
     RowSelect:=1;
     while not eof(FOperationFormuleComposition)do
     begin
          Read(FOperationFormuleComposition,ROperationFormuleComposition);

          OKOFComposition:=true;

          if(OKOFComposition=true)then
          begin
               R:=R+1;
               TableauListeOperationFormuleComposition.Rows[R].Text:='';
               TableauListeOperationFormuleComposition.Cells[0,R]:=inttostr(ROperationFormuleComposition.PositionOperationFC);
               TableauListeOperationFormuleComposition.Cells[1,R]:=inttostr(ROperationFormuleComposition.PositionTMvt);
               TableauListeOperationFormuleComposition.Cells[2,R]:=inttostr(ROperationFormuleComposition.PositionMvt);
               TableauListeOperationFormuleComposition.Cells[3,R]:=inttostr(ROperationFormuleComposition.OrdreListeMouvement);
               TableauListeOperationFormuleComposition.Cells[4,R]:=inttostr(ROperationFormuleComposition.NumListeMouvement);
               TableauListeOperationFormuleComposition.Cells[5,R]:=ROperationFormuleComposition.DesignationMouvement;
               TableauListeOperationFormuleComposition.Cells[6,R]:=ROperationFormuleComposition.DateMouvement;
               TableauListeOperationFormuleComposition.Cells[7,R]:=ROperationFormuleComposition.CodeTiers;
               TableauListeOperationFormuleComposition.Cells[8,R]:=ROperationFormuleComposition.Tiers;
               TableauListeOperationFormuleComposition.Cells[9,R]:=ROperationFormuleComposition.NatureOperation;

               if(inttostr(ROperationFormuleComposition.PositionOperationFC)=PositionOperationFCSelect)then RowSelect:=R;
          end;
     end;

     if(R>0)then TableauListeOperationFormuleComposition.RowCount:=R+1
            else TableauListeOperationFormuleComposition.RowCount:=2;

     NotRow:='';
     NotCol:='1;2;3';
     for C:=1 to TableauListeOperationFormuleComposition.ColCount-1 do if existenumintexte(inttostr(C),NotCol)then TableauListeOperationFormuleComposition.ColWidths[C]:=0;
     AjusterColWidth(TableauListeOperationFormuleComposition,NotRow,NotCol);

     TableauListeOperationFormuleComposition.Row:=RowSelect;
end;

Procedure ListeDetailOperationFormuleComposition(TableauDetailListeOperationFormuleComposition:TStringGrid; PositionOperationFC:string);
var  R,C:integer;
     OKDOFComposition:boolean;
     NotRow,NotCol:string;
begin
     TableauDetailListeOperationFormuleComposition.ColCount:=8;
     TableauDetailListeOperationFormuleComposition.Cols[0].Text:='P°';
     TableauDetailListeOperationFormuleComposition.Cols[1].Text:='Code';
     TableauDetailListeOperationFormuleComposition.Cols[2].Text:='Désignation';
     TableauDetailListeOperationFormuleComposition.Cols[3].Text:='Réf';
     TableauDetailListeOperationFormuleComposition.Cols[4].Text:='U.M';
     TableauDetailListeOperationFormuleComposition.Cols[5].Text:='Coût';
     TableauDetailListeOperationFormuleComposition.Cols[6].Text:='Quantité';
     TableauDetailListeOperationFormuleComposition.Cols[7].Text:='Prix';

     TableauDetailListeOperationFormuleComposition.RowCount:=2;
     TableauDetailListeOperationFormuleComposition.Rows[1].Text:='';

     OpenFParc(RParc);
     ChDetailOperationFormuleComposition:=RParc.Parcours+'\'+Exercice+'FDetailOperationFormuleComposition';
     assignfile(FDetailOperationFormuleComposition,ChDetailOperationFormuleComposition);
     if FileExists(ChDetailOperationFormuleComposition)then
     Reset(FDetailOperationFormuleComposition)
     else Rewrite(FDetailOperationFormuleComposition);
     Seek(FDetailOperationFormuleComposition,0);

     R:=0;
     OKDOFComposition:=false;
     while not eof(FDetailOperationFormuleComposition)do
     begin
          Read(FDetailOperationFormuleComposition,RDetailOperationFormuleComposition);

          if(inttostr(RDetailOperationFormuleComposition.PositionOperationFC)=PositionOperationFC)
          then OKDOFComposition:=true
          else OKDOFComposition:=false;

          if(OKDOFComposition=true)then
          begin
               R:=R+1;
               TableauDetailListeOperationFormuleComposition.Rows[R].Text:='';
               TableauDetailListeOperationFormuleComposition.Cells[0,R]:=inttostr(RDetailOperationFormuleComposition.PositionDetailOperationFC);
               TableauDetailListeOperationFormuleComposition.Cells[1,R]:=RDetailOperationFormuleComposition.CodeArticle;
               TableauDetailListeOperationFormuleComposition.Cells[2,R]:=RDetailOperationFormuleComposition.DesignationArticle;
               TableauDetailListeOperationFormuleComposition.Cells[3,R]:=RDetailOperationFormuleComposition.RefArticle;
               TableauDetailListeOperationFormuleComposition.Cells[4,R]:=RDetailOperationFormuleComposition.UMArticle;
               TableauDetailListeOperationFormuleComposition.Cells[5,R]:=floattostr(RDetailOperationFormuleComposition.CoutArticle);
               TableauDetailListeOperationFormuleComposition.Cells[6,R]:=floattostr(RDetailOperationFormuleComposition.QuantiteArticle);
               TableauDetailListeOperationFormuleComposition.Cells[7,R]:=floattostr(RDetailOperationFormuleComposition.PrixArticle);
          end;
     end;

     if(R>0)then TableauDetailListeOperationFormuleComposition.RowCount:=R+1
            else TableauDetailListeOperationFormuleComposition.RowCount:=2;

     NotRow:='';
     NotCol:='5;7';
     for C:=1 to TableauDetailListeOperationFormuleComposition.ColCount-1 do if existenumintexte(inttostr(C),NotCol)then TableauDetailListeOperationFormuleComposition.ColWidths[C]:=0;
     AjusterColWidth(TableauDetailListeOperationFormuleComposition,NotRow,NotCol);
end;

procedure TFSFormuleComposition.TableauListeOperationFormuleCompositionClick(
  Sender: TObject);
begin        
     FSFormuleComposition.AfficheOptionPrint.Height:=25;

     if(FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[0,FSFormuleComposition.TableauListeOperationFormuleComposition.Row]<>'')then
     begin
          FSFormuleComposition.TableauTitreDetailOperationFormuleComposition.Cells[0,0]:='Fiche N° '+
                                                                                         FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[0,FSFormuleComposition.TableauListeOperationFormuleComposition.Row]+': '+
                                                                                         FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[9,FSFormuleComposition.TableauListeOperationFormuleComposition.Row]+' '+
                                                                                         FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[8,FSFormuleComposition.TableauListeOperationFormuleComposition.Row]+' N°'+
                                                                                         FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[4,FSFormuleComposition.TableauListeOperationFormuleComposition.Row]+' du '+
                                                                                         FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[6,FSFormuleComposition.TableauListeOperationFormuleComposition.Row];

          ListeDetailOperationFormuleComposition(FSFormuleComposition.TableauDetailOperationFormuleComposition,FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[0,FSFormuleComposition.TableauListeOperationFormuleComposition.Row]);
     end;
end;

procedure TFSFormuleComposition.BitTruncateOperationFCClick(Sender: TObject);
begin
     if(FSFormuleComposition.EditCodeTrancateOperationFC.Text='000')then
     begin
          FSFormuleComposition.EditCodeTrancateOperationFC.Text:='';

          OpenFParc(RParc);
          ChOperationFormuleComposition:=RParc.Parcours+'\'+Exercice+'FOperationFormuleComposition';
          assignfile(FOperationFormuleComposition,ChOperationFormuleComposition);
          if FileExists(ChOperationFormuleComposition)then
          Reset(FOperationFormuleComposition)
          else Rewrite(FOperationFormuleComposition);
          Seek(FOperationFormuleComposition,0);
          Truncate(FOperationFormuleComposition);

          OpenFParc(RParc);
          ChDetailOperationFormuleComposition:=RParc.Parcours+'\'+Exercice+'FDetailOperationFormuleComposition';
          assignfile(FDetailOperationFormuleComposition,ChDetailOperationFormuleComposition);
          if FileExists(ChDetailOperationFormuleComposition)then
          Reset(FDetailOperationFormuleComposition)
          else Rewrite(FDetailOperationFormuleComposition);
          Seek(FDetailOperationFormuleComposition,0);
          Truncate(FDetailOperationFormuleComposition);

          ListeOperationFormuleComposition(FSFormuleComposition.TableauListeOperationFormuleComposition,'');
          ListeDetailOperationFormuleComposition(FSFormuleComposition.TableauDetailOperationFormuleComposition,FSFormuleComposition.TableauListeOperationFormuleComposition.Cells[0,FSFormuleComposition.TableauListeOperationFormuleComposition.Row]);
     end
     else
     begin
          showmessage('Opération non autorisé !');
          FSFormuleComposition.EditCodeTrancateOperationFC.Text:='';
          FSFormuleComposition.EditCodeTrancateOperationFC.SetFocus;
     end;
end;

procedure TFSFormuleComposition.EditCodeTrancateOperationFCKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if(FSFormuleComposition.EditCodeTrancateOperationFC.Text='000')then
     begin
          FSFormuleComposition.BitTruncateOperationFC.SetFocus;
     end;
end;

procedure TFSFormuleComposition.EditCodeTrancateFormuleCompositionKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if(FSFormuleComposition.EditCodeTrancateFormuleComposition.Text='000')then
     begin
          FSFormuleComposition.BitTruncateFormuleComposition.SetFocus;
     end;
end;

procedure TFSFormuleComposition.AfficheOptionPrintClick(Sender: TObject);
begin
     if(FSFormuleComposition.AfficheOptionPrint.Height=25)
     then FSFormuleComposition.AfficheOptionPrint.Height:=240
     else FSFormuleComposition.AfficheOptionPrint.Height:=25;
end;

procedure TFSFormuleComposition.BitBtn18Click(Sender: TObject);
var  R:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,TypeEtat:string;
begin
     FSFormuleComposition.AfficheOptionPrint.Height:=25;
     
     TitreEtat:='';

     GrasARow:='0';
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0';
     RightARow:='';
     RightACol:='5-8;20;21';

     OptionsImpression(FSFormuleComposition.TableauTitreDetailOperationFormuleComposition,'Center',R,1,TitreEtat,FSFormuleComposition.RBAjustement.Checked,FSFormuleComposition.RBOrientationPapier.Text,'0','0','','','','',false,0,FSMenuPrincipal.ImageCodebarre,true,R);
     OptionsImpression(FSFormuleComposition.TableauDetailOperationFormuleComposition,'Center',R,1,TitreEtat,FSFormuleComposition.RBAjustement.Checked,FSFormuleComposition.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSFormuleComposition.TableauDetailOperationFormuleCompositionClick(
  Sender: TObject);
begin
     FSFormuleComposition.AfficheOptionPrint.Height:=25;
end;

end.
