unit UnitFSListeValeurs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TFSListeValeurs = class(TForm)
    TableauListeValeurs: TStringGrid;
    AfficheOperationListeValeurs: TPanel;
    BitBtn1: TBitBtn;
    BitOperationListeValeurs: TBitBtn;
    Bevel1: TBevel;
    Label1: TLabel;
    EditCodeFormule: TEdit;
    EditFormule: TEdit;
    Bevel2: TBevel;
    Label2: TLabel;
    EditCodeCompte: TEdit;
    EditDesignationCompte: TEdit;
    Label3: TLabel;
    EditTypeAffichage: TComboBox;
    Label4: TLabel;
    EditValeur: TEdit;
    Label5: TLabel;
    EditCodeTypeFormule: TEdit;
    EditTypeFormule: TEdit;
    EditPositionFormule: TEdit;
    EditPositionListeValeur: TEdit;
    Label6: TLabel;
    AfficheMoseAffichage: TPanel;
    EditModeAffichage: TEdit;
    TableauSelection: TStringGrid;
    EditNbrChiffreCompte: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure TableauListeValeursClick(Sender: TObject);
    procedure BitOperationListeValeursClick(Sender: TObject);
    procedure TableauListeValeursKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodeTypeFormuleEnter(Sender: TObject);
    procedure EditCodeFormuleEnter(Sender: TObject);
    procedure TableauSelectionDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditPositionListeValeurKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditCodeTypeFormuleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodeFormuleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodeCompteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTypeAffichageKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValeurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNbrChiffreCompteKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodeCompteEnter(Sender: TObject);
    procedure EditNbrChiffreCompteSelect(Sender: TObject);
    procedure EditValeurKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSListeValeurs: TFSListeValeurs;

  Procedure ProcListeValeursFormuleArticle(TableauListeValeursFormuleArticle:TStringGrid; CodeTypeFormule,PositionFormule:string);
  Function ValeurFormuleParArticle(TypeFormule,CodeFormule,CodeArticle:string; var ValeurResultat:string):boolean;

implementation

Uses UnitInitialisation, UnitSuppression, UnitFSFormules, UnitFSPlanComptable, UnitFSGenerateurBase, UnitFSFicheSaisie;

{$R *.dfm}

procedure TFSListeValeurs.BitBtn1Click(Sender: TObject);
begin
     FSListeValeurs.AfficheOperationListeValeurs.Visible:=false;
     FSListeValeurs.TableauSelection.Visible:=false;
end;

procedure TFSListeValeurs.TableauListeValeursClick(Sender: TObject);
begin
     FSListeValeurs.AfficheOperationListeValeurs.Visible:=false;
     FSListeValeurs.TableauSelection.Visible:=false;
end;

