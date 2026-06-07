unit UnitFSServeur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScktComp, ActnList, ExtCtrls;

type
  TFSServeur = class(TForm)
    Memo1: TMemo;
    Edit2: TEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    SocketServeur: TServerSocket;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    ActionList1: TActionList;
    Bevel1: TBevel;
    EditAdresseIP: TEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure SocketServeurClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure FormCreate(Sender: TObject);
    procedure SocketServeurClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure SocketServeurClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure SocketServeurClientError(Sender: TObject;
      Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure SocketServeurClientWrite(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSServeur: TFSServeur;

implementation

{$R *.dfm}

procedure TFSServeur.Button1Click(Sender: TObject);
Var
i:integer;
begin
Memo1.Lines.Add(' '+Edit2.text+' dit : '+Edit1.text );
if (SocketServeur.Socket.ActiveConnections > 0) then
begin
for i := 0 to SocketServeur.Socket.ActiveConnections-1 do
begin
SocketServeur.Socket.Connections[i].sendtext(' '+Edit2.text+' dit : '+Edit1.text);
Edit1.Clear;
end;
end;
end;


procedure TFSServeur.SocketServeurClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
Memo1.lines.add(Socket.ReceiveText);
end;

procedure TFSServeur.FormCreate(Sender: TObject);
begin
FSServeur.caption:='chat (server )';
Memo1.Clear;
Edit1.Clear;
end;

procedure TFSServeur.SocketServeurClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
FSServeur.Caption:='chat(server )';
end;

procedure TFSServeur.SocketServeurClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
FSServeur.Caption:='chat(server)Déconnecter';
end;

procedure TFSServeur.SocketServeurClientError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
FSServeur.Caption:='chat(server )Erreur Connection';
end;

procedure TFSServeur.SocketServeurClientWrite(Sender: TObject;
  Socket: TCustomWinSocket);
begin
 Memo1.Lines.add(Socket.ReceiveText);
end;

procedure TFSServeur.Button2Click(Sender: TObject);
begin
SocketServeur.Active:=true;
button3.Enabled:=true;
button2.Enabled:=false;
end;

procedure TFSServeur.Button3Click(Sender: TObject);
begin
button3.Enabled:=false;
SocketServeur.Active:=false;
button2.Enabled:=true;
end;

end.
