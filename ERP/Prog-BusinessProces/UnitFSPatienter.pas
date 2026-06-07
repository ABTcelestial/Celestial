unit UnitFSPatienter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TFSPatienter = class(TForm)
    AffichePatientez: TPanel;
    Panel1: TPanel;
    RBPossibleAnnuler: TCheckBox;
    RBChangeNomSiCollision: TCheckBox;
    RBSansConfirmation: TCheckBox;
    RBSansProgression: TCheckBox;
    EditAdresseSource: TEdit;
    EditAdresseCible: TEdit;
    Panel2: TPanel;
    ProgressCDL: TProgressBar;
    Pourcentage: TLabel;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSPatienter: TFSPatienter;
  
implementation

uses UnitInitialisation;

{$R *.dfm}

end.
