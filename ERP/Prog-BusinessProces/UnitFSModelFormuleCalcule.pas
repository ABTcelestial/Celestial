unit UnitFSModelFormuleCalcule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, StdCtrls, Buttons;

type
  TFSModelFormuleCalcule = class(TForm)
    TableauModelFormule: TStringGrid;
    AfficheModelFormule: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    EditNumModelFormule: TEdit;
    Label2: TLabel;
    EditAbreviation: TEdit;
    Label3: TLabel;
    EditLibelle: TEdit;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    BitOperationModelFormule: TBitBtn;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    RBPourcentage: TRadioButton;
    RBNumerique: TRadioButton;
    EditTypeAffichage: TEdit;
    Label4: TLabel;
    procedure RBPourcentageClick(Sender: TObject);
    procedure RBNumeriqueClick(Sender: TObject);
    procedure EditNumModelFormuleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAbreviationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditLibelleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTypeAffichageKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitOperationModelFormuleClick(Sender: TObject);
    procedure TableauModelFormuleClick(Sender: TObject);
    procedure TableauModelFormuleKeyPress(Sender: TObject; var Key: Char);
    procedure RBPourcentageKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBNumeriqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSModelFormuleCalcule: TFSModelFormuleCalcule;

Procedure ListeModeleFormule(TableauModeleFormule:TStringGrid);

implementation

Uses UnitInitialisation;

var
   RParc:RInstalle;
   FParc:FInstalle;
   ParcInstalle:string100;
   
   RModelFormule:RModelFormules;
   FModelFormule:FModelFormules;
   ChModelFormule:string250;

{$R *.dfm}

Procedure ListeModeleFormule(TableauModeleFormule:TStringGrid);
var i:integer;
begin
     TableauModeleFormule.RowCount:=2;
     TableauModeleFormule.Rows[1].Text:='';
     TableauModeleFormule.Cols[0].Text:='N°';
     TableauModeleFormule.Cols[1].Text:='Num';
     TableauModeleFormule.Cols[2].Text:='Abréviation';
     TableauModeleFormule.Cols[3].Text:='Libellé';
     TableauModeleFormule.Cols[4].Text:='Type Affichage';

     OpenFParc(RParc);
     ChModelFormule:=RParc.Parcours+'\'+Exercice+'FModelFormule ';
     assignfile(FModelFormule,ChModelFormule);
     if FileExists(ChModelFormule)then
     Reset(FModelFormule)
     else Rewrite(FModelFormule);
     Seek(FModelFormule,0);
     i:=0;
     while not eof(FModelFormule)do
     begin
          read(FModelFormule,RModelFormule);
          i:=i+1;
          TableauModeleFormule.Rows[i].Text:=inttostr(i);
          TableauModeleFormule.Cells[1,i]:=inttostr(RModelFormule.NumModelFormule);
          TableauModeleFormule.Cells[2,i]:=RModelFormule.AbreviationModelFormule;
          TableauModeleFormule.Cells[3,i]:=RModelFormule.LibelleModelFormule;
          TableauModeleFormule.Cells[4,i]:=RModelFormule.TypeAffichage;
     end;
     CloseFile(FModelFormule);

     if(i>0)then
     begin
          TableauModeleFormule.RowCount:=i+1;
     end
     else
     begin
          TableauModeleFormule.RowCount:=2;
          TableauModeleFormule.Rows[1].Text:='';
     end;

     AjusterColWidth(TableauModeleFormule,'','');
end;

procedure TFSModelFormuleCalcule.RBPourcentageClick(Sender: TObject);
begin
FSModelFormuleCalcule.EditTypeAffichage.Text:='%';
end;

procedure TFSModelFormuleCalcule.RBNumeriqueClick(Sender: TObject);
begin
FSModelFormuleCalcule.EditTypeAffichage.Text:='Num';
end;

procedure TFSModelFormuleCalcule.EditNumModelFormuleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSModelFormuleCalcule.EditAbreviation.SetFocus;
end;

