unit UnitFSPlanTravail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, mmSystem;

type
  TFSPlanTravail = class(TForm)
    Panel1: TPanel;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSPlanTravail: TFSPlanTravail;

implementation

Uses UnitInitialisation;

{$R *.dfm}

procedure TFSPlanTravail.Button1Click(Sender: TObject);
begin
     if OpenDialog1.Execute then
     begin
          label1.Caption:='début';
          Label1.update;// réaffichage du label1
          PlaySound(PChar(OpenDialog1.Filename),Handle,SND_ASYNC);
          label1.Caption:='fin';
     end;
end;

procedure TFSPlanTravail.Button3Click(Sender: TObject);
begin
     if OpenDialog1.Execute then
     begin
          label1.Caption:='début';
          Label1.update;// réaffichage du label1
          PlaySound(PChar(OpenDialog1.Filename),Handle,SND_SYNC);
          label1.Caption:='fin';
     end;
end;

procedure TFSPlanTravail.Button2Click(Sender: TObject);
begin
      if OpenDialog1.Execute then
      begin
         label1.Caption:='début';
         Label1.update; // réaffichage du label1
         PlaySound(PChar(OpenDialog1.Filename),Handle,SND_ASYNC or SND_LOOP);
         label1.Caption:='fin';
      end;
end;

procedure TFSPlanTravail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

procedure TFSPlanTravail.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
end;

end.
