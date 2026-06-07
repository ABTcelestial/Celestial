unit UnitFSModuleCalculeFormiles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ExtCtrls, ComCtrls;

type
  TFSModuleCalculeFormules = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel3: TBevel;
    EditChiffreEnLettres: TMemo;
    EditTitreChiffreEnLettres: TMemo;
    TableauDetaiMouvement: TStringGrid;
    TableauFormuleCalcule: TStringGrid;
    TypeFormuleAfficher: TPanel;
    EditCodeTypeFormuleAfficher: TEdit;
    EditValeurPrincipale: TMemo;
    EditResultatCalcule: TMemo;
    BitBtn1: TBitBtn;
    TableauVariable: TStringGrid;
    TableauFormules: TStringGrid;
    AfficheTypeFormule: TPanel;
    Bevel7: TBevel;
    TableauTypeFormule: TStringGrid;
    BitBtn7: TBitBtn;
    EditTime: TEdit;
    TableauTransfertValeurTaxe: TStringGrid;
    TimerEvolution: TTimer;
    Label3: TLabel;
    EditCodeArticleCalcule: TEdit;
    EditArticleCalcule: TEdit;
    TableauSelection: TStringGrid;
    EditNbrChiffreCompte: TComboBox;
    EditModePayement: TComboBox;
    Bevel4: TBevel;
    Label4: TLabel;
    EditMontantMouvement: TMemo;
    procedure TypeFormuleAfficherClick(Sender: TObject);
    procedure TableauTypeFormuleDblClick(Sender: TObject);
    procedure TableauxCalculeFormulesClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TimerEvolutionTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditCodeArticleCalculeEnter(Sender: TObject);
    procedure EditNbrChiffreCompteSelect(Sender: TObject);
    procedure TableauSelectionDblClick(Sender: TObject);
    procedure TableauFormuleCalculeClick(Sender: TObject);
    procedure TableauSelectionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodeArticleCalculeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditArticleCalculeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSModuleCalculeFormules: TFSModuleCalculeFormules;

  Procedure TransfertFormuleCalcule(CodeTypeFormule:string; ValeurPrincipale:TEdit; var ValeurFinale:TEdit);
  Function RrixAppliqerFormuleCalcule(CodeTypeFormuleAfficher,CodeArticle,NbrChiffreApresVergulePrix:string; ValeurPrincipale:real):real;

implementation

Uses UnitInitialisation, UnitFSFormules, UnitFSFicheSaisie, UnitFSGenerateurBase,
  UnitFSListeValeurs;

{$R *.dfm}

procedure TFSModuleCalculeFormules.TypeFormuleAfficherClick(
  Sender: TObject);
begin
FSModuleCalculeFormules.AfficheTypeFormule.Visible:=true;
ListeTypeFormule(FSModuleCalculeFormules.TableauTypeFormule);
end;

procedure TFSModuleCalculeFormules.TableauTypeFormuleDblClick(
  Sender: TObject);
var C:integer;  NotCol:string;
begin
FSModuleCalculeFormules.EditCodeTypeFormuleAfficher.Text:=FSModuleCalculeFormules.TableauTypeFormule.Cells[2,FSModuleCalculeFormules.TableauTypeFormule.Row];
FSModuleCalculeFormules.TypeFormuleAfficher.Caption:=FSModuleCalculeFormules.TableauTypeFormule.Cells[3,FSModuleCalculeFormules.TableauTypeFormule.Row];
ProcAfficheFormule(FSModuleCalculeFormules.TableauFormuleCalcule,FSModuleCalculeFormules.EditCodeTypeFormuleAfficher.Text);
ProcAfficheFormuleFS(FSModuleCalculeFormules.TableauDetaiMouvement,FSModuleCalculeFormules.TableauFormules,FSModuleCalculeFormules.TableauVariable,FSModuleCalculeFormules.EditCodeTypeFormuleAfficher.Text,true);
FSModuleCalculeFormules.AfficheTypeFormule.Visible:=false;
end;

procedure TFSModuleCalculeFormules.TableauxCalculeFormulesClick(
  Sender: TObject);
