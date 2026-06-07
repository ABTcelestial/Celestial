unit UnitPrintAttestationVersement;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintAttestationVersement = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    Logo: TQRImage;
    TextEntreprise: TQRLabel;
    TextD2: TQRLabel;
    TextD3: TQRLabel;
    TextD4: TQRLabel;
    TitleBand1: TQRBand;
    TitreEtat: TQRLabel;
    Data: TQRRichText;
    DataEntreprise: TQRLabel;
    TitreDate: TQRLabel;
    TitreSignature: TQRLabel;
    TitreLuApprouve: TQRLabel;
    CadreTitreSignature: TQRShape;
    TitreNumEtat: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape1: TQRShape;
    QRShape7: TQRShape;
    QRShape10: TQRShape;
    QRShape4: TQRShape;
  private

  public

  end;

var
  PrintAttestationVersement: TPrintAttestationVersement;

implementation

{$R *.DFM}

end.
