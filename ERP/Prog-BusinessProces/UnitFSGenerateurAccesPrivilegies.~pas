unit UnitFSGenerateurAccesPrivilegies;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, Grids, ComCtrls, Buttons;

type
  TFSGenerateurAccesPrivilegies = class(TForm)
    PageControl1: TPageControl;
    PageUtilisateurs: TTabSheet;
    PagePostes: TTabSheet;
    PageAccesPrivilegies: TTabSheet;
    TableauUtilisateur: TStringGrid;
    TableauPosteMenu: TStringGrid;
    DefinitionPosteMenu: TMemo;
    Label1: TLabel;
    TableauAccesPrivilegies: TStringGrid;
    PageControl2: TPageControl;
    PageAccesUtilisateurs: TTabSheet;
    TableauUtilisateurAcces: TStringGrid;
    PageAccesPostes: TTabSheet;
    AfficheConsultation: TPanel;
    RBConsultation: TCheckBox;
    EditDateDebutConsultation: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    EditDateFinConsultation: TMaskEdit;
    Bevel1: TBevel;
    AfficheModifier: TPanel;
    Bevel2: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    RBModifier: TCheckBox;
    EditDateDebutModifier: TMaskEdit;
    EditDateFinModifier: TMaskEdit;
    TableauPosteMenuAcces: TStringGrid;
    Label6: TLabel;
    AffichePosteMenu: TPanel;
    EditDesignationPosteMenu: TEdit;
    EditDefinitionPosteMenu: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    BitOperationPosteMenu: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel4: TBevel;
    EditModifCodePosteMenu: TEdit;
    AfficheUtilisateur: TPanel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    BitOperationUtilisateur: TBitBtn;
    EditCodeUtilisateur: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    EditNomUtilisateur: TEdit;
    Label12: TLabel;
    EditPrenomUtilisateur: TEdit;
    Label13: TLabel;
    EditFonctionUtilisateur: TEdit;
    Label14: TLabel;
    EditCodeAccesUtilisateur: TEdit;
    EditModifCodeUtilisateur: TEdit;
    BitBtn3: TBitBtn;
    AfficheAccesPrivilegies: TPanel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    BitValiderNewAcces: TBitBtn;
    BitBtn4: TBitBtn;
    EditCodeUtilisateurNewAcces: TEdit;
    EditNomPrinomUtilisateurNewAcces: TEdit;
    EditFonctionUtilisateurNewAcces: TEdit;
    Panel1: TPanel;
    Bevel9: TBevel;
    LabelDateDebutConsultationNewAcces: TLabel;
    LabelDateFinConsultationNewAcces: TLabel;
    RBConsultationNewAcces: TCheckBox;
    EditDateDebutConsultationNewAcces: TMaskEdit;
    EditDateFinConsultationNewAcces: TMaskEdit;
    Panel2: TPanel;
    Bevel10: TBevel;
    LabelDateDebutAjouterNewAcces: TLabel;
    LabelDateFinAjouterNewAcces: TLabel;
    RBAjouterNewAcces: TCheckBox;
    EditDateDebutAjouterNewAcces: TMaskEdit;
    EditDateFinAjouterNewAcces: TMaskEdit;
    Label19: TLabel;
    Label20: TLabel;
    EditCodePosteMenuNewAcces: TEdit;
    EditDesignationPosteMenuNewAcces: TEdit;
    EditDefinitionPosteMenuNewAcces: TEdit;
    Bevel11: TBevel;
    AfficheListePosteMenuNewAcces: TPanel;
    TableauPosteMenuNewAcces: TStringGrid;
    BitBtn5: TBitBtn;
    DefinitionPosteMenuNewAcces: TMemo;
    EditNumeroAccesNewAcces: TEdit;
    LabelRubrique: TLabel;
    LabelCodeRubrique: TLabel;
    EditCodePosteMenu: TComboBox;
    EditAutorisationCodeMenu: TEdit;
    AfficheAjouter: TPanel;
    Bevel12: TBevel;
    Label15: TLabel;
    Label16: TLabel;
    RBAjouter: TCheckBox;
    EditDateDebutAjouter: TMaskEdit;
    EditDateFinAjouter: TMaskEdit;
    AfficheSupprimer: TPanel;
    Bevel13: TBevel;
    Label17: TLabel;
    Label18: TLabel;
    RBSupprimer: TCheckBox;
    EditDateDebutSupprimer: TMaskEdit;
    EditDateFinSupprimer: TMaskEdit;
    Panel3: TPanel;
    Bevel14: TBevel;
    LabelDateDebutModifierNewAcces: TLabel;
    LabelDateFinModifierNewAcces: TLabel;
    RBModifierNewAcces: TCheckBox;
    EditDateDebutModifierNewAcces: TMaskEdit;
    EditDateFinModifierNewAcces: TMaskEdit;
    Panel5: TPanel;
    Bevel15: TBevel;
    LabelDateDebutSupprimerNewAcces: TLabel;
    LabelDateFinSupprimerNewAcces: TLabel;
    RBSupprimerNewAcces: TCheckBox;
    EditDateDebutSupprimerNewAcces: TMaskEdit;
    EditDateFinSupprimerNewAcces: TMaskEdit;
    Panel4: TPanel;
    Bevel16: TBevel;
    LabelDateDebutImprimerNewAcces: TLabel;
    LabelDateFinImprimerNewAcces: TLabel;
    RBImprimerNewAcces: TCheckBox;
    EditDateDebutImprimerNewAcces: TMaskEdit;
    EditDateFinImprimerNewAcces: TMaskEdit;
    Panel6: TPanel;
    Bevel17: TBevel;
    LabelDateDebutImprimer: TLabel;
    LabelDateFinImprimer: TLabel;
    RBImprimer: TCheckBox;
    EditDateDebutImprimer: TMaskEdit;
    EditDateFinImprimer: TMaskEdit;
    Bevel18: TBevel;
    AfficheListePosteMenu: TPanel;
    EditGenerateurAcces: TEdit;
    AfficheGenerateurAcces: TPanel;
    AfficheGenerateurAccesUnique: TPanel;
    AfficheGenerateurAccesSuprimer: TPanel;
    RadioGroup1: TRadioGroup;
    RBCodeNumerique: TRadioButton;
    RBCodeBarre: TRadioButton;
    AfficheCodeBarre: TPanel;
    ImageCodeBarre: TImage;
    TimerLancerAfficheTiers: TTimer;
    TimerAfficheTiers: TTimer;
    RBImporterPersonnel: TCheckBox;
    RBMotCle: TCheckBox;
    BitBtn1: TBitBtn;
    EditModifCodeAccesUtilisateur: TEdit;
    AfficheTableauTiers: TPanel;
    TableauTiers: TStringGrid;
    Label21: TLabel;
    EditTiersTypeProces: TComboBox;
    EditTiersFichierConserne: TComboBox;
    TitreEditTiersFichierConserne: TLabel;
    Bevel19: TBevel;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableauPosteMenuKeyPress(Sender: TObject; var Key: Char);
    procedure BitOperationPosteMenuClick(Sender: TObject);
    procedure TableauPosteMenuClick(Sender: TObject);
    procedure PagePostesShow(Sender: TObject);
    procedure EditDesignationPosteMenuKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure PageAccesPostesShow(Sender: TObject);
    procedure BitOperationUtilisateurClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EditCodeAccesUtilisateurKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditFonctionUtilisateurKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditPrenomUtilisateurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomUtilisateurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodeUtilisateurKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauUtilisateurKeyPress(Sender: TObject; var Key: Char);
    procedure PageUtilisateursShow(Sender: TObject);
    procedure TableauUtilisateurClick(Sender: TObject);
    procedure PageAccesUtilisateursShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitValiderNewAccesClick(Sender: TObject);
    procedure TableauUtilisateurAccesClick(Sender: TObject);
    procedure TableauPosteMenuAccesClick(Sender: TObject);
    procedure TableauAccesPrivilegiesClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure EditCodePosteMenuNewAccesEnter(Sender: TObject);
    procedure TableauPosteMenuNewAccesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauPosteMenuNewAccesClick(Sender: TObject);
    procedure RBConsultationNewAccesClick(Sender: TObject);
    procedure RBAjouterNewAccesClick(Sender: TObject);
    procedure TableauUtilisateurAccesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDateDebutConsultationNewAccesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDateFinConsultationNewAccesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDateDebutAjouterNewAccesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDateFinAjouterNewAccesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauAccesPrivilegiesKeyPress(Sender: TObject;
      var Key: Char);
    procedure TableauAccesPrivilegiesDblClick(Sender: TObject);
    procedure EditCodePosteMenuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageAccesPrivilegiesShow(Sender: TObject);
    procedure RBModifierNewAccesClick(Sender: TObject);
    procedure RBSupprimerNewAccesClick(Sender: TObject);
    procedure TableauAccesPrivilegiesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDateDebutModifierNewAccesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDateFinModifierNewAccesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDateDebutSupprimerNewAccesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDateFinSupprimerNewAccesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure RBImprimerNewAccesClick(Sender: TObject);
    procedure EditDateFinImprimerNewAccesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDateDebutImprimerNewAccesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure AfficheListePosteMenuClick(Sender: TObject);
    procedure AfficheGenerateurAccesClick(Sender: TObject);
    procedure AfficheGenerateurAccesUniqueClick(Sender: TObject);
    procedure AfficheGenerateurAccesSuprimerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RBCodeBarreClick(Sender: TObject);
    procedure RBCodeNumeriqueClick(Sender: TObject);
    procedure ImageCodeBarreDblClick(Sender: TObject);
    procedure TimerLancerAfficheTiersTimer(Sender: TObject);
    procedure TimerAfficheTiersTimer(Sender: TObject);
    procedure EditNomUtilisateurKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RBImporterPersonnelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditTiersTypeProcesSelect(Sender: TObject);
    procedure EditTiersTypeProcesChange(Sender: TObject);
    procedure EditTiersFichierConserneChange(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSGenerateurAccesPrivilegies: TFSGenerateurAccesPrivilegies;

Procedure ProcAffichePosteMenu;
Procedure ProcAffichePosteMenuAcces;
Procedure ProcAfficheAccesPrivilegie(Rubrique,CodeRubrique:string);
Procedure InitialisationAccesPrivilegies;
Procedure CleanCarteFonction(Index:integer; Visible:boolean);
Procedure ProcAfficheUtilisateur(TableauUtilisateur:TStringGrid);

implementation

Uses UnitInitialisation, UnitFSEtiquettesCodeBarre, UnitFSGenerateurBase,
     UnitPrintCarteProfessionnel, UnitFSMenuPrincipal, UnitFSTiers;

var

   RParc:RInstalle;
   FParc:FInstalle;
   ParcInstalle:string100;

   TUtilisateur:TUtilisateurs;
   RUtilisateur:RUtilisateurs;
   FUtilisateur:FUtilisateurs;
   ChUtilisateur:string250;

   TPosteMenu:TPosteMenus;
   RPosteMenu:RPosteMenus;
   FPosteMenu:FPosteMenus;
   ChPosteMenu:string250;

   TAccesPrivilegie:TAccesPrivilegies;
   RAccesPrivilegie:RAccesPrivilegies;
   FAccesPrivilegie:FAccesPrivilegies;
   ChAccesPrivilegie:string250;

   TimeKeyUp:integer;

{$R *.dfm}

Procedure InitialisationAccesPrivilegies;
begin
FSGenerateurAccesPrivilegies.RBConsultation.Checked:=false;
FSGenerateurAccesPrivilegies.EditDateDebutConsultation.Text:='';
FSGenerateurAccesPrivilegies.EditDateFinConsultation.Text:='';

FSGenerateurAccesPrivilegies.RBAjouter.Checked:=false;
FSGenerateurAccesPrivilegies.EditDateDebutAjouter.Text:='';
FSGenerateurAccesPrivilegies.EditDateFinAjouter.Text:='';

FSGenerateurAccesPrivilegies.RBModifier.Checked:=false;
FSGenerateurAccesPrivilegies.EditDateDebutModifier.Text:='';
FSGenerateurAccesPrivilegies.EditDateFinModifier.Text:='';

FSGenerateurAccesPrivilegies.RBSupprimer.Checked:=false;
FSGenerateurAccesPrivilegies.EditDateDebutSupprimer.Text:='';
FSGenerateurAccesPrivilegies.EditDateFinSupprimer.Text:='';

FSGenerateurAccesPrivilegies.RBImprimer.Checked:=false;
FSGenerateurAccesPrivilegies.EditDateDebutImprimer.Text:='';
FSGenerateurAccesPrivilegies.EditDateFinImprimer.Text:='';
end;

Procedure ProcAfficheAccesPrivilegie(Rubrique,CodeRubrique:string);
var  i,C:integer;  OKRubrique:boolean; DesigAffiche,NotCol:string;
begin
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.RowCount:=2;
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Rows[1].Text:='';
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[0].Text:=' N°';
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[1].Text:='ModeConsultation';
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[2].Text:='DateDebutConsultation';
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[3].Text:='DateFinConsultation';

FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[4].Text:='ModeAjouter';
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[5].Text:='DateDebutAjouter';
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[6].Text:='DateFinAjouter';

FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[7].Text:='ModeModifier';
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[8].Text:='DateDebutModifier';
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[9].Text:='DateFinModifier';

FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[10].Text:='ModeSupprimer';
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[11].Text:='DateDebutSupprimer';
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[12].Text:='DateFinSupprimer';

FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[13].Text:='ModeImprimer';
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[14].Text:='DateDebutImprimer';
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[15].Text:='DateFinImprimer';

if(Rubrique='Utilisateur')then FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[16].Text:='                             Liste des Postes Menu';
if(Rubrique='PosteMenu')then FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[16].Text:='                                  Liste Utilisateurs';

FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[17].Text:='CodeUtilisateur';
FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cols[18].Text:='CodePoste';

OpenFParc(RParc);
ChAccesPrivilegie:=RParc.Parcours+'\'+Exercice+'FAccesPrivilegie';
assignfile(FAccesPrivilegie,ChAccesPrivilegie);
if FileExists(ChAccesPrivilegie)then
Reset(FAccesPrivilegie)
else Rewrite(FAccesPrivilegie);
Seek(FAccesPrivilegie,0);
i:=0;
while not eof(FAccesPrivilegie)do
begin
     Read(FAccesPrivilegie,RAccesPrivilegie);
     OKRubrique:=false;
     DesigAffiche:='';

     if(Rubrique='')then
     begin
          OKRubrique:=true;

          RUtilisateur:=ChercherUtilisateur(RAccesPrivilegie.CodeUtilisateur);
          DesigAffiche:=RUtilisateur.Nom+' '+RUtilisateur.Prenom;
     end;

     if(Rubrique='Utilisateur')then
     begin
          if(RAccesPrivilegie.CodeUtilisateur=CodeRubrique)
          then OKRubrique:=true
          else OKRubrique:=false;

          RPosteMenu:=ChercherPosteMenu(RAccesPrivilegie.CodePosteMenu);
          if(RPosteMenu.DesignationPosteMenu<>'')
          then DesigAffiche:=RPosteMenu.DesignationPosteMenu
          else DesigAffiche:='???   '+RAccesPrivilegie.CodePosteMenu;
     end;

     if(Rubrique='PosteMenu')then
     begin
          if(RAccesPrivilegie.CodePosteMenu=CodeRubrique)
          then OKRubrique:=true
          else OKRubrique:=false;

          RUtilisateur:=ChercherUtilisateur(RAccesPrivilegie.CodeUtilisateur);
          DesigAffiche:=RUtilisateur.Nom+' '+RUtilisateur.Prenom;
     end;

     if(OKRubrique=true)then
     begin
          i:=i+1;
          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Rows[i].Text:=inttostr(RAccesPrivilegie.NumeroAcces);

          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[1,i]:=booltostr(RAccesPrivilegie.ModeConsultation);
          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[2,i]:=RAccesPrivilegie.DateDebutConsultation;
          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[3,i]:=RAccesPrivilegie.DateFinConsultation;

          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[4,i]:=booltostr(RAccesPrivilegie.ModeAjouter);
          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[5,i]:=RAccesPrivilegie.DateDebutAjouter;
          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[6,i]:=RAccesPrivilegie.DateFinAjouter;

          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[7,i]:=booltostr(RAccesPrivilegie.ModeModifier);
          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[8,i]:=RAccesPrivilegie.DateDebutModifier;
          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[9,i]:=RAccesPrivilegie.DateFinModifier;

          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[10,i]:=booltostr(RAccesPrivilegie.ModeSupprimer);
          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[11,i]:=RAccesPrivilegie.DateDebutSupprimer;
          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[12,i]:=RAccesPrivilegie.DateFinSupprimer;

          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[13,i]:=booltostr(RAccesPrivilegie.ModeImprimer);
          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[14,i]:=RAccesPrivilegie.DateDebutImprimer;
          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[15,i]:=RAccesPrivilegie.DateFinImprimer;

          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[16,i]:=DesigAffiche;
          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[17,i]:=RAccesPrivilegie.CodeUtilisateur;
          FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[18,i]:=RAccesPrivilegie.CodePosteMenu;

     end;
end;

if(i>0)then FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.RowCount:=i+1
       else FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.RowCount:=2;

NotCol:='1-15;17;18';
for C:=1 to FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.ColCount-1 do if existenumintexte(inttostr(C),NotCol)then FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.ColWidths[C]:=0;

AjusterColWidth(FSGenerateurAccesPrivilegies.TableauAccesPrivilegies,'',NotCol);

TrierTableauARowSpecial(FSGenerateurAccesPrivilegies.TableauAccesPrivilegies,1,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.RowCount-1,0,'16','','+');
end;

Procedure ProcAfficheUtilisateur(TableauUtilisateur:TStringGrid);
var  i:integer;
begin
TableauUtilisateur.RowCount:=2;
TableauUtilisateur.Rows[1].Text:='';

TableauUtilisateur.ColCount:=6;
TableauUtilisateur.Cols[0].Text:=' N°';
TableauUtilisateur.Cols[1].Text:='CodeUtilisateur';
TableauUtilisateur.Cols[2].Text:='CodeAcces';
TableauUtilisateur.Cols[3].Text:='Nom';
TableauUtilisateur.Cols[4].Text:='Prénom';
TableauUtilisateur.Cols[5].Text:='Fonction';

TypeProces:='Business';   FichierConcerne:='FUtilisateur';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
end;
ChUtilisateur:=Adresse;
assignfile(FUtilisateur,ChUtilisateur);
if FileExists(ChUtilisateur)then
Reset(FUtilisateur)
else Rewrite(FUtilisateur);
Seek(FUtilisateur,0);
i:=0;
while not eof(FUtilisateur)do
begin
     Read(FUtilisateur,RUtilisateur);
     i:=i+1;
     TableauUtilisateur.Rows[i].Text:=inttostr(i);
     TableauUtilisateur.Cells[1,i]:=RUtilisateur.CodeUtilisateur;
     TableauUtilisateur.Cells[2,i]:=RUtilisateur.CodeAcces;
     TableauUtilisateur.Cells[3,i]:=RUtilisateur.Nom;
     TableauUtilisateur.Cells[4,i]:=RUtilisateur.Prenom;
     TableauUtilisateur.Cells[5,i]:=RUtilisateur.Fonction;
end;
if(i>0)then TableauUtilisateur.RowCount:=i+1
       else TableauUtilisateur.RowCount:=2;
end;

Procedure ProcAfficheUtilisateurAcces;
var  i:integer;
begin
FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.RowCount:=2;
FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Rows[1].Text:='';
FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cols[0].Text:=' N°';
FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cols[1].Text:='CodeUtilisateur';
FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cols[2].Text:='CodeAcces';
FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cols[3].Text:='Nom et Prénom';

TypeProces:='Business';   FichierConcerne:='FUtilisateur';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
end;
ChUtilisateur:=Adresse;
assignfile(FUtilisateur,ChUtilisateur);
if FileExists(ChUtilisateur)then
Reset(FUtilisateur)
else Rewrite(FUtilisateur);
Seek(FUtilisateur,0);
i:=0;
while not eof(FUtilisateur)do
begin
     Read(FUtilisateur,RUtilisateur);
     i:=i+1;
     FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Rows[i].Text:=inttostr(i);
     FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cells[1,i]:=RUtilisateur.CodeUtilisateur;
     FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cells[2,i]:=RUtilisateur.CodeAcces;
     FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cells[3,i]:=RUtilisateur.Nom+' '+RUtilisateur.Prenom;
end;
if(i>0)then FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.RowCount:=i+1
       else FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.RowCount:=2;
end;

Procedure ProcAffichePosteMenu;
var  i,C:integer;   NotCol:string;
begin
FSGenerateurAccesPrivilegies.TableauPosteMenu.RowCount:=2;
FSGenerateurAccesPrivilegies.TableauPosteMenu.Rows[1].Text:='';
FSGenerateurAccesPrivilegies.TableauPosteMenu.Cols[0].Text:=' N°';
FSGenerateurAccesPrivilegies.TableauPosteMenu.Cols[1].Text:='Code';
FSGenerateurAccesPrivilegies.TableauPosteMenu.Cols[2].Text:='Definition';
FSGenerateurAccesPrivilegies.TableauPosteMenu.Cols[3].Text:='     Désignation du Poste Menu';

OpenFParc(RParc);
ChPosteMenu:=RParc.Parcours+'\'+Exercice+'FPosteMenu';
assignfile(FPosteMenu,ChPosteMenu);
if FileExists(ChPosteMenu)then
Reset(FPosteMenu)
else Rewrite(FPosteMenu);
Seek(FPosteMenu,0);
i:=0;
while not eof(FPosteMenu)do
begin
     Read(FPosteMenu,RPosteMenu);
     i:=i+1;
     FSGenerateurAccesPrivilegies.TableauPosteMenu.Rows[i].Text:=inttostr(i);
     FSGenerateurAccesPrivilegies.TableauPosteMenu.Cells[1,i]:=RPosteMenu.CodePosteMenu;
     FSGenerateurAccesPrivilegies.TableauPosteMenu.Cells[2,i]:=RPosteMenu.DefinitionPosteMenu;
     FSGenerateurAccesPrivilegies.TableauPosteMenu.Cells[3,i]:=RPosteMenu.DesignationPosteMenu;
end;
if(i>0)then FSGenerateurAccesPrivilegies.TableauPosteMenu.RowCount:=i+1
       else FSGenerateurAccesPrivilegies.TableauPosteMenu.RowCount:=2;

NotCol:='1;2';
for C:=1 to FSGenerateurAccesPrivilegies.TableauPosteMenu.ColCount-1 do if existenumintexte(inttostr(C),NotCol)then FSGenerateurAccesPrivilegies.TableauPosteMenu.ColWidths[C]:=0;

AjusterColWidth(FSGenerateurAccesPrivilegies.TableauPosteMenu,'',NotCol);

TrierTableauARowSpecial(FSGenerateurAccesPrivilegies.TableauPosteMenu,1,FSGenerateurAccesPrivilegies.TableauPosteMenu.RowCount-1,0,'3','','+');
end;

Procedure ProcAffichePosteMenuAcces;
var  i:integer;
begin
FSGenerateurAccesPrivilegies.TableauPosteMenuAcces.RowCount:=2;
FSGenerateurAccesPrivilegies.TableauPosteMenuAcces.Rows[1].Text:='';
FSGenerateurAccesPrivilegies.TableauPosteMenuAcces.Cols[0].Text:=' N°';
FSGenerateurAccesPrivilegies.TableauPosteMenuAcces.Cols[1].Text:='Code';
FSGenerateurAccesPrivilegies.TableauPosteMenuAcces.Cols[2].Text:='Definition';
FSGenerateurAccesPrivilegies.TableauPosteMenuAcces.Cols[3].Text:='     Désignation du Poste Menu';

OpenFParc(RParc);
ChPosteMenu:=RParc.Parcours+'\'+Exercice+'FPosteMenu';
assignfile(FPosteMenu,ChPosteMenu);
if FileExists(ChPosteMenu)then
Reset(FPosteMenu)
else Rewrite(FPosteMenu);
Seek(FPosteMenu,0);
i:=0;
while not eof(FPosteMenu)do
begin
     Read(FPosteMenu,RPosteMenu);
     i:=i+1;
     FSGenerateurAccesPrivilegies.TableauPosteMenuAcces.Rows[i].Text:=inttostr(i);
     FSGenerateurAccesPrivilegies.TableauPosteMenuAcces.Cells[1,i]:=RPosteMenu.CodePosteMenu;
     FSGenerateurAccesPrivilegies.TableauPosteMenuAcces.Cells[2,i]:=RPosteMenu.DefinitionPosteMenu;
     FSGenerateurAccesPrivilegies.TableauPosteMenuAcces.Cells[3,i]:=RPosteMenu.DesignationPosteMenu;
end;
if(i>0)then FSGenerateurAccesPrivilegies.TableauPosteMenuAcces.RowCount:=i+1
       else FSGenerateurAccesPrivilegies.TableauPosteMenuAcces.RowCount:=2;
end;

procedure TFSGenerateurAccesPrivilegies.BitBtn2Click(Sender: TObject);
begin
FSGenerateurAccesPrivilegies.AffichePosteMenu.Visible:=false;
end;

procedure TFSGenerateurAccesPrivilegies.TableauPosteMenuKeyPress(
  Sender: TObject; var Key: Char);
begin

if(key in ['n','N'])then
begin
     FSGenerateurAccesPrivilegies.BitOperationPosteMenu.Kind:=bkAll;
     FSGenerateurAccesPrivilegies.BitOperationPosteMenu.Caption:='Valider';

     FSGenerateurAccesPrivilegies.AffichePosteMenu.Visible:=true;
     FSGenerateurAccesPrivilegies.EditModifCodePosteMenu.Text:='';
     FSGenerateurAccesPrivilegies.EditCodePosteMenu.Text:='';
     FSGenerateurAccesPrivilegies.EditDesignationPosteMenu.Text:='';
     FSGenerateurAccesPrivilegies.EditDefinitionPosteMenu.Text:='';

     FSGenerateurAccesPrivilegies.EditCodePosteMenu.SetFocus;
end;

if(key in ['m','M'])then
begin
     FSGenerateurAccesPrivilegies.BitOperationPosteMenu.Kind:=bkRetry;
     FSGenerateurAccesPrivilegies.BitOperationPosteMenu.Caption:='Modifier';

     FSGenerateurAccesPrivilegies.AffichePosteMenu.Visible:=true;
     FSGenerateurAccesPrivilegies.EditModifCodePosteMenu.Text:=FSGenerateurAccesPrivilegies.TableauPosteMenu.Cells[1,FSGenerateurAccesPrivilegies.TableauPosteMenu.Row];
     FSGenerateurAccesPrivilegies.EditCodePosteMenu.Text:=FSGenerateurAccesPrivilegies.TableauPosteMenu.Cells[1,FSGenerateurAccesPrivilegies.TableauPosteMenu.Row];
     FSGenerateurAccesPrivilegies.EditDesignationPosteMenu.Text:=FSGenerateurAccesPrivilegies.TableauPosteMenu.Cells[3,FSGenerateurAccesPrivilegies.TableauPosteMenu.Row];
     FSGenerateurAccesPrivilegies.EditDefinitionPosteMenu.Text:=FSGenerateurAccesPrivilegies.TableauPosteMenu.Cells[2,FSGenerateurAccesPrivilegies.TableauPosteMenu.Row];

     FSGenerateurAccesPrivilegies.EditCodePosteMenu.SetFocus;
end;

if(key in ['s','S'])then
begin
     FSGenerateurAccesPrivilegies.BitOperationPosteMenu.Kind:=bkCancel;
     FSGenerateurAccesPrivilegies.BitOperationPosteMenu.Caption:='Supprimer';

     FSGenerateurAccesPrivilegies.AffichePosteMenu.Visible:=true;
     FSGenerateurAccesPrivilegies.EditModifCodePosteMenu.Text:=FSGenerateurAccesPrivilegies.TableauPosteMenu.Cells[1,FSGenerateurAccesPrivilegies.TableauPosteMenu.Row];
     FSGenerateurAccesPrivilegies.EditCodePosteMenu.Text:=FSGenerateurAccesPrivilegies.TableauPosteMenu.Cells[1,FSGenerateurAccesPrivilegies.TableauPosteMenu.Row];
     FSGenerateurAccesPrivilegies.EditDesignationPosteMenu.Text:=FSGenerateurAccesPrivilegies.TableauPosteMenu.Cells[3,FSGenerateurAccesPrivilegies.TableauPosteMenu.Row];
     FSGenerateurAccesPrivilegies.EditDefinitionPosteMenu.Text:=FSGenerateurAccesPrivilegies.TableauPosteMenu.Cells[2,FSGenerateurAccesPrivilegies.TableauPosteMenu.Row];

     FSGenerateurAccesPrivilegies.BitOperationPosteMenu.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.BitOperationPosteMenuClick(Sender: TObject);
var i:integer; OK:boolean;
begin

if(FSGenerateurAccesPrivilegies.BitOperationPosteMenu.Caption='Valider')
or(FSGenerateurAccesPrivilegies.BitOperationPosteMenu.Caption='Modifier')
then
begin
OpenFParc(RParc);
ChPosteMenu:=RParc.Parcours+'\'+Exercice+'FPosteMenu';
assignfile(FPosteMenu,ChPosteMenu);
if FileExists(ChPosteMenu)then
Reset(FPosteMenu)
else Rewrite(FPosteMenu);
Seek(FPosteMenu,0);
OK:=false;
i:=0;
while(not eof(FPosteMenu)and(OK=false))do
begin
     Read(FPosteMenu,RPosteMenu);
     if(RPosteMenu.CodePosteMenu=FSGenerateurAccesPrivilegies.EditModifCodePosteMenu.Text)then
     begin
          OK:=true;
          i:=i-1;
     end;
     i:=i+1;
end;

Seek(FPosteMenu,i);
if(OK=false)then Truncate(FPosteMenu);
RPosteMenu.CodePosteMenu:=FSGenerateurAccesPrivilegies.EditCodePosteMenu.Text;
RPosteMenu.DesignationPosteMenu:=FSGenerateurAccesPrivilegies.EditDesignationPosteMenu.Text;
RPosteMenu.DefinitionPosteMenu:=FSGenerateurAccesPrivilegies.EditDefinitionPosteMenu.Text;
Write(FPosteMenu,RPosteMenu);
CloseFile(FPosteMenu);
end;

if(FSGenerateurAccesPrivilegies.BitOperationPosteMenu.Caption='Supprimer')then
begin
     DeleteFPosteMenu(FSGenerateurAccesPrivilegies.TableauPosteMenu.Cells[1,FSGenerateurAccesPrivilegies.TableauPosteMenu.Row],OK);
end;

ProcAffichePosteMenu;

FSGenerateurAccesPrivilegies.AffichePosteMenu.Visible:=false;
end;

procedure TFSGenerateurAccesPrivilegies.TableauPosteMenuClick(
  Sender: TObject);
begin
FSGenerateurAccesPrivilegies.DefinitionPosteMenu.Text:=
FSGenerateurAccesPrivilegies.TableauPosteMenu.Cells[2,FSGenerateurAccesPrivilegies.TableauPosteMenu.Row];
end;

procedure TFSGenerateurAccesPrivilegies.PagePostesShow(Sender: TObject);
begin
ProcAffichePosteMenu;
end;

procedure TFSGenerateurAccesPrivilegies.EditDesignationPosteMenuKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.EditDefinitionPosteMenu.SetFocus;
end;
end;

procedure TFSGenerateurAccesPrivilegies.PageAccesPostesShow(
  Sender: TObject);
begin
ProcAffichePosteMenuAcces;
FSGenerateurAccesPrivilegies.AfficheAccesPrivilegies.Visible:=false;
end;

procedure TFSGenerateurAccesPrivilegies.BitOperationUtilisateurClick(
  Sender: TObject);
var i:integer; OK:boolean;
begin

if(FSGenerateurAccesPrivilegies.BitOperationUtilisateur.Caption='Valider')
or(FSGenerateurAccesPrivilegies.BitOperationUtilisateur.Caption='Modifier')
then
begin
TypeProces:='Business';   FichierConcerne:='FUtilisateur';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
end;
ChUtilisateur:=Adresse;
assignfile(FUtilisateur,ChUtilisateur);
if FileExists(ChUtilisateur)then
Reset(FUtilisateur)
else Rewrite(FUtilisateur);
Seek(FUtilisateur,0);
OK:=false;
i:=0;
while(not eof(FUtilisateur)and(OK=false))do
begin
     Read(FUtilisateur,RUtilisateur);
     if(RUtilisateur.CodeUtilisateur=FSGenerateurAccesPrivilegies.EditModifCodeUtilisateur.Text)then
     begin
          OK:=true;
          i:=i-1;
     end;
     i:=i+1;
end;

Seek(FUtilisateur,i);
if(OK=false)then Truncate(FUtilisateur);
RUtilisateur.CodeUtilisateur:=FSGenerateurAccesPrivilegies.EditCodeUtilisateur.Text;
RUtilisateur.CodeAcces:=FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text;
RUtilisateur.Nom:=FSGenerateurAccesPrivilegies.EditNomUtilisateur.Text;
RUtilisateur.Prenom:=FSGenerateurAccesPrivilegies.EditPrenomUtilisateur.Text;
RUtilisateur.Fonction:=FSGenerateurAccesPrivilegies.EditFonctionUtilisateur.Text;
Write(FUtilisateur,RUtilisateur);
CloseFile(FUtilisateur);
end;

if(FSGenerateurAccesPrivilegies.BitOperationUtilisateur.Caption='Supprimer')then
begin
     DeleteFUtilisateur(FSGenerateurAccesPrivilegies.TableauUtilisateur.Cells[1,FSGenerateurAccesPrivilegies.TableauUtilisateur.Row],FSGenerateurAccesPrivilegies.TableauUtilisateur.Cells[2,FSGenerateurAccesPrivilegies.TableauUtilisateur.Row],OK);
end;

ProcAfficheUtilisateur(FSGenerateurAccesPrivilegies.TableauUtilisateur);

FSGenerateurAccesPrivilegies.TableauUtilisateur.SetFocus;
FSGenerateurAccesPrivilegies.AfficheUtilisateur.Visible:=false;
end;

procedure TFSGenerateurAccesPrivilegies.BitBtn3Click(Sender: TObject);
begin
FSGenerateurAccesPrivilegies.TableauUtilisateur.SetFocus;
FSGenerateurAccesPrivilegies.AfficheUtilisateur.Visible:=false;
FSGenerateurAccesPrivilegies.AfficheTableauTiers.Visible:=false;
end;

procedure TFSGenerateurAccesPrivilegies.EditCodeAccesUtilisateurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.BitOperationUtilisateur.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.EditFonctionUtilisateurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.EditPrenomUtilisateurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.EditFonctionUtilisateur.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.EditNomUtilisateurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSGenerateurAccesPrivilegies.AfficheTableauTiers.Visible=true)
     then FSGenerateurAccesPrivilegies.TableauTiers.SetFocus
     else FSGenerateurAccesPrivilegies.EditPrenomUtilisateur.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.EditCodeUtilisateurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSGenerateurAccesPrivilegies.AfficheTableauTiers.Visible=true)
     then FSGenerateurAccesPrivilegies.TableauTiers.SetFocus
     else FSGenerateurAccesPrivilegies.EditNomUtilisateur.SetFocus;
