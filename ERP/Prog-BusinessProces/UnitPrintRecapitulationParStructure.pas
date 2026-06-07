unit UnitPrintRecapitulationParStructure;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintRecapitulationParStructure = class(TQuickRep)
    TitleBand1: TQRBand;
    LigneFin: TQRShape;
    ColonneFin: TQRShape;
    Designation: TQRRichText;
    Designation1: TQRRichText;
    Montant: TQRRichText;
    Montant1: TQRRichText;
    Designation2: TQRRichText;
    Montant2: TQRRichText;
    Designation3: TQRRichText;
    Montant3: TQRRichText;
    Designation4: TQRRichText;
    Montant4: TQRRichText;
    Designation5: TQRRichText;
    Montant5: TQRRichText;
    Designation6: TQRRichText;
    Montant6: TQRRichText;
    Designation7: TQRRichText;
    Designation8: TQRRichText;
    Designation9: TQRRichText;
    Designation10: TQRRichText;
    Designation11: TQRRichText;
    Designation12: TQRRichText;
    Montant7: TQRRichText;
    Montant8: TQRRichText;
    Montant9: TQRRichText;
    Montant10: TQRRichText;
    Montant11: TQRRichText;
    Montant12: TQRRichText;
    Designation13: TQRRichText;
    Montant13: TQRRichText;
    Designation14: TQRRichText;
    Montant14: TQRRichText;
    Designation15: TQRRichText;
    Montant15: TQRRichText;
    Designation16: TQRRichText;
    Montant16: TQRRichText;
    Designation17: TQRRichText;
    Montant17: TQRRichText;
    Designation18: TQRRichText;
    Montant18: TQRRichText;
    Designation19: TQRRichText;
    Designation20: TQRRichText;
    Designation21: TQRRichText;
    Designation22: TQRRichText;
    Designation23: TQRRichText;
    Designation24: TQRRichText;
    Montant19: TQRRichText;
    Montant20: TQRRichText;
    Montant21: TQRRichText;
    Montant22: TQRRichText;
    Montant23: TQRRichText;
    Montant24: TQRRichText;
    Designation25: TQRRichText;
    Montant25: TQRRichText;
    MontantPayer: TQRRichText;
    TitreMontantPayer: TQRLabel;
    MaitreOuvrage01: TQRLabel;
    MaitreOuvrage02: TQRLabel;
    MaitreOuvrage03: TQRLabel;
    MaitreOuvrage05: TQRLabel;
    Entreprise01: TQRLabel;
    Entreprise02: TQRLabel;
    Entreprise03: TQRLabel;
    MaitreOuvrage04: TQRLabel;
    PageHeaderBand1: TQRBand;
    TitreExemple: TQRRichText;
    EtatEntreprise: TQRLabel;
    EtatMarche: TQRLabel;
    EtatTitre: TQRLabel;
    Logo: TQRImage;
  private

  public

  end;

var
  PrintRecapitulationParStructure: TPrintRecapitulationParStructure;

implementation

{$R *.DFM}

end.
