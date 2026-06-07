unit UnitFSAttachements;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Buttons, ComCtrls, Mask;

type
  TFSAttachements = class(TForm)
    AfficheMarche: TPanel;
    EditNSMarche: TEdit;
    LabelNatureProjet: TLabel;
    EditMarche: TEdit;
    EditNStructureMarche: TEdit;
    EditStructureMarche: TEdit;
    Label1: TLabel;
    EditNStatistiqueMarche: TEdit;
    EditStatistiqueMarche: TEdit;
    Label25: TLabel;
    EditTypeProjet: TComboBox;
    Label4: TLabel;
    TableauSelection: TStringGrid;
    Panel1: TPanel;
    Label46: TLabel;
    EditCodeMaitreOuvrage: TEdit;
    Label14: TLabel;
    EditMaitreOuvrage: TEdit;
    TableauDetailAttachement: TStringGrid;
    AfficheOperationAttachement: TPanel;
    TableauLAttachement: TStringGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    EditNAttachement: TEdit;
    Label3: TLabel;
    Label6: TLabel;
    EditDateAttachement: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitOptionAttachement: TBitBtn;
    Bevel1: TBevel;
    AfficheSaisieAttachement: TPanel;
    Bevel13: TBevel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    EditCodeProduitAttachement: TEdit;
    BitBtn28: TBitBtn;
    EditDesignationArticleAttachement: TMemo;
    EditQuantiteAttachementRealise: TMemo;
    EditPrixUnitaireAttachement: TMemo;
    BitValideAttachement: TBitBtn;
    EditCodeArticleAttachement: TMemo;
    EditUnitMAttachement: TMemo;
    EditTrieAttachement: TEdit;
    EditQuantiteRealiseObjetMarche: TMemo;
    AfficheQteMarche: TPanel;
    EditAfficheQteMarche: TMemo;
    AfficheEtatMarche: TPanel;
    Bevel16: TBevel;
    EditQte: TEdit;
    BitOKEtatMarche: TBitBtn;
    EditEtatMarche: TMemo;
    EditSauvegardeAttachement: TEdit;
    AfficheAvenantAttachement: TPanel;
    TableauAvenantAttachement: TStringGrid;
    BitBtn29: TBitBtn;
    AfficheDesignationArticlesAttachement: TPanel;
    BitBtn30: TBitBtn;
    TableauDesignationArticlesAttachement: TStringGrid;
    AfficheSauvegarderAttachement: TPanel;
    Bevel14: TBevel;
    EditOptionSauvegardeAttachement: TEdit;
    BitOuiSauvegardeAttachement: TBitBtn;
    BitNonSauvegardeAttachement: TBitBtn;
    EditDesignationArticleAttachementTeste: TMemo;
    EditDesignationArticleAttachementTesteListe: TMemo;
    BitBtn31: TBitBtn;
    BitBtn32: TBitBtn;
    TimerClic: TTimer;
    EditNAttachementMarche: TEdit;
    Label2: TLabel;
    Label5: TLabel;
    EditDateAttachementA: TMaskEdit;
    IndiceAfficheStructure: TEdit;
    IndiceAfficheStatistique: TEdit;
    IndiceAfficheAttachement: TEdit;
    EditQuantiteRealiseObjetAvenant: TMemo;
    Label34: TLabel;
    Label31: TLabel;
    EditNumAvenantAttachement: TEdit;
    EditAvenantAttachement: TEdit;
    BitBtn2: TBitBtn;
    TestePrintDevis: TMemo;
    BitBtn13: TBitBtn;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    EditMarcheControle: TMemo;
    RBControleQteActive: TCheckBox;
    TableauAvenantMarche: TStringGrid;
    AfficheIndiqueArchivePhoto: TPanel;
    ArchivePhoto: TImage;
    BitBtn78: TBitBtn;
    TableauxListePositionArchivePhoto: TStringGrid;
    EditMaxColWidth: TEdit;
    IncrimentEditMaxColWidth: TUpDown;
    OuvrirFichier: TOpenDialog;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    TableauAutresAttachements: TStringGrid;
    EditNNewAttachement: TEdit;
    EditDesignationAttachement: TEdit;
    Label7: TLabel;
    Bevel5: TBevel;
    AfficheAdresseAttachement: TPanel;
    procedure EditTypeProjetKeyPress(Sender: TObject; var Key: Char);
    procedure EditTypeProjetChange(Sender: TObject);
    procedure EditMarcheEnter(Sender: TObject);
    procedure TableauSelectionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNSMarcheEnter(Sender: TObject);
    procedure TableauDetailAttachementClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TableauLAttachementClick(Sender: TObject);
    procedure BitOptionAttachementClick(Sender: TObject);
    procedure TableauLAttachementKeyPress(Sender: TObject; var Key: Char);
    procedure EditDateAttachementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNStructureMarcheEnter(Sender: TObject);
    procedure EditStructureMarcheEnter(Sender: TObject);
    procedure EditNStatistiqueMarcheEnter(Sender: TObject);
    procedure EditStatistiqueMarcheEnter(Sender: TObject);
    procedure EditTypeProjetEnter(Sender: TObject);
    procedure TableauDetailAttachementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditCodeArticleAttachementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditCodeArticleAttachementKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDesignationArticleAttachementKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditQuantiteAttachementRealiseKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditQuantiteAttachementRealiseExit(Sender: TObject);
    procedure EditQuantiteAttachementRealiseKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditQuantiteRealiseObjetMarcheExit(Sender: TObject);
    procedure EditQuantiteRealiseObjetMarcheKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditQuantiteRealiseObjetMarcheKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitValideAttachementClick(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure BitNonSauvegardeAttachementClick(Sender: TObject);
    procedure BitOuiSauvegardeAttachementClick(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure TableauDesignationArticlesAttachementClick(Sender: TObject);
    procedure TableauDesignationArticlesAttachementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauDesignationArticlesAttachementKeyPress(
      Sender: TObject; var Key: Char);
    procedure EditDesignationArticleAttachementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitOKEtatMarcheClick(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure AfficheSaisieAttachementEnter(Sender: TObject);
    procedure AfficheSaisieAttachementExit(Sender: TObject);
    procedure TimerClicTimer(Sender: TObject);
    procedure EditQuantiteRealiseObjetMarcheKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditQuantiteRealiseObjetAvenantKeyPress(Sender: TObject;
      var Key: Char);
    procedure TableauDetailAttachementKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TableauSelectionKeyPress(Sender: TObject; var Key: Char);
    procedure TableauSelectionClick(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure BitBtn78Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure TableauxListePositionArchivePhotoClick(Sender: TObject);
    procedure IncrimentEditMaxColWidthClick(Sender: TObject;
      Button: TUDBtnType);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure TableauAutresAttachementsKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauAutresAttachementsExit(Sender: TObject);
    procedure EditDesignationAttachementKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSAttachements: TFSAttachements;

  Procedure ProcAfficheAttachement(TableauLAttachement:TStringGrid;  NumMarche,NAttachement:string; NumMarcheVideAfficherTous:boolean);
  Procedure ListeStructureStatistiqueExistante(TableauSelection:TStringGrid;  NSMarche:integer);
  Procedure TrierArticleAttachement(Indice:integer);
  Procedure SoldeAttachement(CodeTrie:string; var QteMarche,QteAvenant,QteRealiseObjetMarche,QteRealiseObjetAvenant,QteRestanteObjetMarche,QteRestanteObjetAvenant:real);
  Procedure TrierDetailAttachement(TableauDetailAttachement:TStringGrid; Indice:integer);
  Procedure OrganiseDetailAttachement(TableauDetailAttachement:TStringGrid);
  Procedure ProcAfficheDetailAttachement(TableauDetailAttachement:TStringGrid; NSMarche,NStructureMarche,NStatistique,NAttachement:integer);
  Procedure InitialeAfficheDetailAttachement;
  Procedure ClearAttachement(Indice:integer; Visible:boolean);
  Procedure InitialisationAttachement(ARow,Indice:integer);
  Procedure HeightAttachement(Indice:integer; var Position:integer);
  Procedure ImprimerAttachement(TableauDetailAttachement:TStringGrid;  TypeProjet,NSMarche,StructureMarche,NAttachement,IndiceAfficheStructure:string);
  Procedure ListeAvenantMarche(TableauAvenantMarche:TStringGrid; NSMarche:string);
  Function FuntionQuantiteAvenantMarche(NSMarche,CodeTrie:string; ParStructure,ParStatistique:boolean):real;
  Function FuntionQuantiteListeAvenantMarche(TableauListeAvenantMarche:TStringGrid; CodeTrie:string; ParStructure,ParStatistique:boolean):real;

implementation

Uses   UnitInitialisation, UnitSuppression ,UnitFSMarche,
       UnitFSMenuPrincipal, UnitPrintAttachement, UnitFSSituations,
  UnitFSArchivesPhotosCommentaires, UnitFSGenerateurBase, UnitFSPublicite;

{$R *.dfm}

procedure TFSAttachements.EditTypeProjetKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSAttachements.EditTypeProjetChange(Sender: TObject);
begin
     FSAttachements.EditNSMarche.Text:='';
     FSAttachements.EditMarche.Text:='';
     FSAttachements.EditNStructureMarche.Text:='';
     FSAttachements.EditStructureMarche.Text:='';
     FSAttachements.EditNStatistiqueMarche.Text:='';
     FSAttachements.EditStatistiqueMarche.Text:='';
     FSAttachements.EditCodeMaitreOuvrage.Text:='';
     FSAttachements.EditMaitreOuvrage.Text:='';

     FSAttachements.LabelNatureProjet.Caption:=FSAttachements.EditTypeProjet.Text;
     ProcAfficheAttachement(FSAttachements.TableauLAttachement,FSAttachements.EditNSMarche.Text,FSAttachements.EditNAttachementMarche.Text,False);

end;

procedure TFSAttachements.EditMarcheEnter(Sender: TObject);
begin
     FSAttachements.TableauSelection.Visible:=true;
     FSAttachements.TableauSelection.Top:=FSAttachements.AfficheMarche.Top+FSAttachements.EditMarche.Top+FSAttachements.EditMarche.Height+2;
     FSAttachements.TableauSelection.Left:=FSAttachements.AfficheMarche.Left+FSAttachements.EditMarche.Left+1;
     ProcAfficheMarche(FSAttachements.TableauSelection,FSAttachements.EditTypeProjet.Text,'');
     FSAttachements.TableauSelection.Cells[0,0]:='Mch';
     FSAttachements.TableauSelection.SetFocus;

     FSSituations.AdresseSituationMarche.Caption:=FSAttachements.AfficheAdresseAttachement.Caption;
end;

procedure TFSAttachements.TableauSelectionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  NSMarche,NStructureMarche,NStatistique,NAttachement:integer; TypeProces,FichierConcerne:string;
begin
     if key in[VK_ESCAPE]then
     begin
          FSAttachements.TableauSelection.Visible:=false;
          FSAttachements.TableauLAttachement.SetFocus;
     end;

     if key in[VK_RETURN]then
     begin
          if(FSAttachements.TableauSelection.Cells[0,0]='Choix')then
          begin
               FSAttachements.EditNStructureMarche.Text:=FSAttachements.TableauSelection.Cells[3,FSAttachements.TableauSelection.Row];
               FSAttachements.EditStructureMarche.Text:=FSAttachements.TableauSelection.Cells[4,FSAttachements.TableauSelection.Row];
               FSAttachements.EditNStatistiqueMarche.Text:=FSAttachements.TableauSelection.Cells[5,FSAttachements.TableauSelection.Row];
               FSAttachements.EditStatistiqueMarche.Text:=FSAttachements.TableauSelection.Cells[6,FSAttachements.TableauSelection.Row];
               FSAttachements.TableauSelection.Visible:=false;
               FSAttachements.TableauLAttachement.SetFocus;
          end
          else
          if(FSAttachements.TableauSelection.Cells[0,0]='Stq')then
          begin
               FSAttachements.EditNStatistiqueMarche.Text:=FSAttachements.TableauSelection.Cells[3,FSAttachements.TableauSelection.Row];
               FSAttachements.EditStatistiqueMarche.Text:=FSAttachements.TableauSelection.Cells[4,FSAttachements.TableauSelection.Row];
               FSAttachements.TableauSelection.Visible:=false;
               FSAttachements.TableauLAttachement.SetFocus;
          end
          else
          if(FSAttachements.TableauSelection.Cells[0,0]='Str')then
          begin
               FSAttachements.EditNStructureMarche.Text:=FSAttachements.TableauSelection.Cells[2,FSAttachements.TableauSelection.Row];
               FSAttachements.EditStructureMarche.Text:=FSAttachements.TableauSelection.Cells[3,FSAttachements.TableauSelection.Row];
               FSAttachements.TableauSelection.Visible:=false;
               FSAttachements.EditNStatistiqueMarche.SetFocus;
               FSAttachements.EditNStatistiqueMarche.Text:='';
               FSAttachements.EditStatistiqueMarche.Text:='';
          end
          else
          if(FSAttachements.TableauSelection.Cells[0,0]='Mch')then
          begin
               FSAttachements.EditNSMarche.Text:=FSAttachements.TableauSelection.Cells[1,FSAttachements.TableauSelection.Row];
               FSAttachements.EditMarche.Text:=FSAttachements.TableauSelection.Cells[4,FSAttachements.TableauSelection.Row];

               TypeProces:='Commercial'; FichierConcerne:='FClient';
               RTiers:=ChercherTiers(TypeProces,FichierConcerne,FSAttachements.TableauSelection.Cells[5,FSAttachements.TableauSelection.Row],'');
               FSAttachements.EditCodeMaitreOuvrage.Text:=RTiers.CodeTiers;
               FSAttachements.EditMaitreOuvrage.Text:=RTiers.NomTiers+' '+RTiers.PrenomTiers;

               FSAttachements.EditNStructureMarche.Text:='';
               FSAttachements.EditStructureMarche.Text:='';
               FSAttachements.EditNStatistiqueMarche.Text:='';
               FSAttachements.EditStatistiqueMarche.Text:='';

               ListeAvenantMarche(FSAttachements.TableauAvenantMarche,FSAttachements.EditNSMarche.Text);

               ListeStructureStatistiqueExistante(FSAttachements.TableauSelection,strtointeger(FSAttachements.EditNSMarche.Text));
               FSAttachements.TableauSelection.Cells[0,0]:='Choix';
          end;

          if(FSAttachements.EditNStructureMarche.Text<>'')then FSAttachements.IndiceAfficheStructure.Text:='1' else FSAttachements.IndiceAfficheStructure.Text:='0';
          if(FSAttachements.EditNStatistiqueMarche.Text<>'')then FSAttachements.IndiceAfficheStatistique.Text:='1' else FSAttachements.IndiceAfficheStatistique.Text:='0';
          if(FSAttachements.EditNAttachementMarche.Text<>'')then FSAttachements.IndiceAfficheAttachement.Text:='1' else FSAttachements.IndiceAfficheAttachement.Text:='0';

          ProcAfficheAttachement(FSAttachements.TableauLAttachement,FSAttachements.EditNSMarche.Text,FSAttachements.EditNAttachementMarche.Text,False);

          FSAttachements.EditNAttachementMarche.Text:=FSAttachements.TableauLAttachement.Cells[3,FSAttachements.TableauLAttachement.Row];
          FSAttachements.EditDateAttachementA.Text:=FSAttachements.TableauLAttachement.Cells[4,FSAttachements.TableauLAttachement.Row];
          if(FSAttachements.EditNAttachementMarche.Text<>'')then FSAttachements.IndiceAfficheAttachement.Text:='1' else FSAttachements.IndiceAfficheAttachement.Text:='0';

          NSMarche:=strtointeger(FSAttachements.EditNSMarche.Text);
          NStructureMarche:=strtointeger(FSAttachements.EditNStructureMarche.Text)*strtointeger(FSAttachements.IndiceAfficheStructure.Text);
          NStatistique:=strtointeger(FSAttachements.EditNStatistiqueMarche.Text)*strtointeger(FSAttachements.IndiceAfficheStatistique.Text);
          NAttachement:=strtointeger(FSAttachements.EditNAttachementMarche.Text)*strtointeger(FSAttachements.IndiceAfficheAttachement.Text);

          ProcAfficheDetailAttachement(FSAttachements.TableauDetailAttachement,NSMarche,NStructureMarche,NStatistique,NAttachement);
     end;
end;

procedure TFSAttachements.EditNSMarcheEnter(Sender: TObject);
begin
     FSAttachements.TableauSelection.Visible:=true;
     FSAttachements.TableauSelection.Top:=FSAttachements.AfficheMarche.Top+FSAttachements.EditNSMarche.Top+FSAttachements.EditNSMarche.Height+2;
     FSAttachements.TableauSelection.Left:=FSAttachements.AfficheMarche.Left+FSAttachements.EditNSMarche.Left;
     ProcAfficheMarche(FSAttachements.TableauSelection,FSAttachements.EditTypeProjet.Text,'');
     FSAttachements.TableauSelection.Cells[0,0]:='Mch';
     FSAttachements.TableauSelection.SetFocus;

     FSAttachements.AfficheAdresseAttachement.Caption:=FSMarche.AfficheAdresseMarche.Caption;
end;

procedure TFSAttachements.TableauDetailAttachementClick(Sender: TObject);
var ARow,NSMarche,NStructureMarche,NStatistique,NAttachement:integer;
begin
InitialeAfficheDetailAttachement;
FSAttachements.AfficheOperationAttachement.Visible:=false;
FSAttachements.TableauSelection.Visible:=false;

FSAttachements.TableauDetailAttachement.DefaultRowHeight:=18;
FSAttachements.EditDesignationArticleAttachementTeste.Lines.Text:=FSAttachements.TableauDetailAttachement.Cells[FSAttachements.TableauDetailAttachement.Col,FSAttachements.TableauDetailAttachement.Row];
if(FSAttachements.EditDesignationArticleAttachementTeste.Lines.Count>0)
then FSAttachements.TableauDetailAttachement.RowHeights[FSAttachements.TableauDetailAttachement.Row]:=FSAttachements.EditDesignationArticleAttachementTeste.Lines.Count*18;

ARow:=FSAttachements.TableauDetailAttachement.Row;

if(FSAttachements.TableauDetailAttachement.Cells[10,ARow]<>'')then
begin
     NSMarche:=strtointeger(DTrie('M',FSAttachements.TableauDetailAttachement.Cells[10,ARow]));
     NStructureMarche:=strtointeger(DTrie('S',FSAttachements.TableauDetailAttachement.Cells[10,ARow]));
     NStatistique:=strtointeger(DTrie('T',FSAttachements.TableauDetailAttachement.Cells[10,ARow]));

     FSAttachements.EditNStructureMarche.Text:=inttostr(NStructureMarche);
     RStructureMarche:=ChercherStructureMarche(NSMarche,NStructureMarche);
     FSAttachements.EditStructureMarche.Text:=RStructureMarche.StructureMarche;
     FSAttachements.EditNStatistiqueMarche.Text:=inttostr(NStatistique);
     RStatistiqueMarche:=chercherStatistiqueMarche(NSMarche,NStatistique);
     FSAttachements.EditStatistiqueMarche.Text:=RStatistiqueMarche.StatistiqueMarche;
end;
end;

procedure TFSAttachements.BitBtn1Click(Sender: TObject);
begin
     FSAttachements.AfficheOperationAttachement.Visible:=false;
     FSAttachements.TableauAutresAttachements.Visible:=false;
end;

procedure TFSAttachements.TableauLAttachementClick(Sender: TObject);
var  NSMarche,NStructureMarche,NStatistique,NAttachement:integer;   AdresseArchivePhoto,DesignationStructure:string;
begin
     FSAttachements.TableauAutresAttachements.Visible:=false;

     if(FSAttachements.EditSauvegardeAttachement.Text='OK')
     and AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)
     then
     begin
          FSAttachements.AfficheSauvegarderAttachement.Visible:=true;
          FSAttachements.BitOuiSauvegardeAttachement.SetFocus;
          FSAttachements.EditOptionSauvegardeAttachement.Text:='Non';
     end
     else
     begin
          FSAttachements.EditNAttachementMarche.Text:=FSAttachements.TableauLAttachement.Cells[3,FSAttachements.TableauLAttachement.Row];
          FSAttachements.EditDateAttachementA.Text:=FSAttachements.TableauLAttachement.Cells[4,FSAttachements.TableauLAttachement.Row];
          if(FSAttachements.EditNAttachementMarche.Text<>'')then FSAttachements.IndiceAfficheAttachement.Text:='1' else FSAttachements.IndiceAfficheAttachement.Text:='0';

          NSMarche:=strtointeger(FSAttachements.EditNSMarche.Text);
          NStructureMarche:=strtointeger(FSAttachements.EditNStructureMarche.Text)*strtointeger(FSAttachements.IndiceAfficheStructure.Text);
          NStatistique:=strtointeger(FSAttachements.EditNStatistiqueMarche.Text)*strtointeger(FSAttachements.IndiceAfficheStatistique.Text);
          NAttachement:=strtointeger(FSAttachements.EditNAttachementMarche.Text)*strtointeger(FSAttachements.IndiceAfficheAttachement.Text);

          FSAttachements.AfficheOperationAttachement.Visible:=false;
          FSAttachements.TableauSelection.Visible:=false;

          ProcAfficheDetailAttachement(FSAttachements.TableauDetailAttachement,NSMarche,NStructureMarche,NStatistique,NAttachement);
     end;

     DesignationStructure:='Marche'+' N°: '+FSAttachements.TableauLAttachement.Cells[2,FSAttachements.TableauLAttachement.Row]+
                           ' Attachement N°: '+FSAttachements.TableauLAttachement.Cells[3,FSAttachements.TableauLAttachement.Row]+
                           ' du '+FSAttachements.TableauLAttachement.Cells[4,FSAttachements.TableauLAttachement.Row];

     if(FSAttachements.AfficheIndiqueArchivePhoto.Visible=true)
     and(IndiqueAdresseArchivePhoto('',DesignationStructure,'','',FSAttachements.TableauxListePositionArchivePhoto,AdresseArchivePhoto))then
     begin
          if FileExists(AdresseArchivePhoto)
          then FSAttachements.ArchivePhoto.Picture.LoadFromFile(AdresseArchivePhoto)
          else FSAttachements.ArchivePhoto.Picture:=FSArchivesPhotosCommentaires.PhotoVide.Picture;
     end
     else
     begin
          FSAttachements.ArchivePhoto.Picture:=FSArchivesPhotosCommentaires.PhotoVide.Picture;
     end;
end;

procedure TFSAttachements.BitOptionAttachementClick(Sender: TObject);
var   i,iExiste,NewNAttachement:integer;   OKAttachement,OKConfirme:boolean;
begin
     if(FSAttachements.BitOptionAttachement.Caption='Valider')then
     begin
          TypeProces:='Business'; FichierConcerne:='FAttachement';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChLAttachement:=Adresse;
          assignfile(FLAttachement,ChLAttachement);
          if FileExists(ChLAttachement)then
          Reset(FLAttachement)
          else Rewrite(FLAttachement);
          Seek(FLAttachement,0);
          i:=0;
          NewNAttachement:=0;
          OKAttachement:=false;
          while not eof(FLAttachement)and(OKAttachement=false)do
          begin
               Read(FLAttachement,RLAttachement);

               if(inttostr(RLAttachement.NSMarche)=FSAttachements.EditNSMarche.Text)then
               begin
                    if(NewNAttachement<=RLAttachement.NAttachement)then NewNAttachement:=RLAttachement.NAttachement+1;

                    if(inttostr(RLAttachement.NAttachement)=FSAttachements.EditNAttachement.Text)
                    then
                    begin
                         OKAttachement:=true;
                         iExiste:=i;
                         NewNAttachement:=RLAttachement.NAttachement;
                    end;
               end;
          i:=i+1;
          end;

          if(OKAttachement=true)then i:=iExiste;
          if(FSAttachements.EditNAttachement.Text='')then FSAttachements.EditNAttachement.Text:=inttostr(NewNAttachement);

          Seek(FLAttachement,i);
          RLAttachement.DesignationAttachement:=FSAttachements.EditDesignationAttachement.Text;
          RLAttachement.TypeProjet:=FSAttachements.EditTypeProjet.Text;
          RLAttachement.NAttachement:=strtointeger(FSAttachements.EditNAttachement.Text);
          RLAttachement.NSMarche:=strtointeger(FSAttachements.EditNSMarche.Text);
          RLAttachement.Date:=datetostr(FSAttachements.EditDateAttachement.Date);
          write(FLAttachement,RLAttachement);
          CloseFile(FLAttachement);
     end;

     if(FSAttachements.BitOptionAttachement.Caption='Supprimer')then
     begin
          DeleteFAttachement(FSAttachements.EditNSMarche.Text,FSAttachements.EditNAttachement.Text,OKConfirme);
     end;

     ProcAfficheAttachement(FSAttachements.TableauLAttachement,FSAttachements.EditNSMarche.Text,FSAttachements.EditNAttachementMarche.Text,False);

     FSAttachements.AfficheOperationAttachement.Visible:=false;

     FSAttachements.TableauLAttachement.SetFocus;
     FSAttachements.AfficheOperationAttachement.Visible:=false;
end;

procedure TFSAttachements.TableauLAttachementKeyPress(Sender: TObject;
  var Key: Char);
var   i,iExiste,NewNAttachement:integer;   OKAttachement,OKConfirme:boolean;
begin
     if key in['n','N']then
     begin
          FSAttachements.AfficheOperationAttachement.Visible:=true;
          FSAttachements.BitOptionAttachement.Kind:=bkAll;
          FSAttachements.BitOptionAttachement.Caption:='Valider';
          FSAttachements.EditDesignationAttachement.Text:='Attachement';
          FSAttachements.EditNAttachement.Text:='';
          FSAttachements.EditDateAttachement.Date:=date;
          FSAttachements.EditDateAttachement.SetFocus;

          TypeProces:='Business'; FichierConcerne:='FAttachement';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChLAttachement:=Adresse;
          assignfile(FLAttachement,ChLAttachement);
          if FileExists(ChLAttachement)then
          Reset(FLAttachement)
          else Rewrite(FLAttachement);
          Seek(FLAttachement,0);
          i:=0;
          NewNAttachement:=0;
          OKAttachement:=false;
          while not eof(FLAttachement)and(OKAttachement=false)do
          begin
               Read(FLAttachement,RLAttachement);

               if(inttostr(RLAttachement.NSMarche)=FSAttachements.EditNSMarche.Text)then
               begin
                    if(NewNAttachement<=RLAttachement.NAttachement)then NewNAttachement:=RLAttachement.NAttachement+1;

                    if(inttostr(RLAttachement.NAttachement)=FSAttachements.EditNAttachement.Text)
                    then
                    begin
                         OKAttachement:=true;
                         iExiste:=i;
                         NewNAttachement:=RLAttachement.NAttachement;
                    end;
               end;
          i:=i+1;
          end;

          FSAttachements.EditNNewAttachement.Text:=inttostr(NewNAttachement);
     end;

     if key in['m','M']then
     begin
          FSAttachements.AfficheOperationAttachement.Visible:=true;
          FSAttachements.BitOptionAttachement.Kind:=bkRetry;
          FSAttachements.BitOptionAttachement.Caption:='Valider';
          FSAttachements.EditNAttachement.Text:=FSAttachements.TableauLAttachement.Cells[3,FSAttachements.TableauLAttachement.Row];
          FSAttachements.EditDateAttachement.Date:=strtodate(FSAttachements.TableauLAttachement.Cells[4,FSAttachements.TableauLAttachement.Row]);
          FSAttachements.EditDesignationAttachement.Text:=FSAttachements.TableauLAttachement.Cells[5,FSAttachements.TableauLAttachement.Row];
          FSAttachements.EditDateAttachement.SetFocus;
     end;

     if key in['s','S']then
     begin
          FSAttachements.AfficheOperationAttachement.Visible:=true;
          FSAttachements.BitOptionAttachement.Kind:=bkCancel;
          FSAttachements.BitOptionAttachement.Caption:='Supprimer';
          FSAttachements.EditNAttachement.Text:=FSAttachements.TableauLAttachement.Cells[3,FSAttachements.TableauLAttachement.Row];
          FSAttachements.EditDateAttachement.Date:=strtodate(FSAttachements.TableauLAttachement.Cells[4,FSAttachements.TableauLAttachement.Row]);
          FSAttachements.EditDesignationAttachement.Text:=FSAttachements.TableauLAttachement.Cells[5,FSAttachements.TableauLAttachement.Row];
          FSAttachements.BitOptionAttachement.SetFocus;
     end;
end;

Procedure ProcAfficheAttachement(TableauLAttachement:TStringGrid;  NumMarche,NAttachement:string; NumMarcheVideAfficherTous:boolean);
var i:integer;   NotRow,NotCol,RowSelect:string;   OKAttachement:boolean;
begin
TableauLAttachement.ColCount:=6;
TableauLAttachement.Cols[1].Text:='Type Projet';
TableauLAttachement.Cols[2].Text:='N°Marché';
TableauLAttachement.Cols[3].Text:='N°Attachement ';
TableauLAttachement.Cols[4].Text:='Date';
TableauLAttachement.Cols[5].Text:='Désignation';
TableauLAttachement.RowCount:=2;
TableauLAttachement.Rows[1].Text:='';

TypeProces:='Business'; FichierConcerne:='FAttachement';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChLAttachement:=Adresse; FSAttachements.AfficheAdresseAttachement.Caption:=ChLAttachement;
assignfile(FLAttachement,ChLAttachement);
if FileExists(ChLAttachement)then
Reset(FLAttachement)
else Rewrite(FLAttachement);
Seek(FLAttachement,0);
i:=0;
RowSelect:='';
while not eof(FLAttachement)do
begin
     Read(FLAttachement,RLAttachement);

     if(NumMarche<>'')then
     begin
          if(RLAttachement.NSMarche=strtointeger(NumMarche))
          then OKAttachement:=true
          else OKAttachement:=false;
     end
     else OKAttachement:=NumMarcheVideAfficherTous;

     if(OKAttachement=true)then
     begin
          i:=i+1;
          TableauLAttachement.Rows[i].Text:=inttostr(i);
          TableauLAttachement.Cells[1,i]:=RLAttachement.TypeProjet;
          TableauLAttachement.Cells[2,i]:=inttostr(RLAttachement.NSMarche);
          TableauLAttachement.Cells[3,i]:=inttostr(RLAttachement.NAttachement);
          TableauLAttachement.Cells[4,i]:=RLAttachement.Date;
          TableauLAttachement.Cells[5,i]:=RLAttachement.DesignationAttachement;

          if(RowSelect='')and(NAttachement<>'')then
          begin
               if(RLAttachement.NAttachement=strtointeger(NAttachement))then RowSelect:=inttostr(i);
          end;
     end;
end;

if(i>0)then
begin
     TableauLAttachement.RowCount:=i+1;
end
else
begin
     TableauLAttachement.RowCount:=2;
     TableauLAttachement.Rows[1].Text:='';
end;

NotRow:='';
NotCol:='1;2';
for i:=1 to TableauLAttachement.ColCount-1 do if(existenumintexte(inttostr(i),NotCol))then TableauLAttachement.ColWidths[i]:=0;
AjusterColWidth(TableauLAttachement,NotRow,NotCol);

if(RowSelect<>'')then
begin
     if(strtointeger(RowSelect)>0)and(strtointeger(RowSelect)<=TableauLAttachement.RowCount-1)
     then TableauLAttachement.Row:=strtointeger(RowSelect)
     else TableauLAttachement.Row:=TableauLAttachement.RowCount-1;
end
else TableauLAttachement.Row:=TableauLAttachement.RowCount-1;
TableauLAttachement.SetFocus;
end;


procedure TFSAttachements.EditDateAttachementKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSAttachements.EditDesignationAttachement.SetFocus;
     end;
end;

procedure TFSAttachements.EditNStructureMarcheEnter(Sender: TObject);
begin
     FSAttachements.TableauSelection.Visible:=true;
     FSAttachements.TableauSelection.Top:=FSAttachements.AfficheMarche.Top+FSAttachements.EditNStructureMarche.Top+FSAttachements.EditNStructureMarche.Height+2;
     FSAttachements.TableauSelection.Left:=FSAttachements.AfficheMarche.Left+FSAttachements.EditNStructureMarche.Left;
     ProcAfficheStructureMarche(FSAttachements.TableauSelection,FSAttachements.EditNSMarche.Text);
     FSAttachements.TableauSelection.Cells[0,0]:='Str';
     FSAttachements.TableauSelection.SetFocus;
end;

procedure TFSAttachements.EditStructureMarcheEnter(Sender: TObject);
begin
     FSAttachements.TableauSelection.Visible:=true;
     FSAttachements.TableauSelection.Top:=FSAttachements.AfficheMarche.Top+FSAttachements.EditStructureMarche.Top+FSAttachements.EditStructureMarche.Height+2;
     FSAttachements.TableauSelection.Left:=FSAttachements.AfficheMarche.Left+FSAttachements.EditStructureMarche.Left;
     ProcAfficheStructureMarche(FSAttachements.TableauSelection,FSAttachements.EditNSMarche.Text);
     FSAttachements.TableauSelection.Cells[0,0]:='Str';
     FSAttachements.TableauSelection.SetFocus;
end;

procedure TFSAttachements.EditNStatistiqueMarcheEnter(Sender: TObject);
begin
     FSAttachements.TableauSelection.Visible:=true;
     FSAttachements.TableauSelection.Top:=FSAttachements.AfficheMarche.Top+FSAttachements.EditNStatistiqueMarche.Top+FSAttachements.EditNStatistiqueMarche.Height+2;
     FSAttachements.TableauSelection.Left:=FSAttachements.AfficheMarche.Left+FSAttachements.EditNStatistiqueMarche.Left;
     ProcAfficheStatistiqueMarche(FSAttachements.TableauSelection,FSAttachements.EditNSMarche.Text,FSAttachements.EditNStructureMarche.Text);
     FSAttachements.TableauSelection.Cells[0,0]:='Stq';
     FSAttachements.TableauSelection.SetFocus;
end;

procedure TFSAttachements.EditStatistiqueMarcheEnter(Sender: TObject);
begin
     FSAttachements.TableauSelection.Visible:=true;
     FSAttachements.TableauSelection.Top:=FSAttachements.AfficheMarche.Top+FSAttachements.EditStatistiqueMarche.Top+FSAttachements.EditStatistiqueMarche.Height+2;
     FSAttachements.TableauSelection.Left:=FSAttachements.AfficheMarche.Left+FSAttachements.EditStatistiqueMarche.Left;
     ProcAfficheStatistiqueMarche(FSAttachements.TableauSelection,FSAttachements.EditNSMarche.Text,FSAttachements.EditNStructureMarche.Text);
     FSAttachements.TableauSelection.Cells[0,0]:='Stq';
     FSAttachements.TableauSelection.SetFocus;
end;

procedure TFSAttachements.EditTypeProjetEnter(Sender: TObject);
begin
     FSAttachements.TableauSelection.Visible:=false;
end;

Procedure ListeStructureStatistiqueExistante(TableauSelection:TStringGrid;  NSMarche:integer);
var  R,l,NStructureMarche,NStatistiqueMarche:integer;   OKConfiguration:boolean;
begin
     TableauSelection.ColCount:=7;
     TableauSelection.Cols[0].Text:='Num';
     TableauSelection.Cols[1].Text:='N°';
     TableauSelection.Cols[2].Text:='Marche';
     TableauSelection.Cols[3].Text:='N°';
     TableauSelection.Cols[4].Text:='Structure';
     TableauSelection.Cols[5].Text:='N°';
     TableauSelection.Cols[6].Text:='Statistique';

     TableauSelection.RowCount:=2;
     TableauSelection.Rows[1].Text:='';

     TypeProces:='Business'; FichierConcerne:='FDetail'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChDetailMarche:=Adresse;
     assignfile(FDetailMarche,ChDetailMarche);
     if FileExists(ChDetailMarche)then
     Reset(FDetailMarche)
     else Rewrite(FDetailMarche);
     Seek(FDetailMarche,0);
     R:=0;
     while not eof(FDetailMarche) do
     begin
          Read(FDetailMarche,RDetailMarche);

          if(strtointeger(DTrie('M',RDetailMarche.CodeTrie))=NSMarche)then
          begin
               NStructureMarche:=strtointeger(DTrie('S',RDetailMarche.CodeTrie));
               NStatistiqueMarche:=strtointeger(DTrie('T',RDetailMarche.CodeTrie));
               l:=1;
               OKConfiguration:=false;
               while(l<=R)and(OKConfiguration=false)do
               begin
                    if(TableauSelection.Cells[1,l]=inttostr(NSMarche))
                    and(TableauSelection.Cells[3,l]=inttostr(NStructureMarche))
                    and(TableauSelection.Cells[5,l]=inttostr(NStatistiqueMarche))
                    then
                    begin
                         OKConfiguration:=true;
                    end;
               l:=l+1;
               end;

               if(OKConfiguration=false)then
               begin
                    R:=R+1;
                    TableauSelection.Rows[R].Text:=inttostr(R);
                    TableauSelection.Cells[1,R]:=inttostr(NSMarche);
                    TableauSelection.Cells[2,R]:=ChercherMarche(NSMarche).Marche;
                    TableauSelection.Cells[3,R]:=inttostr(NStructureMarche);
                    TableauSelection.Cells[4,R]:=ChercherStructureMarche(NSMarche,NStructureMarche).StructureMarche;
                    TableauSelection.Cells[5,R]:=inttostr(NStatistiqueMarche);
                    TableauSelection.Cells[6,R]:=ChercherStatistiqueMarche(NSMarche,NStatistiqueMarche).StatistiqueMarche;
               end;
          end;
     end;
     CloseFile(FDetailMarche);

     if(R>0)then  TableauSelection.RowCount:=R+1
            else  TableauSelection.RowCount:=2;

      AjusterColWidth(TableauSelection,'','');
end;

procedure TFSAttachements.TableauDetailAttachementKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  ARow,Num,NSMarche,NAttachement,NStructure,NStatistiqueMarche:integer;  OK:boolean;
begin
FSAttachements.EditSauvegardeAttachement.Text:='OK';
ARow:=FSAttachements.TableauDetailAttachement.Row;

NSMarche:=strtointeger(FSAttachements.EditNSMarche.Text);
NStructure:=strtointeger(DTrie('S',FSAttachements.TableauDetailAttachement.Cells[10,ARow]))*strtointeger(FSAttachements.IndiceAfficheStructure.Text);
NStatistiqueMarche:=strtointeger(FSAttachements.EditNStatistiqueMarche.Text)*strtointeger(FSAttachements.IndiceAfficheStatistique.Text);
NAttachement:=strtointeger(FSAttachements.TableauDetailAttachement.Cells[2,ARow])*strtointeger(FSAttachements.IndiceAfficheAttachement.Text);

if key in[VK_RETURN]then
begin
     if(FSAttachements.EditNAttachementMarche.Text<>'')then
     begin
     if((FSAttachements.TableauDetailAttachement.Cells[6,ARow]='')or(FSAttachements.TableauDetailAttachement.Cells[9,ARow]=''))
     and(FSAttachements.TableauDetailAttachement.Cells[4,ARow]<>'')
     and(FSAttachements.TableauDetailAttachement.Cells[5,ARow]<>'')
     then
     begin
          if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

          FSAttachements.AfficheSaisieAttachement.Visible:=true;
          FSAttachements.BitValideAttachement.Kind:=bkRetry;
          FSAttachements.BitValideAttachement.Caption:='Modifier';
          FSAttachements.EditCodeArticleAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[3,ARow];
          FSAttachements.EditDesignationArticleAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[4,ARow];
          FSAttachements.EditUnitMAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[5,ARow];
          FSAttachements.EditQuantiteAttachementRealise.Text:=FSAttachements.TableauDetailAttachement.Cells[6,ARow];
          FSAttachements.EditQuantiteRealiseObjetMarche.Text:=FSAttachements.TableauDetailAttachement.Cells[7,ARow];
          FSAttachements.EditQuantiteRealiseObjetAvenant.Text:=FSAttachements.TableauDetailAttachement.Cells[8,ARow];
          FSAttachements.EditPrixUnitaireAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[9,ARow];
          FSAttachements.EditTrieAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[10,ARow];
          FSAttachements.EditCodeProduitAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[11,ARow];
          FSAttachements.EditQuantiteAttachementRealise.SetFocus;
     end
     else
     begin
          if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

          FSAttachements.AfficheSaisieAttachement.Visible:=true;
          FSAttachements.BitValideAttachement.Kind:=bkAll;
          FSAttachements.BitValideAttachement.Caption:='Valider';

          ARow:=FSAttachements.TableauDetailAttachement.Row;

          FSAttachements.EditCodeArticleAttachement.Text:='';
          FSAttachements.EditDesignationArticleAttachement.Text:='';
          FSAttachements.EditUnitMAttachement.Text:='';
          FSAttachements.EditQuantiteAttachementRealise.Text:='';
          FSAttachements.EditQuantiteRealiseObjetMarche.Text:='';
          FSAttachements.EditQuantiteRealiseObjetAvenant.Text:='';
          FSAttachements.EditPrixUnitaireAttachement.Text:='';
          FSAttachements.EditTrieAttachement.Text:='';
          FSAttachements.EditCodeProduitAttachement.Text:='';
          FSAttachements.EditCodeArticleAttachement.SetFocus;
     end;
end;
end;

if key in[VK_DELETE]then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

if(FSAttachements.TableauDetailAttachement.Cells[2,ARow]='')then
begin
     key:=VK_RETURN;
     Exit;
end;
     FSAttachements.AfficheSaisieAttachement.Visible:=true;
     FSAttachements.BitValideAttachement.Kind:=bkCancel;
     FSAttachements.BitValideAttachement.Caption:='Supprimer';
     FSAttachements.EditCodeArticleAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[3,ARow];
     FSAttachements.EditDesignationArticleAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[4,ARow];
     FSAttachements.EditUnitMAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[5,ARow];
     FSAttachements.EditQuantiteAttachementRealise.Text:=FSAttachements.TableauDetailAttachement.Cells[6,ARow];
     FSAttachements.EditQuantiteRealiseObjetMarche.Text:=FSAttachements.TableauDetailAttachement.Cells[7,ARow];
     FSAttachements.EditQuantiteRealiseObjetAvenant.Text:=FSAttachements.TableauDetailAttachement.Cells[8,ARow];
     FSAttachements.EditPrixUnitaireAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[9,ARow];
     FSAttachements.EditTrieAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[10,ARow];
     FSAttachements.EditCodeProduitAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[11,ARow];

     FSAttachements.BitValideAttachement.SetFocus;
     key:=VK_RETURN;
end;
end;

procedure TFSAttachements.EditCodeArticleAttachementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var NSMarche:integer; OK:boolean;
begin

if key in[VK_RETURN]then
begin
     if(FSAttachements.EditCodeArticleAttachement.Text<>'')
     then
     begin
          if((FSAttachements.AfficheDesignationArticlesAttachement.Visible=true)
          and(FSAttachements.TableauDesignationArticlesAttachement.Cells[1,1]<>''))
          then
          begin
               FSAttachements.TableauDesignationArticlesAttachement.SetFocus;
          end
          else
          begin
               FSAttachements.EditDesignationArticleAttachement.SetFocus;
          end;
     end
     else
     begin
          FSAttachements.AfficheDesignationArticlesAttachement.Visible:=false;
          FSAttachements.EditDesignationArticleAttachement.SetFocus;
     end;
end;
end;

procedure TFSAttachements.EditCodeArticleAttachementKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var i,R,NSMarche:integer; OK,OKRow:boolean;  IndiceMarche:string[15];
begin
IndiceMarche:=completezerogauche(FSAttachements.EditNSMarche.Text,'5')+
              completezerogauche(FSAttachements.EditNStructureMarche.Text,'5')+
              completezerogauche(FSAttachements.EditNStatistiqueMarche.Text,'5');

if(FSAttachements.AfficheDesignationArticlesAttachement.Visible=false)
then
begin
FSAttachements.AfficheDesignationArticlesAttachement.Visible:=true;
FSAttachements.TableauDesignationArticlesAttachement.Cols[0].Text:='';
FSAttachements.TableauDesignationArticlesAttachement.Cols[1].Text:='Désignation Article';
FSAttachements.TableauDesignationArticlesAttachement.Cols[2].Text:='Unité M.';
FSAttachements.TableauDesignationArticlesAttachement.Cols[3].Text:='Prix U.';
FSAttachements.TableauDesignationArticlesAttachement.Cols[4].Text:='Trie';
FSAttachements.TableauDesignationArticlesAttachement.Cols[5].Text:='Code Produit';
FSAttachements.TableauDesignationArticlesAttachement.RowCount:=2;
FSAttachements.TableauDesignationArticlesAttachement.Rows[1].Text:='';
end;

NSMarche:=strtointeger(FSAttachements.EditNSMarche.Text);

TypeProces:='Business'; FichierConcerne:='FDetail'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDetailMarche:=Adresse;
assignfile(FDetailMarche,ChDetailMarche);
if FileExists(ChDetailMarche)then
Reset(FDetailMarche)
else Rewrite(FDetailMarche);
Seek(FDetailMarche,0);
i:=0;
while not eof(FDetailMarche) do
begin                                                           
     Read(FDetailMarche,RDetailMarche);

     OK:=false;
     if((DTrie('M',RDetailMarche.CodeTrie)=FSAttachements.EditNSMarche.Text)
     and(DTrie('S',RDetailMarche.CodeTrie)=FSAttachements.EditNStructureMarche.Text)
     and(DTrie('T',RDetailMarche.CodeTrie)=FSAttachements.EditNStatistiqueMarche.Text))
     then
     begin
          R:=1;
          while(R<=FSAttachements.TableauDetailAttachement.RowCount-1)and(OK=false)do
          begin
               if((FSAttachements.BitValideAttachement.Kind=bkRetry)and(FSAttachements.BitValideAttachement.Caption='Modifier'))
               then
               begin
                   if(R=FSAttachements.TableauDetailAttachement.Row)
                   then OKRow:=true
                   else OKRow:=false;
               end;
          
               if((OKRow=false)
               and(FSAttachements.TableauDetailAttachement.Cells[2,R]=FSAttachements.EditNAttachement.Text)
               and(DTrie('M',FSAttachements.TableauDetailAttachement.Cells[10,R])=FSAttachements.EditNSMarche.Text)
               and(DTrie('S',FSAttachements.TableauDetailAttachement.Cells[10,R])=FSAttachements.EditNStructureMarche.Text)
               and(DTrie('T',FSAttachements.TableauDetailAttachement.Cells[10,R])=FSAttachements.EditNStatistiqueMarche.Text))
               then
               begin
                    if(FSAttachements.TableauDetailAttachement.Cells[10,R]=RDetailMarche.CodeTrie)
                    then
                    begin
                         OK:=true;
                    end;
               end;
          R:=R+1;
          end;
          {********************************************************************}
     end
     else OK:=true;

     if((OK=false)
     and(FirstLaters(RDetailMarche.CodeTrie,Longueur(FSAttachements.EditCodeArticleAttachement.Text)+15)=IndiceMarche+FSAttachements.EditCodeArticleAttachement.Text))
     then
     begin
          i:=i+1;
          FSAttachements.TableauDesignationArticlesAttachement.Rows[i].Text:='';
          FSAttachements.TableauDesignationArticlesAttachement.Cells[0,i]:=RDetailMarche.NArticle;
          FSAttachements.TableauDesignationArticlesAttachement.Cells[1,i]:=RDetailMarche.DesignationArticle;
          FSAttachements.TableauDesignationArticlesAttachement.Cells[2,i]:=RDetailMarche.UniteM;
          if(RDetailMarche.PrixUnitaire<>0)
          then FSAttachements.TableauDesignationArticlesAttachement.Cells[3,i]:=floattostr(RDetailMarche.PrixUnitaire)
          else FSAttachements.TableauDesignationArticlesAttachement.Cells[3,i]:='';
          FSAttachements.TableauDesignationArticlesAttachement.Cells[4,i]:=RDetailMarche.CodeTrie;
          FSAttachements.TableauDesignationArticlesAttachement.Cells[5,i]:=RDetailMarche.CodeStock;
     end;
end;
if(i>0)then
       begin
            FSAttachements.TableauDesignationArticlesAttachement.RowCount:=i+1;
       end
       else
       begin
            FSAttachements.TableauDesignationArticlesAttachement.RowCount:=2;
            FSAttachements.TableauDesignationArticlesAttachement.Rows[1].Text:='';
       end;
TrierArticleAttachement(4);
end;

procedure TFSAttachements.EditDesignationArticleAttachementKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var i,R,NSMarche:integer; OK,OKRow:boolean;
begin
if(FSAttachements.AfficheDesignationArticlesAttachement.Visible=false)
then
begin
FSAttachements.AfficheDesignationArticlesAttachement.Visible:=true;
FSAttachements.TableauDesignationArticlesAttachement.Cols[0].Text:='';
FSAttachements.TableauDesignationArticlesAttachement.Cols[1].Text:='Désignation Article';
FSAttachements.TableauDesignationArticlesAttachement.Cols[2].Text:='Unité M.';
FSAttachements.TableauDesignationArticlesAttachement.Cols[3].Text:='Prix U.';
FSAttachements.TableauDesignationArticlesAttachement.Cols[4].Text:='Trie';
FSAttachements.TableauDesignationArticlesAttachement.Cols[5].Text:='Code Produit';
FSAttachements.TableauDesignationArticlesAttachement.RowCount:=2;
FSAttachements.TableauDesignationArticlesAttachement.Rows[1].Text:='';
end;

NSMarche:=strtointeger(FSAttachements.EditNSMarche.Text);

TypeProces:='Business'; FichierConcerne:='FDetail'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDetailMarche:=Adresse;
assignfile(FDetailMarche,ChDetailMarche);
if FileExists(ChDetailMarche)then
Reset(FDetailMarche)
else Rewrite(FDetailMarche);
Seek(FDetailMarche,0);
i:=0;
while not eof(FDetailMarche) do
begin
     Read(FDetailMarche,RDetailMarche);

     OK:=false;
     if((DTrie('M',RDetailMarche.CodeTrie)=FSAttachements.EditNSMarche.Text)
     and(DTrie('S',RDetailMarche.CodeTrie)=FSAttachements.EditNStructureMarche.Text)
     and(DTrie('T',RDetailMarche.CodeTrie)=FSAttachements.EditNStatistiqueMarche.Text))
     then
     begin
          R:=1;
          while(R<=FSAttachements.TableauDetailAttachement.RowCount-1)and(OK=false)do
          begin
               if((FSAttachements.BitValideAttachement.Kind=bkRetry)and(FSAttachements.BitValideAttachement.Caption='Modifier'))
               then
               begin
                   if(R=FSAttachements.TableauDetailAttachement.Row)
                   then OKRow:=true
                   else OKRow:=false;
               end;

               if((OKRow=false)
               and(FSAttachements.TableauDetailAttachement.Cells[2,R]=FSAttachements.EditNAttachementMarche.Text)
               and(DTrie('M',FSAttachements.TableauDetailAttachement.Cells[10,R])=FSAttachements.EditNSMarche.Text)
               and(DTrie('S',FSAttachements.TableauDetailAttachement.Cells[10,R])=FSAttachements.EditNStructureMarche.Text)
               and(DTrie('T',FSAttachements.TableauDetailAttachement.Cells[10,R])=FSAttachements.EditNStatistiqueMarche.Text))
               then
               begin
                    if(FSAttachements.TableauDetailAttachement.Cells[4,R]=RDetailMarche.DesignationArticle)
                    then
                    begin
                         OK:=true;
                    end;
               end;
          R:=R+1;
          end;
          {********************************************************************}
     end
     else OK:=true;

     if((OK=false)
     and(FirstLaters(RDetailMarche.DesignationArticle,Longueur(FSAttachements.EditDesignationArticleAttachement.Text))=FSAttachements.EditDesignationArticleAttachement.Text))
     then
     begin
          i:=i+1;
          FSAttachements.TableauDesignationArticlesAttachement.Rows[i].Text:='';
          FSAttachements.TableauDesignationArticlesAttachement.Cells[0,i]:=RDetailMarche.NArticle;
          FSAttachements.TableauDesignationArticlesAttachement.Cells[1,i]:=RDetailMarche.DesignationArticle;
          FSAttachements.TableauDesignationArticlesAttachement.Cells[2,i]:=RDetailMarche.UniteM;
          if(RDetailMarche.PrixUnitaire<>0)
          then FSAttachements.TableauDesignationArticlesAttachement.Cells[3,i]:=floattostr(RDetailMarche.PrixUnitaire)
          else FSAttachements.TableauDesignationArticlesAttachement.Cells[3,i]:='';
          FSAttachements.TableauDesignationArticlesAttachement.Cells[4,i]:=RDetailMarche.CodeTrie;
          FSAttachements.TableauDesignationArticlesAttachement.Cells[5,i]:=RDetailMarche.CodeStock;
     end;
end;
if(i>0)then
       begin
            FSAttachements.TableauDesignationArticlesAttachement.RowCount:=i+1;
       end
       else
       begin
            FSAttachements.TableauDesignationArticlesAttachement.RowCount:=2;
            FSAttachements.TableauDesignationArticlesAttachement.Rows[1].Text:='';
       end;
TrierArticleAttachement(4);
end;

procedure TFSAttachements.EditQuantiteAttachementRealiseKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var  NSMarche,NSTructureMarche:integer; QteMarche,QteAvenant,QteRealiseObjetMarche,QteRealiseObjetAvenant,QteMois:real;
     CodeTrie:string[25];
begin
if key in[VK_RETURN]then
begin
     FSAttachements.EditQuantiteRealiseObjetMarche.SetFocus;
end;
end;

procedure TFSAttachements.EditQuantiteAttachementRealiseExit(
  Sender: TObject);
var  R,NSMarche,NSTructureMarche:integer; QteMarche,QteAvenant,QteRealiseObjetMarche,QteRealiseObjetAvenant,QteAttachementRealise,
     QteRestanteObjetMarche,QteRestanteObjetAvenant,QteAModifierObjetMarche,QteAModifierObjetAvenant:real;   CodeTrie:string[31];
begin
NSMarche:=strtointeger(FSAttachements.EditNSMarche.Text);
NSTructureMarche:=strtointeger(FSAttachements.EditNStructureMarche.Text);
CodeTrie:=FSAttachements.EditTrieAttachement.Text;

QteMarche:=0;               QteAvenant:=0;
QteRealiseObjetMarche:=0;   QteRealiseObjetAvenant:=0;
QteRestanteObjetMarche:=0;  QteRestanteObjetAvenant:=0;
QteAModifierObjetMarche:=0; QteAModifierObjetAvenant:=0;

QteAttachementRealise:=strtoreal(FSAttachements.EditQuantiteAttachementRealise.Text);
SoldeAttachement(CodeTrie,QteMarche,QteAvenant,QteRealiseObjetMarche,QteRealiseObjetAvenant,QteRestanteObjetMarche,QteRestanteObjetAvenant);

QteAModifierObjetMarche:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[7,FSAttachements.TableauDetailAttachement.Row]);
QteAModifierObjetAvenant:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[8,FSAttachements.TableauDetailAttachement.Row]);



if((FSAttachements.BitValideAttachement.Kind=bkRetry)
and(FSAttachements.BitValideAttachement.Caption='Modifier'))
then
begin
     QteRestanteObjetMarche:=ValePrecis(QteRestanteObjetMarche+QteAModifierObjetMarche,3);
     QteRestanteObjetAvenant:=ValePrecis(QteRestanteObjetAvenant+QteAModifierObjetAvenant,3);
end;

if(FSAttachements.RBControleQteActive.Checked=true)then
begin
      if((ValePrecis(QteRestanteObjetMarche+QteRestanteObjetAvenant,3))<QteAttachementRealise)then
      begin
           FSAttachements.AfficheEtatMarche.Visible:=true;
           FSAttachements.EditEtatMarche.Lines.Text:='Veuillez respecter le marché SVP !';
           FSAttachements.EditEtatMarche.Lines.Add('................Etat.................');
           if(QteMarche>0)then
           begin
                FSAttachements.EditEtatMarche.Lines.Add('Quantité Marché: '+Vergule(floattostr(QteMarche),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);

           end;
           if(QteAvenant>0)then
           begin
                FSAttachements.EditEtatMarche.Lines.Add('Quantité Avenant: '+Vergule(floattostr(QteAvenant),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);

           end;
           if(QteRealiseObjetMarche>0)then
           begin
                FSAttachements.EditEtatMarche.Lines.Add('Quantité réalisée marché: '+Vergule(floattostr(QteRealiseObjetMarche),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);

           end;
           if(QteRealiseObjetAvenant>0)then
           begin
                FSAttachements.EditEtatMarche.Lines.Add('Quantité réalisée Avenant: '+Vergule(floattostr(QteRealiseObjetAvenant),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);

           end;
           FSAttachements.EditEtatMarche.Lines.Add('................Résultat.................');
           if(QteMarche=0)and(QteAvenant=0)then
           FSAttachements.EditEtatMarche.Lines.Add('Cet article ne dispose par de quantité !');

           if(QteMarche>0)then
           begin
                FSAttachements.EditEtatMarche.Lines.Add('La quantité a réalisé en Marché: '+Vergule(floattostr(QteRestanteObjetMarche),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);
           end;
           if(QteAvenant>0)then
           begin
                FSAttachements.EditEtatMarche.Lines.Add('La quantité a réalisé en Avenant: '+Vergule(floattostr(QteRestanteObjetAvenant),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);
           end;
           if(QteMarche>0)and(QteAvenant>0)then
           begin
                FSAttachements.EditEtatMarche.Lines.Add('La quantité a réalisé Globale: '+Vergule(floattostr(QteRestanteObjetMarche+QteRestanteObjetAvenant),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);
           end;
           FSAttachements.BitOKEtatMarche.SetFocus;
           FSAttachements.EditQte.Text:='QGA';
      end
      else
      begin
           if(strtoreal(FSAttachements.EditQuantiteAttachementRealise.Text)<=QteRestanteObjetMarche)then
           begin
                FSAttachements.EditQuantiteRealiseObjetMarche.Text:=FSAttachements.EditQuantiteAttachementRealise.Text;
                FSAttachements.EditQuantiteRealiseObjetAvenant.Text:='';
           end
           else
           begin
                FSAttachements.EditQuantiteRealiseObjetMarche.Text:=floattostr(QteRestanteObjetMarche);
                FSAttachements.EditQuantiteRealiseObjetAvenant.Text:=floattostr(strtoreal(FSAttachements.EditQuantiteAttachementRealise.Text)-QteRestanteObjetMarche);
           end;
      end;
end
else FSAttachements.EditQuantiteRealiseObjetMarche.Text:=FSAttachements.EditQuantiteAttachementRealise.Text;
end;

procedure TFSAttachements.EditQuantiteAttachementRealiseKeyPress(
  Sender: TObject; var Key: Char);
begin
if not(key in['0'..'9','.',','])then key:=#0;
if key='.' then key:=',';
end;

procedure TFSAttachements.EditQuantiteRealiseObjetMarcheExit(
  Sender: TObject);
var  i,R,NSMarche,NSTructureMarche:integer; QteMarche,QteAvenant,
     QteRealiseObjetMarche,QteRealiseObjetAvenant,QteAttachementRealiseObjetMarche,QteAttachementRealiseObjetAvenant,
     QteRestanteObjetMarche,QteRestanteObjetAvenant,QteAModifierObjetMarche,QteAModifierObjetAvenant:real;
     CodeTrie:string[31]; OK:boolean;
begin
NSMarche:=strtointeger(FSAttachements.EditNSMarche.Text);
NSTructureMarche:=strtointeger(FSAttachements.EditNStructureMarche.Text);
CodeTrie:=FSAttachements.EditTrieAttachement.Text;

QteMarche:=0;               QteAvenant:=0;
QteRealiseObjetMarche:=0;   QteRealiseObjetAvenant:=0;
QteRestanteObjetMarche:=0;  QteRestanteObjetAvenant:=0;
QteAModifierObjetMarche:=0; QteAModifierObjetAvenant:=0;

QteAttachementRealiseObjetMarche:=strtoreal(FSAttachements.EditQuantiteRealiseObjetMarche.Text);
QteAttachementRealiseObjetAvenant:=strtoreal(FSAttachements.EditQuantiteRealiseObjetAvenant.Text);

SoldeAttachement(CodeTrie,QteMarche,QteAvenant,QteRealiseObjetMarche,QteRealiseObjetAvenant,QteRestanteObjetMarche,QteRestanteObjetAvenant);

QteAModifierObjetMarche:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[7,FSAttachements.TableauDetailAttachement.Row]);
QteAModifierObjetAvenant:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[8,FSAttachements.TableauDetailAttachement.Row]);

if((FSAttachements.BitValideAttachement.Kind=bkRetry)
and(FSAttachements.BitValideAttachement.Caption='Modifier'))
then
begin
     QteRealiseObjetMarche:=ValePrecis(QteRealiseObjetMarche-QteAModifierObjetMarche,3);
     QteRealiseObjetAvenant:=ValePrecis(QteRealiseObjetAvenant-QteAModifierObjetAvenant,3);
     QteRestanteObjetMarche:=ValePrecis(QteRestanteObjetMarche+QteAModifierObjetMarche,3);
     QteRestanteObjetAvenant:=ValePrecis(QteRestanteObjetAvenant+QteAModifierObjetAvenant,3);
end;

if(FSAttachements.RBControleQteActive.Checked=true)
and((ValePrecis(QteRestanteObjetMarche,3)<ValePrecis(QteAttachementRealiseObjetMarche,3))or(ValePrecis(QteRestanteObjetAvenant,3)<ValePrecis(QteAttachementRealiseObjetAvenant,3)))then
begin
     showmessage(floattostr(QteRestanteObjetMarche)+'<'+floattostr(QteAttachementRealiseObjetMarche)+' or '+floattostr(QteRestanteObjetAvenant)+'<'+floattostr(QteAttachementRealiseObjetAvenant));
     FSAttachements.AfficheEtatMarche.Visible:=true;
     FSAttachements.EditEtatMarche.Lines.Text:='Veuillez respecter le marché SVP !';
     FSAttachements.EditEtatMarche.Lines.Add('................Etat.................');

     if(QteMarche>0)then
     begin
          FSAttachements.EditEtatMarche.Lines.Add('Quantité Marché: '+Vergule(floattostr(QteMarche),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);

     end;
     if(QteAvenant>0)then
     begin
          FSAttachements.EditEtatMarche.Lines.Add('Quantité Avenant: '+Vergule(floattostr(QteAvenant),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);

     end;
     if(QteRealiseObjetMarche>0)then
     begin
          FSAttachements.EditEtatMarche.Lines.Add('Quantité réalisée marché: '+Vergule(floattostr(QteRealiseObjetMarche),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);

     end;
     if(QteRealiseObjetAvenant>0)then
     begin
          FSAttachements.EditEtatMarche.Lines.Add('Quantité réalisée Avenant: '+Vergule(floattostr(QteRealiseObjetAvenant),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);

     end;
     FSAttachements.EditEtatMarche.Lines.Add('................Résultat.................');
     if(QteMarche=0)and(QteAvenant=0)then
     FSAttachements.EditEtatMarche.Lines.Add('Cet article ne dispose par de quantité !');

     if(QteMarche>0)then
     begin
          FSAttachements.EditEtatMarche.Lines.Add('La quantité à réalisé en Marché: '+Vergule(floattostr(QteRestanteObjetMarche),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);
     end;
     if(QteAvenant>0)then
     begin
          FSAttachements.EditEtatMarche.Lines.Add('La quantité à réalisé en Avenant: '+Vergule(floattostr(QteRestanteObjetAvenant),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);
     end;
     FSAttachements.BitOKEtatMarche.SetFocus;
     FSAttachements.EditQte.Text:='QMA';
end
else
begin
if(QteAttachementRealiseObjetAvenant>0)then
begin

end;
end;

end;

procedure TFSAttachements.EditQuantiteRealiseObjetMarcheKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key in[VK_RETURN]then
begin
     FSAttachements.BitValideAttachement.SetFocus;
end;
end;

procedure TFSAttachements.EditQuantiteRealiseObjetMarcheKeyPress(
  Sender: TObject; var Key: Char);
begin
if(FSAttachements.EditQuantiteAttachementRealise.Text='')then key:=#0;
if not(key in['0'..'9','.',','])then key:=#0;
if key='.' then key:=',';
end;

procedure TFSAttachements.BitValideAttachementClick(Sender: TObject);
var  i,C,ARow,NSMarche,NSTructureMarche:integer; QteMarche,QteAvenant,
     QteRealiseObjetMarche,QteRealiseObjetAvenant,QteRestanteObjetMarche,QteRestanteObjetAvenant,
     QteAttachementRealise,QteAModifierObjetMarche,QteAModifierObjetAvenant:real; OK:boolean;  CodeTrie:string[26];  NotRow,NotCol:string;
begin
FSAttachements.AfficheEtatMarche.Visible:=false;
ARow:=FSAttachements.TableauDetailAttachement.Row;

i:=1;
OK:=false;
while(i<=FSAttachements.TableauDetailAttachement.RowCount-1)and(OK=false)do
begin
     if((strtointeger(DTrie('S',FSAttachements.TableauDetailAttachement.Cells[10,i]))=(strtointeger(FSAttachements.EditNStructureMarche.Text)*strtointeger(FSAttachements.IndiceAfficheStructure.Text)))
     and(strtointeger(DTrie('T',FSAttachements.TableauDetailAttachement.Cells[10,i]))=(strtointeger(FSAttachements.EditNStatistiqueMarche.Text)*strtointeger(FSAttachements.IndiceAfficheStatistique.Text)))
     and(((FSAttachements.TableauDetailAttachement.Cells[10,i]<>'')and(FSAttachements.TableauDetailAttachement.Cells[10,i]=FSAttachements.EditTrieAttachement.Text))
     or(FSAttachements.TableauDetailAttachement.Cells[4,i]=FSAttachements.EditDesignationArticleAttachement.Text)))
     then
     begin
          if((FSAttachements.BitValideAttachement.Kind=bkCancel)and(FSAttachements.BitValideAttachement.Caption='Supprimer'))
          then i:=FSAttachements.TableauDetailAttachement.RowCount-1
          else
          if((FSAttachements.BitValideAttachement.Kind=bkAll)and(FSAttachements.BitValideAttachement.Caption='Valider'))
          then OK:=true
          else
          if((FSAttachements.BitValideAttachement.Kind=bkRetry)and(FSAttachements.BitValideAttachement.Caption='Modifier'))
          then if(i<>ARow)then OK:=true;
          if(OK=true)then
          begin
               showmessage('L''article est déja utilisé ! ');
               FSAttachements.EditCodeArticleAttachement.SetFocus;
               Exit;
          end;
     end;
i:=i+1;
end;

NSMarche:=strtointeger(FSAttachements.EditNSMarche.Text);
NSTructureMarche:=strtointeger(FSAttachements.EditNStructureMarche.Text);
CodeTrie:=FSAttachements.EditTrieAttachement.Text;
QteMarche:=0;  QteAvenant:=0;
QteRealiseObjetMarche:=0;  QteRealiseObjetAvenant:=0;
QteRestanteObjetMarche:=0; QteRestanteObjetAvenant:=0;
QteAModifierObjetMarche:=0;QteAModifierObjetAvenant:=0;

SoldeAttachement(CodeTrie,QteMarche,QteAvenant,QteRealiseObjetMarche,QteRealiseObjetAvenant,QteRestanteObjetMarche,QteRestanteObjetAvenant);


QteAModifierObjetMarche:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[7,FSAttachements.TableauDetailAttachement.Row]);
QteAModifierObjetAvenant:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[8,FSAttachements.TableauDetailAttachement.Row]);

if((FSAttachements.BitValideAttachement.Kind=bkRetry)
and(FSAttachements.BitValideAttachement.Caption='Modifier'))
then
begin
     QteRealiseObjetMarche:=ValePrecis(QteRealiseObjetMarche-QteAModifierObjetMarche,3);
     QteRealiseObjetAvenant:=ValePrecis(QteRealiseObjetAvenant-QteAModifierObjetAvenant,3);
     QteRestanteObjetMarche:=ValePrecis(QteRestanteObjetMarche+QteAModifierObjetMarche,3);
     QteRestanteObjetAvenant:=ValePrecis(QteRestanteObjetAvenant+QteAModifierObjetAvenant,3);
end;

if(((FSAttachements.BitValideAttachement.Kind=bkAll)and(FSAttachements.BitValideAttachement.Caption='Valider'))
or((FSAttachements.BitValideAttachement.Kind=bkRetry)and(FSAttachements.BitValideAttachement.Caption='Modifier')))
and((QteMarche>0)or(QteAvenant>0))
then
begin
if((strtoreal(FSAttachements.EditQuantiteAttachementRealise.Text)<=0))
then
begin
     FSAttachements.AfficheEtatMarche.Visible:=true;
     FSAttachements.EditEtatMarche.Lines.Text:='';
     FSAttachements.EditEtatMarche.Lines.Add('.......... Anomalie ? ..........');
     FSAttachements.EditEtatMarche.Lines.Add(' ');
     FSAttachements.EditEtatMarche.Lines.Add('Veuillez préciser la quantité SVP !');
     FSAttachements.EditEtatMarche.Lines.Add('Attention ! Qte réalisé= '+FSAttachements.EditQuantiteAttachementRealise.Text);
     FSAttachements.BitOKEtatMarche.SetFocus;
     FSAttachements.EditQte.Text:='QGA';
     Exit;
end
else
if(((strtoreal(FSAttachements.EditQuantiteRealiseObjetMarche.Text)<=0))
and((strtoreal(FSAttachements.EditQuantiteRealiseObjetAvenant.Text)<=0)))
then
begin
     FSAttachements.AfficheEtatMarche.Visible:=true;
     FSAttachements.EditEtatMarche.Lines.Text:='';
     FSAttachements.EditEtatMarche.Lines.Add('.......... Anomalie ? ..........');
     FSAttachements.EditEtatMarche.Lines.Add(' ');
     FSAttachements.EditEtatMarche.Lines.Add('Veuillez préciser la quantité SVP !');
     FSAttachements.EditEtatMarche.Lines.Add('Attention ! Qte.OM=0 et Qte.OA=0');
     FSAttachements.BitOKEtatMarche.SetFocus;
     FSAttachements.EditQte.Text:='QMA';
     Exit;
end
else
if(ValePrecis(strtoreal(FSAttachements.EditQuantiteRealiseObjetMarche.Text)+strtoreal(FSAttachements.EditQuantiteRealiseObjetAvenant.Text),3)
  -ValePrecis(strtoreal(FSAttachements.EditQuantiteAttachementRealise.Text),3))>0
then
begin
     FSAttachements.AfficheEtatMarche.Visible:=true;
     FSAttachements.EditEtatMarche.Lines.Text:='';
     FSAttachements.EditEtatMarche.Lines.Add('.......... Anomalie ? ..........');
     FSAttachements.EditEtatMarche.Lines.Add(' ');
     FSAttachements.EditEtatMarche.Lines.Add('Veuillez vérifier les quantités SVP !');
     FSAttachements.EditEtatMarche.Lines.Add('Attention ! Qte.Réalisé<>Qte.OM+Qte.OA '+floattostr(strtoreal(FSAttachements.EditQuantiteAttachementRealise.Text))+' et '+floattostr(strtoreal(FSAttachements.EditQuantiteRealiseObjetMarche.Text)+strtoreal(FSAttachements.EditQuantiteRealiseObjetAvenant.Text)));
     FSAttachements.BitOKEtatMarche.SetFocus;
     FSAttachements.EditQte.Text:='QMA';
     Exit;
end;
end;

if((FSAttachements.BitValideAttachement.Kind=bkAll)
and(FSAttachements.BitValideAttachement.Caption='Valider'))
then
begin
if(FSAttachements.TableauDetailAttachement.Cells[2,ARow]<>'')then
FSAttachements.TableauDetailAttachement.RowCount:=FSAttachements.TableauDetailAttachement.RowCount+1;
ARow:=FSAttachements.TableauDetailAttachement.RowCount-1;
FSAttachements.TableauDetailAttachement.Rows[ARow].Text:='';
FSAttachements.TableauDetailAttachement.Cells[1,ARow]:='';
FSAttachements.TableauDetailAttachement.Cells[2,ARow]:=FSAttachements.EditNAttachementMarche.Text;
FSAttachements.TableauDetailAttachement.Cells[3,ARow]:=FSAttachements.EditCodeArticleAttachement.Text;
FSAttachements.TableauDetailAttachement.Cells[4,ARow]:=FSAttachements.EditDesignationArticleAttachement.Text;
FSAttachements.TableauDetailAttachement.Cells[5,ARow]:=FSAttachements.EditUnitMAttachement.Text;
FSAttachements.TableauDetailAttachement.Cells[6,ARow]:=FSAttachements.EditQuantiteAttachementRealise.Text;
FSAttachements.TableauDetailAttachement.Cells[7,ARow]:=FSAttachements.EditQuantiteRealiseObjetMarche.Text;
FSAttachements.TableauDetailAttachement.Cells[8,ARow]:=FSAttachements.EditQuantiteRealiseObjetAvenant.Text;
FSAttachements.TableauDetailAttachement.Cells[9,ARow]:=FSAttachements.EditPrixUnitaireAttachement.Text;
FSAttachements.TableauDetailAttachement.Cells[10,ARow]:=FSAttachements.EditTrieAttachement.Text;
FSAttachements.TableauDetailAttachement.Cells[11,ARow]:=FSAttachements.EditCodeProduitAttachement.Text;
end;

if((FSAttachements.BitValideAttachement.Kind=bkRetry)
and(FSAttachements.BitValideAttachement.Caption='Modifier'))
then
begin
FSAttachements.TableauDetailAttachement.Cells[2,ARow]:=FSAttachements.EditNAttachementMarche.Text;
FSAttachements.TableauDetailAttachement.Cells[3,ARow]:=FSAttachements.EditCodeArticleAttachement.Text;
FSAttachements.TableauDetailAttachement.Cells[4,ARow]:=FSAttachements.EditDesignationArticleAttachement.Text;
FSAttachements.TableauDetailAttachement.Cells[5,ARow]:=FSAttachements.EditUnitMAttachement.Text;
FSAttachements.TableauDetailAttachement.Cells[6,ARow]:=FSAttachements.EditQuantiteAttachementRealise.Text;
FSAttachements.TableauDetailAttachement.Cells[7,ARow]:=FSAttachements.EditQuantiteRealiseObjetMarche.Text;
FSAttachements.TableauDetailAttachement.Cells[8,ARow]:=FSAttachements.EditQuantiteRealiseObjetAvenant.Text;
FSAttachements.TableauDetailAttachement.Cells[9,ARow]:=FSAttachements.EditPrixUnitaireAttachement.Text;
FSAttachements.TableauDetailAttachement.Cells[10,ARow]:=FSAttachements.EditTrieAttachement.Text;
FSAttachements.TableauDetailAttachement.Cells[11,ARow]:=FSAttachements.EditCodeProduitAttachement.Text;
end;

if((FSAttachements.BitValideAttachement.Kind=bkCancel)
and(FSAttachements.BitValideAttachement.Caption='Supprimer'))
then
begin
     FSAttachements.EditCodeArticleAttachement.Text:='';
     FSAttachements.EditDesignationArticleAttachement.Text:='';
     FSAttachements.EditUnitMAttachement.Text:='';
     FSAttachements.EditQuantiteAttachementRealise.Text:='';
     FSAttachements.EditQuantiteRealiseObjetMarche.Text:='';
     FSAttachements.EditQuantiteRealiseObjetAvenant.Text:='';
     FSAttachements.EditPrixUnitaireAttachement.Text:='';
     FSAttachements.EditTrieAttachement.Text:='';
     FSAttachements.EditNumAvenantAttachement.Text:='';
     FSAttachements.EditAvenantAttachement.Text:='';
     FSAttachements.EditCodeProduitAttachement.Text:='';

     FSAttachements.TableauDetailAttachement.Cells[3,ARow]:='';
     FSAttachements.TableauDetailAttachement.Cells[4,ARow]:='';
     FSAttachements.TableauDetailAttachement.Cells[5,ARow]:='';
     FSAttachements.TableauDetailAttachement.Cells[6,ARow]:='';
     FSAttachements.TableauDetailAttachement.Cells[7,ARow]:='';
     FSAttachements.TableauDetailAttachement.Cells[8,ARow]:='';
     FSAttachements.TableauDetailAttachement.Cells[9,ARow]:='';
     FSAttachements.TableauDetailAttachement.Cells[10,ARow]:='ZZZ'+FSAttachements.TableauDetailAttachement.Cells[10,ARow];
     FSAttachements.TableauDetailAttachement.Cells[11,ARow]:='';
end;

FSAttachements.TableauDetailAttachement.Row:=ARow;
FSAttachements.TableauDetailAttachement.SetFocus;
TrieRDetailAttachement(FSAttachements.TableauDetailAttachement,10);
OrganiseDetailAttachement(FSAttachements.TableauDetailAttachement);
FSAttachements.AfficheSaisieAttachement.Visible:=false;

NotRow:='';
NotCol:='1;2;9-11';   
for i:=1 to FSAttachements.TableauDetailAttachement.ColCount-1 do if ExisteNumInTexte(inttostr(i),NotCol)then FSAttachements.TableauDetailAttachement.ColWidths[i]:=0;
AjusterColWidth(FSAttachements.TableauDetailAttachement,NotRow,NotCol);

for C:=1 to FSAttachements.TableauDetailAttachement.ColCount-1 do
begin
     if(FSAttachements.TableauDetailAttachement.ColWidths[C]>strtointeger(FSAttachements.EditMaxColWidth.Text))then FSAttachements.TableauDetailAttachement.ColWidths[C]:=strtointeger(FSAttachements.EditMaxColWidth.Text);
end;
end;

procedure TFSAttachements.BitBtn28Click(Sender: TObject);
begin
FSAttachements.AfficheEtatMarche.Visible:=false;
FSAttachements.AfficheSaisieAttachement.Visible:=false;
end;

Procedure TrierArticleAttachement(Indice:integer);
var OK:boolean; i,R,m,j,ARow,VarA,VarB:integer;
begin
if(FSAttachements.AfficheDesignationArticlesAttachement.Visible=true)then
begin
FSAttachements.TableauDesignationArticlesAttachement.RowCount:=FSAttachements.TableauDesignationArticlesAttachement.RowCount+1;
R:=FSAttachements.TableauDesignationArticlesAttachement.RowCount-1;
FSAttachements.TableauDesignationArticlesAttachement.Rows[R].Text:='';
OK:=true;
while(OK=true)do
begin
OK:=false;
for i:=1 to FSAttachements.TableauDesignationArticlesAttachement.RowCount-3 do
begin
     if(FSAttachements.TableauDesignationArticlesAttachement.Cells[Indice,i]>FSAttachements.TableauDesignationArticlesAttachement.Cells[Indice,i+1])then
     begin
          OK:=true;
          for m:=1 to 3 do
          begin
               if m=1 then begin VarA:=R; VarB:=i;end;
               if m=2 then begin VarA:=i; VarB:=i+1;end;
               if m=3 then begin VarA:=i+1; VarB:=R;end;
               for j:=0 to FSAttachements.TableauDesignationArticlesAttachement.ColCount-1 do
               begin
                    FSAttachements.TableauDesignationArticlesAttachement.Cells[j,VarA]:=FSAttachements.TableauDesignationArticlesAttachement.Cells[j,VarB];
               end;
          end;
          FSAttachements.TableauDesignationArticlesAttachement.Rows[R].Text:='';
     end;
end;
end;
FSAttachements.TableauDesignationArticlesAttachement.RowCount:=FSAttachements.TableauDesignationArticlesAttachement.RowCount-1;
end;
end;

Procedure SoldeAttachement(CodeTrie:string; var QteMarche,QteAvenant,QteRealiseObjetMarche,QteRealiseObjetAvenant,QteRestanteObjetMarche,QteRestanteObjetAvenant:real);
var  OK:boolean;  i,R,Signe,NSMarche:integer;  CodeTrieAvenant:string;
begin
QteMarche:=0;
QteAvenant:=0;
QteRealiseObjetMarche:=0;
QteRealiseObjetAvenant:=0;
QteRestanteObjetMarche:=0;
QteRestanteObjetAvenant:=0;

if(FSAttachements.EditNAttachementMarche.Text<>'')then
begin
     for R:=1 to FSAttachements.TableauDetailAttachement.RowCount-1 do
     begin
          if((FSAttachements.TableauDetailAttachement.Cells[1,R]='')
          and(FSAttachements.TableauDetailAttachement.Cells[10,R]=CodeTrie))
          then
          begin
               QteRealiseObjetMarche:=QteRealiseObjetMarche+strtoreal(FSAttachements.TableauDetailAttachement.Cells[7,R]);
               QteRealiseObjetAvenant:=QteRealiseObjetAvenant+strtoreal(FSAttachements.TableauDetailAttachement.Cells[8,R]);
          end;
     end;
end;

NSMarche:=strtointeger(DTrie('M',CodeTrie));

TypeProces:='Business'; FichierConcerne:='FDetail'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDetailMarcheCopie:=Adresse;
assignfile(FDetailMarcheCopie,ChDetailMarcheCopie);
if FileExists(ChDetailMarcheCopie)then
Reset(FDetailMarcheCopie)
else Rewrite(FDetailMarcheCopie);
Seek(FDetailMarcheCopie,0);
OK:=false;
while not eof(FDetailMarcheCopie) do
begin
     Read(FDetailMarcheCopie,RDetailMarcheCopie);
     if(RDetailMarcheCopie.CodeTrie=CodeTrie)then
     begin
          OK:=true;
     end
     else OK:=false;

     if(OK=true)then
     begin
          QteMarche:=QteMarche+RDetailMarcheCopie.QuantiteGlobale;
     end;
end;

/////////////////////           AVENANT             ////////////////////////////
TypeProces:='Business'; FichierConcerne:='FMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChMarche:=Adresse;
assignfile(FMarche,ChMarche);
if FileExists(ChMarche)then
Reset(FMarche)
else Rewrite(FMarche);
Seek(FMarche,0);
OK:=false;
while not eof(FMarche) do
begin
     Read(FMarche,RMarche);
     if(RMarche.NumMarcheReference=inttostr(NSMarche))then
     begin
          TypeProces:='Business'; FichierConcerne:='FDetail'+ChercherMarche(RMarche.NSMarche).TypeProjet+' '+inttostr(RMarche.NSMarche);
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChDetailMarcheCopie:=Adresse;
          assignfile(FDetailMarcheCopie,ChDetailMarcheCopie);
          if FileExists(ChDetailMarcheCopie)then
          Reset(FDetailMarcheCopie)
          else Rewrite(FDetailMarcheCopie);
          Seek(FDetailMarcheCopie,0);
          OK:=false;
          while not eof(FDetailMarcheCopie) do
          begin
               Read(FDetailMarcheCopie,RDetailMarcheCopie);
               CodeTrieAvenant:=completezerogauche(inttostr(RMarche.NSMarche),'5')+lastlaters(CodeTrie,longueur(CodeTrie)-5);
               if(RDetailMarcheCopie.CodeTrie=CodeTrieAvenant)then
               begin
                    OK:=true;
               end
               else OK:=false;

               if(OK=true)then
               begin
                    QteAvenant:=QteAvenant+RDetailMarcheCopie.QuantiteGlobale;
               end;
          end;
          CloseFile(FDetailMarcheCopie);
     end;
end;
CloseFile(FMarche);
////////////////////////////////////////////////////////////////////////////////

TypeProces:='Business'; FichierConcerne:='FDetailAttachement'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChDetailAttachement:=Adresse;
assignfile(FDetailAttachement,ChDetailAttachement);
if FileExists(ChDetailAttachement)then
Reset(FDetailAttachement)
else Rewrite(FDetailAttachement);
Seek(FDetailAttachement,0);
i:=0;
while not eof(FDetailAttachement) do
begin
     Read(FDetailAttachement,RDetailAttachement);
     if(RDetailAttachement.CodeTrie=CodeTrie)then
     begin
          OK:=true;
     end
     else OK:=false;

     if(OK=true)then
     begin
          QteRealiseObjetMarche:=QteRealiseObjetMarche+RDetailAttachement.QuantiteAttachementObjetMarche;
          QteRealiseObjetAvenant:=QteRealiseObjetAvenant+RDetailAttachement.QuantiteAttachementObjetAvenant;
     end;
end;



QteRestanteObjetMarche:=ValePrecis(QteMarche,3)-ValePrecis(QteRealiseObjetMarche,3);
QteRestanteObjetAvenant:=ValePrecis(QteAvenant,3)-ValePrecis(QteRealiseObjetAvenant,3);
end;

Procedure TrieRDetailAttachement(TableauDetailAttachement:TStringGrid; Indice:integer);
var OK:boolean; i,R,m,j,ARow,VarA,VarB:integer;
begin
R:=TableauDetailAttachement.RowCount;
TableauDetailAttachement.Rows[R].Text:='';
OK:=true;
while(OK=true)do
begin
OK:=false;
for i:=1 to TableauDetailAttachement.RowCount-2 do
begin
     if(TableauDetailAttachement.Cells[Indice,i]>TableauDetailAttachement.Cells[Indice,i+1])then
     begin
          OK:=true;
          for m:=1 to 3 do
          begin
               if m=1 then begin VarA:=R; VarB:=i;end;
               if m=2 then begin VarA:=i; VarB:=i+1;end;
               if m=3 then begin VarA:=i+1; VarB:=R;end;
               for j:=0 to TableauDetailAttachement.ColCount-1 do
               begin
                    TableauDetailAttachement.Cells[j,VarA]:=TableauDetailAttachement.Cells[j,VarB];
               end;
          end;
          TableauDetailAttachement.Rows[R].Text:='';
     end;
end;
end;

for i:=1 to TableauDetailAttachement.RowCount-1 do
begin
     TableauDetailAttachement.Cells[0,i]:=inttostr(i);
end;
end;

Procedure OrganiseDetailAttachement(TableauDetailAttachement:TStringGrid);
var OKCode:boolean; R,i,MaxARow:integer;
begin
if(TableauDetailAttachement.Cells[10,1]<>'')then
begin
R:=1;
MaxARow:=TableauDetailAttachement.RowCount-1;
while(R<=MaxARow)do
begin
     if((TableauDetailAttachement.Cells[10,R]<>'')
     and(Lastlaters(TableauDetailAttachement.Cells[10,R],11)<>'00.00.00.00')
     and(FirstLaters(TableauDetailAttachement.Cells[10,R],3)<>'ZZZ'))
     then
     begin
          OKCode:=false;
          i:=1;
          while((i<=MaxARow)and(OKCode=false))do
          begin
               if TableauDetailAttachement.Cells[10,i]=FirstLaters(TableauDetailAttachement.Cells[10,R],15)+'00.00.00.00'
               then
               begin
                    OKCode:=true;
               end;
          i:=i+1;
          end;

          if(OKCode=false)then
          begin
               MaxARow:=MaxARow+1;
               TableauDetailAttachement.Rows[MaxARow].Text:='';
               RStructureMarche:=ChercherStructureMarche(strtointeger(DTrie('M',TableauDetailAttachement.Cells[10,R])),strtointeger(DTrie('S',TableauDetailAttachement.Cells[10,R])));
               RStatistiqueMarche:=ChercherStatistiqueMarche(strtointeger(DTrie('M',TableauDetailAttachement.Cells[10,R])),strtointeger(Dtrie('T',TableauDetailAttachement.Cells[10,R])));
               TableauDetailAttachement.Cells[4,MaxARow]:=RStructureMarche.StructureMarche+': '+RStatistiqueMarche.StatistiqueMarche;
               TableauDetailAttachement.Cells[10,MaxARow]:=FirstLaters(TableauDetailAttachement.Cells[10,R],15)+'00.00.00.00';
          end;
     end;
R:=R+1;
end;
TableauDetailAttachement.RowCount:=MaxARow+1;

TrieRDetailAttachement(TableauDetailAttachement,10);
end;
end;

procedure TFSAttachements.BitNonSauvegardeAttachementClick(
  Sender: TObject);
var NSMarche,NAttachement,NDecision,NStructureMarche:integer;
begin
NSMarche:=strtointeger(FSAttachements.EditNSMarche.Text);
NStructureMarche:=strtointeger(FSAttachements.EditNStructureMarche.Text)*strtointeger(FSAttachements.IndiceAfficheStructure.Text);
NAttachement:=strtointeger(FSAttachements.EditNAttachementMarche.Text)*strtointeger(FSAttachements.IndiceAfficheAttachement.Text);

FSAttachements.EditSauvegardeAttachement.Text:='';
ProcAfficheDetailAttachement(FSAttachements.TableauDetailAttachement,NSMarche,NStructureMarche,0,NAttachement);
FSAttachements.AfficheSauvegarderAttachement.Visible:=false;
end;

procedure TFSAttachements.BitOuiSauvegardeAttachementClick(
  Sender: TObject);
var i,ARow,NSMarche,NStructureMarche,NStatistique,NAttachement,OrdreDetailAttachement:integer;  OK,Confirme:boolean;
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

NSMarche:=strtointeger(FSAttachements.EditNSMarche.Text);
NStructureMarche:=strtointeger(FSAttachements.EditNStructureMarche.Text)*strtointeger(FSAttachements.IndiceAfficheStructure.Text);
NStatistique:=strtointeger(FSAttachements.EditNStatistiqueMarche.Text)*strtointeger(FSAttachements.IndiceAfficheStatistique.Text);
NAttachement:=strtointeger(FSAttachements.EditNAttachementMarche.Text)*strtointeger(FSAttachements.IndiceAfficheAttachement.Text);

for ARow:=1 to FSAttachements.TableauDetailAttachement.RowCount-1 do
begin
     if(FSAttachements.TableauDetailAttachement.Cells[1,ARow]='')then
     begin
          if((FSAttachements.TableauDetailAttachement.Cells[2,ARow]<>'')
          and(Firstlaters(FSAttachements.TableauDetailAttachement.Cells[10,ARow],3)<>'ZZZ'))
          then
          begin {***** Ajout *****}
               TypeProces:='Business'; FichierConcerne:='FDetailAttachement'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
               if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
               begin
                    //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
               end;
               ChDetailAttachement:=Adresse;
               assignfile(FDetailAttachement,ChDetailAttachement);
               if FileExists(ChDetailAttachement)then
               Reset(FDetailAttachement)
               else Rewrite(FDetailAttachement);
               Seek(FDetailAttachement,0);
               i:=0;
               OrdreDetailAttachement:=1;
               while not eof(FDetailAttachement) do
               begin
                    Read(FDetailAttachement,RDetailAttachement);
                    if(Strtointeger(DTrie('M',RDetailAttachement.CodeTrie))=NSMarche)then
                    begin
                         if(RDetailAttachement.NDetailAttachement>=OrdreDetailAttachement)then OrdreDetailAttachement:=RDetailAttachement.NDetailAttachement+1;
                    end;
                    i:=i+1;
               end;
               Seek(FDetailAttachement,i);
               Truncate(FDetailAttachement);
               RDetailAttachement.NDetailAttachement:=OrdreDetailAttachement;
               RDetailAttachement.NAttachement:=strtointeger(FSAttachements.TableauDetailAttachement.Cells[2,ARow]);
               RDetailAttachement.NArticle:=FSAttachements.TableauDetailAttachement.Cells[3,ARow];
               RDetailAttachement.DesignationArticle:=FSAttachements.TableauDetailAttachement.Cells[4,ARow];
               RDetailAttachement.UniteM:=FSAttachements.TableauDetailAttachement.Cells[5,ARow];
               RDetailAttachement.QuantiteAttachementRealise:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[6,ARow]);
               RDetailAttachement.QuantiteAttachementObjetMarche:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[7,ARow]);
               RDetailAttachement.QuantiteAttachementObjetAvenant:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[8,ARow]);
               RDetailAttachement.PrixUnitaire:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[9,ARow]);
               RDetailAttachement.CodeTrie:=FSAttachements.TableauDetailAttachement.Cells[10,ARow];
               RDetailAttachement.CodeStock:=FSAttachements.TableauDetailAttachement.Cells[11,ARow];
               Write(FDetailAttachement,RDetailAttachement);
               Closefile(FDetailAttachement);
          end;
     end
     else
     if((FSAttachements.TableauDetailAttachement.Cells[3,ARow]='')
     and(FSAttachements.TableauDetailAttachement.Cells[4,ARow]='')
     and(FSAttachements.TableauDetailAttachement.Cells[5,ARow]='')
     and(FSAttachements.TableauDetailAttachement.Cells[6,ARow]='')
     and(FSAttachements.TableauDetailAttachement.Cells[7,ARow]='')
     and(FSAttachements.TableauDetailAttachement.Cells[8,ARow]='')
     and(FSAttachements.TableauDetailAttachement.Cells[9,ARow]='')
     and(FSAttachements.TableauDetailAttachement.Cells[11,ARow]=''))
     then
     begin {***** Supprimer *****}
               OrdreDetailAttachement:=strtoint(FSAttachements.TableauDetailAttachement.Cells[1,ARow]);
               Confirme:=false;
               DeleteFDetailAttachement(inttostr(NSMarche),inttostr(OrdreDetailAttachement),Confirme);
     end
     else
     begin {***** Modification *****}
          TypeProces:='Business'; FichierConcerne:='FDetailAttachement'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChDetailAttachement:=Adresse;
          assignfile(FDetailAttachement,ChDetailAttachement);
          if FileExists(ChDetailAttachement)then
          Reset(FDetailAttachement)
          else Rewrite(FDetailAttachement);
          Seek(FDetailAttachement,0);
          i:=0;
          OK:=false;
          while not eof(FDetailAttachement)and(OK=false)do
          begin
               Read(FDetailAttachement,RDetailAttachement);
               if((Strtointeger(DTrie('M',RDetailAttachement.CodeTrie))=strtointeger(FSAttachements.EditNSMarche.Text))
               and(RDetailAttachement.NAttachement=strtointeger(FSAttachements.EditNAttachementMarche.Text))
               and(RDetailAttachement.NDetailAttachement=strtointeger(FSAttachements.TableauDetailAttachement.Cells[1,ARow])))
               then
               begin
                    OK:=true;
                    Seek(FDetailAttachement,i);
                    RDetailAttachement.NDetailAttachement:=strtointeger(FSAttachements.TableauDetailAttachement.Cells[1,ARow]);
                    RDetailAttachement.NAttachement:=strtointeger(FSAttachements.TableauDetailAttachement.Cells[2,ARow]);
                    RDetailAttachement.NArticle:=FSAttachements.TableauDetailAttachement.Cells[3,ARow];
                    RDetailAttachement.DesignationArticle:=FSAttachements.TableauDetailAttachement.Cells[4,ARow];
                    RDetailAttachement.UniteM:=FSAttachements.TableauDetailAttachement.Cells[5,ARow];
                    RDetailAttachement.QuantiteAttachementRealise:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[6,ARow]);
                    RDetailAttachement.QuantiteAttachementObjetMarche:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[7,ARow]);
                    RDetailAttachement.QuantiteAttachementObjetAvenant:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[8,ARow]);
                    RDetailAttachement.PrixUnitaire:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[9,ARow]);
                    RDetailAttachement.CodeTrie:=FSAttachements.TableauDetailAttachement.Cells[10,ARow];
                    RDetailAttachement.CodeStock:=FSAttachements.TableauDetailAttachement.Cells[11,ARow];
                    Write(FDetailAttachement,RDetailAttachement);
               end;
          i:=i+1;
          end;
          Closefile(FDetailAttachement);
     end;
end;

FSAttachements.EditSauvegardeAttachement.Text:='';
ProcAfficheDetailAttachement(FSAttachements.TableauDetailAttachement,NSMarche,NStructureMarche,NStatistique,NAttachement);
FSAttachements.AfficheSauvegarderAttachement.Visible:=false;
end;

Procedure ProcAfficheDetailAttachement(TableauDetailAttachement:TStringGrid; NSMarche,NStructureMarche,NStatistique,NAttachement:integer);
var i,C:integer;  OK:boolean;  NotRow,NotCol:string;
begin
     TableauDetailAttachement.ColCount:=12;
     TableauDetailAttachement.Cols[1].Text:='NDetailDAttachement';
     TableauDetailAttachement.Cols[2].Text:='NAttachement';
     TableauDetailAttachement.Cols[3].Text:='C.Article';
     TableauDetailAttachement.Cols[4].Text:='Désignation Article';
     TableauDetailAttachement.Cols[5].Text:='Unité M.';
     TableauDetailAttachement.Cols[6].Text:='Qte.Réalisé';
     TableauDetailAttachement.Cols[7].Text:='Qte.O.Marché';
     TableauDetailAttachement.Cols[8].Text:='Qte.O.Avenant';
     TableauDetailAttachement.Cols[9].Text:='Prix Unit.';
     TableauDetailAttachement.Cols[10].Text:='Code Trie';
     TableauDetailAttachement.Cols[11].Text:='Code Produit';

          TypeProces:='Business'; FichierConcerne:='FDetailAttachement'+ChercherMarche(NSMarche).TypeProjet+' '+inttostr(NSMarche);
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChDetailAttachement:=Adresse;  FSAttachements.AfficheAdresseAttachement.Caption:=ChDetailAttachement;
          assignfile(FDetailAttachement,ChDetailAttachement);
          if FileExists(ChDetailAttachement)then
          Reset(FDetailAttachement)
          else Rewrite(FDetailAttachement);
          Seek(FDetailAttachement,0);
          i:=0;
          while not eof(FDetailAttachement) do
          begin
               Read(FDetailAttachement,RDetailAttachement);
               OK:=true;
               if(Strtointeger(DTrie('M',RDetailAttachement.CodeTrie))=NSMarche)then
               begin
                    if(RDetailAttachement.NAttachement=NAttachement)then
                    begin
                         if(NStructureMarche<>0)then
                         begin
                              if(Strtointeger(DTrie('S',RDetailAttachement.CodeTrie))=NStructureMarche)
                              then OK:=true
                              else OK:=false;
                         end
                         else OK:=true;

                         if(OK=true)then
                         begin
                              if(NStatistique<>0)then
                              begin
                                   if(Strtointeger(DTrie('T',RDetailAttachement.CodeTrie))=NStatistique)
                                   then OK:=true
                                   else OK:=false;
                              end;
                         end;
                    end
                    else OK:=false;
               end
               else OK:=false;


               if(OK=true)then
               begin
                    i:=i+1;
                    TableauDetailAttachement.Rows[i].Text:=inttostr(i);
                    TableauDetailAttachement.Cells[1,i]:=inttostr(RDetailAttachement.NDetailAttachement);
                    TableauDetailAttachement.Cells[2,i]:=inttostr(RDetailAttachement.NAttachement);
                    TableauDetailAttachement.Cells[3,i]:=RDetailAttachement.NArticle;
                    TableauDetailAttachement.Cells[4,i]:=RDetailAttachement.DesignationArticle;
                    TableauDetailAttachement.Cells[5,i]:=RDetailAttachement.UniteM;
                    if(RDetailAttachement.QuantiteAttachementRealise<>0)
                    then TableauDetailAttachement.Cells[6,i]:=vergule(floattostr(RDetailAttachement.QuantiteAttachementRealise),'3','C','')
                    else TableauDetailAttachement.Cells[6,i]:='';
                    if(RDetailAttachement.QuantiteAttachementObjetMarche<>0)
                    then TableauDetailAttachement.Cells[7,i]:=vergule(floattostr(RDetailAttachement.QuantiteAttachementObjetMarche),'3','C','')
                    else TableauDetailAttachement.Cells[7,i]:='';
                    if(RDetailAttachement.QuantiteAttachementObjetAvenant<>0)
                    then TableauDetailAttachement.Cells[8,i]:=vergule(floattostr(RDetailAttachement.QuantiteAttachementObjetAvenant),'3','C','')
                    else TableauDetailAttachement.Cells[8,i]:='';
                    if(RDetailAttachement.PrixUnitaire<>0)
                    then TableauDetailAttachement.Cells[9,i]:=vergule(floattostr(RDetailAttachement.PrixUnitaire),'2','C','')
                    else TableauDetailAttachement.Cells[9,i]:='';
                    TableauDetailAttachement.Cells[10,i]:=RDetailAttachement.CodeTrie;
                    TableauDetailAttachement.Cells[11,i]:=RDetailAttachement.CodeStock;
               end;
          end;
          if(i>0)then TableauDetailAttachement.RowCount:=i+1
                 else
                 begin
                      TableauDetailAttachement.RowCount:=2;
                      TableauDetailAttachement.Rows[1].Text:='';
                 end;
TrierDetailAttachement(TableauDetailAttachement,10);

OrganiseDetailAttachement(TableauDetailAttachement);

NotRow:='';
NotCol:='1;2;9-11';
for i:=1 to TableauDetailAttachement.ColCount-1 do if ExisteNumInTexte(inttostr(i),NotCol)then TableauDetailAttachement.ColWidths[i]:=0;
AjusterColWidth(TableauDetailAttachement,NotRow,NotCol);

for C:=1 to TableauDetailAttachement.ColCount-1 do
begin
     if(TableauDetailAttachement.ColWidths[C]>strtointeger(FSAttachements.EditMaxColWidth.Text))then TableauDetailAttachement.ColWidths[C]:=strtointeger(FSAttachements.EditMaxColWidth.Text);
end;

end;

procedure TFSAttachements.BitBtn30Click(Sender: TObject);
begin
FSAttachements.AfficheDesignationArticlesAttachement.Visible:=false;
end;

procedure TFSAttachements.TableauDesignationArticlesAttachementClick(
  Sender: TObject);
begin
FSAttachements.TableauDesignationArticlesAttachement.DefaultRowHeight:=18;
FSAttachements.EditDesignationArticleAttachementTesteListe.Lines.Text:=FSAttachements.TableauDesignationArticlesAttachement.Cells[FSAttachements.TableauDesignationArticlesAttachement.Col,FSAttachements.TableauDesignationArticlesAttachement.Row];
if(FSAttachements.EditDesignationArticleAttachementTesteListe.Lines.Count>0)
then FSAttachements.TableauDesignationArticlesAttachement.RowHeights[FSAttachements.TableauDesignationArticlesAttachement.Row]:=FSAttachements.EditDesignationArticleAttachementTesteListe.Lines.Count*18;
end;

procedure TFSAttachements.TableauDesignationArticlesAttachementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSAttachements.EditCodeArticleAttachement.Text:=FSAttachements.TableauDesignationArticlesAttachement.Cells[0,FSAttachements.TableauDesignationArticlesAttachement.Row];
     FSAttachements.EditDesignationArticleAttachement.Text:=FSAttachements.TableauDesignationArticlesAttachement.Cells[1,FSAttachements.TableauDesignationArticlesAttachement.Row];
     FSAttachements.EditUnitMAttachement.Text:=FSAttachements.TableauDesignationArticlesAttachement.Cells[2,FSAttachements.TableauDesignationArticlesAttachement.Row];
     if(FSAttachements.TableauDesignationArticlesAttachement.Cells[3,FSAttachements.TableauDesignationArticlesAttachement.Row]<>'0')then
     FSAttachements.EditPrixUnitaireAttachement.Text:=FSAttachements.TableauDesignationArticlesAttachement.Cells[3,FSAttachements.TableauDesignationArticlesAttachement.Row];
     FSAttachements.EditTrieAttachement.Text:=FSAttachements.TableauDesignationArticlesAttachement.Cells[4,FSAttachements.TableauDesignationArticlesAttachement.Row];
     FSAttachements.EditCodeProduitAttachement.Text:=FSAttachements.TableauDesignationArticlesAttachement.Cells[5,FSAttachements.TableauDesignationArticlesAttachement.Row];

     if(FSAttachements.TableauDesignationArticlesAttachement.Cells[3,FSAttachements.TableauDesignationArticlesAttachement.Row]<>'')
     then FSAttachements.EditQuantiteAttachementRealise.SetFocus
     else FSAttachements.BitValideAttachement.SetFocus;
     FSAttachements.AfficheDesignationArticlesAttachement.Visible:=false;
end;

end;

procedure TFSAttachements.TableauDesignationArticlesAttachementKeyPress(
  Sender: TObject; var Key: Char);
begin
key:=#0;
end;

procedure TFSAttachements.EditDesignationArticleAttachementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var NSMarche:integer; OK,OKRow:boolean;
begin

if key in[VK_RETURN]then
begin
     if(FSAttachements.EditDesignationArticleAttachement.Text<>'')
     then
     begin
          if((FSAttachements.AfficheDesignationArticlesAttachement.Visible=true)
          and(FSAttachements.TableauDesignationArticlesAttachement.Cells[1,1]<>''))
          then
          begin
               FSAttachements.TableauDesignationArticlesAttachement.SetFocus
          end
          else
          begin
               FSAttachements.AfficheDesignationArticlesAttachement.Visible:=false;
               FSAttachements.EditUnitMAttachement.SetFocus;
          end
     end
     else
     begin
          if((FSAttachements.AfficheDesignationArticlesAttachement.Visible=true)
          and(FSAttachements.TableauDesignationArticlesAttachement.Cells[1,1]<>''))
          then
          begin
               FSAttachements.TableauDesignationArticlesAttachement.SetFocus
          end
          else
          begin
               FSAttachements.AfficheEtatMarche.Visible:=true;
               FSAttachements.EditEtatMarche.Lines.Text:='Veuillez respecter le marché SVP !';
               FSAttachements.EditEtatMarche.Lines.Add('................Etat.................');
               FSAttachements.EditEtatMarche.Lines.Add('');
               FSAttachements.EditEtatMarche.Lines.Add('Préciser l''article SVP !');
               FSAttachements.EditEtatMarche.Lines.Add('');
               FSAttachements.BitOKEtatMarche.SetFocus;
               FSAttachements.EditQte.Text:='Designe';
          end;
     end;
end;
end;

procedure TFSAttachements.BitOKEtatMarcheClick(Sender: TObject);
begin
if(FSAttachements.EditQte.Text='QGA')then
begin
     FSAttachements.EditQuantiteAttachementRealise.Text:='';
     FSAttachements.EditQuantiteAttachementRealise.SetFocus;
end;
if(FSAttachements.EditQte.Text='QMA')then
begin
     FSAttachements.EditQuantiteRealiseObjetMarche.Text:='';
     FSAttachements.EditQuantiteRealiseObjetMarche.SetFocus;
end;

FSAttachements.AfficheEtatMarche.Visible:=false;
end;

procedure TFSAttachements.BitBtn31Click(Sender: TObject);
begin
InitialeAfficheDetailAttachement;

if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

FSAttachements.AfficheSauvegarderAttachement.Visible:=true;
FSAttachements.BitOuiSauvegardeAttachement.SetFocus;
end;

procedure TFSAttachements.BitBtn32Click(Sender: TObject);
begin
InitialeAfficheDetailAttachement;

if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

FSAttachements.AfficheSauvegarderAttachement.Visible:=true;
BitNonSauvegardeAttachement.SetFocus;
end;

Procedure InitialeAfficheDetailAttachement;
begin
FSAttachements.AfficheQteMarche.Visible:=false;
FSAttachements.AfficheDesignationArticlesAttachement.Visible:=false;
FSAttachements.AfficheAvenantAttachement.Visible:=false;
FSAttachements.AfficheSaisieAttachement.Visible:=false;
FSAttachements.AfficheSauvegarderAttachement.Visible:=false;
FSAttachements.AfficheEtatMarche.Visible:=false;
end;

procedure TFSAttachements.AfficheSaisieAttachementEnter(Sender: TObject);
var  R,NSMarche,NSTructureMarche,NStatistique:integer; QteMarche,QteAvenant,
     QteRealiseObjetMarche,QteRealiseObjetAvenant,QteRestanteObjetMarche,QteRestanteObjetAvenant,
     QteAttachementRealise,QteAModifierObjetMarche,QteAModifierObjetAvenant:real;   CodeTrie:string[31];
begin
if(FSAttachements.EditTrieAttachement.Text<>'')then
begin
     FSAttachements.AfficheQteMarche.Visible:=true;
     FSAttachements.TimerClic.Enabled:=true;
     FSAttachements.TimerClic.Interval:=200;

     NSMarche:=strtointeger(FSAttachements.EditNSMarche.Text);
     NSTructureMarche:=strtointeger(FSAttachements.EditNStructureMarche.Text)*strtointeger(FSAttachements.IndiceAfficheStructure.Text);
     NStatistique:=strtointeger(FSAttachements.EditNStatistiqueMarche.Text)*strtointeger(FSAttachements.IndiceAfficheStatistique.Text);
     CodeTrie:=FSAttachements.EditTrieAttachement.Text;

     QteMarche:=0;               QteAvenant:=0;
     QteRealiseObjetMarche:=0;   QteRealiseObjetAvenant:=0;
     QteRestanteObjetMarche:=0;  QteRestanteObjetAvenant:=0;
     QteAModifierObjetMarche:=0; QteAModifierObjetAvenant:=0;

     SoldeAttachement(CodeTrie,QteMarche,QteAvenant,QteRealiseObjetMarche,QteRealiseObjetAvenant,QteRestanteObjetMarche,QteRestanteObjetAvenant);

     QteAModifierObjetMarche:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[7,FSAttachements.TableauDetailAttachement.Row]);
     QteAModifierObjetAvenant:=strtoreal(FSAttachements.TableauDetailAttachement.Cells[8,FSAttachements.TableauDetailAttachement.Row]);

     if(FSAttachements.BitValideAttachement.Caption='Modifier')then
     begin
          QteRealiseObjetMarche:=ValePrecis(QteRealiseObjetMarche-QteAModifierObjetMarche,3);
          QteRealiseObjetAvenant:=ValePrecis(QteRealiseObjetAvenant-QteAModifierObjetAvenant,3);
          QteRestanteObjetMarche:=ValePrecis(QteRestanteObjetMarche+QteAModifierObjetMarche,3);
          QteRestanteObjetAvenant:=ValePrecis(QteRestanteObjetAvenant+QteAModifierObjetAvenant,3);
     end;

     FSAttachements.EditAfficheQteMarche.Clear;
     FSAttachements.EditAfficheQteMarche.Lines.Text:='Données du Marché:';
     FSAttachements.EditAfficheQteMarche.Lines.Add('.................................');
     FSAttachements.EditAfficheQteMarche.Lines.Add('Quantité Marché: '+vergule(floattostr(QteMarche),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);
     FSAttachements.EditAfficheQteMarche.Lines.Add('Quantité réalisée Marché: '+vergule(floattostr(QteRealiseObjetMarche),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);
     FSAttachements.EditAfficheQteMarche.Lines.Add('.................................');
     FSAttachements.EditAfficheQteMarche.Lines.Add('Quantité Avenant: '+vergule(floattostr(QteAvenant),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);
     FSAttachements.EditAfficheQteMarche.Lines.Add('Quantité réalisée Avenant: '+vergule(floattostr(QteRealiseObjetAvenant),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);
     FSAttachements.EditAfficheQteMarche.Lines.Add('Résultat:');
     FSAttachements.EditAfficheQteMarche.Lines.Add('.................');
     FSAttachements.EditAfficheQteMarche.Lines.Add('Quantité disponible Marché: '+vergule(floattostr(QteRestanteObjetMarche),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);
     FSAttachements.EditAfficheQteMarche.Lines.Add('Quantité disponible Avenant: '+vergule(floattostr(QteRestanteObjetAvenant),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);
     FSAttachements.EditAfficheQteMarche.Lines.Add('.................');
     FSAttachements.EditAfficheQteMarche.Lines.Add('Quantité disponible Global: '+vergule(floattostr(QteRestanteObjetMarche+QteRestanteObjetAvenant),'3','C','')+' '+FSAttachements.EditUnitMAttachement.Text);
     FSAttachements.EditAfficheQteMarche.Height:=FSAttachements.EditAfficheQteMarche.Lines.Capacity*18;
     FSAttachements.AfficheQteMarche.Height:=FSAttachements.EditAfficheQteMarche.Height+16;
end
else
begin
     FSAttachements.EditAfficheQteMarche.Clear;
     FSAttachements.EditAfficheQteMarche.Height:=FSAttachements.EditAfficheQteMarche.Lines.Capacity*18;
     FSAttachements.AfficheQteMarche.Height:=FSAttachements.EditAfficheQteMarche.Height+16;
end;
end;

procedure TFSAttachements.AfficheSaisieAttachementExit(Sender: TObject);
begin
FSAttachements.TimerClic.Enabled:=false;
FSAttachements.AfficheQteMarche.Visible:=false;
end;

procedure TFSAttachements.TimerClicTimer(Sender: TObject);
begin
     if(FSAttachements.AfficheQteMarche.Visible=true)then
     begin
          if(FSAttachements.AfficheQteMarche.Color=$00C2FEC9)then
          begin
               FSAttachements.AfficheQteMarche.Color:=$00B8D9F1;
          end
          else
          begin
               FSAttachements.AfficheQteMarche.Color:=$00C2FEC9;
          end;
     end;
end;

procedure TFSAttachements.EditQuantiteRealiseObjetMarcheKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if(strtoreal(FSAttachements.EditQuantiteAttachementRealise.Text)>0)then
FSAttachements.EditQuantiteRealiseObjetAvenant.Text:=floattostr(strtoreal(FSAttachements.EditQuantiteAttachementRealise.Text)-
                                                           strtoreal(FSAttachements.EditQuantiteRealiseObjetMarche.Text));
if(strtoreal(FSAttachements.EditQuantiteRealiseObjetAvenant.Text)<0)
then
begin
     FSAttachements.EditQuantiteRealiseObjetMarche.Text:='';
     FSAttachements.EditQuantiteRealiseObjetAvenant.Text:='';
end;
end;

procedure TFSAttachements.EditQuantiteRealiseObjetAvenantKeyPress(
  Sender: TObject; var Key: Char);
begin
if not(key in['0'..'9','.',','])then key:=#0;
if key='.' then key:=',';
end;

procedure TFSAttachements.TableauDetailAttachementKeyPress(Sender: TObject;
  var Key: Char);
var ARow,NSMarche,NStructure,NStatistique,NAvenant:integer;
begin

ARow:=FSAttachements.TableauDetailAttachement.Row;

if(FSAttachements.TableauDetailAttachement.Cells[2,ARow]='')then
begin
     key:=#0;
     Exit;
end;

FSAttachements.EditSauvegardeAttachement.Text:='OK';



NSMarche:=strtointeger(DTrie('M',FSAttachements.TableauDetailAttachement.Cells[10,ARow]));
NStructure:=strtointeger(DTrie('S',FSAttachements.TableauDetailAttachement.Cells[10,ARow]));
NStatistique:=strtointeger(DTrie('T',FSAttachements.TableauDetailAttachement.Cells[10,ARow]));
NAvenant:=strtointeger(DTrie('A',FSAttachements.TableauDetailAttachement.Cells[10,ARow]));


if key in['m','M']then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true) then begin key:=#0; exit; end;

     FSAttachements.AfficheSaisieAttachement.Visible:=true;
     FSAttachements.BitValideAttachement.Kind:=bkRetry;
     FSAttachements.BitValideAttachement.Caption:='Modifier';

     FSAttachements.EditCodeArticleAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[3,ARow];
     FSAttachements.EditDesignationArticleAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[4,ARow];
     FSAttachements.EditUnitMAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[5,ARow];
     FSAttachements.EditQuantiteAttachementRealise.Text:=FSAttachements.TableauDetailAttachement.Cells[6,ARow];
     FSAttachements.EditQuantiteRealiseObjetMarche.Text:=FSAttachements.TableauDetailAttachement.Cells[7,ARow];
     FSAttachements.EditQuantiteRealiseObjetAvenant.Text:=FSAttachements.TableauDetailAttachement.Cells[8,ARow];
     FSAttachements.EditPrixUnitaireAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[9,ARow];
     FSAttachements.EditTrieAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[10,ARow];
     FSAttachements.EditNumAvenantAttachement.Text:=inttostr(NAvenant);
     FSAttachements.EditAvenantAttachement.Text:=ChercherAvenantMarche(NSMarche,NAvenant);
     FSAttachements.EditCodeProduitAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[11,ARow];
     EditQuantiteAttachementRealise.SetFocus;
end;

if key in['s','S']then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true) then begin key:=#0; exit; end;

     FSAttachements.AfficheSaisieAttachement.Visible:=true;
     FSAttachements.BitValideAttachement.Kind:=bkCancel;
     FSAttachements.BitValideAttachement.Caption:='Supprimer';
     FSAttachements.EditCodeArticleAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[3,ARow];
     FSAttachements.EditDesignationArticleAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[4,ARow];
     FSAttachements.EditUnitMAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[5,ARow];
     FSAttachements.EditQuantiteAttachementRealise.Text:=FSAttachements.TableauDetailAttachement.Cells[6,ARow];
     FSAttachements.EditQuantiteRealiseObjetMarche.Text:=FSAttachements.TableauDetailAttachement.Cells[7,ARow];
     FSAttachements.EditQuantiteRealiseObjetAvenant.Text:=FSAttachements.TableauDetailAttachement.Cells[8,ARow];
     FSAttachements.EditPrixUnitaireAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[9,ARow];
     FSAttachements.EditTrieAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[10,ARow];
     FSAttachements.EditNumAvenantAttachement.Text:=inttostr(NAvenant);
     FSAttachements.EditAvenantAttachement.Text:=ChercherAvenantMarche(NSMarche,NAvenant);
     FSAttachements.EditCodeProduitAttachement.Text:=FSAttachements.TableauDetailAttachement.Cells[11,ARow];

     FSAttachements.BitValideAttachement.SetFocus;
end;

key:=#0;
end;

procedure TFSAttachements.BitBtn2Click(Sender: TObject);
begin
InitialeAfficheDetailAttachement;

if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MI',true)then exit;

ImprimerAttachement(FSAttachements.TableauDetailAttachement,FSAttachements.EditTypeProjet.Text,FSAttachements.EditNSMarche.Text,FSAttachements.EditStructureMarche.Text,FSAttachements.EditNAttachementMarche.Text,FSAttachements.IndiceAfficheStructure.Text);

end;

Procedure ClearAttachement(Indice:integer; Visible:boolean);
begin
     if(Indice=1)then
     begin
          PrintAttachement.Designation1.Lines.Clear;   PrintAttachement.Designation1.Enabled:=Visible;
          PrintAttachement.Unite1.Lines.Clear;         PrintAttachement.Unite1.Enabled:=Visible;
          PrintAttachement.QteRealisee1.Lines.Clear;   PrintAttachement.QteRealisee1.Enabled:=Visible;
          PrintAttachement.QteMarche1.Lines.Clear;     PrintAttachement.QteMarche1.Enabled:=Visible;
          PrintAttachement.QteAvenant1.Lines.Clear;    PrintAttachement.QteAvenant1.Enabled:=Visible;
     end;
     if(Indice=2)then
     begin
          PrintAttachement.Designation2.Lines.Clear;   PrintAttachement.Designation2.Enabled:=Visible;
          PrintAttachement.Unite2.Lines.Clear;         PrintAttachement.Unite2.Enabled:=Visible;
          PrintAttachement.QteRealisee2.Lines.Clear;   PrintAttachement.QteRealisee2.Enabled:=Visible;
          PrintAttachement.QteMarche2.Lines.Clear;     PrintAttachement.QteMarche2.Enabled:=Visible;
          PrintAttachement.QteAvenant2.Lines.Clear;    PrintAttachement.QteAvenant2.Enabled:=Visible;
     end;
     if(Indice=3)then
     begin
          PrintAttachement.Designation3.Lines.Clear;   PrintAttachement.Designation3.Enabled:=Visible;
          PrintAttachement.Unite3.Lines.Clear;         PrintAttachement.Unite3.Enabled:=Visible;
          PrintAttachement.QteRealisee3.Lines.Clear;   PrintAttachement.QteRealisee3.Enabled:=Visible;
          PrintAttachement.QteMarche3.Lines.Clear;     PrintAttachement.QteMarche3.Enabled:=Visible;
          PrintAttachement.QteAvenant3.Lines.Clear;    PrintAttachement.QteAvenant3.Enabled:=Visible;
     end;
     if(Indice=4)then
     begin
          PrintAttachement.Designation4.Lines.Clear;   PrintAttachement.Designation4.Enabled:=Visible;
          PrintAttachement.Unite4.Lines.Clear;         PrintAttachement.Unite4.Enabled:=Visible;
          PrintAttachement.QteRealisee4.Lines.Clear;   PrintAttachement.QteRealisee4.Enabled:=Visible;
          PrintAttachement.QteMarche4.Lines.Clear;     PrintAttachement.QteMarche4.Enabled:=Visible;
          PrintAttachement.QteAvenant4.Lines.Clear;    PrintAttachement.QteAvenant4.Enabled:=Visible;
     end;
     if(Indice=5)then
     begin
          PrintAttachement.Designation5.Lines.Clear;   PrintAttachement.Designation5.Enabled:=Visible;
          PrintAttachement.Unite5.Lines.Clear;         PrintAttachement.Unite5.Enabled:=Visible;
          PrintAttachement.QteRealisee5.Lines.Clear;   PrintAttachement.QteRealisee5.Enabled:=Visible;
          PrintAttachement.QteMarche5.Lines.Clear;     PrintAttachement.QteMarche5.Enabled:=Visible;
          PrintAttachement.QteAvenant5.Lines.Clear;    PrintAttachement.QteAvenant5.Enabled:=Visible;
     end;
     if(Indice=6)then
     begin
          PrintAttachement.Designation6.Lines.Clear;   PrintAttachement.Designation6.Enabled:=Visible;
          PrintAttachement.Unite6.Lines.Clear;         PrintAttachement.Unite6.Enabled:=Visible;
          PrintAttachement.QteRealisee6.Lines.Clear;   PrintAttachement.QteRealisee6.Enabled:=Visible;
          PrintAttachement.QteMarche6.Lines.Clear;     PrintAttachement.QteMarche6.Enabled:=Visible;
          PrintAttachement.QteAvenant6.Lines.Clear;    PrintAttachement.QteAvenant6.Enabled:=Visible;
     end;
     if(Indice=7)then
     begin
          PrintAttachement.Designation7.Lines.Clear;   PrintAttachement.Designation7.Enabled:=Visible;
          PrintAttachement.Unite7.Lines.Clear;         PrintAttachement.Unite7.Enabled:=Visible;
          PrintAttachement.QteRealisee7.Lines.Clear;   PrintAttachement.QteRealisee7.Enabled:=Visible;
          PrintAttachement.QteMarche7.Lines.Clear;     PrintAttachement.QteMarche7.Enabled:=Visible;
          PrintAttachement.QteAvenant7.Lines.Clear;    PrintAttachement.QteAvenant7.Enabled:=Visible;
     end;
     if(Indice=8)then
     begin
          PrintAttachement.Designation8.Lines.Clear;   PrintAttachement.Designation8.Enabled:=Visible;
          PrintAttachement.Unite8.Lines.Clear;         PrintAttachement.Unite8.Enabled:=Visible;
          PrintAttachement.QteRealisee8.Lines.Clear;   PrintAttachement.QteRealisee8.Enabled:=Visible;
          PrintAttachement.QteMarche8.Lines.Clear;     PrintAttachement.QteMarche8.Enabled:=Visible;
          PrintAttachement.QteAvenant8.Lines.Clear;    PrintAttachement.QteAvenant8.Enabled:=Visible;
     end;
     if(Indice=9)then
     begin
          PrintAttachement.Designation9.Lines.Clear;   PrintAttachement.Designation9.Enabled:=Visible;
          PrintAttachement.Unite9.Lines.Clear;         PrintAttachement.Unite9.Enabled:=Visible;
          PrintAttachement.QteRealisee9.Lines.Clear;   PrintAttachement.QteRealisee9.Enabled:=Visible;
          PrintAttachement.QteMarche9.Lines.Clear;     PrintAttachement.QteMarche9.Enabled:=Visible;
          PrintAttachement.QteAvenant9.Lines.Clear;    PrintAttachement.QteAvenant9.Enabled:=Visible;
     end;
     if(Indice=10)then
     begin
          PrintAttachement.Designation10.Lines.Clear;   PrintAttachement.Designation10.Enabled:=Visible;
          PrintAttachement.Unite10.Lines.Clear;         PrintAttachement.Unite10.Enabled:=Visible;
          PrintAttachement.QteRealisee10.Lines.Clear;   PrintAttachement.QteRealisee10.Enabled:=Visible;
          PrintAttachement.QteMarche10.Lines.Clear;     PrintAttachement.QteMarche10.Enabled:=Visible;
          PrintAttachement.QteAvenant10.Lines.Clear;    PrintAttachement.QteAvenant10.Enabled:=Visible;
     end;
     if(Indice=11)then
     begin
          PrintAttachement.Designation11.Lines.Clear;   PrintAttachement.Designation11.Enabled:=Visible;
          PrintAttachement.Unite11.Lines.Clear;         PrintAttachement.Unite11.Enabled:=Visible;
          PrintAttachement.QteRealisee11.Lines.Clear;   PrintAttachement.QteRealisee11.Enabled:=Visible;
          PrintAttachement.QteMarche11.Lines.Clear;     PrintAttachement.QteMarche11.Enabled:=Visible;
          PrintAttachement.QteAvenant11.Lines.Clear;    PrintAttachement.QteAvenant11.Enabled:=Visible;
     end;
     if(Indice=12)then
     begin
          PrintAttachement.Designation12.Lines.Clear;   PrintAttachement.Designation12.Enabled:=Visible;
          PrintAttachement.Unite12.Lines.Clear;         PrintAttachement.Unite12.Enabled:=Visible;
          PrintAttachement.QteRealisee12.Lines.Clear;   PrintAttachement.QteRealisee12.Enabled:=Visible;
          PrintAttachement.QteMarche12.Lines.Clear;     PrintAttachement.QteMarche12.Enabled:=Visible;
          PrintAttachement.QteAvenant12.Lines.Clear;    PrintAttachement.QteAvenant12.Enabled:=Visible;
     end;
     if(Indice=13)then
     begin
          PrintAttachement.Designation13.Lines.Clear;   PrintAttachement.Designation13.Enabled:=Visible;
          PrintAttachement.Unite13.Lines.Clear;         PrintAttachement.Unite13.Enabled:=Visible;
          PrintAttachement.QteRealisee13.Lines.Clear;   PrintAttachement.QteRealisee13.Enabled:=Visible;
          PrintAttachement.QteMarche13.Lines.Clear;     PrintAttachement.QteMarche13.Enabled:=Visible;
          PrintAttachement.QteAvenant13.Lines.Clear;    PrintAttachement.QteAvenant13.Enabled:=Visible;
     end;
     if(Indice=14)then
     begin
          PrintAttachement.Designation14.Lines.Clear;   PrintAttachement.Designation14.Enabled:=Visible;
          PrintAttachement.Unite14.Lines.Clear;         PrintAttachement.Unite14.Enabled:=Visible;
          PrintAttachement.QteRealisee14.Lines.Clear;   PrintAttachement.QteRealisee14.Enabled:=Visible;
          PrintAttachement.QteMarche14.Lines.Clear;     PrintAttachement.QteMarche14.Enabled:=Visible;
          PrintAttachement.QteAvenant14.Lines.Clear;    PrintAttachement.QteAvenant14.Enabled:=Visible;
     end;
     if(Indice=15)then
     begin
          PrintAttachement.Designation15.Lines.Clear;   PrintAttachement.Designation15.Enabled:=Visible;
          PrintAttachement.Unite15.Lines.Clear;         PrintAttachement.Unite15.Enabled:=Visible;
          PrintAttachement.QteRealisee15.Lines.Clear;   PrintAttachement.QteRealisee15.Enabled:=Visible;
          PrintAttachement.QteMarche15.Lines.Clear;     PrintAttachement.QteMarche15.Enabled:=Visible;
          PrintAttachement.QteAvenant15.Lines.Clear;    PrintAttachement.QteAvenant15.Enabled:=Visible;
     end;
     if(Indice=16)then
     begin
          PrintAttachement.Designation16.Lines.Clear;   PrintAttachement.Designation16.Enabled:=Visible;
          PrintAttachement.Unite16.Lines.Clear;         PrintAttachement.Unite16.Enabled:=Visible;
          PrintAttachement.QteRealisee16.Lines.Clear;   PrintAttachement.QteRealisee16.Enabled:=Visible;
          PrintAttachement.QteMarche16.Lines.Clear;     PrintAttachement.QteMarche16.Enabled:=Visible;
          PrintAttachement.QteAvenant16.Lines.Clear;    PrintAttachement.QteAvenant16.Enabled:=Visible;
     end;
     if(Indice=17)then
     begin
          PrintAttachement.Designation17.Lines.Clear;   PrintAttachement.Designation17.Enabled:=Visible;
          PrintAttachement.Unite17.Lines.Clear;         PrintAttachement.Unite17.Enabled:=Visible;
          PrintAttachement.QteRealisee17.Lines.Clear;   PrintAttachement.QteRealisee17.Enabled:=Visible;
          PrintAttachement.QteMarche17.Lines.Clear;     PrintAttachement.QteMarche17.Enabled:=Visible;
          PrintAttachement.QteAvenant17.Lines.Clear;    PrintAttachement.QteAvenant17.Enabled:=Visible;
     end;
     if(Indice=18)then
     begin
          PrintAttachement.Designation18.Lines.Clear;   PrintAttachement.Designation18.Enabled:=Visible;
          PrintAttachement.Unite18.Lines.Clear;         PrintAttachement.Unite18.Enabled:=Visible;
          PrintAttachement.QteRealisee18.Lines.Clear;   PrintAttachement.QteRealisee18.Enabled:=Visible;
          PrintAttachement.QteMarche18.Lines.Clear;     PrintAttachement.QteMarche18.Enabled:=Visible;
          PrintAttachement.QteAvenant18.Lines.Clear;    PrintAttachement.QteAvenant18.Enabled:=Visible;
     end;
     if(Indice=19)then
     begin
          PrintAttachement.Designation19.Lines.Clear;   PrintAttachement.Designation19.Enabled:=Visible;
          PrintAttachement.Unite19.Lines.Clear;         PrintAttachement.Unite19.Enabled:=Visible;
          PrintAttachement.QteRealisee19.Lines.Clear;   PrintAttachement.QteRealisee19.Enabled:=Visible;
          PrintAttachement.QteMarche19.Lines.Clear;     PrintAttachement.QteMarche19.Enabled:=Visible;
          PrintAttachement.QteAvenant19.Lines.Clear;    PrintAttachement.QteAvenant19.Enabled:=Visible;
     end;
     if(Indice=20)then
     begin
          PrintAttachement.Designation20.Lines.Clear;   PrintAttachement.Designation20.Enabled:=Visible;
          PrintAttachement.Unite20.Lines.Clear;         PrintAttachement.Unite20.Enabled:=Visible;
          PrintAttachement.QteRealisee20.Lines.Clear;   PrintAttachement.QteRealisee20.Enabled:=Visible;
          PrintAttachement.QteMarche20.Lines.Clear;     PrintAttachement.QteMarche20.Enabled:=Visible;
          PrintAttachement.QteAvenant20.Lines.Clear;    PrintAttachement.QteAvenant20.Enabled:=Visible;
     end;
     if(Indice=21)then
     begin
          PrintAttachement.Designation21.Lines.Clear;   PrintAttachement.Designation21.Enabled:=Visible;
          PrintAttachement.Unite21.Lines.Clear;         PrintAttachement.Unite21.Enabled:=Visible;
          PrintAttachement.QteRealisee21.Lines.Clear;   PrintAttachement.QteRealisee21.Enabled:=Visible;
          PrintAttachement.QteMarche21.Lines.Clear;     PrintAttachement.QteMarche21.Enabled:=Visible;
          PrintAttachement.QteAvenant21.Lines.Clear;    PrintAttachement.QteAvenant21.Enabled:=Visible;
     end;
     if(Indice=22)then
     begin
          PrintAttachement.Designation22.Lines.Clear;   PrintAttachement.Designation22.Enabled:=Visible;
          PrintAttachement.Unite22.Lines.Clear;         PrintAttachement.Unite22.Enabled:=Visible;
          PrintAttachement.QteRealisee22.Lines.Clear;   PrintAttachement.QteRealisee22.Enabled:=Visible;
          PrintAttachement.QteMarche22.Lines.Clear;     PrintAttachement.QteMarche22.Enabled:=Visible;
          PrintAttachement.QteAvenant22.Lines.Clear;    PrintAttachement.QteAvenant22.Enabled:=Visible;
     end;
     if(Indice=23)then
     begin
          PrintAttachement.Designation23.Lines.Clear;   PrintAttachement.Designation23.Enabled:=Visible;
          PrintAttachement.Unite23.Lines.Clear;         PrintAttachement.Unite23.Enabled:=Visible;
          PrintAttachement.QteRealisee23.Lines.Clear;   PrintAttachement.QteRealisee23.Enabled:=Visible;
          PrintAttachement.QteMarche23.Lines.Clear;     PrintAttachement.QteMarche23.Enabled:=Visible;
          PrintAttachement.QteAvenant23.Lines.Clear;    PrintAttachement.QteAvenant23.Enabled:=Visible;
     end;
     if(Indice=24)then
     begin
          PrintAttachement.Designation24.Lines.Clear;   PrintAttachement.Designation24.Enabled:=Visible;
          PrintAttachement.Unite24.Lines.Clear;         PrintAttachement.Unite24.Enabled:=Visible;
          PrintAttachement.QteRealisee24.Lines.Clear;   PrintAttachement.QteRealisee24.Enabled:=Visible;
          PrintAttachement.QteMarche24.Lines.Clear;     PrintAttachement.QteMarche24.Enabled:=Visible;
          PrintAttachement.QteAvenant24.Lines.Clear;    PrintAttachement.QteAvenant24.Enabled:=Visible;
     end;
     if(Indice=25)then
     begin
          PrintAttachement.Designation25.Lines.Clear;   PrintAttachement.Designation25.Enabled:=Visible;
          PrintAttachement.Unite25.Lines.Clear;         PrintAttachement.Unite25.Enabled:=Visible;
          PrintAttachement.QteRealisee25.Lines.Clear;   PrintAttachement.QteRealisee25.Enabled:=Visible;
          PrintAttachement.QteMarche25.Lines.Clear;     PrintAttachement.QteMarche25.Enabled:=Visible;
          PrintAttachement.QteAvenant25.Lines.Clear;    PrintAttachement.QteAvenant25.Enabled:=Visible;
     end;
end;

Procedure InitialisationAttachement(ARow,Indice:integer);
var ValWidth:integer;
begin

if(Lastlaters(FSAttachements.TableauDetailAttachement.Cells[10,ARow],11)='00000.00.00')
then
begin
     ValWidth:=710;
     PrintAttachement.TitreExemple.Font.Style:=[fsBold,fsUnderline];
     PrintAttachement.TitreExemple.Alignment:=taCenter;
end
else
begin
     ValWidth:=341;
     PrintAttachement.TitreExemple.Alignment:=taLeftJustify;
     PrintAttachement.TitreExemple.Font.Style:=[];
end;

     if(Indice=1)then
     begin
          PrintAttachement.Designation1.Width:=ValWidth;
          PrintAttachement.Designation1.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation1.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=2)then
     begin
          PrintAttachement.Designation2.Width:=ValWidth;
          PrintAttachement.Designation2.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation2.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=3)then
     begin
          PrintAttachement.Designation3.Width:=ValWidth;
          PrintAttachement.Designation3.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation3.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=4)then
     begin
          PrintAttachement.Designation4.Width:=ValWidth;
          PrintAttachement.Designation4.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation4.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=5)then
     begin
          PrintAttachement.Designation5.Width:=ValWidth;
          PrintAttachement.Designation5.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation5.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=6)then
     begin
          PrintAttachement.Designation6.Width:=ValWidth;
          PrintAttachement.Designation6.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation6.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=7)then
     begin
          PrintAttachement.Designation7.Width:=ValWidth;
          PrintAttachement.Designation7.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation7.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=8)then
     begin
          PrintAttachement.Designation8.Width:=ValWidth;
          PrintAttachement.Designation8.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation8.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=9)then
     begin
          PrintAttachement.Designation9.Width:=ValWidth;
          PrintAttachement.Designation9.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation9.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=10)then
     begin
          PrintAttachement.Designation10.Width:=ValWidth;
          PrintAttachement.Designation10.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation10.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=11)then
     begin
          PrintAttachement.Designation11.Width:=ValWidth;
          PrintAttachement.Designation11.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation11.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=12)then
     begin
          PrintAttachement.Designation12.Width:=ValWidth;
          PrintAttachement.Designation12.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation12.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=13)then
     begin
          PrintAttachement.Designation13.Width:=ValWidth;
          PrintAttachement.Designation13.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation13.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=14)then
     begin
          PrintAttachement.Designation14.Width:=ValWidth;
          PrintAttachement.Designation14.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation14.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=15)then
     begin
          PrintAttachement.Designation15.Width:=ValWidth;
          PrintAttachement.Designation15.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation15.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=16)then
     begin
          PrintAttachement.Designation16.Width:=ValWidth;
          PrintAttachement.Designation16.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation16.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=17)then
     begin
          PrintAttachement.Designation17.Width:=ValWidth;
          PrintAttachement.Designation17.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation17.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=18)then
     begin
          PrintAttachement.Designation18.Width:=ValWidth;
          PrintAttachement.Designation18.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation18.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=19)then
     begin
          PrintAttachement.Designation19.Width:=ValWidth;
          PrintAttachement.Designation19.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation19.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=20)then
     begin
          PrintAttachement.Designation20.Width:=ValWidth;
          PrintAttachement.Designation20.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation20.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=21)then
     begin
          PrintAttachement.Designation21.Width:=ValWidth;
          PrintAttachement.Designation21.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation21.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=22)then
     begin
          PrintAttachement.Designation22.Width:=ValWidth;
          PrintAttachement.Designation22.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation22.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=23)then
     begin
          PrintAttachement.Designation23.Width:=ValWidth;
          PrintAttachement.Designation23.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation23.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=24)then
     begin
          PrintAttachement.Designation24.Width:=ValWidth;
          PrintAttachement.Designation24.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation24.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
     if(Indice=25)then
     begin
          PrintAttachement.Designation25.Width:=ValWidth;
          PrintAttachement.Designation25.Alignment:=PrintAttachement.TitreExemple.Alignment;
          PrintAttachement.Designation25.Font.Style:=PrintAttachement.TitreExemple.Font.Style;
     end;
