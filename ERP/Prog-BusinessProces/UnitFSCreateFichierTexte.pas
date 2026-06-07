unit UnitFSCreateFichierTexte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, Buttons, ComCtrls;

type
  TFSCreateFichierTexte = class(TForm)
    EnregistrerUnFichier: TSaveDialog;
    OuvrirUnFichier: TOpenDialog;
    PageControl1: TPageControl;
    PageTraitementFichier: TTabSheet;
    TableauCreateFichierTexte: TStringGrid;
    TabSheet2: TTabSheet;
    EditCreateFichierTexte: TMemo;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EditNomFichier: TEdit;
    EditAdresseFicher: TEdit;
    AfficheOptionCreationFichier: TPanel;
    AfficheFichierTexte: TPanel;
    AfficheTaillePropose: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel4: TBevel;
    EditNumLigne: TEdit;
    EditNumColonne: TEdit;
    EditDesignationRubrique: TEdit;
    Label6: TLabel;
    EditTailleActuelle: TEdit;
    Bevel5: TBevel;
    Label7: TLabel;
    EditTaillePropose: TEdit;
    IncrementTaillePropose: TUpDown;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    Panel2: TPanel;
    Bevel3: TBevel;
    BitBtn1: TBitBtn;
    Label8: TLabel;
    Bevel6: TBevel;
    EditNumColonneDebut: TEdit;
    IncrementNumColonneDebut: TUpDown;
    Bevel7: TBevel;
    Label9: TLabel;
    EditNumColonneFin: TEdit;
    IncrementNumColonneFin: TUpDown;
    BitBtn3: TBitBtn;
    Bevel8: TBevel;
    RBCodificationRubriqes: TCheckBox;
    RBSignatureEntrepeise: TCheckBox;
    RBLibelleRubriques: TCheckBox;
    BitBtn4: TBitBtn;
    AfficheOperationFichierTexte: TPanel;
    PageControl2: TPageControl;
    PageNewNomFichierTexte: TTabSheet;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label10: TLabel;
    EditNewNomFichierTexte: TEdit;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    AfficheOptionPrint: TPanel;
    Bevel32: TBevel;
    RadioGroup5: TRadioGroup;
    StaticText2: TStaticText;
    RBOrientationPapier: TComboBox;
    RBAjustement: TCheckBox;
    BitBtn20: TBitBtn;
    Bevel9: TBevel;
    BitBtn9: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure TableauCreateFichierTexteClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TableauCreateFichierTexteKeyPress(Sender: TObject;
      var Key: Char);
    procedure IncrementNumColonneDebutClick(Sender: TObject;
      Button: TUDBtnType);
    procedure IncrementNumColonneFinClick(Sender: TObject;
      Button: TUDBtnType);
    procedure RBCodificationRubriqesClick(Sender: TObject);
    procedure RBSignatureEntrepeiseClick(Sender: TObject);
    procedure RBLibelleRubriquesClick(Sender: TObject);
    procedure EditNewNomFichierTexteKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure EditCreateFichierTexteChange(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure AfficheOptionPrintClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSCreateFichierTexte: TFSCreateFichierTexte;

procedure ChargementFichierTexte(TableauTexte:TStringGrid; AdresseFichier:string);
Function  CompleteTailRubriqueRowTableau(TableauTexte:TStringGrid; RowSelect,ColDebut,ColFin:integer):string;
Procedure IndiqueTailleFichier(TableauTexteIn:TStringGrid; ChaineTexte:string; var TableauTexteOut:TStringGrid);
Function TailRubriqueCumuler(TableauTexte:TStringGrid; AColCible:integer):integer;

implementation

uses UnitInitialisation, UnitFSMenuPrincipal;

{$R *.dfm}

procedure TFSCreateFichierTexte.BitBtn3Click(Sender: TObject);
begin
     FSCreateFichierTexte.EditCreateFichierTexte.Lines.Clear;
     FSCreateFichierTexte.OuvrirUnFichier.Title:='Ouvrir un Fichier Texte.txt';
     if(FSCreateFichierTexte.OuvrirUnFichier.Execute)then
     begin
          if(FSCreateFichierTexte.OuvrirUnFichier.FileName<>'')then
          begin
               FSCreateFichierTexte.EditNomFichier.Text:=ExtractFileName(FSCreateFichierTexte.OuvrirUnFichier.FileName);
               FSCreateFichierTexte.EditAdresseFicher.Text:=FSCreateFichierTexte.OuvrirUnFichier.FileName;
               FSCreateFichierTexte.EditCreateFichierTexte.Lines.LoadFromFile(FSCreateFichierTexte.EditAdresseFicher.Text);
               ChargementFichierTexte(FSCreateFichierTexte.TableauCreateFichierTexte,FSCreateFichierTexte.EditAdresseFicher.Text);
          end;
     end;
end;

Procedure IndiqueTailleFichier(TableauTexteIn:TStringGrid; ChaineTexte:string; var TableauTexteOut:TStringGrid);
var l,Inc:integer; Taille:string;
begin
     l:=1;
     Inc:=0;
     Taille:='';
     while(l<=longueur(ChaineTexte))do
     begin
          if(ChaineTexte[l]<>';')then
          begin
               Taille:=Taille+ChaineTexte[l];
          end
          else
          begin
               Inc:=Inc+1;
               TableauTexteIn.Cells[Inc,0]:=Taille;
               Taille:='';
          end;
     l:=l+1;
     end;
     if(l>longueur(ChaineTexte))then
     begin
          Inc:=Inc+1;
          TableauTexteIn.Cells[Inc,0]:=Taille;
          Taille:='';
     end;

     TableauTexteOut.ColCount:=Inc+1;
end;

procedure ChargementFichierTexte(TableauTexte:TStringGrid; AdresseFichier:string);
var FichierTexte:TextFile;   i,C,IFin:integer;
    TextAffiche:string;
begin
     AssignFile(FichierTexte,AdresseFichier);
     Reset(FichierTexte);
     i:=0;
     while not eof(FichierTexte)do
     begin
          Readln(FichierTexte,TextAffiche);
          i:=i+1;
     end;
     IFin:=i-2;

     AssignFile(FichierTexte,AdresseFichier);
     Reset(FichierTexte);
     i:=0;
     while not eof(FichierTexte)do
     begin
          Readln(FichierTexte,TextAffiche);
          if(TextAffiche<>'')then
          begin
               if(i=0)then IndiqueTailleFichier(TableauTexte,TextAffiche,TableauTexte);
               if(i>0)and(i<IFin)then
               begin
                    TableauTexte.Cells[0,i]:=inttostr(i);
                    for C:=1 to TableauTexte.ColCount-1 do
                    begin
                         TableauTexte.Cells[C,i]:=lastlaters(Firstlaters(TextAffiche,TailRubriqueCumuler(TableauTexte,C)),strtointeger(TableauTexte.Cells[C,0]));
                    end;
               end;
               if(i=IFin)then
               begin
                    FSCreateFichierTexte.AfficheFichierTexte.Caption:=TextAffiche;
               end;
          i:=i+1;
          end;
     end;
     CloseFile(FichierTexte);

     TableauTexte.RowCount:=i-1;
     AjusterColWidth(TableauTexte,'','');
end;

Function TailRubriqueCumuler(TableauTexte:TStringGrid; AColCible:integer):integer;
var  C:integer;  TailCumuler:integer;
begin
     TailCumuler:=0;
     C:=1;
     while(C<=TableauTexte.ColCount-1)and(C<=AColCible)do
     begin
          TailCumuler:=TailCumuler+strtointeger(TableauTexte.Cells[C,0]);
     C:=C+1;
     end;

     TailRubriqueCumuler:=TailCumuler;
end;

Function  CompleteTailRubriqueRowTableau(TableauTexte:TStringGrid; RowSelect,ColDebut,ColFin:integer):string;
var  i,C,TailleMax:integer; Texte,RowTexte:string;
begin
     RowTexte:='';
     for C:=ColDebut to ColFin do
     begin
          Texte:=TableauTexte.Cells[C,RowSelect];
          TailleMax:=strtointeger(TableauTexte.Cells[C,0]);
          if Longueur(Texte)>=TailleMax then Texte:=firstlaters(Texte,TailleMax)
          else
          begin
               for i:=1 to(TailleMax-longueur(TableauTexte.Cells[C,RowSelect])) do
               begin
                    Texte:=Texte+' ';
               end;
          end;
          RowTexte:=RowTexte+Texte;
     end;
     CompleteTailRubriqueRowTableau:=RowTexte;
end;

procedure TFSCreateFichierTexte.BitBtn2Click(Sender: TObject);
begin
FSCreateFichierTexte.AfficheTaillePropose.Visible:=false;
FSCreateFichierTexte.TableauCreateFichierTexte.SetFocus;
end;

procedure TFSCreateFichierTexte.BitBtn5Click(Sender: TObject);
begin
     FSCreateFichierTexte.TableauCreateFichierTexte.Cells[strtointeger(FSCreateFichierTexte.EditNumColonne.Text),strtointeger(FSCreateFichierTexte.EditNumLigne.Text)]:=FSCreateFichierTexte.EditTaillePropose.Text;
     FSCreateFichierTexte.AfficheTaillePropose.Visible:=false;
     AjusterColWidth(FSCreateFichierTexte.TableauCreateFichierTexte,'','');
     FSCreateFichierTexte.TableauCreateFichierTexte.SetFocus;
end;

procedure TFSCreateFichierTexte.TableauCreateFichierTexteClick(
  Sender: TObject);
begin
FSCreateFichierTexte.AfficheTaillePropose.Visible:=false;
FSCreateFichierTexte.AfficheOptionPrint.Height:=25;
end;

procedure TFSCreateFichierTexte.BitBtn1Click(Sender: TObject);
var R,C,RowBegin,ColDebut,ColFin:integer;  RegistreTexte:string;
begin
     FSCreateFichierTexte.EditCreateFichierTexte.Clear;
     ColDebut:=FSCreateFichierTexte.IncrementNumColonneDebut.Position;
     ColFin:=FSCreateFichierTexte.IncrementNumColonneFin.Position;
     RegistreTexte:='';

     if(FSCreateFichierTexte.RBCodificationRubriqes.Checked=true)then
     begin
          for C:=ColDebut to ColFin do
          begin
               if(RegistreTexte='')
               then RegistreTexte:=FSCreateFichierTexte.TableauCreateFichierTexte.Cells[C,0]
               else RegistreTexte:=RegistreTexte+';'+FSCreateFichierTexte.TableauCreateFichierTexte.Cells[C,0];
          end;
          FSCreateFichierTexte.EditCreateFichierTexte.Lines.Add(RegistreTexte);
     end;

     if(FSCreateFichierTexte.RBLibelleRubriques.Checked=true)
     then RowBegin:=1
     else RowBegin:=2;
     for R:=RowBegin to FSCreateFichierTexte.TableauCreateFichierTexte.RowCount-1 do
     begin
          RegistreTexte:='';
          RegistreTexte:=CompleteTailRubriqueRowTableau(FSCreateFichierTexte.TableauCreateFichierTexte,R,ColDebut,ColFin);
          FSCreateFichierTexte.EditCreateFichierTexte.Lines.Add(RegistreTexte);
     end;

     if(FSCreateFichierTexte.RBSignatureEntrepeise.Checked=true)then
     begin
          OpenFParc(RParc);
          FSCreateFichierTexte.EditCreateFichierTexte.Lines.Add('');
          FSCreateFichierTexte.EditCreateFichierTexte.Lines.Add(RParc.Text1+' '+FSCreateFichierTexte.EditNomFichier.Text);
     end;

     //////////////////////////////////////////////////////////////////////////
     FSCreateFichierTexte.EnregistrerUnFichier.FileName:=FSCreateFichierTexte.EditAdresseFicher.Text;
     if(FSCreateFichierTexte.EnregistrerUnFichier.Execute)then
     begin
          FSCreateFichierTexte.EditNomFichier.Text:=ExtractFileName(FSCreateFichierTexte.EnregistrerUnFichier.FileName);
          FSCreateFichierTexte.EditAdresseFicher.Text:=FSCreateFichierTexte.EnregistrerUnFichier.FileName;
          FSCreateFichierTexte.EditCreateFichierTexte.Lines.SaveToFile(FSCreateFichierTexte.EditAdresseFicher.Text);
     end;
     //////////////////////////////////////////////////////////////////////////
end;



procedure TFSCreateFichierTexte.TableauCreateFichierTexteKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['m','M']then
     begin
          FSCreateFichierTexte.AfficheTaillePropose.Visible:=true;
          FSCreateFichierTexte.EditNumLigne.Text:='0';
          FSCreateFichierTexte.EditNumColonne.Text:=inttostr(FSCreateFichierTexte.TableauCreateFichierTexte.Col);
          FSCreateFichierTexte.EditDesignationRubrique.Text:=FSCreateFichierTexte.TableauCreateFichierTexte.Cells[FSCreateFichierTexte.TableauCreateFichierTexte.Col,1];
          FSCreateFichierTexte.EditTailleActuelle.Text:=FSCreateFichierTexte.TableauCreateFichierTexte.Cells[FSCreateFichierTexte.TableauCreateFichierTexte.Col,0];
          FSCreateFichierTexte.IncrementTaillePropose.Position:=strtointeger(FSCreateFichierTexte.EditTailleActuelle.Text);
          FSCreateFichierTexte.EditTaillePropose.SetFocus;
     end;
end;

procedure TFSCreateFichierTexte.IncrementNumColonneDebutClick(
  Sender: TObject; Button: TUDBtnType);
begin
FSCreateFichierTexte.TableauCreateFichierTexte.Col:=MaxInt(1,FSCreateFichierTexte.IncrementNumColonneDebut.Position);
end;

procedure TFSCreateFichierTexte.IncrementNumColonneFinClick(
  Sender: TObject; Button: TUDBtnType);
begin
FSCreateFichierTexte.TableauCreateFichierTexte.Col:=MaxInt(1,FSCreateFichierTexte.IncrementNumColonneFin.Position);
end;

procedure TFSCreateFichierTexte.RBCodificationRubriqesClick(
  Sender: TObject);
begin
     if(FSCreateFichierTexte.RBCodificationRubriqes.Checked=true)
     then FSCreateFichierTexte.RBCodificationRubriqes.Caption:='Fichier avec codification des rubriques !'
     else FSCreateFichierTexte.RBCodificationRubriqes.Caption:='Fichier sans codification des rubriques !';
end;

procedure TFSCreateFichierTexte.RBSignatureEntrepeiseClick(Sender: TObject);
begin 
     if(FSCreateFichierTexte.RBSignatureEntrepeise.Checked=true)
     then FSCreateFichierTexte.RBSignatureEntrepeise.Caption:='Fichier avec signature entreprise !'
     else FSCreateFichierTexte.RBSignatureEntrepeise.Caption:='Fichier sans signature entreprise !';
end;

procedure TFSCreateFichierTexte.RBLibelleRubriquesClick(Sender: TObject);
var R,C,RowBegin,TailleMax:integer;
begin     
     if(FSCreateFichierTexte.RBLibelleRubriques.Checked=true)then
     begin
          FSCreateFichierTexte.RBLibelleRubriques.Caption:='Fichier avec Libellé des rubriques !';
          RowBegin:=1;
     end
     else
     begin
          FSCreateFichierTexte.RBLibelleRubriques.Caption:='Fichier sans Libellé des rubriques !';
          RowBegin:=2;
     end;

     for C:=0 to FSCreateFichierTexte.TableauCreateFichierTexte.ColCount-1 do
     begin
          TailleMax:=0;
          for R:=RowBegin to FSCreateFichierTexte.TableauCreateFichierTexte.RowCount-1 do
          begin
               if(TailleMax<Longueur(FSCreateFichierTexte.TableauCreateFichierTexte.Cells[C,R]))
               then TailleMax:=Longueur(FSCreateFichierTexte.TableauCreateFichierTexte.Cells[C,R]);
          end;
          FSCreateFichierTexte.TableauCreateFichierTexte.Cells[C,0]:=inttostr(TailleMax);
     end;
end;

procedure TFSCreateFichierTexte.EditNewNomFichierTexteKeyPress(
  Sender: TObject; var Key: Char);
begin
     if(key in['\','/',':','?','<','>','|'])then
     begin
          key:=#0;
          AfficherMessage('Un nom de fichier ne peut contenir aucun des caractères suivant: \/:?<>|');
     end;
end;

procedure TFSCreateFichierTexte.BitBtn6Click(Sender: TObject);
begin
OpenFParc(RParc);
FSCreateFichierTexte.EditNomFichier.Text:=FSCreateFichierTexte.EditNewNomFichierTexte.Text+'.Txt';
FSCreateFichierTexte.EditAdresseFicher.Text:=RParc.Parcours+'\'+FSCreateFichierTexte.EditNomFichier.Text;

FSCreateFichierTexte.AfficheOperationFichierTexte.Visible:=false;
end;

procedure TFSCreateFichierTexte.BitBtn7Click(Sender: TObject);
begin
FSCreateFichierTexte.AfficheOperationFichierTexte.Visible:=false;
end;

procedure TFSCreateFichierTexte.BitBtn4Click(Sender: TObject);
begin
FSCreateFichierTexte.AfficheOperationFichierTexte.Visible:=true;
FSCreateFichierTexte.EditNewNomFichierTexte.Text:='';
FSCreateFichierTexte.EditNewNomFichierTexte.SetFocus;
end;

procedure TFSCreateFichierTexte.EditCreateFichierTexteChange(
  Sender: TObject);
begin
FSCreateFichierTexte.AfficheOperationFichierTexte.Visible:=false;
end;

procedure TFSCreateFichierTexte.TabSheet2Show(Sender: TObject);
begin
FSCreateFichierTexte.AfficheOperationFichierTexte.Visible:=false;
end;

procedure TFSCreateFichierTexte.AfficheOptionPrintClick(Sender: TObject);
begin

if(FSCreateFichierTexte.AfficheOptionPrint.Height=25)
then FSCreateFichierTexte.AfficheOptionPrint.Height:=223
else FSCreateFichierTexte.AfficheOptionPrint.Height:=25;

end;

procedure TFSCreateFichierTexte.BitBtn20Click(Sender: TObject);
var  R,l,C,NbrPrint,EcartTableau:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string; ImprimeEtat:boolean;
begin
     FSCreateFichierTexte.AfficheOptionPrint.Height:=25;
     
     TitreEtat:=FSCreateFichierTexte.EditNomFichier.Text;
     GrasARow:='0;1';
     GrasACol:='0';
     CenterARow:='0;1';
     CenterACol:='0';
     RightARow:='';
     RightACol:='';
     EcartTableau:=2;
     ImprimeEtat:=true;
     R:=0;
     OptionsImpression(FSCreateFichierTexte.TableauCreateFichierTexte,'Center',R,2,TitreEtat,FSCreateFichierTexte.RBAjustement.Checked,FSCreateFichierTexte.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeEtat,EcartTableau,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSCreateFichierTexte.BitBtn9Click(Sender: TObject);
begin
     TableauToExcel(FSCreateFichierTexte.TableauCreateFichierTexte,3,1,'','','','','','',FSCreateFichierTexte.EditNomFichier.Text,'',FSCreateFichierTexte.EditNomFichier.Text,true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

end.
