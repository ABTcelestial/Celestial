unit UnitPrintTicketPontBasculeGM;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintTicketPontBasculeGM = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    TitreEntreprise: TQRLabel;
    TitreData1: TQRLabel;
    TitreData2: TQRLabel;
    QRLabel2: TQRLabel;
    DataNumTicket: TQRLabel;
    QRLabel6: TQRLabel;
    DataDateTicket: TQRLabel;
    QRLabel8: TQRLabel;
    DataImmatriculation: TQRLabel;
    QRLabel10: TQRLabel;
    DataTiers: TQRLabel;
    QRLabel12: TQRLabel;
    DataProduit: TQRLabel;
    QRLabel14: TQRLabel;
    DataPoidsBrute: TQRLabel;
    QRLabel16: TQRLabel;
    DataHeureTicket: TQRLabel;
    QRLabel18: TQRLabel;
    DataTare: TQRLabel;
    QRLabel20: TQRLabel;
    DataPoidsNet: TQRLabel;
    QRLabel22: TQRLabel;
    DataChauffeur: TQRLabel;
    TitreSousTicket: TQRLabel;
    QRLabel25: TQRLabel;
    DataConstaterPoidsBrute: TQRLabel;
    QRLabel27: TQRLabel;
    DataConstaterTare: TQRLabel;
    TitreSignataire: TQRLabel;
  private

  public

  end;

var
  PrintTicketPontBasculeGM: TPrintTicketPontBasculeGM;

implementation

{$R *.DFM}

end.
