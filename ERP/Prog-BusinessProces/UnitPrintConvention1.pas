unit UnitPrintConvention1;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintConvention1 = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    Logo: TQRImage;
    TextEntreprise: TQRLabel;
    TextD2: TQRLabel;
    TextD3: TQRLabel;
    TextD4: TQRLabel;
    TitreDate: TQRLabel;
    TitleBand1: TQRBand;
    TitreArticle1: TQRLabel;
    DataArticle1: TQRRichText;
    DataArticle2: TQRRichText;
    TitreArticle2: TQRLabel;
    DataArticle3: TQRRichText;
    TitreArticle3: TQRLabel;
    DataArticle4: TQRRichText;
    TitreArticle4: TQRLabel;
    DataArticle5: TQRRichText;
    TitreArticle5: TQRLabel;
    DataArticle6: TQRRichText;
    TitreArticle6: TQRLabel;
    DataArticle7: TQRRichText;
    TitreArticle7: TQRLabel;
  private

  public

  end;

var
  PrintConvention1: TPrintConvention1;

implementation

{$R *.DFM}

end.
