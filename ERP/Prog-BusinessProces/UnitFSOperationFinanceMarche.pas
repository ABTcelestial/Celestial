unit UnitFSOperationFinanceMarche;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Grids, Buttons;

type
  TFSOperationFinanceMarche = class(TForm)
    BitBtn44: TBitBtn;
    TableauOperationFinance: TStringGrid;
    AfficheFinance: TPanel;
    EditActionOperationFinance: TEdit;
    TableauFinance: TStringGrid;
    BitBtn45: TBitBtn;
    BitBtn46: TBitBtn;
    AfficheNouvelleFinance: TPanel;
    BitBtn50: TBitBtn;
    EditDesignationFinance: TEdit;
    BitNouvelleFinance: TBitBtn;
    AfficheSaisieOperationFinance: TPanel;
    Bevel27: TBevel;
    Bevel25: TBevel;
    Label38: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Bevel26: TBevel;
    BitBtn49: TBitBtn;
    EditNFinance: TEdit;
    EditDesignFinance: TEdit;
    EditDateOperationFinance: TMaskEdit;
    EditDebitCreditOperationFinance: TComboBox;
    EditMontantOperationFinance: TMemo;
    BitNouvelleOperationFinance: TBitBtn;
    EditDateReception: TMaskEdit;
    EditSoldeFinance: TEdit;
    Panel8: TPanel;
    BitMarche: TBitBtn;
    EditFinanceNSMarche: TEdit;
    EditFinanceMarche: TEdit;
    AfficheFinanceListeMarche: TPanel;
    TableauFinanceListeMarche: TStringGrid;
    BitBtn48: TBitBtn;
    TimerClic: TTimer;
    procedure BitMarcheClick(Sender: TObject);
    procedure BitBtn44Click(Sender: TObject);
    procedure TableauOperationFinanceClick(Sender: TObject);
    procedure TableauOperationFinanceKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauOperationFinanceKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtn45Click(Sender: TObject);
    procedure BitBtn46Click(Sender: TObject);
    procedure BitBtn50Click(Sender: TObject);
    procedure BitNouvelleFinanceClick(Sender: TObject);
    procedure EditDesignationFinanceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauFinanceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauFinanceKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn48Click(Sender: TObject);
    procedure TableauFinanceListeMarcheKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtn49Click(Sender: TObject);
    procedure EditDateOperationFinanceEnter(Sender: TObject);
    procedure EditDateOperationFinanceExit(Sender: TObject);
    procedure EditDateOperationFinanceKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDebitCreditOperationFinanceExit(Sender: TObject);
    procedure EditDebitCreditOperationFinanceKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditMontantOperationFinanceExit(Sender: TObject);
    procedure EditMontantOperationFinanceKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDateReceptionExit(Sender: TObject);
    procedure EditDateReceptionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitNouvelleOperationFinanceClick(Sender: TObject);
    procedure AfficheSaisieOperationFinanceEnter(Sender: TObject);
    procedure AfficheSaisieOperationFinanceExit(Sender: TObject);
    procedure EditMontantOperationFinanceKeyPress(Sender: TObject;
      var Key: Char);
    procedure TimerClicTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSOperationFinanceMarche: TFSOperationFinanceMarche;

  Procedure InicialeOperationFinance;
  Procedure ProcAfficheOperationFinance(NSMarche:integer);
  Function SoldeFinance:real;
  Procedure TrierOperationFinance(Indice:integer);

implementation

Uses  UnitInitialisation, UnitSuppression, UnitFSMenuPrincipal;

{$R *.dfm}

procedure TFSOperationFinanceMarche.BitMarcheClick(Sender: TObject);
var  i:integer;
begin
InicialeOperationFinance;

FSOperationFinanceMarche.AfficheFinanceListeMarche.Visible:=true;
FSOperationFinanceMarche.TableauFinanceListeMarche.SetFocus;

{****************affichage******************}
FSOperationFinanceMarche.TableauFinanceListeMarche.Cols[1].Text:='N° Marche';
FSOperationFinanceMarche.TableauFinanceListeMarche.Cols[2].Text:='Marche';
FSOperationFinanceMarche.TableauFinanceListeMarche.RowCount:=2;
FSOperationFinanceMarche.TableauFinanceListeMarche.Rows[1].Text:='';

OpenFParc(RParc);
ChMarche:=RParc.Parcours+'\'+Exercice+'FMarche';
assignfile(FMarche,ChMarche);
if FileExists(ChMarche)then
Reset(FMarche)
else Rewrite(FMarche);
Seek(FMarche,0);
i:=0;
while not eof(FMarche)do
begin
     Read(FMarche,RMarche);
     i:=i+1;
     FSOperationFinanceMarche.TableauFinanceListeMarche.Rows[i].Text:=inttostr(i);
     FSOperationFinanceMarche.TableauFinanceListeMarche.Cells[1,i]:=inttostr(RMarche.NSMarche);
     FSOperationFinanceMarche.TableauFinanceListeMarche.Cells[2,i]:=RMarche.Marche;
end;
if(i>0)then FSOperationFinanceMarche.TableauFinanceListeMarche.RowCount:=i+1
       else FSOperationFinanceMarche.TableauFinanceListeMarche.RowCount:=2;
