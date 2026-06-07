unit UnitFSAuthentificationreseaux;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFSAuthentificationreseaux = class(TForm)
    AfficheMessage: TPanel;
    TimerShowmessage: TTimer;
    EditNomMachine: TEdit;
    RBActiveControleTableReseaux: TCheckBox;
    RBOKExisteMachineSousReseaux: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure TimerShowmessageTimer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSAuthentificationreseaux: TFSAuthentificationreseaux;

implementation

uses UnitInitialisation, UnitFSMenuPrincipal;

{$R *.dfm}

procedure TFSAuthentificationreseaux.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     FSAuthentificationreseaux.TimerShowmessage.Enabled:=false;
end;

procedure TFSAuthentificationreseaux.FormShow(Sender: TObject);
begin
     FSAuthentificationreseaux.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Authentification réseaux !';
     FSAuthentificationreseaux.TimerShowmessage.Enabled:=true;
end;

procedure TFSAuthentificationreseaux.TimerShowmessageTimer(
  Sender: TObject);
begin
     FSAuthentificationreseaux.Show;

     if(FSAuthentificationreseaux.AfficheMessage.Color=$00E4E4E4)then
     begin
          FSAuthentificationreseaux.AfficheMessage.Color:=clWhite;
          FSAuthentificationreseaux.AfficheMessage.Font.Color:=clRed;
     end
     else
     begin
          FSAuthentificationreseaux.AfficheMessage.Color:=$00E4E4E4;
          FSAuthentificationreseaux.AfficheMessage.Font.Color:=clNavy;
     end;
     
     FlashWindow(handle, true);
end;

end.
