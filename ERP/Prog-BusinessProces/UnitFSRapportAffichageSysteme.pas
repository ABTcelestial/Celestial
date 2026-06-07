unit UnitFSRapportAffichageSysteme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TFSRapportAffichageSysteme = class(TForm)
    RapportTraitement: TMemo;
    Panel1: TPanel;
    Pourcentage: TLabel;
    ProgressCDL: TProgressBar;
    TimerPourcentage: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure TimerPourcentageTimer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSRapportAffichageSysteme: TFSRapportAffichageSysteme;

implementation

uses UnitInitialisation;

{$R *.dfm}

procedure TFSRapportAffichageSysteme.FormShow(Sender: TObject);
begin
     ActiverNomForm(1,(Sender as TComponent).Name);
end;

procedure TFSRapportAffichageSysteme.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     ActiverNomForm(0,(Sender as TComponent).Name);
end;

procedure TFSRapportAffichageSysteme.FormResize(Sender: TObject);
begin
     FSRapportAffichageSysteme.RapportTraitement.Width:=FSRapportAffichageSysteme.Width-29;
     FSRapportAffichageSysteme.RapportTraitement.Height:=FSRapportAffichageSysteme.Height-54;
end;

procedure TFSRapportAffichageSysteme.TimerPourcentageTimer(
  Sender: TObject);
begin
     FSRapportAffichageSysteme.Pourcentage.Caption:=Vergule(floattostr(FSRapportAffichageSysteme.ProgressCDL.Position/FSRapportAffichageSysteme.ProgressCDL.Max),'2','C','%');
end;

end.