end;

if key in[VK_ESCAPE]then
begin
     FSGenerateurAccesPrivilegies.AfficheTableauTiers.Visible:=false;
     FSGenerateurAccesPrivilegies.EditNomUtilisateur.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.TableauUtilisateurKeyPress(
  Sender: TObject; var Key: Char);
var  CodeBarre:string;
begin
     ListeTypeFichierTiersBox(FSGenerateurAccesPrivilegies.EditTiersTypeProces.Text,'','',FSGenerateurAccesPrivilegies.EditTiersFichierConserne,FSGenerateurAccesPrivilegies.TitreEditTiersFichierConserne);

if(key in ['n','N'])then
begin
     FSGenerateurAccesPrivilegies.BitOperationUtilisateur.Kind:=bkAll;
     FSGenerateurAccesPrivilegies.BitOperationUtilisateur.Caption:='Valider';

     FSGenerateurAccesPrivilegies.AfficheUtilisateur.Visible:=true;
     FSGenerateurAccesPrivilegies.EditModifCodeUtilisateur.Text:='';
     FSGenerateurAccesPrivilegies.EditCodeUtilisateur.Text:='';
     FSGenerateurAccesPrivilegies.EditNomUtilisateur.Text:='';
     FSGenerateurAccesPrivilegies.EditPrenomUtilisateur.Text:='';
     FSGenerateurAccesPrivilegies.EditFonctionUtilisateur.Text:='';
     FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text:='';
     FSGenerateurAccesPrivilegies.EditModifCodeAccesUtilisateur.Text:='';
     FSGenerateurAccesPrivilegies.ImageCodebarre.Picture:=FSMenuPrincipal.PhotoVide.Picture;
     FSGenerateurAccesPrivilegies.RBCodeNumerique.Checked:=true;

     FSGenerateurAccesPrivilegies.EditCodeUtilisateur.SetFocus;
