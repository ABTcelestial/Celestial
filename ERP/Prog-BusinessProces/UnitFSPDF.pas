unit UnitFSPDF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, OleCtrls,
  OleServer; //, OleCtrls, AcroPDFLib_TLB

type
  TFSPDF = class(TForm)
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSPDF: TFSPDF;

implementation

{$R *.dfm}

procedure TFSPDF.BitBtn1Click(Sender: TObject);
begin
     {if FSPDF.OpenDialog1.Execute then
     FSPDF.FichierPDF.Src:=OpenDialog1.FileName; //Affiche le fichier spécifié }
end;

end.
