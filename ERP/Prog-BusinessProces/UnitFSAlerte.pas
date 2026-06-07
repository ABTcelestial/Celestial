unit UnitFSAlerte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ExtCtrls;

type
  TFSAlerte = class(TForm)
    AfficheTableauStockLimite: TPanel;
    TableauStockLimite: TStringGrid;
    AfficheInformationStockLimite: TPanel;
    AfficheOptionPrintFinanceProjets: TPanel;
    Bevel32: TBevel;
    RadioGroup5: TRadioGroup;
    StaticText2: TStaticText;
    RBOrientationPapier: TComboBox;
    RBAjustement: TCheckBox;
    BitBtn20: TBitBtn;
    procedure BitBtn20Click(Sender: TObject);
    procedure TableauStockLimiteClick(Sender: TObject);
    procedure AfficheOptionPrintFinanceProjetsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSAlerte: TFSAlerte;

implementation

Uses UnitInitialisation, UnitFSMenuPrincipal;

{$R *.dfm}

procedure TFSAlerte.BitBtn20Click(Sender: TObject);
var  R,C:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;  ImprimeTableau:boolean;
begin
     FSAlerte.AfficheOptionPrintFinanceProjets.Height:=31;

     TitreEtat:='Liste stock limite';

     ImprimeTableau:=true;
     GrasARow:='0';
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0,1;3;4';
     RightARow:='';
     RightACol:='5-10';
     OptionsImpression(FSAlerte.TableauStockLimite,'Center',R,1,TitreEtat,FSAlerte.RBAjustement.Checked,FSAlerte.RBOrientationPapier.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,ImprimeTableau,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSAlerte.TableauStockLimiteClick(Sender: TObject);
begin
     FSAlerte.AfficheOptionPrintFinanceProjets.Height:=31;
end;

procedure TFSAlerte.AfficheOptionPrintFinanceProjetsClick(Sender: TObject);
begin
if(FSAlerte.AfficheOptionPrintFinanceProjets.Height=31)
then FSAlerte.AfficheOptionPrintFinanceProjets.Height:=223
else FSAlerte.AfficheOptionPrintFinanceProjets.Height:=31;

end;

procedure TFSAlerte.FormShow(Sender: TObject);
begin
     FSAlerte.AfficheOptionPrintFinanceProjets.Height:=31;
end;

end.
