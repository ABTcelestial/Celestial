unit UnitFSPrestationService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, Buttons, ComCtrls;

type
  TFSPrestationService = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    DataNomEntreprise: TLabel;
    DataAutre1: TLabel;
    DataAutre2: TLabel;
    DataAutre3: TLabel;
    DataAutre4: TLabel;
    DataAutre5: TLabel;
    DataAutre6: TLabel;
    Logo: TImage;
    DataTitreEtat: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    EditFunctionFichierConcerne: TLabel;
    ImageCodebarre: TImage;
    DataNumEtat: TEdit;
    TableauDetailEtat: TStringGrid;
    BitNouvelArticle: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    TableauTotalHT: TStringGrid;
    DtatClient: TMemo;
    EditSignataire: TComboBox;
    EditDateEtat: TDateTimePicker;
    EditChiffreEnLettres: TMemo;
    BitImprimeEtat: TBitBtn;
    AfficheDetailEtat: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel2: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EditCout: TMemo;
    BitBtn1: TBitBtn;
    BitValiderAfficheDetailEtat: TBitBtn;
    EditDesignation: TMemo;
    EditQuantite: TMemo;
    EditPrixUnitaire: TMemo;
    EditMontantHT: TMemo;
    EditCode: TMemo;
    EditUniteMesure: TMemo;
    EditReference: TMemo;
    EditIndiceHeight: TEdit;
    IncrimenteIndiceHeight: TUpDown;
    EditIndiceHeightDouble: TEdit;
    UpDown3: TUpDown;
    EditDesignationMouvement: TEdit;
    TableauValeurParVariable: TStringGrid;
    RBAfficherDetailVariable: TCheckBox;
    EditLongMaxVariable: TEdit;
    MemoValeurParVariable: TMemo;
    RBInclureInfoAvantBasPage: TCheckBox;
    TextInfoAvantBasPage: TMemo;
    RBInclureInfoBasPage: TCheckBox;
    TextInfoBasPage: TMemo;
    TestePrintFacureDinamique: TMemo;
    Panel28: TPanel;
    RadioGroup22: TRadioGroup;
    RBInfoAvantBasPageAucun: TRadioButton;
    RBInfoAvantBasPageAccuseReception: TRadioButton;
    Panel29: TPanel;
    RadioGroup23: TRadioGroup;
    RBInfoBasPageAucun: TRadioButton;
    RBInfoBasPageConditionPaiement: TRadioButton;
    Bevel6: TBevel;
    Bevel7: TBevel;
    RBAfficherDateHeureImpression: TCheckBox;
    RadioGroup1: TRadioGroup;
    RBNumEtatType1: TRadioButton;
    RBNumEtatType2: TRadioButton;
    RBNumEtatType3: TRadioButton;
    RBNumEtatAutomatique: TRadioButton;
    Bevel8: TBevel;
    EditTimeEtat: TDateTimePicker;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitValiderAfficheDetailEtatClick(Sender: TObject);
    procedure TableauDetailEtatClick(Sender: TObject);
    procedure TableauDetailEtatKeyPress(Sender: TObject; var Key: Char);
    procedure BitNouvelArticleClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EditQuantiteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPrixUnitaireKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditQuantiteEnter(Sender: TObject);
    procedure EditPrixUnitaireEnter(Sender: TObject);
    procedure EditQuantiteExit(Sender: TObject);
    procedure EditPrixUnitaireExit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure AfficheDetailEtatMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EditCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDesignationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditQuantiteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditUniteMesureKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPrixUnitaireKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMontantHTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitImprimeEtatClick(Sender: TObject);
    procedure EditReferenceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataNumEtatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBInclureInfoAvantBasPageClick(Sender: TObject);
    procedure RBInclureInfoBasPageClick(Sender: TObject);
    procedure RBInfoAvantBasPageAucunClick(Sender: TObject);
    procedure RBInfoAvantBasPageAccuseReceptionClick(Sender: TObject);
    procedure RBInfoBasPageAucunClick(Sender: TObject);
    procedure RBInfoBasPageConditionPaiementClick(Sender: TObject);
    procedure EditUniteMesureEnter(Sender: TObject);
    procedure BitValiderAfficheDetailEtatKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditQuantiteKeyPress(Sender: TObject; var Key: Char);
    procedure EditPrixUnitaireKeyPress(Sender: TObject; var Key: Char);
    procedure EditCoutKeyPress(Sender: TObject; var Key: Char);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSPrestationService: TFSPrestationService;

  Procedure ProcTotalHT;
  Procedure ImprimerPrestationService(ApercuAvantImpression:boolean);

implementation

uses UnitInitialisation, UnitFSMenuPrincipal, UnitPrintFactureDinamique;

{$R *.dfm}

procedure TFSPrestationService.BitBtn1Click(Sender: TObject);
begin
     FSPrestationService.AfficheDetailEtat.Visible:=false;
end;

