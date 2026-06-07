unit UnitPrintBonCaisse;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, DBTables;

type
  TPrintBonCaisse = class(TQuickRep)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    TableStock: TTable;
    EditCodeArticle: TQRDBText;
    TableStockCodeArticle: TStringField;
    TableStockDsignation: TStringField;
    EditDesignation: TQRDBText;
  private

  public

  end;

var
  PrintBonCaisse: TPrintBonCaisse;

implementation

{$R *.DFM}

end.
