unit UnitPrintDemandePlanification;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintDemandePlanification = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    Logo: TQRImage;
    TextEntreprise: TQRLabel;
    TextD2: TQRLabel;
    TextD3: TQRLabel;
    TextD4: TQRLabel;
    TitreDate: TQRLabel;
    TitleBand1: TQRBand;
    TitreEtat: TQRLabel;
    TitreProjet: TQRLabel;
    TitreObjet: TQRLabel;
    DataObjet: TQRLabel;
    DataIntroduction: TQRRichText;
    TitreConventionne: TQRLabel;
    TitreDateLieuNaisConventionne: TQRLabel;
    TitrePieceConventionne: TQRLabel;
    TitreFonctionConventionne: TQRLabel;
    TitreDenommeConventionne: TQRLabel;
    DataDenommeConventionne: TQRLabel;
    DataFonctionConventionne: TQRLabel;
    DataDateLieuNaisConventionne: TQRLabel;
    DataArticle1: TQRRichText;
    DataEntreprise: TQRLabel;
    DataDemandeur: TQRLabel;
    DataLuApprove: TQRLabel;
    QRLabel1: TQRLabel;
    DataConventionne: TQRRichText;
    DataPieceConventionne: TQRRichText;
  private

  public

  end;

var
  PrintDemandePlanification: TPrintDemandePlanification;

implementation

{$R *.DFM}

end.
