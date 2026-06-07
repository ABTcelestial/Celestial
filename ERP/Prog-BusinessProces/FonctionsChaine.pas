unit FonctionsChaine;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, Mask, FileCtrl,
    ShellCtrls, winsock, OleCtrls, DBOleCtl;


function droite(substr: string; s: string): string;
function DroiteDroite(substr: string; s: string): string;
function gauche(substr: string; s: string): string;
function NbSousChaine(substr: string; s: string): integer;
function NDroite(substr: string; s: string;n:integer): string;
function GaucheNDroite(substr: string; s: string;n:integer): string;
function translationbin(number:integer):string;
function translationhex(nomber:integer):string;
function translation(nomber,Mode:integer):string;

implementation

function droite(substr: string; s: string): string;
begin
  if pos(substr,s)=0 then result:='' else
    result:=copy(s, pos(substr, s)+length(substr), length(s)-pos(substr, s)+length(substr));
end;

function droiteDroite(substr: string; s: string): string;
{============================================================================}
{ fonction qui renvoie la sous chaine de caractère situè à droite de la sous }
{ chaine substr située la plus à droite                                      }
{ ex: si substr = '\' et S= 'truc\tr\essai.exe droiteDroite renvoie essai.exe}
{============================================================================}
begin
  Repeat
    S:=droite(substr,s);
  until pos(substr,s)=0;
  result:=S;
end;

function gauche(substr: string; s: string): string;
{============================================================================}
{ fonction qui renvoie la sous chaine de caractère situè à gauche de la sous }
{ chaine substr                                                              }
{ ex: si substr = '\' et S= 'truc\tr\essai.exe' gauche renvoie truc           }
{============================================================================}
begin
  if pos(substr,s)=0 then result:=s else
  result:=copy(s, 1, pos(substr, s)-1);
end;

function NbSousChaine(substr: string; s: string): integer;
{==================================================================================}
{ renvoie le nombre de fois que la sous chaine substr est présente dans la chaine S}
{==================================================================================}
begin
  result:=0;
  while pos(substr,s)<>0 do
  begin
    S:=droite(substr,s);
    inc(result);
  end;
end;

function NDroite(substr: string; s: string;n:integer): string;
{==============================================================================}
{ renvoie ce qui est à droite de la n ieme sous chaine substr de la chaine S   }
{==============================================================================}
var i:integer;
begin
  for i:=1 to n do
  begin
    S:=droite(substr,s);
  end;
  result:=S;
end;

function GaucheNDroite(substr: string; s: string;n:integer): string;
{==============================================================================}
{ renvoie ce qui est à gauche de la droite de la n ieme sous chaine substr     }
{ de la chaine S                                                               }
{ ex : GaucheNDroite('/','c:machin\truc\essai.exe',1) renvoie 'truc'           }
{ Permet d'extraire un à un les éléments d'une chaine séparés par un séparateur}
{==============================================================================}
var i:integer;
begin

  S:=S+substr;
  for i:=1 to n do
  begin
    S:=copy(s, pos(substr, s)+length(substr), length(s)-pos(substr, s)+length(substr));
  end;
  result:=copy(s, 1, pos(substr, s)-1);
end;

function translationbin(number:integer):string;
var reste:integer;
    binaire:string;
begin
  binaire:='';
  if number=0
  then translationbin:='0'
  else begin
    if number=1
    then translationbin:='1'
    else
    repeat
    reste:=number mod 2;
    number:=number div 2;
    binaire:=inttostr(reste)+binaire;
    until number=1;
    translationbin:='1'+binaire;
  end;
end;

function translationhex(nomber:integer):string;
var rest:integer;
    hexadecimal,reststr:string;
begin
  hexadecimal:='';
  if nomber=0
  then translationhex:='0'
  else begin
    if nomber=1
    then translationhex:='1'
    else
    repeat
    rest:=nomber mod 16;
    nomber:=nomber div 16;
    reststr:=inttostr(rest);
    if rest=15 then reststr:='F';
    if rest=14 then reststr:='E';
    if rest=13 then reststr:='D';
    if rest=12 then reststr:='C';
    if rest=11 then reststr:='B';
    if rest=10 then reststr:='A';
    hexadecimal:=reststr+hexadecimal;
    until nomber<16;
    if nomber=0
    then translationhex:=hexadecimal
    else translationhex:=inttostr(nomber)+hexadecimal;
    end;
end;

function translation(nomber,Mode:integer):string;
var ittl,rest:integer;  Alphabet:array[0..25]of char;
    NombreTranslater,reststr:string; AZ:char;
begin
     translation:='0';

     ittl:=0;
     for AZ:='A' to 'Z' do begin Alphabet[ittl]:=AZ; ittl:=ittl+1; end;

  NombreTranslater:='';
  if nomber=0
  then NombreTranslater:='0'
  else begin
    if nomber=1
    then NombreTranslater:='1'
    else
    repeat
    rest:=nomber mod Mode;
    nomber:=nomber div Mode;
    reststr:=inttostr(rest);

    reststr:=Alphabet[rest-10];

    NombreTranslater:=reststr+NombreTranslater;
    until nomber<Mode;
    if nomber=0
    then translation:=NombreTranslater
    else translation:=inttostr(nomber)+NombreTranslater;
    end;
end;


end.