FSOperationFinanceMarche.TableauFinanceListeMarche.SetFocus;
{****************Fin de l'affichage******************}
end;

procedure TFSOperationFinanceMarche.BitBtn44Click(Sender: TObject);
begin
InicialeOperationFinance;

FSOperationFinanceMarche.Close;
end;

procedure TFSOperationFinanceMarche.TableauOperationFinanceClick(
  Sender: TObject);
begin
InicialeOperationFinance;
end;

procedure TFSOperationFinanceMarche.TableauOperationFinanceKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var  i,ARow:integer;  OK:boolean;
begin
ARow:=FSOperationFinanceMarche.TableauOperationFinance.Row;

if key in[VK_RETURN]then
begin
if(FSOperationFinanceMarche.EditFinanceNSMarche.Text='')then
begin
FSOperationFinanceMarche.AfficheFinanceListeMarche.Visible:=true;
FSOperationFinanceMarche.TableauFinanceListeMarche.SetFocus;

{****************affichage******************}
FSOperationFinanceMarche.TableauFinanceListeMarche.Cols[1].Text:='N° Marche';
FSOperationFinanceMarche.TableauFinanceListeMarche.Cols[2].Text:='Marche';
FSOperationFinanceMarche.TableauFinanceListeMarche.RowCount:=2;
FSOperationFinanceMarche.TableauFinanceListeMarche.Rows[1].Text:='';

OpenFParc(RParc);
ChMarche:=RParc.Parcours+'\'+Exercice+'FMarche';
assignfile(FMarche,ChMarche);
if FileExists(ChMarche)then
Reset(FMarche)
else Rewrite(FMarche);
Seek(FMarche,0);
i:=0;
while not eof(FMarche)do
begin
     Read(FMarche,RMarche);
     i:=i+1;
     FSOperationFinanceMarche.TableauFinanceListeMarche.Rows[i].Text:=inttostr(i);
     FSOperationFinanceMarche.TableauFinanceListeMarche.Cells[1,i]:=inttostr(RMarche.NSMarche);
     FSOperationFinanceMarche.TableauFinanceListeMarche.Cells[2,i]:=RMarche.Marche;
end;
if(i>0)then FSOperationFinanceMarche.TableauFinanceListeMarche.RowCount:=i+1
       else FSOperationFinanceMarche.TableauFinanceListeMarche.RowCount:=2;
FSOperationFinanceMarche.TableauFinanceListeMarche.SetFocus;
{****************Fin de l'affichage******************}
end
else
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true) then exit;

FSOperationFinanceMarche.AfficheFinance.Visible:=true;
FSOperationFinanceMarche.EditActionOperationFinance.Text:='N';

FSOperationFinanceMarche.TableauFinance.Cols[1].Text:='N° Finance';
FSOperationFinanceMarche.TableauFinance.Cols[2].Text:='Désignation Opération Financière';
FSOperationFinanceMarche.TableauFinance.RowCount:=2;
FSOperationFinanceMarche.TableauFinance.Rows[1].Text:='';

OpenFParc(RParc);
ChFinance:=RParc.Parcours+'\'+Exercice+'FFinance';
assignfile(FFinance,ChFinance);
if FileExists(ChFinance)then
Reset(FFinance)
else Rewrite(FFinance);
Seek(FFinance,0);
i:=0;
while not eof(FFinance)do
begin
     Read(FFinance,RFinance);
     i:=i+1;
     FSOperationFinanceMarche.TableauFinance.Rows[i].Text:=inttostr(i);
     FSOperationFinanceMarche.TableauFinance.Cells[1,i]:=inttostr(RFinance.NFinance);
     FSOperationFinanceMarche.TableauFinance.Cells[2,i]:=RFinance.DesignFinance;
end;
CloseFile(FFinance);
if(i>0)then FSOperationFinanceMarche.TableauFinance.RowCount:=i+1
       else FSOperationFinanceMarche.TableauFinance.RowCount:=2;
FSOperationFinanceMarche.TableauFinance.SetFocus;
end;
end;


if key in[VK_DELETE]then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true) then exit;

if((FSOperationFinanceMarche.EditFinanceNSMarche.Text<>'')
and(FSOperationFinanceMarche.TableauOperationFinance.Cells[1,ARow]<>''))
then
begin
OpenFParc(RParc);
ChFinance:=RParc.Parcours+'\'+Exercice+'FFinance';
assignfile(FFinance,ChFinance);
if FileExists(ChFinance)then
Reset(FFinance)
else Rewrite(FFinance);
Seek(FFinance,0);
OK:=false;
while not eof(FFinance)and(OK=false)do
begin
     Read(FFinance,RFinance);
     if(RFinance.NFinance=strtointeger(FSOperationFinanceMarche.TableauOperationFinance.Cells[3,ARow]))
     then
     begin
          OK:=true;
          FSOperationFinanceMarche.AfficheSaisieOperationFinance.Visible:=true;
          FSOperationFinanceMarche.BitNouvelleOperationFinance.Kind:=bkCancel;
          FSOperationFinanceMarche.BitNouvelleOperationFinance.Caption:='Supprimer';

          FSOperationFinanceMarche.EditNFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[3,ARow];
          FSOperationFinanceMarche.EditDesignFinance.Text:=RFinance.DesignFinance;
          FSOperationFinanceMarche.EditDateOperationFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[4,ARow];

          if(FSOperationFinanceMarche.TableauOperationFinance.Cells[9,ARow]='1')then
          begin
               FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text:='Apport';
               FSOperationFinanceMarche.EditMontantOperationFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[7,ARow];
          end;

          if(FSOperationFinanceMarche.TableauOperationFinance.Cells[9,ARow]='-1')then
          begin
               FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text:='Rembourssement';
               FSOperationFinanceMarche.EditMontantOperationFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[8,ARow];
          end;

          FSOperationFinanceMarche.EditDateReception.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[10,ARow];

          FSOperationFinanceMarche.BitNouvelleOperationFinance.SetFocus;
     end;
end;
CloseFile(FFinance);
end;
end;
end;

procedure TFSOperationFinanceMarche.TableauOperationFinanceKeyPress(
  Sender: TObject; var Key: Char);
var  i,R,ARow:integer;  OK:boolean;
begin
ARow:=FSOperationFinanceMarche.TableauOperationFinance.Row;

if key in['n','N']then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true) then exit;

FSOperationFinanceMarche.AfficheFinance.Visible:=true;
FSOperationFinanceMarche.EditActionOperationFinance.Text:='N';

FSOperationFinanceMarche.TableauFinance.Cols[1].Text:='N° Finance';
FSOperationFinanceMarche.TableauFinance.Cols[2].Text:='Désignation Opération Financière';
FSOperationFinanceMarche.TableauFinance.RowCount:=2;
FSOperationFinanceMarche.TableauFinance.Rows[1].Text:='';

OpenFParc(RParc);
ChFinance:=RParc.Parcours+'\'+Exercice+'FFinance';
assignfile(FFinance,ChFinance);
if FileExists(ChFinance)then
Reset(FFinance)
else Rewrite(FFinance);
Seek(FFinance,0);
i:=0;
while not eof(FFinance)do
begin
     Read(FFinance,RFinance);
     i:=i+1;
     FSOperationFinanceMarche.TableauFinance.Rows[i].Text:=inttostr(i);
     FSOperationFinanceMarche.TableauFinance.Cells[1,i]:=inttostr(RFinance.NFinance);
     FSOperationFinanceMarche.TableauFinance.Cells[2,i]:=RFinance.DesignFinance;
end;
CloseFile(FFinance);
if(i>0)then FSOperationFinanceMarche.TableauFinance.RowCount:=i+1
       else FSOperationFinanceMarche.TableauFinance.RowCount:=2;
FSOperationFinanceMarche.TableauFinance.SetFocus;
end;

if key in['m','M']then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

if((FSOperationFinanceMarche.EditFinanceNSMarche.Text<>'')
and(FSOperationFinanceMarche.TableauOperationFinance.Cells[1,ARow]<>''))
then
begin
FSOperationFinanceMarche.AfficheFinance.Visible:=true;
FSOperationFinanceMarche.EditActionOperationFinance.Text:='M';

FSOperationFinanceMarche.TableauFinance.Cols[1].Text:='N° Finance';
FSOperationFinanceMarche.TableauFinance.Cols[2].Text:='Désignation Opération Financière';
FSOperationFinanceMarche.TableauFinance.RowCount:=2;
FSOperationFinanceMarche.TableauFinance.Rows[1].Text:='';

