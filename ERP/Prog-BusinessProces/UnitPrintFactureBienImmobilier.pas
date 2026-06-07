unit UnitPrintFactureBienImmobilier;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintFactureBienImmobilier = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    TextD1: TQRLabel;
    EnteteTitre: TQRLabel;
    QRShape37: TQRShape;
    QRLabel1: TQRLabel;
    TextEntreprise: TQRLabel;
    TextDateFact: TQRLabel;
    PageSuite: TQRLabel;
    TextProjet: TQRRichText;
    Projet: TQRLabel;
    Logo: TQRImage;
    LabelISO: TQRImage;
    TextPayement: TQRRichText;
    TitleBand1: TQRBand;
    CH2: TQRShape;
    Code0: TQRLabel;
    Desig0: TQRLabel;
    UM0: TQRLabel;
    Qte0: TQRLabel;
    PUHT0: TQRLabel;
    MHT0: TQRLabel;
    C1: TQRShape;
    C2: TQRShape;
    C3: TQRShape;
    C4: TQRShape;
    C6: TQRShape;
    CH0: TQRShape;
    CH1: TQRShape;
    C0: TQRShape;
    C10: TQRShape;
    PageASuivre: TQRLabel;
    C11: TQRShape;
    CH3: TQRShape;
    C12: TQRShape;
    RecTotalMHT: TQRLabel;
    RecTotalMTVA: TQRLabel;
    RecTotalMTTC: TQRLabel;
    TotalMHT: TQRLabel;
    TotalMTVA: TQRLabel;
    TotalMTTC: TQRLabel;
    TextArreteeLaFacture: TQRLabel;
    TextChiffreenLettre: TQRRichText;
    TitreSignataire: TQRLabel;
    BasTT3: TQRLabel;
    MHT: TQRRichText;
    PUHT: TQRRichText;
    Qte: TQRRichText;
    UM: TQRRichText;
    Desig: TQRRichText;
    Code: TQRRichText;
    TVA: TQRLabel;
    DataEntreprise: TQRRichText;
    DataTiers: TQRRichText;
  private

  public

  end;

var
  PrintFactureBienImmobilier: TPrintFactureBienImmobilier;

implementation

{$R *.DFM}

end.
