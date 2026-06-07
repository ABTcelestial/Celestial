unit UnitSvgEditIni;
//http://perso.wanadoo.fr/bardou/michel/

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,iniFiles,stdctrls,
  comctrls,Spin;

type
  TSvgEditIni = class(TComponent)
  private

  protected
    FormAOwner:TForm;
    FormOldClose:TCloseEvent;
    procedure LaFormClose(Sender: TObject; var Action: TCloseAction);
    function ExisteComposantSvgEditSurLaFiche(Fiche:TForm) :Boolean;
    procedure loaded; override;
  public
    Constructor Create(AOwner:TComponent); override;
    procedure ExecuteLecture;
    procedure ExecuteEcriture;
  published
    { Déclarations publiées}
  end;

procedure Register;

implementation


Constructor TSvgEditIni.Create(AOwner:TComponent);
begin
  Inherited create(AOwner);
  if not (csDesigning in ComponentState) then //si on est pas en mode conception
  begin
    if FormAOwner=Application.MainForm then
    begin
      FormAOwner:=TForm(AOwner);// la forme propriétaire de notre composant
      FormOldClose:=FormAOwner.OnClose; //sauvegarde de l'événement OnClose
      FormAOwner.OnClose:=LaFormClose; //idem pour OnClose
    end;
  end;
end;



procedure TSvgEditIni.loaded;
begin
  inherited;
  ExecuteLecture;
end;


procedure TSvgEditIni.LaFormClose(Sender: TObject; var Action: TCloseAction);
begin
  if assigned(FormOldClose)then FormOldClose(Sender,Action);
  ExecuteEcriture;
end;



function TSvgEditIni.ExisteComposantSvgEditSurLaFiche(Fiche:TForm) :Boolean;
var j:integer;
begin
  Result:=false;
  For j:=0 to Fiche.ComponentCount-1 do //pour chaque composant de la fiche
      if Fiche.Components[j] is TSvgEditIni then Result:=true;
end;

procedure TSvgEditIni.ExecuteLecture;
var FIni:TiniFile;
    NomFic:string;
    i,j:integer;
    Fiche:TForm;
begin
  NomFic:=ExtractFileName(application.ExeName);
  NomFic:=copy(NomFic,1,Length(NomFic)-4)+'.ini';
  FIni:=TiniFile.Create(NomFic);
  try
    For i:=0 to application.ComponentCount-1 do //pour chaque fiche de l'application
    begin
      if application.Components[i] is TForm then
      if ExisteComposantSvgEditSurLaFiche(TForm(application.Components[i])) then
      begin
        Fiche:=TForm(application.Components[i]);
        For j:=0 to Fiche.ComponentCount-1 do //pour chaque composant de la fiche
        begin
          Try
            if Fiche.Components[j] is TEdit then
                if FIni.ReadString(Fiche.name,Fiche.Components[j].Name,'%ù@à*£')<>'%ù@à*£' then
                   Tedit(Fiche.Components[j]).Text:=FIni.ReadString(Fiche.name,Fiche.Components[j].Name,'');
            if Fiche.Components[j] is TDateTimePicker then
                if FIni.ReadString(Fiche.name,Fiche.Components[j].Name,'%ù@à*£')<>'%ù@à*£' then
                   TDateTimePicker(Fiche.Components[j]).DateTime:=StrToDateTime( FIni.ReadString(Fiche.name,Fiche.Components[j].Name,''));
            if Fiche.Components[j] is TCheckBox then TCheckBox(Fiche.Components[j]).Checked:= FIni.ReadBool(Fiche.name,Fiche.Components[j].Name,true);
            if Fiche.Components[j] is TRadioButton then TRadioButton(Fiche.Components[j]).Checked:= FIni.ReadBool(Fiche.name,Fiche.Components[j].Name,true);
            if Fiche.Components[j] is TSpinEdit then TSpinEdit(Fiche.Components[j]).Value:= FIni.ReadInteger(Fiche.name,Fiche.Components[j].Name,0);
          Except
          end;
        end; //fin for composant de la fiche
      end;//fin si c'est une fiche
    end; //fin pour chaque fiche de l'application
  finally
    Fini.Free;
  end;
end;

procedure TSvgEditIni.ExecuteEcriture;
var FIni:TiniFile;
    NomFic:string;
    i,j:integer;
    Fiche:TForm;
begin
  NomFic:=ExtractFileName(application.ExeName);
  NomFic:=copy(NomFic,1,Length(NomFic)-4)+'.ini';
  FIni:=TiniFile.Create(NomFic);
  try
    For i:=0 to application.ComponentCount-1 do //pour chaque fiche de l'application
    begin
      if application.Components[i] is TForm then
            if ExisteComposantSvgEditSurLaFiche(TForm(application.Components[i])) then
      begin
        Fiche:=TForm(application.Components[i]);
        For j:=0 to Fiche.ComponentCount-1 do //pour chaque composant de la fiche
        begin
          Try
            if Fiche.Components[j] is TEdit           then FIni.WriteString(Fiche.name,Fiche.Components[j].Name,Tedit(Fiche.Components[j]).Text);
            if Fiche.Components[j] is TDateTimePicker then FIni.WriteString(Fiche.name,Fiche.Components[j].Name,DateTimeToStr(TDateTimePicker(Fiche.Components[j]).DateTime));
            if Fiche.Components[j] is TCheckBox       then FIni.WriteBool(Fiche.name,Fiche.Components[j].Name,TCheckBox(Fiche.Components[j]).Checked);
            if Fiche.Components[j] is TRadioButton    then FIni.WriteBool(Fiche.name,Fiche.Components[j].Name,TRadioButton(Fiche.Components[j]).Checked);
            if Fiche.Components[j] is TSpinEdit       then FIni.WriteInteger(Fiche.name,Fiche.Components[j].Name,TSpinEdit(Fiche.Components[j]).Value);
          Except
          end;
        end; //fin for composant de la fiche
      end;//fin si c'est une fiche
    end; //fin pour chaque fiche de l'application
  finally
    Fini.Free;
  end;
end;



procedure Register;
begin
  RegisterComponents('Perso', [TSvgEditIni]);
end;

end.
 