begin
     FSModuleCalculeFormules.AfficheTypeFormule.Visible:=false;
end;

procedure TFSModuleCalculeFormules.BitBtn7Click(Sender: TObject);
begin
     FSModuleCalculeFormules.AfficheTypeFormule.Visible:=false;
end;

procedure TFSModuleCalculeFormules.BitBtn1Click(Sender: TObject);
var  R:integer;
begin
FSModuleCalculeFormules.TableauDetaiMouvement.Cells[0,6]:='xxx';
FSModuleCalculeFormules.TableauDetaiMouvement.Cells[1,6]:=FSModuleCalculeFormules.EditCodeArticleCalcule.Text;
FSModuleCalculeFormules.TableauDetaiMouvement.Cells[2,6]:='xxx';
FSModuleCalculeFormules.TableauDetaiMouvement.Cells[3,6]:='xxx';
FSModuleCalculeFormules.TableauDetaiMouvement.Cells[4,6]:='xxx';
FSModuleCalculeFormules.TableauDetaiMouvement.Cells[5,6]:='xxx';
FSModuleCalculeFormules.TableauDetaiMouvement.Cells[6,6]:=FSModuleCalculeFormules.EditValeurPrincipale.Text;
FSModuleCalculeFormules.TableauDetaiMouvement.Cells[7,6]:='1';
CalculeFicheSaisie(FSModuleCalculeFormules.TableauFormules,FSModuleCalculeFormules.TableauVariable,FSModuleCalculeFormules.TableauDetaiMouvement,FSModuleCalculeFormules.EditModePayement.Text,FSFicheSaisie.EditNbrChiffreApresVergulePrix.Text,6,FSModuleCalculeFormules.EditCodeTypeFormuleAfficher,false);
AfficherRecapeFicheSaisie(FSModuleCalculeFormules.TableauDetaiMouvement,FSModuleCalculeFormules.TableauFormules,FSModuleCalculeFormules.EditChiffreEnLettres,FSModuleCalculeFormules.EditTitreChiffreEnLettres,FSModuleCalculeFormules.EditMontantMouvement);

FSModuleCalculeFormules.EditResultatCalcule.Lines.Text:='';
R:=FSModuleCalculeFormules.TableauFormules.RowCount-1;
while(R>=1)and(FSModuleCalculeFormules.EditResultatCalcule.Lines.Text='')do
begin
     if(FSModuleCalculeFormules.TableauFormules.RowHeights[R]>0)then
     begin
          FSModuleCalculeFormules.EditResultatCalcule.Lines.Text:=FSModuleCalculeFormules.TableauFormules.Cells[5,R];
     end;
R:=R-1;
end;

FSModuleCalculeFormules.EditValeurPrincipale.Text:=Vergule(FSModuleCalculeFormules.EditValeurPrincipale.Text,'3','C','');
end;

