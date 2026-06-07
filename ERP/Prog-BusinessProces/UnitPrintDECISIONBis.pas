unit UnitPrintDECISIONBis;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintDECISIONBis = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    Logo: TQRImage;
    TextEntreprise: TQRLabel;
    TextD2: TQRLabel;
    TextD3: TQRLabel;
    TextD4: TQRLabel;
    QRShape1: TQRShape;
    TitleBand1: TQRBand;
    TitreEtat: TQRLabel;
    TitreArticle1: TQRLabel;
    TitreVu: TQRRichText;
    DataEntreprise: TQRLabel;
    TitreDate: TQRLabel;
    TitreReferenceEtat: TQRLabel;
    TitreEntreprise: TQRRichText;
    TitreDecide: TQRLabel;
    DatatTitreArticle1: TQRRichText;
    TitreArticle2: TQRLabel;
    DatatTitreArticle2: TQRRichText;
    TitreArticle3: TQRLabel;
    DatatTitreArticle3: TQRRichText;
    TitreArticle4: TQRLabel;
    DatatTitreArticle4: TQRRichText;
    TitreArticle5: TQRLabel;
    DatatTitreArticle5: TQRRichText;
    TitreSignature: TQRLabel;
    TitreLuApprouve: TQRLabel;
    CadreTitreSignature: TQRShape;
    DetailBand1: TQRBand;
  private

  public

  end;

var
  PrintDECISIONBis: TPrintDECISIONBis;

implementation

{$R *.DFM}

end.
