unit UnitPrintRemiseCheque;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintRemiseCheque = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel1: TQRLabel;
    TitreLibelleBanque: TQRLabel;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    DataSommeTOTAL: TQRLabel;
    QRLabel35: TQRLabel;
    DataDateRemise: TQRLabel;
    QRLabel38: TQRLabel;
    TitreLogoBanque: TQRImage;
    DataIdentificateurDonneurOrdre: TQRLabel;
    DataAgenceDonneurOrdre: TQRLabel;
    DataRIBDonneurOrdreAgence: TQRLabel;
    DataRIBDonneurOrdreGL: TQRLabel;
    DataRIBDonneurOrdreIndicatifCle: TQRLabel;
    DataRIBDonneurOrdreOrdre: TQRLabel;
    QRLabel34: TQRLabel;
    DataSommeEnLettres: TQRRichText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRLabel9: TQRLabel;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel17: TQRLabel;
    DataVersementEffectuePar: TQRRichText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel36: TQRLabel;
    DataAdresseDonneurOrdre: TQRRichText;
    DataBanqueTiree: TQRRichText;
    DataNumCheque: TQRRichText;
    DataTireur: TQRRichText;
    DataSomme: TQRRichText;
    QRShape5: TQRShape;
    TitleBand1: TQRBand;
    QRShape19: TQRShape;
    QRShape24: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel6: TQRLabel;
    TitreLibelleBanqueX: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    DataSommeTOTALX: TQRLabel;
    QRLabel42: TQRLabel;
    DataDateRemiseX: TQRLabel;
    QRLabel44: TQRLabel;
    TitreLogoBanqueX: TQRImage;
    DataIdentificateurDonneurOrdreX: TQRLabel;
    DataAgenceDonneurOrdreX: TQRLabel;
    DataRIBDonneurOrdreAgenceX: TQRLabel;
    DataRIBDonneurOrdreGLX: TQRLabel;
    DataRIBDonneurOrdreIndicatifCleX: TQRLabel;
    DataRIBDonneurOrdreOrdreX: TQRLabel;
    QRLabel51: TQRLabel;
    DataSommeEnLettresX: TQRRichText;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRLabel71: TQRLabel;
    DataVersementEffectueParX: TQRRichText;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRShape61: TQRShape;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    DataAdresseDonneurOrdreX: TQRRichText;
    DataBanqueTireeX: TQRRichText;
    DataNumChequeX: TQRRichText;
    DataTireurX: TQRRichText;
    DataSommeX: TQRRichText;
    CacheOrdreX: TQRShape;
    QRShape58: TQRShape;
  private

  public

  end;

var
  PrintRemiseCheque: TPrintRemiseCheque;

implementation

{$R *.DFM}

end.
