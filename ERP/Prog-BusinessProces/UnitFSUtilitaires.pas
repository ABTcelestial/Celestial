unit UnitFSUtilitaires;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, Menus, Grids, OleServer, Word2000,
  ToolWin, OleCtrls;

type
  TFSUtilitaires = class(TForm)
    PageControl1: TPageControl;
    PageChiffreEnLettre: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    ChiffreNumerique: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    TextChiffreenlettre: TMemo;
    TabSheet2: TTabSheet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    EditSelection: TEdit;
    EditChiffre: TMemo;
    RadioGroup1: TRadioGroup;
    RBLectureMonetaire: TRadioButton;
    RBLectureNumerique: TRadioButton;
    Label3: TLabel;
    TableauPointeurChiffresEnLettres: TStringGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TextChiffreenlettreEnter(Sender: TObject);
    procedure EditChiffreEnter(Sender: TObject);
    procedure EditChiffreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditChiffreKeyPress(Sender: TObject; var Key: Char);
    procedure EditChiffreKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure RBLectureMonetaireClick(Sender: TObject);
    procedure RBLectureNumeriqueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSUtilitaires: TFSUtilitaires;

  Procedure ActiverChiffreEnLettres;

implementation

uses UnitInitialisation;

{$R *.dfm}

procedure TFSUtilitaires.BitBtn1Click(Sender: TObject);
begin
     if(FSUtilitaires.EditSelection.Text='Chiffres')then
     begin
          FSUtilitaires.EditChiffre.SelectAll;
          FSUtilitaires.EditChiffre.CopyToClipboard;
     end;

     if(FSUtilitaires.EditSelection.Text='Lettres')then
     begin
          FSUtilitaires.TextChiffreenlettre.SelectAll;
          FSUtilitaires.TextChiffreenlettre.CopyToClipboard;
     end;
end;

procedure TFSUtilitaires.BitBtn2Click(Sender: TObject);
begin
      if(FSUtilitaires.EditSelection.Text='Chiffres')then
      begin
           FSUtilitaires.EditChiffre.Clear;
           FSUtilitaires.EditChiffre.PasteFromClipboard;
      end;

      if(FSUtilitaires.EditSelection.Text='Lettres')then
      begin
           FSUtilitaires.TextChiffreenlettre.Clear;
           FSUtilitaires.TextChiffreenlettre.PasteFromClipboard;
      end;
end;

procedure TFSUtilitaires.TextChiffreenlettreEnter(Sender: TObject);
begin
     FSUtilitaires.EditSelection.Text:='Lettres';
end;

procedure TFSUtilitaires.EditChiffreEnter(Sender: TObject);
begin
     FSUtilitaires.EditSelection.Text:='Chiffres';
end;

procedure TFSUtilitaires.EditChiffreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          ActiverChiffreEnLettres;
     end;
end;

procedure TFSUtilitaires.EditChiffreKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not(key in [',','.','0'..'9'])then key:=#0;
end;

procedure TFSUtilitaires.EditChiffreKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var     ValeT,Text:string; i,l:integer;
begin
FSUtilitaires.TextChiffreenlettre.Text:='';
FSUtilitaires.ChiffreNumerique.Caption:='';

if key in[VK_RETURN]then
begin
     ValeT:='';
     if(FSUtilitaires.EditChiffre.Text<>'')then
     begin
          i:=1;
          while(i<=FSUtilitaires.EditChiffre.GetTextLen)do
          begin
              if(FSUtilitaires.EditChiffre.Text[i]in['0'..'9',',','.'])then
              ValeT:=ValeT+FSUtilitaires.EditChiffre.Text[i];
          i:=i+1;
          end;
     FSUtilitaires.EditChiffre.Text:=ValeT;
     FSUtilitaires.ChiffreNumerique.Caption:=FSUtilitaires.EditChiffre.Text;
     FSUtilitaires.EditChiffre.Text:=VerguleToNum(FSUtilitaires.EditChiffre.Text);
     FSUtilitaires.EditChiffre.Text:=Vergule(FSUtilitaires.EditChiffre.Text,'2','C','');
     FSUtilitaires.TextChiffreenlettre.Text:='';
     FSUtilitaires.TextChiffreenlettre.Lines.Add(ChiffreEnLettre(FSUtilitaires.EditChiffre.Text));
     if(FSUtilitaires.RBLectureMonetaire.Checked=true)then FSUtilitaires.EditChiffre.Text:=FSUtilitaires.EditChiffre.Text+' DA';
     end;
     FSUtilitaires.EditChiffre.SetFocus;
end;
end;

procedure TFSUtilitaires.FormShow(Sender: TObject);
begin
     FSUtilitaires.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Utilitaires';

     ActiverNomForm(1,(Sender as TComponent).Name);
end;

Procedure ActiverChiffreEnLettres;
var     ValeT,Text:string; i,l:integer;
begin
     FSUtilitaires.TextChiffreenlettre.Text:='';
     FSUtilitaires.ChiffreNumerique.Caption:='';

     ValeT:='';
     if(FSUtilitaires.EditChiffre.Text<>'')then
     begin
          i:=1;
          while(i<=FSUtilitaires.EditChiffre.GetTextLen)do
          begin
              if(FSUtilitaires.EditChiffre.Text[i]in['0'..'9',',','.'])then
              ValeT:=ValeT+FSUtilitaires.EditChiffre.Text[i];
          i:=i+1;
          end;
     FSUtilitaires.EditChiffre.Text:=ValeT;
     FSUtilitaires.ChiffreNumerique.Caption:=FSUtilitaires.EditChiffre.Text;
     FSUtilitaires.EditChiffre.Text:=VerguleToNum(FSUtilitaires.EditChiffre.Text);
     FSUtilitaires.EditChiffre.Text:=Vergule(FSUtilitaires.EditChiffre.Text,'2','C','');
     FSUtilitaires.TextChiffreenlettre.Text:='';
     FSUtilitaires.TextChiffreenlettre.Lines.Add(ChiffreEnLettre(FSUtilitaires.EditChiffre.Text));
     if(FSUtilitaires.RBLectureMonetaire.Checked=true)then FSUtilitaires.EditChiffre.Text:=FSUtilitaires.EditChiffre.Text+' DA';
     end;
     FSUtilitaires.EditChiffre.SetFocus;
end;

procedure TFSUtilitaires.RBLectureMonetaireClick(Sender: TObject);
begin
     ActiverChiffreEnLettres;
end;

procedure TFSUtilitaires.RBLectureNumeriqueClick(Sender: TObject);
begin
     ActiverChiffreEnLettres;
end;

procedure TFSUtilitaires.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     ActiverNomForm(0,(Sender as TComponent).Name);
end;

end.
