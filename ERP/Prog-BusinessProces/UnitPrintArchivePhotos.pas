unit UnitPrintArchivePhotos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TPrintArchivePhotos = class(TQuickRep)
    PrintArchivePhotos: TQRBand;
    TitleBand1: TQRBand;
    Logo: TQRImage;
    TitreEntreprise1: TQRLabel;
    TitreEntreprise2: TQRLabel;
    TitreEntreprise3: TQRLabel;
    TitreEntreprise4: TQRLabel;
    ArchivePhoto1: TQRImage;
    InfoArchivePhoto1: TQRRichText;
    InfoArchivePhoto2: TQRRichText;
    ArchivePhoto2: TQRImage;
    InfoArchivePhoto3: TQRRichText;
    ArchivePhoto3: TQRImage;
    InfoArchivePhoto4: TQRRichText;
    ArchivePhoto4: TQRImage;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    CadreInvisibleArchivePhoto1: TQRShape;
    CadreInvisibleArchivePhoto2: TQRShape;
    CadreInvisibleArchivePhoto3: TQRShape;
    CadreInvisibleArchivePhoto4: TQRShape;
    NumPage: TQRLabel;
    TitreEtat: TQRRichText;
    RefArchivePhoto1: TQRLabel;
    RefArchivePhoto2: TQRLabel;
    RefArchivePhoto3: TQRLabel;
    RefArchivePhoto4: TQRLabel;
  private

  public

  end;

var
  PrintArchivePhotos: TPrintArchivePhotos;

implementation

{$R *.DFM}

end.