end;

if(key in ['m','M'])then
begin
     FSGenerateurAccesPrivilegies.BitOperationUtilisateur.Kind:=bkRetry;
     FSGenerateurAccesPrivilegies.BitOperationUtilisateur.Caption:='Modifier';

     FSGenerateurAccesPrivilegies.AfficheUtilisateur.Visible:=true;
     FSGenerateurAccesPrivilegies.EditModifCodeUtilisateur.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateur.Cells[1,FSGenerateurAccesPrivilegies.TableauUtilisateur.Row];
     FSGenerateurAccesPrivilegies.EditCodeUtilisateur.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateur.Cells[1,FSGenerateurAccesPrivilegies.TableauUtilisateur.Row];
     FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateur.Cells[2,FSGenerateurAccesPrivilegies.TableauUtilisateur.Row];
     FSGenerateurAccesPrivilegies.EditNomUtilisateur.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateur.Cells[3,FSGenerateurAccesPrivilegies.TableauUtilisateur.Row];
     FSGenerateurAccesPrivilegies.EditPrenomUtilisateur.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateur.Cells[4,FSGenerateurAccesPrivilegies.TableauUtilisateur.Row];
     FSGenerateurAccesPrivilegies.EditFonctionUtilisateur.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateur.Cells[5,FSGenerateurAccesPrivilegies.TableauUtilisateur.Row];

     FSGenerateurAccesPrivilegies.EditCodeUtilisateur.SetFocus;
end;

