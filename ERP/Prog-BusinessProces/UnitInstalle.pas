unit UnitInstalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ShellCtrls, Buttons, ExtCtrls, Mask, Grids,
  ExtDlgs, API_LiberationProcessus,ShellAPI;

type
  TFSInstalle = class(TForm)
    PageControl1: TPageControl;
    PageParcoursEnregistrement: TTabSheet;
    SaveDialog1: TSaveDialog;
    PageControleRegistres: TTabSheet;
    PanelClef: TPanel;
    Bevel5: TBevel;
    Bevel1: TBevel;
    Bevel4: TBevel;
    Label4: TLabel;
    LabelFichierSauv: TLabel;
    LabelText1: TLabel;
    LabelText2: TLabel;
    LabelText3: TLabel;
    LabelText4: TLabel;
    LabelText5: TLabel;
    LabelText6: TLabel;
    LabelText7: TLabel;
    LabelText8: TLabel;
    LabelText9: TLabel;
    LabelText10: TLabel;
    LabelNomEnregistre2: TLabel;
    Label3: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    LabelISOAffiche: TImage;
    LogoAffiche: TImage;
    InfoNumSerie: TLabel;
    EditCodeAccer: TEdit;
    EditClef: TEdit;
    BitBtn6: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Panel2: TPanel;
    BitInsertEntite: TBitBtn;
    EditExercice: TEdit;
    TableauRegistres: TStringGrid;
    OuvrirFichier: TOpenDialog;
    TableauInfoRegistre: TStringGrid;
    BitBtn1: TBitBtn;
    Bevel2: TBevel;
    Label5: TLabel;
    Bevel3: TBevel;
    BitBtn2: TBitBtn;
    EditAdresseRegistre: TEdit;
    EditExerciceDuRegistre: TMaskEdit;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    Label6: TLabel;
    ExercicePublicationEntrante: TMaskEdit;
    Panel4: TPanel;
    Label7: TLabel;
    ExercicePublicationSortante: TMaskEdit;
    Panel5: TPanel;
    RBUtiliseExerciceLocalPourPublicationEntrante: TCheckBox;
    RBUtiliseExerciceLocalPourPublicationSortante: TCheckBox;
    Panel7: TPanel;
    RadioGroup1: TRadioGroup;
    RBRegistreInstallation: TRadioButton;
    RBAdresseIPMachine: TRadioButton;
    procedure BitBtn12Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure EditCodeAccerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauRegistresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure TableauRegistresClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitInsertEntiteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn13ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableauInfoRegistreClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSInstalle: TFSInstalle;

  Procedure ProcInsertEntite;

implementation

uses   UnitInitialisation, UnitFSMenuPrincipal, UnitFSGenerateurBase,
       UnitFSAttente, UnitFSPatienter, UnitFSParametresAvances;

var
         RParc:RInstalle;
         FParc:FInstalle;
         ParcInstalle:string100;

         RRegistre:REnregistrement;
         FRegistre:FEnregistrement;
         ChEnregistrement:string250;

         jj,mm:string[2];
         aa:string[4];
         dl:string[10];
         aai,i,j,k,l,m,n:integer;

{$R *.dfm}

procedure TFSInstalle.BitBtn12Click(Sender: TObject);
var  OK,Terminer:boolean;  i,R,m:integer;
     RReg:REnregistrement;
begin
end;

procedure TFSInstalle.Panel2Click(Sender: TObject);
begin
FSInstalle.TableauRegistres.Height:=0;
FSInstalle.EditCodeAccer.Text:='';
FSInstalle.EditCodeAccer.SetFocus;
end;

procedure TFSInstalle.EditCodeAccerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if(FSInstalle.EditCodeAccer.Text='000')then
    begin
         FSInstalle.EditCodeAccer.Text:='';
         FSInstalle.TableauRegistres.Height:=425;
         FSInstalle.BitInsertEntite.Visible:=true;
         FSInstalle.TableauRegistres.SetFocus;
    end;

    if(FSInstalle.EditCodeAccer.Text='a')
    or(FSInstalle.EditCodeAccer.Text='A')
    then
    begin
         FSInstalle.EditCodeAccer.Text:='';
         FSInstalle.EditExercice.Text:='';
         FSInstalle.EditExercice.SetFocus;
    end;

    if(FSInstalle.EditCodeAccer.Text='EFI'+inttostr(strtoint(datetostr(date)[1])+strtoint(datetostr(date)[2])))
    or(FSInstalle.EditCodeAccer.Text='efi'+inttostr(strtoint(datetostr(date)[1])+strtoint(datetostr(date)[2])))
    then
    begin
         FSInstalle.EditCodeAccer.Text:='';
         FSInstalle.EditClef.Text:='';
         FSInstalle.EditClef.SetFocus;
    end;

