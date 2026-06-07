unit UnitPrintDeclarationSurHonneur;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintDeclarationSurHonneur = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    TitreEtat: TQRLabel;
    TitreDate: TQRLabel;
    Logo: TQRImage;
    TextEntreprise: TQRLabel;
    TextD2: TQRLabel;
    TextD3: TQRLabel;
    TextD4: TQRLabel;
    TitreReferenceEtat: TQRRichText;
    DataTexte: TQRRichText;
    TitreObjet: TQRRichText;
    TitreSignature: TQRRichText;
  private

  public

  end;

var
  PrintDeclarationSurHonneur: TPrintDeclarationSurHonneur;

implementation

{$R *.DFM}

end.