if(key in ['s','S'])then
begin
     FSGenerateurAccesPrivilegies.BitOperationUtilisateur.Kind:=bkNo;
     FSGenerateurAccesPrivilegies.BitOperationUtilisateur.Caption:='Supprimer';
     FSGenerateurAccesPrivilegies.BitOperationUtilisateur.Cancel:=false;

     FSGenerateurAccesPrivilegies.AfficheUtilisateur.Visible:=true;
     FSGenerateurAccesPrivilegies.EditModifCodeUtilisateur.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateur.Cells[1,FSGenerateurAccesPrivilegies.TableauUtilisateur.Row];
     FSGenerateurAccesPrivilegies.EditCodeUtilisateur.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateur.Cells[1,FSGenerateurAccesPrivilegies.TableauUtilisateur.Row];
     FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateur.Cells[2,FSGenerateurAccesPrivilegies.TableauUtilisateur.Row];
     FSGenerateurAccesPrivilegies.EditNomUtilisateur.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateur.Cells[3,FSGenerateurAccesPrivilegies.TableauUtilisateur.Row];
     FSGenerateurAccesPrivilegies.EditPrenomUtilisateur.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateur.Cells[4,FSGenerateurAccesPrivilegies.TableauUtilisateur.Row];
     FSGenerateurAccesPrivilegies.EditFonctionUtilisateur.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateur.Cells[5,FSGenerateurAccesPrivilegies.TableauUtilisateur.Row];

     FSGenerateurAccesPrivilegies.BitOperationUtilisateur.SetFocus;
end;

if(FSGenerateurAccesPrivilegies.AfficheUtilisateur.Visible=true)then
begin
     FSGenerateurAccesPrivilegies.EditModifCodeAccesUtilisateur.Text:=FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text;

     if(Firstlaters(FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text,1)='§')then
     begin
          FSGenerateurAccesPrivilegies.RBCodeBarre.Checked:=true;

          CodeBarre:=Lastlaters(FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text,longueur(FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text)-1);
          ChargerCodeBarre('',firstlaters(CodeBarre,7),'');
          FSGenerateurAccesPrivilegies.ImageCodebarre.Width:=FSEtiquettesCodeBarre.ImageCodebarre.Width;
          FSGenerateurAccesPrivilegies.ImageCodebarre.Height:=FSEtiquettesCodeBarre.ImageCodebarre.Height;
          FSGenerateurAccesPrivilegies.ImageCodebarre.Picture:=FSEtiquettesCodeBarre.ImageCodebarre.Picture;
     end
     else
     begin
          FSGenerateurAccesPrivilegies.ImageCodebarre.Picture:=FSMenuPrincipal.PhotoVide.Picture;
          FSGenerateurAccesPrivilegies.RBCodeNumerique.Checked:=true;
     end;
end;

end;

procedure TFSGenerateurAccesPrivilegies.PageUtilisateursShow(
  Sender: TObject);
begin
ProcAfficheUtilisateur(FSGenerateurAccesPrivilegies.TableauUtilisateur);
end;

procedure TFSGenerateurAccesPrivilegies.TableauUtilisateurClick(
  Sender: TObject);
begin
FSGenerateurAccesPrivilegies.AfficheUtilisateur.Visible:=false;
FSGenerateurAccesPrivilegies.AfficheTableauTiers.Visible:=false;
end;

procedure TFSGenerateurAccesPrivilegies.PageAccesUtilisateursShow(
  Sender: TObject);
begin
ProcAfficheUtilisateurAcces;
end;

procedure TFSGenerateurAccesPrivilegies.BitBtn4Click(Sender: TObject);
begin

FSGenerateurAccesPrivilegies.AfficheAccesPrivilegies.Visible:=false;
end;

procedure TFSGenerateurAccesPrivilegies.BitValiderNewAccesClick(Sender: TObject);
var OK:boolean;   i,iSelect,NumeroAcces:integer;
begin
InitialisationAccesPrivilegies;

if(FSGenerateurAccesPrivilegies.BitValiderNewAcces.Caption='Valider')
or(FSGenerateurAccesPrivilegies.BitValiderNewAcces.Caption='Modifier')
then
begin
OpenFParc(RParc);
ChAccesPrivilegie:=RParc.Parcours+'\'+Exercice+'FAccesPrivilegie';
assignfile(FAccesPrivilegie,ChAccesPrivilegie);
if FileExists(ChAccesPrivilegie)then
Reset(FAccesPrivilegie)
else Rewrite(FAccesPrivilegie);
Seek(FAccesPrivilegie,0);
OK:=false;
i:=0;
NumeroAcces:=1;
while(not eof(FAccesPrivilegie)and(OK=false))do
begin
     Read(FAccesPrivilegie,RAccesPrivilegie);
     if(NumeroAcces<=RAccesPrivilegie.NumeroAcces)then NumeroAcces:=RAccesPrivilegie.NumeroAcces+1;

     if(inttostr(RAccesPrivilegie.NumeroAcces)=FSGenerateurAccesPrivilegies.EditNumeroAccesNewAcces.Text)then
     begin
          OK:=true;
          NumeroAcces:=RAccesPrivilegie.NumeroAcces;
          iSelect:=i;
     end;
     i:=i+1;
end;

if(OK=true)then i:=iSelect;
Seek(FAccesPrivilegie,i);
if(OK=false)then Truncate(FAccesPrivilegie);
RAccesPrivilegie.NumeroAcces:=NumeroAcces;
RAccesPrivilegie.CodeUtilisateur:=FSGenerateurAccesPrivilegies.EditCodeUtilisateurNewAcces.Text;
RAccesPrivilegie.CodePosteMenu:=FSGenerateurAccesPrivilegies.EditCodePosteMenuNewAcces.Text;

RAccesPrivilegie.ModeConsultation:=FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked;
RAccesPrivilegie.DateDebutConsultation:=FSGenerateurAccesPrivilegies.EditDateDebutConsultationNewAcces.Text;
RAccesPrivilegie.DateFinConsultation:=FSGenerateurAccesPrivilegies.EditDateFinConsultationNewAcces.Text;

RAccesPrivilegie.ModeAjouter:=FSGenerateurAccesPrivilegies.RBAjouterNewAcces.Checked;
RAccesPrivilegie.DateDebutAjouter:=FSGenerateurAccesPrivilegies.EditDateDebutAjouterNewAcces.Text;
RAccesPrivilegie.DateFinAjouter:=FSGenerateurAccesPrivilegies.EditDateFinAjouterNewAcces.Text;

RAccesPrivilegie.ModeModifier:=FSGenerateurAccesPrivilegies.RBModifierNewAcces.Checked;
RAccesPrivilegie.DateDebutModifier:=FSGenerateurAccesPrivilegies.EditDateDebutModifierNewAcces.Text;
RAccesPrivilegie.DateFinModifier:=FSGenerateurAccesPrivilegies.EditDateFinModifierNewAcces.Text;

RAccesPrivilegie.ModeSupprimer:=FSGenerateurAccesPrivilegies.RBSupprimerNewAcces.Checked;
RAccesPrivilegie.DateDebutSupprimer:=FSGenerateurAccesPrivilegies.EditDateDebutSupprimerNewAcces.Text;
RAccesPrivilegie.DateFinSupprimer:=FSGenerateurAccesPrivilegies.EditDateFinSupprimerNewAcces.Text;

RAccesPrivilegie.ModeImprimer:=FSGenerateurAccesPrivilegies.RBImprimerNewAcces.Checked;
RAccesPrivilegie.DateDebutImprimer:=FSGenerateurAccesPrivilegies.EditDateDebutImprimerNewAcces.Text;
RAccesPrivilegie.DateFinImprimer:=FSGenerateurAccesPrivilegies.EditDateFinImprimerNewAcces.Text;

Write(FAccesPrivilegie,RAccesPrivilegie);
CloseFile(FAccesPrivilegie);
end;

if(FSGenerateurAccesPrivilegies.BitValiderNewAcces.Caption='Supprimer')then
begin
     DeleteFAccesPrivilegie(strtointeger(FSGenerateurAccesPrivilegies.EditNumeroAccesNewAcces.Text),OK);
end;

ProcAfficheAccesPrivilegie(FSGenerateurAccesPrivilegies.LabelRubrique.Caption,FSGenerateurAccesPrivilegies.LabelCodeRubrique.Caption);

FSGenerateurAccesPrivilegies.AfficheAccesPrivilegies.Visible:=false;
end;

procedure TFSGenerateurAccesPrivilegies.TableauUtilisateurAccesClick(
  Sender: TObject);
begin
InitialisationAccesPrivilegies;

FSGenerateurAccesPrivilegies.LabelRubrique.Caption:='Utilisateur';
FSGenerateurAccesPrivilegies.LabelCodeRubrique.Caption:=FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cells[1,FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Row];

FSGenerateurAccesPrivilegies.AfficheAccesPrivilegies.Visible:=false;

ProcAfficheAccesPrivilegie(FSGenerateurAccesPrivilegies.LabelRubrique.Caption,FSGenerateurAccesPrivilegies.LabelCodeRubrique.Caption);
end;

procedure TFSGenerateurAccesPrivilegies.TableauPosteMenuAccesClick(
  Sender: TObject);
begin
InitialisationAccesPrivilegies;

FSGenerateurAccesPrivilegies.LabelRubrique.Caption:='PosteMenu';
FSGenerateurAccesPrivilegies.LabelCodeRubrique.Caption:=FSGenerateurAccesPrivilegies.TableauPosteMenuAcces.Cells[1,FSGenerateurAccesPrivilegies.TableauPosteMenuAcces.Row];

FSGenerateurAccesPrivilegies.AfficheAccesPrivilegies.Visible:=false;

ProcAfficheAccesPrivilegie(FSGenerateurAccesPrivilegies.LabelRubrique.Caption,FSGenerateurAccesPrivilegies.LabelCodeRubrique.Caption);
end;

procedure TFSGenerateurAccesPrivilegies.TableauAccesPrivilegiesClick(
  Sender: TObject);
begin
FSGenerateurAccesPrivilegies.AfficheAccesPrivilegies.Visible:=false;

if(FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[0,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row]='')then exit;

FSGenerateurAccesPrivilegies.RBConsultation.Checked:=strtobool(FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[1,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row]);
FSGenerateurAccesPrivilegies.EditDateDebutConsultation.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[2,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];
FSGenerateurAccesPrivilegies.EditDateFinConsultation.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[3,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];

FSGenerateurAccesPrivilegies.RBAjouter.Checked:=strtobool(FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[4,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row]);
FSGenerateurAccesPrivilegies.EditDateDebutAjouter.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[5,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];
FSGenerateurAccesPrivilegies.EditDateFinAjouter.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[6,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];

FSGenerateurAccesPrivilegies.RBModifier.Checked:=strtobool(FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[7,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row]);
FSGenerateurAccesPrivilegies.EditDateDebutModifier.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[8,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];
FSGenerateurAccesPrivilegies.EditDateFinModifier.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[9,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];

FSGenerateurAccesPrivilegies.RBSupprimer.Checked:=strtobool(FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[10,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row]);
FSGenerateurAccesPrivilegies.EditDateDebutSupprimer.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[11,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];
FSGenerateurAccesPrivilegies.EditDateFinSupprimer.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[12,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];

FSGenerateurAccesPrivilegies.RBImprimer.Checked:=strtobool(FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[13,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row]);
FSGenerateurAccesPrivilegies.EditDateDebutImprimer.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[14,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];
FSGenerateurAccesPrivilegies.EditDateFinImprimer.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[15,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];

end;

procedure TFSGenerateurAccesPrivilegies.BitBtn5Click(Sender: TObject);
begin
FSGenerateurAccesPrivilegies.AfficheListePosteMenuNewAcces.Visible:=false;
end;

procedure TFSGenerateurAccesPrivilegies.EditCodePosteMenuNewAccesEnter(Sender: TObject);
var i:integer;
begin
FSGenerateurAccesPrivilegies.AfficheListePosteMenuNewAcces.Visible:=true;
FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.RowCount:=2;
FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Rows[1].Text:='';
FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Cols[0].Text:=' N°';
FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Cols[1].Text:='Code';
FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Cols[2].Text:='Definition';
FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Cols[3].Text:='     Désignation du Poste Menu';

OpenFParc(RParc);
ChPosteMenu:=RParc.Parcours+'\'+Exercice+'FPosteMenu';
assignfile(FPosteMenu,ChPosteMenu);
if FileExists(ChPosteMenu)then
Reset(FPosteMenu)
else Rewrite(FPosteMenu);
Seek(FPosteMenu,0);
i:=0;
while not eof(FPosteMenu)do
begin
     Read(FPosteMenu,RPosteMenu);
     i:=i+1;
     FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Rows[i].Text:=inttostr(i);
     FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Cells[1,i]:=RPosteMenu.CodePosteMenu;
     FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Cells[2,i]:=RPosteMenu.DefinitionPosteMenu;
     FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Cells[3,i]:=RPosteMenu.DesignationPosteMenu;
end;
if(i>0)then FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.RowCount:=i+1
       else FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.RowCount:=2;

FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.SetFocus;
end;

