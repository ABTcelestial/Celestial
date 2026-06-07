unit UnitFSApprovisionnement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, Buttons, ComCtrls;

type
  TFSApprovisionnement = class(TForm)
    Panel1: TPanel;
    TableauApprovisionnement: TStringGrid;
    Bevel1: TBevel;
    BitBtn2: TBitBtn;
    Bevel2: TBevel;
    EditNSMarche: TEdit;
    EditNStructure: TEdit;
    EditNAvenant: TEdit;
    EditMarche: TEdit;
    EditStructure: TEdit;
    EditAvenant: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditDateApprovisionnement: TDateTimePicker;
    Label5: TLabel;
    AfficheOptionPrintApprovisionnement: TPanel;
    RadioGroup1: TRadioGroup;
    BitBtn3: TBitBtn;
    RBBonCommande: TRadioButton;
    RBListeApprovisionnement: TRadioButton;
    AfficheFournisseur: TPanel;
    Bevel5: TBevel;
    TableauFournisseur: TStringGrid;
    BitBtn8: TBitBtn;
    TableauCommandeFornisseurs: TStringGrid;
    AfficheOperationsApp: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitOption3: TBitBtn;
    BitBtn5: TBitBtn;
    Bevel3: TBevel;
    BitBtn6: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure TableauApprovisionnementContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure TableauFournisseurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure TableauApprovisionnementClick(Sender: TObject);
    procedure TableauCommandeFornisseursClick(Sender: TObject);
    procedure BitOption3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure TableauCommandeFornisseursDblClick(Sender: TObject);
    procedure TableauApprovisionnementKeyPress(Sender: TObject;
      var Key: Char);
    procedure TableauApprovisionnementKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauApprovisionnementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSApprovisionnement: TFSApprovisionnement;

implementation

uses UnitInitialisation, UnitPrintBonQuantitatif;

var

   TMarche:TMarches;
   RMarche:RMarches;
   FMarche:FMarches;
   ChMarche:string250;

   TStructureMarche:TStructureMarches;
   RStructureMarche:RStructureMarches;
   FStructureMarche:FStructureMarches;
   ChStructureMarche:string250;

   TStatistiqueMarche:TStatistiqueMarches;
   RStatistiqueMarche:RStatistiqueMarches;
   FStatistiqueMarche:FStatistiqueMarches;
   ChStatistiqueMarche:string250;

   RParc:RInstalle;
   FParc:FInstalle;
   ParcInstalle:string250;

   TFournisseur:TFournisseurs;
   RFournisseur:RFournisseurs;
   FFournisseur:FFournisseurs;
   ChFournisseur:string250;

       ChStock:string250;
       FStock:FStocks;
       RStock:RStocks;
       RStockCopie:RStocks;
       TStock:TStocks;

       TFormule:TFormules;
       RFormule:RFormules;
       FFormule:FFormules;
       FFormuleCopie:FFormules;
       ChFormule:string250;

{$R *.dfm}

procedure TFSApprovisionnement.BitBtn2Click(Sender: TObject);
begin
FSApprovisionnement.AfficheFournisseur.Visible:=false;
FSApprovisionnement.AfficheOptionPrintApprovisionnement.Visible:=false;
FSApprovisionnement.AfficheOperationsApp.Height:=41;
FSApprovisionnement.TableauCommandeFornisseurs.Height:=43;
FSApprovisionnement.Close;
end;

procedure TFSApprovisionnement.BitBtn1Click(Sender: TObject);
begin
FSApprovisionnement.AfficheOperationsApp.Height:=41;

FSApprovisionnement.AfficheOptionPrintApprovisionnement.Visible:=true;
FSApprovisionnement.RBListeApprovisionnement.Checked:=true;
FSApprovisionnement.RBListeApprovisionnement.SetFocus;
end;

procedure TFSApprovisionnement.BitBtn3Click(Sender: TObject);
var R,l,m,NPage:integer; OK:boolean; Num,TypeProces,FichierConcerne:string; 
begin
PrintBonQuantitatif.Total.Enabled:=false;
PrintBonQuantitatif.TitreTotal.Enabled:=false;
PrintBonQuantitatif.CTotal.Enabled:=false;
PrintBonQuantitatif.CTitreTotal.Enabled:=false;
PrintBonQuantitatif.TitreSoit.Enabled:=false;
PrintBonQuantitatif.TotalEnLettre.Enabled:=false;

R:=1;
OK:=false;
while(R<=FSApprovisionnement.TableauApprovisionnement.RowCount-3)and(OK=false)do
begin
     if(FSApprovisionnement.TableauApprovisionnement.Cells[7,R]='OK')
     then
     begin
          OK:=true;
     end;
     R:=R+1;
