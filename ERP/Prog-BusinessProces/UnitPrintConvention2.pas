unit UnitPrintConvention2;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintConvention2 = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    Logo: TQRImage;
    TextEntreprise: TQRLabel;
    TextD2: TQRLabel;
    TextD3: TQRLabel;
    TextD4: TQRLabel;
    TitreDate: TQRLabel;
    TitleBand1: TQRBand;
    DataArticle8: TQRRichText;
    TitreArticle8: TQRLabel;
    DataArticle9: TQRRichText;
    TitreArticle9: TQRLabel;
    DataArticle10: TQRRichText;
    TitreArticle10: TQRLabel;
    TitreConventionne: TQRLabel;
    TitreEntreprise: TQRLabel;
  private

  public

  end;

var
  PrintConvention2: TPrintConvention2;

implementation

{$R *.DFM}

end.