procedure TFSGenerateurAccesPrivilegies.TableauPosteMenuNewAccesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.EditCodePosteMenuNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Cells[1,FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Row];
     FSGenerateurAccesPrivilegies.EditDesignationPosteMenuNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Cells[3,FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Row];
     FSGenerateurAccesPrivilegies.EditDefinitionPosteMenuNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Cells[2,FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Row];
     FSGenerateurAccesPrivilegies.RBConsultationNewAcces.SetFocus;
     FSGenerateurAccesPrivilegies.AfficheListePosteMenuNewAcces.Visible:=false;
end;

end;

procedure TFSGenerateurAccesPrivilegies.TableauPosteMenuNewAccesClick(
  Sender: TObject);
begin
FSGenerateurAccesPrivilegies.DefinitionPosteMenuNewAcces.Text:=
FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Cells[2,FSGenerateurAccesPrivilegies.TableauPosteMenuNewAcces.Row];
end;

procedure TFSGenerateurAccesPrivilegies.RBConsultationNewAccesClick(
  Sender: TObject);
var  ModeSelect:string;
begin

if(FSGenerateurAccesPrivilegies.RBAjouterNewAcces.Checked=false)
or(FSGenerateurAccesPrivilegies.RBModifierNewAcces.Checked=false)
or(FSGenerateurAccesPrivilegies.RBSupprimerNewAcces.Checked=false)
or(FSGenerateurAccesPrivilegies.RBImprimerNewAcces.Checked=false)
then
begin
     FSGenerateurAccesPrivilegies.EditDateDebutConsultationNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked;
     FSGenerateurAccesPrivilegies.EditDateFinConsultationNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked;
     FSGenerateurAccesPrivilegies.LabelDateDebutConsultationNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked;
     FSGenerateurAccesPrivilegies.LabelDateFinConsultationNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked;

     if(FSGenerateurAccesPrivilegies.EditDateDebutConsultationNewAcces.Enabled=true)then
     FSGenerateurAccesPrivilegies.EditDateDebutConsultationNewAcces.SetFocus;

     if(FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked=false)then
     begin
          FSGenerateurAccesPrivilegies.EditDateDebutConsultationNewAcces.Text:='';
          FSGenerateurAccesPrivilegies.EditDateFinConsultationNewAcces.Text:='';
     end;
end
else
begin
     if(FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked=false)then
     begin
          ModeSelect:='';

          if(FSGenerateurAccesPrivilegies.RBAjouterNewAcces.Checked=true)then
          begin
               ModeSelect:='Ajouter';
          end;

          if(FSGenerateurAccesPrivilegies.RBModifierNewAcces.Checked=true)then
          begin
               if(ModeSelect<>'')then ModeSelect:=ModeSelect+', ';
               ModeSelect:='Modifier';
          end;

          if(FSGenerateurAccesPrivilegies.RBSupprimerNewAcces.Checked=true)then
          begin
               if(ModeSelect<>'')then ModeSelect:=ModeSelect+', ';
               ModeSelect:='Supprimer';
          end;

          if(FSGenerateurAccesPrivilegies.RBImprimerNewAcces.Checked=true)then
          begin
               if(ModeSelect<>'')then ModeSelect:=ModeSelect+', ';
               ModeSelect:='Imprimer';
          end;

          showmessage('Le mode '+ModeSelect+', est octroyé, veuillez le désactiver !');
          FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked:=true;
          FSGenerateurAccesPrivilegies.RBAjouterNewAcces.SetFocus;
     end;
end;

end;

procedure TFSGenerateurAccesPrivilegies.RBAjouterNewAccesClick(
  Sender: TObject);
begin

if(FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked=true)then
begin
     FSGenerateurAccesPrivilegies.EditDateDebutAjouterNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBAjouterNewAcces.Checked;
     FSGenerateurAccesPrivilegies.EditDateFinAjouterNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBAjouterNewAcces.Checked;
     FSGenerateurAccesPrivilegies.LabelDateDebutAjouterNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBAjouterNewAcces.Checked;
     FSGenerateurAccesPrivilegies.LabelDateFinAjouterNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBAjouterNewAcces.Checked;

     if(FSGenerateurAccesPrivilegies.EditDateDebutAjouterNewAcces.Enabled=true)then
     FSGenerateurAccesPrivilegies.EditDateDebutAjouterNewAcces.SetFocus;

     if(FSGenerateurAccesPrivilegies.RBAjouterNewAcces.Checked=true)then
     begin
          FSGenerateurAccesPrivilegies.EditDateDebutAjouterNewAcces.Text:='';
          FSGenerateurAccesPrivilegies.EditDateFinAjouterNewAcces.Text:='';
     end;
end
else
begin
     if(FSGenerateurAccesPrivilegies.RBAjouterNewAcces.Checked=true)then
     begin
          showmessage('Le mode Ajouter requiert l''attribution du mode consultation !');
          FSGenerateurAccesPrivilegies.RBAjouterNewAcces.Checked:=false;
          FSGenerateurAccesPrivilegies.RBConsultationNewAcces.SetFocus;
     end;
end;

end;

procedure TFSGenerateurAccesPrivilegies.TableauUtilisateurAccesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_INSERT]then
begin
     FSGenerateurAccesPrivilegies.AfficheAccesPrivilegies.Visible:=true;

     FSGenerateurAccesPrivilegies.EditCodeUtilisateurNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cells[1,FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Row];
     FSGenerateurAccesPrivilegies.EditNomPrinomUtilisateurNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cells[3,FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Row];
     FSGenerateurAccesPrivilegies.EditFonctionUtilisateurNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cells[2,FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Row];

     FSGenerateurAccesPrivilegies.BitValiderNewAcces.Kind:=bkAll;
     FSGenerateurAccesPrivilegies.BitValiderNewAcces.Caption:='Valider';

     FSGenerateurAccesPrivilegies.RBAjouterNewAcces.Checked:=false;
     FSGenerateurAccesPrivilegies.RBModifierNewAcces.Checked:=false;
     FSGenerateurAccesPrivilegies.RBSupprimerNewAcces.Checked:=false;
     FSGenerateurAccesPrivilegies.RBImprimerNewAcces.Checked:=false;
     FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked:=false;

     FSGenerateurAccesPrivilegies.EditCodePosteMenuNewAcces.Text:='';
     FSGenerateurAccesPrivilegies.EditDesignationPosteMenuNewAcces.Text:='';
     FSGenerateurAccesPrivilegies.EditDefinitionPosteMenuNewAcces.Text:='';

     FSGenerateurAccesPrivilegies.EditNumeroAccesNewAcces.Text:='';

     FSGenerateurAccesPrivilegies.EditCodePosteMenuNewAcces.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.EditDateDebutConsultationNewAccesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.EditDateFinConsultationNewAcces.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.EditDateFinConsultationNewAccesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.RBAjouterNewAcces.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.EditDateDebutAjouterNewAccesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.EditDateFinAjouterNewAcces.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.EditDateFinAjouterNewAccesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.RBModifierNewAcces.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.TableauAccesPrivilegiesKeyPress(
  Sender: TObject; var Key: Char);
begin

if key in['m','M','s','S']then
begin

     if key in['m','M']then
     begin
          FSGenerateurAccesPrivilegies.BitValiderNewAcces.Kind:=bkRetry;
          FSGenerateurAccesPrivilegies.BitValiderNewAcces.Caption:='Modifier';
     end;

     if key in['s','S']then
     begin
          FSGenerateurAccesPrivilegies.BitValiderNewAcces.Kind:=bkCancel;
          FSGenerateurAccesPrivilegies.BitValiderNewAcces.Caption:='Supprimer';
          FSGenerateurAccesPrivilegies.BitValiderNewAcces.Cancel:=false;
     end;

     FSGenerateurAccesPrivilegies.AfficheAccesPrivilegies.Visible:=true;

     FSGenerateurAccesPrivilegies.EditNumeroAccesNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[0,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];

     FSGenerateurAccesPrivilegies.EditCodeUtilisateurNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[17,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];
     RUtilisateur:=ChercherUtilisateur(FSGenerateurAccesPrivilegies.EditCodeUtilisateurNewAcces.Text);
     FSGenerateurAccesPrivilegies.EditNomPrinomUtilisateurNewAcces.Text:=RUtilisateur.Nom+' '+RUtilisateur.Prenom;
     FSGenerateurAccesPrivilegies.EditFonctionUtilisateurNewAcces.Text:=RUtilisateur.Fonction;

     FSGenerateurAccesPrivilegies.EditCodePosteMenuNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[18,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];
     RPosteMenu:=ChercherPosteMenu(FSGenerateurAccesPrivilegies.EditCodePosteMenuNewAcces.Text);
     FSGenerateurAccesPrivilegies.EditDesignationPosteMenuNewAcces.Text:=RPosteMenu.DesignationPosteMenu;
     FSGenerateurAccesPrivilegies.EditDefinitionPosteMenuNewAcces.Text:=RPosteMenu.DefinitionPosteMenu;

     FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked:=strtobool(FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[1,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row]);
     FSGenerateurAccesPrivilegies.EditDateDebutConsultationNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[2,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];
     FSGenerateurAccesPrivilegies.EditDateFinConsultationNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[3,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];

     FSGenerateurAccesPrivilegies.RBAjouterNewAcces.Checked:=strtobool(FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[4,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row]);
     FSGenerateurAccesPrivilegies.EditDateDebutAjouterNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[5,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];
     FSGenerateurAccesPrivilegies.EditDateFinAjouterNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[6,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];

     FSGenerateurAccesPrivilegies.RBModifierNewAcces.Checked:=strtobool(FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[7,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row]);
     FSGenerateurAccesPrivilegies.EditDateDebutModifierNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[8,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];
     FSGenerateurAccesPrivilegies.EditDateFinModifierNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[9,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];

     FSGenerateurAccesPrivilegies.RBSupprimerNewAcces.Checked:=strtobool(FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[10,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row]);
     FSGenerateurAccesPrivilegies.EditDateDebutSupprimerNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[11,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];
     FSGenerateurAccesPrivilegies.EditDateFinSupprimerNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[12,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];

     FSGenerateurAccesPrivilegies.RBImprimerNewAcces.Checked:=strtobool(FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[13,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row]);
     FSGenerateurAccesPrivilegies.EditDateDebutImprimerNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[14,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];
     FSGenerateurAccesPrivilegies.EditDateFinImprimerNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Cells[15,FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Row];

     FSGenerateurAccesPrivilegies.BitValiderNewAcces.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.TableauAccesPrivilegiesDblClick(
  Sender: TObject);
begin
ProcAfficheAccesPrivilegie('','');
end;

procedure TFSGenerateurAccesPrivilegies.EditCodePosteMenuKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.EditDesignationPosteMenu.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.PageAccesPrivilegiesShow(
  Sender: TObject);
begin
ProcAfficheUtilisateurAcces;
ProcAffichePosteMenuAcces;
end;

procedure TFSGenerateurAccesPrivilegies.RBModifierNewAccesClick(
  Sender: TObject);
begin

if(FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked=true)then
begin
     FSGenerateurAccesPrivilegies.EditDateDebutModifierNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBModifierNewAcces.Checked;
     FSGenerateurAccesPrivilegies.EditDateFinModifierNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBModifierNewAcces.Checked;
     FSGenerateurAccesPrivilegies.LabelDateDebutModifierNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBModifierNewAcces.Checked;
     FSGenerateurAccesPrivilegies.LabelDateFinModifierNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBModifierNewAcces.Checked;

     if(FSGenerateurAccesPrivilegies.EditDateDebutModifierNewAcces.Enabled=true)then
     FSGenerateurAccesPrivilegies.EditDateDebutModifierNewAcces.SetFocus;

     if(FSGenerateurAccesPrivilegies.RBModifierNewAcces.Checked=true)then
     begin
          FSGenerateurAccesPrivilegies.EditDateDebutModifierNewAcces.Text:='';
          FSGenerateurAccesPrivilegies.EditDateFinModifierNewAcces.Text:='';
     end;
end
else
begin
     if(FSGenerateurAccesPrivilegies.RBModifierNewAcces.Checked=true)then
     begin
          showmessage('Le mode Modifier requiert l''attribution du mode consultation !');
          FSGenerateurAccesPrivilegies.RBModifierNewAcces.Checked:=false;
          FSGenerateurAccesPrivilegies.RBConsultationNewAcces.SetFocus;
     end;
end;

end;

procedure TFSGenerateurAccesPrivilegies.RBSupprimerNewAccesClick(
  Sender: TObject);
begin