OpenFParc(RParc);
ChFinance:=RParc.Parcours+'\'+Exercice+'FFinance';
assignfile(FFinance,ChFinance);
if FileExists(ChFinance)then
Reset(FFinance)
else Rewrite(FFinance);
Seek(FFinance,0);
i:=0;
R:=1;
while not eof(FFinance)do
begin
     Read(FFinance,RFinance);
     i:=i+1;
     if(RFinance.NFinance=strtointeger(FSOperationFinanceMarche.TableauOperationFinance.Cells[3,ARow]))
     then R:=i;
     FSOperationFinanceMarche.TableauFinance.Rows[i].Text:=inttostr(i);
     FSOperationFinanceMarche.TableauFinance.Cells[1,i]:=inttostr(RFinance.NFinance);
     FSOperationFinanceMarche.TableauFinance.Cells[2,i]:=RFinance.DesignFinance;
end;
CloseFile(FFinance);
if(i>0)then
       begin
            FSOperationFinanceMarche.TableauFinance.RowCount:=i+1;
            FSOperationFinanceMarche.TableauFinance.Row:=R;
       end
       else FSOperationFinanceMarche.TableauFinance.RowCount:=2;

FSOperationFinanceMarche.TableauFinance.SetFocus;
end;
end;

if key in['s','S']then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

if((FSOperationFinanceMarche.EditFinanceNSMarche.Text<>'')
and(FSOperationFinanceMarche.TableauOperationFinance.Cells[1,ARow]<>''))
then
begin
OpenFParc(RParc);
ChFinance:=RParc.Parcours+'\'+Exercice+'FFinance';
assignfile(FFinance,ChFinance);
if FileExists(ChFinance)then
Reset(FFinance)
else Rewrite(FFinance);
Seek(FFinance,0);
OK:=false;
while not eof(FFinance)and(OK=false)do
begin
     Read(FFinance,RFinance);
     if(RFinance.NFinance=strtointeger(FSOperationFinanceMarche.TableauOperationFinance.Cells[3,ARow]))
     then
     begin
          OK:=true;
          FSOperationFinanceMarche.AfficheSaisieOperationFinance.Visible:=true;
          FSOperationFinanceMarche.BitNouvelleOperationFinance.Kind:=bkCancel;
          FSOperationFinanceMarche.BitNouvelleOperationFinance.Caption:='Supprimer';

          FSOperationFinanceMarche.EditNFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[3,ARow];
          FSOperationFinanceMarche.EditDesignFinance.Text:=RFinance.DesignFinance;
          FSOperationFinanceMarche.EditDateOperationFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[4,ARow];

          if(FSOperationFinanceMarche.TableauOperationFinance.Cells[9,ARow]='1')then
          begin
               FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text:='Apport';
               FSOperationFinanceMarche.EditMontantOperationFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[7,ARow];
          end;

          if(FSOperationFinanceMarche.TableauOperationFinance.Cells[9,ARow]='-1')then
          begin
               FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text:='Rembourssement';
               FSOperationFinanceMarche.EditMontantOperationFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[8,ARow];
          end;

          FSOperationFinanceMarche.EditDateReception.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[10,ARow];

          FSOperationFinanceMarche.BitNouvelleOperationFinance.SetFocus;
     end;
end;
CloseFile(FFinance);
end;
end;

if key in['r','R']then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

if((FSOperationFinanceMarche.EditFinanceNSMarche.Text<>'')
and(FSOperationFinanceMarche.TableauOperationFinance.Cells[1,ARow]<>'')
and(FSOperationFinanceMarche.TableauOperationFinance.Cells[9,ARow]='1'))
then
begin
OpenFParc(RParc);
ChFinance:=RParc.Parcours+'\'+Exercice+'FFinance';
assignfile(FFinance,ChFinance);
if FileExists(ChFinance)then
Reset(FFinance)
else Rewrite(FFinance);
Seek(FFinance,0);
OK:=false;
while not eof(FFinance)and(OK=false)do
begin
     Read(FFinance,RFinance);
     if(RFinance.NFinance=strtointeger(FSOperationFinanceMarche.TableauOperationFinance.Cells[3,ARow]))
     then
     begin
          OK:=true;
          FSOperationFinanceMarche.AfficheSaisieOperationFinance.Visible:=true;
          FSOperationFinanceMarche.BitNouvelleOperationFinance.Kind:=bkRetry;
          FSOperationFinanceMarche.BitNouvelleOperationFinance.Caption:='Modifier';

          FSOperationFinanceMarche.EditNFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[3,ARow];
          FSOperationFinanceMarche.EditDesignFinance.Text:=RFinance.DesignFinance;
          FSOperationFinanceMarche.EditDateOperationFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[4,ARow];

          if(FSOperationFinanceMarche.TableauOperationFinance.Cells[9,ARow]='1')then
          begin
               FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text:='Apport';
               FSOperationFinanceMarche.EditMontantOperationFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[7,ARow];
          end;

          if(FSOperationFinanceMarche.TableauOperationFinance.Cells[9,ARow]='-1')then
          begin
               FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text:='Rembourssement';
               FSOperationFinanceMarche.EditMontantOperationFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[8,ARow];
          end;

          FSOperationFinanceMarche.EditDateReception.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[10,ARow];

          FSOperationFinanceMarche.EditDateReception.SetFocus;
     end;
end;
CloseFile(FFinance);

end;
end;

end;

procedure TFSOperationFinanceMarche.BitBtn45Click(Sender: TObject);
begin
FSOperationFinanceMarche.AfficheNouvelleFinance.Visible:=false;
FSOperationFinanceMarche.AfficheFinance.Visible:=false;
end;

procedure TFSOperationFinanceMarche.BitBtn46Click(Sender: TObject);
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

FSOperationFinanceMarche.AfficheNouvelleFinance.Visible:=true;
FSOperationFinanceMarche.BitNouvelleFinance.Kind:=bkAll;
FSOperationFinanceMarche.BitNouvelleFinance.Caption:='Valider';
FSOperationFinanceMarche.EditDesignationFinance.Text:='';
FSOperationFinanceMarche.EditDesignationFinance.SetFocus;
end;

procedure TFSOperationFinanceMarche.BitBtn50Click(Sender: TObject);
begin
FSOperationFinanceMarche.AfficheNouvelleFinance.Visible:=false;
end;

procedure TFSOperationFinanceMarche.BitNouvelleFinanceClick(
  Sender: TObject);
var   i,NFinance:integer; OK,Confirme:boolean;
begin
if(FSOperationFinanceMarche.EditDesignationFinance.Text<>'')then
begin
{***************************NOUVELLE********************************}
if((FSOperationFinanceMarche.BitNouvelleFinance.Kind=bkAll)
and(FSOperationFinanceMarche.BitNouvelleFinance.Caption='Valider'))
then
begin
OpenFParc(RParc);
ChFinance:=RParc.Parcours+'\'+Exercice+'FFinance';
assignfile(FFinance,ChFinance);
if FileExists(ChFinance)then
Reset(FFinance)
else Rewrite(FFinance);
Seek(FFinance,0);
i:=0;
NFinance:=1;
while not eof(FFinance)do
begin
     Read(FFinance,RFinance);
     if(RFinance.NFinance>=NFinance)then NFinance:=RFinance.NFinance+1;
     i:=i+1;
