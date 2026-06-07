unit UnitFSPhotoPleinEcran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TFSPhotoPleinEcran = class(TForm)
    PhotoPleinEcran: TImage;
    BitBtn1: TBitBtn;
    procedure FormResize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PhotoPleinEcranDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSPhotoPleinEcran: TFSPhotoPleinEcran;

implementation

Uses UnitInitialisation;

{$R *.dfm}

procedure TFSPhotoPleinEcran.FormResize(Sender: TObject);
begin
     FSPhotoPleinEcran.PhotoPleinEcran.Left:=20;
     FSPhotoPleinEcran.PhotoPleinEcran.Top:=20;
     FSPhotoPleinEcran.PhotoPleinEcran.Width:=FSPhotoPleinEcran.Width-20;
     FSPhotoPleinEcran.PhotoPleinEcran.Height:=FSPhotoPleinEcran.Height-20;
end;

procedure TFSPhotoPleinEcran.BitBtn1Click(Sender: TObject);
begin
     FSPhotoPleinEcran.Close;
end;

procedure TFSPhotoPleinEcran.PhotoPleinEcranDblClick(Sender: TObject);
begin
     FSPhotoPleinEcran.Close;
end;

procedure TFSPhotoPleinEcran.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

procedure TFSPhotoPleinEcran.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
end;

end.