Procedure TransfertFormuleCalcule(CodeTypeFormule:string; ValeurPrincipale:TEdit; var ValeurFinale:TEdit);
var  R:integer;
begin
     FSModuleCalculeFormules.EditCodeTypeFormuleAfficher.Text:=CodeTypeFormule;
     FSModuleCalculeFormules.TypeFormuleAfficher.Caption:=ChercherTypeFormule(CodeTypeFormule,'').DesignationTypeFormule;
     ProcAfficheFormule(FSModuleCalculeFormules.TableauFormuleCalcule,FSModuleCalculeFormules.EditCodeTypeFormuleAfficher.Text);
     ProcAfficheFormuleFS(FSModuleCalculeFormules.TableauDetaiMouvement,FSModuleCalculeFormules.TableauFormules,FSModuleCalculeFormules.TableauVariable,FSModuleCalculeFormules.EditCodeTypeFormuleAfficher.Text,true);
     FSModuleCalculeFormules.EditValeurPrincipale.Text:=ValeurPrincipale.Text;
     FSModuleCalculeFormules.TableauDetaiMouvement.Cells[0,6]:='xxx';
     FSModuleCalculeFormules.TableauDetaiMouvement.Cells[1,6]:='xxx';
     FSModuleCalculeFormules.TableauDetaiMouvement.Cells[2,6]:='xxx';
     FSModuleCalculeFormules.TableauDetaiMouvement.Cells[3,6]:='xxx';
     FSModuleCalculeFormules.TableauDetaiMouvement.Cells[4,6]:='xxx';
     FSModuleCalculeFormules.TableauDetaiMouvement.Cells[5,6]:='xxx';
     FSModuleCalculeFormules.TableauDetaiMouvement.Cells[6,6]:=FSModuleCalculeFormules.EditValeurPrincipale.Text;
     FSModuleCalculeFormules.TableauDetaiMouvement.Cells[7,6]:='1';
     CalculeFicheSaisie(FSModuleCalculeFormules.TableauFormules,FSModuleCalculeFormules.TableauVariable,FSModuleCalculeFormules.TableauDetaiMouvement,'',FSFicheSaisie.EditNbrChiffreApresVergulePrix.Text,6,FSModuleCalculeFormules.EditCodeTypeFormuleAfficher,false);
     AfficherRecapeFicheSaisie(FSModuleCalculeFormules.TableauDetaiMouvement,FSModuleCalculeFormules.TableauFormules,FSModuleCalculeFormules.EditChiffreEnLettres,FSModuleCalculeFormules.EditTitreChiffreEnLettres,FSModuleCalculeFormules.EditMontantMouvement);

     FSModuleCalculeFormules.EditResultatCalcule.Text:='';
     R:=FSModuleCalculeFormules.TableauFormules.RowCount-1;
     while(R>=1)and(FSModuleCalculeFormules.EditResultatCalcule.Text='')do
     begin
          if(FSModuleCalculeFormules.TableauFormules.RowHeights[R]<>0)then
          begin
                FSModuleCalculeFormules.EditResultatCalcule.Text:=FSModuleCalculeFormules.TableauFormules.Cells[5,R];
          end;
     R:=R-1;
     end;

     ValeurFinale.Text:=Vergule(FSModuleCalculeFormules.EditResultatCalcule.Text,'3','C','');
end;

procedure TFSModuleCalculeFormules.TimerEvolutionTimer(Sender: TObject);
begin
     FSModuleCalculeFormules.EditTime.Text:=datetimetostr(Time);
end;

procedure TFSModuleCalculeFormules.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     FSModuleCalculeFormules.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Module Calcule Formules';
end;