end;

Seek(FFinance,i);
Truncate(FFinance);
RFinance.NFinance:=NFinance;
RFinance.DesignFinance:=FSOperationFinanceMarche.EditDesignationFinance.Text;
write(FFinance,RFinance);
CloseFile(FFinance);
end;

{**************************MODIFIER************************}
if((FSOperationFinanceMarche.BitNouvelleFinance.Kind=bkRetry)
and(FSOperationFinanceMarche.BitNouvelleFinance.Caption='Modifier'))
then
begin
OpenFParc(RParc);
ChFinance:=RParc.Parcours+'\'+Exercice+'FFinance';
assignfile(FFinance,ChFinance);
if FileExists(ChFinance)then
Reset(FFinance)
else Rewrite(FFinance);
Seek(FFinance,0);
i:=0;
OK:=false;
while not eof(FFinance)and(OK=false)do
begin
     Read(FFinance,RFinance);
     if(RFinance.NFinance=strtointeger(FSOperationFinanceMarche.TableauFinance.Cells[1,FSOperationFinanceMarche.TableauFinance.Row]))then
     begin
          OK:=true;
          Seek(FFinance,i);
          RFinance.DesignFinance:=FSOperationFinanceMarche.EditDesignationFinance.Text;
          write(FFinance,RFinance);
     end;
     i:=i+1;
end;
CloseFile(FFinance);
end;

{**************************SUPPRIMER************************}
if((FSOperationFinanceMarche.BitNouvelleFinance.Kind=bkCancel)
and(FSOperationFinanceMarche.BitNouvelleFinance.Caption='Supprimer'))
then
begin
     DeleteFFinance(strtointeger(FSOperationFinanceMarche.TableauFinance.Cells[1,FSOperationFinanceMarche.TableauFinance.Row]),Confirme);
end;


OpenFParc(RParc);
ChFinance:=RParc.Parcours+'\'+Exercice+'FFinance';
assignfile(FFinance,ChFinance);
if FileExists(ChFinance)then
Reset(FFinance)
else Rewrite(FFinance);
Seek(FFinance,0);
i:=0;
while not eof(FFinance)do
begin
     Read(FFinance,RFinance);
     i:=i+1;
     FSOperationFinanceMarche.TableauFinance.Rows[i].Text:=inttostr(i);
     FSOperationFinanceMarche.TableauFinance.Cells[1,i]:=inttostr(RFinance.NFinance);
     FSOperationFinanceMarche.TableauFinance.Cells[2,i]:=RFinance.DesignFinance;
end;
CloseFile(FFinance);
if(i>0)then FSOperationFinanceMarche.TableauFinance.RowCount:=i+1
       else
       begin
            FSOperationFinanceMarche.TableauFinance.RowCount:=2;
            FSOperationFinanceMarche.TableauFinance.Rows[1].Text:='';
       end;

FSOperationFinanceMarche.TableauFinance.SetFocus;
FSOperationFinanceMarche.AfficheNouvelleFinance.Visible:=false;
end
else FSOperationFinanceMarche.EditDesignationFinance.SetFocus;
end;

procedure TFSOperationFinanceMarche.EditDesignationFinanceKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSOperationFinanceMarche.BitNouvelleFinance.SetFocus;
end;

end;

procedure TFSOperationFinanceMarche.TableauFinanceKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSOperationFinanceMarche.EditActionOperationFinance.Text='N')then
     begin
     if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

          FSOperationFinanceMarche.AfficheSaisieOperationFinance.Visible:=true;
          FSOperationFinanceMarche.BitNouvelleOperationFinance.Kind:=bkAll;
          FSOperationFinanceMarche.BitNouvelleOperationFinance.Caption:='Valider';
          FSOperationFinanceMarche.EditNFinance.Text:=FSOperationFinanceMarche.TableauFinance.Cells[1,FSOperationFinanceMarche.TableauFinance.Row];
          FSOperationFinanceMarche.EditDesignFinance.Text:=FSOperationFinanceMarche.TableauFinance.Cells[2,FSOperationFinanceMarche.TableauFinance.Row];
          FSOperationFinanceMarche.EditDateOperationFinance.Text:=datetostr(date);
          FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text:='Apport';
          FSOperationFinanceMarche.EditMontantOperationFinance.Text:='';
          FSOperationFinanceMarche.EditDateReception.Text:='';
          FSOperationFinanceMarche.EditDateOperationFinance.SetFocus;
          FSOperationFinanceMarche.AfficheFinance.Visible:=false;
     end;
     if(FSOperationFinanceMarche.EditActionOperationFinance.Text='M')then
     begin
     if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

          FSOperationFinanceMarche.AfficheSaisieOperationFinance.Visible:=true;
          FSOperationFinanceMarche.BitNouvelleOperationFinance.Kind:=bkRetry;
          FSOperationFinanceMarche.BitNouvelleOperationFinance.Caption:='Modifier';
          FSOperationFinanceMarche.EditNFinance.Text:=FSOperationFinanceMarche.TableauFinance.Cells[1,FSOperationFinanceMarche.TableauFinance.Row];
          FSOperationFinanceMarche.EditDesignFinance.Text:=FSOperationFinanceMarche.TableauFinance.Cells[2,FSOperationFinanceMarche.TableauFinance.Row];
          FSOperationFinanceMarche.EditDateOperationFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[4,FSOperationFinanceMarche.TableauOperationFinance.Row];

          if(FSOperationFinanceMarche.TableauOperationFinance.Cells[9,FSOperationFinanceMarche.TableauOperationFinance.Row]='1')then
          begin
               FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text:='Apport';
               FSOperationFinanceMarche.EditMontantOperationFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[7,FSOperationFinanceMarche.TableauOperationFinance.Row];
          end;

          if(FSOperationFinanceMarche.TableauOperationFinance.Cells[9,FSOperationFinanceMarche.TableauOperationFinance.Row]='-1')then
          begin
               FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text:='Remboursement';
               FSOperationFinanceMarche.EditMontantOperationFinance.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[8,FSOperationFinanceMarche.TableauOperationFinance.Row];
          end;

          FSOperationFinanceMarche.EditDateReception.Text:=FSOperationFinanceMarche.TableauOperationFinance.Cells[10,FSOperationFinanceMarche.TableauOperationFinance.Row];

          FSOperationFinanceMarche.EditDateOperationFinance.SetFocus;
          FSOperationFinanceMarche.AfficheFinance.Visible:=false;
     end;

end;

if key in[VK_DELETE]then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

