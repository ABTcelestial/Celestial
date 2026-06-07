unit TtMain;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms, Dialogs, StdCtrls,
  ExtCtrls, ComCtrls, Menus, Graphics, CoolTrayIcon, TextTrayIcon, WinSock,
  Messages, IniFiles;


const wm_AppelMessage=wm_user+1;


type
  TMainForm = class(TForm)
    Button7: TButton;
    TextTrayIcon1: TTextTrayIcon;
    TextTrayIcon2: TTextTrayIcon;
    TextTrayIcon3: TTextTrayIcon;
    TextTrayIcon4: TTextTrayIcon;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    exit1: TMenuItem;
    sens1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure TextTrayIcon1MouseUp(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cachemoi(Sender: TObject);
    procedure fini (Sender: TObject);
    procedure sens1Click(Sender: TObject);
    
  private
    TrayCounter: Integer;
    LoopNumbers: Boolean;
    BgIcon1,BgIcon2,BgIcon3,BgIcon4: TIcon;
//    procedure WMAppelMessage(var msg : TMessage); message wm_AppelMessage;
  end;

var
  MainForm: TMainForm;
  fichierini, sens : shortstring;

implementation

{$R *.DFM}

procedure TMainForm.FormCreate(Sender: TObject);
Var
Ini: TIniFile;
begin
sens := 'true';
fichierini := 'c:\Myip.ini';
Ini := TIniFile.Create( fichierini );
sens := ini.ReadString('sens','sens','true');
Ini.Free;


  BgIcon4 := TIcon.Create;
  TextTrayIcon4.BackgroundIcon := nil;

  BgIcon3 := TIcon.Create;
  TextTrayIcon3.BackgroundIcon := nil;

  BgIcon2 := TIcon.Create;
  TextTrayIcon2.BackgroundIcon := nil;

  BgIcon1 := TIcon.Create;
  TextTrayIcon1.BackgroundIcon := nil;

end;


procedure TMainForm.Button7Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.TextTrayIcon1MouseUp(Sender: TObject);
begin
PopupMenu1.Destroy;
end;


procedure TMainForm.Timer1Timer(Sender: TObject);
var
  wVersionRequested : WORD;
  wsaData : TWSAData;
  s : array[0..128] of char;
  p : PHostEnt;
  p2 : pchar;
  OutPut :array[0..100] of char;
  IP : array[0..3] of shortstring;
  cc,adresseIP : shortstring;
  i,IPnum : integer;

begin
 {Démarrer WinSock}
     wVersionRequested := MAKEWORD(1, 1);
     WSAStartup(wVersionRequested, wsaData);
{Récupérer l'adresse Ip}
     GetHostName(@s, 128);
     p := GetHostByName(@s);
     p2 := iNet_ntoa(PInAddr(p^.h_addr_list^)^);
     StrPCopy(OutPut,Format('%s',[p2]));
     WSACleanup;

    IP[3]:='';
    IP[2]:='';
    IP[1]:='';
    IP[0]:='';

     IPnum:=0;
     for i:=1 to 15 do
     begin
     cc := copy(output,i,1);
     if cc<>'.' then
         IP[IPnum]:=IP[IPnum]+cc
       else
         IPnum:=IPnum+1;
     end;

     if sens='true' then
     begin
       TextTrayIcon1.Text := IP[3];
       TextTrayIcon2.Text := IP[2];
       TextTrayIcon3.Text := IP[1];
       TextTrayIcon4.Text := IP[0];
     end
     else
     begin
       TextTrayIcon1.Text := IP[0];
       TextTrayIcon2.Text := IP[1];
       TextTrayIcon3.Text := IP[2];
       TextTrayIcon4.Text := IP[3];
     end;
end;

procedure TMainForm.cachemoi(Sender: TObject);
begin
ShowWindow(Application.Handle, SW_Hide);  // ceci enlève l'affichage de la tache
end;

procedure TMainForm.fini (Sender: TObject);
begin
  BgIcon1.Free;
  BgIcon2.Free;
  BgIcon3.Free;
  BgIcon4.Free;

  close;
end;
procedure TMainForm.sens1Click(Sender: TObject);
Var
Ini: TIniFile;
begin
if sens= 'true' then
  begin
   sens:= 'false';
   sens1.Caption := '<- sens';
  end
  else
  begin
    sens:= 'true';
    sens1.Caption := '-> sens';
  end;

Ini := TIniFile.Create( fichierini );
ini.WriteString('sens','sens',sens);
Ini.Free;

end;

end.