end;

procedure TFSModelFormuleCalcule.EditAbreviationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSModelFormuleCalcule.EditLibelle.SetFocus;
end;

end;

procedure TFSModelFormuleCalcule.EditLibelleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSModelFormuleCalcule.EditTypeAffichage.Text='%')
     then FSModelFormuleCalcule.RBPourcentage.SetFocus
     else FSModelFormuleCalcule.RBNumerique.SetFocus;
end;

end;

procedure TFSModelFormuleCalcule.EditTypeAffichageKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSModelFormuleCalcule.BitOperationModelFormule.SetFocus;
end;

end;

procedure TFSModelFormuleCalcule.BitBtn1Click(Sender: TObject);
begin
FSModelFormuleCalcule.TableauModelFormule.SetFocus;
FSModelFormuleCalcule.AfficheModelFormule.Visible:=false;
end;

procedure TFSModelFormuleCalcule.BitOperationModelFormuleClick(
  Sender: TObject);
var   i:integer;   OKModelFormule:boolean;
begin

if(FSModelFormuleCalcule.BitOperationModelFormule.Caption='Valider')then
begin
     OpenFParc(RParc);
     ChModelFormule:=RParc.Parcours+'\'+Exercice+'FModelFormule ';
     assignfile(FModelFormule,ChModelFormule);
     if FileExists(ChModelFormule)then
     Reset(FModelFormule)
     else Rewrite(FModelFormule);
     Seek(FModelFormule,0);
     i:=0;
     OKModelFormule:=false;
     while not eof(FModelFormule)and(OKModelFormule=false)do
     begin
          read(FModelFormule,RModelFormule);
          if(inttostr(RModelFormule.NumModelFormule)=FSModelFormuleCalcule.EditNumModelFormule.Text)then
          begin
               OKModelFormule:=true;
          end
          else i:=i+1;
     end;

     RModelFormule.NumModelFormule:=strtointeger(FSModelFormuleCalcule.EditNumModelFormule.Text);
     RModelFormule.AbreviationModelFormule:=FSModelFormuleCalcule.EditAbreviation.Text;
     RModelFormule.LibelleModelFormule:=FSModelFormuleCalcule.EditLibelle.Text;
     RModelFormule.TypeAffichage:=FSModelFormuleCalcule.EditTypeAffichage.Text;
     Seek(FModelFormule,i);
     write(FModelFormule,RModelFormule);
     CloseFile(FModelFormule);
end;

if(FSModelFormuleCalcule.BitOperationModelFormule.Caption='Supprimer')then
begin
     DeleteFModelFormule(FSModelFormuleCalcule.EditNumModelFormule.Text,OKModelFormule);
end;

ListeModeleFormule(FSModelFormuleCalcule.TableauModelFormule);

FSModelFormuleCalcule.TableauModelFormule.SetFocus;
FSModelFormuleCalcule.AfficheModelFormule.Visible:=false;
end;

procedure TFSModelFormuleCalcule.TableauModelFormuleClick(Sender: TObject);
begin
FSModelFormuleCalcule.AfficheModelFormule.Visible:=false;
end;

procedure TFSModelFormuleCalcule.TableauModelFormuleKeyPress(
  Sender: TObject; var Key: Char);
var  Num:integer;
begin