Function RrixAppliqerFormuleCalcule(CodeTypeFormuleAfficher,CodeArticle,NbrChiffreApresVergulePrix:string; ValeurPrincipale:real):real;
var  R,C:integer;  NotCol,RubriqueRecherche:string;
begin
     RrixAppliqerFormuleCalcule:=ValeurPrincipale;

     if(CodeTypeFormuleAfficher<>'')then
     begin
          FSModuleCalculeFormules.EditCodeTypeFormuleAfficher.Text:=CodeTypeFormuleAfficher;
          FSModuleCalculeFormules.TypeFormuleAfficher.Caption:=ChercherTypeFormule(CodeTypeFormuleAfficher,'').DesignationTypeFormule;
          ProcAfficheFormule(FSModuleCalculeFormules.TableauFormuleCalcule,CodeTypeFormuleAfficher);
          ProcAfficheFormuleFS(FSModuleCalculeFormules.TableauDetaiMouvement,FSModuleCalculeFormules.TableauFormules,FSModuleCalculeFormules.TableauVariable,CodeTypeFormuleAfficher,true);

          FSModuleCalculeFormules.EditValeurPrincipale.Text:=floattostr(ValeurPrincipale);
          FSModuleCalculeFormules.EditCodeArticleCalcule.Text:=CodeArticle;

          if(longueur(FSModuleCalculeFormules.EditCodeArticleCalcule.Text)=10)
          then FSModuleCalculeFormules.EditArticleCalcule.Text:=ChercherStockArticle('Article','',FSModuleCalculeFormules.EditCodeArticleCalcule.Text,'',OKStockRecherche,RubriqueRecherche).Design
          else
          if(ChercherCompteComptable(FSModuleCalculeFormules.EditCodeArticleCalcule.Text,inttostr(longueur(FSModuleCalculeFormules.EditCodeArticleCalcule.Text)),'PlanComptable',RRegistreCompteCopie)=true)then FSModuleCalculeFormules.EditArticleCalcule.Text:=RRegistreCompteCopie.Designation;

          FSModuleCalculeFormules.TableauDetaiMouvement.Cells[0,6]:='xxx';
          FSModuleCalculeFormules.TableauDetaiMouvement.Cells[1,6]:=FSModuleCalculeFormules.EditCodeArticleCalcule.Text;
          FSModuleCalculeFormules.TableauDetaiMouvement.Cells[2,6]:='xxx';
          FSModuleCalculeFormules.TableauDetaiMouvement.Cells[3,6]:='xxx';
          FSModuleCalculeFormules.TableauDetaiMouvement.Cells[4,6]:='xxx';
          FSModuleCalculeFormules.TableauDetaiMouvement.Cells[5,6]:='xxx';
          FSModuleCalculeFormules.TableauDetaiMouvement.Cells[6,6]:=FSModuleCalculeFormules.EditValeurPrincipale.Text;
          FSModuleCalculeFormules.TableauDetaiMouvement.Cells[7,6]:='1';
          CalculeFicheSaisie(FSModuleCalculeFormules.TableauFormules,FSModuleCalculeFormules.TableauVariable,FSModuleCalculeFormules.TableauDetaiMouvement,'',NbrChiffreApresVergulePrix,6,FSModuleCalculeFormules.EditCodeTypeFormuleAfficher,false);
          AfficherRecapeFicheSaisie(FSModuleCalculeFormules.TableauDetaiMouvement,FSModuleCalculeFormules.TableauFormules,FSModuleCalculeFormules.EditChiffreEnLettres,FSModuleCalculeFormules.EditTitreChiffreEnLettres,FSModuleCalculeFormules.EditMontantMouvement);

          FSModuleCalculeFormules.EditResultatCalcule.Lines.Text:='';
          R:=FSModuleCalculeFormules.TableauFormules.RowCount-1;
          while(R>=1)and(FSModuleCalculeFormules.EditResultatCalcule.Lines.Text='')do
          begin
               if(FSModuleCalculeFormules.TableauFormules.RowHeights[R]>0)then
               begin
                    FSModuleCalculeFormules.EditResultatCalcule.Lines.Text:=FSModuleCalculeFormules.TableauFormules.Cells[5,R];
               end;
          R:=R-1;
          end;

          FSModuleCalculeFormules.EditValeurPrincipale.Text:=Vergule(FSModuleCalculeFormules.EditValeurPrincipale.Text,NbrChiffreApresVergulePrix,'C','');
          RrixAppliqerFormuleCalcule:=strtoreal(FSModuleCalculeFormules.EditResultatCalcule.Lines.Text);
     end;
end;

procedure TFSModuleCalculeFormules.EditCodeArticleCalculeEnter(
  Sender: TObject);
var  RowOut:integer;
begin
     FSModuleCalculeFormules.TableauSelection.Left:=FSModuleCalculeFormules.TypeFormuleAfficher.Left+FSModuleCalculeFormules.EditCodeArticleCalcule.Left;
     FSModuleCalculeFormules.TableauSelection.Top:=FSModuleCalculeFormules.TypeFormuleAfficher.Top+FSModuleCalculeFormules.EditCodeArticleCalcule.Top+FSModuleCalculeFormules.EditCodeArticleCalcule.Height+2;
     FSModuleCalculeFormules.TableauSelection.Visible:=true;

     if(strtointeger(FSModuleCalculeFormules.EditNbrChiffreCompte.Text)=10)then
     begin
          ProcAfficheStockArticleListe(FSModuleCalculeFormules.TableauSelection,'Article','','','','','','',true,0,RowOut);
     end
     else
     begin
          ListePlanComptable(FSModuleCalculeFormules.TableauSelection,strtointeger(FSModuleCalculeFormules.EditNbrChiffreCompte.Text),'','','PlanComptable');
     end;
