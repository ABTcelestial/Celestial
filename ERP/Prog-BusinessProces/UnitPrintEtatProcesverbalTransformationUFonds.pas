unit UnitPrintEtatProcesverbalTransformationUFonds;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintEtatProcesverbalTransformationUFonds = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    PrintEtatProcesverbalTransformationUFonds: TQRBand;
    TextEntreprise: TQRLabel;
    TextD2: TQRLabel;
    TextD3: TQRLabel;
    TextD4: TQRLabel;
    Logo: TQRImage;
    TitreDate: TQRLabel;
    C2TitreEtat: TQRShape;
    C1TitreEtat: TQRShape;
    TitreEtat: TQRLabel;
    TitreVisaBeneficiaire: TQRLabel;
    TitreVisaEntreprise: TQRLabel;
    DataDetailS: TQRRichText;
    DataDetailE: TQRRichText;
    TitreDetailS: TQRLabel;
    TitreDetailE: TQRLabel;
    Verticale: TQRShape;
    HorizontaleHaut: TQRShape;
    DataBeneficiaire: TQRLabel;
    QRLabel3: TQRLabel;
    HorizontaleBas: TQRShape;
    DataRapport: TQRRichText;
  private

  public

  end;

var
  PrintEtatProcesverbalTransformationUFonds: TPrintEtatProcesverbalTransformationUFonds;

implementation

{$R *.DFM}

end.
