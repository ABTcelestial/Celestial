unit UnitFSConfirmationSaveSocket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFSConfirmationSaveSocket = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SaveTo: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SaveD: TSaveDialog;
    procedure Label3DblClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSConfirmationSaveSocket: TFSConfirmationSaveSocket;

implementation

Uses UnitFSDataServeur;

{$R *.dfm}

procedure TFSConfirmationSaveSocket.Label3DblClick(Sender: TObject);
begin
     if SaveD.Execute then
    SaveTo.Text:= SaveD.FileName;
end;

end.