end;

if(OK=true)then
begin

if(FSApprovisionnement.RBBonCommande.Checked=true)then
begin
Division(FSApprovisionnement.TableauApprovisionnement.RowCount-1,20,NPage,m);
if(m>0)then NPage:=NPage+1;
{*******************Entreprise***************}
OpenFParc(RParc);
PrintBonQuantitatif.TextEntreprise.Caption:=RParc.Text1;

PrintBonQuantitatif.DataEntreprise.Lines.Text:='';
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text2);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text3);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text4);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text5);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text6);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text7);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text8);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text9);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text10);
{***************Fin Entreprise***************}

{***************Fournisseur***************}
PrintBonQuantitatif.TitreFournisseur.Caption:='Fournisseur';
RTiers:=ChercherFournisseur(FSApprovisionnement.TableauCommandeFornisseurs.Cells[2,FSApprovisionnement.TableauCommandeFornisseurs.Row]);

PrintBonQuantitatif.DataTiers.Lines.Text:='';
PrintBonQuantitatif.DataTiers.Lines.Add(RFournisseur.Nom+' '+RFournisseur.Prenom);
PrintBonQuantitatif.DataTiers.Lines.Add(RFournisseur.Adresse);
PrintBonQuantitatif.DataTiers.Lines.Add(RFournisseur.Autre1);
PrintBonQuantitatif.DataTiers.Lines.Add(RFournisseur.Autre2);
PrintBonQuantitatif.DataTiers.Lines.Add(RFournisseur.Autre3);
PrintBonQuantitatif.DataTiers.Lines.Add(RFournisseur.Autre4);
PrintBonQuantitatif.DataTiers.Lines.Add(RFournisseur.Autre5);
PrintBonQuantitatif.DataTiers.Lines.Add(RFournisseur.Autre6);
{***************Fin Fournisseur***************}

PrintBonQuantitatif.EnteteTitre.Caption:='Bon de Commande N°: '+Completezerogauche(FSApprovisionnement.TableauCommandeFornisseurs.Cells[0,FSApprovisionnement.TableauCommandeFornisseurs.Row],'2');
PrintBonQuantitatif.TextDate.Caption:='Date: '+datetostr(FSApprovisionnement.EditDateApprovisionnement.Date);
InitialisationPrintBCQ;

if(FSApprovisionnement.RBBonCommande.Checked=true)then
begin
     PrintBonQuantitatif.TitreNum.Caption:='N° Or.';
     PrintBonQuantitatif.TitreDesignation.Caption:='DESIGNATION';
     PrintBonQuantitatif.TitreRef.Caption:='UM';
     PrintBonQuantitatif.TitreQuantiteProduit.Caption:='QUANTITES';
     PrintBonQuantitatif.TitreQteDemandee.Caption:='Demandées';
     PrintBonQuantitatif.TitreQteRecue.Caption:='Reçues';
     PrintBonQuantitatif.TitreObservation.Caption:='OBSERVATIONS';
end;
if(FSApprovisionnement.RBListeApprovisionnement.Checked=true)then
begin
     PrintBonQuantitatif.TitreNum.Caption:='N° Or.';
     PrintBonQuantitatif.TitreDesignation.Caption:='DESIGNATION';
     PrintBonQuantitatif.TitreRef.Caption:='UM';
     PrintBonQuantitatif.TitreQuantiteProduit.Caption:='Matière';
     PrintBonQuantitatif.TitreQteDemandee.Caption:='Quantité';
     PrintBonQuantitatif.TitreQteRecue.Caption:='Côut Unit.';
     PrintBonQuantitatif.TitreObservation.Caption:='Montant';
end;