procedure TFSPrestationService.BitValiderAfficheDetailEtatClick(Sender: TObject);
var R,C,RSelect:integer;
begin
FSPrestationService.AfficheDetailEtat.Visible:=false;

     if(FSPrestationService.BitValiderAfficheDetailEtat.Caption='Valider')then
     begin
          FSPrestationService.TableauDetailEtat.Cells[0,FSPrestationService.TableauDetailEtat.Row]:=inttostr(FSPrestationService.TableauDetailEtat.Row-5);
          FSPrestationService.TableauDetailEtat.Cells[1,FSPrestationService.TableauDetailEtat.Row]:=FSPrestationService.EditCode.Lines.Text;
          FSPrestationService.TableauDetailEtat.Cells[2,FSPrestationService.TableauDetailEtat.Row]:=FSPrestationService.EditDesignation.Lines.Text;
          FSPrestationService.TableauDetailEtat.Cells[3,FSPrestationService.TableauDetailEtat.Row]:=FSPrestationService.EditReference.Lines.Text;
          FSPrestationService.TableauDetailEtat.Cells[4,FSPrestationService.TableauDetailEtat.Row]:=FSPrestationService.EditUniteMesure.Lines.Text;
          FSPrestationService.TableauDetailEtat.Cells[5,FSPrestationService.TableauDetailEtat.Row]:=FSPrestationService.EditCout.Lines.Text;
          FSPrestationService.TableauDetailEtat.Cells[6,FSPrestationService.TableauDetailEtat.Row]:=FSPrestationService.EditQuantite.Lines.Text;
          FSPrestationService.TableauDetailEtat.Cells[7,FSPrestationService.TableauDetailEtat.Row]:=FSPrestationService.EditPrixUnitaire.Lines.Text;
          FSPrestationService.TableauDetailEtat.Cells[8,FSPrestationService.TableauDetailEtat.Row]:=FSPrestationService.EditMontantHT.Lines.Text;

          FSPrestationService.BitNouvelArticle.SetFocus;
     end;

     if(FSPrestationService.BitValiderAfficheDetailEtat.Caption='Supprimer')then
     begin
          RSelect:=FSPrestationService.TableauDetailEtat.Row;
           if(FSPrestationService.TableauDetailEtat.RowCount>=7)then
           begin
                R:=RSelect;
                FSPrestationService.TableauDetailEtat.Rows[R].Text:='';

                while(R<FSPrestationService.TableauDetailEtat.RowCount-1)do
                begin
                     for C:=0 to FSPrestationService.TableauDetailEtat.ColCount-1 do
                     begin
                          FSPrestationService.TableauDetailEtat.Cells[C,R]:=FSPrestationService.TableauDetailEtat.Cells[C,R+1];
                     end;

                     FSPrestationService.TableauDetailEtat.Rows[R+1].Text:='';
                     R:=R+1;
                end;

                if(FSPrestationService.TableauDetailEtat.RowCount>7)then FSPrestationService.TableauDetailEtat.RowCount:=FSPrestationService.TableauDetailEtat.RowCount-1;
           end;

           if(RSelect<=FSPrestationService.TableauDetailEtat.RowCount-1)then FSPrestationService.TableauDetailEtat.Row:=RSelect;

           FSPrestationService.TableauDetailEtat.SetFocus;
     end;

     AjusterColWidth(FSPrestationService.TableauDetailEtat,'0;1;2;3;4','');

     ProcTotalHT;
end;

procedure TFSPrestationService.TableauDetailEtatClick(Sender: TObject);
begin
     FSPrestationService.AfficheDetailEtat.Visible:=false;
end;

procedure TFSPrestationService.TableauDetailEtatKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in['n','N','+']then
     begin
          FSPrestationService.AfficheDetailEtat.Visible:=true;
          FSPrestationService.BitValiderAfficheDetailEtat.Kind:=bkAll;
          FSPrestationService.BitValiderAfficheDetailEtat.Caption:='Valider';
          FSPrestationService.EditCode.Lines.Text:='';
          FSPrestationService.EditDesignation.Lines.Text:='';
          FSPrestationService.EditReference.Lines.Text:='';
          FSPrestationService.EditUniteMesure.Lines.Text:='';
          FSPrestationService.EditCout.Lines.Text:='';
          FSPrestationService.EditQuantite.Lines.Text:='';
          FSPrestationService.EditPrixUnitaire.Lines.Text:='';
          FSPrestationService.EditMontantHT.Lines.Text:='';

          FSPrestationService.EditCode.SetFocus;

     end;

     if key in['m','M']then
     begin
          FSPrestationService.AfficheDetailEtat.Visible:=true;
          FSPrestationService.BitValiderAfficheDetailEtat.Kind:=bkAll;
          FSPrestationService.BitValiderAfficheDetailEtat.Caption:='Valider';
          FSPrestationService.EditCode.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,FSPrestationService.TableauDetailEtat.Row];
          FSPrestationService.EditDesignation.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,FSPrestationService.TableauDetailEtat.Row];
          FSPrestationService.EditReference.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[3,FSPrestationService.TableauDetailEtat.Row];
          FSPrestationService.EditUniteMesure.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,FSPrestationService.TableauDetailEtat.Row];
          FSPrestationService.EditCout.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[5,FSPrestationService.TableauDetailEtat.Row];
          FSPrestationService.EditQuantite.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,FSPrestationService.TableauDetailEtat.Row];
          FSPrestationService.EditPrixUnitaire.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,FSPrestationService.TableauDetailEtat.Row];
          FSPrestationService.EditMontantHT.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,FSPrestationService.TableauDetailEtat.Row];

          FSPrestationService.EditCode.SetFocus;

     end;

     if key in['s','S','-']then
     begin
          FSPrestationService.AfficheDetailEtat.Visible:=true;
          FSPrestationService.BitValiderAfficheDetailEtat.Kind:=bkCancel;
          FSPrestationService.BitValiderAfficheDetailEtat.Caption:='Supprimer';
          FSPrestationService.EditCode.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,FSPrestationService.TableauDetailEtat.Row];
          FSPrestationService.EditDesignation.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,FSPrestationService.TableauDetailEtat.Row];
          FSPrestationService.EditReference.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[3,FSPrestationService.TableauDetailEtat.Row];
          FSPrestationService.EditUniteMesure.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,FSPrestationService.TableauDetailEtat.Row];
          FSPrestationService.EditCout.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[5,FSPrestationService.TableauDetailEtat.Row];
          FSPrestationService.EditQuantite.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,FSPrestationService.TableauDetailEtat.Row];
          FSPrestationService.EditPrixUnitaire.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,FSPrestationService.TableauDetailEtat.Row];
          FSPrestationService.EditMontantHT.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,FSPrestationService.TableauDetailEtat.Row];

          FSPrestationService.BitValiderAfficheDetailEtat.SetFocus;

     end;
end;