end;

Procedure HeightAttachement(Indice:integer; var Position:integer);
var  LigneR,PositionInt,PositionMax:integer;
begin
PositionMax:=560;
     if(Indice=1)then
     begin
          PrintAttachement.Designation1.Top:=57;
          PrintAttachement.Unite1.Top:=57;
          PrintAttachement.QteRealisee1.Top:=57;
          PrintAttachement.QteMarche1.Top:=57;
          PrintAttachement.QteAvenant1.Top:=57;

          PrintAttachement.Designation1.Height:=PrintAttachement.Designation1.Lines.Capacity*20;
          PrintAttachement.Unite1.Height:=PrintAttachement.Designation1.Height;
          PrintAttachement.QteRealisee1.Height:=PrintAttachement.Designation1.Height;
          PrintAttachement.QteMarche1.Height:=PrintAttachement.Designation1.Height;
          PrintAttachement.QteAvenant1.Height:=PrintAttachement.Designation1.Height;
     Position:=PrintAttachement.Designation1.Top+PrintAttachement.Designation1.Height-1;
     end;
     if(Indice=2)then
     begin
          PrintAttachement.Designation2.Height:=PrintAttachement.Designation2.Lines.Capacity*20;
          PrintAttachement.Unite2.Height:=PrintAttachement.Designation2.Height;
          PrintAttachement.QteRealisee2.Height:=PrintAttachement.Designation2.Height;
          PrintAttachement.QteMarche2.Height:=PrintAttachement.Designation2.Height;
          PrintAttachement.QteAvenant2.Height:=PrintAttachement.Designation2.Height;
     Position:=PrintAttachement.Designation2.Top+PrintAttachement.Designation2.Height-1;
     end;
     if(Indice=3)then
     begin
          PrintAttachement.Designation3.Height:=PrintAttachement.Designation3.Lines.Capacity*20;
          PrintAttachement.Unite3.Height:=PrintAttachement.Designation3.Height;
          PrintAttachement.QteRealisee3.Height:=PrintAttachement.Designation3.Height;
          PrintAttachement.QteMarche3.Height:=PrintAttachement.Designation3.Height;
          PrintAttachement.QteAvenant3.Height:=PrintAttachement.Designation3.Height;
     Position:=PrintAttachement.Designation3.Top+PrintAttachement.Designation3.Height-1;
     end;
     if(Indice=4)then
     begin
          PrintAttachement.Designation4.Height:=PrintAttachement.Designation4.Lines.Capacity*20;
          PrintAttachement.Unite4.Height:=PrintAttachement.Designation4.Height;
          PrintAttachement.QteRealisee4.Height:=PrintAttachement.Designation4.Height;
          PrintAttachement.QteMarche4.Height:=PrintAttachement.Designation4.Height;
          PrintAttachement.QteAvenant4.Height:=PrintAttachement.Designation4.Height;
     Position:=PrintAttachement.Designation4.Top+PrintAttachement.Designation4.Height-1;
     end;
     if(Indice=5)then
     begin
          PrintAttachement.Designation5.Height:=PrintAttachement.Designation5.Lines.Capacity*20;
          PrintAttachement.Unite5.Height:=PrintAttachement.Designation5.Height;
          PrintAttachement.QteRealisee5.Height:=PrintAttachement.Designation5.Height;
          PrintAttachement.QteMarche5.Height:=PrintAttachement.Designation5.Height;
          PrintAttachement.QteAvenant5.Height:=PrintAttachement.Designation5.Height;
     Position:=PrintAttachement.Designation5.Top+PrintAttachement.Designation5.Height-1;
     end;
     if(Indice=6)then
     begin
          PrintAttachement.Designation6.Height:=PrintAttachement.Designation6.Lines.Capacity*20;
          PrintAttachement.Unite6.Height:=PrintAttachement.Designation6.Height;
          PrintAttachement.QteRealisee6.Height:=PrintAttachement.Designation6.Height;
          PrintAttachement.QteMarche6.Height:=PrintAttachement.Designation6.Height;
          PrintAttachement.QteAvenant6.Height:=PrintAttachement.Designation6.Height;
     Position:=PrintAttachement.Designation6.Top+PrintAttachement.Designation6.Height-1;
     end;
     if(Indice=7)then
     begin
          PrintAttachement.Designation7.Height:=PrintAttachement.Designation7.Lines.Capacity*20;
          PrintAttachement.Unite7.Height:=PrintAttachement.Designation7.Height;
          PrintAttachement.QteRealisee7.Height:=PrintAttachement.Designation7.Height;
          PrintAttachement.QteMarche7.Height:=PrintAttachement.Designation7.Height;
          PrintAttachement.QteAvenant7.Height:=PrintAttachement.Designation7.Height;
     Position:=PrintAttachement.Designation7.Top+PrintAttachement.Designation7.Height-1;
     end;
     if(Indice=8)then
     begin
          PrintAttachement.Designation8.Height:=PrintAttachement.Designation8.Lines.Capacity*20;
          PrintAttachement.Unite8.Height:=PrintAttachement.Designation8.Height;
          PrintAttachement.QteRealisee8.Height:=PrintAttachement.Designation8.Height;
          PrintAttachement.QteMarche8.Height:=PrintAttachement.Designation8.Height;
          PrintAttachement.QteAvenant8.Height:=PrintAttachement.Designation8.Height;
     Position:=PrintAttachement.Designation8.Top+PrintAttachement.Designation8.Height-1;
     end;
     if(Indice=9)then
     begin
          PrintAttachement.Designation9.Height:=PrintAttachement.Designation9.Lines.Capacity*20;
          PrintAttachement.Unite9.Height:=PrintAttachement.Designation9.Height;
          PrintAttachement.QteRealisee9.Height:=PrintAttachement.Designation9.Height;
          PrintAttachement.QteMarche9.Height:=PrintAttachement.Designation9.Height;
          PrintAttachement.QteAvenant9.Height:=PrintAttachement.Designation9.Height;
     Position:=PrintAttachement.Designation9.Top+PrintAttachement.Designation9.Height-1;
     end;
     if(Indice=10)then
     begin
          PrintAttachement.Designation10.Height:=PrintAttachement.Designation10.Lines.Capacity*20;
          PrintAttachement.Unite10.Height:=PrintAttachement.Designation10.Height;
          PrintAttachement.QteRealisee10.Height:=PrintAttachement.Designation10.Height;
          PrintAttachement.QteMarche10.Height:=PrintAttachement.Designation10.Height;
          PrintAttachement.QteAvenant10.Height:=PrintAttachement.Designation10.Height;
     Position:=PrintAttachement.Designation10.Top+PrintAttachement.Designation10.Height-1;
     end;
     if(Indice=11)then
     begin
          PrintAttachement.Designation11.Height:=PrintAttachement.Designation11.Lines.Capacity*20;
          PrintAttachement.Unite11.Height:=PrintAttachement.Designation11.Height;
          PrintAttachement.QteRealisee11.Height:=PrintAttachement.Designation11.Height;
          PrintAttachement.QteMarche11.Height:=PrintAttachement.Designation11.Height;
          PrintAttachement.QteAvenant11.Height:=PrintAttachement.Designation11.Height;
     Position:=PrintAttachement.Designation11.Top+PrintAttachement.Designation11.Height-1;
     end;
     if(Indice=12)then
     begin
          PrintAttachement.Designation12.Height:=PrintAttachement.Designation12.Lines.Capacity*20;
          PrintAttachement.Unite12.Height:=PrintAttachement.Designation12.Height;
          PrintAttachement.QteRealisee12.Height:=PrintAttachement.Designation12.Height;
          PrintAttachement.QteMarche12.Height:=PrintAttachement.Designation12.Height;
          PrintAttachement.QteAvenant12.Height:=PrintAttachement.Designation12.Height;
     Position:=PrintAttachement.Designation12.Top+PrintAttachement.Designation12.Height-1;
     end;
     if(Indice=13)then
     begin
          PrintAttachement.Designation13.Height:=PrintAttachement.Designation13.Lines.Capacity*20;
          PrintAttachement.Unite13.Height:=PrintAttachement.Designation13.Height;
          PrintAttachement.QteRealisee13.Height:=PrintAttachement.Designation13.Height;
          PrintAttachement.QteMarche13.Height:=PrintAttachement.Designation13.Height;
          PrintAttachement.QteAvenant13.Height:=PrintAttachement.Designation13.Height;
     Position:=PrintAttachement.Designation13.Top+PrintAttachement.Designation13.Height-1;
     end;
     if(Indice=14)then
     begin
          PrintAttachement.Designation14.Height:=PrintAttachement.Designation14.Lines.Capacity*20;
          PrintAttachement.Unite14.Height:=PrintAttachement.Designation14.Height;
          PrintAttachement.QteRealisee14.Height:=PrintAttachement.Designation14.Height;
          PrintAttachement.QteMarche14.Height:=PrintAttachement.Designation14.Height;
          PrintAttachement.QteAvenant14.Height:=PrintAttachement.Designation14.Height;
     Position:=PrintAttachement.Designation14.Top+PrintAttachement.Designation14.Height-1;
     end;
     if(Indice=15)then
     begin
          PrintAttachement.Designation15.Height:=PrintAttachement.Designation15.Lines.Capacity*20;
          PrintAttachement.Unite15.Height:=PrintAttachement.Designation15.Height;
          PrintAttachement.QteRealisee15.Height:=PrintAttachement.Designation15.Height;
          PrintAttachement.QteMarche15.Height:=PrintAttachement.Designation15.Height;
          PrintAttachement.QteAvenant15.Height:=PrintAttachement.Designation15.Height;
     Position:=PrintAttachement.Designation15.Top+PrintAttachement.Designation15.Height-1;
     end;
     if(Indice=16)then
     begin
          PrintAttachement.Designation16.Height:=PrintAttachement.Designation16.Lines.Capacity*20;
          PrintAttachement.Unite16.Height:=PrintAttachement.Designation16.Height;
          PrintAttachement.QteRealisee16.Height:=PrintAttachement.Designation16.Height;
          PrintAttachement.QteMarche16.Height:=PrintAttachement.Designation16.Height;
          PrintAttachement.QteAvenant16.Height:=PrintAttachement.Designation16.Height;
     Position:=PrintAttachement.Designation16.Top+PrintAttachement.Designation16.Height-1;
     end;
     if(Indice=17)then
     begin
          PrintAttachement.Designation17.Height:=PrintAttachement.Designation17.Lines.Capacity*20;
          PrintAttachement.Unite17.Height:=PrintAttachement.Designation17.Height;
          PrintAttachement.QteRealisee17.Height:=PrintAttachement.Designation17.Height;
          PrintAttachement.QteMarche17.Height:=PrintAttachement.Designation17.Height;
          PrintAttachement.QteAvenant17.Height:=PrintAttachement.Designation17.Height;
     Position:=PrintAttachement.Designation17.Top+PrintAttachement.Designation17.Height-1;
     end;
     if(Indice=18)then
     begin
          PrintAttachement.Designation18.Height:=PrintAttachement.Designation18.Lines.Capacity*20;
          PrintAttachement.Unite18.Height:=PrintAttachement.Designation18.Height;
          PrintAttachement.QteRealisee18.Height:=PrintAttachement.Designation18.Height;
          PrintAttachement.QteMarche18.Height:=PrintAttachement.Designation18.Height;
          PrintAttachement.QteAvenant18.Height:=PrintAttachement.Designation18.Height;
     Position:=PrintAttachement.Designation18.Top+PrintAttachement.Designation18.Height-1;
     end;
     if(Indice=19)then
     begin
          PrintAttachement.Designation19.Height:=PrintAttachement.Designation19.Lines.Capacity*20;
          PrintAttachement.Unite19.Height:=PrintAttachement.Designation19.Height;
          PrintAttachement.QteRealisee19.Height:=PrintAttachement.Designation19.Height;
          PrintAttachement.QteMarche19.Height:=PrintAttachement.Designation19.Height;
          PrintAttachement.QteAvenant19.Height:=PrintAttachement.Designation19.Height;
     Position:=PrintAttachement.Designation19.Top+PrintAttachement.Designation19.Height-1;
     end;
     if(Indice=20)then
     begin
          PrintAttachement.Designation20.Height:=PrintAttachement.Designation20.Lines.Capacity*20;
          PrintAttachement.Unite20.Height:=PrintAttachement.Designation20.Height;
          PrintAttachement.QteRealisee20.Height:=PrintAttachement.Designation20.Height;
          PrintAttachement.QteMarche20.Height:=PrintAttachement.Designation20.Height;
          PrintAttachement.QteAvenant20.Height:=PrintAttachement.Designation20.Height;
     Position:=PrintAttachement.Designation20.Top+PrintAttachement.Designation20.Height-1;
     end;
     if(Indice=21)then
     begin
          PrintAttachement.Designation21.Height:=PrintAttachement.Designation21.Lines.Capacity*20;
          PrintAttachement.Unite21.Height:=PrintAttachement.Designation21.Height;
          PrintAttachement.QteRealisee21.Height:=PrintAttachement.Designation21.Height;
          PrintAttachement.QteMarche21.Height:=PrintAttachement.Designation21.Height;
          PrintAttachement.QteAvenant21.Height:=PrintAttachement.Designation21.Height;
     Position:=PrintAttachement.Designation21.Top+PrintAttachement.Designation21.Height-1;
     end;
     if(Indice=22)then
     begin
          PrintAttachement.Designation22.Height:=PrintAttachement.Designation22.Lines.Capacity*20;
          PrintAttachement.Unite22.Height:=PrintAttachement.Designation22.Height;
          PrintAttachement.QteRealisee22.Height:=PrintAttachement.Designation22.Height;
          PrintAttachement.QteMarche22.Height:=PrintAttachement.Designation22.Height;
          PrintAttachement.QteAvenant22.Height:=PrintAttachement.Designation22.Height;
     Position:=PrintAttachement.Designation22.Top+PrintAttachement.Designation22.Height-1;
     end;
     if(Indice=23)then
     begin
          PrintAttachement.Designation23.Height:=PrintAttachement.Designation23.Lines.Capacity*20;
          PrintAttachement.Unite23.Height:=PrintAttachement.Designation23.Height;
          PrintAttachement.QteRealisee23.Height:=PrintAttachement.Designation23.Height;
          PrintAttachement.QteMarche23.Height:=PrintAttachement.Designation23.Height;
          PrintAttachement.QteAvenant23.Height:=PrintAttachement.Designation23.Height;
     Position:=PrintAttachement.Designation23.Top+PrintAttachement.Designation23.Height-1;
     end;
     if(Indice=24)then
     begin
          PrintAttachement.Designation24.Height:=PrintAttachement.Designation24.Lines.Capacity*20;
          PrintAttachement.Unite24.Height:=PrintAttachement.Designation24.Height;
          PrintAttachement.QteRealisee24.Height:=PrintAttachement.Designation24.Height;
          PrintAttachement.QteMarche24.Height:=PrintAttachement.Designation24.Height;
          PrintAttachement.QteAvenant24.Height:=PrintAttachement.Designation24.Height;
     Position:=PrintAttachement.Designation24.Top+PrintAttachement.Designation24.Height-1;
     end;
     if(Indice=25)then
     begin
          PrintAttachement.Designation25.Height:=PrintAttachement.Designation25.Lines.Capacity*20;
          PrintAttachement.Unite25.Height:=PrintAttachement.Designation25.Height;
          PrintAttachement.QteRealisee25.Height:=PrintAttachement.Designation25.Height;
          PrintAttachement.QteMarche25.Height:=PrintAttachement.Designation25.Height;
          PrintAttachement.QteAvenant25.Height:=PrintAttachement.Designation25.Height;
     Position:=PrintAttachement.Designation25.Top+PrintAttachement.Designation25.Height-1;
     end;

     {********************* SUITE *********************************************}
     PositionInt:=Position;
     for LigneR:=Indice+1 to 25 do
     begin
          if(LigneR=2)then
          begin
               PrintAttachement.Designation2.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite2.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee2.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche2.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant2.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation2.Top+PrintAttachement.Designation2.Height-1;
          end;
          if(LigneR=3)then
          begin
               PrintAttachement.Designation3.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite3.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee3.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche3.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant3.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation3.Top+PrintAttachement.Designation3.Height-1;
          end;if(LigneR=4)then
          begin
               PrintAttachement.Designation4.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite4.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee4.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche4.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant4.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation4.Top+PrintAttachement.Designation4.Height-1;
          end;
          if(LigneR=5)then
          begin
               PrintAttachement.Designation5.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite5.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee5.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche5.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant5.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation5.Top+PrintAttachement.Designation5.Height-1;
          end;
          if(LigneR=6)then
          begin
               PrintAttachement.Designation6.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite6.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee6.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche6.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant6.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation6.Top+PrintAttachement.Designation6.Height-1;
          end;
          if(LigneR=7)then
          begin
               PrintAttachement.Designation7.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite7.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee7.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche7.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant7.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation7.Top+PrintAttachement.Designation7.Height-1;
          end;
          if(LigneR=8)then
          begin
               PrintAttachement.Designation8.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite8.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee8.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche8.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant8.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation8.Top+PrintAttachement.Designation8.Height-1;
          end;
          if(LigneR=9)then
          begin
               PrintAttachement.Designation9.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite9.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee9.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche9.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant9.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation9.Top+PrintAttachement.Designation9.Height-1;
          end;
          if(LigneR=10)then
          begin
               PrintAttachement.Designation10.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite10.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee10.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche10.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant10.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation10.Top+PrintAttachement.Designation10.Height-1;
          end;
          if(LigneR=11)then
          begin
               PrintAttachement.Designation11.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite11.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee11.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche11.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant11.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation11.Top+PrintAttachement.Designation11.Height-1;
          end;
          if(LigneR=12)then
          begin
               PrintAttachement.Designation12.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite12.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee12.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche12.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant12.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation12.Top+PrintAttachement.Designation12.Height-1;
          end;
          if(LigneR=13)then
          begin
               PrintAttachement.Designation13.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite13.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee13.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche13.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant13.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation13.Top+PrintAttachement.Designation13.Height-1;
          end;
          if(LigneR=14)then
          begin
               PrintAttachement.Designation14.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite14.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee14.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche14.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant14.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation14.Top+PrintAttachement.Designation14.Height-1;
          end;
          if(LigneR=15)then
          begin
               PrintAttachement.Designation15.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite15.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee15.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche15.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant15.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation15.Top+PrintAttachement.Designation15.Height-1;
          end;
          if(LigneR=16)then
          begin
               PrintAttachement.Designation16.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite16.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee16.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche16.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant16.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation16.Top+PrintAttachement.Designation16.Height-1;
          end;
          if(LigneR=17)then
          begin
               PrintAttachement.Designation17.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite17.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee17.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche17.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant17.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation17.Top+PrintAttachement.Designation17.Height-1;
          end;
          if(LigneR=18)then
          begin
               PrintAttachement.Designation18.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite18.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee18.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche18.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant18.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation18.Top+PrintAttachement.Designation18.Height-1;
          end;
          if(LigneR=19)then
          begin
               PrintAttachement.Designation19.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite19.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee19.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche19.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant19.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation19.Top+PrintAttachement.Designation19.Height-1;
          end;
          if(LigneR=20)then
          begin
               PrintAttachement.Designation20.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite20.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee20.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche20.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant20.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation20.Top+PrintAttachement.Designation20.Height-1;
          end;
          if(LigneR=21)then
          begin
               PrintAttachement.Designation21.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite21.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee21.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche21.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant21.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation21.Top+PrintAttachement.Designation21.Height-1;
          end;
          if(LigneR=22)then
          begin
               PrintAttachement.Designation22.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite22.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee22.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche22.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant22.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation22.Top+PrintAttachement.Designation22.Height-1;
          end;
          if(LigneR=23)then
          begin
               PrintAttachement.Designation23.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite23.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee23.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche23.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant23.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation23.Top+PrintAttachement.Designation23.Height-1;
          end;
          if(LigneR=24)then
          begin
               PrintAttachement.Designation24.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite24.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee24.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche24.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant24.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation24.Top+PrintAttachement.Designation24.Height-1;
          end;
          if(LigneR=25)then
          begin
               PrintAttachement.Designation25.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.Unite25.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteRealisee25.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteMarche25.Top:=MinInt(PositionInt,PositionMax);
               PrintAttachement.QteAvenant25.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintAttachement.Designation25.Top+PrintAttachement.Designation25.Height-1;
          end;
     end;
