unit UnitFSSauvegarderBaseDonnees;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ShellCtrls, StdCtrls, ExtCtrls, Buttons;

type
  TFSSauvegarderBaseDonnees = class(TForm)
    AfficheCibleSauvegarde: TPanel;
    Label5: TLabel;
    EditCible: TEdit;
    BitBtn1: TBitBtn;
    Cible: TShellListView;
    ListeCible: TShellTreeView;
    SaveDialog1: TSaveDialog;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    EditTypeRequette: TEdit;
    procedure ListeCibleMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CibleMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSSauvegarderBaseDonnees: TFSSauvegarderBaseDonnees;

implementation

uses UnitInitialisation, UnitFSPatienter, UnitFSMenuPrincipal;

{$R *.dfm}

procedure TFSSauvegarderBaseDonnees.ListeCibleMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     FSSauvegarderBaseDonnees.EditCible.Text:=FSSauvegarderBaseDonnees.ListeCible.Path;
end;

procedure TFSSauvegarderBaseDonnees.CibleMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     if(FSSauvegarderBaseDonnees.Cible.ItemIndex>=0)then
     begin
          FSSauvegarderBaseDonnees.EditCible.Text:=FSSauvegarderBaseDonnees.Cible.Folders[FSSauvegarderBaseDonnees.Cible.ItemIndex].PathName;
     end;
end;

procedure TFSSauvegarderBaseDonnees.BitBtn1Click(Sender: TObject);
var  AdresseSource,AdresseCible,Separator:string; RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression:boolean; AdresseProces:string;
begin
     FSSauvegarderBaseDonnees.Close;
     
     if(FSSauvegarderBaseDonnees.EditTypeRequette.Text='Emregistrement')then
     begin
           RBPossibleAnnuler:=true;           //Préserver la possibilité d'annuler l'opération.
           RBChangeNomSiCollision:=false; //Si le fichier cible existe déjà, il le copie sous un nom du style copie (1) de..
           RBSansConfirmation:=false;         //Pas de demande de confirmation
           RBSansProgression:=false;           //Ne pas voir la progression se faire (On le la voit que pour les opérations longues)

           OpenFParc(RParc);
           AdresseSource:=RParc.Parcours;
           AdresseCible:=FSSauvegarderBaseDonnees.EditCible.Text;
           if(lastlaters(AdresseCible,1)='\')
           then Separator:=''
           else Separator:='\';

           if(AdresseSource<>AdresseCible+Separator+ExtractFileName(AdresseSource))then
           begin
                if(not DirectoryExists(AdresseCible+Separator+ExtractFileName(AdresseSource)))then
                begin
                     if(nonoui('voulez vous copier dans '+AdresseCible))then
                     begin
                          ProcCopierFichier(AdresseSource,AdresseCible,Handle,RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression)
                     end;
                end
                else
                begin
                     if(RBChangeNomSiCollision=true)then
                     begin
                          if(nonoui('La base de données '+AdresseCible+Separator+ExtractFileName(AdresseSource)+' existe déjà, voulez vous enregistré une autre copie !')=true)then
                          begin
                               ProcCopierFichier(AdresseSource,AdresseCible,Handle,RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression)
                          end;
                     end
                     else
                     begin
                          if(nonoui('La base de données '+AdresseCible+Separator+ExtractFileName(AdresseSource)+' existe déjà, voulez vous la remplacer !')=true)then
                          begin
                               ProcCopierFichier(AdresseSource,AdresseCible,Handle,RBPossibleAnnuler,RBChangeNomSiCollision,RBSansConfirmation,RBSansProgression)
                          end;
                     end;
                end;
           end
           else
           begin
                showmessage('Copie impossible pour la même adresse !');
           end;
     end;

     if(FSSauvegarderBaseDonnees.EditTypeRequette.Text='Publication')then
     begin
          PublierDansUnDossier(FSSauvegarderBaseDonnees.EditCible.Text,true);
     end;
end;

procedure TFSSauvegarderBaseDonnees.BitBtn2Click(Sender: TObject);
begin
     FSPatienter.RBPossibleAnnuler.Checked:=true;
     FSPatienter.RBChangeNomSiCollision.Checked:=true;
     FSPatienter.RBSansConfirmation.Checked:=false;
     FSPatienter.RBSansProgression.Checked:=false;

     OpenFParc(RParc);
     FSPatienter.EditAdresseSource.Text:=RParc.Parcours;

     FSSauvegarderBaseDonnees.Savedialog1.FileName:=FSPatienter.EditAdresseSource.Text;
     If(FSSauvegarderBaseDonnees.Savedialog1.Execute)then
     begin
          FSPatienter.EditAdresseCible.Text:=ExtractFileDir(FSSauvegarderBaseDonnees.Savedialog1.FileName);

          if(FSPatienter.EditAdresseSource.Text<>FSPatienter.EditAdresseCible.Text)then
          begin
               FSPatienter.Show;
          end
          else
          begin
               showmessage('Copie impossible pour la même adresse !');
          end;
     end;
end;

procedure TFSSauvegarderBaseDonnees.FormShow(Sender: TObject);
begin
    FSSauvegarderBaseDonnees.ListeCible.ShowLines:=true;
end;

end.