if((FSOperationFinanceMarche.EditFinanceNSMarche.Text<>'')
and(FSOperationFinanceMarche.TableauFinance.Cells[1,FSOperationFinanceMarche.TableauFinance.Row]<>''))
then
begin
     FSOperationFinanceMarche.AfficheNouvelleFinance.Visible:=true;
     FSOperationFinanceMarche.BitNouvelleFinance.Kind:=bkCancel;
     FSOperationFinanceMarche.BitNouvelleFinance.Caption:='Supprimer';
     FSOperationFinanceMarche.EditDesignationFinance.Text:=FSOperationFinanceMarche.TableauFinance.Cells[2,FSOperationFinanceMarche.TableauFinance.Row];
     FSOperationFinanceMarche.BitNouvelleFinance.SetFocus;
end;
end;
end;

procedure TFSOperationFinanceMarche.TableauFinanceKeyPress(Sender: TObject;
  var Key: Char);
begin
if key in['n','N']then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

     FSOperationFinanceMarche.AfficheNouvelleFinance.Visible:=true;
     FSOperationFinanceMarche.BitNouvelleFinance.Kind:=bkAll;
     FSOperationFinanceMarche.BitNouvelleFinance.Caption:='Valider';
     FSOperationFinanceMarche.EditDesignationFinance.Text:='';
     FSOperationFinanceMarche.EditDesignationFinance.SetFocus;
end;

if key in['m','M']then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

if((FSOperationFinanceMarche.EditFinanceNSMarche.Text<>'')
and(FSOperationFinanceMarche.TableauFinance.Cells[1,FSOperationFinanceMarche.TableauFinance.Row]<>''))
then
begin
     FSOperationFinanceMarche.AfficheNouvelleFinance.Visible:=true;
     FSOperationFinanceMarche.BitNouvelleFinance.Kind:=bkRetry;
     FSOperationFinanceMarche.BitNouvelleFinance.Caption:='Modifier';
     FSOperationFinanceMarche.EditDesignationFinance.Text:=FSOperationFinanceMarche.TableauFinance.Cells[2,FSOperationFinanceMarche.TableauFinance.Row];
     FSOperationFinanceMarche.EditDesignationFinance.SetFocus;
end;
end;

if key in['s','S']then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

if((FSOperationFinanceMarche.EditFinanceNSMarche.Text<>'')
and(FSOperationFinanceMarche.TableauFinance.Cells[1,FSOperationFinanceMarche.TableauFinance.Row]<>''))
then
begin
     FSOperationFinanceMarche.AfficheNouvelleFinance.Visible:=true;
     FSOperationFinanceMarche.BitNouvelleFinance.Kind:=bkCancel;
     FSOperationFinanceMarche.BitNouvelleFinance.Caption:='Supprimer';
     FSOperationFinanceMarche.EditDesignationFinance.Text:=FSOperationFinanceMarche.TableauFinance.Cells[2,FSOperationFinanceMarche.TableauFinance.Row];
     FSOperationFinanceMarche.BitNouvelleFinance.SetFocus;
end;
end;

end;

procedure TFSOperationFinanceMarche.BitBtn48Click(Sender: TObject);
begin
FSOperationFinanceMarche.AfficheFinanceListeMarche.Visible:=false;
end;

procedure TFSOperationFinanceMarche.TableauFinanceListeMarcheKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSOperationFinanceMarche.EditFinanceNSMarche.Text:=FSOperationFinanceMarche.TableauFinanceListeMarche.Cells[1,FSOperationFinanceMarche.TableauFinanceListeMarche.Row];
     FSOperationFinanceMarche.EditFinanceMarche.Text:=FSOperationFinanceMarche.TableauFinanceListeMarche.Cells[2,FSOperationFinanceMarche.TableauFinanceListeMarche.Row];
     ProcAfficheOperationFinance(strtointeger(FSOperationFinanceMarche.EditFinanceNSMarche.Text));
     FSOperationFinanceMarche.TableauOperationFinance.SetFocus;
     FSOperationFinanceMarche.AfficheFinanceListeMarche.Visible:=false;
end;

end;

procedure TFSOperationFinanceMarche.BitBtn49Click(Sender: TObject);
begin
FSOperationFinanceMarche.AfficheSaisieOperationFinance.Visible:=false;
end;

procedure TFSOperationFinanceMarche.EditDateOperationFinanceEnter(
  Sender: TObject);
begin
if((FSOperationFinanceMarche.EditDateOperationFinance.Text<>'')
and(FSOperationFinanceMarche.EditDateOperationFinance.Text<>' ')
and(FSOperationFinanceMarche.EditDateOperationFinance.Text<>'  /  /    '))
then FSOperationFinanceMarche.EditSoldeFinance.Text:=floattostr(SoldeFinance);
end;

procedure TFSOperationFinanceMarche.EditDateOperationFinanceExit(
  Sender: TObject);
begin
if((FSOperationFinanceMarche.EditDateOperationFinance.Text<>'')
and(FSOperationFinanceMarche.EditDateOperationFinance.Text<>' ')
and(FSOperationFinanceMarche.EditDateOperationFinance.Text<>'  /  /    '))
then FSOperationFinanceMarche.EditSoldeFinance.Text:=floattostr(SoldeFinance);
end;

procedure TFSOperationFinanceMarche.EditDateOperationFinanceKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSOperationFinanceMarche.EditDebitCreditOperationFinance.SetFocus;
end;

end;

procedure TFSOperationFinanceMarche.EditDebitCreditOperationFinanceExit(
  Sender: TObject);
begin
if((FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text<>'Apport')
and(FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text<>'Remboursement'))
then FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text:='Apport';

if(FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text='Remboursement')then
begin
     FSOperationFinanceMarche.EditDateReception.Text:=FSOperationFinanceMarche.EditDateOperationFinance.Text;
end;

end;

procedure TFSOperationFinanceMarche.EditDebitCreditOperationFinanceKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSOperationFinanceMarche.EditMontantOperationFinance.SetFocus;
end;

end;

procedure TFSOperationFinanceMarche.EditMontantOperationFinanceExit(
  Sender: TObject);
begin

if((FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text='Remboursement')
and(strtoreal(FSOperationFinanceMarche.EditMontantOperationFinance.Text)>strtoreal(FSOperationFinanceMarche.EditSoldeFinance.Text)))
then
begin
     showmessage('Remboursement non autorisé !');
     FSOperationFinanceMarche.EditMontantOperationFinance.Text:='';
     FSOperationFinanceMarche.EditMontantOperationFinance.SetFocus;
     exit;
end;

end;

procedure TFSOperationFinanceMarche.EditMontantOperationFinanceKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSOperationFinanceMarche.EditDateReception.SetFocus;
end;

end;

procedure TFSOperationFinanceMarche.EditDateReceptionExit(Sender: TObject);
begin

