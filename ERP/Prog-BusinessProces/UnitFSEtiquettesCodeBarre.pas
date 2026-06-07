unit UnitFSEtiquettesCodeBarre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, printers, Clipbrd, Grids, ComCtrls, Menus, FonctionsChaine,
  SvgEditIni, Buttons;

type
  TFSEtiquettesCodeBarre = class(TForm)
    AfficheSupport: TPanel;
    Button2: TButton;
    Button3: TButton;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button5: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit5: TEdit;
    UpDown2: TUpDown;
    UpDown3: TUpDown;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown5: TUpDown;
    UpDown6: TUpDown;
    Edit3: TEdit;
    Edit6: TEdit;
    UpDown7: TUpDown;
    UpDown8: TUpDown;
    Edit10: TEdit;
    Edit11: TEdit;
    UpDown9: TUpDown;
    UpDown10: TUpDown;
    Edit9: TEdit;
    UpDown4: TUpDown;
    Edit15: TEdit;
    UpDown12: TUpDown;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label13: TLabel;
    Edit4: TEdit;
    Edit12: TEdit;
    Button6: TButton;
    Button4: TButton;
    Button7: TButton;
    GroupBox3: TGroupBox;
    ImageCodebarre: TImage;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Label14: TLabel;
    Edit13: TEdit;
    UpDown1: TUpDown;
    Edit14: TEdit;
    UpDown11: TUpDown;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Ouvrir1: TMenuItem;
    Enregistrersous1: TMenuItem;
    Enregistrer1: TMenuItem;
    Importer1: TMenuItem;
    Exporter: TMenuItem;
    Quitter1: TMenuItem;
    Quitter2: TMenuItem;
    Edition1: TMenuItem;
    Copier1: TMenuItem;
    Coller1: TMenuItem;
    Copierimage1: TMenuItem;
    Collergencod1: TMenuItem;
    Supprimer2: TMenuItem;
    Inserer2: TMenuItem;
    Effacer1: TMenuItem;
    Aperu1: TMenuItem;
    Aperu2: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    OpenDialog2: TOpenDialog;
    SaveDialog2: TSaveDialog;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PopupMenu1: TPopupMenu;
    Supprimer1: TMenuItem;
    Inserer1: TMenuItem;
    Label11: TLabel;
    EditCodebarre: TEdit;
    EditNbrCodeBare: TEdit;
    IncrimenteEditNbrCodeBare: TUpDown;
    N1: TMenuItem;
    Imprimer1: TMenuItem;
    RadioGroup2: TRadioGroup;
    RBTicketCodeBarre: TRadioButton;
    RBA4: TRadioButton;
    AfficheDisposition: TPanel;
    RadioGroup1: TRadioGroup;
    RBHorizontale: TRadioButton;
    RBVerticale: TRadioButton;
    IndexImprimanteRBTicketCodeBarre: TLabel;
    IndexImprimanteRBA4: TLabel;
    AutoriserEnregistrementSelectionImprimanteChecked: TCheckBox;
    ImprimanteSelectionner: TLabel;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label17: TLabel;
    FichierMemo: TMemo;
    CodebarreSousTitre: TLabel;
    CodebarreTitre: TMemo;
     procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure Importer1Click(Sender: TObject);
    procedure Ouvrir1Click(Sender: TObject);
    procedure Quitter1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ExporterClick(Sender: TObject);
    procedure Copier1Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure Coller1Click(Sender: TObject);
    procedure Copierimage1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Collergencod1Click(Sender: TObject);
    procedure Enregistrer1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Supprimer1Click(Sender: TObject);
    procedure Inserer1Click(Sender: TObject);
    procedure Edit13Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Effacer1Click(Sender: TObject);
    procedure Edit14Change(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure Edit15Change(Sender: TObject);
    procedure Aperu2Click(Sender: TObject);
    procedure StringGrid1SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure Enregistrersous1Click(Sender: TObject);
    procedure AfficheSupportDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Imprimer1Click(Sender: TObject);
    procedure RBTicketCodeBarreClick(Sender: TObject);
    procedure RBA4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Déclarations privées }

     function Codebar(p:string):string;
    procedure Trace(A:Tcanvas;posg:integer;posh:integer;hb:integer;Ep:integer; bv:integer);
    

  public
    { Déclarations publiques }

  end;

var
  FSEtiquettesCodeBarre: TFSEtiquettesCodeBarre;

  Procedure ActiveEtiquettesCodeBarre;
  Procedure InitiallisationPrintCodebarre;
  Procedure AtciveEnabledPrintCodebarre(NumEtiquette:integer; ImageCodebarre:TImage; SousTitre:string);
  Procedure ChargerCodeBarre(Titre,CodeBarre,Soustitre:string);
  Procedure EnregistrerSelectionImprimanteChecked;
  Procedure ChargerSelectionImprimanteChecked;
  Procedure EnregistrementSelectionImprimanteChecked(TitreOptionIn,DataOptionIn:string);
  Procedure DataSelectionImprimanteChecked(TexteLigne:string; var TitreOptionOut,DataOptionOut:string);
  Function FindDataSelectionImprimanteChecked(TitreOptionIn:string):string;
  
implementation

uses UnitInitialisation, UnitPrintCodeBarre, UnitPrintCodeBareSpeciale;

{$R *.DFM}

const
a0 = '0001101';
a1 = '0011001';
a2 = '0010011';
a3 = '0111101';
a4 = '0100011';
a5 = '0110001';
a6 = '0101111';
a7 = '0111011';
a8 = '0110111';
a9 = '0001011';

c0 = '1110010';
c1 = '1100110';
c2 = '1101100';
c3 = '1000010';
c4 = '1011100';
c5 = '1001110';
c6 = '1010000';
c7 = '1000100';
c8 = '1001000';
c9 = '1110100';

delim = '101' ;    //delimiteur
separ = '01010' ;  //separateur

jeua : array[0..9] of string = (a0,a1,a2,a3,a4,a5,a6,a7,a8,a9);
jeuc : array[0..9] of string = (c0,c1,c2,c3,c4,c5,c6,c7,c8,c9);


var
a : array[1..7] of integer;
cod8 :integer;
t, article, codbar7 : string;
mg,mh,esh,esv,borv, hab,ept, ep, haut, dech, Ncol, Nlignpage :integer;
pcol,plig, Npag, Totetiq, Netiq, mots, Netiqimp :integer;

//###############################################################

function TFSEtiquettesCodeBarre.Codebar(p:string):string;
var i, j, s, r :integer;

begin
result:=p;
if length(p)=7 then begin

for i:=1 to 7 do a[i]:=strtointdef(p[i],0);

s:=a[1]*3+a[2]*1+a[3]*3+a[4]*1+a[5]*3+a[6]*1+a[7]*3 ;
r := s mod 10  ;
if r=0 then cod8:=(0) else cod8:= (10-r);

for i:=0 to 9 do
if a[1]=i   then   t:= delim + jeua[i];

for j:=2 to 4 do
for i:=0 to 9 do
if a[j]=i   then   t:=t+jeua[i];

                   t:=t+separ;

for j:=5 to 7 do
for i:=0 to 9 do
if a[j]=i   then   t:=t+jeuc[i];

for i:=0 to 9 do
if cod8=i   then   t:=t+jeuc[i];

                   t:=t+delim;
                   end;
end;

procedure TFSEtiquettesCodeBarre.Trace(A:Tcanvas;posg:integer;posh:integer;hb:integer;Ep:integer;bv:integer);
var i :integer;
begin
with A do begin       if codbar7='' then exit;
                      pen.Width:=Ep;
                      font.name:='arial';
                      font.size:=8;
                      textout(posg,posh-1,article);
                      font.size:=10;
                      for i:=0 to 3 do
                       textout(posg+Ep*(i*7+5),posh+hb+dech,codbar7[i+1]);
                      for i:=5 to 7 do
                       textout(posg+Ep*(i*7+3),posh+hb+dech,codbar7[i]);
                       textout(posg+Ep*(8*7+3),posh+hb+dech,inttostr(cod8));
                      pen.Width:=Ep;
                      for i:=1 to 3 do
                      if t[i]='1' then begin
                                       moveto(posg+i*Ep,bv+posh);
                                       lineto(posg+i*Ep,posh+hb+round(hb*20/100)); end;
                      for i:=4 to 31 do
                      if t[i]='1' then begin
                                       moveto(posg+i*Ep,bv+posh);
                                       lineto(posg+i*Ep,posh+hb); end;
                      for i:=32 to 35 do
                      if t[i]='1' then begin
                                       moveto(posg+i*Ep,bv+posh);
                                       lineto(posg+i*Ep,posh+hb+round(hb*20/100)); end;
                      for i:=36 to 64 do
                      if t[i]='1' then begin
                                       moveto(posg+i*Ep,bv+posh);
                                       lineto(posg+i*Ep,posh+hb); end;
                      for i:=65 to 67 do
                      if t[i]='1' then begin
                                       moveto(posg+i*Ep,bv+posh);
                                       lineto(posg+i*Ep,posh+hb+round(hb*20/100)); end;
                      end;

