unit UnitAttestationVersement;

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
    QRShape1: TQRShape;
    TitleBand1: TQRBand;
    TitreEtat: TQRLabel;
    Data: TQRRichText;
    DataEntreprise: TQRLabel;
    TitreDate: TQRLabel;
    TitreSignature: TQRLabel;
    TitreLuApprouve: TQRLabel;
    CadreTitreSignature: TQRShape;
  private

  public

  end;

var
  PrintAttestationVersement: TPrintAttestationVersement;

implementation

{$R *.DFM}

end.