procedure TFSPrestationService.BitNouvelArticleClick(Sender: TObject);
begin
     if(FSPrestationService.TableauDetailEtat.Cells[1,FSPrestationService.TableauDetailEtat.RowCount-1]<>'')then
     begin
          FSPrestationService.TableauDetailEtat.RowCount:=FSPrestationService.TableauDetailEtat.RowCount+1;
     end;

     FSPrestationService.TableauDetailEtat.Row:=FSPrestationService.TableauDetailEtat.RowCount-1;
     FSPrestationService.TableauDetailEtat.Col:=1;
     FSPrestationService.TableauDetailEtat.SetFocus;

     FSPrestationService.AfficheDetailEtat.Visible:=true;
     FSPrestationService.BitValiderAfficheDetailEtat.Kind:=bkAll;
     FSPrestationService.BitValiderAfficheDetailEtat.Caption:='Valider';
     FSPrestationService.EditCode.Lines.Text:='';
     FSPrestationService.EditDesignation.Lines.Text:='';
     FSPrestationService.EditReference.Lines.Text:='';
     FSPrestationService.EditUniteMesure.Lines.Text:='U';
     FSPrestationService.EditCout.Lines.Text:='';
     FSPrestationService.EditQuantite.Lines.Text:='';
     FSPrestationService.EditPrixUnitaire.Lines.Text:='';
     FSPrestationService.EditMontantHT.Lines.Text:='';

     FSPrestationService.EditCode.SetFocus;
end;

procedure TFSPrestationService.BitBtn3Click(Sender: TObject);
begin
     FSPrestationService.AfficheDetailEtat.Visible:=true;
     FSPrestationService.BitValiderAfficheDetailEtat.Kind:=bkCancel;
     FSPrestationService.BitValiderAfficheDetailEtat.Caption:='Supprimer';
     FSPrestationService.EditCode.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,FSPrestationService.TableauDetailEtat.Row];
     FSPrestationService.EditDesignation.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,FSPrestationService.TableauDetailEtat.Row];
     FSPrestationService.EditReference.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[3,FSPrestationService.TableauDetailEtat.Row];
     FSPrestationService.EditUniteMesure.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,FSPrestationService.TableauDetailEtat.Row];
     FSPrestationService.EditCout.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[5,FSPrestationService.TableauDetailEtat.Row];
     FSPrestationService.EditQuantite.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,FSPrestationService.TableauDetailEtat.Row];
     FSPrestationService.EditPrixUnitaire.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,FSPrestationService.TableauDetailEtat.Row];
     FSPrestationService.EditMontantHT.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,FSPrestationService.TableauDetailEtat.Row];

     FSPrestationService.BitValiderAfficheDetailEtat.SetFocus;
end;

procedure TFSPrestationService.EditQuantiteKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     FSPrestationService.EditMontantHT.Text:=Vergule(floattostr(strtoreal(FSPrestationService.EditQuantite.Text)*strtoreal(FSPrestationService.EditPrixUnitaire.Text)),'2','C','');
end;

procedure TFSPrestationService.EditPrixUnitaireKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
          FSPrestationService.EditMontantHT.Text:=Vergule(floattostr(strtoreal(FSPrestationService.EditQuantite.Text)*strtoreal(FSPrestationService.EditPrixUnitaire.Text)),'2','C','');
end;

procedure TFSPrestationService.EditQuantiteEnter(Sender: TObject);
begin
     FSPrestationService.EditQuantite.Text:=floattostr(strtoreal(FSPrestationService.EditQuantite.Text));
     FSPrestationService.EditQuantite.SelectAll;
end;

procedure TFSPrestationService.EditPrixUnitaireEnter(Sender: TObject);
begin
     FSPrestationService.EditPrixUnitaire.Text:=floattostr(strtoreal(FSPrestationService.EditPrixUnitaire.Text));
     FSPrestationService.EditPrixUnitaire.SelectAll;
end;

procedure TFSPrestationService.EditQuantiteExit(Sender: TObject);
begin
     FSPrestationService.EditQuantite.Text:=Vergule(FSPrestationService.EditQuantite.Text,'2','C','');
end;

procedure TFSPrestationService.EditPrixUnitaireExit(Sender: TObject);
begin
     FSPrestationService.EditPrixUnitaire.Text:=Vergule(FSPrestationService.EditPrixUnitaire.Text,'2','C','');
end;

procedure TFSPrestationService.BitBtn4Click(Sender: TObject);
begin
     FSPrestationService.AfficheDetailEtat.Visible:=true;
     FSPrestationService.BitValiderAfficheDetailEtat.Kind:=bkAll;
     FSPrestationService.BitValiderAfficheDetailEtat.Caption:='Valider';
     FSPrestationService.EditCode.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,FSPrestationService.TableauDetailEtat.Row];
     FSPrestationService.EditDesignation.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,FSPrestationService.TableauDetailEtat.Row];
     FSPrestationService.EditReference.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[3,FSPrestationService.TableauDetailEtat.Row];
     FSPrestationService.EditUniteMesure.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,FSPrestationService.TableauDetailEtat.Row];
     FSPrestationService.EditCout.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[5,FSPrestationService.TableauDetailEtat.Row];
     FSPrestationService.EditQuantite.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,FSPrestationService.TableauDetailEtat.Row];
     FSPrestationService.EditPrixUnitaire.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,FSPrestationService.TableauDetailEtat.Row];
     FSPrestationService.EditMontantHT.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,FSPrestationService.TableauDetailEtat.Row];

     FSPrestationService.EditCode.SetFocus;
end;

procedure TFSPrestationService.AfficheDetailEtatMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     DeplacerObjet(Sender);
end;