if(FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked=true)then
begin
     FSGenerateurAccesPrivilegies.EditDateDebutSupprimerNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBSupprimerNewAcces.Checked;
     FSGenerateurAccesPrivilegies.EditDateFinSupprimerNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBSupprimerNewAcces.Checked;
     FSGenerateurAccesPrivilegies.LabelDateDebutSupprimerNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBSupprimerNewAcces.Checked;
     FSGenerateurAccesPrivilegies.LabelDateFinSupprimerNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBSupprimerNewAcces.Checked;

     if(FSGenerateurAccesPrivilegies.EditDateDebutSupprimerNewAcces.Enabled=true)then
     FSGenerateurAccesPrivilegies.EditDateDebutSupprimerNewAcces.SetFocus;

     if(FSGenerateurAccesPrivilegies.RBSupprimerNewAcces.Checked=true)then
     begin
          FSGenerateurAccesPrivilegies.EditDateDebutSupprimerNewAcces.Text:='';
          FSGenerateurAccesPrivilegies.EditDateFinSupprimerNewAcces.Text:='';
     end;
end
else
begin
     if(FSGenerateurAccesPrivilegies.RBSupprimerNewAcces.Checked=true)then
     begin
          showmessage('Le mode Supprimer requiert l''attribution du mode consultation !');
          FSGenerateurAccesPrivilegies.RBSupprimerNewAcces.Checked:=false;
          FSGenerateurAccesPrivilegies.RBConsultationNewAcces.SetFocus;
     end;
end;

end;

procedure TFSGenerateurAccesPrivilegies.TableauAccesPrivilegiesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if(key in[VK_INSERT])
and(FSGenerateurAccesPrivilegies.PageAccesUtilisateurs.Visible=true)
then
begin
     FSGenerateurAccesPrivilegies.AfficheAccesPrivilegies.Visible:=true;

     FSGenerateurAccesPrivilegies.EditCodeUtilisateurNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cells[1,FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Row];
     FSGenerateurAccesPrivilegies.EditNomPrinomUtilisateurNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cells[3,FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Row];
     FSGenerateurAccesPrivilegies.EditFonctionUtilisateurNewAcces.Text:=FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cells[2,FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Row];

     FSGenerateurAccesPrivilegies.BitValiderNewAcces.Kind:=bkAll;
     FSGenerateurAccesPrivilegies.BitValiderNewAcces.Caption:='Valider';

     FSGenerateurAccesPrivilegies.RBAjouterNewAcces.Checked:=false;
     FSGenerateurAccesPrivilegies.RBModifierNewAcces.Checked:=false;
     FSGenerateurAccesPrivilegies.RBSupprimerNewAcces.Checked:=false;
     FSGenerateurAccesPrivilegies.RBImprimerNewAcces.Checked:=false;
     FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked:=false;     

     FSGenerateurAccesPrivilegies.EditCodePosteMenuNewAcces.Text:='';
     FSGenerateurAccesPrivilegies.EditDesignationPosteMenuNewAcces.Text:='';
     FSGenerateurAccesPrivilegies.EditDefinitionPosteMenuNewAcces.Text:='';

     FSGenerateurAccesPrivilegies.EditNumeroAccesNewAcces.Text:='';

     FSGenerateurAccesPrivilegies.EditCodePosteMenuNewAcces.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.EditDateDebutModifierNewAccesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.EditDateFinModifierNewAcces.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.EditDateFinModifierNewAccesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.RBSupprimerNewAcces.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.EditDateDebutSupprimerNewAccesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.EditDateFinSupprimerNewAcces.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.EditDateFinSupprimerNewAccesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.RBImprimerNewAcces.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.RBImprimerNewAccesClick(
  Sender: TObject);
begin

if(FSGenerateurAccesPrivilegies.RBConsultationNewAcces.Checked=true)then
begin
     FSGenerateurAccesPrivilegies.EditDateDebutImprimerNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBImprimerNewAcces.Checked;
     FSGenerateurAccesPrivilegies.EditDateFinImprimerNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBImprimerNewAcces.Checked;
     FSGenerateurAccesPrivilegies.LabelDateDebutImprimerNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBImprimerNewAcces.Checked;
     FSGenerateurAccesPrivilegies.LabelDateFinImprimerNewAcces.Enabled:=FSGenerateurAccesPrivilegies.RBImprimerNewAcces.Checked;

     if(FSGenerateurAccesPrivilegies.EditDateDebutImprimerNewAcces.Enabled=true)then
     FSGenerateurAccesPrivilegies.EditDateDebutImprimerNewAcces.SetFocus;

     if(FSGenerateurAccesPrivilegies.RBImprimerNewAcces.Checked=true)then
     begin
          FSGenerateurAccesPrivilegies.EditDateDebutImprimerNewAcces.Text:='';
          FSGenerateurAccesPrivilegies.EditDateFinImprimerNewAcces.Text:='';
     end;
end
else
begin
     if(FSGenerateurAccesPrivilegies.RBImprimerNewAcces.Checked=true)then
     begin
          showmessage('Le mode Imprimer requiert l''attribution du mode consultation !');
          FSGenerateurAccesPrivilegies.RBImprimerNewAcces.Checked:=false;
          FSGenerateurAccesPrivilegies.RBConsultationNewAcces.SetFocus;
     end;
end;

end;

procedure TFSGenerateurAccesPrivilegies.EditDateFinImprimerNewAccesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.BitValiderNewAcces.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.EditDateDebutImprimerNewAccesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSGenerateurAccesPrivilegies.EditDateFinImprimerNewAcces.SetFocus;
end;

end;

procedure TFSGenerateurAccesPrivilegies.AfficheListePosteMenuClick(
  Sender: TObject);
var  i:integer;
begin

if(FSGenerateurAccesPrivilegies.EditAutorisationCodeMenu.Text='000')
and(FSGenerateurAccesPrivilegies.AfficheListePosteMenu.Caption='Requête SVP!')
then
begin
     FSGenerateurAccesPrivilegies.EditAutorisationCodeMenu.Text:='';
     OpenFParc(RParc);
     ChPosteMenu:=RParc.Parcours+'\'+Exercice+'FPosteMenu';
     assignfile(FPosteMenu,ChPosteMenu);
     if FileExists(ChPosteMenu)then
     Reset(FPosteMenu)
     else Rewrite(FPosteMenu);
     Seek(FPosteMenu,0);
     Truncate(FPosteMenu);
     for i:=0 to FSGenerateurAccesPrivilegies.EditCodePosteMenu.Items.Count-1 do
     begin
          Seek(FPosteMenu,i);
          RPosteMenu.CodePosteMenu:=FSGenerateurAccesPrivilegies.EditCodePosteMenu.Items.Strings[i];
          RPosteMenu.DesignationPosteMenu:=FSGenerateurAccesPrivilegies.EditCodePosteMenu.Items.Strings[i];
          RPosteMenu.DefinitionPosteMenu:='';
          Write(FPosteMenu,RPosteMenu);
     end;
     CloseFile(FPosteMenu);

     OpenFParc(RParc);
     ChAccesPrivilegie:=RParc.Parcours+'\'+Exercice+'FAccesPrivilegie';
     assignfile(FAccesPrivilegie,ChAccesPrivilegie);
     if FileExists(ChAccesPrivilegie)then
     Reset(FAccesPrivilegie)
     else Rewrite(FAccesPrivilegie);
     Seek(FAccesPrivilegie,0);
     Truncate(FAccesPrivilegie);
     CloseFile(FAccesPrivilegie);

     ProcAffichePosteMenu;

     FSGenerateurAccesPrivilegies.EditAutorisationCodeMenu.Text:='';
     FSGenerateurAccesPrivilegies.AfficheListePosteMenu.Caption:='';
     FSGenerateurAccesPrivilegies.AffichePosteMenu.Visible:=false;
end
else                           
begin
     FSGenerateurAccesPrivilegies.EditAutorisationCodeMenu.Text:='';
     FSGenerateurAccesPrivilegies.EditAutorisationCodeMenu.SetFocus;
     FSGenerateurAccesPrivilegies.AfficheListePosteMenu.Caption:='Requête SVP!';
end;

end;

procedure TFSGenerateurAccesPrivilegies.AfficheGenerateurAccesClick(
  Sender: TObject);
var  i:integer;
begin

if(FSGenerateurAccesPrivilegies.EditGenerateurAcces.Text='000')
and(FSGenerateurAccesPrivilegies.AfficheGenerateurAcces.Caption='Requête SVP!')
then
begin
     FSGenerateurAccesPrivilegies.EditGenerateurAcces.Text:='';
     FSGenerateurAccesPrivilegies.AfficheGenerateurAcces.Caption:='OK Global';

OpenFParc(RParc);
ChAccesPrivilegie:=RParc.Parcours+'\'+Exercice+'FAccesPrivilegie';
assignfile(FAccesPrivilegie,ChAccesPrivilegie);
if FileExists(ChAccesPrivilegie)then
Reset(FAccesPrivilegie)
else Rewrite(FAccesPrivilegie);
Seek(FAccesPrivilegie,0);
Truncate(FAccesPrivilegie);
i:=0;

     TypeProces:='Business';   FichierConcerne:='FUtilisateur';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;
     ChUtilisateur:=Adresse;
     assignfile(FUtilisateur,ChUtilisateur);
     if FileExists(ChUtilisateur)then
     Reset(FUtilisateur)
     else Rewrite(FUtilisateur);
     Seek(FUtilisateur,0);
     while(not eof(FUtilisateur))do
     begin
          Read(FUtilisateur,RUtilisateur);
          OpenFParc(RParc);
          ChPosteMenu:=RParc.Parcours+'\'+Exercice+'FPosteMenu';
          assignfile(FPosteMenu,ChPosteMenu);
          if FileExists(ChPosteMenu)then
          Reset(FPosteMenu)
          else Rewrite(FPosteMenu);
          Seek(FPosteMenu,0);
          while(not eof(FPosteMenu))do
          begin
               Read(FPosteMenu,RPosteMenu);

               Seek(FAccesPrivilegie,i);
               RAccesPrivilegie.NumeroAcces:=i;
               RAccesPrivilegie.CodeUtilisateur:=RUtilisateur.CodeUtilisateur;
               RAccesPrivilegie.CodePosteMenu:=RPosteMenu.CodePosteMenu;

               RAccesPrivilegie.ModeConsultation:=true;
               RAccesPrivilegie.DateDebutConsultation:='  /  /    ';
               RAccesPrivilegie.DateFinConsultation:='  /  /    ';

               RAccesPrivilegie.ModeAjouter:=true;
               RAccesPrivilegie.DateDebutAjouter:='  /  /    ';
               RAccesPrivilegie.DateFinAjouter:='  /  /    ';

               RAccesPrivilegie.ModeModifier:=true;
               RAccesPrivilegie.DateDebutModifier:='  /  /    ';
               RAccesPrivilegie.DateFinModifier:='  /  /    ';

               RAccesPrivilegie.ModeSupprimer:=true;
               RAccesPrivilegie.DateDebutSupprimer:='  /  /    ';
               RAccesPrivilegie.DateFinSupprimer:='  /  /    ';

               RAccesPrivilegie.ModeImprimer:=true;
               RAccesPrivilegie.DateDebutImprimer:='  /  /    ';
               RAccesPrivilegie.DateFinImprimer:='  /  /    ';

               Write(FAccesPrivilegie,RAccesPrivilegie);
               i:=i+1;
          end;
          closefile(FPosteMenu);
     end;
     closefile(FUtilisateur);
CloseFile(FAccesPrivilegie);
end
else
begin
     FSGenerateurAccesPrivilegies.EditGenerateurAcces.Text:='';
     FSGenerateurAccesPrivilegies.EditGenerateurAcces.SetFocus;
     FSGenerateurAccesPrivilegies.AfficheGenerateurAcces.Caption:='Requête SVP!';
     FSGenerateurAccesPrivilegies.AfficheGenerateurAccesUnique.Caption:='';
     FSGenerateurAccesPrivilegies.AfficheGenerateurAccesSuprimer.Caption:='';
end;

end;

procedure TFSGenerateurAccesPrivilegies.AfficheGenerateurAccesUniqueClick(
  Sender: TObject);
var  i:integer;  OK:boolean;
begin

if(FSGenerateurAccesPrivilegies.EditGenerateurAcces.Text='000')
and(FSGenerateurAccesPrivilegies.AfficheGenerateurAccesUnique.Caption='Requête SVP!')
then
begin
     FSGenerateurAccesPrivilegies.EditGenerateurAcces.Text:='';
     FSGenerateurAccesPrivilegies.AfficheGenerateurAccesUnique.Caption:='OK Sélection';

if(FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cells[1,FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Row]<>'')then
begin
OpenFParc(RParc);
ChAccesPrivilegie:=RParc.Parcours+'\'+Exercice+'FAccesPrivilegie';
assignfile(FAccesPrivilegie,ChAccesPrivilegie);
if FileExists(ChAccesPrivilegie)then
Reset(FAccesPrivilegie)
else Rewrite(FAccesPrivilegie);
Seek(FAccesPrivilegie,0);
OK:=false;
i:=0;
while(not eof(FAccesPrivilegie)and(OK=false))do
begin
     Read(FAccesPrivilegie,RAccesPrivilegie);
     if(RAccesPrivilegie.CodeUtilisateur=FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cells[1,FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Row])then
     begin
          OK:=true;
     end;
     i:=i+1;
end;

if(OK=true)then
begin
     showmessage('L''utilisateur est déjas enregistré, Veuillez vérifier vos données SVP!');
     CloseFile(FAccesPrivilegie);
     Exit;
