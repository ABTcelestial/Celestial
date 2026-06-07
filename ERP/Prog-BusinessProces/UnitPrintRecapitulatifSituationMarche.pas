unit UnitPrintRecapitulatifSituationMarche;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintRecapitulatifSituationMarche = class(TQuickRep)
    TitleBand1: TQRBand;
    LigneFin: TQRShape;
    ColonneFin: TQRShape;
    Designation: TQRRichText;
    Designation1: TQRRichText;
    MontantMois: TQRRichText;
    MontantMois1: TQRRichText;
    Designation2: TQRRichText;
    MontantMois2: TQRRichText;
    Designation3: TQRRichText;
    MontantMois3: TQRRichText;
    Designation4: TQRRichText;
    MontantMois4: TQRRichText;
    Designation5: TQRRichText;
    MontantMois5: TQRRichText;
    Designation6: TQRRichText;
    MontantMois6: TQRRichText;
    Designation7: TQRRichText;
    Designation8: TQRRichText;
    Designation9: TQRRichText;
    Designation10: TQRRichText;
    Designation11: TQRRichText;
    Designation12: TQRRichText;
    MontantMois7: TQRRichText;
    MontantMois8: TQRRichText;
    MontantMois9: TQRRichText;
    MontantMois10: TQRRichText;
    MontantMois11: TQRRichText;
    MontantMois12: TQRRichText;
    Designation13: TQRRichText;
    MontantMois13: TQRRichText;
    Designation14: TQRRichText;
    MontantMois14: TQRRichText;
    Designation15: TQRRichText;
    MontantMois15: TQRRichText;
    Designation16: TQRRichText;
    MontantMois16: TQRRichText;
    Designation17: TQRRichText;
    MontantMois17: TQRRichText;
    Designation18: TQRRichText;
    MontantMois18: TQRRichText;
    Designation19: TQRRichText;
    Designation20: TQRRichText;
    Designation21: TQRRichText;
    Designation22: TQRRichText;
    Designation23: TQRRichText;
    Designation24: TQRRichText;
    MontantMois19: TQRRichText;
    MontantMois20: TQRRichText;
    MontantMois21: TQRRichText;
    MontantMois22: TQRRichText;
    MontantMois23: TQRRichText;
    MontantMois24: TQRRichText;
    Designation25: TQRRichText;
    MontantMois25: TQRRichText;
    MontantPayer: TQRRichText;
    MontantGlobal: TQRRichText;
    MontantGlobal1: TQRRichText;
    MontantGlobal2: TQRRichText;
    MontantGlobal3: TQRRichText;
    MontantGlobal4: TQRRichText;
    MontantGlobal5: TQRRichText;
    MontantGlobal6: TQRRichText;
    MontantGlobal7: TQRRichText;
    MontantGlobal8: TQRRichText;
    MontantGlobal9: TQRRichText;
    MontantGlobal10: TQRRichText;
    MontantGlobal11: TQRRichText;
    MontantGlobal12: TQRRichText;
    MontantGlobal13: TQRRichText;
    MontantGlobal14: TQRRichText;
    MontantGlobal15: TQRRichText;
    MontantGlobal16: TQRRichText;
    MontantGlobal17: TQRRichText;
    MontantGlobal18: TQRRichText;
    MontantGlobal19: TQRRichText;
    MontantGlobal20: TQRRichText;
    MontantGlobal21: TQRRichText;
    MontantGlobal22: TQRRichText;
    MontantGlobal23: TQRRichText;
    MontantGlobal24: TQRRichText;
    MontantGlobal25: TQRRichText;
    Entreprise: TQRLabel;
    BET: TQRLabel;
    MaitreOuvrage: TQRLabel;
    TitreMontantPayer: TQRLabel;
    PageHeaderBand1: TQRBand;
    TitreExemple: TQRRichText;
    EtatEntreprise: TQRRichText;
    EtatTitre: TQRLabel;
  private

  public

  end;

var
  PrintRecapitulatifSituationMarche: TPrintRecapitulatifSituationMarche;

implementation

{$R *.DFM}

end.