end;

procedure TFSAttachements.BitBtn13Click(Sender: TObject);
begin
InitialeAfficheDetailAttachement;

if(FSAttachements.EditSauvegardeAttachement.Text='OK')
and AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)
then
begin
     FSAttachements.AfficheSauvegarderAttachement.Visible:=true;
     FSAttachements.BitOuiSauvegardeAttachement.SetFocus;
     FSAttachements.EditOptionSauvegardeAttachement.Text:='Quitter';
end
else FSAttachements.Close;
end;

procedure TFSAttachements.FormShow(Sender: TObject);
var PositionHorizontale,PositionVerticale,EcartHorizontal,EcartVertical:string;
begin
     PositionHorizontale:='';
     EcartHorizontal:=inttostr(FSAttachements.AfficheSaisieAttachement.Left+FSAttachements.EditDesignationArticleAttachement.Left);

     PositionVerticale:='';
     EcartVertical:=inttostr(FSAttachements.AfficheSaisieAttachement.Top+FSAttachements.EditDesignationArticleAttachement.Top+FSAttachements.EditDesignationArticleAttachement.Height+3);

     PositionAffichage(FSAttachements,FSAttachements.AfficheDesignationArticlesAttachement,PositionHorizontale,PositionVerticale,EcartHorizontal,EcartVertical);
