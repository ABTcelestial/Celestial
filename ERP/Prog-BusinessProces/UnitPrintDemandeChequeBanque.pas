unit UnitPrintDemandeChequeBanque;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintDemandeChequeBanque = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel1: TQRLabel;
    TitreLibelleBanque: TQRLabel;
    QRShape13: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    DataAdresseDonneurOrdre2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    DataMontantGlobalPrincipal: TQRLabel;
    DataMontantGlobalDecimal: TQRLabel;
    QRLabel35: TQRLabel;
    DataDateRemise: TQRLabel;
    QRLabel38: TQRLabel;
    DataIdentificateurBeneficiere1: TQRLabel;
    DataIdentificateurBeneficiere2: TQRLabel;
    DataIdentificateurBeneficiere3: TQRLabel;
    DataIdentificateurBeneficiere4: TQRLabel;
    DataIdentificateurBeneficiere5: TQRLabel;
    DataAgenceBeneficiere1: TQRLabel;
    DataAgenceBeneficiere2: TQRLabel;
    DataAgenceBeneficiere3: TQRLabel;
    DataAgenceBeneficiere4: TQRLabel;
    DataAgenceBeneficiere5: TQRLabel;
    DataMontantOperationPrincipal1: TQRLabel;
    DataMontantOperationPrincipal2: TQRLabel;
    DataMontantOperationPrincipal3: TQRLabel;
    DataMontantOperationPrincipal4: TQRLabel;
    DataMontantOperationPrincipal5: TQRLabel;
    TitreLogoBanque: TQRImage;
    DataIdentificateurDonneurOrdre: TQRLabel;
    DataAdresseDonneurOrdre1: TQRLabel;
    DataAgenceDonneurOrdre: TQRLabel;
    DataRIBDonneurOrdreAgence: TQRLabel;
    DataRIBDonneurOrdreGL: TQRLabel;
    DataRIBDonneurOrdreIndicatifCle: TQRLabel;
    DataRIBDonneurOrdreOrdre: TQRLabel;
    DataMontantOperationDecimal1: TQRLabel;
    DataMontantOperationDecimal2: TQRLabel;
    DataMontantOperationDecimal3: TQRLabel;
    DataMontantOperationDecimal4: TQRLabel;
    DataMontantOperationDecimal5: TQRLabel;
    QRLabel34: TQRLabel;
    TitleBand1: TQRBand;
    QRShape33: TQRShape;
    QRLabel6: TQRLabel;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel37: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    DataCodeAgenceInformation1: TQRLabel;
    DataCodeAgenceInformation2: TQRLabel;
    DataCodeAgenceInformation3: TQRLabel;
    DataCodeAgenceInformation4: TQRLabel;
    DataCodeAgenceInformation5: TQRLabel;
    DataCodeAgenceInformation6: TQRLabel;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    DataLibelleAgenceInformation1: TQRLabel;
    DataLibelleAgenceInformation2: TQRLabel;
    DataLibelleAgenceInformation3: TQRLabel;
    DataLibelleAgenceInformation4: TQRLabel;
    DataLibelleAgenceInformation5: TQRLabel;
    DataLibelleAgenceInformation6: TQRLabel;
    DataAdresseAgenceInformation1: TQRLabel;
    DataAdresseAgenceInformation2: TQRLabel;
    DataAdresseAgenceInformation3: TQRLabel;
    DataAdresseAgenceInformation4: TQRLabel;
    DataAdresseAgenceInformation5: TQRLabel;
    DataAdresseAgenceInformation6: TQRLabel;
    ActivationInformation: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape3: TQRShape;
    QRShape12: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
  private

  public

  end;

var
  PrintDemandeChequeBanque: TPrintDemandeChequeBanque;

implementation

{$R *.DFM}

end.