end;

procedure TFSInstalle.TableauRegistresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

begin
     if key=VK_INSERT then
     begin
          ProcInsertEntite;
     end;
end;

procedure TFSInstalle.BitBtn6Click(Sender: TObject);
begin
FSInstalle.Close;
end;

procedure TFSInstalle.TableauRegistresClick(Sender: TObject);
var  ChEnregistrement,Adresse:string;
begin
     FSInstalle.LabelNomEnregistre2.Caption:='Projet Séléctionné:  '+FSInstalle.TableauRegistres.Cells[1,FSInstalle.TableauRegistres.Row];
     ChEnregistrement:=FSInstalle.TableauRegistres.Cells[2,FSInstalle.TableauRegistres.Row];
     FSInstalle.EditExercice.Text:=FSInstalle.TableauRegistres.Cells[3,FSInstalle.TableauRegistres.Row];
     if Not FileExists(ChEnregistrement)then
     begin
          Showmessage('Veuillez vous enregistrer au pré de CDL.dewaylasa !');
          exit;
     end
     else
     begin
          assignfile(FParc,ChEnregistrement);
          reset(FParc);
          Seek(FParc,0);
          if not eof(FParc)then
          begin
               Read(FParc,RParc);
               FSInstalle.LabelFichierSauv.Caption:=RParc.Parcours+'.';
               FSInstalle.LabelText1.Caption:=RParc.Text1;
               FSInstalle.LabelText2.Caption:=RParc.Text2;
               FSInstalle.LabelText3.Caption:=RParc.Text3;
               FSInstalle.LabelText4.Caption:=RParc.Text4;
               FSInstalle.LabelText5.Caption:=RParc.Text5;
               FSInstalle.LabelText6.Caption:=RParc.Text6;
               FSInstalle.LabelText7.Caption:=RParc.Text7;
               FSInstalle.LabelText8.Caption:=RParc.Text8;
               FSInstalle.LabelText9.Caption:=RParc.Text9;
               FSInstalle.LabelText10.Caption:=RParc.Text10;

               if(RParc.NomLogo<>'')then
               begin
                    Adresse:=RParc.Parcours+'\'+Entreprise+RParc.NomLogo;
                    if FileExists(Adresse)then
                    begin
                         FSInstalle.LogoAffiche.Picture.LoadFromFile(Adresse);
                    end;
               end;

               if(RParc.NomLabel<>'')then
               begin
                    Adresse:=RParc.Parcours+'\'+Entreprise+RParc.NomLabel;
                    if FileExists(Adresse)then
                    begin
                         FSInstalle.LabelISOAffiche.Picture.LoadFromFile(Adresse);
                    end;
               end;
          end;
          CloseFile(FParc);
     end;
end;

procedure TFSInstalle.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);

FSInstalle.RBUtiliseExerciceLocalPourPublicationEntrante.Checked:=FunctionUtiliseExerciceLocalPourPublicationEntrante;
FSInstalle.RBUtiliseExerciceLocalPourPublicationSortante.Checked:=FunctionUtiliseExerciceLocalPourPublicationSortante;
end;

Procedure ProcInsertEntite;
begin
     i:=FSInstalle.TableauRegistres.Row;
     if FileExists('C:\WinBuss.dll')then
     begin
          assignfile(FRegistre,'C:\WinBuss.dll');
          reset(FRegistre);
          Seek(FRegistre,i);
          Read(FRegistre,RRegistre);
          if(AnsiUpperCase(RRegistre.Repertoire)=AnsiUpperCase(FSInstalle.TableauRegistres.Cells[1,FSInstalle.TableauRegistres.Row]))
          and(AnsiUpperCase(RRegistre.Adresse)=AnsiUpperCase(FSInstalle.TableauRegistres.Cells[2,FSInstalle.TableauRegistres.Row]))then
          begin
               RRegistre.Exercice:=FSInstalle.EditExercice.Text;
               Seek(FRegistre,i);
               Write(FRegistre,RRegistre);
               AfficherMessage('Ouverture du répertoire "'+RRegistre.Repertoire+'" sur l''exercice "'+RRegistre.Exercice+'"');

               if Not FileExists('C:\WinBus.File')then
               begin
                    assignfile(FRegistre,'C:\WinBus.File');
                    rewrite(FRegistre);
                    assignfile(FRegistre,'C:\WinBus.File');
                    reset(FRegistre);
                    Seek(FRegistre,0);
                    Write(FRegistre,RRegistre);
               end
               else
               begin
                    assignfile(FRegistre,'C:\WinBus.File');
                    reset(FRegistre);
                    Seek(FRegistre,0);
                    Write(FRegistre,RRegistre);
               end;
          end
          else
          begin
               AfficherMessage('Le répertoire sélectionné ne correspond pas au répertoire enregistré !');
          end;
     end
     else
     begin
          AfficherMessage('le regitre des répertoires Business n''éxiste pas !');
     end;