end;

Procedure ImprimerAttachement(TableauDetailAttachement:TStringGrid;  TypeProjet,NSMarche,StructureMarche,NAttachement,IndiceAfficheStructure:string);
var OKPrint,OK,OKHeightMax:boolean;  i,l,R,m,n,AjoutLigne,Position,HeightRow,HeightMax:integer;  MontantMarche,TVAMarche:real;
    CodeArticle:string;
begin
InitialeAfficheDetailAttachement;

if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MI',true)then exit;

PrintAttachement.EtatEntreprise.Lines.Clear;

PrintAttachement.EtatTitre.Caption:='ATTACHEMENT CONTRADICTOIRE N° '+Completezerogauche(NAttachement,'2');
PrintAttachement.EtatDate.Caption:='Arrêté au: '+DateDetailAttachement(NSMarche,NAttachement);
PrintAttachement.EtatSousTitre.Caption:='Récapitulatif';

{*******************Entreprise***************}
OpenFParc(RParc);
PrintAttachement.EtatEntreprise.Lines.Add('  '+RParc.Text1);
PrintAttachement.EtatEntreprise.Lines.Add('  '+RParc.Text2);
PrintAttachement.EtatEntreprise.Lines.Add('  '+RParc.Text3);
PrintAttachement.EtatEntreprise.Lines.Add('  '+RParc.Text4);
PrintAttachement.EtatEntreprise.Lines.Add('  '+RParc.Text5);
{***************Fin Entreprise***************}

