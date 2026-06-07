{
 Démonstration d'utilisation de ClientSocket et ServerSocket avec :
 - envoi de commandes
 - envoi de fichiers

 Les composants TClientSocket et TServerSocket sont contenus dans le package "Composants Socket Borland" inclus dans
 ($Delphi)\Bin\dclsocketsXX.bpl (non installé par défaut)

 Les données reçues par chaque socket sont analysées et traitées avec délimiteur.
 L'intérêt de cette démonstration tient essentiellement dans le traitement des données reçues.
 La méthode de réception est exposée en fin d'unité.

 Testé sous Delphi 7 et XE.

 Columbo pour phidels.com

 27/08/2012
}
unit UnitFSSocket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ScktComp, ComCtrls, ShellAPI, Math;

type
  TArrayOfChar = array of Ansichar;

  TIntegerObject = class(TObject)
    SocketHandle: integer;
  end;

  TSocketState=(ssText, ssFile);

    TSocketData = class(TObject)
    Buffer: array of TArrayOfChar;
    State: TSocketState;
    File_Size: cardinal;
    File_Name: string;
    File_Stream: TFileStream;
  public
    constructor Create;
    destructor Destroy; override;
  end;

  TFSSocket = class(TForm)
    OpenDialog1: TOpenDialog;
    ClientSocket: TClientSocket;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    Label5: TLabel;
    LogClient: TMemo;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    BoutonServeur_Etat: TButton;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    EditServeur_EnvoyerCommande: TEdit;
    BoutonServeur_EnvoyerCommande: TButton;
    BoutonServeur_Fichier: TButton;
    EditServeur_Fichier: TEdit;
    BoutonServeur_FichierSelection: TButton;
    ListeClients: TListBox;
    Panel1: TPanel;
    Label2: TLabel;
    LogServeur: TMemo;
    BoutonServeur_DeconnecterClients: TButton;
    StatusBarServeur: TStatusBar;
    StatusBarClient: TStatusBar;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    BoutonClient_Client: TButton;
    EditClient_Fichier: TEdit;
    BoutonClient_Fichier: TButton;
    EditClient_MotClient: TEdit;
    BoutonClient_Inverser: TButton;
    EditClient_MotServeur: TEdit;
    BoutonClient_FichierSelection: TButton;
    NouveauClient: TButton;
    ServerSocket: TServerSocket;
    EditClient_AdresseServeur: TEdit;
    Label6: TLabel;
    EditHandle: TEdit;
    procedure BoutonServeur_EtatClick(Sender: TObject);
    procedure BoutonClient_ClientClick(Sender: TObject);
    procedure BoutonServeur_DeconnecterClientsClick(Sender: TObject);
    procedure BoutonServeur_EnvoyerCommandeClick(Sender: TObject);
    procedure BoutonClient_FichierClick(Sender: TObject);
    procedure BoutonClient_InverserClick(Sender: TObject);
    procedure BoutonServeur_FichierClick(Sender: TObject);
    procedure BoutonServeur_FichierSelectionClick(Sender: TObject);
    procedure ClientSocketConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientError(Sender: TObject;
      Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure ClientSocketError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ServerSocketClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure ListeClientsClick(Sender: TObject);
    procedure NouveauClientClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
  end;


const EOL: AnsiString=#13#10; // Marqueur de fin de ligne
      AUTOCONNECT='/c';

      procedure AjouterLog(Log: TMemo ; Texte: string);
      function MessageErreurSocket(ErrorEvent: TErrorEvent; Var ErrorCode: Integer):String;
      procedure Buffer_Process(Socket: TCustomWinSocket);
      function Buffer_Command(Socket: TCustomWinSocket ; Command: AnsiString): bool;
      function Buffer_ArgCount(Socket: TCustomWinSocket ; ArgumentCount: integer): bool;
      procedure Buffer_Clear(Socket: TCustomWinSocket ; LinesCount: integer);
      function Buffer_Line(Socket : TCustomWinSocket ; Line: integer): string;
      
var FSSocket: TFSSocket;

implementation

{$R *.dfm}

/////////////////////////////////////////////////////////////////////////////////
////////////////////////////////  TSocketData ///////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////

// Objet TSocketData contenu dans chaque Socket.Data
constructor TSocketData.Create;
begin
     inherited Create;
     Setlength(Buffer, 0);
     State:=ssText;
     File_Stream:=nil;
     File_Name:='';
     File_Size:=0;
end;

destructor TSocketData.Destroy;
var i: integer;
begin
     for i:=0 to length(Buffer)-1 do Finalize(Buffer[i]);
     Finalize(Buffer);
     if File_Stream<>nil then
     begin
          File_Stream.Free;
          File_Stream:=nil;
     end;
     inherited Destroy;
end;

/////////////////////////////////////////////////////////////////////////////////
////////////////////////////////  Fonctions /////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////

function Inverser(Chaine: string): string;
var i: integer;
begin result:=''; for i:=length(Chaine) downto 1 do result:=result+Chaine[i]; end;

procedure AjouterLog(Log: TMemo ; Texte: string);
begin
     Log.Lines.Add(FormatDateTime('(hh:nn:ss:zzzz) ', Now)+Texte);
end;

//  Affichage en clair des erreurs socket
//  merci à djtexas & nono40
function MessageErreurSocket(ErrorEvent: TErrorEvent; Var ErrorCode: Integer):String;
var ErrorMsg: String;
begin
     // définition du message d'erreur en fonction du code d'erreur
     case ErrorCode Of
         10004 : ErrorMsg := 'Interrupted Function call.';
         10013 : ErrorMsg := 'Permission Refusée.';
         10014 : ErrorMsg := 'Mauvaise adresse.';
         10022 : ErrorMsg := 'Arguments Invalides.';
         10024 : ErrorMsg := 'Trop de fichiers ouverts.';
         10035 : ErrorMsg := 'Resource temporarily unavailable.';
         10036 : ErrorMsg := 'Operation en cours.';
         10037 : ErrorMsg := 'Operation déjà en cours.';
         10038 : ErrorMsg := 'Socket operation On non-socket.';
         10039 : ErrorMsg := 'Destination address required.';
         10040 : ErrorMsg := 'Message trop long.';
         10041 : ErrorMsg := 'Protocol wrong Type For socket.';
         10042 : ErrorMsg := 'Bad protocol option.';
         10043 : ErrorMsg := 'Protocol Not supported.';
         10044 : ErrorMsg := 'Socket Type Not supported.';
         10045 : ErrorMsg := 'Operation Not supported.';
         10046 : ErrorMsg := 'Protocol family Not supported.';
         10047 : ErrorMsg := 'Address family Not supported by protocol family.';
         10048 : ErrorMsg := 'Address already In use.';
         10049 : ErrorMsg := 'Cannot assign requested address.';
         10050 : ErrorMsg := 'Network Is down.';
         10051 : ErrorMsg := 'Network Is unreachable.';
         10052 : ErrorMsg := 'Network dropped connection On reset.';
         10053 : ErrorMsg := 'Software caused connection abort.';
         10054 : ErrorMsg := 'Connection reset by peer.';
         10055 : ErrorMsg := 'No buffer space available.';
         10056 : ErrorMsg := 'Socket Is already connected.';
         10057 : ErrorMsg := 'Socket Is Not connected.';
         10058 : ErrorMsg := 'Cannot send after socket shutdown.';
         10060 : ErrorMsg := 'Connection timed Out.';
         10061 : ErrorMsg := 'Connection refused.';
         10064 : ErrorMsg := 'Host Is down.';
         10065 : ErrorMsg := 'No route To host.';
         10067 : ErrorMsg := 'Too many processes.';
         10091 : ErrorMsg := 'Network subsystem Is unavailable.';
         10092 : ErrorMsg := 'WINSOCK.DLL version Out Of range.';
         10093 : ErrorMsg := 'Successful WSAStartup Not yet performed.';
         10094 : ErrorMsg := 'Graceful shutdown In progress.';
         11001 : ErrorMsg := 'Host Not found.';
         11002 : ErrorMsg := 'Non-authoritative host Not found.';
         11003 : ErrorMsg := 'This Is a non-recoverable error.';
         11004 : ErrorMsg := 'Valid name, no data Record Of requested Type.';
     else
         // erreur inconnue
         ErrorMsg := 'Unknown socket error.';
     end;
     // mise en forme de la signification de l'erreur
     ErrorMsg := 'Socket Error n°' + IntToStr(ErrorCode) + ' : ' + ErrorMsg;
     // l'erreur est traitée
     ErrorCode := 0;
     // définition du type d'erreur
     case ErrorEvent Of
         eeSend       : ErrorMsg := 'Writing '       + ErrorMsg;
         eeReceive    : ErrorMsg := 'Reading '       + ErrorMsg;
         eeConnect    : ErrorMsg := 'Connecting '    + ErrorMsg;
         eeDisconnect : ErrorMsg := 'Disconnecting ' + ErrorMsg;
         eeAccept     : ErrorMsg := 'Accepting '     + ErrorMsg;
     else
         // erreur inconnue
         ErrorMsg := 'Unknown ' + ErrorMsg;
     end;
     Result:=ErrorMsg;
end;

/////////////////////////////////////////////////////////////////////////////////
//////////////////////////////// Application ////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////

// Connexion automatique au démarrage selon le paramètre de la ligne de commande
procedure TFSSocket.FormCreate(Sender: TObject);
begin if ParamStr(1)=AUTOCONNECT then BoutonClient_ClientClick(nil); end;

// Application : Ouverture d'une autre instance pour créer nouveau client
procedure TFSSocket.NouveauClientClick(Sender: TObject);
begin
     ShellExecute(Handle, 'open', PChar(ParamStr(0)), AUTOCONNECT, nil, SW_SHOWNORMAL);
     FSSocket.EditHandle.Text:=inttostr(Handle);
end;

// Application : Sélection d'un fichier
procedure TFSSocket.BoutonServeur_FichierSelectionClick(Sender: TObject);
begin
     if OpenDialog1.Execute then
          if Sender=BoutonServeur_FichierSelection then EditServeur_Fichier.Text:=OpenDialog1.FileName
                                                   else EditClient_Fichier.Text:=OpenDialog1.FileName;
end;

// Application : Mise à jour des composants selon la sélection des clients
procedure TFSSocket.ListeClientsClick(Sender: TObject);
var Trouve: bool;
    i: integer;
begin
     i:=0; Trouve:=false; while (i<ListeClients.Count) and not Trouve do if ListeClients.Selected[i] then Trouve:=true else Inc(i);
     BoutonServeur_EnvoyerCommande.Enabled:=Trouve;
     BoutonServeur_Fichier.Enabled:=Trouve;
     BoutonServeur_DeconnecterClients.Enabled:=Trouve;
end;

/////////////////////////////////////////////////////////////////////////////////
//////////////////////////////// Serveur ////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////

// Serveur : Démarrage / Arrêt
procedure TFSSocket.BoutonServeur_EtatClick(Sender: TObject);
begin
     (Sender as TButton).Enabled:=false;
     try
        ServerSocket.Active:=not ServerSocket.Active;
     except
       on E: Exception do AjouterLog(LogServeur, E.Message);
     end;
     (Sender as TButton).Enabled:=true;
     ListeClients.Clear;
     ListeClientsClick(nil);
     if ServerSocket.Active then StatusBarServeur.SimpleText:='Serveur actif' else StatusBarServeur.SimpleText:='Serveur stoppé';
     AjouterLog(LogServeur, StatusBarServeur.SimpleText);
end;

// Serveur : Déconnexion des clients sélectionnés
procedure TFSSocket.BoutonServeur_DeconnecterClientsClick(Sender: TObject);
var i, j: integer;
    Trouve: bool;
begin
     if ServerSocket.Active then
     begin
          i:=0;
          while (i<ListeClients.Count) do
          begin
               if ListeClients.Selected[i] then
               begin
                    Trouve:=false;
                    for j:=0 to ServerSocket.Socket.ActiveConnections-1 do
                      if ServerSocket.Socket.Connections[j].SocketHandle=TIntegerObject(ListeClients.Items.Objects[i]).SocketHandle then
                      begin
                           Trouve:=true;
                           ServerSocket.Socket.Connections[j].Close;
                      end;
                    if not Trouve then Inc(i);
               end else Inc(i);
          end;
     end;
end;

// Serveur : Envoi d'un texte aux clients sélectionnés
procedure TFSSocket.BoutonServeur_EnvoyerCommandeClick(Sender: TObject);
var i, j: integer;
begin
     if ServerSocket.Active then
       for i:=0 to ListeClients.Count-1 do
         if ListeClients.Selected[i] then
            for j:=0 to ServerSocket.Socket.ActiveConnections-1 do
              if ServerSocket.Socket.Connections[j].SocketHandle=TIntegerObject(ListeClients.Items.Objects[i]).SocketHandle then
              begin
                   ServerSocket.Socket.Connections[j].SendText('TEX'+EOL);
                   ServerSocket.Socket.Connections[j].SendText(AnsiString(EditServeur_EnvoyerCommande.Text)+EOL);
                   AjouterLog(LogServeur, 'Envoi au client '+inttostr(ServerSocket.Socket.Connections[j].SocketHandle)+' du texte : '+EditServeur_EnvoyerCommande.Text);
              end;
end;

// Serveur : Envoi d'un fichier du serveur à tous les clients sélectionnés
procedure TFSSocket.BoutonServeur_FichierClick(Sender: TObject);
var i, j: integer;
    FS: TFileStream;
begin
     if ServerSocket.Active and FileExists(EditServeur_Fichier.Text) then
       for i:=0 to ListeClients.Count-1 do
         if ListeClients.Selected[i] then
            for j:=0 to ServerSocket.Socket.ActiveConnections-1 do
              if ServerSocket.Socket.Connections[j].SocketHandle=TIntegerObject(ListeClients.Items.Objects[i]).SocketHandle then
              begin
                   FS:=TFileStream.Create(EditServeur_Fichier.Text, fmOpenRead or fmShareDenyNone);
                   ServerSocket.Socket.Connections[j].SendText('FIL'+EOL+AnsiString(inttostr(FS.Size))+EOL+AnsiString(ExtractFileName(EditServeur_Fichier.Text))+EOL);
                   AjouterLog(LogServeur, 'Envoi au client '+inttostr(ServerSocket.Socket.Connections[j].SocketHandle)+' du fichier '+ExtractFileName(EditServeur_Fichier.Text)+' ('+inttostr(FS.Size)+' octets)');
                   FS.Position:=0;
                   ServerSocket.Socket.Connections[j].SendStream(FS);
              end;
end;

// Serveur : connexion d'un client
procedure TFSSocket.ServerSocketClientConnect(Sender: TObject; Socket: TCustomWinSocket);
var ClientData: TSocketData;
    IntegerObject: TIntegerObject;
begin
     ClientData:=TSocketData.Create;   
     Socket.Data:=ClientData;
     IntegerObject:=TIntegerObject.Create;
     IntegerObject.SocketHandle:=Socket.SocketHandle;
     ListeClients.AddItem('Handle '+inttostr(Socket.SocketHandle), IntegerObject);
     if ListeClients.Count=1 then
     begin
          ListeClients.Selected[0]:=true;
          ListeClientsClick(nil);
     end;
     AjouterLog(LogServeur, 'Connexion du client : '+inttostr(Socket.SocketHandle));
end;

// Serveur : déconnexion d'un client
procedure TFSSocket.ServerSocketClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
var i: integer;
begin
     i:=0; while (i<ListeClients.Count) do if TIntegerObject(ListeClients.Items.Objects[i]).SocketHandle=Socket.SocketHandle then ListeClients.Items.Delete(i) else Inc(i);
     TSocketData(Socket.Data).Free;
     Socket.Data:=nil;
     ListeClientsClick(nil);
     AjouterLog(LogServeur, 'Déconnexion du client : '+inttostr(Socket.SocketHandle));
end;

// Serveur : erreur
procedure TFSSocket.ServerSocketClientError(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
     AjouterLog(LogServeur, MessageErreurSocket(ErrorEvent, ErrorCode));
end;

/////////////////////////////////////////////////////////////////////////////////
//////////////////////////////// Client /////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////

// Client : Envoi d'une commande d'inversion de chaîne au serveur
procedure TFSSocket.BoutonClient_InverserClick(Sender: TObject);
begin
     if ClientSocket.Active then
     begin
          ClientSocket.Socket.SendText('INV'+EOL);
          ClientSocket.Socket.SendText(AnsiString(EditClient_MotClient.Text)+EOL);
     end;
end;

// Client : connexion
procedure TFSSocket.ClientSocketConnect(Sender: TObject; Socket: TCustomWinSocket);
var ClientData: TSocketData;
begin
     StatusBarClient.SimpleText:='Client connecté';
     AjouterLog(LogClient, StatusBarClient.SimpleText);
     BoutonClient_Inverser.Enabled:=true; BoutonClient_Fichier.Enabled:=true; EditClient_AdresseServeur.Enabled:=false;
     ClientData:=TSocketData.Create;
     Socket.Data:=ClientData;
end;

// Client : déconnexion
procedure TFSSocket.ClientSocketDisconnect(Sender: TObject; Socket: TCustomWinSocket);
begin
     StatusBarClient.SimpleText:='Client déconnecté';
     AjouterLog(LogClient, StatusBarClient.SimpleText);
     BoutonClient_Inverser.Enabled:=false; BoutonClient_Fichier.Enabled:=false; EditClient_AdresseServeur.Enabled:=true;
     TSocketData(Socket.Data).Free;
     Socket.Data:=nil;
end;

// Client : erreur
procedure TFSSocket.ClientSocketError(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin AjouterLog(LogClient, MessageErreurSocket(ErrorEvent, ErrorCode)); end;

// Client : Connexion / Déconnexion
procedure TFSSocket.BoutonClient_ClientClick(Sender: TObject);
begin
     BoutonClient_Client.Enabled:=false;
     if not ClientSocket.Active then ClientSocket.Host:=EditClient_AdresseServeur.Text;
     ClientSocket.Active:=not ClientSocket.Active;
     BoutonClient_Client.Enabled:=true;
end;

// Client : envoi d'un fichier au serveur
procedure TFSSocket.BoutonClient_FichierClick(Sender: TObject);
var FS: TFileStream;
    Taille: cardinal;
begin
     if ClientSocket.Active and FileExists(EditClient_Fichier.Text) then
     begin
          FS:=TFileStream.Create(EditClient_Fichier.Text, fmOpenRead or fmShareDenyNone);
          Taille:=FS.Size;
          ClientSocket.Socket.SendText('FIL'+EOL);
          ClientSocket.Socket.SendText(AnsiString(inttostr(Taille))+EOL);
          ClientSocket.Socket.SendText(AnsiString(ExtractFileName(EditClient_Fichier.Text))+EOL);
          Taille:=FS.Size;
          FS.Position:=0;
          ClientSocket.Socket.SendStream(FS);
          AjouterLog(LogClient, 'Envoi au serveur du fichier '+ExtractFileName(EditClient_Fichier.Text)+' ('+inttostr(Taille)+' octets)');
     end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////// Procédures d'analyse du buffer reçu //////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////

// Renvoit la ligne Line du buffer du Socket
function Buffer_Line(Socket : TCustomWinSocket ; Line: integer): string;
begin
     with TSocketData(Socket.Data) do
     if Line<length(Buffer)-1 then SetString(Result, PAnsiChar(Buffer[Line]), length(Buffer[Line])-length(EOL))
                              else result:='';
end;

// Teste si le buffer du Socket contient la commande Command
function Buffer_Command(Socket: TCustomWinSocket ; Command: AnsiString): bool;
begin with TSocketData(Socket.Data) do result:=(length(Buffer)>1) and (Ansistring(Buffer[0])=Command+EOL); end;

// Teste si le buffer du Socket contient au moins ArgumentCount arguments
function Buffer_ArgCount(Socket: TCustomWinSocket ; ArgumentCount: integer): bool;
begin with TSocketData(Socket.Data) do result:=length(Buffer)>ArgumentCount+1; end;

// Supprime les LinesCount première lignes du buffer du Socket
procedure Buffer_Clear(Socket: TCustomWinSocket ; LinesCount: integer);
var i: integer;
begin
     with TSocketData(Socket.Data) do
     if LinesCount>0 then
     begin
          for i:=LinesCount to length(Buffer)-1 do Buffer[i-LinesCount]:=Buffer[i];
          if length(Buffer)>=LinesCount then
          begin
               for i:=length(Buffer)-LinesCount to length(Buffer)-1 do Finalize(Buffer[i]);
               Setlength(Buffer, length(Buffer)-LinesCount);
          end
          else
          begin
               for i:=0 to length(Buffer)-1 do Finalize(Buffer[i]);
               Setlength(Buffer, 0);
          end;
          if length(Buffer)=0 then
          begin
               Setlength(Buffer, 1);
               Setlength(Buffer[0], 0);
          end;
     end;
end;

// Traitement des données reçues
procedure Buffer_Process(Socket: TCustomWinSocket);
var Buffer_Temp: TArrayOfChar;
    i, Index, Size: integer;
begin
     with TSocketData(Socket.Data) do
     begin
          if length(Buffer)=0 then
          begin
               Setlength(Buffer, 1);
               Setlength(Buffer[0], 0);
          end;
          if Socket.ReceiveLength>0 then
          begin
               case TSocketData(Socket.Data).State of
               ssText:
               begin
                    Setlength(Buffer_Temp, Socket.ReceiveLength);
                    Socket.ReceiveBuf(Buffer_Temp[0], Socket.Receivelength);
                    with TSocketData(Socket.Data) do
                    begin
                         Index:=length(Buffer)-1;
                         Size:=length(Buffer[Index]);
                         for i:=0 to length(Buffer_Temp)-1 do
                         begin
                              Inc(Size);
                              Setlength(Buffer[Index], Size);
                              Buffer[Index][Size-1]:=Buffer_Temp[i];
                              if (Size>=length(EOL)) and (Buffer[Index][Size-length(EOL)]+Buffer[Index][Size-1]=EOL) then
                              begin
                                   Inc(Index); Size:=0;
                                   Setlength(Buffer, Index+1);
                                   Setlength(Buffer[Index], 0);
                              end;
                         end;
                    end;
                    Finalize(Buffer_Temp);
               end;
               ssFile:
               begin
                    Size:=Min(File_Size-File_Stream.Size, Socket.ReceiveLength);
                    Setlength(Buffer[0], Size);
                    Socket.ReceiveBuf(Buffer[0][0], Size);
               end;
               end;
          end;
     end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////// Procédure commune client & serveur /////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////

// Client & Serveur : réception des données

// Problématique :
// Lorsqu'un socket envoit les chaînes "INV" puis "Chaîne à inverser", le socket de réception peut obtenir :
// - "INV" puis "Chaîne à inverser" (réception en 2 blocs)
// - "INVChaîne à inverser" (réception en 1 bloc)
// - "IN" et "VChaîne à inverser" (réception en 2 bloc)
// Afin de segmenter les réponses correctement, on utilisera dans cet exemple un marqueur de fin de chaîne : ici #13#10 (EOL).
// Chaque chaîne envoyée devra se terminer par le marqueur, qui indiquera le passage à la ligne suivante.
// Ainsi, pour l'exemple donné, on enverra les deux chaînes "INV"+EOL puis "Chaîne à inverser"+EOL.

// La procédure suivante traite les données réceptionnées :
// - On segmente le buffer de réception en une série de lignes (le passage d'une ligne à l'autre s'effectue lorsque le buffer contient EOL)
// - On regarde si les lignes reçues contiennent une commande connue
// - Si la commande est connue, on regarde s'il y a au moins autant de lignes que d'arguments attendus
// - Si les conditions sont satisfaites, on traite la commande, autrement, on attend une nouvelle arrivée dans le buffer
//
// Dans cett démonstration, le socket peut avoir deux états de réception :
// - ssText : le socket attend une commande pour la traiter. Tout se passe comme indiqué ci-avant.
// - ssFile : le socket attend des données d'un fichier à écrire sur disque
//            Le socket ne peut être entré dans ce mode que si la taille et le nom du fichier à écrire ont été traités
//            dans le mode ssText au préalable.
//            Dans ce mode, le contenu du buffer de réception est envoyé directement (= sans traitement) dans le fichier à écrire
//            jusqu'à ce que la taille du fichier atteigne la taille indiquée avant l'envoi.
//            Une fois le fichier reçu, le Socket bascule dans le mode ssText en attente d'une nouvelle commande.
//            En basculant dans le mode ssFile, le socket assure ainsi un traitement direct beaucoup plus rapide
//            que si le buffer devait être analysé caractère après caractère comme dans le mode ssText.

procedure TFSSocket.ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
var Log: TMemo;
    Chaine: string;
    Pourcent, i, k: integer;
    Erreur, Analyze_Again, NomFichier_Libre: bool;
begin
     Erreur:=false;
     if Socket.ReceiveLength=0 then exit;
     if Sender=ClientSocket then Log:=LogClient else Log:=LogServeur;
     Buffer_Process(Socket);
     with TSocketData(Socket.Data) do
     repeat
          Analyze_Again:=false;
          if TSocketData(Socket.Data).State=ssText then
          begin
               if Buffer_Command(Socket, 'INV') then
               begin
                    if Buffer_ArgCount(Socket, 1) then
                    begin
                         Chaine:=Buffer_Line(Socket, 1);
                         if Sender=ClientSocket then
                         begin
                              EditClient_MotServeur.Text:=Chaine;
                              AjouterLog(Log, 'Réception chaîne d''inversion : '+Chaine);
                         end
                         else
                         begin
                              Socket.SendText('INV'+EOL);
                              Socket.SendText(AnsiString(Chaine)+EOL);
                              AjouterLog(LogServeur, 'Renvoi au client '+inttostr(Socket.SocketHandle)+' de la chaîne inversée : '+Chaine);
                         end;
                         Buffer_Clear(Socket, 2);
                    end;
               end
               else
               if Buffer_Command(Socket, 'FIL') then
               begin
                    if Buffer_ArgCount(Socket, 2) then
                    begin
                         File_Size:=StrToIntDef(Buffer_Line(Socket, 1), -1);
                         if File_Size>0 then
                         begin
                              File_Name:=Buffer_Line(Socket, 2);
                              if File_Name<>'' then
                              begin
                                   Chaine:=ExtractFilePath(ParamStr(0))+File_Name; i:=1; NomFichier_Libre:=false;
                                   repeat
                                         DeleteFile(Chaine);
                                         Inc(i);
                                         if FileExists(Chaine) then Chaine:=ExtractFilePath(ParamStr(0))+ChangeFileExt(File_Name, ' ('+inttostr(i)+')'+ExtractFileExt(File_Name))
                                                               else NomFichier_Libre:=true;
                                   until NomFichier_Libre;
                                   try
                                      File_Stream:=TFileStream.Create(Chaine, fmCreate);
                                      State:=ssFile;
                                      AjouterLog(Log, 'Réception fichier '+ExtractFileName(Chaine)+' ('+inttostr(File_Size)+' octets)...');
                                   except
                                      if Assigned(File_Stream) then
                                      begin
                                           File_Stream.Free;
                                           File_Stream:=nil;
                                      end;
                                      State:=ssText;
                                      AjouterLog(Log, 'Impossible de créer le fichier '+ExtractFileName(Chaine));
                                      Erreur:=true;
                                   end;
                              end else AjouterLog(Log, 'Paramètre incorrect');
                         end else AjouterLog(Log, 'Paramètre incorrect');
                         Buffer_Clear(Socket, 3);
                    end;
               end
               else
               if Buffer_Command(Socket, 'TEX') then
               begin
                    if Buffer_ArgCount(Socket, 1) then
                    begin
                         AjouterLog(Log, 'Réception chaîne : '+Buffer_Line(Socket,1));
                         Buffer_Clear(Socket, 2);
                    end;
               end
               else
               if length(Buffer)>1 then
               begin
                    AjouterLog(Log, 'Commande inconnue');
                    Erreur:=true;
               end;
          end;

          if TSocketData(Socket.Data).State=ssFile then
          begin
               i:=0;
               Pourcent:=Trunc(File_Stream.Size/File_Size*100);
               while (File_Stream.Size<File_Size) and (i<length(Buffer)) do
               begin
                    k:=File_Size-File_Stream.Size;
                    if length(Buffer[i])<=k then
                    begin
                         File_Stream.Write(Buffer[i][0], length(Buffer[i]));
                         Inc(i);
                    end
                    else
                    begin
                         File_Stream.Write(Buffer[i][0], k);
                         Move(Buffer[i][k+1], Buffer[i][0], length(Buffer[i])-k);
                    end;
               end;
               Buffer_Clear(Socket, i);
               if File_Stream.Size = File_Size then
               begin
                    File_Stream.Free;
                    File_Stream:=nil;
                    State:=ssText;
                    AjouterLog(Log, 'Réception fichier terminée');
                    Analyze_Again:=true; // Indique qu'il faut procéder à l'analyse des lignes restantes
               end
               else
               if (Pourcent<>Trunc(File_Stream.Size/File_Size*100)) then
                   AjouterLog(Log, 'Réception fichier en cours ... ('+inttostr(Trunc(File_Stream.Size/File_Size*100))+'%)');
         end;
     until not Analyze_Again;

     // En cas d'erreur, on vide les tampons de lecture
     if Erreur then
     begin
          AjouterLog(Log, 'Vidage du tampon');
          Buffer_Clear(Socket, length(TSocketData(Socket.Data).Buffer));
          while Socket.ReceiveLength>0 do Socket.ReceiveText;
     end;
end;

end.
