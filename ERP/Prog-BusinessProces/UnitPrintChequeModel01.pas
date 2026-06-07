unit UnitPrintChequeModel01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, jpeg;

type
  TPrintChequeModel01 = class(TQuickRep)
    TitleBand1: TQRBand;
    DataImageCheque: TQRImage;
    DataMontantLettres: TQRRichText;
    DataMontantChffres: TQRLabel;
    DataTiers: TQRLabel;
    DataFaitA: TQRLabel;
    DataFaitLe: TQRLabel;
    DataMontantLettresLigne1: TQRLabel;
    DataMontantLettresLigne2: TQRLabel;
    DataMontantLettresLigne3: TQRLabel;
  private

  public

  end;

var
  PrintChequeModel01: TPrintChequeModel01;

implementation

{$R *.DFM}

end.