procedure TFSListeValeurs.BitOperationListeValeursClick(Sender: TObject);
var  i,iTrouver:integer;   OKListeValeursFormuleArticle:boolean;
begin
     if(FSListeValeurs.BitOperationListeValeurs.Caption='Valider')then
     begin
          OpenFParc(RParc);
          ChListeValeursFormuleArticle:=RParc.Parcours+'\'+Exercice+'FListeValeursFormuleArticle';
          assignfile(FListeValeursFormuleArticle,ChListeValeursFormuleArticle);
          if FileExists(ChListeValeursFormuleArticle)then
          Reset(FListeValeursFormuleArticle)
          else Rewrite(FListeValeursFormuleArticle);
          Seek(FListeValeursFormuleArticle,0);
          i:=0;
          OKListeValeursFormuleArticle:=false;
          while not eof(FListeValeursFormuleArticle)and(OKListeValeursFormuleArticle=false)do
          begin
               read(FListeValeursFormuleArticle,RListeValeursFormuleArticle);
               if(inttostr(RListeValeursFormuleArticle.PositionListeValeursFormuleArticle)=FSListeValeurs.EditPositionListeValeur.Text)
               then
               begin
                    OKListeValeursFormuleArticle:=true;
                    iTrouver:=i;
               end;
          i:=i+1;
          end;

          if(OKListeValeursFormuleArticle=true)then i:=iTrouver;
          Seek(FListeValeursFormuleArticle,i);
          RListeValeursFormuleArticle.PositionListeValeursFormuleArticle:=i;
          RListeValeursFormuleArticle.CodeTypeFormule:=FSListeValeurs.EditCodeTypeFormule.Text;
          RListeValeursFormuleArticle.PositionFormule:=strtointeger(FSListeValeurs.EditPositionFormule.Text);
          RListeValeursFormuleArticle.CodeArticle:=FSListeValeurs.EditCodeCompte.Text;
          RListeValeursFormuleArticle.TypeAffichage:=FSListeValeurs.Text;
          RListeValeursFormuleArticle.TypeAffichage:=FSListeValeurs.EditTypeAffichage.Text;
          RListeValeursFormuleArticle.Valeur:=strtoreal(FSListeValeurs.EditValeur.Text);
          write(FListeValeursFormuleArticle,RListeValeursFormuleArticle);

          CloseFile(FListeValeursFormuleArticle);
     end;

     if(FSListeValeurs.BitOperationListeValeurs.Caption='Supprimer')then
     begin
          DeleteFListeValeursFormuleArticle(FSListeValeurs.EditPositionListeValeur.Text,OKListeValeursFormuleArticle);
     end;

     FSListeValeurs.AfficheOperationListeValeurs.Visible:=false;
     ProcListeValeursFormuleArticle(FSListeValeurs.TableauListeValeurs,'','');
end;