Procedure ProcTotalHT;
var R:integer; TotalHT:real;
begin
     TotalHT:=0;
     R:=6;
     while(R<=FSPrestationService.TableauDetailEtat.RowCount-1)do
     begin
          TotalHT:=TotalHT+strtoreal(FSPrestationService.TableauDetailEtat.Cells[8,R]);
          R:=R+1;
     end;

     FSPrestationService.TableauTotalHT.Cells[5,1]:=Vergule(floattostr(TotalHT),'2','C','');
     FSPrestationService.EditChiffreEnLettres.Lines.Text:=ChiffreEnLettre(FSPrestationService.TableauTotalHT.Cells[5,1]);

     AjusterColWidth(FSPrestationService.TableauTotalHT,'','0;1;3;4');
end;

Procedure ImprimerPrestationService(ApercuAvantImpression:boolean);
var R,C,l,m,n,NPage,Position,HeightRow,HeightMax:integer; Ligne:char; OK,OKAvis,OKHeightMax:boolean; Origine,ModePaiement,Domiciliation,NumPiece:string;
    TableIndexCol:TableIndexCols;
begin
ModePaiement:='';
NumPiece:='';
Domiciliation:='';

OKAvis:=false;

PrintFactureDinamique.DataDateHeureImpression.Enabled:=FSPrestationService.RBAfficherDateHeureImpression.Checked;

PrintFactureDinamique.DataPayement.Lines.Text:=ModePaiement+' '+Domiciliation+' N°: '+NumPiece;

PrintFactureDinamique.Projet.Caption:='';
PrintFactureDinamique.DataProjet.Lines.Text:='';

R:=6;
OK:=false;
while(R<=FSPrestationService.TableauDetailEtat.RowCount-1)and(OK=false)do
begin
     if(FSPrestationService.TableauDetailEtat.Cells[1,R]='')
     then
     begin
          OK:=true;
          showmessage('Veuillez enregistrer les modifications avant l''impression SVP !');
     end;
     R:=R+1;
end;

if(OK=false)
and(FSPrestationService.DataNumEtat.Text<>'')then
begin
Division(FSPrestationService.TableauDetailEtat.RowCount-5,18,NPage,m);
if(m>0)then NPage:=NPage+1;
{*******************Entreprise***************}
PrintFactureDinamique.DataNomEntreprise.Caption:=FSPrestationService.DataNomEntreprise.Caption;
PrintFactureDinamique.DataEntreprise.Lines.Text:='';
if(FSPrestationService.DataAutre1.Caption<>'..........')then PrintFactureDinamique.DataEntreprise.Lines.Add(FSPrestationService.DataAutre1.Caption);
if(FSPrestationService.DataAutre2.Caption<>'..........')then PrintFactureDinamique.DataEntreprise.Lines.Add(FSPrestationService.DataAutre2.Caption);
if(FSPrestationService.DataAutre3.Caption<>'..........')then PrintFactureDinamique.DataEntreprise.Lines.Add(FSPrestationService.DataAutre3.Caption);
if(FSPrestationService.DataAutre4.Caption<>'..........')then PrintFactureDinamique.DataEntreprise.Lines.Add(FSPrestationService.DataAutre4.Caption);
if(FSPrestationService.DataAutre5.Caption<>'..........')then PrintFactureDinamique.DataEntreprise.Lines.Add(FSPrestationService.DataAutre5.Caption);
if(FSPrestationService.DataAutre6.Caption<>'..........')then PrintFactureDinamique.DataEntreprise.Lines.Add(FSPrestationService.DataAutre6.Caption);
{***************Fin Entreprise***************}

{***************Tiers***************}
PrintFactureDinamique.TitreTiers.Caption:=lastlaters(FSPrestationService.EditFunctionFichierConcerne.Caption,longueur(FSPrestationService.EditFunctionFichierConcerne.Caption)-1);
PrintFactureDinamique.DataTiers.Lines.Text:=FSPrestationService.DtatClient.Lines.Text;
{***************Fin Tiers***************}

PrintFactureDinamique.TitreSignataire.Caption:=FSPrestationService.EditSignataire.Text;
//PrintFactureDinamique.ImageCodebarre.Width:=FSPrestationService.ImageCodebarre.Width;
//PrintFactureDinamique.ImageCodebarre.Height:=FSPrestationService.ImageCodebarre.Height;
PrintFactureDinamique.ImageCodebarre.Picture:=FSPrestationService.ImageCodebarre.Picture;


if(FSPrestationService.RBNumEtatAutomatique.Checked=true)then
begin
     PrintFactureDinamique.DataTitreEtat.Caption:=FSPrestationService.DataTitreEtat.Caption+': A'+
                                                  FSPrestationService.DataNumEtat.Text;
end
else
if(FSPrestationService.RBNumEtatType1.Checked=true)then
begin
     PrintFactureDinamique.DataTitreEtat.Caption:=FSPrestationService.DataTitreEtat.Caption+': '+
     CompleteZeroGauche(FSPrestationService.DataNumEtat.Text,'7');
end
else
if(FSPrestationService.RBNumEtatType2.Checked=true)then
begin
     PrintFactureDinamique.DataTitreEtat.Caption:=FSPrestationService.DataTitreEtat.Caption+': '+
     Midellaters(datetostr(FSPrestationService.EditDateEtat.Date),9,10)+'-'+
     CompleteZeroGauche(FSPrestationService.DataNumEtat.Text,'5');
end
else
if(FSPrestationService.RBNumEtatType3.Checked=true)then
begin
     PrintFactureDinamique.DataTitreEtat.Caption:=FSPrestationService.DataTitreEtat.Caption+': '+
     Midellaters(datetostr(FSPrestationService.EditDateEtat.Date),7,10)+'-'+
     CompleteZeroGauche(FSPrestationService.DataNumEtat.Text,'3');
end
else
begin
     PrintFactureDinamique.DataTitreEtat.Caption:=FSPrestationService.DataTitreEtat.Caption+': '+
     CompleteZeroGauche(FSPrestationService.DataNumEtat.Text,'7');
end;