R:=1;
m:=1;
l:=0;
while(R<=FSApprovisionnement.TableauApprovisionnement.RowCount-3)do
begin
     if(FSApprovisionnement.TableauApprovisionnement.Cells[7,R]='OK')then
     begin
          l:=l+1;

          if(FSApprovisionnement.TableauApprovisionnement.Cells[0,R]<>'')
          then Num:=Completezerogauche(inttostr(l),'2')
          else Num:='';

          if(l=1)then
          begin
               PrintBonQuantitatif.N1.Caption:=Num;
               PrintBonQuantitatif.Designe1.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref1.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande1.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue1.Caption:='';
               PrintBonQuantitatif.Observation1.Caption:='';
          end;
          if(l=2)then
          begin
               PrintBonQuantitatif.N2.Caption:=Num;
               PrintBonQuantitatif.Designe2.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref2.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande2.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue2.Caption:='';
               PrintBonQuantitatif.Observation2.Caption:='';
          end;
          if(l=3)then
          begin
               PrintBonQuantitatif.N3.Caption:=Num;
               PrintBonQuantitatif.Designe3.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref3.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande3.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue3.Caption:='';
               PrintBonQuantitatif.Observation3.Caption:='';
          end;
          if(l=4)then
          begin
               PrintBonQuantitatif.N4.Caption:=Num;
               PrintBonQuantitatif.Designe4.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref4.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande4.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue4.Caption:='';
               PrintBonQuantitatif.Observation4.Caption:='';
          end;
          if(l=5)then
          begin
               PrintBonQuantitatif.N5.Caption:=Num;
               PrintBonQuantitatif.Designe5.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref5.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande5.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue5.Caption:='';
               PrintBonQuantitatif.Observation5.Caption:='';
          end;
          if(l=6)then
          begin
               PrintBonQuantitatif.N6.Caption:=Num;
               PrintBonQuantitatif.Designe6.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref6.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande6.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue6.Caption:='';
               PrintBonQuantitatif.Observation6.Caption:='';
          end;
          if(l=7)then
          begin
               PrintBonQuantitatif.N7.Caption:=Num;
               PrintBonQuantitatif.Designe7.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref7.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande7.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue7.Caption:='';
               PrintBonQuantitatif.Observation7.Caption:='';
          end;
          if(l=8)then
          begin
               PrintBonQuantitatif.N8.Caption:=Num;
               PrintBonQuantitatif.Designe8.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref8.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande8.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue8.Caption:='';
               PrintBonQuantitatif.Observation8.Caption:='';
          end;
          if(l=9)then
          begin
               PrintBonQuantitatif.N9.Caption:=Num;
               PrintBonQuantitatif.Designe9.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref9.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande9.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue9.Caption:='';
               PrintBonQuantitatif.Observation9.Caption:='';
          end;
          if(l=10)then
          begin
               PrintBonQuantitatif.N10.Caption:=Num;
               PrintBonQuantitatif.Designe10.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref10.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande10.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue10.Caption:='';
               PrintBonQuantitatif.Observation10.Caption:='';
          end;
          if(l=11)then
          begin
               PrintBonQuantitatif.N11.Caption:=Num;
               PrintBonQuantitatif.Designe11.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref11.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande11.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue11.Caption:='';
               PrintBonQuantitatif.Observation11.Caption:='';
          end;
          if(l=12)then
          begin
               PrintBonQuantitatif.N12.Caption:=Num;
               PrintBonQuantitatif.Designe12.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref12.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande12.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue12.Caption:='';
               PrintBonQuantitatif.Observation12.Caption:='';
          end;
          if(l=13)then
          begin
               PrintBonQuantitatif.N13.Caption:=Num;
               PrintBonQuantitatif.Designe13.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref13.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande13.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue13.Caption:='';
               PrintBonQuantitatif.Observation13.Caption:='';
          end;
          if(l=14)then
          begin
               PrintBonQuantitatif.N14.Caption:=Num;
               PrintBonQuantitatif.Designe14.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref14.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande14.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue14.Caption:='';
               PrintBonQuantitatif.Observation14.Caption:='';
          end;
          if(l=15)then
          begin
               PrintBonQuantitatif.N15.Caption:=Num;
               PrintBonQuantitatif.Designe15.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref15.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande15.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue15.Caption:='';
               PrintBonQuantitatif.Observation15.Caption:='';
          end;
          if(l=16)then
          begin
               PrintBonQuantitatif.N16.Caption:=Num;
               PrintBonQuantitatif.Designe16.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref16.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande16.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue16.Caption:='';
               PrintBonQuantitatif.Observation16.Caption:='';
          end;
          if(l=17)then
          begin
               PrintBonQuantitatif.N17.Caption:=Num;
               PrintBonQuantitatif.Designe17.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref17.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande17.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue17.Caption:='';
               PrintBonQuantitatif.Observation17.Caption:='';
          end;
          if(l=18)then
          begin
               PrintBonQuantitatif.N18.Caption:=Num;
               PrintBonQuantitatif.Designe18.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref18.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande18.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue18.Caption:='';
               PrintBonQuantitatif.Observation18.Caption:='';
          end;
          if(l=19)then
          begin
               PrintBonQuantitatif.N19.Caption:=Num;
               PrintBonQuantitatif.Designe19.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref19.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande19.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue19.Caption:='';
               PrintBonQuantitatif.Observation19.Caption:='';
          end;
          if(l=20)then
          begin
               PrintBonQuantitatif.N20.Caption:=Num;
               PrintBonQuantitatif.Designe20.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref20.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande20.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue20.Caption:='';
               PrintBonQuantitatif.Observation20.Caption:='';
          end;
     end;

     if(l=20)or(R=FSApprovisionnement.TableauApprovisionnement.RowCount-3)then
     begin
          PrintBonQuantitatif.NbrPage.Caption:='Page N°: '+inttostr(m)+'/'+inttostr(NPage);
          PrintBonQuantitatif.Preview;
          m:=m+1;
          l:=0;
          InitialisationPrintBCQ;
     end;

