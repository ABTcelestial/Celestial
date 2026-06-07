unit UnitFSServeurClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFSServeurClient = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSServeurClient: TFSServeurClient;

implementation

uses UnitFSServeur, UnitInitialisation, UnitFSClient;

{$R *.dfm}

end.