PrintAttachement.EtatEntreprise.Lines.Add('');

{******************MARCHE***************}
TypeProces:='Business'; FichierConcerne:='FMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChMarche:=Adresse;
assignfile(FMarche,ChMarche);
if FileExists(ChMarche)then
Reset(FMarche)
else Rewrite(FMarche);
Seek(FMarche,0);
i:=0;
OK:=false;
while not eof(FMarche)and(OK=false)do
begin
     Read(FMarche,RMarche);
     if(RMarche.NSMarche=strtointeger(NSMarche))then
     begin
          OK:=true;
          PrintAttachement.EtatEntreprise.Lines.Add('  '+TypeProjet+' N°: '+RMarche.RefMarche+' du '+RMarche.DateMarche);
          PrintAttachement.EtatEntreprise.Lines.Add('  Objet: '+RMarche.Marche);
          PrintAttachement.EtatEntreprise.Lines.Add('  Maitre de l''ouvrage: '+RMarche.CodeMaitreOuvrage+' '+FSAttachements.EditMaitreOuvrage.Text);
          MontantMarche:=RMarche.MontantMarche;
     end;

end;
CloseFile(FMarche);

PrintAttachement.EtatEntreprise.Lines.Add('  Montant du '+TypeProjet+' en TTC: '+vergule(floattostr(MontantMarche),'2','C','')+' DA.');
PrintAttachement.EtatEntreprise.Height:=PrintAttachement.EtatEntreprise.Lines.Capacity*16;
{***************Fin MARCHE***************}

