unit UnitFSPublicite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, jpeg;

type
  TFSPublicite = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    BitQuitter: TBitBtn;
    Panel1: TPanel;
    ProgressCDL: TProgressBar;
    AfficheCreationFS: TMemo;
    TimerPourcentage: TTimer;
    Pourcentage: TLabel;
    Image3: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitQuitterClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerPourcentageTimer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSPublicite: TFSPublicite;

implementation

uses UnitInitialisation, UnitFSMenuPrincipal, UnitFSGenerateurBase;

{$R *.dfm}

procedure TFSPublicite.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FSMenuPrincipal.TimerCodeAcces.Enabled:=true;
end;

procedure TFSPublicite.BitQuitterClick(Sender: TObject);
begin
FSPublicite.Close;
end;

procedure TFSPublicite.FormShow(Sender: TObject);
var
  Style : LongInt;
begin
     FSPublicite.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - FSPublicite';

  Style := GetWindowLong(Handle,GWL_STYLE); // Mémorise le style courant
  Style := Style and not WS_CAPTION;     // Retire au Style courant l'affichage de la barre de titre
  SetWindowLong(Handle,GWL_STYLE,Style);   // Effectue la modification
  SetWindowPos(Handle,0,0,0,0,0,SWP_FRAMECHANGED or SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER);  // Mise à jour de la fenêtre
end;

//affichage
{var
  Style : LongInt;
begin
  Style := GetWindowLong(Handle,GWL_STYLE); // mémorise le style courant
  Style := Style or WS_CAPTION;          // Ajoute au Style courant l'affichage de la barre de titre
  SetWindowLong(Handle,GWL_STYLE,Style);   // Effectue la modification
  SetWindowPos(Handle,0,0,0,0,0,SWP_FRAMECHANGED or SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER);  // Mise à jour de la fenêtre
end;}

procedure TFSPublicite.TimerPourcentageTimer(Sender: TObject);
begin
     FSPublicite.Pourcentage.Caption:=Vergule(floattostr(FSPublicite.ProgressCDL.Position/FSPublicite.ProgressCDL.Max),'0','N','%');
end;

end.
