unit UnitBondeRoute;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintBondeRout = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    QRShape1: TQRShape;
    DataNomEntreprise: TQRLabel;
    Logo: TQRImage;
    DataEntreprise: TQRRichText;
    TitreTiers: TQRLabel;
    QRShape2: TQRShape;
    DataTiers: TQRRichText;
    DataTitreEtat: TQRLabel;
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
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    DataModepaiement: TQRLabel;
    DataTransporteur: TQRLabel;
    DataImmatrculation: TQRLabel;
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
    PrixUN0: TQRLabel;
    PrixUN1: TQRLabel;
    PrixUN2: TQRLabel;
    PrixUN3: TQRLabel;
    PrixUN4: TQRLabel;
    PrixUN5: TQRLabel;
    Montant0: TQRLabel;
    Montant1: TQRLabel;
    Montant2: TQRLabel;
    Montant3: TQRLabel;
    Montant4: TQRLabel;
    Montant5: TQRLabel;
    TitreSignataire: TQRLabel;
  private

  public

  end;

var
  PrintBondeRout: TPrintBondeRout;

implementation

{$R *.DFM}

end.
