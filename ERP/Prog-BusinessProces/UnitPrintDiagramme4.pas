unit UnitPrintDiagramme4;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, TeEngine, Series, TeeProcs,
  Chart, DbChart, QRTEE;

type
  TPrintDiagramme4 = class(TQuickRep)
    PrintDiagramme: TQRBand;
    TextEntreprise: TQRLabel;
    Logo: TQRImage;
    TextD2: TQRLabel;
    TextD3: TQRLabel;
    TextD4: TQRLabel;
    TextD5: TQRLabel;
    EnteteTitre: TQRRichText;
    DetailBand1: TQRBand;
    Diagramme: TQRChart;
    QRDBChart1: TQRDBChart;
    Series1: TAreaSeries;
  private

  public

  end;

var
  PrintDiagramme4: TPrintDiagramme4;

implementation

{$R *.DFM}

end.
