unit UnitFSAutorisationPartageRegistre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids;

type
    TFSAutorisationPartageRegistre = class(TForm)
    PageControl1: TPageControl;
    PagePartageTiers: TTabSheet;
    Panel1: TPanel;
    EditTitreFichierConcerne: TLabel;
    Label83: TLabel;
    Bevel13: TBevel;
    EditFichierConcerne: TComboBox;
    EditSelectTypeProces: TComboBox;
    BitBtn2: TBitBtn;
    RBAjuster: TCheckBox;
    RBIndiceRubriqueTriCol: TCheckBox;
    EditIndiceRubriqueTriCol: TEdit;
    EditTypeDataTrie: TEdit;
    EditTypeTrie: TComboBox;
    Panel3: TPanel;
    Label15: TLabel;
    EditRechercheTiers: TEdit;
    RadioGroup1: TRadioGroup;
    RBRechercheTiersEntie: TRadioButton;
    RBRechercheTiersMotCle: TRadioButton;
    TableauTiers: TStringGrid;
    AfficheOperationAutorisationPartageRegistre: TPanel;
    BitBtn1: TBitBtn;
    BitOperationAutorisationPartageRegistre: TBitBtn;
    LabelPositionAPR: TLabel;
    EditPositionAPR: TEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    LabelFichierConcerne: TLabel;
    EditFichierConcerneRegistre: TEdit;
    LabelCodeRegistre: TLabel;
    EditCodeRegistre: TEdit;
    LabelRegistreInvisibleReseaux: TLabel;
    LabelValeurInvisibleReseaux: TLabel;
    EditNomDossierPartageReseaux: TEdit;
    LabelNomDossierPartageReseaux: TLabel;
    Panel2: TPanel;
    RadioGroup2: TRadioGroup;
    RBRegistreInvisibleReseaux: TRadioButton;
    RBRegistreVisibleReseaux: TRadioButton;
    Panel4: TPanel;
    RadioGroup3: TRadioGroup;
    RBValeurInvisibleReseaux: TRadioButton;
    RBValeurVisibleReseaux: TRadioButton;
    Bevel3: TBevel;
    Label1: TLabel;
    EditRechercheNomDossierPartageReseaux: TComboBox;
    TabSheet1: TTabSheet;
    TableauAutorisationPartageRegistre: TStringGrid;
    AfficheOperationTableauAutorisationPartageRegistre: TPanel;
    BitBtn3: TBitBtn;
    BitOperationTableauAutorisationPartageRegistre: TBitBtn;
    Bevel4: TBevel;
    EditTypeProcesRegistre: TEdit;
    Label2: TLabel;
    Panel5: TPanel;
    EditTitreFichierConcerneListe: TLabel;
    Label4: TLabel;
    Bevel14: TBevel;
    EditFichierConcerneListe: TComboBox;
    EditTypeProcesListe: TComboBox;
    BitBtn19: TBitBtn;
    RBAjusterListe: TCheckBox;
    RBIndiceRubriqueTriColListe: TCheckBox;
    EditIndiceRubriqueTriColListe: TEdit;
    EditTypeDataTrieListe: TEdit;
    EditTypeTrieListe: TComboBox;
    Panel6: TPanel;
    EditNomDossierPartageReseauxListe: TComboBox;
    Label11: TLabel;
    EditOperationAddNomDossierPartageReseaux: TEdit;
    EditAddNomDossierPartageReseaux: TEdit;
    TimerAddNomDossierPartageReseaux: TTimer;
    EditDesignationRegistre: TEdit;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    EditTypeCodification: TComboBox;
    Label3: TLabel;
    EditNbrKeyUpMemo: TEdit;
    EditNbrKeyUp: TEdit;
    TimerLancerAfficheTiers: TTimer;
    TimerAfficheTiers: TTimer;
    procedure EditSelectTypeProcesChange(Sender: TObject);
    procedure EditFichierConcerneSelect(Sender: TObject);
    procedure TableauTiersClick(Sender: TObject);
    procedure RBRechercheTiersEntieClick(Sender: TObject);
    procedure EditRechercheTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRechercheTiersKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitOperationAutorisationPartageRegistreClick(Sender: TObject);
    procedure TableauTiersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet1Show(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitOperationTableauAutorisationPartageRegistreClick(Sender: TObject);
    procedure TableauAutorisationPartageRegistreClick(Sender: TObject);
    procedure TableauAutorisationPartageRegistreKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtn19Click(Sender: TObject);
    procedure EditTypeProcesListeChange(Sender: TObject);
    procedure EditFichierConcerneListeChange(Sender: TObject);
    procedure EditNomDossierPartageReseauxListeChange(
      Sender: TObject);
    procedure EditRechercheNomDossierPartageReseauxSelect(Sender: TObject);
    procedure EditRechercheNomDossierPartageReseauxKeyPress(
      Sender: TObject; var Key: Char);
    procedure TimerAddNomDossierPartageReseauxTimer(Sender: TObject);
    procedure EditRechercheTiersEnter(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure TableauAutorisationPartageRegistreDblClick(Sender: TObject);
    procedure PagePartageTiersShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure EditTypeCodificationSelect(Sender: TObject);
    procedure TimerLancerAfficheTiersTimer(Sender: TObject);
    procedure TimerAfficheTiersTimer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSAutorisationPartageRegistre: TFSAutorisationPartageRegistre;

  Procedure ListeAutorisationPartageRegistre(TableauAutorisationPartageRegistre:TStringGrid; TypeProcesRegistre,FichierConcerneRegistre,NomDossierPartageReseaux:string);
  Procedure ProcAfficherAutorisationRegistreReseaux(TypeProcesRegistre,FichierConcerneRegistre,NomDossierPartageReseaux,AdresseAutorisation:string);

implementation

uses UnitInitialisation, UnitPointeurs, UnitSuppression, UnitFSTiers, UnitFSGenerateurMouvement,
     UnitFSMenuPrincipal, UnitFSPlanComptable, UnitFSParametresAvances;

{$R *.dfm}

procedure TFSAutorisationPartageRegistre.EditSelectTypeProcesChange(
  Sender: TObject);
begin
     FSAutorisationPartageRegistre.AfficheOperationAutorisationPartageRegistre.Visible:=false;
     ListeTypeFichierTiersBox(FSAutorisationPartageRegistre.EditSelectTypeProces.Text,'','',FSAutorisationPartageRegistre.EditFichierConcerne,FSAutorisationPartageRegistre.EditTitreFichierConcerne);

     ActivePointeurAutorisationPartageRegistre(FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'',true);

     if(FSAutorisationPartageRegistre.EditTypeCodification.Text='Tiers')then
     begin
          FSAutorisationPartageRegistre.EditRechercheTiers.Text:='';
          ListeTiersMotsCle(FSAutorisationPartageRegistre.TableauTiers,FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,'','',FSAutorisationPartageRegistre.EditRechercheTiers.Text,FSAutorisationPartageRegistre.EditNbrKeyUp,FSAutorisationPartageRegistre.EditNbrKeyUpMemo,FSAutorisationPartageRegistre.TimerLancerAfficheTiers,false,FSAutorisationPartageRegistre.RBRechercheTiersMotCle.Checked);
     end
     else
     begin
          FSAutorisationPartageRegistre.EditRechercheTiers.Text:=lastlaters(FSAutorisationPartageRegistre.EditFichierConcerne.Text,longueur(FSAutorisationPartageRegistre.EditFichierConcerne.Text)-1);
          ListePlanComptable(FSAutorisationPartageRegistre.TableauTiers,FSAutorisationPartageRegistre.EditTypeCodification.ItemIndex+1,'',Lastlaters(FSAutorisationPartageRegistre.EditFichierConcerne.Text,longueur(FSAutorisationPartageRegistre.EditFichierConcerne.Text)-1),'PlanComptable');
     end;

     ProcAfficherAutorisationRegistreReseaux(FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'');
     
     ImporteTitreDataTiers(FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text);
end;

procedure TFSAutorisationPartageRegistre.EditFichierConcerneSelect(
  Sender: TObject);
begin
     FSAutorisationPartageRegistre.AfficheOperationAutorisationPartageRegistre.Visible:=false;

     ActivePointeurAutorisationPartageRegistre(FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'',true);
     
     if(FSAutorisationPartageRegistre.EditTypeCodification.Text='Tiers')then
     begin
          FSAutorisationPartageRegistre.EditRechercheTiers.Text:='';
          ListeTiersMotsCle(FSAutorisationPartageRegistre.TableauTiers,FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,'','',FSAutorisationPartageRegistre.EditRechercheTiers.Text,FSAutorisationPartageRegistre.EditNbrKeyUp,FSAutorisationPartageRegistre.EditNbrKeyUpMemo,FSAutorisationPartageRegistre.TimerLancerAfficheTiers,false,FSAutorisationPartageRegistre.RBRechercheTiersMotCle.Checked);
     end
     else
     begin
          FSAutorisationPartageRegistre.EditRechercheTiers.Text:=lastlaters(FSAutorisationPartageRegistre.EditFichierConcerne.Text,longueur(FSAutorisationPartageRegistre.EditFichierConcerne.Text)-1);
          ListePlanComptable(FSAutorisationPartageRegistre.TableauTiers,FSAutorisationPartageRegistre.EditTypeCodification.ItemIndex+1,'',Lastlaters(FSAutorisationPartageRegistre.EditFichierConcerne.Text,longueur(FSAutorisationPartageRegistre.EditFichierConcerne.Text)-1),'PlanComptable');
     end;
     
     ImporteTitreDataTiers(FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text);

     ProcAfficherAutorisationRegistreReseaux(FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'');
end;

procedure TFSAutorisationPartageRegistre.TableauTiersClick(
  Sender: TObject);
begin
     FSAutorisationPartageRegistre.AfficheOperationAutorisationPartageRegistre.Visible:=false;

     if(FSAutorisationPartageRegistre.RBIndiceRubriqueTriCol.Checked=true)then
     begin
          FSAutorisationPartageRegistre.RBIndiceRubriqueTriCol.Checked:=false;
          FSAutorisationPartageRegistre.EditIndiceRubriqueTriCol.Text:=inttostr(FSAutorisationPartageRegistre.TableauTiers.Col);
          if(FSAutorisationPartageRegistre.TableauTiers.Col in[1])
          then FSAutorisationPartageRegistre.EditTypeDataTrie.Text:='Num'
          else FSAutorisationPartageRegistre.EditTypeDataTrie.Text:='';
          TrierTableauARowSpecial(FSAutorisationPartageRegistre.TableauTiers,1,FSAutorisationPartageRegistre.TableauTiers.RowCount-1,1,FSAutorisationPartageRegistre.EditIndiceRubriqueTriCol.Text,FSAutorisationPartageRegistre.EditTypeDataTrie.Text,FSAutorisationPartageRegistre.EditTypeTrie.Text);
     end;
end;

procedure TFSAutorisationPartageRegistre.RBRechercheTiersEntieClick(
  Sender: TObject);
begin
     if(FSAutorisationPartageRegistre.EditTypeCodification.Text='Tiers')then
     begin
          ListeTiersMotsCle(FSAutorisationPartageRegistre.TableauTiers,FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,'','',FSAutorisationPartageRegistre.EditRechercheTiers.Text,FSAutorisationPartageRegistre.EditNbrKeyUp,FSAutorisationPartageRegistre.EditNbrKeyUpMemo,FSAutorisationPartageRegistre.TimerLancerAfficheTiers,false,FSAutorisationPartageRegistre.RBRechercheTiersMotCle.Checked);
     end
     else
     begin
          ListePlanComptable(FSAutorisationPartageRegistre.TableauTiers,FSAutorisationPartageRegistre.EditTypeCodification.ItemIndex+1,'',FSAutorisationPartageRegistre.EditRechercheTiers.Text,'PlanComptable');
     end;

     ProcAfficherAutorisationRegistreReseaux(FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'');
     
     FSAutorisationPartageRegistre.EditRechercheTiers.SetFocus;
end;

procedure TFSAutorisationPartageRegistre.EditRechercheTiersKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSAutorisationPartageRegistre.TableauTiers.SetFocus;
     end;
end;

procedure TFSAutorisationPartageRegistre.EditRechercheTiersKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     FSAutorisationPartageRegistre.EditNbrKeyUp.Text:=inttostr(Longueur(FSAutorisationPartageRegistre.EditRechercheTiers.Text));
     FSAutorisationPartageRegistre.TimerLancerAfficheTiers.Enabled:=true;

end;

procedure TFSAutorisationPartageRegistre.BitBtn2Click(Sender: TObject);
var R:integer; TitreEtat:string; AjustePrint:boolean; OrintationPapier:string; FontGrasARow,FontGrasACol,AlignementCenterARow,AlignementCenterACol,AlignementRightARow,AlignementRightACol:string; ImprimeEtat:boolean;
begin
     TitreEtat:='Autorisation partage de registres';
     AjustePrint:=FSAutorisationPartageRegistre.RBAjuster.Checked;
     OrintationPapier:='Portrait';
     FontGrasARow:='0';
     FontGrasACol:='';
     AlignementCenterARow:='0';
     AlignementCenterACol:='0;1';
     AlignementRightARow:='';
     AlignementRightACol:='';
     ImprimeEtat:=true;
     R:=0;
     OptionsImpression(FSAutorisationPartageRegistre.TableauTiers,'Center',R,1,TitreEtat,AjustePrint,OrintationPapier,FontGrasARow,FontGrasACol,AlignementCenterARow,AlignementCenterACol,AlignementRightARow,AlignementRightACol,ImprimeEtat,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSAutorisationPartageRegistre.BitBtn1Click(Sender: TObject);
begin
     FSAutorisationPartageRegistre.AfficheOperationAutorisationPartageRegistre.Visible:=false;
end;

procedure TFSAutorisationPartageRegistre.BitOperationAutorisationPartageRegistreClick(Sender: TObject);
var  i,RExistant,RSupprimer,RSauvgarder:integer;   OKAutorisationPartageRegistre,OKConfirme,SuspendrePublication:boolean;
     TypeProces,FichierConserne,Adresse,EmplacementLocalOuReseaux:string;
begin

if(FSAutorisationPartageRegistre.BitOperationAutorisationPartageRegistre.Caption='Valider')then
begin                               
          TypeProces:='Business';   FichierConserne:='FAutorisationPartageRegistre';
          if not(FunctionAdresseProces(TypeProces,FichierConserne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               Affichermessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConserne+' recherché !');
          end;

          ChAutorisationPartageRegistre:=Adresse;
          assignfile(FAutorisationPartageRegistre,ChAutorisationPartageRegistre);
          if FileExists(ChAutorisationPartageRegistre)then
          Reset(FAutorisationPartageRegistre)
          else Rewrite(FAutorisationPartageRegistre);
          Seek(FAutorisationPartageRegistre,0);
          i:=0;
          OKAutorisationPartageRegistre:=false;
          while not eof(FAutorisationPartageRegistre)and(OKAutorisationPartageRegistre=false)do
          begin
               read(FAutorisationPartageRegistre,RAutorisationPartageRegistre);
               if(RAutorisationPartageRegistre.FichierConcerneRegistre=FSAutorisationPartageRegistre.EditFichierConcerneRegistre.Text)
               and(RAutorisationPartageRegistre.CodeRegistre=FSAutorisationPartageRegistre.EditCodeRegistre.Text)
               and(FunctionFichierInclu(RAutorisationPartageRegistre.NomDossierPartageReseaux,FSAutorisationPartageRegistre.EditNomDossierPartageReseaux.Text)or(FunctionFichierInclu(FSAutorisationPartageRegistre.EditNomDossierPartageReseaux.Text,RAutorisationPartageRegistre.NomDossierPartageReseaux)))
               then OKAutorisationPartageRegistre:=true
               else i:=i+1;
          end;

          RAutorisationPartageRegistre.PositionAPR:=i;
          RAutorisationPartageRegistre.TypeProces:=FSAutorisationPartageRegistre.EditTypeProcesRegistre.Text;
          RAutorisationPartageRegistre.FichierConcerneRegistre:=FSAutorisationPartageRegistre.EditFichierConcerne.Text;
          RAutorisationPartageRegistre.TypeCodification:=FSAutorisationPartageRegistre.EditTypeCodification.Text;
          RAutorisationPartageRegistre.CodeRegistre:=FSAutorisationPartageRegistre.EditCodeRegistre.Text;
          RAutorisationPartageRegistre.NomDossierPartageReseaux:=FSAutorisationPartageRegistre.EditNomDossierPartageReseaux.Text;
          RAutorisationPartageRegistre.RegistreInvisibleReseaux:=RBRegistreInvisibleReseaux.Checked;
          RAutorisationPartageRegistre.ValeurInvisibleReseaux:=RBValeurInvisibleReseaux.Checked;

          Seek(FAutorisationPartageRegistre,i);
          write(FAutorisationPartageRegistre,RAutorisationPartageRegistre);
          CloseFile(FAutorisationPartageRegistre);
end;

if(FSAutorisationPartageRegistre.BitOperationAutorisationPartageRegistre.Caption='Supprimer')then
begin
     DeleteFAutorisationPartageRegistre(FSAutorisationPartageRegistre.EditPositionAPR.Text,OKConfirme);
end;
FSAutorisationPartageRegistre.AfficheOperationAutorisationPartageRegistre.Visible:=false;

FichierConserne:='FAutorisationPartageRegistre';
EmplacementLocalOuReseaux:='';
PublierDansLeReseaux(FichierConserne,EmplacementLocalOuReseaux,'',FSMenuPrincipal.RBImporteAutorisationReseaux.Checked);

ActivePointeurAutorisationPartageRegistre(FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'',true);

ProcAfficherAutorisationRegistreReseaux(FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'');

FSAutorisationPartageRegistre.TableauTiers.SetFocus;
end;

procedure TFSAutorisationPartageRegistre.TableauTiersKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSAutorisationPartageRegistre.AfficheOperationAutorisationPartageRegistre.Visible:=true;
          FSAutorisationPartageRegistre.BitOperationAutorisationPartageRegistre.Caption:='Valider';

          FSAutorisationPartageRegistre.EditPositionAPR.Text:='';
          FSAutorisationPartageRegistre.EditTypeProcesRegistre.Text:=FSAutorisationPartageRegistre.EditSelectTypeProces.Text;
          FSAutorisationPartageRegistre.EditFichierConcerneRegistre.Text:=FSAutorisationPartageRegistre.EditFichierConcerne.Text;
          FSAutorisationPartageRegistre.EditCodeRegistre.Text:=FSAutorisationPartageRegistre.TableauTiers.Cells[1,FSAutorisationPartageRegistre.TableauTiers.Row];

          if(FSAutorisationPartageRegistre.EditTypeCodification.Text='Tiers')then
          begin
               RTiers:=ChercherTiers(FSAutorisationPartageRegistre.EditTypeProcesRegistre.Text,FSAutorisationPartageRegistre.EditFichierConcerneRegistre.Text,FSAutorisationPartageRegistre.EditCodeRegistre.Text,'');
               FSAutorisationPartageRegistre.EditDesignationRegistre.Text:=RTiers.NomTiers+' '+RTiers.PrenomTiers;
          end
          else
          begin
               ChercherCompteComptable(FSAutorisationPartageRegistre.EditCodeRegistre.Text,inttostr(FSAutorisationPartageRegistre.EditTypeCodification.ItemIndex+1),'PlanComptable',RRegistreCompte);
               FSAutorisationPartageRegistre.EditDesignationRegistre.Text:=RRegistreCompte.Designation;
          end;

          FSAutorisationPartageRegistre.RBRegistreInvisibleReseaux.Checked:=RegistreInvisibleReseaux(FSAutorisationPartageRegistre.EditTypeProcesRegistre.Text,FSAutorisationPartageRegistre.EditFichierConcerneRegistre.Text,FSAutorisationPartageRegistre.EditCodeRegistre.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'',RAutorisationPartageRegistreCopie);
          FSAutorisationPartageRegistre.RBRegistreVisibleReseaux.Checked:=Not FSAutorisationPartageRegistre.RBRegistreInvisibleReseaux.Checked;

          FSAutorisationPartageRegistre.RBValeurInvisibleReseaux.Checked:=ValeurInvisibleReseaux(FSAutorisationPartageRegistre.EditTypeProcesRegistre.Text,FSAutorisationPartageRegistre.EditFichierConcerneRegistre.Text,FSAutorisationPartageRegistre.EditCodeRegistre.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'',RAutorisationPartageRegistreCopie);
          FSAutorisationPartageRegistre.RBValeurVisibleReseaux.Checked:=Not FSAutorisationPartageRegistre.RBValeurInvisibleReseaux.Checked;

          if(RAutorisationPartageRegistreCopie.NomDossierPartageReseaux<>'')
          then FSAutorisationPartageRegistre.EditNomDossierPartageReseaux.Text:=RAutorisationPartageRegistreCopie.NomDossierPartageReseaux
          else FSAutorisationPartageRegistre.EditNomDossierPartageReseaux.Text:=FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text;
     end;
end;

Procedure ListeAutorisationPartageRegistre(TableauAutorisationPartageRegistre:TStringGrid; TypeProcesRegistre,FichierConcerneRegistre,NomDossierPartageReseaux:string);
var  R:integer;        OKAutorisationPartageRegistre:boolean;    TypeProces,FichierConcerne,Adresse:string;
begin
     TableauAutorisationPartageRegistre.ColCount:=9;
     TableauAutorisationPartageRegistre.Cols[0].Text:='Ord';
     TableauAutorisationPartageRegistre.Cols[1].Text:='P°';
     TableauAutorisationPartageRegistre.Cols[2].Text:='Type Proces';
     TableauAutorisationPartageRegistre.Cols[3].Text:='Fichier';
     TableauAutorisationPartageRegistre.Cols[4].Text:='Code';
     TableauAutorisationPartageRegistre.Cols[5].Text:='Désignation';
     TableauAutorisationPartageRegistre.Cols[6].Text:='Nom Dossier Partagé';
     TableauAutorisationPartageRegistre.Cols[7].Text:='Regsitre Invisible';
     TableauAutorisationPartageRegistre.Cols[8].Text:='Valeur Invisible';


     TableauAutorisationPartageRegistre.RowCount:=2;
     TableauAutorisationPartageRegistre.Rows[1].Text:='';

     TypeProces:='Business';   FichierConcerne:='FAutorisationPartageRegistre';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
         Affichermessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
     end;

     ChAutorisationPartageRegistre:=Adresse;
     assignfile(FAutorisationPartageRegistre,ChAutorisationPartageRegistre);
     if FileExists(ChAutorisationPartageRegistre)then
     Reset(FAutorisationPartageRegistre)
     else Rewrite(FAutorisationPartageRegistre);
     Seek(FAutorisationPartageRegistre,0);
     R:=0;
     while not eof(FAutorisationPartageRegistre)do
     begin
          read(FAutorisationPartageRegistre,RAutorisationPartageRegistre);

          if(TypeProcesRegistre<>'')then
          begin
               if(RAutorisationPartageRegistre.TypeProces=TypeProcesRegistre)
               then OKAutorisationPartageRegistre:=true
               else OKAutorisationPartageRegistre:=false;
          end
          else OKAutorisationPartageRegistre:=true;

          if(OKAutorisationPartageRegistre=true)then
          begin
               if(FichierConcerneRegistre<>'')then
               begin
                    if(RAutorisationPartageRegistre.FichierConcerneRegistre=FichierConcerneRegistre)
                    then OKAutorisationPartageRegistre:=true
                    else OKAutorisationPartageRegistre:=false;
               end;
          end;
          
          if(OKAutorisationPartageRegistre=true)then
          begin
               if(NomDossierPartageReseaux<>'')then
               begin
                    if(FunctionFichierInclu(NomDossierPartageReseaux,RAutorisationPartageRegistre.NomDossierPartageReseaux))
                    then OKAutorisationPartageRegistre:=true
                    else OKAutorisationPartageRegistre:=false;
               end;
          end; 

          if(OKAutorisationPartageRegistre=true)then
          begin
               R:=R+1;
               TableauAutorisationPartageRegistre.Rows[R].Text:=inttostr(R);
               TableauAutorisationPartageRegistre.Cells[1,R]:=inttostr(RAutorisationPartageRegistre.PositionAPR);
               TableauAutorisationPartageRegistre.Cells[2,R]:=RAutorisationPartageRegistre.TypeProces;
               TableauAutorisationPartageRegistre.Cells[3,R]:=RAutorisationPartageRegistre.FichierConcerneRegistre;
               TableauAutorisationPartageRegistre.Cells[4,R]:=RAutorisationPartageRegistre.CodeRegistre;

               if(RAutorisationPartageRegistre.TypeCodification='Tiers')then
               begin
                    RTiers:=ChercherTiers(RAutorisationPartageRegistre.TypeProces,RAutorisationPartageRegistre.FichierConcerneRegistre,RAutorisationPartageRegistre.CodeRegistre,'');
                    TableauAutorisationPartageRegistre.Cells[5,R]:=RTiers.NomTiers+' '+RTiers.PrenomTiers;
               end
               else
               begin
                    ChercherCompteComptable(RAutorisationPartageRegistre.CodeRegistre,inttostr(longueur(RAutorisationPartageRegistre.CodeRegistre)),'PlanComptable',RRegistreCompte);
                    TableauAutorisationPartageRegistre.Cells[5,R]:=RRegistreCompte.Designation;
               end;

               TableauAutorisationPartageRegistre.Cells[6,R]:=RAutorisationPartageRegistre.NomDossierPartageReseaux;

               if(RAutorisationPartageRegistre.RegistreInvisibleReseaux=true)
               then TableauAutorisationPartageRegistre.Cells[7,R]:='Invisible'
               else TableauAutorisationPartageRegistre.Cells[7,R]:='Visible';

               if(RAutorisationPartageRegistre.ValeurInvisibleReseaux=true)
               then TableauAutorisationPartageRegistre.Cells[8,R]:='Invisible'
               else TableauAutorisationPartageRegistre.Cells[8,R]:='Visible';
          end;
     end;
     CloseFile(FAutorisationPartageRegistre);

     if(R>0)then TableauAutorisationPartageRegistre.RowCount:=R+1
            else TableauAutorisationPartageRegistre.RowCount:=2;

     AjusterColWidth(TableauAutorisationPartageRegistre,'','');

     TrierTableauARowSpecial(TableauAutorisationPartageRegistre,1,TableauAutorisationPartageRegistre.RowCount-1,1,FSAutorisationPartageRegistre.EditIndiceRubriqueTriColListe.Text,FSAutorisationPartageRegistre.EditTypeDataTrieListe.Text,FSAutorisationPartageRegistre.EditTypeTrieListe.Text);
end;

procedure TFSAutorisationPartageRegistre.TabSheet1Show(Sender: TObject);
begin
     ListeAutorisationPartageRegistre(FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre,FSAutorisationPartageRegistre.EditTypeProcesListe.Text,FSAutorisationPartageRegistre.EditFichierConcerneListe.Text,FSAutorisationPartageRegistre.EditNomDossierPartageReseauxListe.Text);
end;

procedure TFSAutorisationPartageRegistre.BitBtn3Click(Sender: TObject);
begin
     FSAutorisationPartageRegistre.AfficheOperationTableauAutorisationPartageRegistre.Visible:=false;
end;

procedure TFSAutorisationPartageRegistre.BitOperationTableauAutorisationPartageRegistreClick(Sender: TObject);
var  OKConfirme:boolean; FichierConserne,EmplacementLocalOuReseaux:string;
begin
     DeleteFAutorisationPartageRegistre(FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre.Cells[1,FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre.Row],OKConfirme);
     ListeAutorisationPartageRegistre(FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre,FSAutorisationPartageRegistre.EditTypeProcesListe.Text,FSAutorisationPartageRegistre.EditFichierConcerneListe.Text,FSAutorisationPartageRegistre.EditNomDossierPartageReseauxListe.Text);
     FSAutorisationPartageRegistre.AfficheOperationTableauAutorisationPartageRegistre.Visible:=false;

     ActivePointeurAutorisationPartageRegistre(FSAutorisationPartageRegistre.EditTypeProcesListe.Text,FSAutorisationPartageRegistre.EditFichierConcerneListe.Text,FSAutorisationPartageRegistre.EditNomDossierPartageReseauxListe.Text,'',true);

     FichierConserne:='FAutorisationPartageRegistre';
     EmplacementLocalOuReseaux:='';
     PublierDansLeReseaux(FichierConserne,EmplacementLocalOuReseaux,'',FSMenuPrincipal.RBImporteAutorisationReseaux.Checked);

     FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre.SetFocus;
end;

procedure TFSAutorisationPartageRegistre.TableauAutorisationPartageRegistreClick(
  Sender: TObject);
begin
     FSAutorisationPartageRegistre.AfficheOperationTableauAutorisationPartageRegistre.Visible:=false;

     if(FSAutorisationPartageRegistre.RBIndiceRubriqueTriColListe.Checked=true)then
     begin
          FSAutorisationPartageRegistre.RBIndiceRubriqueTriColListe.Checked:=false;
          FSAutorisationPartageRegistre.EditIndiceRubriqueTriColListe.Text:=inttostr(FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre.Col);
          if(FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre.Col in[1])
          then FSAutorisationPartageRegistre.EditTypeDataTrieListe.Text:='Num'
          else FSAutorisationPartageRegistre.EditTypeDataTrieListe.Text:='';
          TrierTableauARowSpecial(FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre,1,FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre.RowCount-1,1,FSAutorisationPartageRegistre.EditIndiceRubriqueTriColListe.Text,FSAutorisationPartageRegistre.EditTypeDataTrieListe.Text,FSAutorisationPartageRegistre.EditTypeTrieListe.Text);
     end;
end;

procedure TFSAutorisationPartageRegistre.TableauAutorisationPartageRegistreKeyPress(
  Sender: TObject; var Key: Char);
begin
     if(key in['s','S'])then
     begin
          FSAutorisationPartageRegistre.AfficheOperationTableauAutorisationPartageRegistre.Caption:='Supprimer le registre !';
          FSAutorisationPartageRegistre.AfficheOperationTableauAutorisationPartageRegistre.Visible:=true;
          FSAutorisationPartageRegistre.BitOperationTableauAutorisationPartageRegistre.SetFocus;
     end;
end;

procedure TFSAutorisationPartageRegistre.BitBtn19Click(Sender: TObject);
var R:integer; TitreEtat:string; AjustePrint:boolean; OrintationPapier:string; FontGrasARow,FontGrasACol,AlignementCenterARow,AlignementCenterACol,AlignementRightARow,AlignementRightACol:string; ImprimeEtat:boolean;
begin
     TitreEtat:='Autorisation partage de registres';
     AjustePrint:=FSAutorisationPartageRegistre.RBAjusterListe.Checked;
     OrintationPapier:='Portrait';
     FontGrasARow:='0';
     FontGrasACol:='';
     AlignementCenterARow:='0';
     AlignementCenterACol:='0;1';
     AlignementRightARow:='';
     AlignementRightACol:='';
     ImprimeEtat:=true;
     R:=0;
     OptionsImpression(FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre,'Center',R,1,TitreEtat,AjustePrint,OrintationPapier,FontGrasARow,FontGrasACol,AlignementCenterARow,AlignementCenterACol,AlignementRightARow,AlignementRightACol,ImprimeEtat,1,FSMenuPrincipal.ImageCodebarre,true,R);
end;

procedure TFSAutorisationPartageRegistre.EditTypeProcesListeChange(
  Sender: TObject);
begin
     ListeTypeFichierTiersBox(FSAutorisationPartageRegistre.EditTypeProcesListe.Text,'','',FSAutorisationPartageRegistre.EditFichierConcerneListe,FSAutorisationPartageRegistre.EditTitreFichierConcerneListe);
     ListeAutorisationPartageRegistre(FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre,FSAutorisationPartageRegistre.EditTypeProcesListe.Text,FSAutorisationPartageRegistre.EditFichierConcerneListe.Text,FSAutorisationPartageRegistre.EditNomDossierPartageReseauxListe.Text);
end;

procedure TFSAutorisationPartageRegistre.EditFichierConcerneListeChange(
  Sender: TObject);
begin
     ListeAutorisationPartageRegistre(FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre,FSAutorisationPartageRegistre.EditTypeProcesListe.Text,FSAutorisationPartageRegistre.EditFichierConcerneListe.Text,FSAutorisationPartageRegistre.EditNomDossierPartageReseauxListe.Text);
end;

procedure TFSAutorisationPartageRegistre.EditNomDossierPartageReseauxListeChange(
  Sender: TObject);
begin
     ListeAutorisationPartageRegistre(FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre,FSAutorisationPartageRegistre.EditTypeProcesListe.Text,FSAutorisationPartageRegistre.EditFichierConcerneListe.Text,FSAutorisationPartageRegistre.EditNomDossierPartageReseauxListe.Text);
end;
      
procedure TFSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseauxSelect(
  Sender: TObject);
begin
     if(FSAutorisationPartageRegistre.EditOperationAddNomDossierPartageReseaux.Text='+')then
     begin
          if not(FunctionFichierInclu(FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,FSAutorisationPartageRegistre.EditAddNomDossierPartageReseaux.Text))
          and(FSAutorisationPartageRegistre.EditAddNomDossierPartageReseaux.Text<>'')then
          begin
               FSAutorisationPartageRegistre.EditAddNomDossierPartageReseaux.Text:=FSAutorisationPartageRegistre.EditAddNomDossierPartageReseaux.Text+';'+FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text;
          end;

     FSAutorisationPartageRegistre.TimerAddNomDossierPartageReseaux.Enabled:=true;
     end;

     if(FSAutorisationPartageRegistre.AfficheOperationAutorisationPartageRegistre.Visible=true)then
     begin
          FSAutorisationPartageRegistre.RBRegistreInvisibleReseaux.Checked:=RegistreInvisibleReseaux(FSAutorisationPartageRegistre.EditTypeProcesRegistre.Text,FSAutorisationPartageRegistre.EditFichierConcerneRegistre.Text,FSAutorisationPartageRegistre.EditCodeRegistre.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'',RAutorisationPartageRegistreCopie);
          FSAutorisationPartageRegistre.RBRegistreVisibleReseaux.Checked:=Not FSAutorisationPartageRegistre.RBRegistreInvisibleReseaux.Checked;

          FSAutorisationPartageRegistre.RBValeurInvisibleReseaux.Checked:=ValeurInvisibleReseaux(FSAutorisationPartageRegistre.EditTypeProcesRegistre.Text,FSAutorisationPartageRegistre.EditFichierConcerneRegistre.Text,FSAutorisationPartageRegistre.EditCodeRegistre.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'',RAutorisationPartageRegistreCopie);
          FSAutorisationPartageRegistre.RBValeurVisibleReseaux.Checked:=Not FSAutorisationPartageRegistre.RBValeurInvisibleReseaux.Checked;

          if(RAutorisationPartageRegistreCopie.NomDossierPartageReseaux<>'')
          then FSAutorisationPartageRegistre.EditNomDossierPartageReseaux.Text:=RAutorisationPartageRegistreCopie.NomDossierPartageReseaux
          else FSAutorisationPartageRegistre.EditNomDossierPartageReseaux.Text:=FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text;
     end;

     ProcAfficherAutorisationRegistreReseaux(FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'');
end;

procedure TFSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseauxKeyPress(
  Sender: TObject; var Key: Char);
begin
     if(key='+')then
     begin
          FSAutorisationPartageRegistre.EditOperationAddNomDossierPartageReseaux.Text:=key;
          FSAutorisationPartageRegistre.EditAddNomDossierPartageReseaux.Text:=FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text;
     end;
     key:=#0;
end;

procedure TFSAutorisationPartageRegistre.TimerAddNomDossierPartageReseauxTimer(
  Sender: TObject);
begin
     FSAutorisationPartageRegistre.TimerAddNomDossierPartageReseaux.Enabled:=false;

     if(FSAutorisationPartageRegistre.EditOperationAddNomDossierPartageReseaux.Text='+')then
     begin
          if(FSAutorisationPartageRegistre.EditAddNomDossierPartageReseaux.Text<>'')then
          begin
               FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text:=FSAutorisationPartageRegistre.EditAddNomDossierPartageReseaux.Text;
          end;

     FSAutorisationPartageRegistre.EditOperationAddNomDossierPartageReseaux.Text:='';
     FSAutorisationPartageRegistre.EditAddNomDossierPartageReseaux.Text:='';
     end;
end;

procedure TFSAutorisationPartageRegistre.EditRechercheTiersEnter(
  Sender: TObject);
begin
     FSAutorisationPartageRegistre.AfficheOperationAutorisationPartageRegistre.Visible:=false;
end;

procedure TFSAutorisationPartageRegistre.BitBtn5Click(Sender: TObject);
var  FichierConserne,EmplacementLocalOuReseaux:string;
     SuspendrePublication:boolean;
begin
     FSMenuPrincipal.EditRapport.Text:='';

     FichierConserne:='FAutorisationPartageRegistre';
     EmplacementLocalOuReseaux:='';
     PublierDansLeReseaux(FichierConserne,EmplacementLocalOuReseaux,'',FSMenuPrincipal.RBImporteAutorisationReseaux.Checked);

     FSMenuPrincipal.AfficheRapport.Visible:=FunctAfficherRapportPublicationReseaux;
end;

procedure TFSAutorisationPartageRegistre.TableauAutorisationPartageRegistreDblClick(
  Sender: TObject);
begin
     //i()then
     begin
          FSAutorisationPartageRegistre.PagePartageTiers.Show;
          FSAutorisationPartageRegistre.EditSelectTypeProces.Text:=FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre.Cells[2,FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre.Row];
          FSAutorisationPartageRegistre.EditFichierConcerne.Text:=FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre.Cells[3,FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre.Row];
          FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text:=FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre.Cells[6,FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre.Row];

          FSAutorisationPartageRegistre.AfficheOperationAutorisationPartageRegistre.Visible:=true;
          FSAutorisationPartageRegistre.BitOperationAutorisationPartageRegistre.Caption:='Valider';

          FSAutorisationPartageRegistre.EditPositionAPR.Text:='';
          FSAutorisationPartageRegistre.EditTypeProcesRegistre.Text:=FSAutorisationPartageRegistre.EditSelectTypeProces.Text;
          FSAutorisationPartageRegistre.EditFichierConcerneRegistre.Text:=FSAutorisationPartageRegistre.EditFichierConcerne.Text;
          FSAutorisationPartageRegistre.EditCodeRegistre.Text:=FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre.Cells[4,FSAutorisationPartageRegistre.TableauAutorisationPartageRegistre.Row];;
          RTiers:=ChercherTiers(FSAutorisationPartageRegistre.EditTypeProcesRegistre.Text,FSAutorisationPartageRegistre.EditFichierConcerneRegistre.Text,FSAutorisationPartageRegistre.EditCodeRegistre.Text,'');
          FSAutorisationPartageRegistre.EditDesignationRegistre.Text:=RTiers.NomTiers+' '+RTiers.PrenomTiers;

          FSAutorisationPartageRegistre.RBRegistreInvisibleReseaux.Checked:=RegistreInvisibleReseaux(FSAutorisationPartageRegistre.EditTypeProcesRegistre.Text,FSAutorisationPartageRegistre.EditFichierConcerneRegistre.Text,FSAutorisationPartageRegistre.EditCodeRegistre.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'',RAutorisationPartageRegistreCopie);
          FSAutorisationPartageRegistre.RBRegistreVisibleReseaux.Checked:=Not FSAutorisationPartageRegistre.RBRegistreInvisibleReseaux.Checked;

          FSAutorisationPartageRegistre.RBValeurInvisibleReseaux.Checked:=ValeurInvisibleReseaux(FSAutorisationPartageRegistre.EditTypeProcesRegistre.Text,FSAutorisationPartageRegistre.EditFichierConcerneRegistre.Text,FSAutorisationPartageRegistre.EditCodeRegistre.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'',RAutorisationPartageRegistreCopie);
          FSAutorisationPartageRegistre.RBValeurVisibleReseaux.Checked:=Not FSAutorisationPartageRegistre.RBValeurInvisibleReseaux.Checked;

          if(RAutorisationPartageRegistreCopie.NomDossierPartageReseaux<>'')
          then FSAutorisationPartageRegistre.EditNomDossierPartageReseaux.Text:=RAutorisationPartageRegistreCopie.NomDossierPartageReseaux
          else FSAutorisationPartageRegistre.EditNomDossierPartageReseaux.Text:=FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text;
     end;
end;

procedure TFSAutorisationPartageRegistre.PagePartageTiersShow(
  Sender: TObject);
begin
     FSAutorisationPartageRegistre.AfficheOperationAutorisationPartageRegistre.Visible:=false;
end;

procedure TFSAutorisationPartageRegistre.BitBtn4Click(Sender: TObject);
begin
     FSAutorisationPartageRegistre.EditNomDossierPartageReseaux.Text:=FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text;
end;

procedure TFSAutorisationPartageRegistre.BitBtn6Click(Sender: TObject);
begin
     
     FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text:='';

     OpenFParc(RParc);
     ChAdresseDossierPartageReseaux:=RParc.Parcours+'\'+Exercice+'FAdresseDossierPartageReseaux';
     assignfile(FAdresseDossierPartageReseaux,ChAdresseDossierPartageReseaux);
     if FileExists(ChAdresseDossierPartageReseaux)then
     Reset(FAdresseDossierPartageReseaux)
     else Rewrite(FAdresseDossierPartageReseaux);
     Seek(FAdresseDossierPartageReseaux,0);
     while not eof(FAdresseDossierPartageReseaux)do
     begin
          read(FAdresseDossierPartageReseaux,RAdresseDossierPartageReseaux);
          if(RAdresseDossierPartageReseaux.EmlacementLocalOuReseaux='Réseaux')then
          begin
               if(FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text='')
               then FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text:=RAdresseDossierPartageReseaux.NomPosteReseaux
               else FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text:=FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text+';'+RAdresseDossierPartageReseaux.NomPosteReseaux;
          end;
     end;
     CloseFile(FAdresseDossierPartageReseaux);
end;

Procedure ProcAfficherAutorisationRegistreReseaux(TypeProcesRegistre,FichierConcerneRegistre,NomDossierPartageReseaux,AdresseAutorisation:string);
var  R:integer;   CodeRegistre:string;
begin
     FSAutorisationPartageRegistre.TableauTiers.ColCount:=5;
     FSAutorisationPartageRegistre.TableauTiers.Cols[3].Text:='Registre Invisible';
     FSAutorisationPartageRegistre.TableauTiers.Cols[4].Text:='Valeur Invisible';
     for R:=1 to FSAutorisationPartageRegistre.TableauTiers.RowCount-1 do
     begin
          CodeRegistre:=FSAutorisationPartageRegistre.TableauTiers.Cells[1,R];

          //RegistreInvisibleReseaux(TypeProcesRegistre,FichierConcerneRegistre,CodeRegistre,NomDossierPartageReseaux,AdresseAutorisation,RAutorisationPartageRegistreCopie);

          RegistreInvisibleReseauxPointeur(TypeProcesRegistre,FichierConcerneRegistre,CodeRegistre,NomDossierPartageReseaux,AdresseAutorisation,RAutorisationPartageRegistreCopie);
          
          if(RAutorisationPartageRegistreCopie.FichierConcerneRegistre='Introuvable')then
          begin
               FSAutorisationPartageRegistre.TableauTiers.Cells[3,R]:='';
          end
          else
          begin
               if(RAutorisationPartageRegistreCopie.RegistreInvisibleReseaux=true)
               then FSAutorisationPartageRegistre.TableauTiers.Cells[3,R]:='Invisible'
               else FSAutorisationPartageRegistre.TableauTiers.Cells[3,R]:='Visible';
          end;


          if(RAutorisationPartageRegistreCopie.FichierConcerneRegistre='Introuvable')then
          begin
               FSAutorisationPartageRegistre.TableauTiers.Cells[4,R]:='';
          end
          else
          begin
               if(RAutorisationPartageRegistreCopie.ValeurInvisibleReseaux=true)
               then FSAutorisationPartageRegistre.TableauTiers.Cells[4,R]:='Invisible'
               else FSAutorisationPartageRegistre.TableauTiers.Cells[4,R]:='Visible';
          end;
     end;

     AjusterColWidth(FSAutorisationPartageRegistre.TableauTiers,'','');

     TrierTableauARowSpecial(FSAutorisationPartageRegistre.TableauTiers,1,FSAutorisationPartageRegistre.TableauTiers.RowCount-1,1,FSAutorisationPartageRegistre.EditIndiceRubriqueTriCol.Text,FSAutorisationPartageRegistre.EditTypeDataTrie.Text,FSAutorisationPartageRegistre.EditTypeTrie.Text);
end;

procedure TFSAutorisationPartageRegistre.EditTypeCodificationSelect(
  Sender: TObject);
begin
     if(FSAutorisationPartageRegistre.EditTypeCodification.Text='Tiers')then
     begin
          FSAutorisationPartageRegistre.EditRechercheTiers.Text:='';
          ListeTiersMotsCle(FSAutorisationPartageRegistre.TableauTiers,FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,'','',FSAutorisationPartageRegistre.EditRechercheTiers.Text,FSAutorisationPartageRegistre.EditNbrKeyUp,FSAutorisationPartageRegistre.EditNbrKeyUpMemo,FSAutorisationPartageRegistre.TimerLancerAfficheTiers,false,FSAutorisationPartageRegistre.RBRechercheTiersMotCle.Checked);
     end
     else
     begin
          ListePlanComptable(FSAutorisationPartageRegistre.TableauTiers,FSAutorisationPartageRegistre.EditTypeCodification.ItemIndex+1,'',FSAutorisationPartageRegistre.EditRechercheTiers.Text,'PlanComptable');
     end;

     ProcAfficherAutorisationRegistreReseaux(FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'');
end;

procedure TFSAutorisationPartageRegistre.TimerLancerAfficheTiersTimer(
  Sender: TObject);
begin
     Application.ProcessMessages;
     FSAutorisationPartageRegistre.TimerLancerAfficheTiers.Enabled:=false;
     FSAutorisationPartageRegistre.TimerAfficheTiers.Enabled:=true;
end;

procedure TFSAutorisationPartageRegistre.TimerAfficheTiersTimer(
  Sender: TObject);
begin
     Application.ProcessMessages;
     FSAutorisationPartageRegistre.TimerAfficheTiers.Enabled:=false;

     if(FSAutorisationPartageRegistre.EditTypeCodification.Text='Tiers')then
     begin
          ListeTiersMotsCle(FSAutorisationPartageRegistre.TableauTiers,FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,'','',FSAutorisationPartageRegistre.EditRechercheTiers.Text,FSAutorisationPartageRegistre.EditNbrKeyUp,FSAutorisationPartageRegistre.EditNbrKeyUpMemo,FSAutorisationPartageRegistre.TimerLancerAfficheTiers,false,FSAutorisationPartageRegistre.RBRechercheTiersMotCle.Checked);
     end
     else
     begin
          ListePlanComptable(FSAutorisationPartageRegistre.TableauTiers,FSAutorisationPartageRegistre.EditTypeCodification.ItemIndex+1,'',FSAutorisationPartageRegistre.EditRechercheTiers.Text,'PlanComptable');
     end;

     ProcAfficherAutorisationRegistreReseaux(FSAutorisationPartageRegistre.EditSelectTypeProces.Text,FSAutorisationPartageRegistre.EditFichierConcerne.Text,FSAutorisationPartageRegistre.EditRechercheNomDossierPartageReseaux.Text,'');
end;

end.
