unit UnitFSGenerateurTableauColAffiche;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids;

type
  TFSGenerateurTableauColAffiche = class(TForm)
    TableauListeTableau: TStringGrid;
    TableauListeCol: TStringGrid;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSGenerateurTableauColAffiche: TFSGenerateurTableauColAffiche;

implementation

{$R *.dfm}

end.