end;
          OpenFParc(RParc);
          ChPosteMenu:=RParc.Parcours+'\'+Exercice+'FPosteMenu';
          assignfile(FPosteMenu,ChPosteMenu);
          if FileExists(ChPosteMenu)then
          Reset(FPosteMenu)
          else Rewrite(FPosteMenu);
          Seek(FPosteMenu,0);
          while(not eof(FPosteMenu))do
          begin
               Read(FPosteMenu,RPosteMenu);

               Seek(FAccesPrivilegie,i);
               RAccesPrivilegie.NumeroAcces:=i;
               RAccesPrivilegie.CodeUtilisateur:=FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Cells[1,FSGenerateurAccesPrivilegies.TableauUtilisateurAcces.Row];
               RAccesPrivilegie.CodePosteMenu:=RPosteMenu.CodePosteMenu;

               RAccesPrivilegie.ModeConsultation:=true;
               RAccesPrivilegie.DateDebutConsultation:='  /  /    ';
               RAccesPrivilegie.DateFinConsultation:='  /  /    ';

               RAccesPrivilegie.ModeAjouter:=true;
               RAccesPrivilegie.DateDebutAjouter:='  /  /    ';
               RAccesPrivilegie.DateFinAjouter:='  /  /    ';

               RAccesPrivilegie.ModeModifier:=true;
               RAccesPrivilegie.DateDebutModifier:='  /  /    ';
               RAccesPrivilegie.DateFinModifier:='  /  /    ';

               RAccesPrivilegie.ModeSupprimer:=true;
               RAccesPrivilegie.DateDebutSupprimer:='  /  /    ';
               RAccesPrivilegie.DateFinSupprimer:='  /  /    ';

               RAccesPrivilegie.ModeImprimer:=true;
               RAccesPrivilegie.DateDebutImprimer:='  /  /    ';
               RAccesPrivilegie.DateFinImprimer:='  /  /    ';

               Write(FAccesPrivilegie,RAccesPrivilegie);
               i:=i+1;
          end;
          closefile(FPosteMenu);
CloseFile(FAccesPrivilegie);
ProcAfficheAccesPrivilegie(FSGenerateurAccesPrivilegies.LabelRubrique.Caption,FSGenerateurAccesPrivilegies.LabelCodeRubrique.Caption);
end;
end
else
begin
     FSGenerateurAccesPrivilegies.EditGenerateurAcces.Text:='';
     FSGenerateurAccesPrivilegies.EditGenerateurAcces.SetFocus;
     FSGenerateurAccesPrivilegies.AfficheGenerateurAccesUnique.Caption:='Requête SVP!';
     FSGenerateurAccesPrivilegies.AfficheGenerateurAcces.Caption:='';
     FSGenerateurAccesPrivilegies.AfficheGenerateurAccesSuprimer.Caption:='';
end;

end;

procedure TFSGenerateurAccesPrivilegies.AfficheGenerateurAccesSuprimerClick(
  Sender: TObject);
begin

if(FSGenerateurAccesPrivilegies.EditGenerateurAcces.Text='000')
and(FSGenerateurAccesPrivilegies.AfficheGenerateurAccesSuprimer.Caption='Requête SVP!')
then
begin
     FSGenerateurAccesPrivilegies.EditGenerateurAcces.Text:='';
     FSGenerateurAccesPrivilegies.AfficheGenerateurAccesSuprimer.Caption:='Initialisation';
     OpenFParc(RParc);     
     ChAccesPrivilegie:=RParc.Parcours+'\'+Exercice+'FAccesPrivilegie';
     assignfile(FAccesPrivilegie,ChAccesPrivilegie);
     if FileExists(ChAccesPrivilegie)then
     Reset(FAccesPrivilegie)
     else Rewrite(FAccesPrivilegie);
     Seek(FAccesPrivilegie,0);
     Truncate(FAccesPrivilegie);
     FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.RowCount:=2;
     FSGenerateurAccesPrivilegies.TableauAccesPrivilegies.Rows[1].Text:='';
end
else
begin
     FSGenerateurAccesPrivilegies.EditGenerateurAcces.Text:='';
     FSGenerateurAccesPrivilegies.EditGenerateurAcces.SetFocus;
     FSGenerateurAccesPrivilegies.AfficheGenerateurAccesSuprimer.Caption:='Requête SVP!';
     FSGenerateurAccesPrivilegies.AfficheGenerateurAcces.Caption:='';
     FSGenerateurAccesPrivilegies.AfficheGenerateurAccesUnique.Caption:='';
end;

end;

procedure TFSGenerateurAccesPrivilegies.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     FSGenerateurAccesPrivilegies.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Générateur d''accès privilégiés';
end;

procedure TFSGenerateurAccesPrivilegies.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

procedure TFSGenerateurAccesPrivilegies.RBCodeBarreClick(Sender: TObject);
var  CodeBarre,SeriCodeBarre:string;    OrdreCodeBarre:integer;    OK:boolean;
begin
     if(Firstlaters(FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text,1)='§')then
     begin
          CodeBarre:=Lastlaters(FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text,longueur(FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text)-1);
          ChargerCodeBarre('',firstlaters(CodeBarre,7),'');
          FSGenerateurAccesPrivilegies.ImageCodebarre.Width:=FSEtiquettesCodeBarre.ImageCodebarre.Width;
          FSGenerateurAccesPrivilegies.ImageCodebarre.Height:=FSEtiquettesCodeBarre.ImageCodebarre.Height;
          FSGenerateurAccesPrivilegies.ImageCodebarre.Picture:=FSEtiquettesCodeBarre.ImageCodebarre.Picture;
          exit;
     end
     else
     begin
          FSGenerateurAccesPrivilegies.ImageCodebarre.Picture:=FSMenuPrincipal.PhotoVide.Picture;
     end;

     TypeProces:='Business';   FichierConcerne:='FUtilisateur';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;
     ChUtilisateur:=Adresse;
     assignfile(FUtilisateur,ChUtilisateur);
     if FileExists(ChUtilisateur)then
     Reset(FUtilisateur)
     else Rewrite(FUtilisateur);
     Seek(FUtilisateur,0);
     OK:=false;
     SeriCodeBarre:='630';
     OrdreCodeBarre:=1;
     while(not eof(FUtilisateur)and(OK=false))do
     begin
          Read(FUtilisateur,RUtilisateur);

          if(Firstlaters(RUtilisateur.CodeAcces,1)='§')then
          begin
               CodeBarre:=Lastlaters(RUtilisateur.CodeAcces,longueur(RUtilisateur.CodeAcces)-1);
               if(firstlaters(CodeBarre,3)=SeriCodeBarre)then
               begin
                    if(OrdreCodeBarre<=strtointeger(lastlaters(firstlaters(CodeBarre,7),4)))then OrdreCodeBarre:=strtointeger(lastlaters(firstlaters(CodeBarre,7),4))+1;
               end
          end;

          if(RUtilisateur.CodeUtilisateur=FSGenerateurAccesPrivilegies.EditModifCodeUtilisateur.Text)then
          begin
               if(Firstlaters(RUtilisateur.CodeAcces,1)='§')then
               begin
                    OK:=true;
                    CodeBarre:=Lastlaters(RUtilisateur.CodeAcces,longueur(RUtilisateur.CodeAcces)-1);
                    FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text:=RUtilisateur.CodeAcces;
                    ChargerCodeBarre('',firstlaters(CodeBarre,7),'');
                    FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text:='§'+FSEtiquettesCodeBarre.EditCodebarre.Text;
                    FSGenerateurAccesPrivilegies.ImageCodebarre.Width:=FSEtiquettesCodeBarre.ImageCodebarre.Width;
                    FSGenerateurAccesPrivilegies.ImageCodebarre.Height:=FSEtiquettesCodeBarre.ImageCodebarre.Height;
                    FSGenerateurAccesPrivilegies.ImageCodebarre.Picture:=FSEtiquettesCodeBarre.ImageCodebarre.Picture;
               end;
          end;
     end;
     CloseFile(FUtilisateur);

     if(OK=false)then
     begin
          FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text:='§'+SeriCodeBarre+Completezerogauche(inttostr(OrdreCodeBarre),'4');
          CodeBarre:=Lastlaters(FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text,longueur(FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text)-1);
          ChargerCodeBarre('',firstlaters(CodeBarre,7),'');
          FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text:='§'+FSEtiquettesCodeBarre.EditCodebarre.Text;
          FSGenerateurAccesPrivilegies.ImageCodebarre.Width:=FSEtiquettesCodeBarre.ImageCodebarre.Width;
          FSGenerateurAccesPrivilegies.ImageCodebarre.Height:=FSEtiquettesCodeBarre.ImageCodebarre.Height;
          FSGenerateurAccesPrivilegies.ImageCodebarre.Picture:=FSEtiquettesCodeBarre.ImageCodebarre.Picture;
     end;

     FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.ReadOnly:=true;
end;

procedure TFSGenerateurAccesPrivilegies.RBCodeNumeriqueClick(
  Sender: TObject);
begin
     FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.ReadOnly:=false;
     FSGenerateurAccesPrivilegies.ImageCodebarre.Picture:=FSMenuPrincipal.PhotoVide.Picture;

     if(Firstlaters(FSGenerateurAccesPrivilegies.EditModifCodeAccesUtilisateur.Text,1)='§')
     then FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text:=''
     else FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text:=FSGenerateurAccesPrivilegies.EditModifCodeAccesUtilisateur.Text;
end;

procedure TFSGenerateurAccesPrivilegies.ImageCodeBarreDblClick(
  Sender: TObject);
var  CodeBarre:string;
begin
     CleanCarteFonction(1,true);
     CleanCarteFonction(2,false);

     OpenFParc(RParc);
     PrintCarteProfessionnel.DataEntreprise1.Caption:=RParc.Text1;
     PrintCarteProfessionnel.DataEntrepriseA1.Caption:=RParc.Text2;
     PrintCarteProfessionnel.DataEntrepriseB1.Caption:=RParc.Text3;

     PrintCarteProfessionnel.DataValidite1.Caption:=' 31/12/'+ExerciceAnnee+' ';

     PrintCarteProfessionnel.DataMatricule1.Caption:=Completezerogauche(FSGenerateurAccesPrivilegies.EditCodeUtilisateur.Text,'5');
     PrintCarteProfessionnel.DataNom1.Caption:=FSGenerateurAccesPrivilegies.EditNomUtilisateur.Text;
     PrintCarteProfessionnel.DataPrenom1.Caption:=FSGenerateurAccesPrivilegies.EditPrenomUtilisateur.Text;
     PrintCarteProfessionnel.DataDateNais1.Caption:='..../..../........';
     PrintCarteProfessionnel.DataFonction1.Caption:=FSGenerateurAccesPrivilegies.EditFonctionUtilisateur.Text;


     PrintCarteProfessionnel.Logo1.Picture:=FSMenuPrincipal.Logo.Picture;
     CodeBarre:=Lastlaters(FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text,longueur(FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text)-1);
     ChargerCodeBarre(PrintCarteProfessionnel.DataNom1.Caption+' '+PrintCarteProfessionnel.DataPrenom1.Caption,firstlaters(CodeBarre,7),'');
     PrintCarteProfessionnel.ImageCodebarre1.Width:=FSEtiquettesCodeBarre.ImageCodebarre.Width;
     PrintCarteProfessionnel.ImageCodebarre1.Height:=FSEtiquettesCodeBarre.ImageCodebarre.Height;
     PrintCarteProfessionnel.ImageCodebarre1.Picture:=FSEtiquettesCodeBarre.ImageCodebarre.Picture;
     PrintCarteProfessionnel.Preview;
end;

