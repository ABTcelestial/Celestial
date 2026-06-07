unit UnitPrintRapportControleSpecificite;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintRapportControleSpecificite = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    TitreEtat: TQRLabel;
    Utilisateur: TQRLabel;
    TitleBand1: TQRBand;
    TexteRapport: TQRRichText;
  private

  public

  end;

var
  PrintRapportControleSpecificite: TPrintRapportControleSpecificite;

implementation

{$R *.DFM}

end.
