unit UnitShowmessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TFSShowmessage = class(TForm)
    AfficheMessage: TPanel;
    TimerShowmessage: TTimer;
    AfficheBitAfficheMessage: TPanel;
    BitAfficheMessage: TBitBtn;
    Bevel22: TBevel;
    EditNbrExecutionTimer: TEdit;
    RBAutoClosed: TCheckBox;
    procedure BitAfficheMessageClick(Sender: TObject);
    procedure TimerShowmessageTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSShowmessage: TFSShowmessage;

implementation

Uses  UnitInitialisation, UnitFSMenuPrincipal;

{$R *.dfm}

procedure TFSShowmessage.BitAfficheMessageClick(Sender: TObject);
begin
FSShowmessage.Close;
end;

procedure TFSShowmessage.TimerShowmessageTimer(Sender: TObject);
begin
     //FSShowmessage.Show;
     FSShowmessage.EditNbrExecutionTimer.Text:=inttostr(strtointeger(FSShowmessage.EditNbrExecutionTimer.Text)+1);

     if(FSShowmessage.AfficheMessage.Color=$00E4E4E4)then
     begin
          FSShowmessage.AfficheMessage.Color:=clWhite;
          FSShowmessage.AfficheMessage.Font.Color:=clRed;
     end
     else
     begin
          FSShowmessage.AfficheMessage.Color:=$00E4E4E4;
          FSShowmessage.AfficheMessage.Font.Color:=clNavy;
     end;

     if(FSShowmessage.RBAutoClosed.Checked=true)and(strtointeger(FSShowmessage.EditNbrExecutionTimer.Text)>=10)then
     begin
          FSShowmessage.TimerShowmessage.Enabled:=false;
          FSShowmessage.Close;
     end;

     FlashWindow(handle, true);
end;

procedure TFSShowmessage.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     FSShowmessage.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Attention !';

     FSShowmessage.EditNbrExecutionTimer.Text:='';
     FSShowmessage.TimerShowmessage.Enabled:=true;
     FSShowmessage.RBAutoClosed.Checked:=true;
end;

procedure TFSShowmessage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
FSShowmessage.TimerShowmessage.Enabled:=false;
end;

procedure TFSShowmessage.FormResize(Sender: TObject);
begin
     FSShowmessage.AfficheMessage.Width:=FSShowmessage.Width-32;

     FSShowmessage.AfficheBitAfficheMessage.Left:=ValeAbsolue(FSShowmessage.Width/2)-ValeAbsolue(FSShowmessage.AfficheBitAfficheMessage.Width/2)
end;

end.