end;

procedure TFSModuleCalculeFormules.EditNbrChiffreCompteSelect(
  Sender: TObject);
var  RowOut:integer;
begin
     FSModuleCalculeFormules.TableauSelection.Left:=FSModuleCalculeFormules.TypeFormuleAfficher.Left+FSModuleCalculeFormules.EditCodeArticleCalcule.Left;
     FSModuleCalculeFormules.TableauSelection.Top:=FSModuleCalculeFormules.TypeFormuleAfficher.Top+FSModuleCalculeFormules.EditCodeArticleCalcule.Top+FSModuleCalculeFormules.EditCodeArticleCalcule.Height+2;
     FSModuleCalculeFormules.TableauSelection.Visible:=true;

     if(strtointeger(FSModuleCalculeFormules.EditNbrChiffreCompte.Text)=10)then
     begin
          ProcAfficheStockArticleListe(FSModuleCalculeFormules.TableauSelection,'Article','','','','','','',true,0,RowOut);
     end
     else
     begin
          ListePlanComptable(FSModuleCalculeFormules.TableauSelection,strtointeger(FSModuleCalculeFormules.EditNbrChiffreCompte.Text),'','','PlanComptable');
     end;
end;

procedure TFSModuleCalculeFormules.TableauSelectionDblClick(
  Sender: TObject);
begin
     FSModuleCalculeFormules.EditCodeArticleCalcule.Text:=FSModuleCalculeFormules.TableauSelection.Cells[1,FSModuleCalculeFormules.TableauSelection.Row];
     FSModuleCalculeFormules.EditArticleCalcule.Text:=FSModuleCalculeFormules.TableauSelection.Cells[2,FSModuleCalculeFormules.TableauSelection.Row];
     if(strtointeger(FSModuleCalculeFormules.EditNbrChiffreCompte.Text)=10)then FSModuleCalculeFormules.EditValeurPrincipale.Text:=FSModuleCalculeFormules.TableauSelection.Cells[11,FSModuleCalculeFormules.TableauSelection.Row];
     FSModuleCalculeFormules.TableauSelection.Visible:=false;
end;

procedure TFSModuleCalculeFormules.TableauFormuleCalculeClick(
  Sender: TObject);
begin
     FSModuleCalculeFormules.TableauSelection.Visible:=false;
     FSModuleCalculeFormules.AfficheTypeFormule.Visible:=false;
end;

procedure TFSModuleCalculeFormules.TableauSelectionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_ESCAPE]then
     begin
          FSModuleCalculeFormules.EditCodeArticleCalcule.Text:='';
          FSModuleCalculeFormules.EditArticleCalcule.Text:='';
          FSModuleCalculeFormules.EditValeurPrincipale.Text:='';
          FSModuleCalculeFormules.TableauSelection.Visible:=false;
     end;
end;

procedure TFSModuleCalculeFormules.EditCodeArticleCalculeKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_DELETE]then
     begin
          FSModuleCalculeFormules.EditCodeArticleCalcule.Text:='';
          FSModuleCalculeFormules.EditArticleCalcule.Text:='';
          FSModuleCalculeFormules.EditValeurPrincipale.Text:='';
          FSModuleCalculeFormules.TableauSelection.Visible:=false;
     end;
end;

procedure TFSModuleCalculeFormules.EditArticleCalculeKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  RowOut:integer;
begin
     if(strtointeger(FSModuleCalculeFormules.EditNbrChiffreCompte.Text)=10)then
     begin
          ProcAfficheStockArticleListe(FSModuleCalculeFormules.TableauSelection,'Article','','','','',FSModuleCalculeFormules.EditArticleCalcule.Text,'',true,0,RowOut);
     end
     else
     begin
          ListePlanComptable(FSModuleCalculeFormules.TableauSelection,strtointeger(FSModuleCalculeFormules.EditNbrChiffreCompte.Text),FSModuleCalculeFormules.EditArticleCalcule.Text,'','PlanComptable');
     end;
end;

procedure TFSModuleCalculeFormules.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

end.