R:=R+1;
end;

end;

{************************LISTE VALORISEE***************************************}

if(FSApprovisionnement.RBListeApprovisionnement.Checked=true)then
begin

if(FSApprovisionnement.TableauApprovisionnement.RowCount>3)then
begin
FSApprovisionnement.TableauApprovisionnement.Cells[7,FSApprovisionnement.TableauApprovisionnement.RowCount-1]:='OK';
FSApprovisionnement.TableauApprovisionnement.Cells[7,FSApprovisionnement.TableauApprovisionnement.RowCount-2]:='OK';
end;

R:=1;
OK:=false;
while(R<=FSApprovisionnement.TableauApprovisionnement.RowCount-3)and(OK=false)do
begin
     if(FSApprovisionnement.TableauApprovisionnement.Cells[7,R]='OK')
     then
     begin
          OK:=true;
     end;
     R:=R+1;
end;

if(OK=true)then
begin
Division(FSApprovisionnement.TableauApprovisionnement.RowCount-1,20,NPage,m);
if(m>0)then NPage:=NPage+1;
{*******************Entreprise***************}
OpenFParc(RParc);
PrintBonQuantitatif.TextEntreprise.Caption:=RParc.Text1;

PrintBonQuantitatif.DataEntreprise.Lines.Text:='';
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text2);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text3);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text4);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text5);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text6);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text7);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text8);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text9);
PrintBonQuantitatif.DataEntreprise.Lines.Add(RParc.Text10);
{***************Fin Entreprise***************}

{***************Fournisseur***************}
PrintBonQuantitatif.TitreFournisseur.Caption:='MARCHE:';
PrintBonQuantitatif.DataTiers.Lines.Text:='';

OpenFParc(RParc);
ChMarche:=RParc.Parcours+'\'+Exercice+'FMarche';
assignfile(FMarche,ChMarche);
if FileExists(ChMarche)then
Reset(FMarche)
else Rewrite(FMarche);
Seek(FMarche,0);
OK:=false;
TypeProces:='Commercial'; FichierConcerne:='FClient';
while not eof(FMarche)and(OK=false)do
begin
     Read(FMarche,RMarche);
     if(RMarche.NSMarche=strtointeger(FSApprovisionnement.EditNSMarche.Text))then
     begin
          OK:=true;
          PrintBonQuantitatif.DataTiers.Lines.Text:='';
          PrintBonQuantitatif.DataTiers.Lines.Add('Réf Marché      : '+RMarche.RefMarche);
          PrintBonQuantitatif.DataTiers.Lines.Add('Date Marché   : '+RMarche.DateMarche);
          PrintBonQuantitatif.DataTiers.Lines.Add('Marché            : '+RMarche.Marche);
          RTiers:=ChercherTiers(TypeProces,FichierConcerne,RMarche.CodeMaitreOuvrage,'');
          PrintBonQuantitatif.DataTiers.Lines.Add('M.Ouvrage       : '+RTiers.NomTiers+' '+RTiers.PrenomTiers);
     end;
end;
{***************Fin Fournisseur***************}

PrintBonQuantitatif.EnteteTitre.Caption:='Liste Valorisée du BCN°: '+Completezerogauche(FSApprovisionnement.TableauCommandeFornisseurs.Cells[0,FSApprovisionnement.TableauCommandeFornisseurs.Row],'2');
PrintBonQuantitatif.TextDate.Caption:='Date: '+datetostr(FSApprovisionnement.EditDateApprovisionnement.Date);
InitialisationPrintBCQ;

if(FSApprovisionnement.RBBonCommande.Checked=true)then
begin
     PrintBonQuantitatif.TitreNum.Caption:='N° Or.';
     PrintBonQuantitatif.TitreDesignation.Caption:='DESIGNATION';
     PrintBonQuantitatif.TitreRef.Caption:='UM';
     PrintBonQuantitatif.TitreQuantiteProduit.Caption:='QUANTITES';
     PrintBonQuantitatif.TitreQteDemandee.Caption:='Demandées';
     PrintBonQuantitatif.TitreQteRecue.Caption:='Reçues';
     PrintBonQuantitatif.TitreObservation.Caption:='OBSERVATIONS';
