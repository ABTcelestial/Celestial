unit UnitFSAttente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TFSAttente = class(TForm)
    AffichePatientez: TPanel;
    TimerControleFormulesEtat: TTimer;
    procedure TimerControleFormulesEtatTimer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSAttente: TFSAttente;

implementation

Uses UnitInitialisation, UnitFSCompleteFormulesEtat, UnitFSMenuPrincipal;

{$R *.dfm}

procedure TFSAttente.TimerControleFormulesEtatTimer(Sender: TObject);
begin
FSCompleteFormulesEtat.EditTimerActive.Text:='TimerControleFormulesEtat';
//CompleteFormuleEtats('',FSCompleteFormulesEtat.EditCodeTypeFormuleAfficher.Text,FSMenuPrincipal.TableauListeResultatCalculePaie);
FSAttente.TimerControleFormulesEtat.Enabled:=false;
FSAttente.Close;
end;

end.
