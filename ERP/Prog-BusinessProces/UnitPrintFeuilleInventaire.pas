unit UnitPrintFeuilleInventaire;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintFeuilleInventaire = class(TQuickRep)
    TitleBand1: TQRBand;
    QRShape86: TQRShape;
    TextD1: TQRLabel;
    TextD2: TQRLabel;
    TextD3: TQRLabel;
    TextD4: TQRLabel;
    TextD5: TQRLabel;
    TextD6: TQRLabel;
    Etat: TQRLabel;
    SFamille: TQRLabel;
    OptionPrint: TQRLabel;
    QRLabel1: TQRLabel;
    DataProjet: TQRLabel;
    QRLabel3: TQRLabel;
    DataNumEquipe: TQRLabel;
    Annee: TQRLabel;
    TF15: TQRLabel;
    TF17: TQRLabel;
    TF18: TQRLabel;
    TF16: TQRLabel;
    CF17: TQRShape;
    CF18: TQRShape;
    CF16: TQRShape;
    C7: TQRShape;
    C6: TQRShape;
    C5: TQRShape;
    C4: TQRShape;
    C3: TQRShape;
    C2: TQRShape;
    C1: TQRShape;
    C8: TQRShape;
    C9: TQRShape;
    C10: TQRShape;
    C11: TQRShape;
    C12: TQRShape;
    C13: TQRShape;
    C14: TQRShape;
    T1: TQRLabel;
    T2: TQRLabel;
    T3: TQRLabel;
    T4: TQRLabel;
    T5: TQRLabel;
    T6: TQRLabel;
    T7: TQRLabel;
    T8: TQRRichText;
    T9: TQRRichText;
    T10: TQRRichText;
    T11: TQRRichText;
    T12: TQRRichText;
    T13: TQRRichText;
    T14: TQRRichText;
    QRShape1: TQRShape;
    NPage: TQRLabel;
    DataListeEquipe: TQRRichText;
    TesteDesignation: TQRRichText;
  private

  public

  end;

var
  PrintFeuilleInventaire: TPrintFeuilleInventaire;

implementation

{$R *.DFM}

end.