end;
if(FSApprovisionnement.RBListeApprovisionnement.Checked=true)then
begin
     PrintBonQuantitatif.TitreNum.Caption:='N° Or.';
     PrintBonQuantitatif.TitreDesignation.Caption:='DESIGNATION';
     PrintBonQuantitatif.TitreRef.Caption:='UM';
     PrintBonQuantitatif.TitreQuantiteProduit.Caption:='Matière';
     PrintBonQuantitatif.TitreQteDemandee.Caption:='Quantité';
     PrintBonQuantitatif.TitreQteRecue.Caption:='Côut Unit.';
     PrintBonQuantitatif.TitreObservation.Caption:='Montant';
end;

R:=1;
m:=1;
l:=0;
while(R<=FSApprovisionnement.TableauApprovisionnement.RowCount-1)do
begin
     if(FSApprovisionnement.TableauApprovisionnement.Cells[7,R]='OK')then
     begin
          l:=l+1;

          if(FSApprovisionnement.TableauApprovisionnement.Cells[0,R]<>'')
          then Num:=Completezerogauche(inttostr(l),'2')
          else Num:='';
          
          if(l=1)then
          begin
               PrintBonQuantitatif.N1.Caption:=Num;
               PrintBonQuantitatif.Designe1.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref1.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande1.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue1.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation1.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=2)then
          begin
               PrintBonQuantitatif.N2.Caption:=Num;
               PrintBonQuantitatif.Designe2.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref2.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande2.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue2.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation2.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=3)then
          begin
               PrintBonQuantitatif.N3.Caption:=Num;
               PrintBonQuantitatif.Designe3.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref3.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande3.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue3.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation3.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=4)then
          begin
               PrintBonQuantitatif.N4.Caption:=Num;
               PrintBonQuantitatif.Designe4.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref4.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande4.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue4.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation4.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=5)then
          begin
               PrintBonQuantitatif.N5.Caption:=Num;
               PrintBonQuantitatif.Designe5.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref5.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande5.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue5.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation5.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=6)then
          begin
               PrintBonQuantitatif.N6.Caption:=Num;
               PrintBonQuantitatif.Designe6.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref6.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande6.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue6.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation6.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=7)then
          begin
               PrintBonQuantitatif.N7.Caption:=Num;
               PrintBonQuantitatif.Designe7.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref7.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande7.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue7.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation7.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=8)then
          begin
               PrintBonQuantitatif.N8.Caption:=Num;
               PrintBonQuantitatif.Designe8.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref8.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande8.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue8.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation8.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=9)then
          begin
               PrintBonQuantitatif.N9.Caption:=Num;
               PrintBonQuantitatif.Designe9.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref9.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande9.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue9.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation9.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=10)then
          begin
               PrintBonQuantitatif.N10.Caption:=Num;
               PrintBonQuantitatif.Designe10.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref10.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande10.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue10.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation10.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=11)then
          begin
               PrintBonQuantitatif.N11.Caption:=Num;
               PrintBonQuantitatif.Designe11.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref11.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande11.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue11.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation11.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=12)then
          begin
               PrintBonQuantitatif.N12.Caption:=Num;
               PrintBonQuantitatif.Designe12.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref12.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande12.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue12.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation12.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=13)then
          begin
               PrintBonQuantitatif.N13.Caption:=Num;
               PrintBonQuantitatif.Designe13.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref13.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande13.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue13.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation13.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=14)then
          begin
               PrintBonQuantitatif.N14.Caption:=Num;
               PrintBonQuantitatif.Designe14.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref14.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande14.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue14.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation14.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=15)then
          begin
               PrintBonQuantitatif.N15.Caption:=Num;
               PrintBonQuantitatif.Designe15.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref15.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande15.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue15.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation15.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=16)then
          begin
               PrintBonQuantitatif.N16.Caption:=Num;
               PrintBonQuantitatif.Designe16.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref16.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande16.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue16.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation16.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=17)then
          begin
               PrintBonQuantitatif.N17.Caption:=Num;
               PrintBonQuantitatif.Designe17.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref17.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande17.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue17.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation17.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=18)then
          begin
               PrintBonQuantitatif.N18.Caption:=Num;
               PrintBonQuantitatif.Designe18.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref18.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande18.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue18.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation18.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=19)then
          begin
               PrintBonQuantitatif.N19.Caption:=Num;
               PrintBonQuantitatif.Designe19.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref19.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande19.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue19.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation19.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
          if(l=20)then
          begin
               PrintBonQuantitatif.N20.Caption:=Num;
               PrintBonQuantitatif.Designe20.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[2,R];
               PrintBonQuantitatif.Ref20.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[3,R];
               PrintBonQuantitatif.QDemmande20.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[4,R];
               PrintBonQuantitatif.QRecue20.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[5,R];
               PrintBonQuantitatif.Observation20.Caption:=FSApprovisionnement.TableauApprovisionnement.Cells[6,R];
          end;
     end;

     if(l=20)or(R=FSApprovisionnement.TableauApprovisionnement.RowCount-1)then
     begin
          PrintBonQuantitatif.NbrPage.Caption:='Page N°: '+inttostr(m)+'/'+inttostr(NPage);
          PrintBonQuantitatif.Preview;
          m:=m+1;
          l:=0;
          InitialisationPrintBCQ;
     end;