OpenFParc(RParc);

{*********************************************************************}
FSMenuPrincipal.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Menu Principal';
{*******************************************************************}

FSInstalle.LabelNomEnregistre2.Caption:='Projet ouvert:  '+RRegistre.Repertoire;

FSInstalle.LabelFichierSauv.Caption:=RParc.Parcours+'.';
FSInstalle.LabelText1.Caption:=RParc.Text1;
FSInstalle.LabelText2.Caption:=RParc.Text2;
FSInstalle.LabelText3.Caption:=RParc.Text3;
FSInstalle.LabelText4.Caption:=RParc.Text4;
FSInstalle.LabelText5.Caption:=RParc.Text5;
FSInstalle.LabelText6.Caption:=RParc.Text6;
FSInstalle.LabelText7.Caption:=RParc.Text7;
FSInstalle.LabelText8.Caption:=RParc.Text8;
FSInstalle.LabelText9.Caption:=RParc.Text9;
FSInstalle.LabelText10.Caption:=RParc.Text10;

FSInstalle.TableauRegistres.Height:=0;

FSMenuPrincipal.TimerCodeAcces.Enabled:=true;

FSMenuPrincipal.TimerSaisieFiches.Enabled:=true;

{FSMenuPrincipal.TimerControleSoldeDomiciliation.Enabled:=true;

IndiquerAdresseIPAuxClientReseaux('');
IndiquerSessionOuverteAuxClientReseaux;//indiquer l'exercice ouvert actuel
IndiquerListeFichierPartagerAuxClientsReseaux('','');// Procedure réseaux
IndiquerIdentificateurEntrepriseDansReseaux;
ListeAdresseDossierPartageReseaux(FSMenuPrincipal.TableauAdresseDossierPartageReseaux,true,true);// Contrôle connéctivité réseaux
}

FSInstalle.Close;
end;

procedure TFSInstalle.BitInsertEntiteClick(Sender: TObject);
begin
     ProcInsertEntite;
end;

procedure TFSInstalle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

procedure TFSInstalle.BitBtn13ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
     FSPatienter.RBPossibleAnnuler.Checked:=true;
     FSPatienter.RBChangeNomSiCollision.Checked:=true;
     FSPatienter.RBSansConfirmation.Checked:=false;
     FSPatienter.RBSansProgression.Checked:=false;

     OpenFParc(RParc);
     FSPatienter.EditAdresseSource.Text:=RParc.Parcours;

     FSInstalle.Savedialog1.FileName:=FSPatienter.EditAdresseSource.Text;
     If(FSInstalle.Savedialog1.Execute)then
     begin
          FSPatienter.EditAdresseCible.Text:=ExtractFileDir(FSInstalle.Savedialog1.FileName);
          FSPatienter.Show;
     end;
end;