Procedure CleanCarteFonction(Index:integer; Visible:boolean);
begin
     if(Index=1)then
     begin
          PrintCarteProfessionnel.ImageCodeBarre1.Enabled:=Visible;
          PrintCarteProfessionnel.Logo1.Enabled:=Visible;

          PrintCarteProfessionnel.CadreCarte1.Enabled:=Visible;
          PrintCarteProfessionnel.CadrePhoto1.Enabled:=Visible;
          PrintCarteProfessionnel.CadreLogo1.Enabled:=Visible;
          PrintCarteProfessionnel.CadreEntreprise1.Enabled:=Visible;
          PrintCarteProfessionnel.CadreSepartData1.Enabled:=Visible;

          PrintCarteProfessionnel.TitreValidite1.Enabled:=Visible;
          PrintCarteProfessionnel.TitreMatricule1.Enabled:=Visible;
          PrintCarteProfessionnel.TitreNom1.Enabled:=Visible;
          PrintCarteProfessionnel.TitrePrenom1.Enabled:=Visible;
          PrintCarteProfessionnel.TitreDateNais1.Enabled:=Visible;
          PrintCarteProfessionnel.TitreFonction1.Enabled:=Visible;

          PrintCarteProfessionnel.DataValidite1.Caption:='';    PrintCarteProfessionnel.DataValidite1.Enabled:=Visible;
          PrintCarteProfessionnel.DataMatricule1.Caption:='';   PrintCarteProfessionnel.DataMatricule1.Enabled:=Visible;
          PrintCarteProfessionnel.DataEntreprise1.Caption:='';  PrintCarteProfessionnel.DataEntreprise1.Enabled:=Visible;
          PrintCarteProfessionnel.DataNom1.Caption:='';         PrintCarteProfessionnel.DataNom1.Enabled:=Visible;
          PrintCarteProfessionnel.DataPrenom1.Caption:='';      PrintCarteProfessionnel.DataPrenom1.Enabled:=Visible;
          PrintCarteProfessionnel.DataDateNais1.Caption:='';    PrintCarteProfessionnel.DataDateNais1.Enabled:=Visible;
          PrintCarteProfessionnel.DataFonction1.Caption:='';    PrintCarteProfessionnel.DataFonction1.Enabled:=Visible;
          PrintCarteProfessionnel.DataEntrepriseA1.Caption:=''; PrintCarteProfessionnel.DataEntrepriseA1.Enabled:=Visible;
          PrintCarteProfessionnel.DataEntrepriseB1.Caption:=''; PrintCarteProfessionnel.DataEntrepriseB1.Enabled:=Visible;
     end;

     if(Index=2)then
     begin
          PrintCarteProfessionnel.ImageCodeBarre2.Enabled:=Visible;
          PrintCarteProfessionnel.Logo2.Enabled:=Visible;

          PrintCarteProfessionnel.CadreCarte2.Enabled:=Visible;
          PrintCarteProfessionnel.CadrePhoto2.Enabled:=Visible;
          PrintCarteProfessionnel.CadreLogo2.Enabled:=Visible;
          PrintCarteProfessionnel.CadreEntreprise2.Enabled:=Visible;
          PrintCarteProfessionnel.CadreSepartData2.Enabled:=Visible;

          PrintCarteProfessionnel.TitreValidite2.Enabled:=Visible;
          PrintCarteProfessionnel.TitreMatricule2.Enabled:=Visible;
          PrintCarteProfessionnel.TitreNom2.Enabled:=Visible;
          PrintCarteProfessionnel.TitrePrenom2.Enabled:=Visible;
          PrintCarteProfessionnel.TitreDateNais2.Enabled:=Visible;
          PrintCarteProfessionnel.TitreFonction2.Enabled:=Visible;

          PrintCarteProfessionnel.DataValidite2.Caption:='';    PrintCarteProfessionnel.DataValidite2.Enabled:=Visible;
          PrintCarteProfessionnel.DataMatricule2.Caption:='';   PrintCarteProfessionnel.DataMatricule2.Enabled:=Visible;
          PrintCarteProfessionnel.DataEntreprise2.Caption:='';  PrintCarteProfessionnel.DataEntreprise2.Enabled:=Visible;
          PrintCarteProfessionnel.DataNom2.Caption:='';         PrintCarteProfessionnel.DataNom2.Enabled:=Visible;
          PrintCarteProfessionnel.DataPrenom2.Caption:='';      PrintCarteProfessionnel.DataPrenom2.Enabled:=Visible;
          PrintCarteProfessionnel.DataDateNais2.Caption:='';    PrintCarteProfessionnel.DataDateNais2.Enabled:=Visible;          
          PrintCarteProfessionnel.DataFonction2.Caption:='';    PrintCarteProfessionnel.DataFonction2.Enabled:=Visible;
          PrintCarteProfessionnel.DataEntrepriseA2.Caption:=''; PrintCarteProfessionnel.DataEntrepriseA2.Enabled:=Visible;
          PrintCarteProfessionnel.DataEntrepriseB2.Caption:=''; PrintCarteProfessionnel.DataEntrepriseB2.Enabled:=Visible;
     end;
end;


procedure TFSGenerateurAccesPrivilegies.TimerLancerAfficheTiersTimer(
  Sender: TObject);
begin
     FSGenerateurAccesPrivilegies.TimerLancerAfficheTiers.Enabled:=false;

     while(GetTickCount-TimeKeyUp<200)do
     begin
          Exit;
     end;

     FSGenerateurAccesPrivilegies.TimerAfficheTiers.Enabled:=true;
end;

procedure TFSGenerateurAccesPrivilegies.TimerAfficheTiersTimer(
  Sender: TObject);
begin
     Application.ProcessMessages;
     FSGenerateurAccesPrivilegies.TimerAfficheTiers.Enabled:=false;

     while(GetTickCount-TimeKeyUp<200)do
     begin
          Exit;
     end;

     ListeTiersMotsCle(FSGenerateurAccesPrivilegies.TableauTiers,FSGenerateurAccesPrivilegies.EditTiersTypeProces.Text,FSGenerateurAccesPrivilegies.EditTiersFichierConserne.Text,'','',FSGenerateurAccesPrivilegies.EditNomUtilisateur.Text,FSTiers.EditNbrKeyUp,FSTiers.EditNbrKeyUpMemo,FSGenerateurAccesPrivilegies.TimerLancerAfficheTiers,false,FSGenerateurAccesPrivilegies.RBMotCle.Checked);
end;

procedure TFSGenerateurAccesPrivilegies.EditNomUtilisateurKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if(FSGenerateurAccesPrivilegies.AfficheTableauTiers.Visible=true)then
     begin
          TimeKeyUp:=GetTickCount;
          FSTiers.EditNbrKeyUp.Text:=inttostr(Longueur(FSGenerateurAccesPrivilegies.EditNomUtilisateur.Text));

          while(GetTickCount-TimeKeyUp<200)do
          begin
               Application.ProcessMessages;
          end;

          FSGenerateurAccesPrivilegies.TimerLancerAfficheTiers.Enabled:=true;
     end;
end;

procedure TFSGenerateurAccesPrivilegies.TableauTiersKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var  OrdreCodeBarre:integer;  CodeBarre,SeriCodeBarre:string;  OK:boolean;
begin
     if key in[VK_RETURN]then
     begin
          RTiersCopie:=ChercherTiers(FSGenerateurAccesPrivilegies.EditTiersTypeProces.Text,FSGenerateurAccesPrivilegies.EditTiersFichierConserne.Text,FSGenerateurAccesPrivilegies.TableauTiers.Cells[1,FSGenerateurAccesPrivilegies.TableauTiers.Row],'');

          //////////////////////////////////////////////////////////////////////
           TypeProces:='Business';   FichierConcerne:='FUtilisateur';
           if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
           end;
           ChUtilisateur:=Adresse;
           assignfile(FUtilisateur,ChUtilisateur);
           if FileExists(ChUtilisateur)then
           Reset(FUtilisateur)
           else Rewrite(FUtilisateur);
           Seek(FUtilisateur,0);
           OK:=false;
           SeriCodeBarre:='630';
           OrdreCodeBarre:=1;
           while(not eof(FUtilisateur)and(OK=false))do
           begin
                Read(FUtilisateur,RUtilisateur);

                if(RUtilisateur.CodeUtilisateur=RTiersCopie.CodeTiers)then
                begin
                     OK:=true;
                     showmessage('L''utilisateur est déjas enrregistré !');
                     exit;
                end;

                if(Firstlaters(RUtilisateur.CodeAcces,1)='§')then
                begin
                     CodeBarre:=Lastlaters(RUtilisateur.CodeAcces,longueur(RUtilisateur.CodeAcces)-1);
                     if(firstlaters(CodeBarre,3)=SeriCodeBarre)then
                     begin
                          if(OrdreCodeBarre<=strtointeger(lastlaters(firstlaters(CodeBarre,7),4)))then OrdreCodeBarre:=strtointeger(lastlaters(firstlaters(CodeBarre,7),4))+1;
                     end
                end;

                if(RUtilisateur.CodeUtilisateur=FSGenerateurAccesPrivilegies.EditModifCodeUtilisateur.Text)then
                begin
                     if(Firstlaters(RUtilisateur.CodeAcces,1)='§')then
                     begin
                          OK:=true;
                          CodeBarre:=Lastlaters(RUtilisateur.CodeAcces,longueur(RUtilisateur.CodeAcces)-1);
                          FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text:=RUtilisateur.CodeAcces;
                          ChargerCodeBarre('',firstlaters(CodeBarre,7),'');
                          FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text:='§'+FSEtiquettesCodeBarre.EditCodebarre.Text;
                          FSGenerateurAccesPrivilegies.ImageCodebarre.Width:=FSEtiquettesCodeBarre.ImageCodebarre.Width;
                          FSGenerateurAccesPrivilegies.ImageCodebarre.Height:=FSEtiquettesCodeBarre.ImageCodebarre.Height;
                          FSGenerateurAccesPrivilegies.ImageCodebarre.Picture:=FSEtiquettesCodeBarre.ImageCodebarre.Picture;
                     end;
                end;
           end;
           CloseFile(FUtilisateur);
          //////////////////////////////////////////////////////////////////////
          FSGenerateurAccesPrivilegies.EditCodeUtilisateur.Text:=RTiersCopie.CodeTiers;
          FSGenerateurAccesPrivilegies.EditNomUtilisateur.Text:=RTiersCopie.NomTiers;
          FSGenerateurAccesPrivilegies.EditPrenomUtilisateur.Text:=RTiersCopie.PrenomTiers;
          FSGenerateurAccesPrivilegies.EditFonctionUtilisateur.Text:=RTiersCopie.FonctionTiers;
          FSGenerateurAccesPrivilegies.AfficheTableauTiers.Visible:=false;

          if(Firstlaters(FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text,1)='§')then
          begin
               CodeBarre:=Lastlaters(FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text,longueur(FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text)-1);
               ChargerCodeBarre('',firstlaters(CodeBarre,7),'');
               FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text:='§'+FSEtiquettesCodeBarre.EditCodebarre.Text;
               FSGenerateurAccesPrivilegies.ImageCodebarre.Width:=FSEtiquettesCodeBarre.ImageCodebarre.Width;
               FSGenerateurAccesPrivilegies.ImageCodebarre.Height:=FSEtiquettesCodeBarre.ImageCodebarre.Height;
               FSGenerateurAccesPrivilegies.ImageCodebarre.Picture:=FSEtiquettesCodeBarre.ImageCodebarre.Picture;
               FSGenerateurAccesPrivilegies.BitOperationUtilisateur.SetFocus;
               exit;
          end
          else
          begin
               FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.Text:='';
               FSGenerateurAccesPrivilegies.ImageCodebarre.Picture:=FSMenuPrincipal.PhotoVide.Picture;
               FSGenerateurAccesPrivilegies.EditCodeAccesUtilisateur.SetFocus;
          end;
     end;

     if key in[VK_ESCAPE]then
     begin
          FSGenerateurAccesPrivilegies.AfficheTableauTiers.Visible:=false;
          FSGenerateurAccesPrivilegies.EditNomUtilisateur.SetFocus;
     end;
end;

procedure TFSGenerateurAccesPrivilegies.RBImporterPersonnelClick(
  Sender: TObject);
begin
     FSGenerateurAccesPrivilegies.AfficheTableauTiers.Visible:=FSGenerateurAccesPrivilegies.RBImporterPersonnel.Checked;
end;

procedure TFSGenerateurAccesPrivilegies.BitBtn1Click(Sender: TObject);
begin
     FSGenerateurAccesPrivilegies.RBImporterPersonnel.Checked:=true;

     FSGenerateurAccesPrivilegies.AfficheTableauTiers.Left:=FSGenerateurAccesPrivilegies.AfficheUtilisateur.Left+
                                                            FSGenerateurAccesPrivilegies.EditNomUtilisateur.Left;
     FSGenerateurAccesPrivilegies.AfficheTableauTiers.Top:=FSGenerateurAccesPrivilegies.AfficheUtilisateur.Top+
                                                           FSGenerateurAccesPrivilegies.EditNomUtilisateur.Top+
                                                           FSGenerateurAccesPrivilegies.EditNomUtilisateur.Height+5;
     FSGenerateurAccesPrivilegies.AfficheTableauTiers.Visible:=FSGenerateurAccesPrivilegies.RBImporterPersonnel.Checked;

     FSGenerateurAccesPrivilegies.TimerLancerAfficheTiers.Enabled:=true;

     FSGenerateurAccesPrivilegies.TableauTiers.SetFocus;
end;

procedure TFSGenerateurAccesPrivilegies.EditTiersTypeProcesSelect(
  Sender: TObject);
begin
     ListeTypeFichierTiersBox(FSGenerateurAccesPrivilegies.EditTiersTypeProces.Text,'','',FSGenerateurAccesPrivilegies.EditTiersFichierConserne,FSGenerateurAccesPrivilegies.TitreEditTiersFichierConserne);
end;

procedure TFSGenerateurAccesPrivilegies.EditTiersTypeProcesChange(
  Sender: TObject);
begin
     FSGenerateurAccesPrivilegies.TimerLancerAfficheTiers.Enabled:=true;
end;

procedure TFSGenerateurAccesPrivilegies.EditTiersFichierConserneChange(
  Sender: TObject);
begin
     FSGenerateurAccesPrivilegies.TimerLancerAfficheTiers.Enabled:=true;
end;

end.