PrintFactureDinamique.DataDateEtat.Caption:='Date: '+datetostr(FSPrestationService.EditDateEtat.Date);

PrintFactureDinamique.Logo.Picture:=FSPrestationService.Logo.Picture;

InitialisationPrintFactureDinamique;

for Ligne:='A' to 'R' do EnableRow(false,Ligne);

for C:=-6 to 9 do
begin
     TableIndexCol[C].NumCols:=0;
     TableIndexCol[C].Widths:=0;
end;


TableIndexCol[-6].NumCols:=1;
TableIndexCol[-5].NumCols:=2;
TableIndexCol[-4].NumCols:=4;
TableIndexCol[-3].NumCols:=6;
TableIndexCol[-2].NumCols:=7;
TableIndexCol[-1].NumCols:=8;

C:=9;
l:=0;
while C<=FSPrestationService.TableauDetailEtat.ColCount-1 do
begin
     if(FSPrestationService.TableauDetailEtat.ColWidths[C]>10)then
     begin
          TableIndexCol[l].NumCols:=C;
          l:=l+1;
     end;
C:=C+1;
end;

ColWidthsFactureDinamique(FSPrestationService.TableauDetailEtat,TableIndexCol);
FSPrestationService.TestePrintFacureDinamique.Width:=MaxInt(ValeAbsolue(PrintFactureDinamique.CadreDataDesign.Width*70/100),100);

PrintFactureDinamique.Code.Caption:='';//FSPrestationService.TableauDetailEtat.Cells[1,5];//'Code';
PrintFactureDinamique.Design.Caption:='';//FSPrestationService.TableauDetailEtat.Cells[2,5];//'Désignation';
//PrintFactureDinamique.     .Caption:='';//FSPrestationService.TableauDetailEtat.Cells[3,5];//'Référence';
PrintFactureDinamique.UM.Caption:='';//FSPrestationService.TableauDetailEtat.Cells[4,5];//'U.M';
//PrintFactureDinamique.  .Caption:='';//FSPrestationService.TableauDetailEtat.Cells[5,5];//'Coût';
PrintFactureDinamique.Qte.Caption:='';//FSPrestationService.TableauDetailEtat.Cells[6,5];//'Qte.';
PrintFactureDinamique.PUHT.Caption:='';//FSPrestationService.TableauDetailEtat.Cells[7,5];//'PUHT';
PrintFactureDinamique.MHT.Caption:='';//FSPrestationService.TableauDetailEtat.Cells[8,5];//'M.HT';

PrintFactureDinamique.Formule0.Caption:='';
PrintFactureDinamique.Formule1.Caption:='';
PrintFactureDinamique.Formule2.Caption:='';
PrintFactureDinamique.Formule3.Caption:='';
PrintFactureDinamique.Formule4.Caption:='';
PrintFactureDinamique.Formule5.Caption:='';
PrintFactureDinamique.Formule6.Caption:='';
PrintFactureDinamique.Formule7.Caption:='';
PrintFactureDinamique.Formule8.Caption:='';
PrintFactureDinamique.Formule9.Caption:='';

for C:=-6 to 9 do
begin
     EnableCadreCol(false,C);

     if(TableIndexCol[C].NumCols<>0)then
     begin
          EnableCadreCol(true,C);

          if(C=-6)then//'Code';
          begin
               PrintFactureDinamique.Code.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=-5)then//'Désignation';
          begin
               PrintFactureDinamique.Design.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=-4)then//'UM';
          begin
               PrintFactureDinamique.UM.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=-3)then//'Qte';
          begin
               PrintFactureDinamique.Qte.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=-2)then//'PUHT';
          begin
               PrintFactureDinamique.PUHT.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=-1)then//'MHT';
          begin
               PrintFactureDinamique.MHT.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=0)then//'Formule 0';
          begin
               PrintFactureDinamique.Formule0.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=1)then//'Formule 1';
          begin
               PrintFactureDinamique.Formule1.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=2)then//'Formule 2';
          begin
               PrintFactureDinamique.Formule2.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=3)then//'Formule 3';
          begin
               PrintFactureDinamique.Formule3.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=4)then//'Formule 4';
          begin
               PrintFactureDinamique.Formule4.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=5)then//'Formule 5';
          begin
               PrintFactureDinamique.Formule5.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=6)then//'Formule 6';
          begin
               PrintFactureDinamique.Formule6.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=7)then//'Formule 7';
          begin
               PrintFactureDinamique.Formule7.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=8)then//'Formule 8';
          begin
               PrintFactureDinamique.Formule8.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;

          if(C=9)then//'Formule 9';
          begin
               PrintFactureDinamique.Formule9.Caption:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[C].NumCols,5];
          end;
     end;
end;

for l:=1 to 18 do ClearFactureDinamique(l,false);

HeightMax:=630;
Position:=58;
              
