unit UnitPrintAttachement;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
    TPrintAttachement = class(TQuickRep)
    TitleBand1: TQRBand;
    Designation: TQRRichText;
    Unite: TQRRichText;
    QteRealisee: TQRRichText;
    QteMarche: TQRRichText;
    QteAvenant: TQRRichText;
    Designation25: TQRRichText;
    Designation24: TQRRichText;
    Designation23: TQRRichText;
    Designation22: TQRRichText;
    Designation21: TQRRichText;
    Designation20: TQRRichText;
    Designation19: TQRRichText;
    Designation18: TQRRichText;
    Designation17: TQRRichText;
    Designation16: TQRRichText;
    Designation15: TQRRichText;
    Designation14: TQRRichText;
    Designation13: TQRRichText;
    Designation12: TQRRichText;
    Designation11: TQRRichText;
    Designation10: TQRRichText;
    Designation9: TQRRichText;
    Designation8: TQRRichText;
    Designation7: TQRRichText;
    Designation6: TQRRichText;
    Designation5: TQRRichText;
    Designation4: TQRRichText;
    Designation3: TQRRichText;
    Designation2: TQRRichText;
    Designation1: TQRRichText;
    Unite25: TQRRichText;
    Unite24: TQRRichText;
    Unite23: TQRRichText;
    Unite22: TQRRichText;
    Unite21: TQRRichText;
    Unite20: TQRRichText;
    Unite19: TQRRichText;
    Unite18: TQRRichText;
    Unite17: TQRRichText;
    Unite16: TQRRichText;
    Unite15: TQRRichText;
    Unite14: TQRRichText;
    Unite13: TQRRichText;
    Unite12: TQRRichText;
    Unite11: TQRRichText;
    Unite10: TQRRichText;
    Unite9: TQRRichText;
    Unite8: TQRRichText;
    Unite7: TQRRichText;
    Unite6: TQRRichText;
    Unite5: TQRRichText;
    Unite4: TQRRichText;
    Unite3: TQRRichText;
    Unite2: TQRRichText;
    Unite1: TQRRichText;
    QteRealisee25: TQRRichText;
    QteRealisee24: TQRRichText;
    QteRealisee23: TQRRichText;
    QteRealisee22: TQRRichText;
    QteRealisee21: TQRRichText;
    QteRealisee20: TQRRichText;
    QteRealisee19: TQRRichText;
    QteRealisee18: TQRRichText;
    QteRealisee17: TQRRichText;
    QteRealisee16: TQRRichText;
    QteRealisee15: TQRRichText;
    QteRealisee14: TQRRichText;
    QteRealisee13: TQRRichText;
    QteRealisee12: TQRRichText;
    QteRealisee11: TQRRichText;
    QteRealisee10: TQRRichText;
    QteRealisee9: TQRRichText;
    QteRealisee8: TQRRichText;
    QteRealisee7: TQRRichText;
    QteRealisee6: TQRRichText;
    QteRealisee5: TQRRichText;
    QteRealisee4: TQRRichText;
    QteRealisee3: TQRRichText;
    QteRealisee2: TQRRichText;
    QteRealisee1: TQRRichText;
    QteMarche25: TQRRichText;
    QteMarche24: TQRRichText;
    QteMarche23: TQRRichText;
    QteMarche22: TQRRichText;
    QteMarche21: TQRRichText;
    QteMarche20: TQRRichText;
    QteMarche19: TQRRichText;
    QteMarche18: TQRRichText;
    QteMarche17: TQRRichText;
    QteMarche16: TQRRichText;
    QteMarche15: TQRRichText;
    QteMarche14: TQRRichText;
    QteMarche13: TQRRichText;
    QteMarche12: TQRRichText;
    QteMarche11: TQRRichText;
    QteMarche10: TQRRichText;
    QteMarche9: TQRRichText;
    QteMarche8: TQRRichText;
    QteMarche7: TQRRichText;
    QteMarche6: TQRRichText;
    QteMarche5: TQRRichText;
    QteMarche4: TQRRichText;
    QteMarche3: TQRRichText;
    QteMarche2: TQRRichText;
    QteMarche1: TQRRichText;
    QteAvenant25: TQRRichText;
    QteAvenant24: TQRRichText;
    QteAvenant23: TQRRichText;
    QteAvenant22: TQRRichText;
    QteAvenant21: TQRRichText;
    QteAvenant20: TQRRichText;
    QteAvenant19: TQRRichText;
    QteAvenant18: TQRRichText;
    QteAvenant17: TQRRichText;
    QteAvenant16: TQRRichText;
    QteAvenant15: TQRRichText;
    QteAvenant14: TQRRichText;
    QteAvenant13: TQRRichText;
    QteAvenant12: TQRRichText;
    QteAvenant11: TQRRichText;
    QteAvenant10: TQRRichText;
    QteAvenant9: TQRRichText;
    QteAvenant8: TQRRichText;
    QteAvenant7: TQRRichText;
    QteAvenant6: TQRRichText;
    QteAvenant5: TQRRichText;
    QteAvenant4: TQRRichText;
    QteAvenant3: TQRRichText;
    QteAvenant2: TQRRichText;
    QteAvenant1: TQRRichText;
    MaitreOuvrage: TQRLabel;
    BET: TQRLabel;
    Entreprise: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    PageHeaderBand1: TQRBand;
    TitreExemple: TQRRichText;
    EtatEntreprise: TQRRichText;
    EtatTitre: TQRLabel;
    EtatDate: TQRLabel;
    EtatSousTitre: TQRLabel;
    TitreStructure: TQRLabel;
  private

  public

  end;

var
  PrintAttachement: TPrintAttachement;

implementation

{$R *.DFM}

end.
