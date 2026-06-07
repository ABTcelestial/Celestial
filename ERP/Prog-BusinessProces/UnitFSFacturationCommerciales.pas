unit UnitFSFacturationCommerciales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, StdCtrls, Mask, ComCtrls;

type
  TFSFacturationCommerciales = class(TForm)
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    Panel3: TPanel;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSFacturationCommerciales: TFSFacturationCommerciales;

implementation

{$R *.dfm}

end.