R:=6;
m:=1;
l:=0;
while(R<=FSPrestationService.TableauDetailEtat.RowCount-1)do
begin
     FSPrestationService.TestePrintFacureDinamique.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
     HeightRow:=FSPrestationService.TestePrintFacureDinamique.Lines.Count*strtointeger(FSPrestationService.EditIndiceHeight.Text);
     OKHeightMax:=true;
     if((Position+HeightRow)<HeightMax)then
     begin
          l:=l+1;
          OKHeightMax:=false;
          ClearFactureDinamique(l,true);
          //InitialisationSituation(R,l);

           if(l=1)then
           begin
                EnableRow(true,'A');

                PrintFactureDinamique.Code_A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9A.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=2)then
           begin
                EnableRow(true,'B');

                PrintFactureDinamique.Code_B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9B.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=3)then
           begin
                EnableRow(true,'C');

                PrintFactureDinamique.Code_C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9C.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=4)then
           begin
                EnableRow(true,'D');

                PrintFactureDinamique.Code_D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9D.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=5)then
           begin
                EnableRow(true,'E');

                PrintFactureDinamique.Code_E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9E.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=6)then
           begin
                EnableRow(true,'F');

                PrintFactureDinamique.Code_F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9F.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=7)then
           begin
                EnableRow(true,'G');

                PrintFactureDinamique.Code_G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9G.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=8)then
           begin
                EnableRow(true,'H');

                PrintFactureDinamique.Code_H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9H.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=9)then
           begin
                EnableRow(true,'I');

                PrintFactureDinamique.Code_I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9I.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=10)then
           begin
                EnableRow(true,'J');

                PrintFactureDinamique.Code_J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9J.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=11)then
           begin
                EnableRow(true,'K');

                PrintFactureDinamique.Code_K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9K.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=12)then
           begin
                EnableRow(true,'L');

                PrintFactureDinamique.Code_L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9L.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=13)then
           begin
                EnableRow(true,'M');

                PrintFactureDinamique.Code_M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9M.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=14)then
           begin
                EnableRow(true,'N');

                PrintFactureDinamique.Code_N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9N.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=15)then
           begin
                EnableRow(true,'O');

                PrintFactureDinamique.Code_O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9O.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=16)then
           begin
                EnableRow(true,'P');

                PrintFactureDinamique.Code_P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9P.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=17)then
           begin
                EnableRow(true,'Q');

                PrintFactureDinamique.Code_Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9Q.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

           if(l=18)then
           begin
                EnableRow(true,'R');

                PrintFactureDinamique.Code_R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[1,R];
                PrintFactureDinamique.Design_R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[2,R]+' '+FSPrestationService.TableauDetailEtat.Cells[3,R];
                PrintFactureDinamique.UM_R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[4,R];
                PrintFactureDinamique.Qte_R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[6,R];
                PrintFactureDinamique.PUHT_R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[7,R];
                PrintFactureDinamique.MHT_R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[8,R];
                if(TableIndexCol[0].NumCols>0)then PrintFactureDinamique.Formule_0R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[0].NumCols,R];
                if(TableIndexCol[1].NumCols>0)then PrintFactureDinamique.Formule_1R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[1].NumCols,R];
                if(TableIndexCol[2].NumCols>0)then PrintFactureDinamique.Formule_2R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[2].NumCols,R];
                if(TableIndexCol[3].NumCols>0)then PrintFactureDinamique.Formule_3R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[3].NumCols,R];
                if(TableIndexCol[4].NumCols>0)then PrintFactureDinamique.Formule_4R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[4].NumCols,R];
                if(TableIndexCol[5].NumCols>0)then PrintFactureDinamique.Formule_5R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[5].NumCols,R];
                if(TableIndexCol[6].NumCols>0)then PrintFactureDinamique.Formule_6R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[6].NumCols,R];
                if(TableIndexCol[7].NumCols>0)then PrintFactureDinamique.Formule_7R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[7].NumCols,R];
                if(TableIndexCol[8].NumCols>0)then PrintFactureDinamique.Formule_8R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[8].NumCols,R];
                if(TableIndexCol[9].NumCols>0)then PrintFactureDinamique.Formule_9R.Lines.Text:=FSPrestationService.TableauDetailEtat.Cells[TableIndexCol[9].NumCols,R];
           end;

     HeightFactureDinamique(l,Position);
     end
     else R:=R-1;

     if(l=18)or(R=FSPrestationService.TableauDetailEtat.RowCount-1)or(OKHeightMax=true)then
     begin

          if(R>=FSPrestationService.TableauDetailEtat.RowCount-1)then
          begin
                l:=1;
                n:=0;
                while(l<=FSPrestationService.TableauTotalHT.RowCount)do
                begin
                     if(FSPrestationService.TableauTotalHT.RowHeights[l]>10)then
                     begin
                          n:=n+1;
                          PrintFactureDinamique.TitreDataTauto.Lines.Add(FSPrestationService.TableauTotalHT.Cells[2,l]);
                          PrintFactureDinamique.DataTauto.Lines.Add(FSPrestationService.TableauTotalHT.Cells[5,l]);
                     end;
                l:=l+1;
                end;

                PrintFactureDinamique.TitreDataTauto.Height:=n*21;
                PrintFactureDinamique.DataTauto.Height:=PrintFactureDinamique.TitreDataTauto.Height;

                PrintFactureDinamique.CadreDatatTauto.Height:=21+(n*21);
                PrintFactureDinamique.TextArreteeLaFacture.Enabled:=true;
                PrintFactureDinamique.TextChiffreenLettre.Enabled:=true;

                PrintFactureDinamique.TitreSignataire.Top:=PrintFactureDinamique.CadreDatatTauto.Top+PrintFactureDinamique.CadreDatatTauto.Height+35;
                PrintFactureDinamique.BasTT3.Top:=PrintFactureDinamique.TitreSignataire.Top+PrintFactureDinamique.TitreSignataire.Height+3;
                PrintFactureDinamique.PageASuivre.Top:=PrintFactureDinamique.TitreSignataire.Top;

                if(AnsiUpperCase(Firstlaters(FSPrestationService.EditDesignationMouvement.Text,7))='FACTURE')
                or(AnsiUpperCase(Firstlaters(FSPrestationService.EditDesignationMouvement.Text,9))='SITUATION')
                or(AnsiUpperCase(Firstlaters(FSPrestationService.EditDesignationMouvement.Text,5))='VENTE')
                or(AnsiUpperCase(Firstlaters(FSPrestationService.EditDesignationMouvement.Text,5))='FICHE')
                or(AnsiUpperCase(Firstlaters(FSPrestationService.EditDesignationMouvement.Text,10))='PRESTATION')
                then PrintFactureDinamique.TextArreteeLaFacture.Lines.Text:='Arrêter la présente '+AnsiLowerCase(FSPrestationService.EditDesignationMouvement.Text)+' à la somme de :'
                else PrintFactureDinamique.TextArreteeLaFacture.Lines.Text:='Arrêter le présent '+AnsiLowerCase(FSPrestationService.EditDesignationMouvement.Text)+' à la somme de :';

                PrintFactureDinamique.TextArreteeLaFacture.Width:=MinInt(650,PrintFactureDinamique.CadreDatatTauto.Left-50);
                PrintFactureDinamique.TextChiffreenLettre.Width:=PrintFactureDinamique.TextArreteeLaFacture.Width;

                PrintFactureDinamique.TextChiffreenLettre.Lines.Text:=FSPrestationService.EditChiffreEnLettres.Lines.Text;
                PrintFactureDinamique.TextChiffreenLettre.Height:=PrintFactureDinamique.TextChiffreenLettre.Lines.Capacity*50;


                if(strtointeger(FSPrestationService.TableauValeurParVariable.Cells[0,0])>0)and(FSPrestationService.RBAfficherDetailVariable.Checked=true)then
                begin
                     PrintFactureDinamique.CadreTextDetailVariable.Width:=(strtointeger(FSPrestationService.EditLongMaxVariable.Text)*13)+18;
                     PrintFactureDinamique.CadreTextDetailVariable.Top:=PrintFactureDinamique.TextChiffreenLettre.Top+PrintFactureDinamique.TextChiffreenLettre.Height+50;

                     PrintFactureDinamique.TextDetailVariable.Enabled:=true;
                     PrintFactureDinamique.TextDetailVariable.Width:=strtointeger(FSPrestationService.EditLongMaxVariable.Text)*13;
                     PrintFactureDinamique.TextDetailVariable.Top:=PrintFactureDinamique.CadreTextDetailVariable.Top+9;
                     PrintFactureDinamique.TextDetailVariable.Lines.Text:=FSPrestationService.MemoValeurParVariable.Lines.Text;
                     PrintFactureDinamique.TextDetailVariable.Height:=PrintFactureDinamique.TextDetailVariable.Lines.Capacity*21;

                     PrintFactureDinamique.CadreTextDetailVariable.Height:=PrintFactureDinamique.TextDetailVariable.Height+18;
                end;

                if(FSPrestationService.RBInclureInfoAvantBasPage.Checked=true)then
                begin
                     if(strtointeger(FSPrestationService.TableauValeurParVariable.Cells[0,0])>0)and(FSPrestationService.RBAfficherDetailVariable.Checked=true)then
                     begin
                          PrintFactureDinamique.TextInfoAvantBasPage.Top:=PrintFactureDinamique.CadreTextDetailVariable.Top+PrintFactureDinamique.CadreTextDetailVariable.Height+50;
                     end
                     else
                     begin
                          PrintFactureDinamique.TextInfoAvantBasPage.Top:=PrintFactureDinamique.TextChiffreenLettre.Top+PrintFactureDinamique.TextChiffreenLettre.Height+50;
                     end;

                     PrintFactureDinamique.TextInfoAvantBasPage.Enabled:=true;
                     PrintFactureDinamique.TextInfoAvantBasPage.Lines.Text:=FSPrestationService.TextInfoAvantBasPage.Lines.Text;
                end
                else
                begin
                     PrintFactureDinamique.TextInfoAvantBasPage.Lines.Text:='';
                     PrintFactureDinamique.TextInfoAvantBasPage.Enabled:=false;
                end;

                if(FSPrestationService.RBInclureInfoBasPage.Checked=true)then
                begin
                     PrintFactureDinamique.CadreTextInfoBasPage.Top:=PrintFactureDinamique.SupportEtat.Height-PrintFactureDinamique.CadreTextInfoBasPage.Height-5;
                     PrintFactureDinamique.TextInfoBasPage.Top:=PrintFactureDinamique.CadreTextInfoBasPage.Top+10;
                     PrintFactureDinamique.TextInfoBasPage.Left:=PrintFactureDinamique.CadreTextInfoBasPage.Left+7;

                     PrintFactureDinamique.CadreTextInfoBasPage.Enabled:=true;
                     PrintFactureDinamique.TextInfoBasPage.Enabled:=true;
                     PrintFactureDinamique.TextInfoBasPage.Lines.Text:=FSPrestationService.TextInfoBasPage.Lines.Text;
                end
                else
                begin
                     PrintFactureDinamique.TextInfoBasPage.Lines.Text:='';
                     PrintFactureDinamique.CadreTextInfoBasPage.Enabled:=false;
                     PrintFactureDinamique.TextInfoBasPage.Enabled:=false;
                end;

                PrintFactureDinamique.PageASuivre.Caption:='Fin.';

                PrintFactureDinamique.PageSuite.Caption:='Page: '+inttostr(m)+' et Fin';
          end
          else
          begin
               PrintFactureDinamique.CadreDatatTauto.Height:=50;
               PrintFactureDinamique.TitreDataTauto.Height:=30;
               PrintFactureDinamique.DataTauto.Height:=30;

               PrintFactureDinamique.DataTauto.Lines.Text:='A suivre ...';
               PrintFactureDinamique.PageASuivre.Caption:='A suivre Page: '+inttostr(m+1);

               PrintFactureDinamique.TitreSignataire.Top:=PrintFactureDinamique.CadreDatatTauto.Top+PrintFactureDinamique.CadreDatatTauto.Height+35;
               PrintFactureDinamique.BasTT3.Top:=PrintFactureDinamique.TitreSignataire.Top+PrintFactureDinamique.TitreSignataire.Height+3;
               PrintFactureDinamique.PageASuivre.Top:=PrintFactureDinamique.TitreSignataire.Top;

               PrintFactureDinamique.PageSuite.Caption:='Page: '+inttostr(m)+' à suivre';
          end;

          if(ApercuAvantImpression=true)
          then PrintFactureDinamique.Preview
          else PrintFactureDinamique.Print;

          l:=0;
          for n:=(R+1)to MinInt((R+18),FSPrestationService.TableauDetailEtat.RowCount-1)do
          begin
               l:=l+1;
               //InitialisationSituation(n,l);
          end;

          for l:=1 to 18 do ClearFactureDinamique(l,false);

          Position:=58;
          m:=m+1;
          l:=0;
          InitialisationPrintFactureDinamique;
     end;