if key in['n','N','+']then
begin
     if(FSModelFormuleCalcule.TableauModelFormule.RowCount<=10)then
     begin
          OpenFParc(RParc);
          ChModelFormule:=RParc.Parcours+'\'+Exercice+'FModelFormule ';
          assignfile(FModelFormule,ChModelFormule);
          if FileExists(ChModelFormule)then
          Reset(FModelFormule)
          else Rewrite(FModelFormule);
          Seek(FModelFormule,0);
          Num:=1;
          while not eof(FModelFormule)do
          begin
               read(FModelFormule,RModelFormule);
               if(Num<=RModelFormule.NumModelFormule)then Num:=RModelFormule.NumModelFormule+1;
          end;
          CloseFile(FModelFormule);
          
          FSModelFormuleCalcule.AfficheModelFormule.Visible:=true;
          FSModelFormuleCalcule.BitOperationModelFormule.Kind:=bkAll;
          FSModelFormuleCalcule.BitOperationModelFormule.Caption:='Valider';
          FSModelFormuleCalcule.EditNumModelFormule.Text:=inttostr(Num);
          FSModelFormuleCalcule.EditAbreviation.Text:='';
          FSModelFormuleCalcule.EditLibelle.Text:='';
          FSModelFormuleCalcule.EditTypeAffichage.Text:='Num';
          FSModelFormuleCalcule.RBNumerique.Checked:=true;
          FSModelFormuleCalcule.EditAbreviation.SetFocus;
     end
     else
     begin
          showmessage('Le nombre de modele est de dis (10)!');
     end;
end;

if key in['m','M']then
begin
     FSModelFormuleCalcule.AfficheModelFormule.Visible:=true;
     FSModelFormuleCalcule.BitOperationModelFormule.Kind:=bkAll;
     FSModelFormuleCalcule.BitOperationModelFormule.Caption:='Valider';
     FSModelFormuleCalcule.EditNumModelFormule.Text:=FSModelFormuleCalcule.TableauModelFormule.Cells[1,FSModelFormuleCalcule.TableauModelFormule.Row];
     FSModelFormuleCalcule.EditAbreviation.Text:=FSModelFormuleCalcule.TableauModelFormule.Cells[2,FSModelFormuleCalcule.TableauModelFormule.Row];;
     FSModelFormuleCalcule.EditLibelle.Text:=FSModelFormuleCalcule.TableauModelFormule.Cells[3,FSModelFormuleCalcule.TableauModelFormule.Row];;
     FSModelFormuleCalcule.EditTypeAffichage.Text:=FSModelFormuleCalcule.TableauModelFormule.Cells[4,FSModelFormuleCalcule.TableauModelFormule.Row];;

     if(FSModelFormuleCalcule.EditTypeAffichage.Text='%')
     then FSModelFormuleCalcule.RBPourcentage.SetFocus
     else FSModelFormuleCalcule.RBNumerique.SetFocus;

     FSModelFormuleCalcule.EditAbreviation.SetFocus;
end;

if key in['s','S','-']then
begin
     FSModelFormuleCalcule.AfficheModelFormule.Visible:=true;
     FSModelFormuleCalcule.BitOperationModelFormule.Kind:=bkCancel;
     FSModelFormuleCalcule.BitOperationModelFormule.Caption:='Supprimer';
     FSModelFormuleCalcule.EditNumModelFormule.Text:=FSModelFormuleCalcule.TableauModelFormule.Cells[1,FSModelFormuleCalcule.TableauModelFormule.Row];
     FSModelFormuleCalcule.EditAbreviation.Text:=FSModelFormuleCalcule.TableauModelFormule.Cells[2,FSModelFormuleCalcule.TableauModelFormule.Row];;
     FSModelFormuleCalcule.EditLibelle.Text:=FSModelFormuleCalcule.TableauModelFormule.Cells[3,FSModelFormuleCalcule.TableauModelFormule.Row];;
     FSModelFormuleCalcule.EditTypeAffichage.Text:=FSModelFormuleCalcule.TableauModelFormule.Cells[4,FSModelFormuleCalcule.TableauModelFormule.Row];;
     FSModelFormuleCalcule.BitOperationModelFormule.SetFocus;
end;

end;

procedure TFSModelFormuleCalcule.RBPourcentageKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSModelFormuleCalcule.BitOperationModelFormule.SetFocus;
end;

end;

procedure TFSModelFormuleCalcule.RBNumeriqueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSModelFormuleCalcule.BitOperationModelFormule.SetFocus;
end;

end;

procedure TFSModelFormuleCalcule.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     FSModelFormuleCalcule.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Model Formule de Calcule';
end;

procedure TFSModelFormuleCalcule.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

end.
