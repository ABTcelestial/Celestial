unit UnitFSCompleteFormulesEtat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids;

type
  TFSCompleteFormulesEtat = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label8: TLabel;
    EditPositionEtat: TEdit;
    TableauRubriqueEtat: TStringGrid;
    EditTimerActive: TEdit;
    TableauCompleteFormulesEtat: TStringGrid;
    AfficheCompleteFormulesEtat: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    EditCodeTypeFormuleAfficher: TEdit;
    EditDesignationFormuleAfficher: TEdit;
    TableauTypeFormule: TStringGrid;
    TimerChangeColor: TTimer;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSCompleteFormulesEtat: TFSCompleteFormulesEtat;

implementation

{$R *.dfm}

end.