R:=R+1;
end;

end;

end;

procedure TFSPrestationService.EditCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrestationService.EditDesignation.SetFocus;
     end;
end;

procedure TFSPrestationService.EditDesignationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_DOWN,VK_ESCAPE,VK_SHIFT]then
     begin
          FSPrestationService.EditReference.SetFocus;
     end;

     if key in[VK_UP]then
     begin
          FSPrestationService.EditCode.SetFocus;
     end;
end;

procedure TFSPrestationService.EditQuantiteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrestationService.EditPrixUnitaire.SetFocus;
     end;

     if key in[VK_UP]then
     begin
          FSPrestationService.EditUniteMesure.SetFocus;
     end;
end;

procedure TFSPrestationService.EditUniteMesureKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrestationService.EditQuantite.SetFocus;
     end;

     if key in[VK_UP]then
     begin
          FSPrestationService.EditReference.SetFocus;
     end;
end;

procedure TFSPrestationService.EditPrixUnitaireKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrestationService.EditMontantHT.SetFocus;
     end;

     if key in[VK_UP]then
     begin
          FSPrestationService.EditQuantite.SetFocus;
     end;
end;

procedure TFSPrestationService.EditMontantHTKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrestationService.BitValiderAfficheDetailEtat.SetFocus;
     end;

     if key in[VK_UP]then
     begin
          FSPrestationService.EditPrixUnitaire.SetFocus;
     end;
