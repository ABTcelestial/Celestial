unit UnitPrintDiagrammeDouble;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, TeEngine, Series, TeeProcs,
  Chart, DbChart, QRTEE;

type
  TPrintDiagrammeDouble = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    EtatEntreprise: TQRLabel;
    EtatMarche: TQRLabel;
    EtatTitre: TQRLabel;
    TitleBand1: TQRBand;
    Diagramme: TQRChart;
    QRDBChart1: TQRDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
  private

  public

  end;

var
  PrintDiagrammeDouble: TPrintDiagrammeDouble;

implementation

{$R *.DFM}

end.
