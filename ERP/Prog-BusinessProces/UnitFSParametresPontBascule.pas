unit UnitFSParametresPontBascule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TFSParametresPontBascule = class(TForm)
    PageControl1: TPageControl;
    PageTareVehicule: TTabSheet;
    PageResponsablePrelevement: TTabSheet;
    TableauVehiculePrelevementTare: TStringGrid;
    TableauResponsablePrelevement: TStringGrid;
    OperationsVehiculePrelevementTare: TPanel;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    BitOperationsVehiculePrelevementTare: TBitBtn;
    EditMatriculeResponsablePrelevement: TEdit;
    Label1: TLabel;
    Bevel2: TBevel;
    Label2: TLabel;
    EditTypeVehiculePrelevement: TEdit;
    Label3: TLabel;
    EditTonageVehiculePrelevement: TEdit;
    Label4: TLabel;
    EditCodeResponsablePrelevement: TEdit;
    Label5: TLabel;
    EditNomResponsablePrelevement: TEdit;
    EditPrenomResponsablePrelevement: TEdit;
    Label6: TLabel;
    EditIndiceInialPontBascule: TEdit;
    Label7: TLabel;
    OperationsResponsablePrelevement: TPanel;
    Bevel3: TBevel;
    BitBtn2: TBitBtn;
    BitOperationsResponsablePrelevement: TBitBtn;
    Bevel4: TBevel;
    EditCodeResponsablePrelevementGenerateur: TEdit;
    EditNomResponsablePrelevementGenerateur: TEdit;
    EditPrenomResponsablePrelevementGenerateur: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    TableauRechercheChauffeur: TStringGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure TableauVehiculePrelevementTareClick(Sender: TObject);
    procedure BitOperationsVehiculePrelevementTareClick(Sender: TObject);
    procedure TableauVehiculePrelevementTareKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditMatriculeResponsablePrelevementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditTypeVehiculePrelevementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditTonageVehiculePrelevementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditCodeResponsablePrelevementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditNomResponsablePrelevementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditPrenomResponsablePrelevementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditIndiceInialPontBasculeKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure TableauResponsablePrelevementClick(Sender: TObject);
    procedure TableauResponsablePrelevementKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditCodeResponsablePrelevementGenerateurKeyDown(
      Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditNomResponsablePrelevementGenerateurKeyDown(
      Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditPrenomResponsablePrelevementGenerateurKeyDown(
      Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitOperationsResponsablePrelevementClick(Sender: TObject);
    procedure PageResponsablePrelevementShow(Sender: TObject);
    procedure EditNomResponsablePrelevementKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditNomResponsablePrelevementEnter(Sender: TObject);
    procedure TableauRechercheChauffeurKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSParametresPontBascule: TFSParametresPontBascule;

  Procedure ListeVehiculePrelevementTare(TableauVehiculePrelevementTare:TStringGrid);
  Procedure ListeResponsablePrelevement(TableauResponsablePrelevement:TStringGrid; CodeResponsablePrelevement,NomResponsablePrelevement,PrenomResponsablePrelevement:string; RBRechercheMotCle:boolean);
  Function NewCodeResponsablePrelevement:string;
  Procedure NouveauChauffeur(CodeResponsablePrelevement,NomResponsablePrelevement,PrenomResponsablePrelevement:string);
  Procedure NouveauVehiculePontBascule(MatriculeResponsablePrelevement,TypeVehiculePrelevement,TonageVehiculePrelevement,CodeResponsablePrelevement,NomResponsablePrelevement,PrenomResponsablePrelevement,IndiceInialPontBascule:string);

implementation

Uses UnitInitialisation, UnitSuppression;

{$R *.dfm}

procedure TFSParametresPontBascule.BitBtn1Click(Sender: TObject);
begin
     FSParametresPontBascule.OperationsVehiculePrelevementTare.Visible:=false;
     FSParametresPontBascule.TableauRechercheChauffeur.Visible:=false;
end;

procedure TFSParametresPontBascule.TableauVehiculePrelevementTareClick(
  Sender: TObject);
begin
     FSParametresPontBascule.OperationsVehiculePrelevementTare.Visible:=false;
     FSParametresPontBascule.TableauRechercheChauffeur.Visible:=false;
end;

procedure TFSParametresPontBascule.BitOperationsVehiculePrelevementTareClick(Sender: TObject);
var  i,iSelect,RExistant,RSupprimer,RSauvgarder:integer;  OKVehicule:boolean;
begin
     if(FSParametresPontBascule.BitOperationsVehiculePrelevementTare.Caption='Valider')or(FSParametresPontBascule.BitOperationsVehiculePrelevementTare.Caption='Modifier')then
     begin
          TypeProces:='Business';   FichierConcerne:='FVehiculePrelevementTare';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
          end;

          ChVehiculePrelevementTare:=Adresse;
          assignfile(FVehiculePrelevementTare,ChVehiculePrelevementTare);
          if FileExists(ChVehiculePrelevementTare)then
          Reset(FVehiculePrelevementTare)
          else Rewrite(FVehiculePrelevementTare); //Création du fichier FVehiculePrelevementTare
          Seek(FVehiculePrelevementTare,0);
          OKVehicule:=false;
          i:=0;
          iSelect:=i;
          while not eof(FVehiculePrelevementTare)and(OKVehicule=false)do
          begin
               read(FVehiculePrelevementTare,RVehiculePrelevementTare);

               if(RVehiculePrelevementTare.MatriculeResponsablePrelevement=FSParametresPontBascule.EditMatriculeResponsablePrelevement.Text)then
               begin
                    OKVehicule:=true;
                    iSelect:=i;
               end;
          i:=i+1;
          end;

          if(OKVehicule=true)then
          begin
               if(FSParametresPontBascule.BitOperationsVehiculePrelevementTare.Caption='Valider')then
               begin
                    showmessage('Le matricule existe; Veillez vérifier vos données SVP !');
                    FSParametresPontBascule.EditMatriculeResponsablePrelevement.SetFocus;
                    Exit;
               end
               else i:=iSelect;
          end;

          RVehiculePrelevementTare.MatriculeResponsablePrelevement:=FSParametresPontBascule.EditMatriculeResponsablePrelevement.Text;
          RVehiculePrelevementTare.TypeVehiculePrelevement:=FSParametresPontBascule.EditTypeVehiculePrelevement.Text;
          RVehiculePrelevementTare.TonageVehiculePrelevement:=FSParametresPontBascule.EditTonageVehiculePrelevement.Text;
          RVehiculePrelevementTare.CodeResponsablePrelevement:=FSParametresPontBascule.EditCodeResponsablePrelevement.Text;
          RVehiculePrelevementTare.NomResponsablePrelevement:=FSParametresPontBascule.EditNomResponsablePrelevement.Text;
          RVehiculePrelevementTare.PrenomResponsablePrelevement:=FSParametresPontBascule.EditPrenomResponsablePrelevement.Text;
          RVehiculePrelevementTare.IndiceInialPontBascule:=strtoreal(FSParametresPontBascule.EditIndiceInialPontBascule.Text);
          Seek(FVehiculePrelevementTare,i);
          Write(FVehiculePrelevementTare,RVehiculePrelevementTare);

          CloseFile(FVehiculePrelevementTare);

          NouveauChauffeur(FSParametresPontBascule.EditCodeResponsablePrelevement.Text,FSParametresPontBascule.EditNomResponsablePrelevement.Text,FSParametresPontBascule.EditPrenomResponsablePrelevement.Text);
     end;
                                                                              
     if(FSParametresPontBascule.BitOperationsVehiculePrelevementTare.Caption='Supprimer')then
     begin
          SupprimerFVehiculePrelevementTare(FSParametresPontBascule.EditMatriculeResponsablePrelevement.Text,RExistant,RSupprimer,RSauvgarder);
     end;

     ListeVehiculePrelevementTare(FSParametresPontBascule.TableauVehiculePrelevementTare);

     FSParametresPontBascule.OperationsVehiculePrelevementTare.Visible:=false;

     FSParametresPontBascule.TableauVehiculePrelevementTare.SetFocus;
end;

procedure TFSParametresPontBascule.TableauVehiculePrelevementTareKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['n','N']then
     begin
          FSParametresPontBascule.OperationsVehiculePrelevementTare.Visible:=true;
          FSParametresPontBascule.BitOperationsVehiculePrelevementTare.Kind:=bkAll;
          FSParametresPontBascule.BitOperationsVehiculePrelevementTare.Caption:='Valider';

          FSParametresPontBascule.EditMatriculeResponsablePrelevement.Text:='';
          FSParametresPontBascule.EditTypeVehiculePrelevement.Text:='';
          FSParametresPontBascule.EditTonageVehiculePrelevement.Text:='';
          FSParametresPontBascule.EditCodeResponsablePrelevement.Text:='';
          FSParametresPontBascule.EditNomResponsablePrelevement.Text:='';
          FSParametresPontBascule.EditPrenomResponsablePrelevement.Text:='';
          FSParametresPontBascule.EditIndiceInialPontBascule.Text:='';

          FSParametresPontBascule.EditMatriculeResponsablePrelevement.SetFocus;
     end;

     if key in['m','M']then
     begin
          FSParametresPontBascule.OperationsVehiculePrelevementTare.Visible:=true;
          FSParametresPontBascule.BitOperationsVehiculePrelevementTare.Kind:=bkAll;
          FSParametresPontBascule.BitOperationsVehiculePrelevementTare.Caption:='Modifier';

          FSParametresPontBascule.EditMatriculeResponsablePrelevement.Text:=FSParametresPontBascule.TableauVehiculePrelevementTare.Cells[1,FSParametresPontBascule.TableauVehiculePrelevementTare.Row];
          FSParametresPontBascule.EditTypeVehiculePrelevement.Text:=FSParametresPontBascule.TableauVehiculePrelevementTare.Cells[2,FSParametresPontBascule.TableauVehiculePrelevementTare.Row];
          FSParametresPontBascule.EditTonageVehiculePrelevement.Text:=FSParametresPontBascule.TableauVehiculePrelevementTare.Cells[3,FSParametresPontBascule.TableauVehiculePrelevementTare.Row];
          FSParametresPontBascule.EditCodeResponsablePrelevement.Text:=FSParametresPontBascule.TableauVehiculePrelevementTare.Cells[4,FSParametresPontBascule.TableauVehiculePrelevementTare.Row];
          FSParametresPontBascule.EditNomResponsablePrelevement.Text:=FSParametresPontBascule.TableauVehiculePrelevementTare.Cells[5,FSParametresPontBascule.TableauVehiculePrelevementTare.Row];
          FSParametresPontBascule.EditPrenomResponsablePrelevement.Text:=FSParametresPontBascule.TableauVehiculePrelevementTare.Cells[6,FSParametresPontBascule.TableauVehiculePrelevementTare.Row];
          FSParametresPontBascule.EditIndiceInialPontBascule.Text:=FSParametresPontBascule.TableauVehiculePrelevementTare.Cells[7,FSParametresPontBascule.TableauVehiculePrelevementTare.Row];

          FSParametresPontBascule.EditMatriculeResponsablePrelevement.SetFocus;
     end;

     if key in['s','S']then
     begin
          FSParametresPontBascule.OperationsVehiculePrelevementTare.Visible:=true;
          FSParametresPontBascule.BitOperationsVehiculePrelevementTare.Kind:=bkCancel;
          FSParametresPontBascule.BitOperationsVehiculePrelevementTare.Caption:='Supprimer';

          FSParametresPontBascule.EditMatriculeResponsablePrelevement.Text:=FSParametresPontBascule.TableauVehiculePrelevementTare.Cells[1,FSParametresPontBascule.TableauVehiculePrelevementTare.Row];
          FSParametresPontBascule.EditTypeVehiculePrelevement.Text:=FSParametresPontBascule.TableauVehiculePrelevementTare.Cells[2,FSParametresPontBascule.TableauVehiculePrelevementTare.Row];
          FSParametresPontBascule.EditTonageVehiculePrelevement.Text:=FSParametresPontBascule.TableauVehiculePrelevementTare.Cells[3,FSParametresPontBascule.TableauVehiculePrelevementTare.Row];
          FSParametresPontBascule.EditCodeResponsablePrelevement.Text:=FSParametresPontBascule.TableauVehiculePrelevementTare.Cells[4,FSParametresPontBascule.TableauVehiculePrelevementTare.Row];
          FSParametresPontBascule.EditNomResponsablePrelevement.Text:=FSParametresPontBascule.TableauVehiculePrelevementTare.Cells[5,FSParametresPontBascule.TableauVehiculePrelevementTare.Row];
          FSParametresPontBascule.EditPrenomResponsablePrelevement.Text:=FSParametresPontBascule.TableauVehiculePrelevementTare.Cells[6,FSParametresPontBascule.TableauVehiculePrelevementTare.Row];
          FSParametresPontBascule.EditIndiceInialPontBascule.Text:=FSParametresPontBascule.TableauVehiculePrelevementTare.Cells[7,FSParametresPontBascule.TableauVehiculePrelevementTare.Row];

          FSParametresPontBascule.BitOperationsVehiculePrelevementTare.SetFocus;;
     end;
end;

procedure TFSParametresPontBascule.EditMatriculeResponsablePrelevementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresPontBascule.EditTypeVehiculePrelevement.SetFocus;
     end;
end;

procedure TFSParametresPontBascule.EditTypeVehiculePrelevementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresPontBascule.EditTonageVehiculePrelevement.SetFocus;
     end;
end;

procedure TFSParametresPontBascule.EditTonageVehiculePrelevementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresPontBascule.EditCodeResponsablePrelevement.SetFocus;
     end;
end;

procedure TFSParametresPontBascule.EditCodeResponsablePrelevementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresPontBascule.EditNomResponsablePrelevement.SetFocus;
     end;
end;

procedure TFSParametresPontBascule.EditNomResponsablePrelevementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(FSParametresPontBascule.TableauRechercheChauffeur.Visible=true)
          then FSParametresPontBascule.TableauRechercheChauffeur.SetFocus
          else FSParametresPontBascule.EditPrenomResponsablePrelevement.SetFocus;
     end;
end;

procedure TFSParametresPontBascule.EditPrenomResponsablePrelevementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresPontBascule.EditIndiceInialPontBascule.SetFocus;
     end;
end;

procedure TFSParametresPontBascule.EditIndiceInialPontBasculeKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresPontBascule.BitOperationsVehiculePrelevementTare.SetFocus;
     end;
end;

Procedure ListeVehiculePrelevementTare(TableauVehiculePrelevementTare:TStringGrid);
var  R:integer;  OKVehicule:boolean;
begin
     TableauVehiculePrelevementTare.ColCount:=8;
     TableauVehiculePrelevementTare.Cols[0].Text:='N°';
     TableauVehiculePrelevementTare.Cols[1].Text:='Matrucule';
     TableauVehiculePrelevementTare.Cols[2].Text:='Type';
     TableauVehiculePrelevementTare.Cols[3].Text:='Tonage "M3"';
     TableauVehiculePrelevementTare.Cols[4].Text:='Code Chauffeur';
     TableauVehiculePrelevementTare.Cols[5].Text:='Nom Chauffeur';
     TableauVehiculePrelevementTare.Cols[6].Text:='Prénom Chauffeur';
     TableauVehiculePrelevementTare.Cols[7].Text:='Tare';

     TableauVehiculePrelevementTare.RowCount:=2;
     TableauVehiculePrelevementTare.Rows[1].Text:='';

     TypeProces:='Business';   FichierConcerne:='FVehiculePrelevementTare';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChVehiculePrelevementTare:=Adresse;
     assignfile(FVehiculePrelevementTare,ChVehiculePrelevementTare);
     if FileExists(ChVehiculePrelevementTare)then
     Reset(FVehiculePrelevementTare)
     else Rewrite(FVehiculePrelevementTare); //Création du fichier FVehiculePrelevementTare
     Seek(FVehiculePrelevementTare,0);
     R:=0;
     while not eof(FVehiculePrelevementTare)do
     begin
          read(FVehiculePrelevementTare,RVehiculePrelevementTare);

          OKVehicule:=true;

          if(OKVehicule=true)then
          begin
               R:=R+1;
               TableauVehiculePrelevementTare.Rows[R].Text:=inttostr(R);
               TableauVehiculePrelevementTare.Cells[1,R]:=RVehiculePrelevementTare.MatriculeResponsablePrelevement;
               TableauVehiculePrelevementTare.Cells[2,R]:=RVehiculePrelevementTare.TypeVehiculePrelevement;
               TableauVehiculePrelevementTare.Cells[3,R]:=RVehiculePrelevementTare.TonageVehiculePrelevement;
               TableauVehiculePrelevementTare.Cells[4,R]:=RVehiculePrelevementTare.CodeResponsablePrelevement;
               TableauVehiculePrelevementTare.Cells[5,R]:=RVehiculePrelevementTare.NomResponsablePrelevement;
               TableauVehiculePrelevementTare.Cells[6,R]:=RVehiculePrelevementTare.PrenomResponsablePrelevement;
               TableauVehiculePrelevementTare.Cells[7,R]:=Vergule(floattostr(RVehiculePrelevementTare.IndiceInialPontBascule),'2','C','');
          end;
     end;
     CloseFile(FVehiculePrelevementTare);

     if(R>0)then TableauVehiculePrelevementTare.RowCount:=R+1
            else TableauVehiculePrelevementTare.RowCount:=2;

     AjusterColWidth(TableauVehiculePrelevementTare,'','');
end;

procedure TFSParametresPontBascule.FormShow(Sender: TObject);
begin
     ListeVehiculePrelevementTare(FSParametresPontBascule.TableauVehiculePrelevementTare);
end;

procedure TFSParametresPontBascule.TableauResponsablePrelevementClick(
  Sender: TObject);
begin
     FSParametresPontBascule.OperationsResponsablePrelevement.Visible:=false;
end;

procedure TFSParametresPontBascule.TableauResponsablePrelevementKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key in['n','N']then
     begin
          FSParametresPontBascule.OperationsResponsablePrelevement.Visible:=true;
          FSParametresPontBascule.BitOperationsResponsablePrelevement.Kind:=bkAll;
          FSParametresPontBascule.BitOperationsResponsablePrelevement.Caption:='Valider';

          FSParametresPontBascule.EditCodeResponsablePrelevementGenerateur.Text:=NewCodeResponsablePrelevement;
          FSParametresPontBascule.EditNomResponsablePrelevementGenerateur.Text:='';
          FSParametresPontBascule.EditPrenomResponsablePrelevementGenerateur.Text:='';

          FSParametresPontBascule.EditCodeResponsablePrelevementGenerateur.SetFocus;
     end;

     if key in['m','M']then
     begin
          FSParametresPontBascule.OperationsResponsablePrelevement.Visible:=true;
          FSParametresPontBascule.BitOperationsResponsablePrelevement.Kind:=bkAll;
          FSParametresPontBascule.BitOperationsResponsablePrelevement.Caption:='Valider';

          FSParametresPontBascule.EditCodeResponsablePrelevementGenerateur.Text:=FSParametresPontBascule.TableauResponsablePrelevement.Cells[1,FSParametresPontBascule.TableauResponsablePrelevement.Row];
          FSParametresPontBascule.EditNomResponsablePrelevementGenerateur.Text:=FSParametresPontBascule.TableauResponsablePrelevement.Cells[2,FSParametresPontBascule.TableauResponsablePrelevement.Row];
          FSParametresPontBascule.EditPrenomResponsablePrelevementGenerateur.Text:=FSParametresPontBascule.TableauResponsablePrelevement.Cells[3,FSParametresPontBascule.TableauResponsablePrelevement.Row];

          FSParametresPontBascule.EditCodeResponsablePrelevementGenerateur.SetFocus;
     end;

     if key in['s','S']then
     begin
          FSParametresPontBascule.OperationsResponsablePrelevement.Visible:=true;
          FSParametresPontBascule.BitOperationsResponsablePrelevement.Kind:=bkCancel;
          FSParametresPontBascule.BitOperationsResponsablePrelevement.Caption:='Supprimer';

          FSParametresPontBascule.EditCodeResponsablePrelevementGenerateur.Text:=FSParametresPontBascule.TableauResponsablePrelevement.Cells[1,FSParametresPontBascule.TableauResponsablePrelevement.Row];
          FSParametresPontBascule.EditNomResponsablePrelevementGenerateur.Text:=FSParametresPontBascule.TableauResponsablePrelevement.Cells[2,FSParametresPontBascule.TableauResponsablePrelevement.Row];
          FSParametresPontBascule.EditPrenomResponsablePrelevementGenerateur.Text:=FSParametresPontBascule.TableauResponsablePrelevement.Cells[3,FSParametresPontBascule.TableauResponsablePrelevement.Row];

          FSParametresPontBascule.BitOperationsResponsablePrelevement.SetFocus;;
     end;
end;

procedure TFSParametresPontBascule.EditCodeResponsablePrelevementGenerateurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresPontBascule.EditNomResponsablePrelevementGenerateur.SetFocus;
     end;
end;

procedure TFSParametresPontBascule.EditNomResponsablePrelevementGenerateurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresPontBascule.EditPrenomResponsablePrelevementGenerateur.SetFocus;
     end;
end;

procedure TFSParametresPontBascule.EditPrenomResponsablePrelevementGenerateurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSParametresPontBascule.BitOperationsResponsablePrelevement.SetFocus;
     end;
end;

procedure TFSParametresPontBascule.BitOperationsResponsablePrelevementClick(
  Sender: TObject);
var  i,iSelect,RExistant,RSupprimer,RSauvgarder:integer;  OKChauffer:boolean;
begin
     if(FSParametresPontBascule.BitOperationsResponsablePrelevement.Caption='Valider')then
     begin
          TypeProces:='Business';   FichierConcerne:='FResponsablePrelevement';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
          end;

          ChResponsablePrelevement:=Adresse;
          assignfile(FResponsablePrelevement,ChResponsablePrelevement);
          if FileExists(ChResponsablePrelevement)then
          Reset(FResponsablePrelevement)
          else Rewrite(FResponsablePrelevement); //Création du fichier FResponsablePrelevement
          Seek(FResponsablePrelevement,0);
          OKChauffer:=false;
          i:=0;
          iSelect:=i;
          while not eof(FResponsablePrelevement)and(OKChauffer=false)do
          begin
               read(FResponsablePrelevement,RResponsablePrelevement);

               if(RResponsablePrelevement.CodeResponsablePrelevement=FSParametresPontBascule.EditCodeResponsablePrelevementGenerateur.Text)then
               begin
                    OKChauffer:=true;
                    iSelect:=i;
               end;
          i:=i+1;
          end;

          if(OKChauffer=true)then i:=iSelect;

          RResponsablePrelevement.CodeResponsablePrelevement:=FSParametresPontBascule.EditCodeResponsablePrelevementGenerateur.Text;
          RResponsablePrelevement.NomResponsablePrelevement:=FSParametresPontBascule.EditNomResponsablePrelevementGenerateur.Text;
          RResponsablePrelevement.PrenomResponsablePrelevement:=FSParametresPontBascule.EditPrenomResponsablePrelevementGenerateur.Text;
          Seek(FResponsablePrelevement,i);
          Write(FResponsablePrelevement,RResponsablePrelevement);

          CloseFile(FResponsablePrelevement);
     end;
                                                                              
     if(FSParametresPontBascule.BitOperationsResponsablePrelevement.Caption='Supprimer')then
     begin
          SupprimerFResponsablePrelevement(FSParametresPontBascule.EditCodeResponsablePrelevementGenerateur.Text,RExistant,RSupprimer,RSauvgarder);
     end;

     ListeResponsablePrelevement(FSParametresPontBascule.TableauResponsablePrelevement,'','','',false);

     FSParametresPontBascule.OperationsResponsablePrelevement.Visible:=false;

     FSParametresPontBascule.TableauResponsablePrelevement.SetFocus;
end;

Procedure ListeResponsablePrelevement(TableauResponsablePrelevement:TStringGrid; CodeResponsablePrelevement,NomResponsablePrelevement,PrenomResponsablePrelevement:string; RBRechercheMotCle:boolean);
var  R:integer;  OKVehicule:boolean;
begin
     TableauResponsablePrelevement.ColCount:=4;
     TableauResponsablePrelevement.Cols[0].Text:='N°';
     TableauResponsablePrelevement.Cols[1].Text:='Code Chauffeur';
     TableauResponsablePrelevement.Cols[2].Text:='Nom Chauffeur';
     TableauResponsablePrelevement.Cols[3].Text:='Prénom Chauffeur';

     TableauResponsablePrelevement.RowCount:=2;
     TableauResponsablePrelevement.Rows[1].Text:='';
     
     if(RBRechercheMotCle=true)then
     begin
          R:=1;
          TableauResponsablePrelevement.Cells[1,R]:='Insérer un nouveau';
          TableauResponsablePrelevement.Cells[2,R]:='';
          TableauResponsablePrelevement.Cells[3,R]:='';
     end
     else R:=0;

     TypeProces:='Business';   FichierConcerne:='FResponsablePrelevement';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChResponsablePrelevement:=Adresse;
     assignfile(FResponsablePrelevement,ChResponsablePrelevement);
     if FileExists(ChResponsablePrelevement)then
     Reset(FResponsablePrelevement)
     else Rewrite(FResponsablePrelevement); //Création du fichier FResponsablePrelevement
     Seek(FResponsablePrelevement,0);
     while not eof(FResponsablePrelevement)do
     begin
          read(FResponsablePrelevement,RResponsablePrelevement);

          OKVehicule:=true;

          if(CodeResponsablePrelevement<>'')then
          begin
               if(AnsiUpperCase(Firstlaters(RResponsablePrelevement.CodeResponsablePrelevement,longueur(CodeResponsablePrelevement)))=AnsiUpperCase(CodeResponsablePrelevement))
               then OKVehicule:=true
               else OKVehicule:=false;
          end;

          if(NomResponsablePrelevement<>'')then
          begin
               if(OKVehicule=true)then
               begin
                    if(RBRechercheMotCle=true)then
                    begin
                         if(RechercheSequenceParMotsCle(AnsiUpperCase(NomResponsablePrelevement),AnsiUpperCase(RResponsablePrelevement.NomResponsablePrelevement+' '+RResponsablePrelevement.PrenomResponsablePrelevement))=true)
                         then OKVehicule:=true
                         else OKVehicule:=false;
                    end
                    else
                    begin
                         if(AnsiUpperCase(Firstlaters(RResponsablePrelevement.NomResponsablePrelevement+' '+RResponsablePrelevement.PrenomResponsablePrelevement,longueur(NomResponsablePrelevement)))=AnsiUpperCase(NomResponsablePrelevement))
                         then OKVehicule:=true
                         else OKVehicule:=false;
                    end;
               end;
          end;

          if(NomResponsablePrelevement='')and(PrenomResponsablePrelevement<>'')then
          begin
               if(OKVehicule=true)then
               begin
                    if(RBRechercheMotCle=true)then
                    begin
                         if(RechercheSequenceParMotsCle(AnsiUpperCase(PrenomResponsablePrelevement),AnsiUpperCase(RResponsablePrelevement.PrenomResponsablePrelevement))=true)
                         then OKVehicule:=true
                         else OKVehicule:=false;
                    end
                    else
                    begin
                         if(AnsiUpperCase(Firstlaters(RResponsablePrelevement.PrenomResponsablePrelevement,longueur(PrenomResponsablePrelevement)))=AnsiUpperCase(PrenomResponsablePrelevement))
                         then OKVehicule:=true
                         else OKVehicule:=false;
                    end;
               end;
          end;

          if(OKVehicule=true)then
          begin
               R:=R+1;
               TableauResponsablePrelevement.Rows[R].Text:=inttostr(R);
               TableauResponsablePrelevement.Cells[1,R]:=RResponsablePrelevement.CodeResponsablePrelevement;
               TableauResponsablePrelevement.Cells[2,R]:=RResponsablePrelevement.NomResponsablePrelevement;
               TableauResponsablePrelevement.Cells[3,R]:=RResponsablePrelevement.PrenomResponsablePrelevement;
          end;
     end;
     CloseFile(FResponsablePrelevement);

     if(R>0)then
     begin
          TableauResponsablePrelevement.RowCount:=R+1;
     end
     else
     begin
          TableauResponsablePrelevement.RowCount:=2;
     end;

     AjusterColWidth(TableauResponsablePrelevement,'','');
end;

procedure TFSParametresPontBascule.PageResponsablePrelevementShow(
  Sender: TObject);
begin
     ListeResponsablePrelevement(FSParametresPontBascule.TableauResponsablePrelevement,'','','',false);
end;

Function NewCodeResponsablePrelevement:string;
var  OrdreCode:integer;
begin
     NewCodeResponsablePrelevement:='';
     OrdreCode:=1;

     TypeProces:='Business';   FichierConcerne:='FResponsablePrelevement';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChResponsablePrelevement:=Adresse;
     assignfile(FResponsablePrelevement,ChResponsablePrelevement);
     if FileExists(ChResponsablePrelevement)then
     begin
          Reset(FResponsablePrelevement); 
          Seek(FResponsablePrelevement,0);
          while not eof(FResponsablePrelevement)do
          begin
               read(FResponsablePrelevement,RResponsablePrelevement);

               if(RResponsablePrelevement.CodeResponsablePrelevement<>'')
               and(strtointeger(lastlaters(RResponsablePrelevement.CodeResponsablePrelevement,longueur(RResponsablePrelevement.CodeResponsablePrelevement)-1))<=OrdreCode)then OrdreCode:=strtointeger(lastlaters(RResponsablePrelevement.CodeResponsablePrelevement,longueur(RResponsablePrelevement.CodeResponsablePrelevement)-1))+1;

          end;
          CloseFile(FResponsablePrelevement);
     end;

     NewCodeResponsablePrelevement:='C'+CompleteZeroGauche(inttostr(OrdreCode),'3');
end;

procedure TFSParametresPontBascule.EditNomResponsablePrelevementKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     ListeResponsablePrelevement(FSParametresPontBascule.TableauRechercheChauffeur,'',FSParametresPontBascule.EditNomResponsablePrelevement.Text,'',true);
end;

procedure TFSParametresPontBascule.EditNomResponsablePrelevementEnter(
  Sender: TObject);
begin
     FSParametresPontBascule.TableauRechercheChauffeur.Visible:=true;
end;

procedure TFSParametresPontBascule.TableauRechercheChauffeurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(FSParametresPontBascule.TableauRechercheChauffeur.Cells[1,FSParametresPontBascule.TableauRechercheChauffeur.Row]='Insérer un nouveau')then
          begin
               FSParametresPontBascule.EditCodeResponsablePrelevement.Text:=NewCodeResponsablePrelevement;
               FSParametresPontBascule.EditNomResponsablePrelevement.Text:='';
               FSParametresPontBascule.EditPrenomResponsablePrelevement.Text:='';
               FSParametresPontBascule.EditNomResponsablePrelevement.SetFocus;
          end
          else
          begin
               FSParametresPontBascule.EditCodeResponsablePrelevement.Text:=FSParametresPontBascule.TableauRechercheChauffeur.Cells[1,FSParametresPontBascule.TableauRechercheChauffeur.Row];
               FSParametresPontBascule.EditNomResponsablePrelevement.Text:=FSParametresPontBascule.TableauRechercheChauffeur.Cells[2,FSParametresPontBascule.TableauRechercheChauffeur.Row];
               FSParametresPontBascule.EditPrenomResponsablePrelevement.Text:=FSParametresPontBascule.TableauRechercheChauffeur.Cells[3,FSParametresPontBascule.TableauRechercheChauffeur.Row];
               FSParametresPontBascule.EditIndiceInialPontBascule.SetFocus;
          end;
          
          FSParametresPontBascule.TableauRechercheChauffeur.Visible:=false;
     end;
end;

Procedure NouveauChauffeur(CodeResponsablePrelevement,NomResponsablePrelevement,PrenomResponsablePrelevement:string);
var  i:integer; OKChauffeur:boolean;
begin
     if(CodeResponsablePrelevement='')
     and(NomResponsablePrelevement+PrenomResponsablePrelevement='')then Exit;

     TypeProces:='Business';   FichierConcerne:='FResponsablePrelevement';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChResponsablePrelevement:=Adresse;
     assignfile(FResponsablePrelevement,ChResponsablePrelevement);
     if FileExists(ChResponsablePrelevement)then
     Reset(FResponsablePrelevement)
     else Rewrite(FResponsablePrelevement); //Création du fichier FResponsablePrelevement
     Seek(FResponsablePrelevement,0);
     i:=0;
     OKChauffeur:=false;
     while not eof(FResponsablePrelevement)do
     begin
          read(FResponsablePrelevement,RResponsablePrelevement);

          if(RResponsablePrelevement.CodeResponsablePrelevement=CodeResponsablePrelevement)
          or(RResponsablePrelevement.NomResponsablePrelevement+' '+RResponsablePrelevement.PrenomResponsablePrelevement=NomResponsablePrelevement+' '+PrenomResponsablePrelevement)
          then
          begin
               OKChauffeur:=true;
          end;

          i:=i+1;
     end;

     if(OKChauffeur=false)then
     begin
          RResponsablePrelevement.CodeResponsablePrelevement:=CodeResponsablePrelevement;
          RResponsablePrelevement.NomResponsablePrelevement:=NomResponsablePrelevement;
          RResponsablePrelevement.PrenomResponsablePrelevement:=PrenomResponsablePrelevement;
          Seek(FResponsablePrelevement,i);
          Write(FResponsablePrelevement,RResponsablePrelevement);
     end;

     CloseFile(FResponsablePrelevement);
end;

Procedure NouveauVehiculePontBascule(MatriculeResponsablePrelevement,TypeVehiculePrelevement,TonageVehiculePrelevement,CodeResponsablePrelevement,NomResponsablePrelevement,PrenomResponsablePrelevement,IndiceInialPontBascule:string);
var  i,iSelect:integer;  OKVehicule,OKModifier:boolean;
begin
     if(MatriculeResponsablePrelevement='')then Exit;

     TypeProces:='Business';   FichierConcerne:='FVehiculePrelevementTare';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChVehiculePrelevementTare:=Adresse;
     assignfile(FVehiculePrelevementTare,ChVehiculePrelevementTare);
     if FileExists(ChVehiculePrelevementTare)then
     Reset(FVehiculePrelevementTare)
     else Rewrite(FVehiculePrelevementTare);
     Seek(FVehiculePrelevementTare,0);
     OKVehicule:=false;
     i:=0;
     while not eof(FVehiculePrelevementTare)and(OKVehicule=false)do
     begin
          read(FVehiculePrelevementTare,RVehiculePrelevementTare);

          if(RVehiculePrelevementTare.MatriculeResponsablePrelevement=MatriculeResponsablePrelevement)then
          begin
               OKVehicule:=true;
               iSelect:=i;
          end;
     i:=i+1;
     end;

     if(OKVehicule=true)then
     begin
          OKModifier:=false;

          if(RVehiculePrelevementTare.TypeVehiculePrelevement='')and(TypeVehiculePrelevement<>'')then
          begin
               RVehiculePrelevementTare.TypeVehiculePrelevement:=TypeVehiculePrelevement;
               OKModifier:=true;
          end;

          if(RVehiculePrelevementTare.TonageVehiculePrelevement='')and(TonageVehiculePrelevement<>'')then
          begin
               RVehiculePrelevementTare.TonageVehiculePrelevement:=TonageVehiculePrelevement;
               OKModifier:=true;
          end;

          if(RVehiculePrelevementTare.CodeResponsablePrelevement='')and(CodeResponsablePrelevement<>'')then
          begin
               RVehiculePrelevementTare.CodeResponsablePrelevement:=CodeResponsablePrelevement;
               RVehiculePrelevementTare.NomResponsablePrelevement:=NomResponsablePrelevement;
               RVehiculePrelevementTare.PrenomResponsablePrelevement:=PrenomResponsablePrelevement;
               OKModifier:=true;
          end;

          if(RVehiculePrelevementTare.IndiceInialPontBascule=0)and(strtoreal(IndiceInialPontBascule)>0)then
          begin
               RVehiculePrelevementTare.IndiceInialPontBascule:=strtoreal(IndiceInialPontBascule);
               OKModifier:=true;
          end;

          if(OKModifier=true)then
          begin
               Seek(FVehiculePrelevementTare,iSelect);
               Write(FVehiculePrelevementTare,RVehiculePrelevementTare);
          end;
     end;

     if(OKVehicule=false)then
     begin
          RVehiculePrelevementTare.MatriculeResponsablePrelevement:=MatriculeResponsablePrelevement;
          RVehiculePrelevementTare.TypeVehiculePrelevement:=TypeVehiculePrelevement;
          RVehiculePrelevementTare.TonageVehiculePrelevement:=TonageVehiculePrelevement;
          RVehiculePrelevementTare.CodeResponsablePrelevement:=CodeResponsablePrelevement;
          RVehiculePrelevementTare.NomResponsablePrelevement:=NomResponsablePrelevement;
          RVehiculePrelevementTare.PrenomResponsablePrelevement:=PrenomResponsablePrelevement;
          RVehiculePrelevementTare.IndiceInialPontBascule:=strtoreal(IndiceInialPontBascule);
          Seek(FVehiculePrelevementTare,i);
          Write(FVehiculePrelevementTare,RVehiculePrelevementTare);
     end;

     CloseFile(FVehiculePrelevementTare);
end;

end.