if(IndiceAfficheStructure='1')
then PrintAttachement.TitreStructure.Caption:=StructureMarche
else PrintAttachement.TitreStructure.Caption:='';

for l:=1 to 25 do ClearAttachement(l,false);
for l:=1 to MinInt(25,TableauDetailAttachement.RowCount-1) do InitialisationAttachement(l,l);

HeightMax:=560;

R:=1;
m:=1;
L:=0;
Position:=57;
while(R<=TableauDetailAttachement.RowCount-1)do
begin
l:=l+1;
FSAttachements.TestePrintDevis.Lines.Text:=TableauDetailAttachement.Cells[4,R];
HeightRow:=FSAttachements.TestePrintDevis.Lines.Count*20;
OKHeightMax:=true;
if((Position+HeightRow)<HeightMax)then
begin
     OKHeightMax:=false;

     ClearAttachement(l,true);
     InitialisationAttachement(R,l);

     if(TableauDetailAttachement.Cells[3,R]<>'')
     then
     begin
          CodeArticle:=' '+TableauDetailAttachement.Cells[3,R]+')- ';
     end
     else
     begin
          if(Lastlaters(TableauDetailAttachement.Cells[10,R],11)<>'00.00.00.00')
          then CodeArticle:='                 '
          else CodeArticle:='';
     end;

     if(l=1)then
     begin
          PrintAttachement.Designation1.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite1.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee1.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche1.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant1.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=2)then
     begin
          PrintAttachement.Designation2.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite2.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee2.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche2.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant2.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=3)then
     begin
          PrintAttachement.Designation3.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite3.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee3.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche3.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant3.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=4)then
     begin
          PrintAttachement.Designation4.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite4.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee4.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche4.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant4.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=5)then
     begin
          PrintAttachement.Designation5.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite5.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee5.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche5.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant5.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=6)then
     begin
          PrintAttachement.Designation6.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite6.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee6.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche6.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant6.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=7)then
     begin
          PrintAttachement.Designation7.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite7.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee7.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche7.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant7.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=8)then
     begin
          PrintAttachement.Designation8.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite8.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee8.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche8.Lines.Add(TableauDetailAttachement.Cells[7,R]+' .          ');
          PrintAttachement.QteAvenant8.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=9)then
     begin
          PrintAttachement.Designation9.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite9.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee9.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche9.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant9.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=10)then
     begin
          PrintAttachement.Designation10.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite10.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee10.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche10.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant10.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=11)then
     begin
          PrintAttachement.Designation11.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite11.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee11.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche11.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant11.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=12)then
     begin
          PrintAttachement.Designation12.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite12.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee12.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche12.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant12.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=13)then
     begin
          PrintAttachement.Designation13.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite13.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee13.Lines.Add(TableauDetailAttachement.Cells[6,R])
          ;
          PrintAttachement.QteMarche13.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant13.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=14)then
     begin
          PrintAttachement.Designation14.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite14.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee14.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche14.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant14.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=15)then
     begin
          PrintAttachement.Designation15.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite15.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee15.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche15.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant15.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=16)then
     begin
          PrintAttachement.Designation16.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite16.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee16.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche16.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant16.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=17)then
     begin
          PrintAttachement.Designation17.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite17.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee17.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche17.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant17.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=18)then
     begin
          PrintAttachement.Designation18.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite18.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee18.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche18.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant18.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=19)then
     begin
          PrintAttachement.Designation19.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite19.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee19.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche19.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant19.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=20)then
     begin
          PrintAttachement.Designation20.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite20.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee20.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche20.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant20.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=21)then
     begin
          PrintAttachement.Designation21.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite21.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee21.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche21.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant21.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=22)then
     begin
          PrintAttachement.Designation22.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite22.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee22.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche22.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant22.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=23)then
     begin
          PrintAttachement.Designation23.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite23.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee23.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche23.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant23.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=24)then
     begin
          PrintAttachement.Designation24.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite24.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee24.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche24.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant24.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;
     if(l=25)then
     begin
          PrintAttachement.Designation25.Lines.Add(CodeArticle+TableauDetailAttachement.Cells[4,R]);
          PrintAttachement.Unite25.Lines.Add(TableauDetailAttachement.Cells[5,R]);
          PrintAttachement.QteRealisee25.Lines.Add(TableauDetailAttachement.Cells[6,R]);
          PrintAttachement.QteMarche25.Lines.Add(TableauDetailAttachement.Cells[7,R]);
          PrintAttachement.QteAvenant25.Lines.Add(TableauDetailAttachement.Cells[8,R]);
     end;

     HeightAttachement(l,Position);