R:=R+1;
end;

end;
end;

if(FSApprovisionnement.TableauApprovisionnement.RowCount>3)then
begin
FSApprovisionnement.TableauApprovisionnement.Cells[7,FSApprovisionnement.TableauApprovisionnement.RowCount-1]:='';
FSApprovisionnement.TableauApprovisionnement.Cells[7,FSApprovisionnement.TableauApprovisionnement.RowCount-2]:='';
end;

end;

FSApprovisionnement.AfficheOptionPrintApprovisionnement.Visible:=false;
end;

procedure TFSApprovisionnement.TableauApprovisionnementContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
var ARow:integer;
begin

if(FSApprovisionnement.TableauApprovisionnement.Cells[1,FSApprovisionnement.TableauApprovisionnement.Row]<>'')then
begin
     if(FSApprovisionnement.TableauApprovisionnement.Cells[7,FSApprovisionnement.TableauApprovisionnement.Row]='OK')
     then FSApprovisionnement.TableauApprovisionnement.Cells[7,FSApprovisionnement.TableauApprovisionnement.Row]:=''
     else FSApprovisionnement.TableauApprovisionnement.Cells[7,FSApprovisionnement.TableauApprovisionnement.Row]:='OK';
end;

FSApprovisionnement.TableauApprovisionnement.Cells[6,FSApprovisionnement.TableauApprovisionnement.RowCount-1]:='';
for ARow:=1 to FSApprovisionnement.TableauApprovisionnement.RowCount-3 do
begin
     if(FSApprovisionnement.TableauApprovisionnement.Cells[7,ARow]='OK')then
     begin
          FSApprovisionnement.TableauApprovisionnement.Cells[6,FSApprovisionnement.TableauApprovisionnement.RowCount-1]:=
          (floattostr(strtoreal(FSApprovisionnement.TableauApprovisionnement.Cells[6,FSApprovisionnement.TableauApprovisionnement.RowCount-1])+
                     strtoreal(FSApprovisionnement.TableauApprovisionnement.Cells[6,ARow])));
     end;
end;

FSApprovisionnement.TableauApprovisionnement.Cells[6,FSApprovisionnement.TableauApprovisionnement.RowCount-1]:=
vergule(FSApprovisionnement.TableauApprovisionnement.Cells[6,FSApprovisionnement.TableauApprovisionnement.RowCount-1],'2','C','');

end;

procedure TFSApprovisionnement.BitBtn4Click(Sender: TObject);
var  K:integer;
begin
FSApprovisionnement.AfficheOperationsApp.Height:=41;

FSApprovisionnement.AfficheFournisseur.Visible:=true;
FSApprovisionnement.TableauFournisseur.ColCount:=11;
FSApprovisionnement.TableauFournisseur.Cols[1].Text:='Code';
FSApprovisionnement.TableauFournisseur.Cols[2].Text:='Nom';
FSApprovisionnement.TableauFournisseur.Cols[3].Text:='Prénom';
FSApprovisionnement.TableauFournisseur.Cols[4].Text:='Adresse';
FSApprovisionnement.TableauFournisseur.Cols[5].Text:='D1';
FSApprovisionnement.TableauFournisseur.Cols[6].Text:='D2';
FSApprovisionnement.TableauFournisseur.Cols[7].Text:='D3';
FSApprovisionnement.TableauFournisseur.Cols[8].Text:='D4';
FSApprovisionnement.TableauFournisseur.Cols[9].Text:='D5';
FSApprovisionnement.TableauFournisseur.Cols[10].Text:='D6';
FSApprovisionnement.TableauFournisseur.RowCount:=2;
FSApprovisionnement.TableauFournisseur.Rows[1].Text:='';