if((FSOperationFinanceMarche.EditDateOperationFinance.Text<>'')
and((FSOperationFinanceMarche.EditDateOperationFinance.Text<>'  /  /    ')))
then
begin
     if(FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text='Remboursement')then
     begin
          if(FSOperationFinanceMarche.EditDateReception.Text<>FSOperationFinanceMarche.EditDateOperationFinance.Text)then
          begin
               showmessage('Le remboursement s''effectue à la date d''opération !');
               FSOperationFinanceMarche.EditDateReception.Text:=FSOperationFinanceMarche.EditDateOperationFinance.Text;
          end;
     end;

     if((FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text='Apport')
     and(FSOperationFinanceMarche.EditDateReception.Text<>'')
     and(FSOperationFinanceMarche.EditDateReception.Text<>'  /  /    '))
     then
     begin
          if(strtodate(FSOperationFinanceMarche.EditDateReception.Text)<strtodate(FSOperationFinanceMarche.EditDateOperationFinance.Text))
          then
          begin
               showmessage('La date de réception ne peut pas être inférieure à la date d''opération !');
               FSOperationFinanceMarche.EditDateReception.Text:=FSOperationFinanceMarche.EditDateOperationFinance.Text;
          end;
     end;

end;
end;

procedure TFSOperationFinanceMarche.EditDateReceptionKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSOperationFinanceMarche.BitNouvelleOperationFinance.SetFocus;
end;

end;

procedure TFSOperationFinanceMarche.BitNouvelleOperationFinanceClick(
  Sender: TObject);
var  i,NOperationFinance:integer;  OK,Confirme:boolean;
begin

if(strtoreal(FSOperationFinanceMarche.EditMontantOperationFinance.Text)=0)then
begin
     showmessage('Veuillez saisire une valeure SVP !');
     FSOperationFinanceMarche.EditMontantOperationFinance.SetFocus;
     Exit;
end;

if((FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text='Remboursement')
and(strtoreal(FSOperationFinanceMarche.EditMontantOperationFinance.Text)>strtoreal(FSOperationFinanceMarche.EditSoldeFinance.Text)))
then
begin
     showmessage('Remboursement non autorisé !');
     FSOperationFinanceMarche.EditMontantOperationFinance.Text:='';
     FSOperationFinanceMarche.EditMontantOperationFinance.SetFocus;
     exit;
end;

if((FSOperationFinanceMarche.BitNouvelleOperationFinance.Kind=bkAll)
and(FSOperationFinanceMarche.BitNouvelleOperationFinance.Caption='Valider'))
then
begin
OpenFParc(RParc);
ChOperationFinance:=RParc.Parcours+'\'+Exercice+'FOperationFinance';
assignfile(FOperationFinance,ChOperationFinance);
if FileExists(ChOperationFinance)then
Reset(FOperationFinance)
else Rewrite(FOperationFinance);
Seek(FOperationFinance,0);
i:=0;
NOperationFinance:=1;
while not eof(FOperationFinance) do
begin
     Read(FOperationFinance,ROperationFinance);
     if(ROperationFinance.NOperationFinance>=NOperationFinance)then NOperationFinance:=ROperationFinance.NOperationFinance+1;
     i:=i+1;
end;
Seek(FOperationFinance,i);
Truncate(FOperationFinance);
ROperationFinance.NOperationFinance:=NOperationFinance;
ROperationFinance.NSMarche:=strtointeger(FSOperationFinanceMarche.EditFinanceNSMarche.Text);
ROperationFinance.NFinance:=strtointeger(FSOperationFinanceMarche.EditNFinance.Text);
ROperationFinance.DateOperation:=FSOperationFinanceMarche.EditDateOperationFinance.Text;
ROperationFinance.DesignFinance:=FSOperationFinanceMarche.EditDesignFinance.Text;
ROperationFinance.MontantFinance:=strtoreal(FSOperationFinanceMarche.EditMontantOperationFinance.Text);
if(FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text='Apport')
then ROperationFinance.DebitCredit:=1;
if(FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text='Remboursement')
then ROperationFinance.DebitCredit:=-1;
if((FSOperationFinanceMarche.EditDateReception.Text<>'  /  /    ')
and(FSOperationFinanceMarche.EditDateReception.Text<>''))
then ROperationFinance.DateReception:=FSOperationFinanceMarche.EditDateReception.Text
else ROperationFinance.DateReception:='';
write(FOperationFinance,ROperationFinance);
CloseFile(FOperationFinance);
end;

if((FSOperationFinanceMarche.BitNouvelleOperationFinance.Kind=bkRetry)
and(FSOperationFinanceMarche.BitNouvelleOperationFinance.Caption='Modifier'))
then
begin
OpenFParc(RParc);
ChOperationFinance:=RParc.Parcours+'\'+Exercice+'FOperationFinance';
assignfile(FOperationFinance,ChOperationFinance);
if FileExists(ChOperationFinance)then
Reset(FOperationFinance)
else Rewrite(FOperationFinance);
Seek(FOperationFinance,0);
i:=0;
OK:=false;
while not eof(FOperationFinance)and(OK=false)do
begin
     Read(FOperationFinance,ROperationFinance);
     if((ROperationFinance.NOperationFinance=strtointeger(FSOperationFinanceMarche.TableauOperationFinance.Cells[1,FSOperationFinanceMarche.TableauOperationFinance.Row]))
     and(ROperationFinance.NSMarche=strtointeger(FSOperationFinanceMarche.TableauOperationFinance.Cells[2,FSOperationFinanceMarche.TableauOperationFinance.Row])))
     then
     begin
          OK:=true;
          ROperationFinance.NOperationFinance:=strtointeger(FSOperationFinanceMarche.TableauOperationFinance.Cells[1,FSOperationFinanceMarche.TableauOperationFinance.Row]);
          ROperationFinance.NSMarche:=strtointeger(FSOperationFinanceMarche.EditFinanceNSMarche.Text);
          ROperationFinance.NFinance:=strtointeger(FSOperationFinanceMarche.EditNFinance.Text);
          ROperationFinance.DateOperation:=FSOperationFinanceMarche.EditDateOperationFinance.Text;
          ROperationFinance.DesignFinance:=FSOperationFinanceMarche.EditDesignFinance.Text;
          ROperationFinance.MontantFinance:=strtoreal(FSOperationFinanceMarche.EditMontantOperationFinance.Text);
          if(FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text='Apport')
          then ROperationFinance.DebitCredit:=1;
          if(FSOperationFinanceMarche.EditDebitCreditOperationFinance.Text='Remboursement')
          then ROperationFinance.DebitCredit:=-1;
          if((FSOperationFinanceMarche.EditDateReception.Text<>'  /  /    ')
          and(FSOperationFinanceMarche.EditDateReception.Text<>''))
          then ROperationFinance.DateReception:=FSOperationFinanceMarche.EditDateReception.Text
          else ROperationFinance.DateReception:='';
          Seek(FOperationFinance,i);
          write(FOperationFinance,ROperationFinance);
          end;
i:=i+1;
end;
CloseFile(FOperationFinance);
end;

