unit UnitFSAffichage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons;

type
  TFSAffichage = class(TForm)
    PageAffichage: TPageControl;
    Page1: TTabSheet;
    AfficheTexte1: TMemo;
    Page2: TTabSheet;
    AfficheTexte2: TMemo;
    Page3: TTabSheet;
    AfficheTexte3: TMemo;
    BitBtn1: TBitBtn;
    Page4: TTabSheet;
    AfficheTexte4: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSAffichage: TFSAffichage;

implementation

{$R *.dfm}

procedure TFSAffichage.BitBtn1Click(Sender: TObject);
begin
     if(FSAffichage.Page1.Showing=true)then FSAffichage.AfficheTexte1.Lines.Text:='';
     if(FSAffichage.Page2.Showing=true)then FSAffichage.AfficheTexte2.Lines.Text:='';
     if(FSAffichage.Page3.Showing=true)then FSAffichage.AfficheTexte3.Lines.Text:='';
     if(FSAffichage.Page4.Showing=true)then FSAffichage.AfficheTexte4.Lines.Text:='';
end;

procedure TFSAffichage.FormResize(Sender: TObject);
begin
     FSAffichage.PageAffichage.Height:=FSAffichage.Height-52;
     FSAffichage.PageAffichage.Width:=FSAffichage.Width-35;

     FSAffichage.AfficheTexte1.Height:=FSAffichage.PageAffichage.Height-32;
     FSAffichage.AfficheTexte1.Width:=FSAffichage.PageAffichage.Width-8;

     FSAffichage.AfficheTexte2.Height:=FSAffichage.AfficheTexte1.Height;
     FSAffichage.AfficheTexte2.Width:=FSAffichage.AfficheTexte1.Width;

     FSAffichage.AfficheTexte3.Height:=FSAffichage.AfficheTexte1.Height;
     FSAffichage.AfficheTexte3.Width:=FSAffichage.AfficheTexte1.Width;

     FSAffichage.AfficheTexte4.Height:=FSAffichage.AfficheTexte1.Height;
     FSAffichage.AfficheTexte4.Width:=FSAffichage.AfficheTexte1.Width;
end;

end.