OpenFParc(RParc);
ChTiers:=RParc.Parcours+'\'+Exercice+'FFournisseur';
assignfile(FTiers,ChTiers);
if FileExists(ChTiers)then
Reset(FTiers)
else Rewrite(FTiers);
Seek(FTiers,0);
k:=0;
while not eof(FTiers)do
begin
read(FTiers,RTiers);
k:=k+1;
FSApprovisionnement.TableauFournisseur.Rows[k].Text:=inttostr(k);
FSApprovisionnement.TableauFournisseur.Cells[1,k]:=RTiers.CodeTiers;
FSApprovisionnement.TableauFournisseur.Cells[2,k]:=RTiers.NomTiers;
FSApprovisionnement.TableauFournisseur.Cells[3,k]:=RTiers.PrenomTiers;
FSApprovisionnement.TableauFournisseur.Cells[4,k]:=RTiers.AdresseTiers;
FSApprovisionnement.TableauFournisseur.Cells[5,k]:=RTiers.Data1;
FSApprovisionnement.TableauFournisseur.Cells[6,k]:=RTiers.Data2;
FSApprovisionnement.TableauFournisseur.Cells[7,k]:=RTiers.Data3;
FSApprovisionnement.TableauFournisseur.Cells[8,k]:=RTiers.Data4;
FSApprovisionnement.TableauFournisseur.Cells[9,k]:=RTiers.Data5;
FSApprovisionnement.TableauFournisseur.Cells[10,k]:=RTiers.Data6;
end;
if(k>0)then FSApprovisionnement.TableauFournisseur.RowCount:=k+1
       else FSApprovisionnement.TableauFournisseur.RowCount:=2;

FSApprovisionnement.TableauFournisseur.SetFocus;
end;

procedure TFSApprovisionnement.TableauFournisseurKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  NBCF,K,l:integer;  OKBonF:boolean;
begin
if key=VK_RETURN then
begin
FSApprovisionnement.TableauCommandeFornisseurs.RowCount:=2;
FSApprovisionnement.TableauCommandeFornisseurs.Rows[1].Text:='';
FSApprovisionnement.TableauCommandeFornisseurs.Cols[0].Text:='N° du Bon';
FSApprovisionnement.TableauCommandeFornisseurs.Cols[1].Text:='Date';
FSApprovisionnement.TableauCommandeFornisseurs.Cols[2].Text:='Code Four.';
FSApprovisionnement.TableauCommandeFornisseurs.Cols[3].Text:='Fournisseur';


end;

FSApprovisionnement.AfficheFournisseur.Visible:=false;
end;

procedure TFSApprovisionnement.BitBtn5Click(Sender: TObject);
begin
FSApprovisionnement.AfficheFournisseur.Visible:=false;
FSApprovisionnement.AfficheOptionPrintApprovisionnement.Visible:=false;
FSApprovisionnement.TableauCommandeFornisseurs.Height:=43;

if FSApprovisionnement.AfficheOperationsApp.Height=41
then FSApprovisionnement.AfficheOperationsApp.Height:=160
else FSApprovisionnement.AfficheOperationsApp.Height:=41;

end;

procedure TFSApprovisionnement.BitBtn8Click(Sender: TObject);
begin
FSApprovisionnement.AfficheFournisseur.Visible:=false;
end;

procedure TFSApprovisionnement.TableauApprovisionnementClick(
  Sender: TObject);
begin
FSApprovisionnement.AfficheFournisseur.Visible:=false;
FSApprovisionnement.AfficheOptionPrintApprovisionnement.Visible:=false;
FSApprovisionnement.AfficheOperationsApp.Height:=41;
FSApprovisionnement.TableauCommandeFornisseurs.Height:=43;
end;

procedure TFSApprovisionnement.TableauCommandeFornisseursClick(
  Sender: TObject);
var  R:integer;
begin
FSApprovisionnement.AfficheFournisseur.Visible:=false;
FSApprovisionnement.AfficheOptionPrintApprovisionnement.Visible:=false;
FSApprovisionnement.AfficheOperationsApp.Height:=41;

for R:=1 to FSApprovisionnement.TableauApprovisionnement.RowCount-3 do
begin
     if(FSApprovisionnement.TableauApprovisionnement.Cells[8,R]='')then Exit;
end;

if(FSApprovisionnement.TableauCommandeFornisseurs.Cells[0,FSApprovisionnement.TableauCommandeFornisseurs.Row]<>'')then
end;

procedure TFSApprovisionnement.BitOption3Click(Sender: TObject);
var  OKBCF:boolean; R,k,NOperation:integer;
begin
FSApprovisionnement.AfficheOperationsApp.Height:=41;