if((FSOperationFinanceMarche.BitNouvelleOperationFinance.Kind=bkCancel)
and(FSOperationFinanceMarche.BitNouvelleOperationFinance.Caption='Supprimer'))
then
begin
     deleteFOperationFinance(strtointeger(FSOperationFinanceMarche.TableauOperationFinance.Cells[2,FSOperationFinanceMarche.TableauOperationFinance.Row]),strtointeger(FSOperationFinanceMarche.TableauOperationFinance.Cells[1,FSOperationFinanceMarche.TableauOperationFinance.Row]),Confirme);
end;

ProcAfficheOperationFinance(strtointeger(FSOperationFinanceMarche.EditFinanceNSMarche.Text));
FSOperationFinanceMarche.AfficheSaisieOperationFinance.Visible:=false;
end;

procedure TFSOperationFinanceMarche.AfficheSaisieOperationFinanceEnter(
  Sender: TObject);
begin
FSOperationFinanceMarche.TimerClic.Enabled:=true;
FSOperationFinanceMarche.TimerClic.Interval:=200;

if((FSOperationFinanceMarche.EditDateOperationFinance.Text<>'')
and(FSOperationFinanceMarche.EditDateOperationFinance.Text<>' ')
and(FSOperationFinanceMarche.EditDateOperationFinance.Text<>'  /  /    '))
then FSOperationFinanceMarche.EditSoldeFinance.Text:=floattostr(SoldeFinance);
end;

procedure TFSOperationFinanceMarche.AfficheSaisieOperationFinanceExit(
  Sender: TObject);
begin
FSOperationFinanceMarche.TimerClic.Enabled:=false;
end;

Procedure InicialeOperationFinance;
begin
FSOperationFinanceMarche.AfficheFinanceListeMarche.Visible:=false;
FSOperationFinanceMarche.AfficheSaisieOperationFinance.Visible:=false;
FSOperationFinanceMarche.AfficheNouvelleFinance.Visible:=false;
FSOperationFinanceMarche.AfficheFinance.Visible:=false;
end;

Procedure ProcAfficheOperationFinance(NSMarche:integer);
var i:integer;  Apport,Rembourssement:real;
begin
FSOperationFinanceMarche.TableauOperationFinance.Cols[1].Text:='NOperation';
FSOperationFinanceMarche.TableauOperationFinance.Cols[2].Text:='NMarche';
FSOperationFinanceMarche.TableauOperationFinance.Cols[3].Text:='NFinance';
FSOperationFinanceMarche.TableauOperationFinance.Cols[4].Text:='Date';
FSOperationFinanceMarche.TableauOperationFinance.Cols[5].Text:='Date Réception';
FSOperationFinanceMarche.TableauOperationFinance.Cols[6].Text:='Operation Financière';
FSOperationFinanceMarche.TableauOperationFinance.Cols[7].Text:='Apport';
FSOperationFinanceMarche.TableauOperationFinance.Cols[8].Text:='Remboursement';
FSOperationFinanceMarche.TableauOperationFinance.Cols[9].Text:='DC';
FSOperationFinanceMarche.TableauOperationFinance.Cols[10].Text:='Date Réception';

FSOperationFinanceMarche.TableauOperationFinance.RowCount:=2;
FSOperationFinanceMarche.TableauOperationFinance.Rows[1].Text:='';

OpenFParc(RParc);
ChOperationFinance:=RParc.Parcours+'\'+Exercice+'FOperationFinance';
assignfile(FOperationFinance,ChOperationFinance);
if FileExists(ChOperationFinance)then
Reset(FOperationFinance)
else Rewrite(FOperationFinance);
Seek(FOperationFinance,0);
i:=0;
Apport:=0; Rembourssement:=0;
while not eof(FOperationFinance) do
begin
     Read(FOperationFinance,ROperationFinance);
     if(ROperationFinance.NSMarche=NSMarche)then
     begin
          i:=i+1;
          FSOperationFinanceMarche.TableauOperationFinance.Rows[i].Text:=inttostr(i);
          FSOperationFinanceMarche.TableauOperationFinance.Cells[1,i]:=inttostr(ROperationFinance.NOperationFinance);
          FSOperationFinanceMarche.TableauOperationFinance.Cells[2,i]:=inttostr(ROperationFinance.NSMarche);
          FSOperationFinanceMarche.TableauOperationFinance.Cells[3,i]:=inttostr(ROperationFinance.NFinance);
          FSOperationFinanceMarche.TableauOperationFinance.Cells[4,i]:=ROperationFinance.DateOperation;

          if(ROperationFinance.DebitCredit=1)then
          begin
               if(ROperationFinance.DateReception<>'')
               then
               begin
                    FSOperationFinanceMarche.TableauOperationFinance.Cells[5,i]:='Reçue le: '+ROperationFinance.DateReception+'.';
                    Apport:=Apport+ROperationFinance.MontantFinance;
               end
               else FSOperationFinanceMarche.TableauOperationFinance.Cells[5,i]:='     Non Reçue.';

               FSOperationFinanceMarche.TableauOperationFinance.Cells[6,i]:='Apport.......................:  '+ROperationFinance.DesignFinance;
               FSOperationFinanceMarche.TableauOperationFinance.Cells[7,i]:=Vergule(floattostr(ROperationFinance.MontantFinance),'2','C','');
          end;

          if(ROperationFinance.DebitCredit=-1)then
          begin
               if(ROperationFinance.DateReception<>'')
               then FSOperationFinanceMarche.TableauOperationFinance.Cells[5,i]:='Rembourssé.'
               else FSOperationFinanceMarche.TableauOperationFinance.Cells[5,i]:='Non Rembourssé.';

               FSOperationFinanceMarche.TableauOperationFinance.Cells[6,i]:='Remboursement......:  '+ROperationFinance.DesignFinance;
               FSOperationFinanceMarche.TableauOperationFinance.Cells[8,i]:=Vergule(floattostr(ROperationFinance.MontantFinance),'2','C','');
               Rembourssement:=Rembourssement+ROperationFinance.MontantFinance;
          end;
          FSOperationFinanceMarche.TableauOperationFinance.Cells[9,i]:=inttostr(ROperationFinance.DebitCredit);
          FSOperationFinanceMarche.TableauOperationFinance.Cells[10,i]:=ROperationFinance.DateReception;
     end;