Procedure ProcListeValeursFormuleArticle(TableauListeValeursFormuleArticle:TStringGrid; CodeTypeFormule,PositionFormule:string);
var  R:integer;   OKListeValeursFormuleArticle:boolean;  NotRow,NotCol,RubriqueRecherche:string;
begin
     TableauListeValeursFormuleArticle.ColCount:=10;
     TableauListeValeursFormuleArticle.Cols[0].Text:='P°';
     TableauListeValeursFormuleArticle.Cols[1].Text:='Code Type Formule';
     TableauListeValeursFormuleArticle.Cols[2].Text:='Type Formule';
     TableauListeValeursFormuleArticle.Cols[3].Text:='P°Formule';
     TableauListeValeursFormuleArticle.Cols[4].Text:='Code Formule';
     TableauListeValeursFormuleArticle.Cols[5].Text:='Formule';
     TableauListeValeursFormuleArticle.Cols[6].Text:='Code Article';
     TableauListeValeursFormuleArticle.Cols[7].Text:='Article';
     TableauListeValeursFormuleArticle.Cols[8].Text:='Type Affichage';
     TableauListeValeursFormuleArticle.Cols[9].Text:='Valeur';

     TableauListeValeursFormuleArticle.RowCount:=2;
     TableauListeValeursFormuleArticle.Rows[1].Text:='';

     OpenFParc(RParc);
     ChListeValeursFormuleArticle:=RParc.Parcours+'\'+Exercice+'FListeValeursFormuleArticle';
     assignfile(FListeValeursFormuleArticle,ChListeValeursFormuleArticle);
     if FileExists(ChListeValeursFormuleArticle)then
     Reset(FListeValeursFormuleArticle)
     else Rewrite(FListeValeursFormuleArticle);
     Seek(FListeValeursFormuleArticle,0);
     R:=0;
     while not eof(FListeValeursFormuleArticle)do
     begin
          read(FListeValeursFormuleArticle,RListeValeursFormuleArticle);

          if(CodeTypeFormule<>'')then
          begin
               if(RListeValeursFormuleArticle.CodeTypeFormule=CodeTypeFormule)
               then OKListeValeursFormuleArticle:=true
               else OKListeValeursFormuleArticle:=false;
          end
          else OKListeValeursFormuleArticle:=true;

          if(OKListeValeursFormuleArticle=true)then
          begin
               if(PositionFormule<>'')then
               begin
                    if(inttostr(RListeValeursFormuleArticle.PositionFormule)=PositionFormule)
                    then OKListeValeursFormuleArticle:=true
                    else OKListeValeursFormuleArticle:=false;
               end
          end;

          if(OKListeValeursFormuleArticle=true)then
          begin
               R:=R+1;
               TableauListeValeursFormuleArticle.Rows[R].Text:='';
               TableauListeValeursFormuleArticle.Cells[0,R]:=inttostr(RListeValeursFormuleArticle.PositionListeValeursFormuleArticle);
               TableauListeValeursFormuleArticle.Cells[1,R]:=RListeValeursFormuleArticle.CodeTypeFormule;
               TableauListeValeursFormuleArticle.Cells[2,R]:=ChercherTypeFormule(RListeValeursFormuleArticle.CodeTypeFormule,'').DesignationTypeFormule;
               TableauListeValeursFormuleArticle.Cells[3,R]:=inttostr(RListeValeursFormuleArticle.PositionFormule);
               RFormuleCopie:=ChercherFormule(RListeValeursFormuleArticle.CodeTypeFormule,inttostr(RListeValeursFormuleArticle.PositionFormule));
               TableauListeValeursFormuleArticle.Cells[4,R]:=RFormuleCopie.CodeFormule;
               TableauListeValeursFormuleArticle.Cells[5,R]:=RFormuleCopie.Libelle;
               TableauListeValeursFormuleArticle.Cells[6,R]:=RListeValeursFormuleArticle.CodeArticle;
               if(longueur(RListeValeursFormuleArticle.CodeArticle)=10)
               then TableauListeValeursFormuleArticle.Cells[7,R]:=ChercherStockArticle('Article','',RListeValeursFormuleArticle.CodeArticle,'',OKStockRecherche,RubriqueRecherche).Design
               else
               if(ChercherCompteComptable(RListeValeursFormuleArticle.CodeArticle,inttostr(longueur(RListeValeursFormuleArticle.CodeArticle)),'PlanComptable',RRegistreCompteCopie)=true)then TableauListeValeursFormuleArticle.Cells[7,R]:=RRegistreCompteCopie.Designation;
               TableauListeValeursFormuleArticle.Cells[8,R]:=RListeValeursFormuleArticle.TypeAffichage;
               TableauListeValeursFormuleArticle.Cells[9,R]:=Vergule(floattostr(RListeValeursFormuleArticle.Valeur),'2','C','');
          end;
     end;
     CloseFile(FListeValeursFormuleArticle);

     if(R>0)then TableauListeValeursFormuleArticle.RowCount:=R+1
            else TableauListeValeursFormuleArticle.RowCount:=2;
     NotRow:='';
     NotCol:='';
     AjusterColWidth(TableauListeValeursFormuleArticle,NotRow,NotCol);
end;