end;

procedure TFSPrestationService.BitImprimeEtatClick(Sender: TObject);
begin
     ImprimerPrestationService(True);
end;

procedure TFSPrestationService.EditReferenceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrestationService.EditUniteMesure.SetFocus;
     end;

     if key in[VK_UP]then
     begin
          FSPrestationService.EditDesignation.SetFocus;
     end;
end;

procedure TFSPrestationService.DataNumEtatKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSPrestationService.BitNouvelArticle.SetFocus;
     end;
end;

procedure TFSPrestationService.RBInclureInfoAvantBasPageClick(
  Sender: TObject);
begin
     FSPrestationService.TextInfoAvantBasPage.Enabled:=FSPrestationService.RBInclureInfoAvantBasPage.Checked;
end;

procedure TFSPrestationService.RBInclureInfoBasPageClick(Sender: TObject);
begin
     FSPrestationService.TextInfoBasPage.Enabled:=FSPrestationService.RBInclureInfoBasPage.Checked;
end;

procedure TFSPrestationService.RBInfoAvantBasPageAucunClick(
  Sender: TObject);
begin
     FSPrestationService.TextInfoAvantBasPage.Lines.Text:='';
end;

procedure TFSPrestationService.RBInfoAvantBasPageAccuseReceptionClick(
  Sender: TObject);
begin
     FSPrestationService.TextInfoAvantBasPage.Lines.Text:='';
     FSPrestationService.TextInfoAvantBasPage.Lines.Add('Accusé de réception');
     FSPrestationService.TextInfoAvantBasPage.Lines.Add('Service fais');
end;

procedure TFSPrestationService.RBInfoBasPageAucunClick(Sender: TObject);
begin
     FSPrestationService.TextInfoBasPage.Lines.Text:='';
end;

procedure TFSPrestationService.RBInfoBasPageConditionPaiementClick(
  Sender: TObject);
begin
     FSPrestationService.TextInfoBasPage.Lines.Text:='                                                                                                Veuillez prendre note:';
     FSPrestationService.TextInfoBasPage.Lines.Add('Les sommes dues seront facturées et réglées à la réception de la Facture. Le Client disposera d''un délai de 30 jours pour s''aquitter de sa dette.');
     FSPrestationService.TextInfoBasPage.Lines.Add('Toute facturation non contestée dans un délai de trois (03) jours, à compter de sa date d''envoi, sera réputée conforme et acceptée par le Client.');
     FSPrestationService.TextInfoBasPage.Lines.Add('En cas de non paiement dans le délai ci-dessus, le Prestataire est en droit de réclamer un taux d''intérêt basé sur le taux débiteur bancaire appliqué à son compte courant par une banque de la place de son choix.');
end;

procedure TFSPrestationService.EditUniteMesureEnter(Sender: TObject);
begin
     FSPrestationService.EditUniteMesure.SelectAll;
end;

procedure TFSPrestationService.BitValiderAfficheDetailEtatKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_UP]then
     begin
          FSPrestationService.EditMontantHT.SetFocus;
     end;

     if key in[VK_DOWN]then
     begin
          FSPrestationService.EditCode.SetFocus;
     end;
end;

procedure TFSPrestationService.EditQuantiteKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in['.',',',';',':','/','?']then key:=decimalseparator;
     if(not (key in['0'..'9',decimalseparator,'-','+']))
     or((key=decimalseparator)and(ExisteCharInString(decimalseparator,FSPrestationService.EditQuantite.Text)))
     then key:=#0;
end;

procedure TFSPrestationService.EditPrixUnitaireKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in['.',',',';',':','/','?']then key:=decimalseparator;
     if(not (key in['0'..'9',decimalseparator,'-','+']))
     or((key=decimalseparator)and(ExisteCharInString(decimalseparator,FSPrestationService.EditPrixUnitaire.Text)))
     then key:=#0;
end;

procedure TFSPrestationService.EditCoutKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in['.',',',';',':','/','?']then key:=decimalseparator;
     if(not (key in['0'..'9',decimalseparator,'-','+']))
     or((key=decimalseparator)and(ExisteCharInString(decimalseparator,FSPrestationService.EditCout.Text)))
     then key:=#0;
end;

end.
