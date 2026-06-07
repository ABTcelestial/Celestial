unit UnitPrintBordereauRemise;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintBordereauRemise = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    DataNomEntreprise: TQRLabel;
    Logo: TQRImage;
    DataEntreprise: TQRRichText;
    QRShape2: TQRShape;
    DataTiers: TQRRichText;
    TitreTiers: TQRLabel;
    DataTitreEtat: TQRLabel;
    TitleBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    DataChauffeur: TQRLabel;
    TitreSignataire: TQRLabel;
    Ref0: TQRLabel;
    Ref1: TQRLabel;
    Ref2: TQRLabel;
    Ref3: TQRLabel;
    Ref4: TQRLabel;
    Ref5: TQRLabel;
    Designation0: TQRLabel;
    Designation1: TQRLabel;
    Designation2: TQRLabel;
    Designation3: TQRLabel;
    Designation4: TQRLabel;
    Designation5: TQRLabel;
    Quantite0: TQRLabel;
    Quantite1: TQRLabel;
    Quantite2: TQRLabel;
    Quantite3: TQRLabel;
    Quantite4: TQRLabel;
    Quantite5: TQRLabel;
    Montant0: TQRLabel;
    Montant1: TQRLabel;
    Montant2: TQRLabel;
    Montant3: TQRLabel;
    Montant4: TQRLabel;
    Montant5: TQRLabel;
    QRLabel2: TQRLabel;
  private

  public

  end;

var
  PrintBordereauRemise: TPrintBordereauRemise;

implementation

{$R *.DFM}

end.
