program TextTrayTest;

uses
  Forms,
  WinProcs,
  TtMain in 'TtMain.pas' {MainForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'MyIP';
   Application.HelpFile := '';
  Application.ShowMainForm:=False;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
