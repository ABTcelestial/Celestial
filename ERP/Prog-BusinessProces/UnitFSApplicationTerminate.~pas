unit UnitFSApplicationTerminate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ShellAPI;

type
  TFSApplicationTerminate = class(TForm)
    AfficheApplicationTerminate: TPanel;
    BitOK: TBitBtn;
    BitNon: TBitBtn;
    EditApplicationTerminate: TEdit;
    RBCodeFondateurParDefaut: TCheckBox;
    procedure BitOKClick(Sender: TObject);
    procedure BitNonClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSApplicationTerminate: TFSApplicationTerminate;

implementation

uses UnitInitialisation, UnitFSMenuPrincipal, UnitFSPublicationReseaux, UnitFSFicheSaisie, UnitFSParametresAvances;

{$R *.dfm}

procedure TFSApplicationTerminate.BitOKClick(Sender: TObject);
var  AdresseExecutionProces:string;
begin
     if(FSApplicationTerminate.EditApplicationTerminate.Text='Quitter')then
     begin
           if(FSMenuPrincipal.AfficheControleSoleDomiciliation.Visible=true)then
           begin
                if(FSMenuPrincipal.TypeAffichage.Caption='Affichage Automatique')then FSMenuPrincipal.TimerControleSoldeDomiciliation.Enabled:=false;
                if(FSMenuPrincipal.TypeAffichage.Caption='Affichage Commandé')then FSMenuPrincipal.TimerControleSoldeDomiciliation.Enabled:=true;
                FSMenuPrincipal.AfficheControleSoleDomiciliation.Visible:=false;
                FSMenuPrincipal.BorderIcons:=[biSystemMenu,biMinimize,biMaximize];
           end
           else
           begin
                if(FunctionTravauxConnexionReseaux=true)
                and(FunctionActiverPublicationReseaux=true)then
                begin
                     if nonoui('Publier dans le réseaux !')=true then
                     begin
                          FSPublicationReseaux.Show;
                          FormeAvantPlan(FSMenuPrincipal,FSPublicationReseaux,true);
                     end;
                end;

                if(FindAllDataOptionsFicheSaisie(FSFicheSaisie.RBArretSystemealAarretProgramme.Name,'Oui')=true)then
                begin
                     Application.Terminate;
                     ArreterOrdinateur;
                end
                else Application.Terminate;
           end;
     end;

     if(FSApplicationTerminate.EditApplicationTerminate.Text='Redémarrer')then
     begin
          EnregistrerRedemarrerCodeFondateurParDefaut(FSApplicationTerminate.RBCodeFondateurParDefaut.Checked);
          FSApplicationTerminate.RBCodeFondateurParDefaut.Checked:=false;
          AdresseExecutionProces:=Application.ExeName;
          Application.Terminate;

          if(AdresseExecutionProces<>'')
          then ShellExecute(Handle,'Open',PChar(AdresseExecutionProces),nil,nil,SW_SHOWDEFAULT);
     end;
end;

procedure TFSApplicationTerminate.BitNonClick(Sender: TObject);
begin
     FSApplicationTerminate.RBCodeFondateurParDefaut.Checked:=false;
     Close;
end;

end.
