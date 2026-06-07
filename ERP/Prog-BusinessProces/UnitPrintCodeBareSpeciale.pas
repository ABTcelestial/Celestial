unit UnitPrintCodeBareSpeciale;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintCodeBareSpeciale = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    ImageCodeBarre1: TQRImage;
    SousTitre1: TQRLabel;
    Titre1: TQRRichText;
  private

  public

  end;

var
  PrintCodeBareSpeciale: TPrintCodeBareSpeciale;

implementation

{$R *.DFM}

end.