if(FSApprovisionnement.TableauCommandeFornisseurs.Cells[0,FSApprovisionnement.TableauCommandeFornisseurs.Row]<>'')then
begin

end
else
begin
     showmessage('Sélectionnez un Bon de commande SVP !');
     FSApprovisionnement.TableauCommandeFornisseurs.SetFocus;
end;

end;

procedure TFSApprovisionnement.BitBtn6Click(Sender: TObject);
begin
if FSApprovisionnement.TableauCommandeFornisseurs.Height=43
then FSApprovisionnement.TableauCommandeFornisseurs.Height:=MinInt(441,FSApprovisionnement.TableauCommandeFornisseurs.RowCount*22)
else FSApprovisionnement.TableauCommandeFornisseurs.Height:=43;

FSApprovisionnement.TableauCommandeFornisseurs.Row:=FSApprovisionnement.TableauCommandeFornisseurs.RowCount-1;
end;

procedure TFSApprovisionnement.TableauCommandeFornisseursDblClick(
  Sender: TObject);
var  NBCF,K,l:integer;  OKBonF:boolean;
begin
FSApprovisionnement.TableauCommandeFornisseurs.Rows[1].Text:='';
FSApprovisionnement.TableauCommandeFornisseurs.Cols[0].Text:='N° du Bon';
FSApprovisionnement.TableauCommandeFornisseurs.Cols[1].Text:='Date';
FSApprovisionnement.TableauCommandeFornisseurs.Cols[2].Text:='Code Four.';
FSApprovisionnement.TableauCommandeFornisseurs.Cols[3].Text:='Fournisseur';

FSApprovisionnement.TableauCommandeFornisseurs.Row:=FSApprovisionnement.TableauCommandeFornisseurs.RowCount-1;
end;

procedure TFSApprovisionnement.TableauApprovisionnementKeyPress(
  Sender: TObject; var Key: Char);
var  ARow:integer; i:integer; Texte:string;
begin

if key in['.',',']then
begin
     key:=',';
     Texte:=FSApprovisionnement.TableauApprovisionnement.Cells[FSApprovisionnement.TableauApprovisionnement.Col,FSApprovisionnement.TableauApprovisionnement.Row];
     for i:=1 to longueur(Texte)do
     begin
          if(Texte[i]='.')or(Texte[i]=',')then Key:=#0;
     end;
end;

if((FSApprovisionnement.TableauApprovisionnement.Row>FSApprovisionnement.TableauApprovisionnement.RowCount-3)
or(not (FSApprovisionnement.TableauApprovisionnement.Col in[4,5]))
or(not (key in['0'..'9',',','.'])))
then
begin
     Key:=#0;
end;

end;

procedure TFSApprovisionnement.TableauApprovisionnementKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var  ARow:integer;  
begin

FSApprovisionnement.TableauApprovisionnement.Cells[6,FSApprovisionnement.TableauApprovisionnement.RowCount-1]:='';
for ARow:=1 to FSApprovisionnement.TableauApprovisionnement.RowCount-3 do
begin
     FSApprovisionnement.TableauApprovisionnement.Cells[6,ARow]:=Vergule(floattostr(strtoreal(FSApprovisionnement.TableauApprovisionnement.Cells[4,ARow])*strtoreal(FSApprovisionnement.TableauApprovisionnement.Cells[5,ARow])),'2','C','');
     if(FSApprovisionnement.TableauApprovisionnement.Cells[7,ARow]='OK')then
     begin
          FSApprovisionnement.TableauApprovisionnement.Cells[6,FSApprovisionnement.TableauApprovisionnement.RowCount-1]:=
          Vergule((floattostr(strtoreal(FSApprovisionnement.TableauApprovisionnement.Cells[6,FSApprovisionnement.TableauApprovisionnement.RowCount-1])+
                              strtoreal(FSApprovisionnement.TableauApprovisionnement.Cells[6,ARow]))),'2','C','');
     end;
end;

end;

procedure TFSApprovisionnement.TableauApprovisionnementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSApprovisionnement.TableauApprovisionnement.Cells[4,FSApprovisionnement.TableauApprovisionnement.Row]:=Vergule(FSApprovisionnement.TableauApprovisionnement.Cells[4,FSApprovisionnement.TableauApprovisionnement.Row],'2','C','');
     FSApprovisionnement.TableauApprovisionnement.Cells[5,FSApprovisionnement.TableauApprovisionnement.Row]:=Vergule(FSApprovisionnement.TableauApprovisionnement.Cells[5,FSApprovisionnement.TableauApprovisionnement.Row],'2','C','');
end;

end;

end.