end
else R:=R-1;

     if(l=25)or(R=TableauDetailAttachement.RowCount-1)or(OKHeightMax=true)then
     begin
          PrintAttachement.MaitreOuvrage.Top:=Position+50;
          PrintAttachement.BET.Top:=PrintAttachement.MaitreOuvrage.Top;
          PrintAttachement.Entreprise.Top:=PrintAttachement.MaitreOuvrage.Top;

          PrintAttachement.Preview;

          l:=0;
          for n:=(R+1)to MinInt((R+25),TableauDetailAttachement.RowCount-1)do
          begin
               l:=l+1;
               InitialisationAttachement(n,l);
          end;

          for l:=1 to 25 do ClearAttachement(l,false);

          Position:=57;
          m:=m+1;
          l:=0;
     end;

R:=R+1;
end;
end;

procedure TFSAttachements.TableauSelectionKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSAttachements.TableauSelectionClick(Sender: TObject);
var  R:integer;
begin
     if(FSAttachements.TableauSelection.Cells[0,0]='Mch')then
     begin
           for R:=1 to FSAttachements.TableauSelection.RowCount-1 do
           begin
                if(R=FSAttachements.TableauSelection.Row)then
                begin
                     FSMarche.EditMarcheControle.Lines.Text:=FSAttachements.TableauSelection.Cells[4,R];
                     FSAttachements.TableauSelection.RowHeights[R]:=FSMarche.EditMarcheControle.Lines.Capacity*20;
                end
                else FSAttachements.TableauSelection.RowHeights[R]:=20;
           end;
     end;