procedure TFSInstalle.BitBtn1Click(Sender: TObject);
var  i,R:integer;
begin
     if(FSInstalle.RBRegistreInstallation.Checked=true)then
     begin
           FSInstalle.TableauInfoRegistre.ColCount:=4;
           FSInstalle.TableauInfoRegistre.Cols[0].Text:='P°';
           FSInstalle.TableauInfoRegistre.Cols[1].Text:='Adresse';
           FSInstalle.TableauInfoRegistre.Cols[2].Text:='Repertoire';
           FSInstalle.TableauInfoRegistre.Cols[3].Text:='Exercice';

           FSInstalle.TableauInfoRegistre.RowCount:=2;
           FSInstalle.TableauInfoRegistre.Rows[1].Text:='';

           R:=0;
           i:=0;
           if(FSInstalle.OuvrirFichier.Execute)then
           begin
                FSInstalle.EditAdresseRegistre.Text:=FSInstalle.OuvrirFichier.FileName;
                assignfile(FRegistre,FSInstalle.EditAdresseRegistre.Text);
                if FileExists(FSInstalle.EditAdresseRegistre.Text)then
                begin
                     reset(FRegistre);
                     Seek(FRegistre,0);
                     while not eof(FRegistre)do
                     begin
                          Read(FRegistre,RRegistre);

                          R:=R+1;
                          FSInstalle.TableauInfoRegistre.Rows[R].Text:=inttostr(i);
                          FSInstalle.TableauInfoRegistre.Cells[1,R]:=RRegistre.Adresse;
                          FSInstalle.TableauInfoRegistre.Cells[2,R]:=RRegistre.Repertoire;
                          FSInstalle.TableauInfoRegistre.Cells[3,R]:=RRegistre.Exercice;
                          i:=i+1;
                     end;
                     CloseFile(FRegistre);
                end;
           end;

           FSInstalle.EditExerciceDuRegistre.Text:=FSInstalle.TableauInfoRegistre.Cells[3,FSInstalle.TableauInfoRegistre.Row];
     end;

     if(FSInstalle.RBAdresseIPMachine.Checked=true)then
     begin
           FSInstalle.TableauInfoRegistre.ColCount:=7;
           FSInstalle.TableauInfoRegistre.Cols[0].Text:='N°';
           FSInstalle.TableauInfoRegistre.Cols[1].Text:='Nom Machine';
           FSInstalle.TableauInfoRegistre.Cols[2].Text:='Nom Utilisateur';
           FSInstalle.TableauInfoRegistre.Cols[3].Text:='Adresse IP';
           FSInstalle.TableauInfoRegistre.Cols[4].Text:='Nom Poste Reseaux Connexion';
           FSInstalle.TableauInfoRegistre.Cols[5].Text:='Date Publication';
           FSInstalle.TableauInfoRegistre.Cols[6].Text:='Heure Publication';

           FSInstalle.TableauInfoRegistre.RowCount:=2;
           FSInstalle.TableauInfoRegistre.Rows[1].Text:='';

           R:=0;
           if(FSInstalle.OuvrirFichier.Execute)then
           begin
                FSInstalle.EditAdresseRegistre.Text:=FSInstalle.OuvrirFichier.FileName;
                assignfile(FMayMachine,FSInstalle.EditAdresseRegistre.Text);
                if FileExists(FSInstalle.EditAdresseRegistre.Text)then
                begin
                     reset(FMayMachine);
                     Seek(FMayMachine,0);
                     while not eof(FMayMachine)do
                     begin
                          Read(FMayMachine,RMayMachine);

                          R:=R+1;
                          FSInstalle.TableauInfoRegistre.Rows[R].Text:=inttostr(R);
                          FSInstalle.TableauInfoRegistre.Cells[1,R]:=RMayMachine.NomMachine;
                          FSInstalle.TableauInfoRegistre.Cells[2,R]:=RMayMachine.NomUtilisateur;
                          FSInstalle.TableauInfoRegistre.Cells[3,R]:=RMayMachine.AdresseIP;
                          FSInstalle.TableauInfoRegistre.Cells[4,R]:=RMayMachine.NomPosteReseauxConnexion;
                          FSInstalle.TableauInfoRegistre.Cells[5,R]:=RMayMachine.DatePublication;
                          FSInstalle.TableauInfoRegistre.Cells[6,R]:=RMayMachine.HeurePublication;
                     end;
                     CloseFile(FMayMachine);
                end;
           end;

           FSInstalle.EditExerciceDuRegistre.Text:=FSInstalle.TableauInfoRegistre.Cells[5,FSInstalle.TableauInfoRegistre.Row]+' '+FSInstalle.TableauInfoRegistre.Cells[6,FSInstalle.TableauInfoRegistre.Row];
     end;
     
     if(R>0)then FSInstalle.TableauInfoRegistre.RowCount:=R+1
             else FSInstalle.TableauInfoRegistre.RowCount:=2;

     AjusterColWidth(FSInstalle.TableauInfoRegistre,'','');

end;

