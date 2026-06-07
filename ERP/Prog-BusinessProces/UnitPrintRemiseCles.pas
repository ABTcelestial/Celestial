unit UnitPrintRemiseCles;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintRemiseCles = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    Logo: TQRImage;
    TextEntreprise: TQRLabel;
    TextD2: TQRLabel;
    TextD3: TQRLabel;
    TextD4: TQRLabel;
    QRShape1: TQRShape;
    TitleBand1: TQRBand;
    TitreEtat: TQRLabel;
    DataEntreprise: TQRLabel;
    TitreDate: TQRLabel;
    TitreReferenceEtat: TQRLabel;
    DataTexte: TQRRichText;
    TitreSignature: TQRLabel;
    CadreTitreSignature: TQRShape;
    TitreSousEtat: TQRLabel;
  private

  public

  end;

var
  PrintRemiseCles: TPrintRemiseCles;

implementation

{$R *.DFM}

end.