end;

Procedure ListeAvenantMarche(TableauAvenantMarche:TStringGrid; NSMarche:string);
var  Rp:integer;
begin
     TableauAvenantMarche.ColCount:=4;
     TableauAvenantMarche.Cols[0].Text:='Or';
     TableauAvenantMarche.Cols[1].Text:='Date';
     TableauAvenantMarche.Cols[2].Text:='Num Avenant';
     TableauAvenantMarche.Cols[3].Text:='Désignation';

     TableauAvenantMarche.RowCount:=2;
     TableauAvenantMarche.Rows[1].Text:='';

     TypeProces:='Business'; FichierConcerne:='FMarche';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChMarche:=Adresse;
     assignfile(FMarche,ChMarche);
     if FileExists(ChMarche)then
     Reset(FMarche)
     else Rewrite(FMarche);
     Seek(FMarche,0);
     Rp:=0;
     while not eof(FMarche)do
     begin
          Read(FMarche,RMarche);
          if(RMarche.NumMarcheReference=NSMarche)then
          begin
               Rp:=Rp+1;
               TableauAvenantMarche.Rows[Rp].Text:=inttostr(Rp);
               TableauAvenantMarche.Cells[1,Rp]:=RMarche.DateMarche;
               TableauAvenantMarche.Cells[2,Rp]:=inttostr(RMarche.NSMarche);
               TableauAvenantMarche.Cells[3,Rp]:=RMarche.Marche;
          end;
     end;
     CloseFile(FMarche);

     if(Rp>0)then TableauAvenantMarche.RowCount:=Rp+1
            else TableauAvenantMarche.RowCount:=2;
     AjusterColWidth(TableauAvenantMarche,'','');
end;

Function FuntionQuantiteAvenantMarche(NSMarche,CodeTrie:string; ParStructure,ParStatistique:boolean):real;
var  QuantiteAvenant:real;  OKDetailAvenant:boolean;    CodeTrieMarche,CodeTrieAvenant:string;
begin
     TypeProces:='Business'; FichierConcerne:='FDetail'+ChercherMarche(strtointeger(NSMarche)).TypeProjet+' '+NSMarche;
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChDetailMarche:=Adresse;
     assignfile(FDetailMarche,ChDetailMarche);
     if FileExists(ChDetailMarche)then
     Reset(FDetailMarche)
     else Rewrite(FDetailMarche);
     Seek(FDetailMarche,0);
     QuantiteAvenant:=0;
     while not eof(FDetailMarche) do
     begin
          Read(FDetailMarche,RDetailMarche);  

          CodeTrieMarche:=TrieOptionArticleSituation(CodeTrie,ParStructure,ParStatistique);
          CodeTrieMarche:=DTrie('S',CodeTrieMarche)+DTrie('T',CodeTrieMarche)+DTrie('K',CodeTrieMarche);

          CodeTrieAvenant:=TrieOptionArticleSituation(RDetailMarche.CodeTrie,ParStructure,ParStatistique);
          CodeTrieAvenant:=DTrie('S',CodeTrieAvenant)+DTrie('T',CodeTrieAvenant)+DTrie('K',CodeTrieAvenant);

          if(CodeTrieAvenant=CodeTrieMarche)
          then OKDetailAvenant:=true
          else OKDetailAvenant:=false;

          if(OKDetailAvenant)then
          begin
               QuantiteAvenant:=QuantiteAvenant+RDetailMarche.QuantiteGlobale;
          end;
     end;
     CloseFile(FDetailMarche);

     FuntionQuantiteAvenantMarche:=QuantiteAvenant;
end;

Function FuntionQuantiteListeAvenantMarche(TableauListeAvenantMarche:TStringGrid; CodeTrie:string; ParStructure,ParStatistique:boolean):real;
var  R:integer; QuantiteAvenant:real;
begin
     R:=1;
     QuantiteAvenant:=0;
     while(R<=TableauListeAvenantMarche.RowCount-1)do
     begin
          QuantiteAvenant:=QuantiteAvenant+FuntionQuantiteAvenantMarche(TableauListeAvenantMarche.Cells[2,R],CodeTrie,ParStructure,ParStatistique);
     R:=R+1;
     end;

     FuntionQuantiteListeAvenantMarche:=QuantiteAvenant;
end;

procedure TFSAttachements.BitBtn29Click(Sender: TObject);
begin
     FSAttachements.AfficheAvenantAttachement.Visible:=false;
end;

procedure TFSAttachements.BitBtn78Click(Sender: TObject);
begin
     FSAttachements.AfficheIndiqueArchivePhoto.Visible:=false;
     FSAttachements.TableauxListePositionArchivePhoto.Visible:=false;
end;

procedure TFSAttachements.BitBtn3Click(Sender: TObject);
begin
     FSAttachements.AfficheIndiqueArchivePhoto.Visible:=true;
end;

procedure TFSAttachements.TableauxListePositionArchivePhotoClick(
  Sender: TObject);
var  AdresseArchivePhoto:string;
begin
     if(FSAttachements.AfficheIndiqueArchivePhoto.Visible=true)
     and(IndiqueAdresseArchivePhoto(FSAttachements.TableauxListePositionArchivePhoto.Cells[1,FSAttachements.TableauxListePositionArchivePhoto.Row],'','','',FSGenerateurBase.TableauxListePositionArchivePhoto,AdresseArchivePhoto))then
     begin
          if FileExists(AdresseArchivePhoto)
          then FSAttachements.ArchivePhoto.Picture.LoadFromFile(AdresseArchivePhoto)
          else FSAttachements.ArchivePhoto.Picture:=FSArchivesPhotosCommentaires.PhotoVide.Picture;
     end
     else
     begin
          FSAttachements.ArchivePhoto.Picture:=FSArchivesPhotosCommentaires.PhotoVide.Picture;
     end;
end;

procedure TFSAttachements.IncrimentEditMaxColWidthClick(Sender: TObject;
  Button: TUDBtnType);
var C:integer;   NotRow,NotCol:string;
begin
     NotRow:='';
     NotCol:='1;2;9-11';
     for C:=1 to FSAttachements.TableauDetailAttachement.ColCount-1 do if(existenumintexte(inttostr(C),NotCol))then FSAttachements.TableauDetailAttachement.ColWidths[C]:=0;
     AjusterColWidth(FSAttachements.TableauDetailAttachement,NotRow,NotCol);

     for C:=1 to FSAttachements.TableauDetailAttachement.ColCount-1 do
     begin
          if(FSAttachements.TableauDetailAttachement.ColWidths[C]>strtointeger(FSAttachements.EditMaxColWidth.Text))then FSAttachements.TableauDetailAttachement.ColWidths[C]:=strtointeger(FSAttachements.EditMaxColWidth.Text);
     end;
end;

procedure TFSAttachements.BitBtn4Click(Sender: TObject);
var i,C,NSMarche,NStructureMarche,NStatistique,NAttachement:integer;  OK:boolean;  NotRow,NotCol:string;
begin
     if(FSAttachements.OuvrirFichier.Execute=true)then
     begin
          if(Existecharinstring('FDetailAttachement',FSAttachements.OuvrirFichier.FileName)=true)then
          begin
                NSMarche:=strtointeger(FSAttachements.EditNSMarche.Text);
                NStructureMarche:=strtointeger(FSAttachements.EditNStructureMarche.Text)*strtointeger(FSAttachements.IndiceAfficheStructure.Text);
                NStatistique:=strtointeger(FSAttachements.EditNStatistiqueMarche.Text)*strtointeger(FSAttachements.IndiceAfficheStatistique.Text);
                NAttachement:=strtointeger(FSAttachements.EditNAttachementMarche.Text)*strtointeger(FSAttachements.IndiceAfficheAttachement.Text);

                TableauDetailAttachement.ColCount:=12;
                TableauDetailAttachement.Cols[1].Text:='NDetailDAttachement';
                TableauDetailAttachement.Cols[2].Text:='NAttachement';
                TableauDetailAttachement.Cols[3].Text:='C.Article';
                TableauDetailAttachement.Cols[4].Text:='Désignation Article';
                TableauDetailAttachement.Cols[5].Text:='Unité M.';
                TableauDetailAttachement.Cols[6].Text:='Qte.Réalisé';
                TableauDetailAttachement.Cols[7].Text:='Qte.O.Marché';
                TableauDetailAttachement.Cols[8].Text:='Qte.O.Avenant';
                TableauDetailAttachement.Cols[9].Text:='Prix Unit.';
                TableauDetailAttachement.Cols[10].Text:='Code Trie';
                TableauDetailAttachement.Cols[11].Text:='Code Produit';

                ChDetailAttachement:=FSAttachements.OuvrirFichier.FileName;
                assignfile(FDetailAttachement,ChDetailAttachement);
                if FileExists(ChDetailAttachement)then
                Reset(FDetailAttachement)
                else Rewrite(FDetailAttachement);
                Seek(FDetailAttachement,0);
                i:=0;
                while not eof(FDetailAttachement) do
                begin
                     Read(FDetailAttachement,RDetailAttachement);
                     OK:=true;
                     if(Strtointeger(DTrie('M',RDetailAttachement.CodeTrie))=NSMarche)then
                     begin
                          if(RDetailAttachement.NAttachement=NAttachement)then
                          begin
                               if(NStructureMarche<>0)then
                               begin
                                    if(Strtointeger(DTrie('S',RDetailAttachement.CodeTrie))=NStructureMarche)
                                    then OK:=true
                                    else OK:=false;
                               end
                               else OK:=true;

                               if(OK=true)then
                               begin
                                    if(NStatistique<>0)then
                                    begin
                                         if(Strtointeger(DTrie('T',RDetailAttachement.CodeTrie))=NStatistique)
                                         then OK:=true
                                         else OK:=false;
                                    end;
                               end;
                          end
                          else OK:=false;
                     end
                     else OK:=false;


                     if(OK=true)then
                     begin
                          i:=i+1;
                          TableauDetailAttachement.Rows[i].Text:=inttostr(i);
                          TableauDetailAttachement.Cells[1,i]:='';
                          TableauDetailAttachement.Cells[2,i]:=inttostr(RDetailAttachement.NAttachement);
                          TableauDetailAttachement.Cells[3,i]:=RDetailAttachement.NArticle;
                          TableauDetailAttachement.Cells[4,i]:=RDetailAttachement.DesignationArticle;
                          TableauDetailAttachement.Cells[5,i]:=RDetailAttachement.UniteM;
                          if(RDetailAttachement.QuantiteAttachementRealise<>0)
                          then TableauDetailAttachement.Cells[6,i]:=vergule(floattostr(RDetailAttachement.QuantiteAttachementRealise),'3','C','')
                          else TableauDetailAttachement.Cells[6,i]:='';
                          if(RDetailAttachement.QuantiteAttachementObjetMarche<>0)
                          then TableauDetailAttachement.Cells[7,i]:=vergule(floattostr(RDetailAttachement.QuantiteAttachementObjetMarche),'3','C','')
                          else TableauDetailAttachement.Cells[7,i]:='';
                          if(RDetailAttachement.QuantiteAttachementObjetAvenant<>0)
                          then TableauDetailAttachement.Cells[8,i]:=vergule(floattostr(RDetailAttachement.QuantiteAttachementObjetAvenant),'3','C','')
                          else TableauDetailAttachement.Cells[8,i]:='';
                          if(RDetailAttachement.PrixUnitaire<>0)
                          then TableauDetailAttachement.Cells[9,i]:=vergule(floattostr(RDetailAttachement.PrixUnitaire),'2','C','')
                          else TableauDetailAttachement.Cells[9,i]:='';
                          TableauDetailAttachement.Cells[10,i]:=RDetailAttachement.CodeTrie;
                          TableauDetailAttachement.Cells[11,i]:=RDetailAttachement.CodeStock;
                     end;
                end;
                if(i>0)then TableauDetailAttachement.RowCount:=i+1
                       else
                       begin
                            TableauDetailAttachement.RowCount:=2;
                            TableauDetailAttachement.Rows[1].Text:='';
                       end;
                TrierDetailAttachement(TableauDetailAttachement,10);

                OrganiseDetailAttachement(TableauDetailAttachement);

                NotRow:='';
                NotCol:='1;2;9-11';
                for i:=1 to TableauDetailAttachement.ColCount-1 do if ExisteNumInTexte(inttostr(i),NotCol)then TableauDetailAttachement.ColWidths[i]:=0;
                AjusterColWidth(TableauDetailAttachement,NotRow,NotCol);

                for C:=1 to TableauDetailAttachement.ColCount-1 do
                begin
                     if(TableauDetailAttachement.ColWidths[C]>strtointeger(FSAttachements.EditMaxColWidth.Text))then TableauDetailAttachement.ColWidths[C]:=strtointeger(FSAttachements.EditMaxColWidth.Text);
                end;
          end
          else
          begin
               showmessage('Erreur de fichier !');
          end;
     end;
end;

procedure TFSAttachements.BitBtn5Click(Sender: TObject);
var i:integer;   NotRow,NotCol,RowSelect,NumMarche,NAttachement:string;   OKAttachement:boolean;
begin
     if(FSAttachements.OuvrirFichier.Execute=true)then
     begin
          if(Existecharinstring('FAttachement',FSAttachements.OuvrirFichier.FileName)=true)then
          begin
                NumMarche:=FSAttachements.EditNSMarche.Text;
                NAttachement:=FSAttachements.EditNNewAttachement.Text;
                
                FSAttachements.TableauAutresAttachements.Visible:=true;

                FSAttachements.TableauAutresAttachements.ColCount:=6;
                FSAttachements.TableauAutresAttachements.Cols[1].Text:='Type Projet';
                FSAttachements.TableauAutresAttachements.Cols[2].Text:='N°Marché';
                FSAttachements.TableauAutresAttachements.Cols[3].Text:='N°Attachement ';
                FSAttachements.TableauAutresAttachements.Cols[4].Text:='Date';
                FSAttachements.TableauAutresAttachements.Cols[5].Text:='Désignation';
                FSAttachements.TableauAutresAttachements.RowCount:=2;
                FSAttachements.TableauAutresAttachements.Rows[1].Text:='';

                ChLAttachement:=FSAttachements.OuvrirFichier.FileName;
                assignfile(FLAttachement,ChLAttachement);
                if FileExists(ChLAttachement)then
                Reset(FLAttachement)
                else Rewrite(FLAttachement);
                Seek(FLAttachement,0);
                i:=0;
                RowSelect:='';
                while not eof(FLAttachement)do
                begin
                     Read(FLAttachement,RLAttachement);

                     if(NumMarche<>'')then
                     begin
                          if(RLAttachement.NSMarche=strtointeger(NumMarche))
                          then OKAttachement:=true
                          else OKAttachement:=false;
                     end
                     else OKAttachement:=false;

                     if(OKAttachement=true)then
                     begin
                          i:=i+1;
                          FSAttachements.TableauAutresAttachements.Rows[i].Text:=inttostr(i);
                          FSAttachements.TableauAutresAttachements.Cells[1,i]:=RLAttachement.TypeProjet;
                          FSAttachements.TableauAutresAttachements.Cells[2,i]:=inttostr(RLAttachement.NSMarche);
                          FSAttachements.TableauAutresAttachements.Cells[3,i]:=inttostr(RLAttachement.NAttachement);
                          FSAttachements.TableauAutresAttachements.Cells[4,i]:=RLAttachement.Date;
                          FSAttachements.TableauAutresAttachements.Cells[5,i]:=RLAttachement.DesignationAttachement;

                          if(RowSelect='')and(NAttachement<>'')then
                          begin
                               if(RLAttachement.NAttachement=strtointeger(NAttachement))then RowSelect:=inttostr(i);
                          end;
                     end;
                end;

                if(i>0)then
                begin
                     FSAttachements.TableauAutresAttachements.RowCount:=i+1;
                end
                else
                begin
                     FSAttachements.TableauAutresAttachements.RowCount:=2;
                     FSAttachements.TableauAutresAttachements.Rows[1].Text:='';
                end;

                NotRow:='';
                NotCol:='1;2';
                for i:=1 to FSAttachements.TableauAutresAttachements.ColCount-1 do if(existenumintexte(inttostr(i),NotCol))then FSAttachements.TableauAutresAttachements.ColWidths[i]:=0;
                AjusterColWidth(FSAttachements.TableauAutresAttachements,NotRow,NotCol);

                if(RowSelect<>'')then
                begin
                     if(strtointeger(RowSelect)>0)and(strtointeger(RowSelect)<=FSAttachements.TableauAutresAttachements.RowCount-1)
                     then FSAttachements.TableauAutresAttachements.Row:=strtointeger(RowSelect)
                     else FSAttachements.TableauAutresAttachements.Row:=FSAttachements.TableauAutresAttachements.RowCount-1;
                end
                else FSAttachements.TableauAutresAttachements.Row:=FSAttachements.TableauAutresAttachements.RowCount-1;
                FSAttachements.TableauAutresAttachements.SetFocus;
          end
          else
          begin
               showmessage('Erreur de fichier !');
          end;
     end;
end;

procedure TFSAttachements.TableauAutresAttachementsKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(FSAttachements.TableauAutresAttachements.Cells[3,FSAttachements.TableauAutresAttachements.Row]=FSAttachements.EditNNewAttachement.Text)then
          begin
               FSAttachements.EditDateAttachement.Date:=strtodate(FSAttachements.TableauAutresAttachements.Cells[4,FSAttachements.TableauAutresAttachements.Row]);
               FSAttachements.EditDesignationAttachement.Text:=FSAttachements.TableauAutresAttachements.Cells[5,FSAttachements.TableauAutresAttachements.Row];
               FSAttachements.TableauAutresAttachements.Visible:=false;
               FSAttachements.BitOptionAttachement.SetFocus;
          end
          else
          begin
               showmessage('Le numéro de l''attachement n''est pas correcte !');
          end;
     end;
end;

procedure TFSAttachements.TableauAutresAttachementsExit(Sender: TObject);
begin
     FSAttachements.TableauAutresAttachements.Visible:=false;
end;

procedure TFSAttachements.EditDesignationAttachementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSAttachements.BitOptionAttachement.SetFocus;
     end;
end;

end.