procedure TFSInstalle.BitBtn2Click(Sender: TObject);
var  i,R:integer;
begin
     if(FSInstalle.EditAdresseRegistre.Text<>'')then
     begin
          if(FSInstalle.EditExerciceDuRegistre.Text<>'')then
          begin
               assignfile(FRegistre,FSInstalle.EditAdresseRegistre.Text);
               if FileExists(FSInstalle.EditAdresseRegistre.Text)then
               begin
                    reset(FRegistre);
                    Seek(FRegistre,strtointeger(FSInstalle.TableauInfoRegistre.Cells[0,FSInstalle.TableauInfoRegistre.Row]));
                    if not eof(FRegistre)then
                    begin
                         Read(FRegistre,RRegistre);
                         RRegistre.Exercice:=FSInstalle.EditExerciceDuRegistre.Text;

                         Seek(FRegistre,strtointeger(FSInstalle.TableauInfoRegistre.Cells[0,FSInstalle.TableauInfoRegistre.Row]));
                         write(FRegistre,RRegistre);
                    end;
                    CloseFile(FRegistre);
               end;
          end;

          R:=0;
          i:=0;
          assignfile(FRegistre,FSInstalle.EditAdresseRegistre.Text);
          if FileExists(FSInstalle.EditAdresseRegistre.Text)then
          begin
               reset(FRegistre);
               Seek(FRegistre,0);
               while not eof(FRegistre)do
               begin
                    Read(FRegistre,RRegistre);

                    R:=R+1;
                    FSInstalle.TableauInfoRegistre.Cols[R].Text:=inttostr(i);
                    FSInstalle.TableauInfoRegistre.Cells[1,R]:=RRegistre.Adresse;
                    FSInstalle.TableauInfoRegistre.Cells[2,R]:=RRegistre.Repertoire;
                    FSInstalle.TableauInfoRegistre.Cells[3,R]:=RRegistre.Exercice;
                    i:=i+1;
               end;
               CloseFile(FRegistre);
          end;
     end;
end;

procedure TFSInstalle.TableauInfoRegistreClick(Sender: TObject);
begin
     if(FSInstalle.RBRegistreInstallation.Checked=true)then
     begin
          FSInstalle.EditExerciceDuRegistre.Text:=FSInstalle.TableauInfoRegistre.Cells[3,FSInstalle.TableauInfoRegistre.Row];

          if(FunctionUtiliseExerciceLocalPourPublicationEntrante=true)
          then FSInstalle.ExercicePublicationEntrante.Text:=ExerciceAnnee
          else FSInstalle.ExercicePublicationEntrante.Text:=FSInstalle.EditExerciceDuRegistre.Text;

          if(FunctionUtiliseExerciceLocalPourPublicationSortante=true)
          then FSInstalle.ExercicePublicationSortante.Text:=ExerciceAnnee
          else FSInstalle.ExercicePublicationSortante.Text:=FSInstalle.EditExerciceDuRegistre.Text;
     end;

     if(FSInstalle.RBAdresseIPMachine.Checked=true)then
     begin
          FSInstalle.EditExerciceDuRegistre.Text:=FSInstalle.TableauInfoRegistre.Cells[5,FSInstalle.TableauInfoRegistre.Row]+' '+FSInstalle.TableauInfoRegistre.Cells[6,FSInstalle.TableauInfoRegistre.Row];

          if(FunctionUtiliseExerciceLocalPourPublicationEntrante=true)
          then FSInstalle.ExercicePublicationEntrante.Text:=ExerciceAnnee
          else FSInstalle.ExercicePublicationEntrante.Text:=Midellaters(FSInstalle.EditExerciceDuRegistre.Text,7,10);

          if(FunctionUtiliseExerciceLocalPourPublicationSortante=true)
          then FSInstalle.ExercicePublicationSortante.Text:=ExerciceAnnee
          else FSInstalle.ExercicePublicationSortante.Text:=Midellaters(FSInstalle.EditExerciceDuRegistre.Text,7,10);
     end;

     
end;

procedure TFSInstalle.BitBtn3Click(Sender: TObject);
var  i,R:integer;
begin
     R:=0;
     i:=0;
     if(FSInstalle.EditAdresseRegistre.Text<>'')then
     begin
          assignfile(FRegistre,FSInstalle.EditAdresseRegistre.Text);
          if FileExists(FSInstalle.EditAdresseRegistre.Text)then
          begin
               reset(FRegistre);
               Seek(FRegistre,0);
               while not eof(FRegistre)do
               begin
                    Read(FRegistre,RRegistre);

                    R:=R+1;
                    FSInstalle.TableauInfoRegistre.Cols[R].Text:=inttostr(i);
                    FSInstalle.TableauInfoRegistre.Cells[1,R]:=RRegistre.Adresse;
                    FSInstalle.TableauInfoRegistre.Cells[2,R]:=RRegistre.Repertoire;
                    FSInstalle.TableauInfoRegistre.Cells[3,R]:=RRegistre.Exercice;
                    i:=i+1;
               end;
               CloseFile(FRegistre);
          end;
     end;
end;

end.