procedure TFSListeValeurs.TableauListeValeursKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in['n','N']then
     begin
          FSListeValeurs.AfficheOperationListeValeurs.Visible:=true;
          FSListeValeurs.BitOperationListeValeurs.Kind:=bkAll;
          FSListeValeurs.BitOperationListeValeurs.Caption:='Valider';

          FSListeValeurs.EditPositionListeValeur.Text:='';
          FSListeValeurs.EditCodeTypeFormule.Text:='';
          FSListeValeurs.EditPositionFormule.Text:='';
          FSListeValeurs.EditCodeFormule.Text:='';
          FSListeValeurs.EditFormule.Text:='';
          FSListeValeurs.EditCodeCompte.Text:='';
          FSListeValeurs.EditDesignationCompte.Text:='';
          FSListeValeurs.EditTypeAffichage.Text:='';
          FSListeValeurs.EditValeur.Text:='';
     end;

     if key in['m','M']then
     begin
          FSListeValeurs.AfficheOperationListeValeurs.Visible:=true;
          FSListeValeurs.BitOperationListeValeurs.Kind:=bkAll;
          FSListeValeurs.BitOperationListeValeurs.Caption:='Valider';

          FSListeValeurs.EditPositionListeValeur.Text:=FSListeValeurs.TableauListeValeurs.Cells[0,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditCodeTypeFormule.Text:=FSListeValeurs.TableauListeValeurs.Cells[1,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditTypeFormule.Text:=FSListeValeurs.TableauListeValeurs.Cells[2,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditPositionFormule.Text:=FSListeValeurs.TableauListeValeurs.Cells[3,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditCodeFormule.Text:=FSListeValeurs.TableauListeValeurs.Cells[4,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditFormule.Text:=FSListeValeurs.TableauListeValeurs.Cells[5,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditCodeCompte.Text:=FSListeValeurs.TableauListeValeurs.Cells[6,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditDesignationCompte.Text:=FSListeValeurs.TableauListeValeurs.Cells[7,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditTypeAffichage.Text:=FSListeValeurs.TableauListeValeurs.Cells[8,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditValeur.Text:=FSListeValeurs.TableauListeValeurs.Cells[9,FSListeValeurs.TableauListeValeurs.Row];
     end;

     if key in['s','S']then
     begin
          FSListeValeurs.AfficheOperationListeValeurs.Visible:=true;
          FSListeValeurs.BitOperationListeValeurs.Kind:=bkCancel;
          FSListeValeurs.BitOperationListeValeurs.Caption:='Supprimer';

          FSListeValeurs.EditPositionListeValeur.Text:=FSListeValeurs.TableauListeValeurs.Cells[0,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditCodeTypeFormule.Text:=FSListeValeurs.TableauListeValeurs.Cells[1,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditTypeFormule.Text:=FSListeValeurs.TableauListeValeurs.Cells[2,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditPositionFormule.Text:=FSListeValeurs.TableauListeValeurs.Cells[3,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditCodeFormule.Text:=FSListeValeurs.TableauListeValeurs.Cells[4,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditFormule.Text:=FSListeValeurs.TableauListeValeurs.Cells[5,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditCodeCompte.Text:=FSListeValeurs.TableauListeValeurs.Cells[6,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditDesignationCompte.Text:=FSListeValeurs.TableauListeValeurs.Cells[7,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditTypeAffichage.Text:=FSListeValeurs.TableauListeValeurs.Cells[8,FSListeValeurs.TableauListeValeurs.Row];
          FSListeValeurs.EditValeur.Text:=FSListeValeurs.TableauListeValeurs.Cells[9,FSListeValeurs.TableauListeValeurs.Row];
     end;
end;

procedure TFSListeValeurs.EditCodeTypeFormuleEnter(Sender: TObject);
begin
     FSListeValeurs.TableauSelection.Left:=FSListeValeurs.AfficheOperationListeValeurs.Left+FSListeValeurs.EditCodeTypeFormule.Left;
     FSListeValeurs.TableauSelection.Top:=FSListeValeurs.AfficheOperationListeValeurs.Top+FSListeValeurs.EditCodeTypeFormule.Top+FSListeValeurs.EditCodeTypeFormule.Height+2;
     FSListeValeurs.TableauSelection.Visible:=true;
     ListeTypeFormule(FSListeValeurs.TableauSelection);
     FSListeValeurs.TableauSelection.Cells[0,0]:='TF';
     
end;

procedure TFSListeValeurs.EditCodeFormuleEnter(Sender: TObject);
begin
     FSListeValeurs.TableauSelection.Left:=FSListeValeurs.AfficheOperationListeValeurs.Left+FSListeValeurs.EditCodeFormule.Left;
     FSListeValeurs.TableauSelection.Top:=FSListeValeurs.AfficheOperationListeValeurs.Top+FSListeValeurs.EditCodeFormule.Top+FSListeValeurs.EditCodeFormule.Height+2;
     FSListeValeurs.TableauSelection.Visible:=true;
     ProcAfficheFormule(FSListeValeurs.TableauSelection,FSListeValeurs.EditCodeTypeFormule.Text);
     FSListeValeurs.TableauSelection.Cells[0,0]:='F';
end;

procedure TFSListeValeurs.TableauSelectionDblClick(Sender: TObject);
begin
     if(FSListeValeurs.TableauSelection.Cells[0,0]='TF')then
     begin
          FSListeValeurs.EditCodeTypeFormule.Text:=FSListeValeurs.TableauSelection.Cells[2,FSListeValeurs.TableauSelection.Row];
          FSListeValeurs.EditTypeFormule.Text:=FSListeValeurs.TableauSelection.Cells[3,FSListeValeurs.TableauSelection.Row];
     end;

     if(FSListeValeurs.TableauSelection.Cells[0,0]='F')then
     begin
          FSListeValeurs.EditPositionFormule.Text:=FSListeValeurs.TableauSelection.Cells[1,FSListeValeurs.TableauSelection.Row];
          FSListeValeurs.EditCodeFormule.Text:=FSListeValeurs.TableauSelection.Cells[2,FSListeValeurs.TableauSelection.Row];
          FSListeValeurs.EditFormule.Text:=FSListeValeurs.TableauSelection.Cells[3,FSListeValeurs.TableauSelection.Row];
     end;

     if(FSListeValeurs.TableauSelection.Cells[0,0]='ST')then
     begin
          FSListeValeurs.EditCodeCompte.Text:=FSListeValeurs.TableauSelection.Cells[1,FSListeValeurs.TableauSelection.Row];
          FSListeValeurs.EditDesignationCompte.Text:=FSListeValeurs.TableauSelection.Cells[2,FSListeValeurs.TableauSelection.Row];
     end;

     FSListeValeurs.TableauSelection.Visible:=false;
end;

procedure TFSListeValeurs.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     if(FSListeValeurs.EditModeAffichage.Text='')then
     begin
          FSListeValeurs.EditCodeTypeFormule.Enabled:=true;
          FSListeValeurs.EditCodeFormule.Enabled:=true;
     end
     else
     begin
          FSListeValeurs.EditCodeTypeFormule.Enabled:=false;
          FSListeValeurs.EditCodeFormule.Enabled:=false;
     end;
end;

procedure TFSListeValeurs.EditPositionListeValeurKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSListeValeurs.EditCodeTypeFormule.SetFocus;
     end;
end;

procedure TFSListeValeurs.EditCodeTypeFormuleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSListeValeurs.EditCodeFormule.SetFocus;
     end;
end;

procedure TFSListeValeurs.EditCodeFormuleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSListeValeurs.EditCodeCompte.SetFocus;
     end;
end;

procedure TFSListeValeurs.EditCodeCompteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSListeValeurs.EditTypeAffichage.SetFocus;
     end;
end;

procedure TFSListeValeurs.EditTypeAffichageKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSListeValeurs.EditValeur.SetFocus;
     end;
end;

procedure TFSListeValeurs.EditValeurKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSListeValeurs.BitOperationListeValeurs.SetFocus;
     end;
end;

procedure TFSListeValeurs.EditNbrChiffreCompteKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSListeValeurs.EditCodeCompteEnter(Sender: TObject);
var  RowOut:integer;
begin
     FSListeValeurs.TableauSelection.Left:=FSListeValeurs.AfficheOperationListeValeurs.Left+FSListeValeurs.EditCodeCompte.Left;
     FSListeValeurs.TableauSelection.Top:=FSListeValeurs.AfficheOperationListeValeurs.Top+FSListeValeurs.EditCodeCompte.Top+FSListeValeurs.EditCodeCompte.Height+2;
     FSListeValeurs.TableauSelection.Visible:=true;

     if(strtointeger(FSListeValeurs.EditNbrChiffreCompte.Text)=10)then
     begin
          ProcAfficheStockArticleListe(FSListeValeurs.TableauSelection,'Article','','','','','','',true,0,RowOut);
     end
     else
     begin
          ListePlanComptable(FSListeValeurs.TableauSelection,strtointeger(FSListeValeurs.EditNbrChiffreCompte.Text),'','','PlanComptable');
     end;

     FSListeValeurs.TableauSelection.Cells[0,0]:='ST';
end;

procedure TFSListeValeurs.EditNbrChiffreCompteSelect(Sender: TObject);
var  RowOut:integer;
begin
     FSListeValeurs.TableauSelection.Left:=FSListeValeurs.AfficheOperationListeValeurs.Left+FSListeValeurs.EditCodeCompte.Left;
     FSListeValeurs.TableauSelection.Top:=FSListeValeurs.AfficheOperationListeValeurs.Top+FSListeValeurs.EditCodeCompte.Top+FSListeValeurs.EditCodeCompte.Height+2;
     FSListeValeurs.TableauSelection.Visible:=true;

     if(strtointeger(FSListeValeurs.EditNbrChiffreCompte.Text)=10)then
     begin
          ProcAfficheStockArticleListe(FSListeValeurs.TableauSelection,'Article','','','','','','',true,0,RowOut);
     end
     else
     begin
          ListePlanComptable(FSListeValeurs.TableauSelection,strtointeger(FSListeValeurs.EditNbrChiffreCompte.Text),'','','PlanComptable');
     end;
end;

Function ValeurFormuleParArticle(TypeFormule,CodeFormule,CodeArticle:string; var ValeurResultat:string):boolean;
var  OKListeValeursFormuleArticle:boolean;
begin
     OKListeValeursFormuleArticle:=false;
     ValeurResultat:='';
     
     OpenFParc(RParc);
     ChListeValeursFormuleArticle:=RParc.Parcours+'\'+Exercice+'FListeValeursFormuleArticle';
     assignfile(FListeValeursFormuleArticle,ChListeValeursFormuleArticle);
     if FileExists(ChListeValeursFormuleArticle)then
     Reset(FListeValeursFormuleArticle)
     else Rewrite(FListeValeursFormuleArticle);
     Seek(FListeValeursFormuleArticle,0);
     OKListeValeursFormuleArticle:=false;
     while not eof(FListeValeursFormuleArticle)and(OKListeValeursFormuleArticle=false)do
     begin
          read(FListeValeursFormuleArticle,RListeValeursFormuleArticle);

          RFormuleAutres:=ChercheFormule(RListeValeursFormuleArticle.PositionFormule,RListeValeursFormuleArticle.CodeTypeFormule);
          RTypeFormuleAutres:=ChercherTypeFormule(RListeValeursFormuleArticle.CodeTypeFormule,'');

          if(RTypeFormuleAutres.DesignationTypeFormule=TypeFormule)
          and(RFormuleAutres.CodeFormule=CodeFormule)
          and(RListeValeursFormuleArticle.CodeArticle=Firstlaters(CodeArticle,longueur(RListeValeursFormuleArticle.CodeArticle)))
          then
          begin
               OKListeValeursFormuleArticle:=true;
               if(RListeValeursFormuleArticle.TypeAffichage='%')
               then ValeurResultat:=floattostr(RListeValeursFormuleArticle.Valeur*100)+'%'
               else ValeurResultat:=floattostr(RListeValeursFormuleArticle.Valeur);
          end;
     end;
     CloseFile(FListeValeursFormuleArticle);

     ValeurFormuleParArticle:=OKListeValeursFormuleArticle;
end;

procedure TFSListeValeurs.EditValeurKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key in['?',';','.','/',':','a'..'Z']then key:=',';
end;

procedure TFSListeValeurs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

end.