end;



procedure TFSEtiquettesCodeBarre.Button2Click(Sender: TObject);
var Bitmap:TBitmap;
begin
borv:=strtoint(edit9.text);
dech:=strtoint(edit15.text);
//if CheckBox1.Checked = true then begin ep:=strtointdef(edit13.text,1); haut:=strtointdef(edit14.text,1); end  else begin ep:=3; haut:=65; end;
ep:=strtointdef(edit13.text,3);
haut:=strtointdef(edit14.text,65);
if codbar7='' then exit;
Bitmap:=TBitmap.Create;
Bitmap.Width:=(ep*69);
Bitmap.Height:=haut;
FSEtiquettesCodeBarre.ImageCodebarre.Picture.Graphic:=Bitmap;
with FSEtiquettesCodeBarre.ImageCodebarre.Canvas do FillRect(ClipRect);  //Efface l'image
codebar(codbar7);
Trace(FSEtiquettesCodeBarre.ImageCodebarre.Canvas,0,0,round(haut*0.67),ep,borv * 4);
FSEtiquettesCodeBarre.CodebarreTitre.Lines.Text:=FSEtiquettesCodeBarre.StringGrid1.Cells[0,FSEtiquettesCodeBarre.StringGrid1.Row];
FSEtiquettesCodeBarre.CodebarreSousTitre.Caption:=FSEtiquettesCodeBarre.StringGrid1.Cells[4,FSEtiquettesCodeBarre.StringGrid1.Row];
FSEtiquettesCodeBarre.EditCodebarre.Text:=codbar7+inttostr(cod8);
end;

procedure TFSEtiquettesCodeBarre.Button3Click(Sender: TObject);
{var v,i,j,k,l,ept,hab,borv, mg, mh, esh, esv, pcol, plig :integer;
Nlignmemetiq, Totetiq, Npag :integer;  }
begin
{Totetiq:=0;
j:=-1;
mg :=strtointdef(edit10.text,0)* 12;
mh := strtointdef(edit11.text,0)* 12;
esh := strtointdef(edit3.text,0)* 12;
esv := strtointdef(edit6.text,0)* 12;
borv:=strtointdef(edit9.text,0)* 12;
hab:=strtointdef(Edit8.text,0) * 12;
ept:=strtointdef(edit5.text,1);
Ncol := strtointdef(Edit1.text,0);
NLignpage:= strtointdef(Edit2.text,0);

for i:=1 to StringGrid1.RowCount do
Totetiq := Totetiq + strtointdef(StringGrid1.cells[3,i],0);
Npag:= (Totetiq - 1) div (Ncol * NLignpage) + 1 ;
for i:=0 to Npag-1 do  begin
v:=-1 ;
printer.BeginDoc;
//for j:= 0 to  StringGrid1.RowCount-1 do  begin
//for j:= 0 + (NLignpage * i )to NLignpage + (NLignpage * i)-1 do  begin
repeat
inc(j);
Nlignmemetiq := (strtointdef(StringGrid1.cells[3,j+1],0) - 1) div Ncol + 1;
if  StringGrid1.cells[3,j+1]='0' then  Nlignmemetiq :=0;
codebar(Stringgrid1.Cells[1,j+1]);
codbar7:=(Stringgrid1.Cells[1,j+1]);

for k:=0 to Nlignmemetiq - 1  do begin inc(v);
for l:=0 to Ncol - 1 do begin
//pcol:=(2600 div (Ncol+1)) * l ;
pcol:=((ept * 70)+ esh) * l;
plig:= (hab + esv) *  v ;
Trace(Printer.Canvas,pcol+mg,plig+mh,hab,Ept,borv);
end;  end;  until (v >= NLignpage-1) or (j >= StringGrid1.RowCount-1);
printer.EndDoc;
end; }
end;

procedure TFSEtiquettesCodeBarre.FormCreate(Sender: TObject);
var  F: TextFile; L:String;
     j,i:integer;
begin
FSEtiquettesCodeBarre.ImageCodebarre.Width:=0;
FSEtiquettesCodeBarre.ImageCodebarre.Height:=0;
StringGrid1.Cells[0,0]:='Désignation Articles';
StringGrid1.Cells[1,0]:='Code barre  (7 chiffres)';
StringGrid1.Cells[2,0]:='N°Controle';
StringGrid1.Cells[3,0]:='Nb. (Etiquettes)';

i:=0;
if  ParamStr(1)<>'' then  try
                          SaveDialog1.FileName:=ParamStr(1);
                          AssignFile(F, ParamStr(1));
                          Reset(F);
                          repeat
                          inc(i);
                           for j:=0 to 3 do  begin
                            Readln(F, L);
                            StringGrid1.Cells[j,i]:=L;  end;
                            until eof(f);
                            StringGrid1.RowCount:=i+1;
                            finally
                            CloseFile(F);
                            end;
end;

procedure TFSEtiquettesCodeBarre.Edit5Change(Sender: TObject);
begin
Edit7.text:=inttostr(((strtoint(edit5.text)*70)) div 12);
StringGrid1Click(Sender);
end;


procedure TFSEtiquettesCodeBarre.StringGrid1Click(Sender: TObject);
var
  myRect: TGridRect;   mots:integer;
begin
     FSEtiquettesCodeBarre.CodebarreTitre.Lines.Text:=FSEtiquettesCodeBarre.StringGrid1.Cells[0,FSEtiquettesCodeBarre.StringGrid1.Row];
     FSEtiquettesCodeBarre.CodebarreSousTitre.Caption:=FSEtiquettesCodeBarre.StringGrid1.Cells[4,FSEtiquettesCodeBarre.StringGrid1.Row];

     if(FSEtiquettesCodeBarre.CodebarreTitre.Lines.Capacity=1)then
     begin
          FSEtiquettesCodeBarre.CodebarreTitre.Height:=14;
          FSEtiquettesCodeBarre.ImageCodebarre.Top:=28;
          FSEtiquettesCodeBarre.ImageCodebarre.Height:=68;
     end
     else
     begin
          FSEtiquettesCodeBarre.CodebarreTitre.Height:=25;
          FSEtiquettesCodeBarre.ImageCodebarre.Top:=42;
          FSEtiquettesCodeBarre.ImageCodebarre.Height:=57;
     end;

stringgrid1.Options:= [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect,goDrawFocusSelected,goEditing,goTabs];
myRect:= Stringgrid1.Selection;
if length(Stringgrid1.Cells[1,myRect.Top])=7 then
begin
     mots:=strtoint(edit5.text)* 4 ;
     article:='';//Copy(Stringgrid1.Cells[0,myRect.Top],0,mots);
     codbar7:=Stringgrid1.Cells[1,myRect.Top];
     Button2Click(Sender);
end
//edit2.text:=Stringgrid1.Cells[2,myRect.Top]; end

else
begin
     codbar7 :='';
     with FSEtiquettesCodeBarre.ImageCodebarre.Canvas do FillRect(ClipRect);
end;

end;


