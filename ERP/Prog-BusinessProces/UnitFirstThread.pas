unit UnitFirstThread;
interface
uses Windows, Dialogs, Classes, SysUtils;

type
  TUnitFirstThread = class(TThread);
  TPersoThread = class(TThread)
  private
    procedure CentralControl;
  public
    constructor Create(CreateSuspended:boolean);
     destructor Destroy; override;
  protected
    procedure Execute; override;
  end;

implementation

Uses UnitInitialisation, UnitFSTraitementDonnees;

constructor TPersoThread.Create(CreateSuspended:boolean);
begin
  inherited Create(CreateSuspended);
  FreeOnTerminate:=false;
  Priority:=tpNormal;
end;

destructor TPersoThread.Destroy;
begin
  //déchargez la mémoire ici si vous avez créé des objets
  inherited;
end;

procedure TPersoThread.CentralControl;
begin
  //écrivez ici ce que doit faire votre thread à un instant T donné
end;

procedure TPersoThread.Execute;
begin
  repeat
    Sleep(500); //en millisecondes
    Synchronize(CentralControl);
  until Terminated;
end;
end.