end;
if(i>0)then
       begin
            FSOperationFinanceMarche.TableauOperationFinance.RowCount:=i+1;
            TrierOperationFinance(4);
            i:=i+1;
            FSOperationFinanceMarche.TableauOperationFinance.Rows[i].Text:='';
            i:=i+1;
            FSOperationFinanceMarche.TableauOperationFinance.Rows[i].Text:='';
            FSOperationFinanceMarche.TableauOperationFinance.Cells[6,i]:='     TOTAL EFFECTUE: ';
            FSOperationFinanceMarche.TableauOperationFinance.Cells[7,i]:=Vergule(floattostr(Apport),'2','C','');
            FSOperationFinanceMarche.TableauOperationFinance.Cells[8,i]:=Vergule(floattostr(Rembourssement),'2','C','');
            i:=i+1;
            if(Apport-Rembourssement>=0)
            then
            begin
                 FSOperationFinanceMarche.TableauOperationFinance.Cells[6,i]:='          SOLDE:  Remboursement à effectuer.';
                 FSOperationFinanceMarche.TableauOperationFinance.Cells[7,i]:=Vergule(floattostr(Apport-Rembourssement),'2','C','')
            end
            else
            begin
                 FSOperationFinanceMarche.TableauOperationFinance.Cells[6,i]:='          SOLDE:  Rembourssement en Plus.';
                 FSOperationFinanceMarche.TableauOperationFinance.Cells[8,i]:=Vergule(floattostr((Apport-Rembourssement)*(-1)),'2','C','');
            end;
            FSOperationFinanceMarche.TableauOperationFinance.RowCount:=i+1;
            FSOperationFinanceMarche.TableauOperationFinance.Row:=i;
            FSOperationFinanceMarche.TableauOperationFinance.SetFocus
       end
       else FSOperationFinanceMarche.TableauOperationFinance.RowCount:=2;
end;

Function SoldeFinance:real;
var   Apport,Rembourssement:real; OK:boolean;
begin
     OpenFParc(RParc);
     ChOperationFinance:=RParc.Parcours+'\'+Exercice+'FOperationFinance';
     assignfile(FOperationFinance,ChOperationFinance);
     if FileExists(ChOperationFinance)then
     Reset(FOperationFinance)
     else Rewrite(FOperationFinance);
     Seek(FOperationFinance,0);
     OK:=false;
     Apport:=0; Rembourssement:=0;
     while not eof(FOperationFinance) do
     begin
          Read(FOperationFinance,ROperationFinance);
          if((ROperationFinance.NSMarche=strtointeger(FSOperationFinanceMarche.EditFinanceNSMarche.Text))
          and(ROperationFinance.NFinance=strtointeger(FSOperationFinanceMarche.EditNFinance.Text)))
          then
          begin
               OK:=false;
               if(ROperationFinance.DateReception<>'')then
               begin
                    if(strtodate(ROperationFinance.DateReception)>strtodate(FSOperationFinanceMarche.EditDateOperationFinance.Text))
                    then
                    OK:=true;
               end
               else OK:=true;

               if((FSOperationFinanceMarche.BitNouvelleOperationFinance.Kind=bkRetry)
               and(FSOperationFinanceMarche.BitNouvelleOperationFinance.Caption='Modifier')
               and(ROperationFinance.NOperationFinance=strtointeger(FSOperationFinanceMarche.TableauOperationFinance.Cells[1,FSOperationFinanceMarche.TableauOperationFinance.Row])))
               then OK:=true;

               if(OK=false)then
               begin
                    if(ROperationFinance.DebitCredit=1)
                    then Apport:=Apport+ROperationFinance.MontantFinance;

                    if(ROperationFinance.DebitCredit=-1)
                    then Rembourssement:=Rembourssement+ROperationFinance.MontantFinance;
               end;
          end;
     end;
     SoldeFinance:=Apport-Rembourssement;
end;


procedure TFSOperationFinanceMarche.EditMontantOperationFinanceKeyPress(
  Sender: TObject; var Key: Char);
begin
if not(key in['0'..'9',',','.'])then key:=#0;
if key='.' then key:=',';
end;

procedure TFSOperationFinanceMarche.TimerClicTimer(Sender: TObject);
begin

if(FSOperationFinanceMarche.AfficheFinance.Visible=true)then
if   FSOperationFinanceMarche.AfficheFinance.Color=$00B0FFFF then
     begin
     FSOperationFinanceMarche.AfficheFinance.Color:=$00DFFFFF;
     end
else
     begin
     FSOperationFinanceMarche.AfficheFinance.Color:=$00B0FFFF;
     end;

if(FSOperationFinanceMarche.AfficheFinanceListeMarche.Visible=true)then
if   FSOperationFinanceMarche.AfficheFinanceListeMarche.Color=$00B0FFFF then
     begin
     FSOperationFinanceMarche.AfficheFinanceListeMarche.Color:=$00DFFFFF;
     end
else
     begin
     FSOperationFinanceMarche.AfficheFinanceListeMarche.Color:=$00B0FFFF;
     end;

if(FSOperationFinanceMarche.AfficheSaisieOperationFinance.Visible=true)then
if   FSOperationFinanceMarche.AfficheSaisieOperationFinance.Color=$00B0FFFF then
     begin
     FSOperationFinanceMarche.AfficheSaisieOperationFinance.Color:=$00DFFFFF;
     end
else
     begin
     FSOperationFinanceMarche.AfficheSaisieOperationFinance.Color:=$00B0FFFF;
     end;

if(FSOperationFinanceMarche.AfficheNouvelleFinance.Visible=true)then
if   FSOperationFinanceMarche.AfficheNouvelleFinance.Color=$00B0FFFF then
     begin
     FSOperationFinanceMarche.AfficheNouvelleFinance.Color:=$00DFFFFF;
     end
else
     begin
     FSOperationFinanceMarche.AfficheNouvelleFinance.Color:=$00B0FFFF;
     end;
end;

Procedure TrierOperationFinance(Indice:integer);
var OK:boolean; i,R,m,j,ARow,VarA,VarB:integer;
begin
FSOperationFinanceMarche.TableauOperationFinance.RowCount:=FSOperationFinanceMarche.TableauOperationFinance.RowCount+1;
R:=FSOperationFinanceMarche.TableauOperationFinance.RowCount-1;
FSOperationFinanceMarche.TableauOperationFinance.Rows[R].Text:='';
OK:=true;
while(OK=true)do
begin
OK:=false;
for i:=1 to FSOperationFinanceMarche.TableauOperationFinance.RowCount-3 do
begin
     if(strtodate(FSOperationFinanceMarche.TableauOperationFinance.Cells[Indice,i])>strtodate(FSOperationFinanceMarche.TableauOperationFinance.Cells[Indice,i+1]))then
     begin
          OK:=true;
          for m:=1 to 3 do
          begin
               for j:=0 to FSOperationFinanceMarche.TableauOperationFinance.ColCount-1 do
               begin
                    if m=1 then begin VarA:=R; VarB:=i;end;
                    if m=2 then begin VarA:=i; VarB:=i+1;end;
                    if m=3 then begin VarA:=i+1; VarB:=R;end;
                    FSOperationFinanceMarche.TableauOperationFinance.Cells[j,VarA]:=FSOperationFinanceMarche.TableauOperationFinance.Cells[j,VarB];
               end;
          end;
          FSOperationFinanceMarche.TableauOperationFinance.Rows[R].Text:='';
     end;
end;
end;
FSOperationFinanceMarche.TableauOperationFinance.RowCount:=FSOperationFinanceMarche.TableauOperationFinance.RowCount-1;

end;

procedure TFSOperationFinanceMarche.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     FSOperationFinanceMarche.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Operation Finances Marché';
end;

procedure TFSOperationFinanceMarche.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

end.