procedure TFSEtiquettesCodeBarre.Importer1Click(Sender: TObject);
var Memo:TMemo;  i:integer;
begin
if OpenDialog1.Execute then try
Memo:=TMemo.Create(self);
Memo.Parent:=FSEtiquettesCodeBarre;
Memo.lines.LoadFromFile(OpenDialog1.FileName);
for i:=0 to Memo.Lines.Count-1 do begin
StringGrid1.RowCount:=Memo.Lines.Count+1;
if gauche(#09,Memo.Lines[i])<>'' then  StringGrid1.cells[StringGrid1.col,StringGrid1.Row +i]:=gauche(#09,Memo.Lines[i]);
if GaucheNDroite(#09,Memo.Lines[i],1)<>'' then StringGrid1.cells[StringGrid1.col+1,StringGrid1.Row +i]:=GaucheNDroite(#09,Memo.Lines[i],1);
if GaucheNDroite(#09,Memo.Lines[i],2)<>'' then StringGrid1.cells[StringGrid1.col+2,StringGrid1.Row +i]:=GaucheNDroite(#09,Memo.Lines[i],2);
if GaucheNDroite(#09,Memo.Lines[i],3)<>'' then StringGrid1.cells[StringGrid1.col+3,StringGrid1.Row +i]:=GaucheNDroite(#09,Memo.Lines[i],3);
end;
finally
Memo.free;
end;
end;

procedure TFSEtiquettesCodeBarre.Ouvrir1Click(Sender: TObject);
var  F: TextFile; L:String;
     j,i:integer;
begin
i:=0;
  if OpenDialog2.execute then
  SaveDialog1.FileName:=OpenDialog2.FileName;
  try
    AssignFile(F, OpenDialog2.FileName);
    Reset(F);
    repeat
      inc(i);
      for j:=0 to 3 do  begin
      Readln(F, L);
      StringGrid1.Cells[j,i]:=L;  end;
    until eof(f);
    StringGrid1.RowCount:=i+1;
    finally
    CloseFile(F);
  end;
end;

procedure TFSEtiquettesCodeBarre.Quitter1Click(Sender: TObject);
begin
Close;
//application.Terminate;
end;

procedure TFSEtiquettesCodeBarre.Button1Click(Sender: TObject);
begin
StringGrid1.RowCount:= StringGrid1.RowCount+1;
end;

procedure TFSEtiquettesCodeBarre.Button5Click(Sender: TObject);
begin
StringGrid1.RowCount:= StringGrid1.RowCount-1;

end;  

procedure TFSEtiquettesCodeBarre.ExporterClick(Sender: TObject);
var Memo:TMemo;  i:integer;
begin
if SaveDialog2.Execute then try
Memo:=TMemo.Create(self);
Memo.Parent:=FSEtiquettesCodeBarre;
for i:=0 to StringGrid1.RowCount-1 do
Memo.Lines.Add(StringGrid1.cells[0,i+1] + #09 + StringGrid1.cells[1,i+1] + #09 + StringGrid1.cells[2,i+1] + #09 + StringGrid1.cells[3,i+1]);
Memo.lines.SaveToFile(SaveDialog2.FileName);

                            finally
                            Memo.free;
                            end;
end;

procedure TFSEtiquettesCodeBarre.Copier1Click(Sender: TObject);
var Memo:TMemo;  i:integer;
gridRect: TGridRect;

begin
gridrect:=StringGrid1.Selection;
try
Memo:=TMemo.Create(self);
Memo.Parent:=FSEtiquettesCodeBarre;
for i:=gridrect.Top to gridrect.Bottom do
//for j:=gridrect.left to gridrect.right do
//Memo.Lines[i-gridrect.Top]:= Memo.Lines[i-gridrect.Top] + StringGrid1.cells[j,i]+ #09  ;
Memo.Lines.Add(StringGrid1.cells[0,i] + #09 + StringGrid1.cells[1,i] + #09 + StringGrid1.cells[2,i] + #09 + StringGrid1.cells[3,i]);
Memo.SelectAll;
Memo.CopyToClipboard;
finally
                            Memo.free;
                            end;
end;


procedure TFSEtiquettesCodeBarre.StringGrid1DblClick(Sender: TObject);
begin
stringgrid1.Options:=[goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect,goDrawFocusSelected,goTabs];
end;


procedure TFSEtiquettesCodeBarre.Coller1Click(Sender: TObject);
var Memo:TMemo;  i:integer;
gridRect: TGridRect;
begin
gridrect:=StringGrid1.Selection;
try
Memo:=TMemo.Create(self);
Memo.Parent:=FSEtiquettesCodeBarre;
Memo.WordWrap:=false;
Memo.PasteFromClipboard;
StringGrid1.RowCount:=StringGrid1.RowCount+Memo.Lines.Count;
//if StringGrid1.col=0 then
for i:=0 to Memo.Lines.Count-1 do begin
if gauche(#09,Memo.Lines[i])<>'' then  StringGrid1.cells[StringGrid1.col,StringGrid1.Row +i]:=gauche(#09,Memo.Lines[i]);
if GaucheNDroite(#09,Memo.Lines[i],1)<>'' then StringGrid1.cells[StringGrid1.col+1,StringGrid1.Row +i]:=Copy(GaucheNDroite(#09,Memo.Lines[i],1),0,7);
if GaucheNDroite(#09,Memo.Lines[i],2)<>'' then StringGrid1.cells[StringGrid1.col+2,StringGrid1.Row +i]:=GaucheNDroite(#09,Memo.Lines[i],2);
if GaucheNDroite(#09,Memo.Lines[i],3)<>'' then StringGrid1.cells[StringGrid1.col+3,StringGrid1.Row +i]:=GaucheNDroite(#09,Memo.Lines[i],3);
end  ;                       {        else
for i:=0 to Memo.Lines.Count-1 do
StringGrid1.cells[StringGrid1.col,StringGrid1.Row +i]:=gauche(#09,Memo.Lines[i]);}


finally
Memo.free;
end;
end;

procedure TFSEtiquettesCodeBarre.Copierimage1Click(Sender: TObject);
begin
Clipboard.Assign(FSEtiquettesCodeBarre.ImageCodebarre.Picture.Bitmap);
end;

procedure TFSEtiquettesCodeBarre.Button4Click(Sender: TObject);
var i,j,l,v :integer;
begin
mg :=(strtointdef(edit10.text,0) - 3)* 12 ;
mh :=(strtointdef(edit11.text,0) - 2) * 12 ;
esh := (strtointdef(edit3.text,0) - 2) * 12;
esv := (strtointdef(edit6.text,0) + 2)* 12;
borv:= strtointdef(edit9.text,4)* 12;
//borv:= 4 * 12;
dech:= strtointdef(edit15.text,5);
//dech:=5;
hab:=(strtointdef(Edit8.text,0) - 3) * 12;
ept:=strtointdef(edit5.text,1);
Ncol := strtointdef(Edit1.text,0);
NLignpage:= strtointdef(Edit2.text,0);
Totetiq:=0;  Netiq :=0; Netiqimp:=-1;

for i:=1 to StringGrid1.RowCount-1 do
Totetiq := Totetiq + strtointdef(StringGrid1.cells[3,i],0);
Npag:= (Totetiq - 1) div (Ncol * NLignpage) + 1 ;

i:=-1; j:=-1;

if PrintDialog1.Execute then begin

repeat
inc(i); v:=-1;
printer.BeginDoc;
repeat
inc(v);l:=-1;
repeat
inc(l);Inc(Netiq);Inc(Netiqimp);
if Netiq >= strtointdef(Stringgrid1.Cells[3,j+1],0) then begin inc(j); Netiq:=0; end;

mots:=strtoint(edit5.text)* 4 ;
article:=Copy(Stringgrid1.Cells[0,j+1],0,mots);

codebar(Stringgrid1.Cells[1,j+1]);
codbar7:=(Stringgrid1.Cells[1,j+1]);
pcol:=((ept * 70)+ esh) * l;
plig:= (hab + esv) *  v ;
Trace(Printer.Canvas,pcol+mg,plig+mh,hab,Ept,borv);
until (l >= NCol-1) or (Netiq >= strtointdef(Stringgrid1.Cells[3,j+1],0)) or (Netiqimp >= Totetiq-1)   ;
until (v >= NLignpage-1) or (Netiqimp >= Totetiq-1)  ;
printer.EndDoc;
//printer.NewPage;
until (i >= Npag-1) ;

end;
end;

procedure TFSEtiquettesCodeBarre.Collergencod1Click(Sender: TObject);
var Memo:TMemo;  i:integer;
gridRect: TGridRect;
begin
gridrect:=StringGrid1.Selection;
try
Memo:=TMemo.Create(self);
Memo.Parent:=FSEtiquettesCodeBarre;
Memo.Width:=400;
Memo.PasteFromClipboard;
//StringGrid1.RowCount:=StringGrid1.RowCount+Memo.Lines.Count;
for i:=0 to Memo.Lines.Count-1 do begin
if gauche(#09,Memo.Lines[i])<>'' then  StringGrid1.cells[StringGrid1.col,StringGrid1.Row +i]:=Copy(gauche(#09,Memo.Lines[i]),0,7);
codebar(StringGrid1.cells[1,i]);
StringGrid1.cells[2,i]:=inttostr(cod8);
end  ;
finally
Memo.free;
end;
end;

procedure TFSEtiquettesCodeBarre.Enregistrer1Click(Sender: TObject);
var F: TextFile;
    i,j :Integer;
begin

  try
  if SaveDialog1.FileName='' then exit;
    AssignFile(F, SaveDialog1.FileName);
    Rewrite(F);
    for i:=1 to StringGrid1.RowCount-1 do
    for j:=0 to 3  do
      Writeln(F, StringGrid1.cells[j,i]);
    finally
    CloseFile(F);
    end;

end;

procedure TFSEtiquettesCodeBarre.Button6Click(Sender: TObject);
var largcol,hautcol,esph,espv :integer;
begin
largcol:= (210 - strtointdef(edit12.text,5)) div strtoint(edit1.text);
hautcol:= (297 - strtointdef(edit4.text,10)) div strtoint(edit2.text);
esph:= (largcol - strtoint(edit7.text)) div 2 ;
espv:= (hautcol - strtoint(edit8.text)) div 2 ;
edit3.text:= inttostr( esph * 2 ) ;
Edit10.text:= inttostr(esph + strtointdef(edit12.text,5));
edit6.text:= inttostr( espv * 2 ) ;
Edit11.text:= inttostr(espv + strtointdef(edit4.text,10));

end;

procedure TFSEtiquettesCodeBarre.Button7Click(Sender: TObject);
begin
PrinterSetupDialog1.Execute;
end;

procedure TFSEtiquettesCodeBarre.Supprimer1Click(Sender: TObject);
var Memo:TMemo;  i:integer;
begin
try
Memo:=TMemo.Create(self);
Memo.Visible:=false;
Memo.Parent:=FSEtiquettesCodeBarre;

Memo.WordWrap:=false;
for i:=StringGrid1.row +1 to StringGrid1.RowCount do
Memo.Lines.Add(StringGrid1.cells[0,i] + #09 + StringGrid1.cells[1,i] + #09 + StringGrid1.cells[2,i] + #09 + StringGrid1.cells[3,i]);
Memo.SelectAll;
Memo.CopyToClipboard;
memo.Clear;
Memo.PasteFromClipboard;
for i:=0 to Memo.Lines.Count-1 do begin
StringGrid1.cells[0,StringGrid1.Row +i]:=gauche(#09,Memo.Lines[i]);
StringGrid1.cells[1,StringGrid1.Row +i]:=Copy(GaucheNDroite(#09,Memo.Lines[i],1),0,7);
StringGrid1.cells[2,StringGrid1.Row +i]:=GaucheNDroite(#09,Memo.Lines[i],2);
StringGrid1.cells[3,StringGrid1.Row +i]:=GaucheNDroite(#09,Memo.Lines[i],3);
end  ;
StringGrid1Click(Sender);
finally
Memo.free;
Clipboard.Clear;
end;

end;

procedure TFSEtiquettesCodeBarre.Inserer1Click(Sender: TObject);
var Memo:TMemo;  i:integer;
begin
try
Memo:=TMemo.Create(self);
Memo.Visible:=false;
Memo.Parent:=FSEtiquettesCodeBarre;

Memo.WordWrap:=false;
for i:=StringGrid1.row  to StringGrid1.RowCount do
Memo.Lines.Add(StringGrid1.cells[0,i] + #09 + StringGrid1.cells[1,i] + #09 + StringGrid1.cells[2,i] + #09 + StringGrid1.cells[3,i]);
Memo.SelectAll;
Memo.CopyToClipboard;
memo.Clear;
Memo.PasteFromClipboard;

StringGrid1.cells[0,StringGrid1.Row ]:='';
StringGrid1.cells[1,StringGrid1.Row ]:='';
StringGrid1.cells[2,StringGrid1.Row ]:='';
StringGrid1.cells[3,StringGrid1.Row ]:='';

for i:=0 to Memo.Lines.Count-1 do begin
StringGrid1.cells[0,StringGrid1.Row +i+1]:=gauche(#09,Memo.Lines[i]);
StringGrid1.cells[1,StringGrid1.Row +i+1]:=Copy(GaucheNDroite(#09,Memo.Lines[i],1),0,7);
StringGrid1.cells[2,StringGrid1.Row +i+1]:=GaucheNDroite(#09,Memo.Lines[i],2);
StringGrid1.cells[3,StringGrid1.Row +i+1]:=GaucheNDroite(#09,Memo.Lines[i],3);
end  ;
StringGrid1.RowCount:=StringGrid1.RowCount+1;
StringGrid1Click(Sender);
finally
Memo.free;
Clipboard.Clear;
end;
end;

procedure TFSEtiquettesCodeBarre.Edit13Change(Sender: TObject);
begin
StringGrid1Click(Sender);
end;

procedure TFSEtiquettesCodeBarre.CheckBox1Click(Sender: TObject);
begin
//if CheckBox1.Checked = false  then  begin edit13.text:='3';  edit13.Enabled:=false; edit14.text:='65'; edit14.Enabled:=false end else begin edit13.Enabled:=true;  edit14.Enabled:=true; end;
//Button2Click(Sender);
end;

procedure TFSEtiquettesCodeBarre.Effacer1Click(Sender: TObject);
var
gridRect: TGridRect;  i,j :integer;
begin
gridrect:=StringGrid1.Selection;
for i:=gridrect.Top to gridrect.Bottom do
for j:=gridrect.left to gridrect.right do
StringGrid1.cells[j,i]:='';
end;

procedure TFSEtiquettesCodeBarre.Edit14Change(Sender: TObject);
begin
StringGrid1Click(Sender);
end;

procedure TFSEtiquettesCodeBarre.Edit9Change(Sender: TObject);
begin
StringGrid1Click(Sender);
end;

procedure TFSEtiquettesCodeBarre.Edit15Change(Sender: TObject);
begin
StringGrid1Click(Sender);
end;

procedure TFSEtiquettesCodeBarre.Aperu2Click(Sender: TObject);
var  index,Etiquette,NbrEtiquette,NColonne:integer;
begin
     if(FSEtiquettesCodeBarre.RBTicketCodeBarre.Checked=true)then
     begin
          if(FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption<>'')then
          begin
               index:=strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption);
          end
          else
          begin
               if(FSEtiquettesCodeBarre.PrinterSetupDialog1.Execute)then
               begin
                    FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption:=inttostr(Printer.PrinterIndex);
                    EnregistrerSelectionImprimanteChecked;
                    FSEtiquettesCodeBarre.ImprimanteSelectionner.Caption:=Printer.Printers.Strings[strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption)];

                    index:=strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption);
               end;
          end;

          if index >= 0 then PrintCodeBareSpeciale.PrinterSettings.PrinterIndex := index
                        else showmessage('Erreur');


          if(FSEtiquettesCodeBarre.CodebarreTitre.Lines.Capacity=1)then
          begin
               PrintCodeBareSpeciale.ImageCodeBarre1.Top:=12;
               PrintCodeBareSpeciale.ImageCodeBarre1.Height:=62;
          end
          else
          begin
               PrintCodeBareSpeciale.ImageCodeBarre1.Top:=22;
               PrintCodeBareSpeciale.ImageCodeBarre1.Height:=52;
          end;

          PrintCodeBareSpeciale.Titre1.Lines.Text:=FSEtiquettesCodeBarre.StringGrid1.Cells[0,FSEtiquettesCodeBarre.StringGrid1.Row];
          PrintCodeBareSpeciale.ImageCodeBarre1.Picture:=FSEtiquettesCodeBarre.ImageCodebarre.Picture;
          PrintCodeBareSpeciale.SousTitre1.Caption:=FSEtiquettesCodeBarre.StringGrid1.Cells[4,FSEtiquettesCodeBarre.StringGrid1.Row];
          PrintCodeBareSpeciale.Preview;
     end
     else
     begin
          if(FSEtiquettesCodeBarre.IndexImprimanteRBA4.Caption<>'')then
          begin
               index:=strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBA4.Caption);
          end
          else
          begin
               if(FSEtiquettesCodeBarre.PrinterSetupDialog1.Execute)then
               begin
                    FSEtiquettesCodeBarre.IndexImprimanteRBA4.Caption:=inttostr(Printer.PrinterIndex);
                    EnregistrerSelectionImprimanteChecked;
                    FSEtiquettesCodeBarre.ImprimanteSelectionner.Caption:=Printer.Printers.Strings[strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBA4.Caption)];

                    index:=strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBA4.Caption);
               end;
          end;
          
          if index >= 0 then PrintCodeBarre.PrinterSettings.PrinterIndex := index
                        else showmessage('Erreur');

          InitiallisationPrintCodebarre;

          if(FSEtiquettesCodeBarre.RBHorizontale.Checked=true)then
          begin
               for NbrEtiquette:=1 to FSEtiquettesCodeBarre.IncrimenteEditNbrCodeBare.Position do
               begin
                    AtciveEnabledPrintCodebarre(NbrEtiquette,FSEtiquettesCodeBarre.ImageCodebarre,FSEtiquettesCodeBarre.StringGrid1.Cells[4,FSEtiquettesCodeBarre.StringGrid1.Row]);
               end;
          end;

          if(FSEtiquettesCodeBarre.RBVerticale.Checked=true)then
          begin
               NColonne:=1;
               Etiquette:=NColonne;
               NbrEtiquette:=1;
               while(NbrEtiquette<=FSEtiquettesCodeBarre.IncrimenteEditNbrCodeBare.Position)do
               begin
                    AtciveEnabledPrintCodebarre(Etiquette,FSEtiquettesCodeBarre.ImageCodebarre,FSEtiquettesCodeBarre.StringGrid1.Cells[4,FSEtiquettesCodeBarre.StringGrid1.Row]);

                    Etiquette:=Etiquette+4;

                    if(Etiquette>28+NColonne)then
                    begin
                         NColonne:=NColonne+1;
                         Etiquette:=NColonne;
                    end;

               NbrEtiquette:=NbrEtiquette+1;
               end;
          end;
          
          PrintCodeBarre.Preview;
     end;
end;

Procedure ActiveEtiquettesCodeBarre;
var
  myRect: TGridRect;   mots:integer;
begin
FSEtiquettesCodeBarre.stringgrid1.Options:= [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect,goDrawFocusSelected,goEditing,goTabs];
myRect:= FSEtiquettesCodeBarre.Stringgrid1.Selection;
if length(FSEtiquettesCodeBarre.Stringgrid1.Cells[1,myRect.Top])=7 then
begin
     mots:=strtoint(FSEtiquettesCodeBarre.edit5.text)* 4 ;
     article:=Copy(FSEtiquettesCodeBarre.Stringgrid1.Cells[0,myRect.Top],0,mots);
     codbar7:=FSEtiquettesCodeBarre.StringGrid1.Cells[1,myRect.Top];
     FSEtiquettesCodeBarre.Button2Click(FSEtiquettesCodeBarre.Button2);
end
//edit2.text:=Stringgrid1.Cells[2,myRect.Top]; end

else
begin
     codbar7 :='';
     with FSEtiquettesCodeBarre.ImageCodebarre.Canvas do FillRect(ClipRect);
end;

end;

procedure TFSEtiquettesCodeBarre.StringGrid1SetEditText(Sender: TObject;
  ACol, ARow: Integer; const Value: String);
begin
     if length(StringGrid1.cells[1,StringGrid1.Row])=7 then
     begin
          codebar(StringGrid1.cells[1,StringGrid1.Row]);
          StringGrid1.cells[2,StringGrid1.Row]:=inttostr(cod8);
     end
     else StringGrid1.cells[2,StringGrid1.Row]:='';

     StringGrid1Click(Sender);
end;

procedure TFSEtiquettesCodeBarre.Enregistrersous1Click(Sender: TObject);
var F: TextFile;
    i,j :Integer;
begin
if SaveDialog1.execute then
  try
    AssignFile(F, SaveDialog1.FileName);
    Rewrite(F);
    for i:=1 to StringGrid1.RowCount-1 do
    for j:=0 to 3  do
      Writeln(F, StringGrid1.cells[j,i]);
    finally
    CloseFile(F);
    end;
end;

procedure TFSEtiquettesCodeBarre.AfficheSupportDblClick(Sender: TObject);
begin
     if(FSEtiquettesCodeBarre.Width=457)then
     begin
          FSEtiquettesCodeBarre.Width:=785;
          FSEtiquettesCodeBarre.Height:=587;

          FSEtiquettesCodeBarre.AfficheSupport.Width:=753;
          FSEtiquettesCodeBarre.AfficheSupport.Height:=521;
     end
     else
     begin
          FSEtiquettesCodeBarre.AfficheSupport.Width:=425;
          FSEtiquettesCodeBarre.AfficheSupport.Height:=233;

          FSEtiquettesCodeBarre.Width:=457;
          FSEtiquettesCodeBarre.Height:=298;
     end;
end;

procedure TFSEtiquettesCodeBarre.FormShow(Sender: TObject);
begin
     FSEtiquettesCodeBarre.AfficheSupport.Width:=425;
     FSEtiquettesCodeBarre.AfficheSupport.Height:=233;

     FSEtiquettesCodeBarre.Width:=457;
     FSEtiquettesCodeBarre.Height:=298;

     FSEtiquettesCodeBarre.StringGrid1.Cells[0,0]:='Désignation';
     FSEtiquettesCodeBarre.StringGrid1.Cells[1,0]:='Code barre';
     FSEtiquettesCodeBarre.StringGrid1.Cells[2,0]:='contrôle';
     FSEtiquettesCodeBarre.StringGrid1.Cells[3,0]:='Nbr copie';
     FSEtiquettesCodeBarre.StringGrid1.Cells[4,0]:='Sous Titre';

     FSEtiquettesCodeBarre.IncrimenteEditNbrCodeBare.Position:=strtointeger(FSEtiquettesCodeBarre.StringGrid1.Cells[4,FSEtiquettesCodeBarre.StringGrid1.Row]);

     ChargerSelectionImprimanteChecked;

     if(FSEtiquettesCodeBarre.RBTicketCodeBarre.Checked=true)
     then FSEtiquettesCodeBarre.ImprimanteSelectionner.Caption:=Printer.Printers.Strings[strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption)];

     if(FSEtiquettesCodeBarre.RBA4.Checked=true)
     then FSEtiquettesCodeBarre.ImprimanteSelectionner.Caption:=Printer.Printers.Strings[strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBA4.Caption)];
end;

Procedure InitiallisationPrintCodebarre;
begin
     PrintCodeBarre.ImageCodeBarre1.Enabled:=false;   PrintCodeBarre.ImageCodeBarre2.Enabled:=false;
     PrintCodeBarre.SousTitre1.Enabled:=false;        PrintCodeBarre.SousTitre2.Enabled:=false;
     PrintCodeBarre.SousTitre1.Caption:='';           PrintCodeBarre.SousTitre2.Caption:='';

     PrintCodeBarre.ImageCodeBarre3.Enabled:=false;   PrintCodeBarre.ImageCodeBarre4.Enabled:=false;
     PrintCodeBarre.SousTitre3.Enabled:=false;        PrintCodeBarre.SousTitre4.Enabled:=false;
     PrintCodeBarre.SousTitre3.Caption:='';           PrintCodeBarre.SousTitre4.Caption:='';

     PrintCodeBarre.ImageCodeBarre5.Enabled:=false;   PrintCodeBarre.ImageCodeBarre6.Enabled:=false;
     PrintCodeBarre.SousTitre5.Enabled:=false;        PrintCodeBarre.SousTitre6.Enabled:=false;
     PrintCodeBarre.SousTitre5.Caption:='';           PrintCodeBarre.SousTitre6.Caption:='';

     PrintCodeBarre.ImageCodeBarre7.Enabled:=false;   PrintCodeBarre.ImageCodeBarre8.Enabled:=false;
     PrintCodeBarre.SousTitre7.Enabled:=false;        PrintCodeBarre.SousTitre8.Enabled:=false;
     PrintCodeBarre.SousTitre7.Caption:='';           PrintCodeBarre.SousTitre8.Caption:='';

     PrintCodeBarre.ImageCodeBarre9.Enabled:=false;   PrintCodeBarre.ImageCodeBarre10.Enabled:=false;
     PrintCodeBarre.SousTitre9.Enabled:=false;        PrintCodeBarre.SousTitre10.Enabled:=false;
     PrintCodeBarre.SousTitre9.Caption:='';           PrintCodeBarre.SousTitre10.Caption:='';

     PrintCodeBarre.ImageCodeBarre11.Enabled:=false;   PrintCodeBarre.ImageCodeBarre12.Enabled:=false;
     PrintCodeBarre.SousTitre11.Enabled:=false;        PrintCodeBarre.SousTitre12.Enabled:=false;
     PrintCodeBarre.SousTitre11.Caption:='';           PrintCodeBarre.SousTitre12.Caption:='';

     PrintCodeBarre.ImageCodeBarre13.Enabled:=false;   PrintCodeBarre.ImageCodeBarre14.Enabled:=false;
     PrintCodeBarre.SousTitre13.Enabled:=false;        PrintCodeBarre.SousTitre14.Enabled:=false;
     PrintCodeBarre.SousTitre13.Caption:='';           PrintCodeBarre.SousTitre14.Caption:='';

     PrintCodeBarre.ImageCodeBarre15.Enabled:=false;   PrintCodeBarre.ImageCodeBarre16.Enabled:=false;
     PrintCodeBarre.SousTitre15.Enabled:=false;        PrintCodeBarre.SousTitre16.Enabled:=false;
     PrintCodeBarre.SousTitre15.Caption:='';           PrintCodeBarre.SousTitre16.Caption:='';

     PrintCodeBarre.ImageCodeBarre17.Enabled:=false;   PrintCodeBarre.ImageCodeBarre18.Enabled:=false;
     PrintCodeBarre.SousTitre17.Enabled:=false;        PrintCodeBarre.SousTitre18.Enabled:=false;
     PrintCodeBarre.SousTitre17.Caption:='';           PrintCodeBarre.SousTitre18.Caption:='';

     PrintCodeBarre.ImageCodeBarre19.Enabled:=false;   PrintCodeBarre.ImageCodeBarre20.Enabled:=false;
     PrintCodeBarre.SousTitre19.Enabled:=false;        PrintCodeBarre.SousTitre20.Enabled:=false;
     PrintCodeBarre.SousTitre19.Caption:='';           PrintCodeBarre.SousTitre20.Caption:='';

     PrintCodeBarre.ImageCodeBarre21.Enabled:=false;   PrintCodeBarre.ImageCodeBarre22.Enabled:=false;
     PrintCodeBarre.SousTitre21.Enabled:=false;        PrintCodeBarre.SousTitre22.Enabled:=false;
     PrintCodeBarre.SousTitre21.Caption:='';           PrintCodeBarre.SousTitre22.Caption:='';

     PrintCodeBarre.ImageCodeBarre23.Enabled:=false;   PrintCodeBarre.ImageCodeBarre24.Enabled:=false;
     PrintCodeBarre.SousTitre23.Enabled:=false;        PrintCodeBarre.SousTitre24.Enabled:=false;
     PrintCodeBarre.SousTitre23.Caption:='';           PrintCodeBarre.SousTitre24.Caption:='';

     PrintCodeBarre.ImageCodeBarre25.Enabled:=false;   PrintCodeBarre.ImageCodeBarre26.Enabled:=false;
     PrintCodeBarre.SousTitre25.Enabled:=false;        PrintCodeBarre.SousTitre26.Enabled:=false;
     PrintCodeBarre.SousTitre25.Caption:='';           PrintCodeBarre.SousTitre26.Caption:='';

     PrintCodeBarre.ImageCodeBarre27.Enabled:=false;   PrintCodeBarre.ImageCodeBarre28.Enabled:=false;
     PrintCodeBarre.SousTitre27.Enabled:=false;        PrintCodeBarre.SousTitre28.Enabled:=false;
     PrintCodeBarre.SousTitre27.Caption:='';           PrintCodeBarre.SousTitre28.Caption:='';

     PrintCodeBarre.ImageCodeBarre29.Enabled:=false;   PrintCodeBarre.ImageCodeBarre30.Enabled:=false;
     PrintCodeBarre.SousTitre29.Enabled:=false;        PrintCodeBarre.SousTitre30.Enabled:=false;
     PrintCodeBarre.SousTitre29.Caption:='';           PrintCodeBarre.SousTitre30.Caption:='';

     PrintCodeBarre.ImageCodeBarre31.Enabled:=false;   PrintCodeBarre.ImageCodeBarre32.Enabled:=false;
     PrintCodeBarre.SousTitre31.Enabled:=false;        PrintCodeBarre.SousTitre32.Enabled:=false;
     PrintCodeBarre.SousTitre31.Caption:='';           PrintCodeBarre.SousTitre32.Caption:='';
end;

Procedure AtciveEnabledPrintCodebarre(NumEtiquette:integer; ImageCodebarre:TImage; SousTitre:string);
begin
     if(NumEtiquette=1)then
     begin
          PrintCodeBarre.ImageCodeBarre1.Enabled:=true;
          PrintCodeBarre.SousTitre1.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre1.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre1.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre1.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre1.Top:=PrintCodeBarre.ImageCodeBarre1.Top+PrintCodeBarre.ImageCodeBarre1.Height;
          PrintCodeBarre.SousTitre1.Caption:=SousTitre;
     end;

     if(NumEtiquette=2)then
     begin
          PrintCodeBarre.ImageCodeBarre2.Enabled:=true;
          PrintCodeBarre.SousTitre2.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre2.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre2.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre2.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre2.Top:=PrintCodeBarre.ImageCodeBarre2.Top+PrintCodeBarre.ImageCodeBarre2.Height;
          PrintCodeBarre.SousTitre2.Caption:=SousTitre;
     end;

     if(NumEtiquette=3)then
     begin
          PrintCodeBarre.ImageCodeBarre3.Enabled:=true;
          PrintCodeBarre.SousTitre3.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre3.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre3.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre3.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre3.Top:=PrintCodeBarre.ImageCodeBarre3.Top+PrintCodeBarre.ImageCodeBarre3.Height;
          PrintCodeBarre.SousTitre3.Caption:=SousTitre;
     end;

     if(NumEtiquette=4)then
     begin
          PrintCodeBarre.ImageCodeBarre4.Enabled:=true;
          PrintCodeBarre.SousTitre4.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre4.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre4.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre4.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre4.Top:=PrintCodeBarre.ImageCodeBarre4.Top+PrintCodeBarre.ImageCodeBarre4.Height;
          PrintCodeBarre.SousTitre4.Caption:=SousTitre;
     end;

     if(NumEtiquette=5)then
     begin
          PrintCodeBarre.ImageCodeBarre5.Enabled:=true;
          PrintCodeBarre.SousTitre5.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre5.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre5.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre5.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre5.Top:=PrintCodeBarre.ImageCodeBarre5.Top+PrintCodeBarre.ImageCodeBarre5.Height;
          PrintCodeBarre.SousTitre5.Caption:=SousTitre;
     end;

     if(NumEtiquette=6)then
     begin
          PrintCodeBarre.ImageCodeBarre6.Enabled:=true;
          PrintCodeBarre.SousTitre6.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre6.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre6.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre6.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre6.Top:=PrintCodeBarre.ImageCodeBarre6.Top+PrintCodeBarre.ImageCodeBarre6.Height;
          PrintCodeBarre.SousTitre6.Caption:=SousTitre;
     end;

     if(NumEtiquette=7)then
     begin
          PrintCodeBarre.ImageCodeBarre7.Enabled:=true;
          PrintCodeBarre.SousTitre7.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre7.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre7.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre7.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre7.Top:=PrintCodeBarre.ImageCodeBarre7.Top+PrintCodeBarre.ImageCodeBarre7.Height;
          PrintCodeBarre.SousTitre7.Caption:=SousTitre;
     end;

     if(NumEtiquette=8)then
     begin
          PrintCodeBarre.ImageCodeBarre8.Enabled:=true;
          PrintCodeBarre.SousTitre8.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre8.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre8.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre8.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre8.Top:=PrintCodeBarre.ImageCodeBarre8.Top+PrintCodeBarre.ImageCodeBarre8.Height;
          PrintCodeBarre.SousTitre8.Caption:=SousTitre;
     end;

     if(NumEtiquette=9)then
     begin
          PrintCodeBarre.ImageCodeBarre9.Enabled:=true;
          PrintCodeBarre.SousTitre9.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre9.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre9.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre9.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre9.Top:=PrintCodeBarre.ImageCodeBarre9.Top+PrintCodeBarre.ImageCodeBarre9.Height;
          PrintCodeBarre.SousTitre9.Caption:=SousTitre;
     end;

     if(NumEtiquette=10)then
     begin
          PrintCodeBarre.ImageCodeBarre10.Enabled:=true;
          PrintCodeBarre.SousTitre10.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre10.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre10.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre10.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre10.Top:=PrintCodeBarre.ImageCodeBarre10.Top+PrintCodeBarre.ImageCodeBarre10.Height;
          PrintCodeBarre.SousTitre10.Caption:=SousTitre;
     end;

     if(NumEtiquette=11)then
     begin
          PrintCodeBarre.ImageCodeBarre11.Enabled:=true;
          PrintCodeBarre.SousTitre11.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre11.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre11.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre11.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre11.Top:=PrintCodeBarre.ImageCodeBarre11.Top+PrintCodeBarre.ImageCodeBarre11.Height;
          PrintCodeBarre.SousTitre11.Caption:=SousTitre;
     end;

     if(NumEtiquette=12)then
     begin
          PrintCodeBarre.ImageCodeBarre12.Enabled:=true;
          PrintCodeBarre.SousTitre12.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre12.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre12.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre12.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre12.Top:=PrintCodeBarre.ImageCodeBarre12.Top+PrintCodeBarre.ImageCodeBarre12.Height;
          PrintCodeBarre.SousTitre12.Caption:=SousTitre;
     end;

     if(NumEtiquette=13)then
     begin
          PrintCodeBarre.ImageCodeBarre13.Enabled:=true;
          PrintCodeBarre.SousTitre13.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre13.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre13.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre13.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre13.Top:=PrintCodeBarre.ImageCodeBarre13.Top+PrintCodeBarre.ImageCodeBarre13.Height;
          PrintCodeBarre.SousTitre13.Caption:=SousTitre;
     end;

     if(NumEtiquette=14)then
     begin
          PrintCodeBarre.ImageCodeBarre14.Enabled:=true;
          PrintCodeBarre.SousTitre14.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre14.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre14.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre14.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre14.Top:=PrintCodeBarre.ImageCodeBarre14.Top+PrintCodeBarre.ImageCodeBarre14.Height;
          PrintCodeBarre.SousTitre14.Caption:=SousTitre;
     end;

     if(NumEtiquette=15)then
     begin
          PrintCodeBarre.ImageCodeBarre15.Enabled:=true;
          PrintCodeBarre.SousTitre15.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre15.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre15.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre15.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre15.Top:=PrintCodeBarre.ImageCodeBarre15.Top+PrintCodeBarre.ImageCodeBarre15.Height;
          PrintCodeBarre.SousTitre15.Caption:=SousTitre;
     end;

     if(NumEtiquette=16)then
     begin
          PrintCodeBarre.ImageCodeBarre16.Enabled:=true;
          PrintCodeBarre.SousTitre16.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre16.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre16.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre16.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre16.Top:=PrintCodeBarre.ImageCodeBarre16.Top+PrintCodeBarre.ImageCodeBarre16.Height;
          PrintCodeBarre.SousTitre16.Caption:=SousTitre;
     end;

     if(NumEtiquette=17)then
     begin
          PrintCodeBarre.ImageCodeBarre17.Enabled:=true;
          PrintCodeBarre.SousTitre17.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre17.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre17.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre17.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre17.Top:=PrintCodeBarre.ImageCodeBarre17.Top+PrintCodeBarre.ImageCodeBarre17.Height;
          PrintCodeBarre.SousTitre17.Caption:=SousTitre;
     end;

     if(NumEtiquette=18)then
     begin
          PrintCodeBarre.ImageCodeBarre18.Enabled:=true;
          PrintCodeBarre.SousTitre18.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre18.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre18.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre18.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre18.Top:=PrintCodeBarre.ImageCodeBarre18.Top+PrintCodeBarre.ImageCodeBarre18.Height;
          PrintCodeBarre.SousTitre18.Caption:=SousTitre;
     end;

     if(NumEtiquette=19)then
     begin
          PrintCodeBarre.ImageCodeBarre19.Enabled:=true;
          PrintCodeBarre.SousTitre19.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre19.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre19.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre19.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre19.Top:=PrintCodeBarre.ImageCodeBarre19.Top+PrintCodeBarre.ImageCodeBarre19.Height;
          PrintCodeBarre.SousTitre19.Caption:=SousTitre;
     end;

     if(NumEtiquette=20)then
     begin
          PrintCodeBarre.ImageCodeBarre20.Enabled:=true;
          PrintCodeBarre.SousTitre20.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre20.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre20.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre20.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre20.Top:=PrintCodeBarre.ImageCodeBarre20.Top+PrintCodeBarre.ImageCodeBarre20.Height;
          PrintCodeBarre.SousTitre20.Caption:=SousTitre;
     end;

     if(NumEtiquette=21)then
     begin
          PrintCodeBarre.ImageCodeBarre21.Enabled:=true;
          PrintCodeBarre.SousTitre21.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre21.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre21.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre21.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre21.Top:=PrintCodeBarre.ImageCodeBarre21.Top+PrintCodeBarre.ImageCodeBarre21.Height;
          PrintCodeBarre.SousTitre21.Caption:=SousTitre;
     end;

     if(NumEtiquette=22)then
     begin
          PrintCodeBarre.ImageCodeBarre22.Enabled:=true;
          PrintCodeBarre.SousTitre22.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre22.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre22.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre22.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre22.Top:=PrintCodeBarre.ImageCodeBarre22.Top+PrintCodeBarre.ImageCodeBarre22.Height;
          PrintCodeBarre.SousTitre22.Caption:=SousTitre;
     end;

     if(NumEtiquette=23)then
     begin
          PrintCodeBarre.ImageCodeBarre23.Enabled:=true;
          PrintCodeBarre.SousTitre23.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre23.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre23.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre23.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre23.Top:=PrintCodeBarre.ImageCodeBarre23.Top+PrintCodeBarre.ImageCodeBarre23.Height;
          PrintCodeBarre.SousTitre23.Caption:=SousTitre;
     end;

     if(NumEtiquette=24)then
     begin
          PrintCodeBarre.ImageCodeBarre24.Enabled:=true;
          PrintCodeBarre.SousTitre24.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre24.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre24.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre24.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre24.Top:=PrintCodeBarre.ImageCodeBarre24.Top+PrintCodeBarre.ImageCodeBarre24.Height;
          PrintCodeBarre.SousTitre24.Caption:=SousTitre;
     end;

     if(NumEtiquette=25)then
     begin
          PrintCodeBarre.ImageCodeBarre25.Enabled:=true;
          PrintCodeBarre.SousTitre25.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre25.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre25.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre25.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre25.Top:=PrintCodeBarre.ImageCodeBarre25.Top+PrintCodeBarre.ImageCodeBarre25.Height;
          PrintCodeBarre.SousTitre25.Caption:=SousTitre;
     end;

     if(NumEtiquette=26)then
     begin
          PrintCodeBarre.ImageCodeBarre26.Enabled:=true;
          PrintCodeBarre.SousTitre26.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre26.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre26.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre26.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre26.Top:=PrintCodeBarre.ImageCodeBarre26.Top+PrintCodeBarre.ImageCodeBarre26.Height;
          PrintCodeBarre.SousTitre26.Caption:=SousTitre;
     end;

     if(NumEtiquette=27)then
     begin
          PrintCodeBarre.ImageCodeBarre27.Enabled:=true;
          PrintCodeBarre.SousTitre27.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre27.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre27.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre27.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre27.Top:=PrintCodeBarre.ImageCodeBarre27.Top+PrintCodeBarre.ImageCodeBarre27.Height;
          PrintCodeBarre.SousTitre27.Caption:=SousTitre;
     end;

     if(NumEtiquette=28)then
     begin
          PrintCodeBarre.ImageCodeBarre28.Enabled:=true;
          PrintCodeBarre.SousTitre28.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre28.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre28.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre28.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre28.Top:=PrintCodeBarre.ImageCodeBarre28.Top+PrintCodeBarre.ImageCodeBarre28.Height;
          PrintCodeBarre.SousTitre28.Caption:=SousTitre;
     end;

     if(NumEtiquette=29)then
     begin
          PrintCodeBarre.ImageCodeBarre29.Enabled:=true;
          PrintCodeBarre.SousTitre29.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre29.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre29.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre29.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre29.Top:=PrintCodeBarre.ImageCodeBarre29.Top+PrintCodeBarre.ImageCodeBarre29.Height;
          PrintCodeBarre.SousTitre29.Caption:=SousTitre;
     end;

     if(NumEtiquette=30)then
     begin
          PrintCodeBarre.ImageCodeBarre30.Enabled:=true;
          PrintCodeBarre.SousTitre30.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre30.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre30.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre30.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre30.Top:=PrintCodeBarre.ImageCodeBarre30.Top+PrintCodeBarre.ImageCodeBarre30.Height;
          PrintCodeBarre.SousTitre30.Caption:=SousTitre;
     end;

     if(NumEtiquette=31)then
     begin
          PrintCodeBarre.ImageCodeBarre31.Enabled:=true;
          PrintCodeBarre.SousTitre31.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre31.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre31.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre31.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre31.Top:=PrintCodeBarre.ImageCodeBarre31.Top+PrintCodeBarre.ImageCodeBarre31.Height;
          PrintCodeBarre.SousTitre31.Caption:=SousTitre;
     end;

     if(NumEtiquette=32)then
     begin
          PrintCodeBarre.ImageCodeBarre32.Enabled:=true;
          PrintCodeBarre.SousTitre32.Enabled:=true;

          PrintCodeBarre.ImageCodeBarre32.Width:=ImageCodebarre.Width;
          PrintCodeBarre.ImageCodeBarre32.Height:=ImageCodebarre.Height;
          PrintCodeBarre.ImageCodeBarre32.Picture:=ImageCodebarre.Picture;
          PrintCodeBarre.SousTitre32.Top:=PrintCodeBarre.ImageCodeBarre32.Top+PrintCodeBarre.ImageCodeBarre32.Height;
          PrintCodeBarre.SousTitre32.Caption:=SousTitre;
     end;
end;

Procedure ChargerCodeBarre(Titre,CodeBarre,Soustitre:string);
begin
     FSEtiquettesCodeBarre.StringGrid1.RowCount:=2;
     FSEtiquettesCodeBarre.StringGrid1.Rows[1].Text:='';
     FSEtiquettesCodeBarre.StringGrid1.Cells[0,1]:=Titre;
     FSEtiquettesCodeBarre.StringGrid1.Cells[1,1]:=CodeBarre;
     FSEtiquettesCodeBarre.StringGrid1.Cells[2,1]:='';
     FSEtiquettesCodeBarre.StringGrid1.Cells[3,1]:='1';
     FSEtiquettesCodeBarre.StringGrid1.Cells[4,1]:=Soustitre;
     FSEtiquettesCodeBarre.StringGrid1.Row:=1;
     FSEtiquettesCodeBarre.StringGrid1Click(FSEtiquettesCodeBarre.StringGrid1);
end;

procedure TFSEtiquettesCodeBarre.Imprimer1Click(Sender: TObject);
var  index,NbrEtiquette:integer;
begin
     if(FSEtiquettesCodeBarre.RBTicketCodeBarre.Checked=true)then
     begin
          if(FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption<>'')then
          begin
               index:=strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption);
          end
          else
          begin
               if(FSEtiquettesCodeBarre.PrinterSetupDialog1.Execute)then
               begin
                    FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption:=inttostr(Printer.PrinterIndex);
                    EnregistrerSelectionImprimanteChecked;
                    FSEtiquettesCodeBarre.ImprimanteSelectionner.Caption:=Printer.Printers.Strings[strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption)];

                    index:=strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption);
               end;
          end;

          if index >= 0 then PrintCodeBareSpeciale.PrinterSettings.PrinterIndex := index
                        else showmessage('Erreur');

          if(FSEtiquettesCodeBarre.CodebarreTitre.Lines.Capacity=1)then
          begin
               PrintCodeBareSpeciale.ImageCodeBarre1.Top:=12;
               PrintCodeBareSpeciale.ImageCodeBarre1.Height:=62;
          end
          else
          begin
               PrintCodeBareSpeciale.ImageCodeBarre1.Top:=22;
               PrintCodeBareSpeciale.ImageCodeBarre1.Height:=52;
          end;

          PrintCodeBareSpeciale.Titre1.Lines.Text:=FSEtiquettesCodeBarre.StringGrid1.Cells[0,FSEtiquettesCodeBarre.StringGrid1.Row];     
          PrintCodeBareSpeciale.ImageCodeBarre1.Picture:=FSEtiquettesCodeBarre.ImageCodebarre.Picture;
          PrintCodeBareSpeciale.SousTitre1.Caption:=FSEtiquettesCodeBarre.StringGrid1.Cells[4,FSEtiquettesCodeBarre.StringGrid1.Row];

          for NbrEtiquette:=1 to FSEtiquettesCodeBarre.IncrimenteEditNbrCodeBare.Position do
          begin
               PrintCodeBareSpeciale.Print;
          end;
     end
     else
     begin
          showmessage('Veuillez voir l''apérçu avant imprission SVP !');
     end;
end;

procedure TFSEtiquettesCodeBarre.RBTicketCodeBarreClick(Sender: TObject);
begin
     FSEtiquettesCodeBarre.IncrimenteEditNbrCodeBare.Max:=100;

     FSEtiquettesCodeBarre.AfficheDisposition.Visible:=false;

     FSEtiquettesCodeBarre.ImprimanteSelectionner.Caption:=Printer.Printers.Strings[strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption)];
end;

procedure TFSEtiquettesCodeBarre.RBA4Click(Sender: TObject);
begin
     FSEtiquettesCodeBarre.IncrimenteEditNbrCodeBare.Max:=32;

     FSEtiquettesCodeBarre.AfficheDisposition.Visible:=true;

     FSEtiquettesCodeBarre.ImprimanteSelectionner.Caption:=Printer.Printers.Strings[strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBA4.Caption)];
end;
      
Procedure EnregistrerSelectionImprimanteChecked();
var  FichierTexte:TextFile;  AdresseFichierTexte,TexteLigne:string;
begin
     EnregistrementSelectionImprimanteChecked(FSEtiquettesCodeBarre.RBTicketCodeBarre.Name,FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption);
     EnregistrementSelectionImprimanteChecked(FSEtiquettesCodeBarre.RBA4.Name,FSEtiquettesCodeBarre.IndexImprimanteRBA4.Caption);

     FSEtiquettesCodeBarre.FichierMemo.Clear;

     OpenFParc(RParc);
     AdresseFichierTexte:=RParc.Parcours+'\'+'FRegistreSelectionImprimanteChecked.Txt';
     AssignFile(FichierTexte,AdresseFichierTexte);
     if FileExists(AdresseFichierTexte)then
     begin
          Reset(FichierTexte);

          while not eof(FichierTexte)do
          begin
               Readln(FichierTexte,TexteLigne);
               FSEtiquettesCodeBarre.FichierMemo.Lines.Add(TexteLigne)
          end;
          CloseFile(FichierTexte);
     end;
end;

Procedure ChargerSelectionImprimanteChecked;
var  FichierTexte:TextFile; AdresseFichierTexte,TexteLigne:string;
begin
     FSEtiquettesCodeBarre.FichierMemo.Clear;

     OpenFParc(RParc);
     AdresseFichierTexte:=RParc.Parcours+'\'+'FRegistreSelectionImprimanteChecked.Txt';
     AssignFile(FichierTexte,AdresseFichierTexte);
     if FileExists(AdresseFichierTexte)then
     begin
          Reset(FichierTexte);
          while not eof(FichierTexte)do
          begin
               Readln(FichierTexte,TexteLigne);
               FSEtiquettesCodeBarre.FichierMemo.Lines.Add(TexteLigne)
          end;
          CloseFile(FichierTexte);
     end;

     FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption:=FindDataSelectionImprimanteChecked(FSEtiquettesCodeBarre.RBTicketCodeBarre.Name);
     FSEtiquettesCodeBarre.IndexImprimanteRBA4.Caption:=FindDataSelectionImprimanteChecked(FSEtiquettesCodeBarre.RBA4.Name);

     FSEtiquettesCodeBarre.AutoriserEnregistrementSelectionImprimanteChecked.Checked:=true;
end;

Procedure EnregistrementSelectionImprimanteChecked(TitreOptionIn,DataOptionIn:string);
var  i:integer; FichierTexte:TextFile; AdresseFichierTexte,TexteLigne,TitreOptionTeste,DataOptionTeste:string;
     OKData:boolean;
begin
     if(TitreOptionIn='')or(DataOptionIn='')then Exit;

     FSEtiquettesCodeBarre.FichierMemo.Clear;

     OpenFParc(RParc);
     AdresseFichierTexte:=RParc.Parcours+'\'+'FRegistreSelectionImprimanteChecked.Txt';
     AssignFile(FichierTexte,AdresseFichierTexte);
     if FileExists(AdresseFichierTexte)then
     begin
          Reset(FichierTexte);

          while not eof(FichierTexte)do
          begin
               Readln(FichierTexte,TexteLigne);
               FSEtiquettesCodeBarre.FichierMemo.Lines.Add(TexteLigne);
          end;
          CloseFile(FichierTexte);
     end;

     i:=0;
     OKData:=false;
     while(i<=FSEtiquettesCodeBarre.FichierMemo.Lines.Capacity)and(OKData=false)do
     begin
          TexteLigne:=FSEtiquettesCodeBarre.FichierMemo.Lines.Strings[i];
          DataSelectionImprimanteChecked(TexteLigne,TitreOptionTeste,DataOptionTeste);
          if(TitreOptionTeste=TitreOptionIn)
          then OKData:=true
          else i:=i+1;
     end;
     
     TexteLigne:='§'+TitreOptionIn+'§'+DataOptionIn;

     if(OKData=true)then
     begin
          FSEtiquettesCodeBarre.FichierMemo.Lines.Delete(i);
          FSEtiquettesCodeBarre.FichierMemo.Lines.Insert(i,TexteLigne);
     end
     else
     begin
          FSEtiquettesCodeBarre.FichierMemo.Lines.Add(TexteLigne);
     end;

     FSEtiquettesCodeBarre.FichierMemo.Lines.SaveToFile(AdresseFichierTexte);
     
end;

Procedure DataSelectionImprimanteChecked(TexteLigne:string; var TitreOptionOut,DataOptionOut:string);
var  i,LTexte:integer;
begin
//  §TitreOption§Option
     TitreOptionOut:='';
     DataOptionOut:='';
     LTexte:=longueur(TexteLigne);

     if(LTexte>0)then
     begin
          if(TexteLigne[1]='§')then
          begin
               i:=2;
               while(i<=LTexte)and(TexteLigne[i]<>'§')do
               begin
                    TitreOptionOut:=TitreOptionOut+TexteLigne[i];
               i:=i+1;
               end;

               if(TexteLigne[i]='§')then
               begin
                    i:=i+1;
                    while(i<=LTexte)and(TexteLigne[i]<>'§')do
                    begin
                         DataOptionOut:=DataOptionOut+TexteLigne[i];
                    i:=i+1;
                    end;
               end;
          end;
     end;
end;

Function FindDataSelectionImprimanteChecked(TitreOptionIn:string):string;
var  FichierTexte:TextFile; AdresseFichierTexte,TexteLigne,TitreOptionTeste,DataOptionTeste:string;
     OKData:boolean;
begin
     FindDataSelectionImprimanteChecked:='';

     OpenFParc(RParc);
     AdresseFichierTexte:=RParc.Parcours+'\'+'FRegistreSelectionImprimanteChecked.Txt';
     AssignFile(FichierTexte,AdresseFichierTexte);
     if FileExists(AdresseFichierTexte)then
     begin
          Reset(FichierTexte);

          OKData:=false;
          while not eof(FichierTexte)and(OKData=false)do
          begin
               Readln(FichierTexte,TexteLigne);
               DataSelectionImprimanteChecked(TexteLigne,TitreOptionTeste,DataOptionTeste);
               if(TitreOptionTeste=TitreOptionIn)then
               begin
                    OKData:=true;
                    FindDataSelectionImprimanteChecked:=DataOptionTeste;
              end;
         end;
         CloseFile(FichierTexte);
     end;
end;

procedure TFSEtiquettesCodeBarre.BitBtn1Click(Sender: TObject);
begin
     if(FSEtiquettesCodeBarre.PrinterSetupDialog1.Execute)then
     begin
          if(FSEtiquettesCodeBarre.RBTicketCodeBarre.Checked)
          then
          begin
               FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption:=inttostr(Printer.PrinterIndex);
               EnregistrerSelectionImprimanteChecked;
               FSEtiquettesCodeBarre.ImprimanteSelectionner.Caption:=Printer.Printers.Strings[strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBTicketCodeBarre.Caption)];
          end;

          if(FSEtiquettesCodeBarre.RBA4.Checked)then
          begin
               FSEtiquettesCodeBarre.IndexImprimanteRBA4.Caption:=inttostr(Printer.PrinterIndex);
               EnregistrerSelectionImprimanteChecked;
               FSEtiquettesCodeBarre.ImprimanteSelectionner.Caption:=Printer.Printers.Strings[strtointeger(FSEtiquettesCodeBarre.IndexImprimanteRBA4.Caption)];
          end;
     end;
end;

 end.
