unit UnitFSNowPrelevement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, Grids;

type
  TFSNowPrelevement = class(TForm)
    Panel1: TPanel;
    EditNumPrelevement: TEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label2: TLabel;
    EditCodeUtilisateur: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditUtilisateur: TEdit;
    EditDatePrelevement: TDateTimePicker;
    EditHeurePrelevement: TDateTimePicker;
    BitNowPrelevement: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel3: TBevel;
    EditNumEquipe: TEdit;
    EditDesignationEquipe: TEdit;
    Panel2: TPanel;
    TableauEffectifEquipe: TStringGrid;
    TableauEquipe: TStringGrid;
    AfficheAffectationEffectifEquipe: TPanel;
    TableauAffectationEffectifEquipe: TStringGrid;
    AfficherOperationAffectationEffectifEquipe: TPanel;
    EditTrierAffectationEffectifEquipe: TEdit;
    TableauSelection: TStringGrid;
    PageAffectationCompteur: TPageControl;
    PageCompteurs: TTabSheet;
    PageGroupeCompteurs: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel4: TBevel;
    EditNumAffectationEffectifEquipe: TEdit;
    EditNumCompteurAffecter: TEdit;
    EditNumUniteFonds: TEdit;
    EditValeurAffecter: TEdit;
    BitBtn1: TBitBtn;
    BitAffectationEffectifEquipe: TBitBtn;
    EditCompteurAffecter: TEdit;
    EditUniteFondsAffecter: TEdit;
    Label10: TLabel;
    EditNumAffectationCompteur: TEdit;
    EditDesignationAffectationCompteur: TEdit;
    Label11: TLabel;
    EditValeurAffecterAffectationCompteur: TEdit;
    BitAffectationCompteurs: TBitBtn;
    BitBtn4: TBitBtn;
    Bevel5: TBevel;
    EditUniteFondsAffecterAffectationCompteur: TEdit;
    EditNumUniteFondsAffectationCompteur: TEdit;
    Label12: TLabel;
    RadioGroup1: TRadioGroup;
    RBGroupeCompteurs: TRadioButton;
    RBCompteurs: TRadioButton;
    TimerControle: TTimer;
    EditListeRowSelect: TEdit;
    EditPositionPrelevement: TEdit;
    UpDown1: TUpDown;
    AfficheListePrelevementManquants: TPanel;
    TableauListePrelevementManquants: TStringGrid;
    BitBtn3: TBitBtn;
    Bevel6: TBevel;
    Bevel7: TBevel;
    procedure EditNumEquipeEnter(Sender: TObject);
    procedure TableauEquipeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauEquipeClick(Sender: TObject);
    procedure EditDatePrelevementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHeurePrelevementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumEquipeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitNowPrelevementClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableauEquipeDblClick(Sender: TObject);
    procedure TableauEffectifEquipeDblClick(Sender: TObject);
    procedure TableauAffectationEffectifEquipeClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitAffectationEffectifEquipeClick(Sender: TObject);
    procedure TableauAffectationEffectifEquipeKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditNumAffectationEffectifEquipeKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditNumCompteurAffecterKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditNumUniteFondsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditValeurAffecterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauSelectionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumCompteurAffecterEnter(Sender: TObject);
    procedure EditNumUniteFondsEnter(Sender: TObject);
    procedure TableauEffectifEquipeClick(Sender: TObject);
    procedure TableauAffectationEffectifEquipeKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditDesignationAffectationCompteurEnter(Sender: TObject);
    procedure EditDesignationAffectationCompteurKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure EditValeurAffecterAffectationCompteurKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitAffectationCompteursClick(Sender: TObject);
    procedure PageAffectationCompteurChange(Sender: TObject);
    procedure EditNumUniteFondsAffectationCompteurEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerControleTimer(Sender: TObject);
    procedure TableauEffectifEquipeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauAffectationEffectifEquipeDblClick(Sender: TObject);
    procedure TableauSelectionDblClick(Sender: TObject);
    procedure EditValeurAffecterAffectationCompteurDblClick(
      Sender: TObject);
    procedure EditNumPrelevementDblClick(Sender: TObject);
    procedure TableauListePrelevementManquantsDblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TableauListePrelevementManquantsDrawCell(Sender: TObject;
      ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauEffectifEquipeDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauAffectationEffectifEquipeDrawCell(Sender: TObject;
      ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableauEquipeDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TableauSelectionDrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSNowPrelevement: TFSNowPrelevement;

Procedure AfficherPrelevement(OKEffectifEquipe,OKAffectationEffectifEquipe,OKPrelevementUniteFonds,OKDetailArticle,OKArborescenceArticle,OKDetailTypeUniteFonds,OKDetailTiers,OKEtatStockPrelevement,OKRecapitulatif:boolean; TableauCompteur,TableauTitreCompteur,TableauArticle,TableauTitreArticle,TableauUniteFonds,TableauTitreUniteFonds,TableauDetailTypeUniteFonds,TableauTitreDetailTypeUniteFonds,TableauDetailTiers,TableauTitreDetailTiers,TableauEquipe,TableauTitreEquipe,TableauEffectifEquipe,TableauTitreEffectifEquipe,TableauUtilisateur,TableauTitreUtilisateur:TStringGrid; MemoCummulCompteur,MemoFondRoulement,MemoMontantArticle,MemoCummulUniteFonds,MemoDetailTypeUniteFonds,MemoCumuleSelectTypeUniteFonds,MemoMontantTiers,MemoSolde:TMemo; EditNumPrelevementCompteur,EditNumPrelevementUniteFond:TEdit; NumPrelevement,NumPrelevementFin,MatriculeEffectif:string; var NumStructure:string);
Procedure PrelevementEffectifEquipe(TableauEquipe,TableauTitreEquipe,TableauEffectifEquipe,TableauTitreEffectifEquipe,TableauUtilisateur,TableauTitreUtilisateur:TStringGrid; NumPrelevement,NumPrelevementFin,Matricule:string);
Procedure ProcPrelevementUniteFonds(TableauUniteFonds,TableauTitreUniteFonds:TStringGrid; MemoCummulUniteFonds:TMemo; EditNumPrelevementUniteFonds:TEdit; NumPrelevement,NumPrelevementFin,MatriculeEffectif,NumUniteFondsSelect:string);
Procedure AfficheDetailTiers(TableauDetailTiers,TableauTitreDetailTiers:TStringGrid; MemoMontantTiers,MemoFondRoulement:TMemo; NumPrelevement,NumPrelevementFin,Matricule:string; AddTiers:boolean);
Procedure AfficheDetailTypeUniteFonds(TableauUniteFonds,TableauDetailTypeUniteFonds,TableauTitreDetailTypeUniteFonds:TStringGrid; MemoMontantTypeUnitsFonds,MemoCumuleSelectTypeUniteFonds:TMemo);
Procedure PrelevementCompteurs(TableauCompteur,TableauTitreCompteur:TStringGrid; MemoCummulCompteur:TMemo; EditNumPrelevementCompteur:TEdit; NumPrelevement,NumPrelevementFin,MatriculeEffectif:string);
Procedure AfficheDetailArticle(TableauCompteur,TableauArticle,TableauTitreArticle:TStringGrid; MemoMontantArticle:TMemo; NumPrelevement,NumPrelevementFin:string);
Function DataArchiveCompteur(NumPrelevement,Matricule,NumCompteur:string;  var DatePrelevement,HeurePrelevement:string; var ValeurPrelevement:real):boolean;
Function DataArchiveEtatStockPrelevement(NumPrelevement,Matricule,CodeArticle:string; var QuantiteInitiale,QuatiteEntree,QuantiteSortie,QuantiteStock:real):boolean;
Function ModifierArchiveEtatStockPrelevement(NumPrelevement,Matricule,CodeArticle:string; QuantiteInitiale,QuatiteEntree,QuantiteSortie,QuantiteStock:real):boolean;
Procedure ListeAffectationEffectifEquipe(TableauAffectationEffectifEquipe,TableauTitreAffectationEffectifEquipe:TStringGrid; NumPrelevement,NumEquipe,Matricule:string; MemoFondRoulement:TMemo; var NumStructure:string);
Function ControleTotalAffectationCompteur(NumPrelevement:string; var NbrCompteurPlanifier,NbrCompteurAffecter:integer):boolean;
Function ControleEffectifAffectationCompteur(NumPrelevement,Matricule,NumCompteur:string; var NbrCompteurAffecter:integer):boolean;
Procedure AfficheArborescenceArticle(TableauArborescenceArticle,TableauArticle,TableauTitreArborescenceArticle:TStringGrid; FichierConcerne:string);
Procedure AfficherRecapitulatif(TableauRecapitulatif:TStringGrid; MemoCummulCompteur,MemoFondRoulement,MemoMontantArticle,MemoCummulUniteFonds,MemoDetailTypeUniteFonds,MemoCumuleSelectTypeUniteFonds,MemoMontantTiers,MemoSolde:TMemo);
Procedure CalculeCompteurPrelevement(TypeIndicePrelevement:string; PrixPrelevement,ValeurInitiale,ValeurMouvement,ValeurPrelevement:real; var QteOperation,MontantOperation:real);
Function NatureOperationPrelevement(NumPrelevement,Matricule,NumPrelevementUniteFonds:string; InclureQuantite:boolean):string;
Procedure ControleEtatPrelevement;
Procedure ProTableauEffectifEquipeKeyDown;

implementation

Uses UnitInitialisation, API_LiberationProcessus, UnitSuppression, UnitFSGenerateurBase, UnitFSPrelevement,
     UnitFSTraitementDonnees, UnitFSMenuPrincipal, UnitFSTiers, UnitFSParametresAvances, UnitFSModuleCalculeFormiles,
  UnitFSListePrelevement, UnitFSAffichage, UnitFSFicheSaisie;

var
   RParc:RInstalle;
   FParc:FInstalle;
   ParcInstalle:string100;

   RRegistre:REnregistrement;
   FRegistre:FEnregistrement;
   ChEnregistrement:string250;

   RRegistreCompte:RRegistreComptes;
   FRegistreCompte:FRegistreComptes;
   ChRegistreCompte:string250;

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

   TPrelevement:TPrelevements;
   RPrelevement:RPrelevements;
   FPrelevement:FPrelevements;
   ChPrelevement:string250;

   TCompteur:TCompteurs;
   RCompteur:RCompteurs;
   FCompteur:FCompteurs;
   ChCompteur:string250;

   TPrelevementCompteur,TArchivePrelevementCompteur:TRegistrePrelevementCompteurs;
   RPrelevementCompteur,RArchivePrelevementCompteur:RRegistrePrelevementCompteurs;
   FPrelevementCompteur,FArchivePrelevementCompteur:FRegistrePrelevementCompteurs;
   ChPrelevementCompteur,ChArchivePrelevementCompteur:string250;

   TEquipe:TEquipes;
   REquipe:REquipes;
   FEquipe:FEquipes;
   ChEquipe:string250;

   TEffectifEquipe:TEffectifEquipes;
   REffectifEquipe:REffectifEquipes;
   FEffectifEquipe:FEffectifEquipes;
   ChEffectifEquipe:string250;

   TPrelevementEffectifEquipe,TArchivePrelevementEffectifEquipe:TRegistrePrelevementEffectifEquipes;
   RPrelevementEffectifEquipe,RArchivePrelevementEffectifEquipe:RRegistrePrelevementEffectifEquipes;
   FPrelevementEffectifEquipe,FArchivePrelevementEffectifEquipe:FRegistrePrelevementEffectifEquipes;
   ChPrelevementEffectifEquipe,ChArchivePrelevementEffectifEquipe:string250;

   TTypeUniteFonds:TTypeUniteFondss;
   RTypeUniteFonds:RTypeUniteFondss;
   FTypeUniteFonds:FTypeUniteFondss;
   ChTypeUniteFonds:string250;

   TUniteFonds:TUniteFondss;
   RUniteFonds:RUniteFondss;
   FUniteFonds:FUniteFondss;
   ChUniteFonds:string250;

   TPrelevementUniteFonds,TArchivePrelevementUniteFonds:TRegistrePrelevementUniteFondss;
   RPrelevementUniteFonds,RArchivePrelevementUniteFonds:RRegistrePrelevementUniteFondss;
   FPrelevementUniteFonds,FArchivePrelevementUniteFonds:FRegistrePrelevementUniteFondss;
   ChPrelevementUniteFonds,ChArchivePrelevementUniteFonds:string250;

   TAvis:TAviss;
   RAvis:RAviss;
   FAvis:FAviss;
   ChAvis:string250;

   TTypeAvis:TTypeAviss;
   RTypeAvis:RTypeAviss;
   FTypeAvis:FTypeAviss;
   ChTypeAvis:string250;

   TStock,TStockArticle:TStocks;
   RStock,RStockArticle:RStocks;
   FStock,FStockArticle:FStocks;
   ChStock,ChStockArticle:string250;

/////////////////////////////////////////////////////////////////////////////
TPersonnel:TPersonnels;
RPersonnel:RPersonnels;
FPersonnel:FPersonnels;
ChPersonnel:string250;
/////////////////////////////////////////////////////////////////////////////

{$R *.dfm}

Function DataArchiveCompteur(NumPrelevement,Matricule,NumCompteur:string;  var DatePrelevement,HeurePrelevement:string; var ValeurPrelevement:real):boolean;
var  i,PBegin,PEnd:integer;  OKPrelevement:boolean; FichierConcerne,PositionPrelevement:string;
begin
     PBegin:=0;
     PEnd:=999999999;
     RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);
     if(RPrelevement.Archiver=false)then
     begin
          FichierConcerne:='FPrelevementCompteur';
          PBegin:=0;
          PEnd:=999999999;
     end
     else
     begin
          FichierConcerne:='FArchivePrelevementCompteur';
          if(FSListePrelevement.RBUtiliserPositionArchive.Checked=true)then
          begin
               PBegin:=RPrelevement.RegistrePositionPrelevementCompteur.PositionArchiveBegin;
               PEnd:=RPrelevement.RegistrePositionPrelevementCompteur.PositionArchiveEnd;
          end
          else
          begin
               PBegin:=0;
               PEnd:=999999999;
          end;
     end;

     DatePrelevement:='';
     HeurePrelevement:='';
     ValeurPrelevement:=0;
     OpenFParc(RParc);
     ChArchivePrelevementCompteur:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FArchivePrelevementCompteur,ChArchivePrelevementCompteur);
     try
     if FileExists(ChArchivePrelevementCompteur)then
     Reset(FArchivePrelevementCompteur)
     else Rewrite(FArchivePrelevementCompteur);
     Seek(FArchivePrelevementCompteur,PBegin);
     OKPrelevement:=false;
     i:=PBegin;
     while not eof(FArchivePrelevementCompteur)and(OKPrelevement=false)and(i<=PEnd)do
     begin
          read(FArchivePrelevementCompteur,RArchivePrelevementCompteur);
          i:=i+1;

          if(NumPrelevement<>'')then
          begin
               if(RArchivePrelevementCompteur.NumPrelevement=strtointeger(NumPrelevement))
               then OKPrelevement:=true
               else OKPrelevement:=false;
          end
          else OKPrelevement:=false;

          if(OKPrelevement=true)then
          begin
               if(Matricule<>'')then
               begin
                    if(RArchivePrelevementCompteur.Matricule=Matricule)
                    then OKPrelevement:=true
                    else OKPrelevement:=false;
               end;
          end;

          if(OKPrelevement=true)then
          begin
               if(NumCompteur<>'')then
               begin
                    if(RArchivePrelevementCompteur.NumCompteur=strtointeger(NumCompteur))
                    then OKPrelevement:=true
                    else OKPrelevement:=false;
               end;
          end;

          if(OKPrelevement=true)
          then
          begin
               DatePrelevement:=RArchivePrelevementCompteur.DatePrelevement;
               HeurePrelevement:=RArchivePrelevementCompteur.HeurePrelevement;
               ValeurPrelevement:=RArchivePrelevementCompteur.ValeurPrelevement;
          end;
     end;
     finally
     CloseFile(FArchivePrelevementCompteur);
     end;

     DataArchiveCompteur:=OKPrelevement;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
     
     //if(OKPrelevement=false)then showmessage(FichierConcerne+': Compteur '+NumPrelevement+'/'+ChercherCompteur(strtointeger(NumCompteur)).DesignationCompteur+' introuvable !');
end;

Function DataArchiveEtatStockPrelevement(NumPrelevement,Matricule,CodeArticle:string; var QuantiteInitiale,QuatiteEntree,QuantiteSortie,QuantiteStock:real):boolean;
var  i,PBegin,PEnd:integer;  OKPrelevement,OKEtatStock:boolean; FichierConcerne,PositionPrelevement:string;
begin
     PBegin:=0;
     PEnd:=999999999;
     RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,'',PositionPrelevement);
     if(RPrelevement.Archiver=false)then
     begin
          FichierConcerne:='FRegistreEtatStockPrelevement';
          PBegin:=0;
          PEnd:=999999999;
     end
     else
     begin
          FichierConcerne:='FArchiveRegistreEtatStockPrelevement';
          if(FSListePrelevement.RBUtiliserPositionArchive.Checked=true)then
          begin
               //PBegin:=RPrelevement.RegistrePositionRegistreEtatStockPrelevement.PositionArchiveBegin;
               //PEnd:=RPrelevement.RegistrePositionRegistreEtatStockPrelevement.PositionArchiveEnd;
               PBegin:=0;
               PEnd:=999999999;
          end
          else
          begin
               PBegin:=0;
               PEnd:=999999999;
          end;
     end;

     QuantiteInitiale:=0;
     QuatiteEntree:=0;
     QuantiteSortie:=0;
     QuantiteStock:=0;

     OpenFParc(RParc);
     ChArchiveRegistreEtatStockPrelevement:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FArchiveRegistreEtatStockPrelevement,ChArchiveRegistreEtatStockPrelevement);
     try
     if FileExists(ChArchiveRegistreEtatStockPrelevement)then
     Reset(FArchiveRegistreEtatStockPrelevement)
     else Rewrite(FArchiveRegistreEtatStockPrelevement);
     Seek(FArchiveRegistreEtatStockPrelevement,PBegin);
     OKPrelevement:=false;
     i:=PBegin;
     while not eof(FArchiveRegistreEtatStockPrelevement)and(OKPrelevement=false)and(i<=PEnd)do
     begin
          read(FArchiveRegistreEtatStockPrelevement,RArchiveRegistreEtatStockPrelevement);
          i:=i+1;
          if(RArchiveRegistreEtatStockPrelevement.NumPrelevement=strtointeger(NumPrelevement))
          and(RArchiveRegistreEtatStockPrelevement.CodeArticle=CodeArticle)
          then OKEtatStock:=true
          else OKEtatStock:=false;

          if(OKEtatStock=true)then
          begin
               if(Matricule<>'')then
               begin
                    if(RArchiveRegistreEtatStockPrelevement.Matricule=Matricule)
                    then OKEtatStock:=true
                    else OKEtatStock:=false;
               end;
          end;

          if(OKEtatStock=true)then
          begin
               OKPrelevement:=true;
               QuantiteInitiale:=ValePrecis(RArchiveRegistreEtatStockPrelevement.QuantiteInitiale,2);
               QuatiteEntree:=ValePrecis(RArchiveRegistreEtatStockPrelevement.QuantiteEntree,2);
               QuantiteSortie:=ValePrecis(RArchiveRegistreEtatStockPrelevement.QuantiteSortie,2);
               QuantiteStock:=ValePrecis(RArchiveRegistreEtatStockPrelevement.QuantiteStock,2);
          end;
     end;
     finally
     CloseFile(FArchiveRegistreEtatStockPrelevement);
     end;

     DataArchiveEtatStockPrelevement:=OKPrelevement;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
end;

Function ModifierArchiveEtatStockPrelevement(NumPrelevement,Matricule,CodeArticle:string; QuantiteInitiale,QuatiteEntree,QuantiteSortie,QuantiteStock:real):boolean;
var  i,PBegin,PEnd:integer;  OKPrelevement,OKEtatStock:boolean; FichierConcerne,PositionPrelevement:string;
begin
     PBegin:=0;
     PEnd:=999999999;
     RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,'',PositionPrelevement);
     if(RPrelevement.Archiver=false)then
     begin
          FichierConcerne:='FRegistreEtatStockPrelevement';
          PBegin:=0;
          PEnd:=999999999;
     end
     else
     begin
          FichierConcerne:='FArchiveRegistreEtatStockPrelevement';
          if(FSListePrelevement.RBUtiliserPositionArchive.Checked=true)then
          begin
               //PBegin:=RPrelevement.RegistrePositionRegistreEtatStockPrelevement.PositionArchiveBegin;
               //PEnd:=RPrelevement.RegistrePositionRegistreEtatStockPrelevement.PositionArchiveEnd;
               PBegin:=0;
               PEnd:=999999999;
          end
          else
          begin
               PBegin:=0;
               PEnd:=999999999;
          end;
     end;

     OpenFParc(RParc);
     ChArchiveRegistreEtatStockPrelevement:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FArchiveRegistreEtatStockPrelevement,ChArchiveRegistreEtatStockPrelevement);
     try
     if FileExists(ChArchiveRegistreEtatStockPrelevement)then
     Reset(FArchiveRegistreEtatStockPrelevement)
     else Rewrite(FArchiveRegistreEtatStockPrelevement);
     Seek(FArchiveRegistreEtatStockPrelevement,PBegin);
     OKPrelevement:=false;
     i:=PBegin;                                         
     while not eof(FArchiveRegistreEtatStockPrelevement)and(OKPrelevement=false)and(i<=PEnd)do
     begin
          read(FArchiveRegistreEtatStockPrelevement,RArchiveRegistreEtatStockPrelevement);
          if(RArchiveRegistreEtatStockPrelevement.NumPrelevement=strtointeger(NumPrelevement))
          and(RArchiveRegistreEtatStockPrelevement.CodeArticle=CodeArticle)
          then OKEtatStock:=true
          else OKEtatStock:=false;

          if(OKEtatStock=true)then
          begin
               if(Matricule<>'')then
               begin
                    if(RArchiveRegistreEtatStockPrelevement.Matricule=Matricule)
                    then OKEtatStock:=true
                    else OKEtatStock:=false;
               end;
          end;

          if(OKEtatStock=true)then
          begin
               OKPrelevement:=true;
               RArchiveRegistreEtatStockPrelevement.QuantiteInitiale:=QuantiteInitiale;
               RArchiveRegistreEtatStockPrelevement.QuantiteEntree:=QuatiteEntree;
               RArchiveRegistreEtatStockPrelevement.QuantiteSortie:=QuantiteSortie;
               RArchiveRegistreEtatStockPrelevement.QuantiteStock:=QuantiteStock;
               Seek(FArchiveRegistreEtatStockPrelevement,i);
               Write(FArchiveRegistreEtatStockPrelevement,RArchiveRegistreEtatStockPrelevement);
          end;
     i:=i+1;
     end;
     finally
     CloseFile(FArchiveRegistreEtatStockPrelevement);
     end;

     ModifierArchiveEtatStockPrelevement:=OKPrelevement;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
end;

Procedure AfficherPrelevement(OKEffectifEquipe,OKAffectationEffectifEquipe,OKPrelevementUniteFonds,OKDetailArticle,OKArborescenceArticle,OKDetailTypeUniteFonds,OKDetailTiers,OKEtatStockPrelevement,OKRecapitulatif:boolean; TableauCompteur,TableauTitreCompteur,TableauArticle,TableauTitreArticle,TableauUniteFonds,TableauTitreUniteFonds,TableauDetailTypeUniteFonds,TableauTitreDetailTypeUniteFonds,TableauDetailTiers,TableauTitreDetailTiers,TableauEquipe,TableauTitreEquipe,TableauEffectifEquipe,TableauTitreEffectifEquipe,TableauUtilisateur,TableauTitreUtilisateur:TStringGrid; MemoCummulCompteur,MemoFondRoulement,MemoMontantArticle,MemoCummulUniteFonds,MemoDetailTypeUniteFonds,MemoCumuleSelectTypeUniteFonds,MemoMontantTiers,MemoSolde:TMemo; EditNumPrelevementCompteur,EditNumPrelevementUniteFond:TEdit; NumPrelevement,NumPrelevementFin,MatriculeEffectif:string; var NumStructure:string);
var  SoldeEcart:real; OKAutorisationEcart:boolean;
begin
     try

     FSPrelevement.RBArchiveModifier.Checked:=false;

     FSPrelevement.AfficheAttenteAffichePrelevement.Visible:=true;
     FSPrelevement.EditAttenteAffichePrelevement.SetFocus;
     FSPrelevement.PagePrincipale.Enabled:=false;
     FSPrelevement.ProgressAttenteAffichePrelevement.Min:=0;
     FSPrelevement.ProgressAttenteAffichePrelevement.Position:=0;
     FSPrelevement.ProgressAttenteAffichePrelevement.Max:=16;

     FSPrelevement.AffichePatienterSVP.Left:=FSPrelevement.AfficheDataCompteur.Left;
     FSPrelevement.AffichePatienterSVP.Top:=FSPrelevement.AfficheImprimerEtat.Top;

     FSPrelevement.EditSoldeCompteur.Lines.Text:='';
     FSPrelevement.EditSoldeUnitesFonds.Lines.Text:='';
     FSPrelevement.EditSoldedesSoldes.Lines.Text:='';

     ViderTableau(TableauCompteur,1);
     ViderTableau(TableauTitreCompteur,1);
     ViderTableau(TableauArticle,1);
     ViderTableau(TableauTitreArticle,1);
     ViderTableau(TableauUniteFonds,1);
     ViderTableau(TableauTitreUniteFonds,1);
     ViderTableau(TableauDetailTypeUniteFonds,1);
     ViderTableau(TableauTitreDetailTypeUniteFonds,1);
     ViderTableau(TableauDetailTiers,1);
     ViderTableau(TableauTitreDetailTiers,1);
     ViderTableau(TableauEquipe,1);
     ViderTableau(TableauTitreEquipe,1);
     ViderTableau(TableauEffectifEquipe,1);
     ViderTableau(TableauTitreEffectifEquipe,1);
     ViderTableau(TableauUtilisateur,1);
     ViderTableau(TableauTitreUtilisateur,1);

FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************

     FSPrelevement.BitImprimeEtatPrelevement.Enabled:=false;
     FSPrelevement.BitValiderEcart.Visible:=true;
     FSPrelevement.AfficheValiderEcart.Color:=clRed;
     FSPrelevement.AffichePatienterSVP.Visible:=true;

     FSPrelevement.AfficheDataCompteur.Color:=clRed;
     FSPrelevement.AfficheDataUnitesFonds.Color:=clRed;
     FSPrelevement.AfficheSolde.Color:=clRed;

     FSPrelevement.EditNumPrelevementTiers.Text:=NumPrelevement;
     FSPrelevement.EditNumPrelevementFinTiers.Text:=NumPrelevementFin;
     PrelevementCompteurs(TableauCompteur,TableauTitreCompteur,MemoCummulCompteur,EditNumPrelevementCompteur,NumPrelevement,NumPrelevementFin,MatriculeEffectif);

     if(OKEffectifEquipe)then PrelevementEffectifEquipe(TableauEquipe,TableauTitreEquipe,TableauEffectifEquipe,TableauTitreEffectifEquipe,TableauUtilisateur,TableauTitreUtilisateur,NumPrelevement,NumPrelevementFin,MatriculeEffectif);
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************
     if(OKAffectationEffectifEquipe)then ListeAffectationEffectifEquipe(FSPrelevement.TableauAffectationEffectifEquipe,FSPrelevement.TableauTitreAffectationEffectifEquipe,FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditNumEquipePrelevement.Text,FSPrelevement.EditMatricule.Text,FSPrelevement.EditFondRoulement,NumStructure);
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************
     if(OKPrelevementUniteFonds)then ProcPrelevementUniteFonds(TableauUniteFonds,TableauTitreUniteFonds,MemoCummulUniteFonds,EditNumPrelevementUniteFond,NumPrelevement,NumPrelevementFin,MatriculeEffectif,TableauUniteFonds.Cells[6,TableauUniteFonds.Row]);
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************
     MemoSolde.Text:=Vergule(floattostr(ValePrecis(strtoreal(MemoCummulUniteFonds.Text)-strtoreal(MemoCummulCompteur.Text)-strtoreal(MemoFondRoulement.Text),2)),'2','C','');
     if(strtoreal(MemoSolde.Text)<0)
     then MemoSolde.Color:=ClRed
     else MemoSolde.Color:=ClLime;

     FSPrelevement.EditControleSoldeAfficherPrelevement.Text:=MemoSolde.Text;
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************
     if(OKDetailArticle)then AfficheDetailArticle(TableauCompteur,TableauArticle,TableauTitreArticle,MemoMontantArticle,NumPrelevement,NumPrelevementFin);
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************
     if(OKArborescenceArticle)then AfficheArborescenceArticle(FSPrelevement.TableauArborescenceArticle,TableauArticle,FSPrelevement.TableauTitreArborescenceArticle,'F'+FSPrelevement.EditChoisAffichage.Text+FSPrelevement.EditExtentionFichier.Text);
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************
     if(OKDetailTypeUniteFonds)then AfficheDetailTypeUniteFonds(TableauUniteFonds,TableauDetailTypeUniteFonds,TableauTitreDetailTypeUniteFonds,MemoDetailTypeUniteFonds,MemoCumuleSelectTypeUniteFonds);
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************
     if(OKDetailTiers)then AfficheDetailTiers(TableauDetailTiers,TableauTitreDetailTiers,MemoMontantTiers,FSPrelevement.EditFondRoulement,NumPrelevement,NumPrelevementFin,FSPrelevement.EditMatricule.Text,True);
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************
     FSPrelevement.EditNumStructure.Text:=NumStructure;
     //ListeEtatStockPrelevement(FSPrelevement.TableauEtatStockPrelevement,TableauCompteur,NumStructure);
     if(OKEtatStockPrelevement)then AfficheEtatStockPrelevement(FSPrelevement.TableauEtatStockPrelevement,NumStructure,NumPrelevement,MatriculeEffectif);
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************
     if(OKRecapitulatif)then AfficherRecapitulatif(FSPrelevement.TableauRecapitulatif,MemoCummulCompteur,MemoFondRoulement,MemoMontantArticle,MemoCummulUniteFonds,MemoDetailTypeUniteFonds,MemoCumuleSelectTypeUniteFonds,MemoMontantTiers,MemoSolde);
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************
     OKAutorisationEcart:=true;

     SoldeEcart:=Strtoreal(FSPrelevement.EditControleMontantCompteurTableauPrelevementCompteur.Text)-Strtoreal(FSPrelevement.EditControleMontantCompteurTableauDetailTiers.Text);
     if(SoldeEcart<0)then SoldeEcart:=SoldeEcart*(-1);
     if(SoldeEcart>Strtoreal(FSPrelevement.EditEcartAutorise.Text))then OKAutorisationEcart:=false else FSPrelevement.AfficheDataCompteur.Color:=clLime;
     FSPrelevement.EditSoldeCompteur.Lines.Text:=Vergule(floattostr(SoldeEcart),'2','C','');
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************
     SoldeEcart:=Strtoreal(FSPrelevement.EditControleMontantUFTableauPrelevementUniteFonds.Text)-Strtoreal(FSPrelevement.EditControleMontantUFTableauDetailTiers.Text);
     if(SoldeEcart<0)then SoldeEcart:=SoldeEcart*(-1);
     if(SoldeEcart>Strtoreal(FSPrelevement.EditEcartAutorise.Text))then OKAutorisationEcart:=false else FSPrelevement.AfficheDataUnitesFonds.Color:=clLime;;
     FSPrelevement.EditSoldeUnitesFonds.Lines.Text:=Vergule(floattostr(SoldeEcart),'2','C','');
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************
     SoldeEcart:=Strtoreal(FSPrelevement.EditControleSoldeTableauEffectifEquipe.Text)-Strtoreal(FSPrelevement.EditControleSoldeAfficherPrelevement.Text);
     if(SoldeEcart<0)then SoldeEcart:=SoldeEcart*(-1);
     if(SoldeEcart>Strtoreal(FSPrelevement.EditEcartAutorise.Text))then OKAutorisationEcart:=false else FSPrelevement.AfficheSolde.Color:=clLime;;
     FSPrelevement.EditSoldedesSoldes.Lines.Text:=Vergule(floattostr(SoldeEcart),'2','C','');
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************
     if(OKAutorisationEcart=true)
     then
     begin
          FSPrelevement.BitImprimeEtatPrelevement.Enabled:=true;
          FSPrelevement.BitValiderEcart.Visible:=false;
          FSPrelevement.AfficheValiderEcart.Color:=clLime;
     end
     else
     begin
          FSPrelevement.BitImprimeEtatPrelevement.Enabled:=false;
          FSPrelevement.BitValiderEcart.Visible:=true;
          FSPrelevement.AfficheValiderEcart.Color:=clRed;
     end;

     FSPrelevement.AffichePatienterSVP.Visible:=false;
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************
     AfficherSoldeControle;
FSPrelevement.ProgressAttenteAffichePrelevement.StepIt;//*****************************************************


     FSPrelevement.AfficheAttenteAffichePrelevement.Visible:=false;
     FSPrelevement.PagePrincipale.Enabled:=true;

except
affichermessage('l''affichage du prélèvement interrompu !');
end;
end;

Procedure AfficheDetailTiers(TableauDetailTiers,TableauTitreDetailTiers:TStringGrid; MemoMontantTiers,MemoFondRoulement:TMemo; NumPrelevement,NumPrelevementFin,Matricule:string; AddTiers:boolean);
var  i,R,C,RTiers,NbrTiers,PBegin,PEnd:integer;  OKTiers,ExisteTiers,OKMatricule:boolean;    ValeurePrecise:real;
     FichierConcerne,NotCol,DateIn,HeureIn,DatePrelevement,HeurePrelevement,PositionPrelevement:string;
begin
     PBegin:=0;
     PEnd:=999999999;
     MemoMontantTiers.Text:='';

     TableauTitreDetailTiers.Rows[0].Text:='';
     TableauTitreDetailTiers.Cells[0,0]:='Détail par Tires';

     TableauDetailTiers.ColCount:=8;
     TableauDetailTiers.Cols[0].Text:='N°';
     TableauDetailTiers.Cols[1].Text:='NumPUF';
     TableauDetailTiers.Cols[2].Text:='NumP';
     TableauDetailTiers.Cols[3].Text:='Mode.Paie.';
     TableauDetailTiers.Cols[4].Text:='Code Tiers';
     TableauDetailTiers.Cols[5].Text:='Tiers';
     TableauDetailTiers.Cols[6].Text:='Pièce';
     TableauDetailTiers.Cols[7].Text:='Montant';
     TableauDetailTiers.RowCount:=2;
     TableauDetailTiers.Rows[1].Text:='';

     FichierConcerne:='FPrelevementUniteFonds';

     if(NumPrelevement<>'')and(NumPrelevementFin='')then
     begin
          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);
          if(RPrelevement.Archiver=false)then
          begin
               FichierConcerne:='FPrelevementUniteFonds';
               PBegin:=0;
               PEnd:=999999999;
          end
          else
          begin
               FichierConcerne:='FArchivePrelevementUniteFonds';
               if(FSListePrelevement.RBUtiliserPositionArchive.Checked=true)then
               begin
                    PBegin:=RPrelevement.RegistrePositionPrelevementUniteFonds.PositionArchiveBegin;
                    PEnd:=RPrelevement.RegistrePositionPrelevementUniteFonds.PositionArchiveEnd;
               end
               else
               begin
                    PBegin:=0;
                    PEnd:=999999999;
               end;
          end;

          DatePrelevement:=RPrelevement.DatePrelevement;
          HeurePrelevement:=RPrelevement.HeurePrelevement;
     end
     else
     begin
          FichierConcerne:='FArchivePrelevementUniteFonds';
          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevementFin),ExerciceAnnee,Matricule,PositionPrelevement);
          DateIn:=RPrelevement.DatePrelevement;
          HeureIn:=RPrelevement.HeurePrelevement;
          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);
          DatePrelevement:=RPrelevement.DatePrelevement;
          HeurePrelevement:=RPrelevement.HeurePrelevement;
     end;

     OpenFParc(RParc);
     ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
     try
     if FileExists(ChPrelevementUniteFonds)then
     Reset(FPrelevementUniteFonds)
     else Rewrite(FPrelevementUniteFonds);
     Seek(FPrelevementUniteFonds,PBegin);
     NbrTiers:=0;
     i:=PBegin;
     while not eof(FPrelevementUniteFonds)and(i<=PEnd)do
     begin
          read(FPrelevementUniteFonds,RPrelevementUniteFonds);

          //RUniteFondsCopie:=ChercherUniteFonds(inttostr(RPrelevementUniteFonds.NumUniteFonds));

          i:=i+1;
          OKTiers:=false;
          ExisteTiers:=false;
          //OKMatricule:=false;

          if(RPrelevementUniteFonds.ValeurPrecise=true)then
          begin
               ValeurePrecise:=0;
               OKTiers:=false;
          end
          else
          begin
               ValeurePrecise:=1;
               OKTiers:=true;
          end;

          if(OKTiers=true)then
          begin
               if(Matricule<>'')then
               begin
                    if(RPrelevementUniteFonds.Matricule=Matricule)
                    then OKTiers:=true
                    else OKTiers:=false;
               end;
               //else OKMatricule:=true;
          end;

          if(OKTiers=true)then
          begin
               if(NumPrelevement<>'')and(NumPrelevementFin='')then
               begin
                    if(RPrelevementUniteFonds.NumPrelevement=strtointeger(NumPrelevement))
                    and(RPrelevementUniteFonds.ValeurPrelevement<>0)
                    then OKTiers:=true
                    else OKTiers:=false;
               end
               else
               if(NumPrelevement<>'')and(NumPrelevementFin<>'')then
               begin
                    if(RPrelevementUniteFonds.NumPrelevement>=strtointeger(NumPrelevement))
                    and(RPrelevementUniteFonds.NumPrelevement<=strtointeger(NumPrelevementFin))
                    and(RPrelevementUniteFonds.ValeurPrelevement<>0)
                    then OKTiers:=true
                    else OKTiers:=false;
               end;
          end;

          if(OKTiers=true)then
          begin
               if(AddTiers=true)then
               begin
                    RTiers:=1;
                    ExisteTiers:=false;
                    while(RTiers<=NbrTiers)and(ExisteTiers=false)do
                    begin
                         if(TableauDetailTiers.Cells[4,RTiers]=RPrelevementUniteFonds.CodeTiers)
                         then
                         begin
                              ExisteTiers:=true;
                              TableauDetailTiers.Cells[1,RTiers]:=TableauDetailTiers.Cells[1,RTiers]+';'+inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds);
                              TableauDetailTiers.Cells[7,RTiers]:=Vergule(floattostr(strtoreal(TableauDetailTiers.Cells[7,RTiers])+RPrelevementUniteFonds.ValeurPrelevement*ValeurePrecise),'2','C','');
                              MemoMontantTiers.Text:=floattostr(strtoreal(MemoMontantTiers.Text)+RPrelevementUniteFonds.ValeurPrelevement*ValeurePrecise);
                         end;
                    RTiers:=RTiers+1;
                    end;
               end
               else ExisteTiers:=false;
          end;

          if(OKTiers=true)and(ExisteTiers=false){and(OKMatricule=true)}then
          begin
               NbrTiers:=NbrTiers+1;
               TableauDetailTiers.Rows[NbrTiers].Text:=inttostr(NbrTiers);
               TableauDetailTiers.Cells[1,NbrTiers]:=inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds);
               TableauDetailTiers.Cells[2,NbrTiers]:=inttostr(RPrelevementUniteFonds.NumPrelevement);
               TableauDetailTiers.Cells[3,NbrTiers]:=RPrelevementUniteFonds.ModePaiement;
               TableauDetailTiers.Cells[4,NbrTiers]:=RPrelevementUniteFonds.CodeTiers;
               TableauDetailTiers.Cells[5,NbrTiers]:=ImporteDataProcesTiers(RPrelevementUniteFonds.TypeProces,RPrelevementUniteFonds.FichierConcerne,RPrelevementUniteFonds.CodeTiers,PositionTiersRecherche);
               TableauDetailTiers.Cells[6,NbrTiers]:=RPrelevementUniteFonds.NumPiece+' '+RPrelevementUniteFonds.Domiciliation;
               TableauDetailTiers.Cells[7,NbrTiers]:=Vergule(floattostr(RPrelevementUniteFonds.ValeurPrelevement*ValeurePrecise),'2','C','');
               MemoMontantTiers.Text:=Vergule(floattostr(strtoreal(MemoMontantTiers.Text)+RPrelevementUniteFonds.ValeurPrelevement*ValeurePrecise),'2','C','');
          end;
     end;
     finally
     CloseFile(FPrelevementUniteFonds);
     end;

     MemoMontantTiers.Text:=Vergule(MemoMontantTiers.Text,'2','C','');

     if(NbrTiers>0)then
     begin
          {if(strtoreal(MemoFondRoulement.Text)>0)then
          begin
               TableauDetailTiers.RowCount:=NbrTiers+2;
               TableauDetailTiers.Rows[NbrTiers+1].Text:=inttostr(NbrTiers+1);
               TableauDetailTiers.Cells[1,NbrTiers+1]:='';
               TableauDetailTiers.Cells[2,NbrTiers+1]:='';
               TableauDetailTiers.Cells[3,NbrTiers+1]:='Espèce';
               TableauDetailTiers.Cells[4,NbrTiers+1]:='';
               TableauDetailTiers.Cells[5,NbrTiers+1]:='Fond de Roulement';
               TableauDetailTiers.Cells[6,NbrTiers+1]:='';
               TableauDetailTiers.Cells[7,NbrTiers+1]:=Vergule('-'+MemoFondRoulement.Text,'2','C','');
               MemoMontantTiers.Text:=Vergule(floattostr(strtoreal(MemoMontantTiers.Text)-strtoreal(MemoFondRoulement.Text)),'2','C','');
          end
          else}
          begin
               TableauDetailTiers.RowCount:=NbrTiers+1;
          end;
     end
     else TableauDetailTiers.RowCount:=2;

     TableauDetailTiers.RowCount:=TableauDetailTiers.RowCount+2;
     TableauDetailTiers.Rows[TableauDetailTiers.RowCount-2].Text:='';
     TableauDetailTiers.Rows[TableauDetailTiers.RowCount-1].Text:='';
     TableauDetailTiers.Cells[6,TableauDetailTiers.RowCount-1]:='Total:';
     TableauDetailTiers.Cells[7,TableauDetailTiers.RowCount-1]:=Vergule(MemoMontantTiers.Text,'2','C','');;

     NotCol:='1;2';
     for C:=0 to TableauDetailTiers.ColCount-1 do
     begin
          if existenumintexte(inttostr(C),NotCol)then TableauDetailTiers.ColWidths[C]:=0;
     end;
     AjusterColWidth(TableauDetailTiers,'',NotCol);
     TrierTableauARowSpecial(TableauDetailTiers,1,TableauDetailTiers.RowCount-3,1,'3','','+');

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

     FSPrelevement.EditControleMontantCompteurTableauDetailTiers.Text:=MemoMontantTiers.Text;
     FSPrelevement.EditControleMontantUFTableauDetailTiers.Text:=Vergule(Floattostr(strtoreal(MemoMontantTiers.Text)+strtoreal(FSPrelevement.EditFondRoulement.Text)+strtoreal(FSPrelevement.EditSoldePrelevement.Text)),'2','C','');

end;

Procedure AfficheDetailTypeUniteFonds(TableauUniteFonds,TableauDetailTypeUniteFonds,TableauTitreDetailTypeUniteFonds:TStringGrid; MemoMontantTypeUnitsFonds,MemoCumuleSelectTypeUniteFonds:TMemo);
var  C,R,RTypeUniteFonds,NbrTypeUniteFonds:integer;  OKTypeUniteFonds:boolean; NotCol:string;
begin
     MemoMontantTypeUnitsFonds.Text:='';
     MemoCumuleSelectTypeUniteFonds.Text:='';

     TableauTitreDetailTypeUniteFonds.Rows[0].Text:='';
     TableauTitreDetailTypeUniteFonds.Cells[0,0]:='Détail par Type Unités de Fonds';

     TableauDetailTypeUniteFonds.RowCount:=2;
     TableauDetailTypeUniteFonds.Rows[1].Text:='';
     TableauDetailTypeUniteFonds.Cols[0].Text:='Num';
     TableauDetailTypeUniteFonds.Cols[1].Text:='Code T.U.F.';
     TableauDetailTypeUniteFonds.Cols[2].Text:='Type U.F.';
     TableauDetailTypeUniteFonds.Cols[3].Text:='Nombre';
     TableauDetailTypeUniteFonds.Cols[4].Text:='Montant';
     TableauDetailTypeUniteFonds.Cols[5].Text:='Sélect.';

     NbrTypeUniteFonds:=0;

     for R:=1 to TableauUniteFonds.RowCount-3 do
     begin
          RTypeUniteFonds:=1;
          OKTypeUniteFonds:=false;
          while(RTypeUniteFonds<=NbrTypeUniteFonds)and(OKTypeUniteFonds=false)do
          begin
               if(TableauDetailTypeUniteFonds.Cells[1,RTypeUniteFonds]=TableauUniteFonds.Cells[7,R])then
               begin
                    OKTypeUniteFonds:=true;
                    TableauDetailTypeUniteFonds.Cells[3,RTypeUniteFonds]:=Vergule(Floattostr(strtoreal(TableauDetailTypeUniteFonds.Cells[3,RTypeUniteFonds])+strtoreal(TableauUniteFonds.Cells[17,R])),'2','C','');
                    TableauDetailTypeUniteFonds.Cells[4,RTypeUniteFonds]:=Vergule(Floattostr(strtoreal(TableauDetailTypeUniteFonds.Cells[4,RTypeUniteFonds])+strtoreal(TableauUniteFonds.Cells[18,R])),'2','C','');
                    MemoMontantTypeUnitsFonds.Text:=floattostr(strtoreal(MemoMontantTypeUnitsFonds.Text)+strtoreal(TableauUniteFonds.Cells[18,R]));
               end;
          RTypeUniteFonds:=RTypeUniteFonds+1;
          end;

          if(OKTypeUniteFonds=false)then
          begin
               NbrTypeUniteFonds:=NbrTypeUniteFonds+1;
               TableauDetailTypeUniteFonds.Rows[NbrTypeUniteFonds].Text:=inttostr(NbrTypeUniteFonds);
               TableauDetailTypeUniteFonds.Cells[1,NbrTypeUniteFonds]:=TableauUniteFonds.Cells[7,R];
               TableauDetailTypeUniteFonds.Cells[2,NbrTypeUniteFonds]:=TableauUniteFonds.Cells[8,R];
               TableauDetailTypeUniteFonds.Cells[3,NbrTypeUniteFonds]:=Vergule(TableauUniteFonds.Cells[17,R],'2','C','');
               TableauDetailTypeUniteFonds.Cells[4,NbrTypeUniteFonds]:=Vergule(TableauUniteFonds.Cells[18,R],'2','C','');
               if(strtoboolean(TableauUniteFonds.Cells[10,R])=true)then TableauDetailTypeUniteFonds.Cells[5,NbrTypeUniteFonds]:='OK';
               MemoMontantTypeUnitsFonds.Text:=floattostr(strtoreal(MemoMontantTypeUnitsFonds.Text)+strtoreal(TableauUniteFonds.Cells[18,R]));
          end;
     end;

     MemoMontantTypeUnitsFonds.Text:=Vergule(MemoMontantTypeUnitsFonds.Text,'2','C','');

     if(NbrTypeUniteFonds>0)then TableauDetailTypeUniteFonds.RowCount:=NbrTypeUniteFonds+1
                            else TableauDetailTypeUniteFonds.RowCount:=2;

     for R:=1 to TableauDetailTypeUniteFonds.RowCount-1 do
     begin
          if(TableauDetailTypeUniteFonds.Cells[5,R]='OK')then
          begin
               MemoCumuleSelectTypeUniteFonds.Text:=
               Vergule(Floattostr(strtoreal(MemoCumuleSelectTypeUniteFonds.Text)+
               strtoreal(TableauDetailTypeUniteFonds.Cells[4,R])),'2','C','');
          end;
     end;

     FSPrelevement.EditValeurPrelevementAttribueTiers.Text:=Vergule(floattostr(strtoreal(MemoMontantTypeUnitsFonds.Text)-strtoreal(MemoCumuleSelectTypeUniteFonds.Text)),'2','C','');
     FSPrelevement.EditValeurPrelevementNonAttribueTiers.Text:=MemoCumuleSelectTypeUniteFonds.Text;

     TableauDetailTypeUniteFonds.RowCount:=TableauDetailTypeUniteFonds.RowCount+3;
     TableauDetailTypeUniteFonds.Rows[TableauDetailTypeUniteFonds.RowCount-3].Text:='';
     TableauDetailTypeUniteFonds.Rows[TableauDetailTypeUniteFonds.RowCount-2].Text:='';
     TableauDetailTypeUniteFonds.Rows[TableauDetailTypeUniteFonds.RowCount-1].Text:='';
     TableauDetailTypeUniteFonds.Cells[3,TableauDetailTypeUniteFonds.RowCount-2]:='Total:';
     TableauDetailTypeUniteFonds.Cells[4,TableauDetailTypeUniteFonds.RowCount-2]:=MemoMontantTypeUnitsFonds.Text;
     TableauDetailTypeUniteFonds.Cells[3,TableauDetailTypeUniteFonds.RowCount-1]:='Sélect:';
     TableauDetailTypeUniteFonds.Cells[4,TableauDetailTypeUniteFonds.RowCount-1]:=MemoCumuleSelectTypeUniteFonds.Text;

     NotCol:='1';
     for C:=0 to TableauDetailTypeUniteFonds.ColCount-1 do
     begin
          if existenumintexte(inttostr(C),NotCol)then TableauDetailTypeUniteFonds.ColWidths[C]:=0;
     end;
     AjusterColWidth(TableauDetailTypeUniteFonds,'',NotCol);
     TrierTableauARowSpecial(TableauDetailTypeUniteFonds,1,TableauDetailTypeUniteFonds.RowCount-4,1,'1','','+');
end;

Procedure PrelevementEffectifEquipe(TableauEquipe,TableauTitreEquipe,TableauEffectifEquipe,TableauTitreEffectifEquipe,TableauUtilisateur,TableauTitreUtilisateur:TStringGrid; NumPrelevement,NumPrelevementFin,Matricule:string);
var i,C,NbrEffectif,NbrEquipe,PBegin,PEnd:integer;
    NotCol,FichierConcerne,CodeUtilisateur,DateIn,HeureIn,DatePrelevement,HeurePrelevement,PositionPrelevement:string;
    OKEffectif:boolean; SoldePrelevementGlobale:real;
begin
     PBegin:=0;
     PEnd:=999999999;

     TableauTitreEquipe.Rows[0].Text:='';
     TableauTitreEquipe.Cells[0,0]:='Equipe de Prélèvement:';

     TableauEquipe.ColCount:=7;
     TableauEquipe.Cols[0].Text:='Or.';
     TableauEquipe.Cols[1].Text:='Code';
     TableauEquipe.Cols[2].Text:='Désignation';
     TableauEquipe.Cols[3].Text:='Heure In.';
     TableauEquipe.Cols[4].Text:='Heure Out';
     TableauEquipe.Cols[5].Text:='     Tâche     ';
     TableauEquipe.Cols[6].Text:='         Emargement          ';
     TableauEquipe.RowCount:=2;
     TableauEquipe.Rows[1].Text:='';

     OpenFParc(RParc);
     ChEquipe:=RParc.Parcours+'\'+Exercice+'FEquipe';
     assignfile(FEquipe,ChEquipe);
     try
     if FileExists(ChEquipe)then
     Reset(FEquipe)
     else Rewrite(FEquipe);
     Seek(FEquipe,0);
     NbrEquipe:=0;
     while not eof(FEquipe)do
     begin
          read(FEquipe,REquipe);
          NbrEquipe:=NbrEquipe+1;
          TableauEquipe.Rows[NbrEquipe].Text:=inttostr(NbrEquipe);
          TableauEquipe.Cells[1,NbrEquipe]:=REquipe.CodeEquipe;
          TableauEquipe.Cells[2,NbrEquipe]:=REquipe.DesignationEquipe;
          TableauEquipe.Cells[3,NbrEquipe]:=REquipe.HeureDebut;
          TableauEquipe.Cells[4,NbrEquipe]:=REquipe.HeureFin;
          TableauEquipe.Cells[5,NbrEquipe]:=REquipe.TacheOccuper;
          TableauEquipe.Cells[6,NbrEquipe]:='';
     end;
     finally
     CloseFile(FEquipe);
     end;

     if(NbrEquipe>0)then TableauEquipe.RowCount:=NbrEquipe+1
                    else TableauEquipe.RowCount:=2;
     AjusterColWidth(TableauEquipe,'','');

////////////////////////////////////////////////////////////////////////////////
     TableauTitreEffectifEquipe.Rows[0].Text:='';
     TableauTitreEffectifEquipe.Cells[0,0]:='Equipe de Prélèvement:';

     TableauEffectifEquipe.ColCount:=10;
     TableauEffectifEquipe.Cols[1].Text:='Num';
     TableauEffectifEquipe.Cols[2].Text:='Code Utilisateur';
     TableauEffectifEquipe.Cols[3].Text:='Num Equipe';
     TableauEffectifEquipe.Cols[4].Text:='Date';
     TableauEffectifEquipe.Cols[5].Text:='Heure';
     TableauEffectifEquipe.Cols[6].Text:='Matricule';
     TableauEffectifEquipe.Cols[7].Text:='Nom et Prénom';
     TableauEffectifEquipe.Cols[8].Text:='Solde';
     TableauEffectifEquipe.Cols[9].Text:='          Emargement          ';
     TableauEffectifEquipe.RowCount:=2;
     TableauEffectifEquipe.Rows[1].Text:='';

     TableauEffectifEquipe.FixedCols:=6;

     FichierConcerne:='FRegistrePrelevementEffectifEquipe';
     SoldePrelevementGlobale:=0;

     if(NumPrelevement<>'')then
     begin
          DateIn:='';
          HeureIn:='';
          DatePrelevement:='';
          HeurePrelevement:='';
          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);
          SoldePrelevementGlobale:=RPrelevement.SoldePrelevement;
          if(RPrelevement.Archiver=false)then
          begin
               FichierConcerne:='FPrelevementEffectifEquipe';
               PBegin:=0;
               PEnd:=999999999;
          end
          else
          begin
               FichierConcerne:='FArchivePrelevementEffectifEquipe';
               if(FSListePrelevement.RBUtiliserPositionArchive.Checked=true)then
               begin
                    PBegin:=RPrelevement.RegistrePositionPrelevementEffectifEquipe.PositionArchiveBegin;
                    PEnd:=RPrelevement.RegistrePositionPrelevementEffectifEquipe.PositionArchiveEnd;
               end
               else
               begin
                    PBegin:=0;
                    PEnd:=999999999;
               end;
          end;

          DatePrelevement:=RPrelevement.DatePrelevement;
          HeurePrelevement:=RPrelevement.HeurePrelevement;
          ///////////////////////////////////////////////////////////////////////////

          OpenFParc(RParc);
          ChPrelevementEffectifEquipe:=RParc.Parcours+'\'+Exercice+FichierConcerne;
          assignfile(FPrelevementEffectifEquipe,ChPrelevementEffectifEquipe);
          try
          if FileExists(ChPrelevementEffectifEquipe)then
          Reset(FPrelevementEffectifEquipe)
          else Rewrite(FPrelevementEffectifEquipe);
          Seek(FPrelevementEffectifEquipe,PBegin);
          NbrEffectif:=0;
          CodeUtilisateur:='';
          i:=PBegin;
          while not eof(FPrelevementEffectifEquipe)and(i<=PEnd)do
          begin
               read(FPrelevementEffectifEquipe,RPrelevementEffectifEquipe);
               i:=i+1;
               if(Matricule<>'')then  
               begin
                    if(RPrelevementEffectifEquipe.Matricule=Matricule)
                    then OKEffectif:=true
                    else OKEffectif:=false;
               end
               else OKEffectif:=true;

               if (OKEffectif=true)
               and(RPrelevementEffectifEquipe.NumPrelevement=strtointeger(NumPrelevement))
               and(RPrelevementEffectifEquipe.DatePrelevement=DatePrelevement)
               and(RPrelevementEffectifEquipe.HeurePrelevement=HeurePrelevement)
               then
               begin
                    RPrelevement:=ChercherPrelevement(RPrelevementEffectifEquipe.NumPrelevement,ExerciceAnnee,RPrelevementEffectifEquipe.Matricule,PositionPrelevement);
                    NbrEffectif:=NbrEffectif+1;
                    TableauEffectifEquipe.Rows[NbrEffectif].Text:=inttostr(NbrEffectif);
                    TableauEffectifEquipe.Cells[1,NbrEffectif]:=inttostr(RPrelevementEffectifEquipe.NumPrelevement);
                    TableauEffectifEquipe.Cells[2,NbrEffectif]:=RPrelevementEffectifEquipe.CodeUtilisateur;
                    TableauEffectifEquipe.Cells[3,NbrEffectif]:=inttostr(RPrelevementEffectifEquipe.NumEquipe);
                    TableauEffectifEquipe.Cells[4,NbrEffectif]:=RPrelevementEffectifEquipe.DatePrelevement;
                    TableauEffectifEquipe.Cells[5,NbrEffectif]:=RPrelevementEffectifEquipe.HeurePrelevement;
                    TableauEffectifEquipe.Cells[6,NbrEffectif]:=RPrelevementEffectifEquipe.Matricule;
                    RPersonnel:=CherchePersonnel(RPrelevementEffectifEquipe.Matricule);
                    TableauEffectifEquipe.Cells[7,NbrEffectif]:=RPersonnel.Nom+' '+RPersonnel.Prenom;
                    if(RPrelevement.SoldePrelevement<=0)
                    then TableauEffectifEquipe.Cells[8,NbrEffectif]:=Vergule(floattostr(RPrelevement.SoldePrelevement),'2','C','')
                    else TableauEffectifEquipe.Cells[8,NbrEffectif]:='+'+Vergule(floattostr(RPrelevement.SoldePrelevement),'2','C','');
                    TableauEffectifEquipe.Cells[9,NbrEffectif]:='';
                    if(CodeUtilisateur='')then CodeUtilisateur:=RPrelevementEffectifEquipe.CodeUtilisateur;
               end;
          end;
          finally
          CloseFile(FPrelevementEffectifEquipe);
          end;
     end;

     if(NbrEffectif>0)then TableauEffectifEquipe.RowCount:=NbrEffectif+1
                      else TableauEffectifEquipe.RowCount:=2;

NotCol:='0-5';
for C:=0 to TableauEffectifEquipe.ColCount-1 do
begin
     if existenumintexte(inttostr(C),NotCol)then TableauEffectifEquipe.ColWidths[C]:=0;
end;
AjusterColWidth(TableauEffectifEquipe,'',NotCol);
TrierTableauARowSpecial(TableauEffectifEquipe,1,TableauEffectifEquipe.RowCount-1,1,'7','','+');

////////////////////////////////////////////////////////////////////////////////
     TableauTitreUtilisateur.Rows[0].Text:='';
     TableauTitreUtilisateur.Cells[0,0]:='Responsable du Prélèvement';

     TableauUtilisateur.ColCount:=5;
     TableauUtilisateur.RowCount:=2;
     TableauUtilisateur.Cols[0].Text:='';
     TableauUtilisateur.Cols[1].Text:='Code';
     TableauUtilisateur.Cols[2].Text:='Nom et Prénom';
     TableauUtilisateur.Cols[3].Text:='Solde';
     TableauUtilisateur.Cols[4].Text:='          Emargement          ';

     RUtilisateur:=ChercherUtilisateur(CodeUtilisateur);
     TableauUtilisateur.Cells[1,1]:=CodeUtilisateur;
     TableauUtilisateur.Cells[2,1]:=RUtilisateur.Nom+' '+RUtilisateur.Prenom;
     if(SoldePrelevementGlobale<=0)
     then TableauUtilisateur.Cells[3,1]:=Vergule(floattostr(SoldePrelevementGlobale),'2','C','')
     else TableauUtilisateur.Cells[3,1]:='+'+Vergule(floattostr(SoldePrelevementGlobale),'2','C','');
     TableauUtilisateur.Cells[4,1]:='';

     TableauUtilisateur.ColWidths[0]:=0;
     AjusterColWidth(TableauUtilisateur,'','0');
     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

     FSPrelevement.EditControleSoldeTableauEffectifEquipe.Text:=TableauUtilisateur.Cells[3,1];
end;
         
Procedure ProcPrelevementUniteFonds(TableauUniteFonds,TableauTitreUniteFonds:TStringGrid; MemoCummulUniteFonds:TMemo; EditNumPrelevementUniteFonds:TEdit; NumPrelevement,NumPrelevementFin,MatriculeEffectif,NumUniteFondsSelect:string);
var i,C,R,RTabUniteFonds,PBegin,PEnd,RowSelect:integer;   NotCol,FichierConcerne,DateIn,HeureIn,DatePrelevement,HeurePrelevement,PositionPrelevement:string; OKPrelevementUniteFonds,ExisteUniteFonds:boolean;
begin
     FSPrelevement.EditListeNumPrelevementUF.Text:='';
     FSPrelevement.EditNbrListeNumPrelevementUFNew.Text:='';
     FSPrelevement.EditNbrListeNumPrelevementUFAdd.Text:='';

     DateIn:='';
     HeureIn:='';
     DatePrelevement:='';
     HeurePrelevement:='';
     PBegin:=0;
     PEnd:=999999999;

     RowSelect:=1;

     MemoCummulUniteFonds.Text:='';

     TableauTitreUniteFonds.Rows[0].Text:='';
     TableauTitreUniteFonds.Cells[0,0]:='Détail des Unités de Fonds:';

     TableauUniteFonds.ColCount:=19;
     TableauUniteFonds.Cols[0].Text:='NumPUF';
     TableauUniteFonds.Cols[1].Text:='NumP';
     TableauUniteFonds.Cols[2].Text:='Code Utilisateur';
     TableauUniteFonds.Cols[3].Text:='Num Equipe';
     TableauUniteFonds.Cols[4].Text:='Date';
     TableauUniteFonds.Cols[5].Text:='Heure';
     TableauUniteFonds.Cols[6].Text:='Num Unite Fonds';
     TableauUniteFonds.Cols[7].Text:='Num Type U.F';
     TableauUniteFonds.Cols[8].Text:='Type U.F';
     TableauUniteFonds.Cols[9].Text:='Unite Fonds';
     TableauUniteFonds.Cols[10].Text:='ValeurPrecise';
     TableauUniteFonds.Cols[11].Text:='T.Proces';
     TableauUniteFonds.Cols[12].Text:='F.Concerne';
     TableauUniteFonds.Cols[13].Text:='Valeur UF';
     TableauUniteFonds.Cols[14].Text:='Mode.Paie.';
     TableauUniteFonds.Cols[15].Text:='Num.Pièce';
     TableauUniteFonds.Cols[16].Text:='Domciliation';
     TableauUniteFonds.Cols[17].Text:='Nombre';
     TableauUniteFonds.Cols[18].Text:='Montant';
     TableauUniteFonds.RowCount:=2;
     TableauUniteFonds.Rows[1].Text:='';

     FichierConcerne:='FPrelevementUniteFonds';

     if(NumPrelevement<>'')and(NumPrelevementFin='')then
     begin
          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,MatriculeEffectif,PositionPrelevement);
          EditNumPrelevementUniteFonds.Text:=NumPrelevement;
          if(RPrelevement.Archiver=false)then
          begin
               FichierConcerne:='FPrelevementUniteFonds';
               PBegin:=0;
               PEnd:=999999999;
          end
          else
          begin
               FichierConcerne:='FArchivePrelevementUniteFonds';
               if(FSListePrelevement.RBUtiliserPositionArchive.Checked=true)then
               begin
                    PBegin:=RPrelevement.RegistrePositionPrelevementUniteFonds.PositionArchiveBegin;
                    PEnd:=RPrelevement.RegistrePositionPrelevementUniteFonds.PositionArchiveEnd;
               end
               else
               begin
                    PBegin:=0;
                    PEnd:=999999999;
               end;
          end;

          DatePrelevement:=RPrelevement.DatePrelevement;
          HeurePrelevement:=RPrelevement.HeurePrelevement;
     end
     else
     begin
          FichierConcerne:='FArchivePrelevementUniteFonds';
          EditNumPrelevementUniteFonds.Text:='du: '+NumPrelevement+' au: '+NumPrelevementFin;
          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevementFin),ExerciceAnnee,'',PositionPrelevement);
          DateIn:=RPrelevement.DatePrelevement;
          HeureIn:=RPrelevement.HeurePrelevement;
          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,'',PositionPrelevement);
          DatePrelevement:=RPrelevement.DatePrelevement;
          HeurePrelevement:=RPrelevement.HeurePrelevement;
     end;

     OpenFParc(RParc);
     ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
     try
     if FileExists(ChPrelevementUniteFonds)then
     Reset(FPrelevementUniteFonds)
     else Rewrite(FPrelevementUniteFonds);
     Seek(FPrelevementUniteFonds,PBegin);
     R:=0;
     i:=PBegin;
     while not eof(FPrelevementUniteFonds)and(i<=PEnd)do
     begin
          read(FPrelevementUniteFonds,RPrelevementUniteFonds);
          i:=i+1;

          {if(RPrelevementUniteFonds.ValeurPrelevement>0)
          then OKPrelevementUniteFonds:=true
          else OKPrelevementUniteFonds:=false;}

          OKPrelevementUniteFonds:=true;
          ExisteUniteFonds:=false;

          if(OKPrelevementUniteFonds=true)then
          begin
               if(MatriculeEffectif<>'')then
               begin
                    if(RPrelevementUniteFonds.Matricule=MatriculeEffectif)
                    then OKPrelevementUniteFonds:=true
                    else OKPrelevementUniteFonds:=false;
               end;
          end;

          if(OKPrelevementUniteFonds=true)then
          begin
                if(NumPrelevement<>'')and(NumPrelevementFin='')then
                begin
                     if(RPrelevementUniteFonds.NumPrelevement=strtointeger(NumPrelevement))
                     then OKPrelevementUniteFonds:=true
                     else OKPrelevementUniteFonds:=false;
                end
                else
                begin
                     if(NumPrelevement<>'')and(NumPrelevementFin<>'')then
                     begin
                          if(RPrelevementUniteFonds.NumPrelevement>=strtointeger(NumPrelevement))
                          and(RPrelevementUniteFonds.NumPrelevement<=strtointeger(NumPrelevementFin))
                          then OKPrelevementUniteFonds:=true
                          else OKPrelevementUniteFonds:=false;
                     end;
                end;
          end;

          if(FSPrelevement.RNCummulerMemeUniteFonds.Checked=true)and(OKPrelevementUniteFonds=true)then
          begin
               RTabUniteFonds:=1;
               ExisteUniteFonds:=false;
               While(RTabUniteFonds<=R)and(ExisteUniteFonds=false)do
               begin
                    if(strtointeger(TableauUniteFonds.Cells[6,RTabUniteFonds])=RPrelevementUniteFonds.NumUniteFonds)then
                    begin
                         ExisteUniteFonds:=true;

                         TableauUniteFonds.Cells[0,RTabUniteFonds]:=inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds);

                         RUniteFonds:=ChercherUniteFonds(inttostr(RPrelevementUniteFonds.NumUniteFonds));

                         if(RPrelevementUniteFonds.ValeurPrecise=true)
                         then
                         begin
                              TableauUniteFonds.Cells[17,RTabUniteFonds]:=Vergule(Floattostr(strtoreal(TableauUniteFonds.Cells[17,RTabUniteFonds])+RPrelevementUniteFonds.ValeurPrelevement),'2','C','')
                         end
                         else
                         begin
                              if(RPrelevementUniteFonds.ValeurPrelevement<>0)
                              then TableauUniteFonds.Cells[17,RTabUniteFonds]:=Vergule(Floattostr(strtoreal(TableauUniteFonds.Cells[17,RTabUniteFonds])+RUniteFonds.ValeurMonetaireUnitaire),'2','C','');
                         end;

                         TableauUniteFonds.Cells[18,RTabUniteFonds]:=Vergule(Floattostr(strtoreal(TableauUniteFonds.Cells[18,RTabUniteFonds])+(RPrelevementUniteFonds.ValeurPrelevement*RUniteFonds.ValeurMonetaireUnitaire)),'2','C','');

                         if(RPrelevementUniteFonds.ValeurPrecise=false)and(RPrelevementUniteFonds.ValeurPrelevement>0)then
                         begin
                              if(FSPrelevement.EditListeNumPrelevementUF.Text='')
                              then FSPrelevement.EditListeNumPrelevementUF.Text:=inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds)
                              else FSPrelevement.EditListeNumPrelevementUF.Text:=FSPrelevement.EditListeNumPrelevementUF.Text+';'+inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds);

                              FSPrelevement.EditNbrListeNumPrelevementUFAdd.Text:=inttostr(strtointeger(FSPrelevement.EditNbrListeNumPrelevementUFAdd.Text)+1);
                         end;
                    end;
               RTabUniteFonds:=RTabUniteFonds+1;
               end;
          end;

          if(OKPrelevementUniteFonds=true)and(ExisteUniteFonds=false)then
          begin
               R:=R+1;
               TableauUniteFonds.Rows[R].Text:='';
               TableauUniteFonds.Cells[0,R]:=inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds);
               TableauUniteFonds.Cells[1,R]:=inttostr(RPrelevementUniteFonds.NumPrelevement);
               TableauUniteFonds.Cells[2,R]:=RPrelevementUniteFonds.CodeUtilisateur;
               TableauUniteFonds.Cells[3,R]:=inttostr(RPrelevementUniteFonds.NumEquipe);
               TableauUniteFonds.Cells[4,R]:=RPrelevementUniteFonds.DatePrelevement;
               TableauUniteFonds.Cells[5,R]:=RPrelevementUniteFonds.HeurePrelevement;
               TableauUniteFonds.Cells[6,R]:=inttostr(RPrelevementUniteFonds.NumUniteFonds);
               RUniteFonds:=ChercherUniteFonds(inttostr(RPrelevementUniteFonds.NumUniteFonds));
               TableauUniteFonds.Cells[7,R]:=inttostr(RUniteFonds.NumTypeUniteFonds);
               RTypeUniteFonds:=ChercherTypeUniteFonds(inttostr(RUniteFonds.NumTypeUniteFonds));
               TableauUniteFonds.Cells[8,R]:=RTypeUniteFonds.DesignationTypeUniteFonds;
               TableauUniteFonds.Cells[9,R]:=RUniteFonds.DesignationUniteFonds;
               TableauUniteFonds.Cells[10,R]:=booleantostr(RUniteFonds.ValeurPrecise);
               TableauUniteFonds.Cells[11,R]:=RUniteFonds.TypeProces;
               TableauUniteFonds.Cells[12,R]:=RUniteFonds.FichierConcerne;
               TableauUniteFonds.Cells[13,R]:=floattostr(RUniteFonds.ValeurMonetaireUnitaire);
               TableauUniteFonds.Cells[14,R]:=RPrelevementUniteFonds.ModePaiement;
               TableauUniteFonds.Cells[15,R]:=RPrelevementUniteFonds.NumPiece;
               TableauUniteFonds.Cells[16,R]:=RPrelevementUniteFonds.Domiciliation;

               if(RPrelevementUniteFonds.ValeurPrecise=true)
               then
               begin
                    TableauUniteFonds.Cells[17,R]:=Vergule(Floattostr(RPrelevementUniteFonds.ValeurPrelevement),'2','C','')
               end
               else
               begin
                    if(RPrelevementUniteFonds.ValeurPrelevement<>0)
                    then TableauUniteFonds.Cells[17,R]:=Vergule(Floattostr(RUniteFonds.ValeurMonetaireUnitaire),'2','C','')
                    else TableauUniteFonds.Cells[17,R]:='';
               end;

               TableauUniteFonds.Cells[18,R]:=Vergule(Floattostr(RPrelevementUniteFonds.ValeurPrelevement*RUniteFonds.ValeurMonetaireUnitaire),'2','C','');

               if(RPrelevementUniteFonds.ValeurPrecise=false)and(RPrelevementUniteFonds.ValeurPrelevement>0)then
               begin
                    if(FSPrelevement.EditListeNumPrelevementUF.Text='')
                    then FSPrelevement.EditListeNumPrelevementUF.Text:=inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds)
                    else FSPrelevement.EditListeNumPrelevementUF.Text:=FSPrelevement.EditListeNumPrelevementUF.Text+';'+inttostr(RPrelevementUniteFonds.NumPrelevementUniteFonds);

                    FSPrelevement.EditNbrListeNumPrelevementUFNew.Text:=inttostr(strtointeger(FSPrelevement.EditNbrListeNumPrelevementUFNew.Text)+1);
               end;
          end;
     end;
     finally
     CloseFile(FPrelevementUniteFonds);
     end;

     if(R>0)then TableauUniteFonds.RowCount:=R+1
            else TableauUniteFonds.RowCount:=2;

     for R:=1 to TableauUniteFonds.RowCount-1 do
     begin
          MemoCummulUniteFonds.Text:=floattostr(strtoreal(MemoCummulUniteFonds.Text)+strtoreal(TableauUniteFonds.Cells[18,R]));
     end;

     MemoCummulUniteFonds.Text:=Vergule(MemoCummulUniteFonds.Text,'2','C','');

     TableauUniteFonds.RowCount:=TableauUniteFonds.RowCount+2;
     TableauUniteFonds.Rows[TableauUniteFonds.RowCount-2].Text:='';
     TableauUniteFonds.Rows[TableauUniteFonds.RowCount-1].Text:='';
     TableauUniteFonds.Cells[17,TableauUniteFonds.RowCount-1]:='Total:';
     TableauUniteFonds.Cells[18,TableauUniteFonds.RowCount-1]:=MemoCummulUniteFonds.Text;
     

NotCol:='1;2;3;4;5;6;7;8;10;11;12;13;14;15;16';
for C:=0 to TableauUniteFonds.ColCount-1 do
begin
     if existenumintexte(inttostr(C),NotCol)then TableauUniteFonds.ColWidths[C]:=0;
end;
AjusterColWidth(TableauUniteFonds,'',NotCol);
TrierTableauARowSpecial(TableauUniteFonds,1,TableauUniteFonds.RowCount-3,0,'13','Num','-');

if(NumUniteFondsSelect<>'')then
begin
     R:=1;
     while(R<=TableauUniteFonds.RowCount-1)and(NumUniteFondsSelect<>'OK')do
     begin
          if(TableauUniteFonds.Cells[6,R]=NumUniteFondsSelect)then
          begin
               RowSelect:=R;
               NumUniteFondsSelect:='OK';
          end;
     R:=R+1;
     end;
end;

TableauUniteFonds.Row:=RowSelect;

LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

FSPrelevement.EditControleMontantUFTableauPrelevementUniteFonds.Text:=MemoCummulUniteFonds.Text;
end;

Procedure AfficheDetailArticle(TableauCompteur,TableauArticle,TableauTitreArticle:TStringGrid; MemoMontantArticle:TMemo; NumPrelevement,NumPrelevementFin:string);
var  R,RArticle,NbrArticle:integer;  OKArticle:boolean;   CoutTotal,QuantiteGlobale,QuantiteJustifier,MontantRestant,QuantiteInitiale,QuatiteEntree,QuantiteSortie,QuantiteStock:real; NumStructure:string;
begin
     MemoMontantArticle.Text:='';

     TableauTitreArticle.Rows[0].Text:='';
     TableauTitreArticle.Cells[0,0]:='Détail par Article';

     TableauArticle.ColCount:=16;
     TableauArticle.Cols[0].Text:='Num.';
     TableauArticle.Cols[1].Text:='Code';
     TableauArticle.Cols[2].Text:='Article';
     TableauArticle.Cols[3].Text:='Prix';
     TableauArticle.Cols[4].Text:='Qte.Initiale';
     TableauArticle.Cols[5].Text:='Qte.Entrées';
     TableauArticle.Cols[6].Text:='Qte.Sorties';
     TableauArticle.Cols[7].Text:='Qte.Stock';
     TableauArticle.Cols[8].Text:='Montant.Sorties';
     TableauArticle.Cols[9].Text:='Observation';
     TableauArticle.Cols[10].Text:='Coût Unitaire';
     TableauArticle.Cols[11].Text:='Coût Total';
     TableauArticle.Cols[12].Text:='Valeur Ajouter';
     TableauArticle.Cols[13].Text:='Qte Justifier';
     TableauArticle.Cols[14].Text:='Qte Restante';
     TableauArticle.Cols[15].Text:='Mt.Restant';

     TableauArticle.RowCount:=2;
     TableauArticle.Rows[1].Text:='';

     NbrArticle:=0;

     for R:=1 to TableauCompteur.RowCount-3 do
     begin
          DataArchiveEtatStockPrelevement(NumPrelevement,FSPrelevement.EditMatricule.Text,TableauCompteur.Cells[8,R],QuantiteInitiale,QuatiteEntree,QuantiteSortie,QuantiteStock);

          RArticle:=1;
          OKArticle:=false;
          while(RArticle<=NbrArticle)and(OKArticle=false)do
          begin
               if(TableauArticle.Cells[1,RArticle]=TableauCompteur.Cells[8,R])then
               begin
                    OKArticle:=true;

                    if(TableauCompteur.Cells[9,R]='Cumul des Sorties.')then
                    begin
                         //RCompteurCopie:=ChercherCompteur(strtointeger(TableauCompteur.Cells[4,R]));
                         //NumStructure:=ChercherAffectationCompteur(strtointeger(RCompteurCopie.NumAffectationCompteur)).NumProjetFinance;
                         //RStockArticleCopie:=ChercherStockArticle(NumStructure,TableauCompteur.Cells[8,R]);

                         TableauArticle.Cells[4,RArticle]:=floattostr(QuantiteInitiale);//Floattostr(RStockArticleCopie.QteStock);
                         TableauArticle.Cells[5,RArticle]:=Floattostr(strtoreal(TableauArticle.Cells[5,RArticle])+strtoreal(TableauCompteur.Cells[15,R]));
                    end
                    else
                    begin
                         TableauArticle.Cells[4,RArticle]:=Floattostr(strtoreal(TableauArticle.Cells[4,RArticle])+strtoreal(TableauCompteur.Cells[14,R]));
                         TableauArticle.Cells[5,RArticle]:=Floattostr(strtoreal(TableauArticle.Cells[5,RArticle])+strtoreal(TableauCompteur.Cells[15,R]));
                    end;

                    TableauArticle.Cells[6,RArticle]:=Floattostr(strtoreal(TableauArticle.Cells[6,RArticle])+strtoreal(TableauCompteur.Cells[19,R]));
                    TableauArticle.Cells[8,RArticle]:=Floattostr(strtoreal(TableauArticle.Cells[8,RArticle])+strtoreal(TableauCompteur.Cells[20,R]));
                    MemoMontantArticle.Text:=floattostr(strtoreal(MemoMontantArticle.Text)+strtoreal(TableauCompteur.Cells[20,R]));
               end;
          RArticle:=RArticle+1;
          end;

          if(OKArticle=false)then
          begin
               NbrArticle:=NbrArticle+1;
               TableauArticle.Rows[NbrArticle].Text:=inttostr(NbrArticle);
               TableauArticle.Cells[1,NbrArticle]:=TableauCompteur.Cells[8,R];
               TableauArticle.Cells[2,NbrArticle]:=TableauCompteur.Cells[10,R];
               TableauArticle.Cells[3,NbrArticle]:=TableauCompteur.Cells[11,R];

               if(TableauCompteur.Cells[9,R]='Cumul des Sorties.')then
               begin
                    //RCompteurCopie:=ChercherCompteur(strtointeger(TableauCompteur.Cells[4,R]));
                    //NumStructure:=ChercherAffectationCompteur(strtointeger(RCompteurCopie.NumAffectationCompteur)).NumProjetFinance;
                    //RStockArticleCopie:=ChercherStockArticle(NumStructure,TableauCompteur.Cells[8,R]);
               
                    TableauArticle.Cells[4,RArticle]:=floattostr(QuantiteInitiale);//Floattostr(RStockArticleCopie.QteStock);
                    //TableauArticle.Cells[4,NbrArticle]:=Floattostr(CumuleAnterieurMouvementCompteur(strtointeger(TableauCompteur.Cells[1,R]),strtointeger(TableauCompteur.Cells[4,R]))-strtoreal(TableauCompteur.Cells[14,R]));
                    TableauArticle.Cells[5,NbrArticle]:=TableauCompteur.Cells[15,R];
               end
               else
               begin
                    TableauArticle.Cells[4,NbrArticle]:=TableauCompteur.Cells[14,R];
                    TableauArticle.Cells[5,NbrArticle]:=TableauCompteur.Cells[15,R];
               end;

               TableauArticle.Cells[6,NbrArticle]:=TableauCompteur.Cells[19,R];
               TableauArticle.Cells[7,NbrArticle]:='';
               TableauArticle.Cells[8,NbrArticle]:=TableauCompteur.Cells[20,R];
               TableauArticle.Cells[9,NbrArticle]:='';
               TableauArticle.Cells[10,NbrArticle]:=TableauCompteur.Cells[21,R];
               TableauArticle.Cells[11,NbrArticle]:='';
               TableauArticle.Cells[12,NbrArticle]:='';
               TableauArticle.Cells[13,NbrArticle]:='';
               TableauArticle.Cells[14,NbrArticle]:='';
               TableauArticle.Cells[15,NbrArticle]:='';
               MemoMontantArticle.Text:=floattostr(strtoreal(MemoMontantArticle.Text)+strtoreal(TableauCompteur.Cells[20,R]));
          end;
     end;

     for R:=1 to NbrArticle do
     begin
          CummuleQtePrelevementJustifiser(NumPrelevement,'',FSPrelevement.EditMatricule.Text,'',TableauArticle.Cells[1,R],false,QuantiteGlobale,QuantiteJustifier);
          TableauArticle.Cells[13,R]:=floattostr(QuantiteGlobale);
     end;

     MemoMontantArticle.Text:=Vergule(MemoMontantArticle.Text,'2','C','');

     if(NbrArticle>0)then TableauArticle.RowCount:=NbrArticle+1
                     else TableauArticle.RowCount:=2;

     CoutTotal:=0;
     MontantRestant:=0;
     for R:=1 to TableauArticle.RowCount-1 do
     begin
          TableauArticle.Cells[7,R]:=Vergule(floattostr(strtoreal(TableauArticle.Cells[4,R])+strtoreal(TableauArticle.Cells[5,R])-strtoreal(TableauArticle.Cells[6,R])),'2','C','');
          TableauArticle.Cells[3,R]:=Vergule(TableauArticle.Cells[3,R],'2','C','');
          TableauArticle.Cells[4,R]:=Vergule(TableauArticle.Cells[4,R],'2','C','');
          TableauArticle.Cells[5,R]:=Vergule(TableauArticle.Cells[5,R],'2','C','');
          TableauArticle.Cells[6,R]:=Vergule(TableauArticle.Cells[6,R],'2','C','');
          TableauArticle.Cells[7,R]:=Vergule(TableauArticle.Cells[7,R],'2','C','');
          TableauArticle.Cells[8,R]:=Vergule(TableauArticle.Cells[8,R],'2','C','');
          TableauArticle.Cells[11,R]:=Vergule(floattostr(strtoreal(TableauArticle.Cells[6,R])*strtoreal(TableauArticle.Cells[10,R])),'2','C','');
          TableauArticle.Cells[12,R]:=Vergule(floattostr(strtoreal(TableauArticle.Cells[8,R])-strtoreal(TableauArticle.Cells[11,R])),'2','C','');
          TableauArticle.Cells[13,R]:=Vergule(TableauArticle.Cells[13,R],'2','C','');
          TableauArticle.Cells[14,R]:=Vergule(floattostr(strtoreal(TableauArticle.Cells[6,R])-strtoreal(TableauArticle.Cells[13,R])),'2','C','');
          TableauArticle.Cells[15,R]:=Vergule(floattostr(strtoreal(TableauArticle.Cells[14,R])*strtoreal(TableauArticle.Cells[3,R])),'2','C','');

          CoutTotal:=CoutTotal+strtoreal(TableauArticle.Cells[11,R]);
          MontantRestant:=MontantRestant+strtoreal(TableauArticle.Cells[15,R]);
     end;

     TableauArticle.RowCount:=TableauArticle.RowCount+2;
     TableauArticle.Rows[TableauArticle.RowCount-2].Text:='';
     TableauArticle.Rows[TableauArticle.RowCount-1].Text:='';
     TableauArticle.Cells[7,TableauArticle.RowCount-1]:='Total:';
     TableauArticle.Cells[8,TableauArticle.RowCount-1]:=MemoMontantArticle.Text;
     TableauArticle.Cells[11,TableauArticle.RowCount-1]:=Vergule(floattostr(CoutTotal),'2','C','');
     TableauArticle.Cells[12,TableauArticle.RowCount-1]:=Vergule(floattostr(strtoreal(MemoMontantArticle.Text)-CoutTotal),'2','C','');
     TableauArticle.Cells[15,TableauArticle.RowCount-1]:=Vergule(floattostr(MontantRestant),'2','C','');

     AjusterColWidth(TableauArticle,'','');
     TrierTableauARowSpecial(TableauArticle,1,TableauArticle.RowCount-3,1,'1','','+');

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
end;

Procedure PrelevementCompteurs(TableauCompteur,TableauTitreCompteur:TStringGrid; MemoCummulCompteur:TMemo; EditNumPrelevementCompteur:TEdit; NumPrelevement,NumPrelevementFin,MatriculeEffectif:string);
var   i,C,R,RTabCompteur,NumEquipe,PBegin,PEnd:integer;
      FichierConcerne,indicePrelevement,NotCol,NumArchivePrelevement,DateIn,HeureIn,DatePrelevement,HeurePrelevement,PositionPrelevement:string;
      OKPrelevementCompteur,ExisteCompteur:boolean;
begin
     DateIn:='';
     HeureIn:='';
     DatePrelevement:='';
     HeurePrelevement:='';
     PBegin:=0;
     PEnd:=999999999;

     TableauTitreCompteur.Rows[0].Text:='';
     TableauTitreCompteur.Cells[0,0]:='Détail des Compteurs';

     TableauCompteur.ColCount:=22;
     TableauCompteur.Cols[1].Text:='Num.';
     TableauCompteur.Cols[2].Text:='Code Utilisateur';
     TableauCompteur.Cols[3].Text:='Num.Equipe';
     TableauCompteur.Cols[4].Text:='Num.Compteur';
     TableauCompteur.Cols[5].Text:='Code Compteur';
     TableauCompteur.Cols[6].Text:='Compteur';
     TableauCompteur.Cols[7].Text:='Identificateur';
     TableauCompteur.Cols[8].Text:='Code Article';
     TableauCompteur.Cols[9].Text:='Type Indice';
     TableauCompteur.Cols[10].Text:='Article';
     TableauCompteur.Cols[11].Text:='Prix';
     TableauCompteur.Cols[12].Text:='D.In';
     TableauCompteur.Cols[13].Text:='H.In';
     TableauCompteur.Cols[14].Text:='Indice.In';
     TableauCompteur.Cols[15].Text:='Entrées';
     TableauCompteur.Cols[16].Text:='D.Indice.';
     TableauCompteur.Cols[17].Text:='H.Indice.';
     TableauCompteur.Cols[18].Text:='Indice.Fin';
     TableauCompteur.Cols[19].Text:='Sorties';
     TableauCompteur.Cols[20].Text:='Montant';
     TableauCompteur.Cols[21].Text:='Coût';
     TableauCompteur.RowCount:=2;
     TableauCompteur.Rows[1].Text:='';

     MemoCummulCompteur.Text:='';

     FichierConcerne:='FPrelevementCompteur';

     if(NumPrelevement<>'')and(NumPrelevementFin='')then
     begin
          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,MatriculeEffectif,PositionPrelevement);
          if(RPrelevement.Archiver=false)then
          begin
               FichierConcerne:='FPrelevementCompteur';
               PBegin:=0;
               PEnd:=999999999;
          end
          else
          begin
               FichierConcerne:='FArchivePrelevementCompteur';
               if(FSListePrelevement.RBUtiliserPositionArchive.Checked=true)then
               begin
                    PBegin:=RPrelevement.RegistrePositionPrelevementCompteur.PositionArchiveBegin;
                    PEnd:=RPrelevement.RegistrePositionPrelevementCompteur.PositionArchiveEnd;
               end
               else
               begin
                    PBegin:=0;
                    PEnd:=999999999;
               end;
          end;

          EditNumPrelevementCompteur.Text:=NumPrelevement;
          DateIn:=RPrelevement.DatePrelevement;
          HeureIn:=RPrelevement.HeurePrelevement;
          DatePrelevement:=RPrelevement.DatePrelevement;
          HeurePrelevement:=RPrelevement.HeurePrelevement;
          NumEquipe:=RPrelevement.NumEquipe;
          FSPrelevement.EditPeriodePrelevement.Text:=DatePrelevement+' à: '+HeurePrelevement;
          FSPrelevement.EditNumEquipePrelevement.Text:=inttostr(NumEquipe);
          REquipe:=ChercherEquipe(FSPrelevement.EditNumEquipePrelevement.Text);
          FSPrelevement.EditEquipePrelevement.Text:=REquipe.DesignationEquipe;
     end
     else
     begin
          FichierConcerne:='FArchivePrelevementCompteur';
          EditNumPrelevementCompteur.Text:='du: '+NumPrelevement+' au: '+NumPrelevementFin;
          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevementFin),ExerciceAnnee,'',PositionPrelevement);
          DatePrelevement:=RPrelevement.DatePrelevement;
          HeurePrelevement:=RPrelevement.HeurePrelevement;
          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,'',PositionPrelevement);
          DateIn:=RPrelevement.DatePrelevement;
          HeureIn:=RPrelevement.HeurePrelevement;
          FSPrelevement.EditPeriodePrelevement.Text:='du: '+DateIn+' à '+HeureIn+' au: '+DatePrelevement+' à '+HeurePrelevement;
          FSPrelevement.EditNumEquipePrelevement.Text:='';
          FSPrelevement.EditEquipePrelevement.Text:='';
     end;

     OpenFParc(RParc);
     ChPrelevementCompteur:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FPrelevementCompteur,ChPrelevementCompteur);
     try
     if FileExists(ChPrelevementCompteur)then
     Reset(FPrelevementCompteur)
     else Rewrite(FPrelevementCompteur);
     Seek(FPrelevementCompteur,PBegin);
     R:=0;
     OKPrelevementCompteur:=false;
     indicePrelevement:='';
     i:=PBegin;
     while not eof(FPrelevementCompteur)and(i<=PEnd)do
     begin
          read(FPrelevementCompteur,RPrelevementCompteur);
          i:=i+1;
          if(MatriculeEffectif<>'')then
          begin
               if(RPrelevementCompteur.Matricule=MatriculeEffectif)
               then OKPrelevementCompteur:=true
               else OKPrelevementCompteur:=false;
          end
          else OKPrelevementCompteur:=true;

          if(OKPrelevementCompteur=true)then
          begin
                if(NumPrelevement<>'')and(NumPrelevementFin='')then
                begin
                     ExisteCompteur:=false;
                     if(RPrelevementCompteur.NumPrelevement=strtointeger(NumPrelevement))
                     then OKPrelevementCompteur:=true
                     else OKPrelevementCompteur:=false;
                end
                else
                begin
                     OKPrelevementCompteur:=false;

                     if(NumPrelevement<>'')and(NumPrelevementFin<>'')then
                     begin
                          if(RPrelevementCompteur.NumPrelevement=strtointeger(NumPrelevement))
                          then
                          begin
                               OKPrelevementCompteur:=true;
                               indicePrelevement:='Début';
                          end
                          else
                          if(RPrelevementCompteur.NumPrelevement=strtointeger(NumPrelevementFin))
                          then
                          begin
                               OKPrelevementCompteur:=true;
                               indicePrelevement:='Fin';
                          end
                          else
                          if(RPrelevementCompteur.NumPrelevement>strtointeger(NumPrelevement))
                          and(RPrelevementCompteur.NumPrelevement<strtointeger(NumPrelevementFin))
                          then
                          begin
                               OKPrelevementCompteur:=true;
                               indicePrelevement:='Centre';
                          end;
                     end;

                     if(OKPrelevementCompteur=true)then
                     begin
                          RTabCompteur:=1;
                          ExisteCompteur:=false;
                          while(RTabCompteur<=R)and(ExisteCompteur=false)do
                          begin
                               if(TableauCompteur.Cells[4,RTabCompteur]=inttostr(RPrelevementCompteur.NumCompteur))then
                               begin
                                    ExisteCompteur:=true;
                                    if(indicePrelevement='Début')then
                                    begin
                                         TableauCompteur.Cells[12,RTabCompteur]:=RPrelevementCompteur.DatePrelevement;
                                         TableauCompteur.Cells[13,RTabCompteur]:=RPrelevementCompteur.HeurePrelevement;
                                         TableauCompteur.Cells[14,RTabCompteur]:=Floattostr(RPrelevementCompteur.ValeurInitiale);
                                         TableauCompteur.Cells[15,RTabCompteur]:=Floattostr(strtoreal(TableauCompteur.Cells[15,RTabCompteur])+RPrelevementCompteur.ValeurMouvement);
                                    end;

                                    if(indicePrelevement='Fin')then
                                    begin
                                         TableauCompteur.Cells[15,RTabCompteur]:=Floattostr(strtoreal(TableauCompteur.Cells[15,RTabCompteur])+RPrelevementCompteur.ValeurMouvement);
                                         TableauCompteur.Cells[16,RTabCompteur]:=RPrelevementCompteur.DatePrelevement;
                                         TableauCompteur.Cells[17,RTabCompteur]:=RPrelevementCompteur.HeurePrelevement;
                                         TableauCompteur.Cells[18,RTabCompteur]:=Floattostr(RPrelevementCompteur.ValeurPrelevement);
                                    end;

                                    if(indicePrelevement='Centre')then
                                    begin
                                         TableauCompteur.Cells[15,RTabCompteur]:=Floattostr(strtoreal(TableauCompteur.Cells[15,RTabCompteur])+RPrelevementCompteur.ValeurMouvement);
                                    end;
                               end;
                          RTabCompteur:=RTabCompteur+1;
                          end;
                     end;
                end;
          end;

          if(OKPrelevementCompteur=true)and(ExisteCompteur=false)then
          begin
               R:=R+1;
               TableauCompteur.Rows[R].Text:=inttostr(R);
               TableauCompteur.Cells[1,R]:=NumPrelevement;
               TableauCompteur.Cells[2,R]:=RPrelevementCompteur.CodeUtilisateur;
               TableauCompteur.Cells[3,R]:=inttostr(RPrelevementCompteur.NumEquipe);
               TableauCompteur.Cells[4,R]:=inttostr(RPrelevementCompteur.NumCompteur);

               RCompteur:=ChercherCompteur(RPrelevementCompteur.NumCompteur);
               TableauCompteur.Cells[5,R]:=RCompteur.CodeCompteur;
               TableauCompteur.Cells[6,R]:=RCompteur.DesignationCompteur;
               TableauCompteur.Cells[7,R]:=RCompteur.IdentificateurCompteur;
               TableauCompteur.Cells[8,R]:=RPrelevementCompteur.CodeArticle;
               TableauCompteur.Cells[9,R]:=RCompteur.TypeIndicePrelevement;

               RStock:=ChercherStockArticle('Article',ChercherAffectationCompteur(strtointeger(RCompteur.NumAffectationCompteur)).NumProjetFinance,RPrelevementCompteur.CodeArticle,'',OKStockRecherche,RubriqueRecherche);
               TableauCompteur.Cells[10,R]:=RStock.Design+' '+RStock.Ref;
               TableauCompteur.Cells[11,R]:=floattostr(RPrelevementCompteur.PrixPrelevement);

               TableauCompteur.Cells[12,R]:=RPrelevementCompteur.DatePrelevement;
               TableauCompteur.Cells[13,R]:=RPrelevementCompteur.HeurePrelevement;
               TableauCompteur.Cells[14,R]:=Floattostr(RPrelevementCompteur.ValeurInitiale);

               TableauCompteur.Cells[15,R]:=Floattostr(strtoreal(TableauCompteur.Cells[15,R])+RPrelevementCompteur.ValeurMouvement);

               TableauCompteur.Cells[16,R]:=RPrelevementCompteur.DatePrelevement;
               TableauCompteur.Cells[17,R]:=RPrelevementCompteur.HeurePrelevement;

               TableauCompteur.Cells[18,R]:=Floattostr(RPrelevementCompteur.ValeurPrelevement);

               TableauCompteur.Cells[19,R]:='';
               TableauCompteur.Cells[20,R]:='';
               TableauCompteur.Cells[21,R]:=Floattostr(RPrelevementCompteur.CoutUnitaire);
          end;
     end;
     finally
     CloseFile(FPrelevementCompteur);
     end;

     if(R>0)then TableauCompteur.RowCount:=R+1
            else TableauCompteur.RowCount:=2;

     for R:=1 to TableauCompteur.RowCount-1 do
     begin
          TableauCompteur.Cells[11,R]:=Vergule(TableauCompteur.Cells[11,R],FSPrelevement.EditNbrChiffreApreVerguleCompteur.Text,'C','');
          TableauCompteur.Cells[14,R]:=Vergule(TableauCompteur.Cells[14,R],FSPrelevement.EditNbrChiffreApreVerguleCompteur.Text,'C','');
          TableauCompteur.Cells[15,R]:=Vergule(TableauCompteur.Cells[15,R],FSPrelevement.EditNbrChiffreApreVerguleCompteur.Text,'C','');
          TableauCompteur.Cells[18,R]:=Vergule(TableauCompteur.Cells[18,R],FSPrelevement.EditNbrChiffreApreVerguleCompteur.Text,'C','');
          TableauCompteur.Cells[21,R]:=Vergule(TableauCompteur.Cells[21,R],FSPrelevement.EditNbrChiffreApreVerguleCompteur.Text,'C','');

          if(TableauCompteur.Cells[9,R]='Stock restant.')then
          begin
               TableauCompteur.Cells[19,R]:=Vergule(floattostr(strtoreal(TableauCompteur.Cells[14,R])+strtoreal(TableauCompteur.Cells[15,R])-strtoreal(TableauCompteur.Cells[18,R])),FSPrelevement.EditNbrChiffreApreVerguleCompteur.Text,'C','');
          end
          else
          if(TableauCompteur.Cells[9,R]='Cumul des Sorties.')then
          begin
               TableauCompteur.Cells[19,R]:=Vergule(floattostr(strtoreal(TableauCompteur.Cells[18,R])-strtoreal(TableauCompteur.Cells[14,R])),FSPrelevement.EditNbrChiffreApreVerguleCompteur.Text,'C','')
          end
          else
          if(TableauCompteur.Cells[9,R]='Stock Sortant.')then
          begin
               TableauCompteur.Cells[19,R]:=TableauCompteur.Cells[18,R];
          end;


          TableauCompteur.Cells[20,R]:=Vergule(floattostr(strtoreal(TableauCompteur.Cells[19,R])*strtoreal(TableauCompteur.Cells[11,R])),FSPrelevement.EditNbrChiffreApreVerguleCompteur.Text,'C','');

          MemoCummulCompteur.Text:=Vergule(floattostr(strtoreal(MemoCummulCompteur.Text)+strtoreal(TableauCompteur.Cells[20,R])),FSPrelevement.EditNbrChiffreApreVerguleCompteur.Text,'C','');
     end;

     TableauCompteur.RowCount:=TableauCompteur.RowCount+2;
     TableauCompteur.Rows[TableauCompteur.RowCount-2].Text:='';
     TableauCompteur.Rows[TableauCompteur.RowCount-1].Text:='';
     TableauCompteur.Cells[19,TableauCompteur.RowCount-1]:='Total:';
     TableauCompteur.Cells[20,TableauCompteur.RowCount-1]:=MemoCummulCompteur.Text;

NotCol:='1;2;3;4;5;7;8;9;10;12;13;16;17;21';
for C:=0 to TableauCompteur.ColCount-1 do
begin
     if existenumintexte(inttostr(C),NotCol)then TableauCompteur.ColWidths[C]:=0;
end;
AjusterColWidth(TableauCompteur,'',NotCol);
TrierTableauARowSpecial(TableauCompteur,1,TableauCompteur.RowCount-3,1,'4','Num','+');
LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

FSPrelevement.EditControleMontantCompteurTableauPrelevementCompteur.Text:=MemoCummulCompteur.Text;
end;

procedure TFSNowPrelevement.EditNumEquipeEnter(Sender: TObject);
begin
FSNowPrelevement.TableauEquipe.Visible:=true;
FSNowPrelevement.TableauEquipe.Left:=FSNowPrelevement.Panel1.Left+FSNowPrelevement.EditNumEquipe.Left;
FSNowPrelevement.TableauEquipe.Top:=FSNowPrelevement.Panel1.Top+FSNowPrelevement.EditNumEquipe.Top+FSNowPrelevement.EditNumEquipe.Height+2;
ListeEquipe(FSNowPrelevement.TableauEquipe,'');
FSNowPrelevement.TableauEquipe.SetFocus;
end;

procedure TFSNowPrelevement.TableauEquipeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSNowPrelevement.EditNumEquipe.Text:=FSNowPrelevement.TableauEquipe.Cells[1,FSNowPrelevement.TableauEquipe.Row];
     FSNowPrelevement.EditDesignationEquipe.Text:=FSNowPrelevement.TableauEquipe.Cells[3,FSNowPrelevement.TableauEquipe.Row];
     FSNowPrelevement.EditHeurePrelevement.Time:=strtotime(FSNowPrelevement.TableauEquipe.Cells[5,FSNowPrelevement.TableauEquipe.Row]);
     ListeEffectifEquipe(FSNowPrelevement.TableauEffectifEquipe,FSNowPrelevement.TableauEquipe.Cells[1,FSNowPrelevement.TableauEquipe.Row],false);
     FSNowPrelevement.TableauEquipe.Visible:=false;
     FSNowPrelevement.BitNowPrelevement.SetFocus;
end;

end;

procedure TFSNowPrelevement.TableauEquipeClick(Sender: TObject);
begin
FSNowPrelevement.EditNumEquipe.Text:=FSNowPrelevement.TableauEquipe.Cells[1,FSNowPrelevement.TableauEquipe.Row];
FSNowPrelevement.EditDesignationEquipe.Text:=FSNowPrelevement.TableauEquipe.Cells[3,FSNowPrelevement.TableauEquipe.Row];
ListeEffectifEquipe(FSNowPrelevement.TableauEffectifEquipe,FSNowPrelevement.TableauEquipe.Cells[1,FSNowPrelevement.TableauEquipe.Row],false);
end;

procedure TFSNowPrelevement.EditDatePrelevementKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSNowPrelevement.EditHeurePrelevement.SetFocus;
end;

end;

procedure TFSNowPrelevement.EditHeurePrelevementKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSNowPrelevement.EditNumEquipe.SetFocus;
end;

end;

procedure TFSNowPrelevement.EditNumEquipeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     FSNowPrelevement.TableauEquipe.SetFocus;
end;

end;

procedure TFSNowPrelevement.BitNowPrelevementClick(Sender: TObject);
var i,l,lSelect,R,NbrCompteurPlanier,NbrCompteurAffecter,PositionPrelevement:integer;
    ValeurIn,QuantiteInitiale,QuatiteEntree,QuantiteSortie,QuantiteStock:real;
    NumPrelevement,NumPrelevementLast,NumPrelevementFin,Matricule,DateIn,HeureIn,DatePrelevement,HeurePrelevement,NumStructure,TypeProcesPrelevement,FichierConcernePrelevement,AdressePrelevement:string;
    OKCompteur,OKArticle,OKControleTotalCompteurAffectation,OKPrelevementLSExiste:boolean;
begin
     NumPrelevementLast:=ChercherPrelevementLastSpecial(datetostr(FSNowPrelevement.EditDatePrelevement.Date),Timetostr(FSNowPrelevement.EditHeurePrelevement.Time),OKPrelevementLSExiste);

     if(OKPrelevementLSExiste=true)then
     begin
          showmessage('Attention, Le prélèvement est déjà saisi !');
          Exit;
     end;


     FSPrelevement.EditMatricule.Text:='';
     FSPrelevement.EditNomEffectif.Text:='';
     
if(FSNowPrelevement.EditNumPrelevement.Text='')
or(FSNowPrelevement.EditCodeUtilisateur.Text='')
or(datetostr(FSNowPrelevement.EditDatePrelevement.Date)='')
or(Timetostr(FSNowPrelevement.EditHeurePrelevement.Time)='')
or(FSNowPrelevement.EditNumEquipe.Text='')
then
begin
     showmessage('Veuillez saisire les données de l''enlèvement SVP!');
     if(FSNowPrelevement.EditNumPrelevement.Text='')then FSNowPrelevement.EditNumPrelevement.SetFocus;
     if(FSNowPrelevement.EditCodeUtilisateur.Text='')then FSNowPrelevement.EditCodeUtilisateur.SetFocus;
     if(datetostr(FSNowPrelevement.EditDatePrelevement.Date)='')then FSNowPrelevement.EditDatePrelevement.SetFocus;
     if(Timetostr(FSNowPrelevement.EditHeurePrelevement.Time)='')then FSNowPrelevement.EditHeurePrelevement.SetFocus;
     if(FSNowPrelevement.EditNumEquipe.Text='')then FSNowPrelevement.EditNumEquipe.SetFocus;
     Exit;
end;

NumPrelevement:=FSNowPrelevement.EditNumPrelevement.Text;
NumPrelevementFin:='';
Matricule:='';
DateIn:='';                   
HeureIn:='';
DatePrelevement:=datetostr(FSNowPrelevement.EditDatePrelevement.Date);
HeurePrelevement:=Timetostr(FSNowPrelevement.EditHeurePrelevement.Time);
if(NumPrelevementLast='')then NumPrelevementLast:=inttostr(strtointeger(NumPrelevement)-1);

TypeProcesPrelevement:='Business';
FichierConcernePrelevement:='FPrelevement';
AdressePrelevement:='';
if not(FunctionAdresseProces(TypeProcesPrelevement,FichierConcernePrelevement,'',AdressePrelevement,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcernePrelevement+' recherché !');
end;

ChPrelevement:=AdressePrelevement;
assignfile(FPrelevement,ChPrelevement);
try
if FileExists(ChPrelevement)then
Reset(FPrelevement)
else Rewrite(FPrelevement);
PositionPrelevement:=strtointeger(FSNowPrelevement.EditPositionPrelevement.Text);
for R:=1 to FSNowPrelevement.TableauEffectifEquipe.RowCount-1 do
begin
     if(FSNowPrelevement.TableauEffectifEquipe.Cells[1,R]='OK')then
     begin
          Seek(FPrelevement,PositionPrelevement);
          RPrelevement.NumPrelevement:=strtointeger(NumPrelevement);
          RPrelevement.CodeUtilisateur:=FSNowPrelevement.EditCodeUtilisateur.Text;
          RPrelevement.NumEquipe:=strtointeger(FSNowPrelevement.EditNumEquipe.Text);
          RPrelevement.Matricule:=FSNowPrelevement.TableauEffectifEquipe.Cells[3,R];
          RPrelevement.DatePrelevement:=DatePrelevement;
          RPrelevement.HeurePrelevement:=HeurePrelevement;
          RPrelevement.Archiver:=false;

          RPrelevement.RegistrePositionPrelevementCompteur.PositionArchiveBegin:=0;
          RPrelevement.RegistrePositionPrelevementCompteur.PositionArchiveEnd:=0;

          RPrelevement.RegistrePositionPrelevementUniteFonds.PositionArchiveBegin:=0;
          RPrelevement.RegistrePositionPrelevementUniteFonds.PositionArchiveEnd:=0;

          RPrelevement.RegistrePositionPrelevementEffectifEquipe.PositionArchiveBegin:=0;
          RPrelevement.RegistrePositionPrelevementEffectifEquipe.PositionArchiveEnd:=0;

          RPrelevement.RegistrePositionRegistreAffectationEffectifEquipe.PositionArchiveBegin:=0;
          RPrelevement.RegistrePositionRegistreAffectationEffectifEquipe.PositionArchiveEnd:=0;

          RPrelevement.RegistrePositionDetailArticlePrelevementUniteFonds.PositionArchiveBegin:=0;
          RPrelevement.RegistrePositionDetailArticlePrelevementUniteFonds.PositionArchiveEnd:=0;

          RPrelevement.RegistrePositionMoyenTransportPrelevement.PositionArchiveBegin:=0;
          RPrelevement.RegistrePositionMoyenTransportPrelevement.PositionArchiveEnd:=0;

          RPrelevement.RegistrePositionEtatStockPrelevement.PositionArchiveBegin:=0;
          RPrelevement.RegistrePositionEtatStockPrelevement.PositionArchiveEnd:=0;

          RPrelevement.RegistrePositionAutre2.PositionArchiveBegin:=0;
          RPrelevement.RegistrePositionAutre2.PositionArchiveEnd:=0;

          RPrelevement.RegistrePositionAutre3.PositionArchiveBegin:=0;
          RPrelevement.RegistrePositionAutre3.PositionArchiveEnd:=0;

          RPrelevement.MontantPrelevement:=0;
          RPrelevement.MontantFondRoulement:=0;
          RPrelevement.MontantUnitesFonds:=0;
          RPrelevement.SoldePrelevement:=0;
          write(FPrelevement,RPrelevement);
          
          PositionPrelevement:=PositionPrelevement+1;
     end;
end;
finally
CloseFile(FPrelevement);
end;

OKControleTotalCompteurAffectation:=ControleTotalAffectationCompteur(NumPrelevement,NbrCompteurPlanier,NbrCompteurAffecter);

if(OKControleTotalCompteurAffectation=true)then
begin
      //////////////// Création du PRELEVEMENT COMPTEUR...............................

      OpenFParc(RParc);
      ChPrelevementCompteur:=RParc.Parcours+'\'+Exercice+'FPrelevementCompteur';
      assignfile(FPrelevementCompteur,ChPrelevementCompteur);
      try
      if FileExists(ChPrelevementCompteur)then
      Reset(FPrelevementCompteur)
      else Rewrite(FPrelevementCompteur);
      Seek(FPrelevementCompteur,0);
      Truncate(FPrelevementCompteur);
      i:=0;

      /////////////////////////Chargement Compteurs...................................
      R:=1;
      while(R<=FSNowPrelevement.TableauEffectifEquipe.RowCount-1)do
      begin
           if(FSNowPrelevement.TableauEffectifEquipe.Cells[1,R]='OK')then
           begin
                OpenFParc(RParc);
                ChCompteur:=RParc.Parcours+'\'+Exercice+'FCompteur';
                assignfile(FCompteur,ChCompteur);
                try
                if FileExists(ChCompteur)then
                Reset(FCompteur)
                else Rewrite(FCompteur);
                Seek(FCompteur,0);
                while not eof(FCompteur)do
                begin
                     read(FCompteur,RCompteur);

                     if(ControleEffectifAffectationCompteur(NumPrelevement,FSNowPrelevement.TableauEffectifEquipe.Cells[3,R],inttostr(RCompteur.NumCompteur),NbrCompteurAffecter)=true)
                     then OKCompteur:=true
                     else OKCompteur:=false;

                     if(OKCompteur=true)then
                     begin
                           RPrelevementCompteur.NumPrelevement:=strtointeger(NumPrelevement);
                           RPrelevementCompteur.CodeUtilisateur:=FSNowPrelevement.EditCodeUtilisateur.Text;
                           RPrelevementCompteur.NumEquipe:=strtointeger(FSNowPrelevement.EditNumEquipe.Text);
                           RPrelevementCompteur.Matricule:=FSNowPrelevement.TableauEffectifEquipe.Cells[3,R];
                           RPrelevementCompteur.NumCompteur:=RCompteur.NumCompteur;
                           RPrelevementCompteur.CodeArticle:=RCompteur.CodeArticleGenerateur;
                           RStock:=ChercherStockArticle('Article',ChercherAffectationCompteur(strtointeger(RCompteur.NumAffectationCompteur)).NumProjetFinance,RPrelevementCompteur.CodeArticle,'',OKStockRecherche,RubriqueRecherche);
                           RPrelevementCompteur.CoutUnitaire:=RStock.CoutUnitaire;
                           RPrelevementCompteur.PrixPrelevement:=RrixAppliqerFormuleCalcule(RCompteur.CodeTypeFormule,RStock.Code,FSFicheSaisie.EditNbrChiffreApresVergulePrix.Text,RStock.PrixVenteDetaille);

                           if(DataArchiveCompteur(NumPrelevementLast,'',inttostr(RPrelevementCompteur.NumCompteur),DateIn,HeureIn,ValeurIn))then
                           begin
                                RPrelevementCompteur.DateInitiale:=DateIn;
                                RPrelevementCompteur.HeureInitiale:=HeureIn;
                                RPrelevementCompteur.ValeurInitiale:=ValeurIn;
                                RPrelevementCompteur.ValeurPrelevement:=ValeurIn;
                           end
                           else
                           begin
                                RPrelevementCompteur.DateInitiale:=DatePrelevement;
                                RPrelevementCompteur.HeureInitiale:=HeurePrelevement;
                                RPrelevementCompteur.ValeurInitiale:=0;
                                RPrelevementCompteur.ValeurPrelevement:=0;
                           end;

                           RPrelevementCompteur.ValeurMouvement:=0;
                           RPrelevementCompteur.DatePrelevement:=DatePrelevement;
                           RPrelevementCompteur.HeurePrelevement:=HeurePrelevement;
                           Seek(FPrelevementCompteur,i);
                           write(FPrelevementCompteur,RPrelevementCompteur);
                           i:=i+1;
                     end;
                end;
                finally
                CloseFile(FCompteur);
                end;
           end;
      R:=R+1;
      end;
      finally
      CloseFile(FPrelevementCompteur);
      end;

      //////////////// Criation du PRELEVEMENT UNITE DE FONDS...............................
      OpenFParc(RParc);
      ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+'FPrelevementUniteFonds';
      assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
      try
      if FileExists(ChPrelevementUniteFonds)then
      Reset(FPrelevementUniteFonds)
      else Rewrite(FPrelevementUniteFonds);
      Seek(FPrelevementUniteFonds,0);
      Truncate(FPrelevementUniteFonds);
      i:=0;

      /////////////////////////Chargement Competrus UNITE DE FONDS...................................
      R:=1;
      while(R<=FSNowPrelevement.TableauEffectifEquipe.RowCount-1)do
      begin
           if(FSNowPrelevement.TableauEffectifEquipe.Cells[1,R]='OK')then
           begin
                OpenFParc(RParc);
                ChUniteFonds:=RParc.Parcours+'\'+Exercice+'FUniteFonds';
                assignfile(FUniteFonds,ChUniteFonds);
                try
                if FileExists(ChUniteFonds)then
                Reset(FUniteFonds)
                else Rewrite(FUniteFonds);
                Seek(FUniteFonds,0);
                while not eof(FUniteFonds)do
                begin
                     read(FUniteFonds,RUniteFonds);
                     RPrelevementUniteFonds.NumPrelevementUniteFonds:=i;
                     RPrelevementUniteFonds.NumPrelevement:=strtointeger(NumPrelevement);
                     RPrelevementUniteFonds.CodeUtilisateur:=FSNowPrelevement.EditCodeUtilisateur.Text;
                     RPrelevementUniteFonds.DatePrelevement:=datetostr(FSNowPrelevement.EditDatePrelevement.Date);
                     RPrelevementUniteFonds.HeurePrelevement:=Timetostr(FSNowPrelevement.EditHeurePrelevement.Time);
                     RPrelevementUniteFonds.NumEquipe:=strtointeger(FSNowPrelevement.EditNumEquipe.Text);
                     RPrelevementUniteFonds.Matricule:=FSNowPrelevement.TableauEffectifEquipe.Cells[3,R];
                     RPrelevementUniteFonds.NumUniteFonds:=RUniteFonds.NumUniteFonds;
                     RPrelevementUniteFonds.ValeurPrecise:=RUniteFonds.ValeurPrecise;
                     RPrelevementUniteFonds.TypeProces:=RUniteFonds.TypeProces;
                     RPrelevementUniteFonds.FichierConcerne:=RUniteFonds.FichierConcerne;
                     RPrelevementUniteFonds.CodeTiers:='';
                     RPrelevementUniteFonds.ModePaiement:=RUniteFonds.TypePiece;
                     RPrelevementUniteFonds.NumPiece:='';
                     RPrelevementUniteFonds.Domiciliation:='';
                     RPrelevementUniteFonds.ValeurPrelevement:=0;
                     Seek(FPrelevementUniteFonds,i);
                     write(FPrelevementUniteFonds,RPrelevementUniteFonds);
                     i:=i+1;
                end;
                finally
                CloseFile(FUniteFonds);
                end;
           end;
      R:=R+1;
      end;
      finally
      CloseFile(FPrelevementUniteFonds);
      end;

      //////////////// Création du Registre Etat du stock prélèvement...............................
      OpenFParc(RParc);
      ChRegistreEtatStockPrelevement:=RParc.Parcours+'\'+Exercice+'FRegistreEtatStockPrelevement';
      assignfile(FRegistreEtatStockPrelevement,ChRegistreEtatStockPrelevement);
      try
      if FileExists(ChRegistreEtatStockPrelevement)then
      Reset(FRegistreEtatStockPrelevement)
      else Rewrite(FRegistreEtatStockPrelevement);
      Seek(FRegistreEtatStockPrelevement,0);
      truncate(FRegistreEtatStockPrelevement);
      i:=0;

      OpenFParc(RParc);
      ChPrelevementCompteur:=RParc.Parcours+'\'+Exercice+'FPrelevementCompteur';
      assignfile(FPrelevementCompteur,ChPrelevementCompteur);
      try
      if FileExists(ChPrelevementCompteur)then
      Reset(FPrelevementCompteur)
      else Rewrite(FPrelevementCompteur);
      Seek(FPrelevementCompteur,0);
      while not eof(FPrelevementCompteur)do
      begin
           read(FPrelevementCompteur,RPrelevementCompteur);

           Seek(FRegistreEtatStockPrelevement,0);
           l:=0;
           lSelect:=l;
           OKArticle:=false;
           while not eof(FRegistreEtatStockPrelevement)and(OKArticle=false)do
           begin
                read(FRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);
                if(RRegistreEtatStockPrelevement.NumPrelevement=RPrelevementCompteur.NumPrelevement)
                and(RRegistreEtatStockPrelevement.Matricule=RPrelevementCompteur.Matricule)
                and(RRegistreEtatStockPrelevement.CodeArticle=RPrelevementCompteur.CodeArticle)
                then
                begin
                     OKArticle:=true;
                     lSelect:=l;
                end;
           l:=l+1;
           end;

           if(OKArticle=true)then
           begin
                //l:=lSelect;

                //Seek(FRegistreEtatStockPrelevement,l);
                //write(FRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);
           end
           else
           begin
                RRegistreEtatStockPrelevement.PositionRegistreEtatStockPrelevement:=i;
                RRegistreEtatStockPrelevement.NumPrelevement:=RPrelevementCompteur.NumPrelevement;
                RRegistreEtatStockPrelevement.CodeUtilisateur:=RPrelevementCompteur.CodeUtilisateur;
                RRegistreEtatStockPrelevement.NumEquipe:=RPrelevementCompteur.NumEquipe;
                RRegistreEtatStockPrelevement.DatePrelevement:=RPrelevementCompteur.DatePrelevement;
                RRegistreEtatStockPrelevement.HeurePrelevement:=RPrelevementCompteur.HeurePrelevement;
                RRegistreEtatStockPrelevement.Matricule:=RPrelevementCompteur.Matricule;
                RRegistreEtatStockPrelevement.CodeStructureStock:=NumStructure;
                RRegistreEtatStockPrelevement.CodeArticle:=RPrelevementCompteur.CodeArticle;

                RCompteurCopie:=ChercherCompteur(RPrelevementCompteur.NumCompteur);
                NumStructure:=ChercherAffectationCompteur(strtointeger(RCompteurCopie.NumAffectationCompteur)).NumProjetFinance;

                RStockArticleCopie:=ChercherStockArticle('Article',NumStructure,RPrelevementCompteur.CodeArticle,'',OKStockRecherche,RubriqueRecherche);

                if(DataArchiveEtatStockPrelevement(NumPrelevementLast,Matricule,RPrelevementCompteur.CodeArticle,QuantiteInitiale,QuatiteEntree,QuantiteSortie,QuantiteStock))then
                begin
                     QuantiteInitiale:=QuantiteStock;
                     QuatiteEntree:=0;
                     QuantiteSortie:=0;
                     QuantiteStock:=QuantiteStock;

                     if(QuantiteStock<>RStockArticleCopie.QteStock)then
                     begin
                          if(NonOui('Article: '+RStockArticleCopie.Design+' '+RStockArticleCopie.Ref+', sa valeur du stock actuel est différente du celle obtenue au prélèvement n° '+NumPrelevementLast+', Voulez vous prendre la valeur du Stock ?'+' {'+floattostr(RStockArticleCopie.QteStock)+' et '+floattostr(QuantiteStock)+'}'))then
                          begin
                               QuantiteInitiale:=RStockArticleCopie.QteStock;
                               QuatiteEntree:=0;
                               QuantiteSortie:=0;
                               QuantiteStock:=RStockArticleCopie.QteStock;
                          end;
                     end;
                end
                else
                begin
                     QuantiteInitiale:=RStockArticleCopie.QteStock;
                     QuatiteEntree:=0;
                     QuantiteSortie:=0;
                     QuantiteStock:=RStockArticleCopie.QteStock;
                end;

                if(RCompteurCopie.TypeIndicePrelevement='Stock restant.')or(RCompteurCopie.TypeIndicePrelevement='Stock Sortant.')then
                begin
                     if(RPrelevementCompteur.ValeurInitiale>QuantiteStock)
                     then RRegistreEtatStockPrelevement.QuantiteInitiale:=RPrelevementCompteur.ValeurInitiale
                     else RRegistreEtatStockPrelevement.QuantiteInitiale:=QuantiteStock;
                end
                else RRegistreEtatStockPrelevement.QuantiteInitiale:=QuantiteStock;

                RRegistreEtatStockPrelevement.QuantiteEntree:=0;
                RRegistreEtatStockPrelevement.QuantiteSortie:=0;
                RRegistreEtatStockPrelevement.QuantiteStock:=RRegistreEtatStockPrelevement.QuantiteInitiale;
                RRegistreEtatStockPrelevement.CoutUnitaire:=RPrelevementCompteur.CoutUnitaire;
                RRegistreEtatStockPrelevement.PrixUnitaire:=RPrelevementCompteur.PrixPrelevement;
                Seek(FRegistreEtatStockPrelevement,i);
                write(FRegistreEtatStockPrelevement,RRegistreEtatStockPrelevement);
                i:=i+1;
           end;
      end;
      finally
      CloseFile(FPrelevementCompteur);
      end;

      finally
      CloseFile(FRegistreEtatStockPrelevement);
      end;

      /////////////////////////Chargement Effectifs Equipe...................................
      OpenFParc(RParc);
      ChPrelevementEffectifEquipe:=RParc.Parcours+'\'+Exercice+'FPrelevementEffectifEquipe';
      assignfile(FPrelevementEffectifEquipe,ChPrelevementEffectifEquipe);
      try
      if FileExists(ChPrelevementEffectifEquipe)then
      Reset(FPrelevementEffectifEquipe)
      else Rewrite(FPrelevementEffectifEquipe);
      Seek(FPrelevementEffectifEquipe,0);
      Truncate(FPrelevementEffectifEquipe);
      i:=0;
      for R:=1 to FSNowPrelevement.TableauEffectifEquipe.RowCount-1 do
      begin
           if(FSNowPrelevement.TableauEffectifEquipe.Cells[1,R]='OK')then
           begin
                RPrelevementEffectifEquipe.NumPrelevementEffectifEquipe:=i;
                RPrelevementEffectifEquipe.NumPrelevement:=strtointeger(NumPrelevement);
                RPrelevementEffectifEquipe.CodeUtilisateur:=FSNowPrelevement.EditCodeUtilisateur.Text;
                RPrelevementEffectifEquipe.DatePrelevement:=datetostr(FSNowPrelevement.EditDatePrelevement.Date);
                RPrelevementEffectifEquipe.HeurePrelevement:=Timetostr(FSNowPrelevement.EditHeurePrelevement.Time);
                RPrelevementEffectifEquipe.NumEquipe:=strtointeger(FSNowPrelevement.TableauEffectifEquipe.Cells[2,R]);
                RPrelevementEffectifEquipe.Matricule:=FSNowPrelevement.TableauEffectifEquipe.Cells[3,R];

                Seek(FPrelevementEffectifEquipe,i);
                write(FPrelevementEffectifEquipe,RPrelevementEffectifEquipe);
                i:=i+1;
           end;
      end;
      finally
      CloseFile(FPrelevementEffectifEquipe);
      end;
end
else
if(NbrCompteurAffecter=0)then
begin
     //////////////// Création du PRELEVEMENT COMPTEUR...............................
      OpenFParc(RParc);
      ChPrelevementCompteur:=RParc.Parcours+'\'+Exercice+'FPrelevementCompteur';
      assignfile(FPrelevementCompteur,ChPrelevementCompteur);
      try
      if FileExists(ChPrelevementCompteur)then
      Reset(FPrelevementCompteur)
      else Rewrite(FPrelevementCompteur);
      Seek(FPrelevementCompteur,0);
      Truncate(FPrelevementCompteur);
      i:=0;

      /////////////////////////Chargement Competrus...................................
      OpenFParc(RParc);
      ChCompteur:=RParc.Parcours+'\'+Exercice+'FCompteur';
      assignfile(FCompteur,ChCompteur);
      try
      if FileExists(ChCompteur)then
      Reset(FCompteur)
      else Rewrite(FCompteur);
      Seek(FCompteur,0);
      while not eof(FCompteur)do
      begin
           read(FCompteur,RCompteur);    

           OKCompteur:=true;

           if(OKCompteur=true)then
           begin
                RPrelevementCompteur.NumPrelevement:=strtointeger(NumPrelevement);
                RPrelevementCompteur.CodeUtilisateur:=FSNowPrelevement.EditCodeUtilisateur.Text;
                RPrelevementCompteur.NumEquipe:=strtointeger(FSNowPrelevement.EditNumEquipe.Text);
                RPrelevementCompteur.Matricule:='';
                RPrelevementCompteur.NumCompteur:=RCompteur.NumCompteur;
                RPrelevementCompteur.CodeArticle:=RCompteur.CodeArticleGenerateur;
                RStock:=ChercherStockArticle('Article','',RPrelevementCompteur.CodeArticle,'',OKStockRecherche,RubriqueRecherche);
                RPrelevementCompteur.PrixPrelevement:=RStock.PrixVenteDetaille;

                if(DataArchiveCompteur(NumPrelevementLast,'',inttostr(RPrelevementCompteur.NumCompteur),DateIn,HeureIn,ValeurIn))then
                begin
                     RPrelevementCompteur.DateInitiale:=DateIn;
                     RPrelevementCompteur.HeureInitiale:=HeureIn;
                     RPrelevementCompteur.ValeurInitiale:=ValeurIn;
                     RPrelevementCompteur.ValeurPrelevement:=ValeurIn;
                end
                else
                begin
                     RPrelevementCompteur.DateInitiale:=DatePrelevement;
                     RPrelevementCompteur.HeureInitiale:=HeurePrelevement;
                     RPrelevementCompteur.ValeurInitiale:=0;
                     RPrelevementCompteur.ValeurPrelevement:=0;
                end;

                RPrelevementCompteur.ValeurMouvement:=0;
                RPrelevementCompteur.DatePrelevement:=DatePrelevement;
                RPrelevementCompteur.HeurePrelevement:=HeurePrelevement;
                Seek(FPrelevementCompteur,i);
                write(FPrelevementCompteur,RPrelevementCompteur);
                i:=i+1;
           end;
      end;
      finally
      CloseFile(FCompteur);
      end;

      finally
      CloseFile(FPrelevementCompteur);
      end;

      //////////////// Création du PRELEVEMENT UNITE DE FONDS...............................
      OpenFParc(RParc);
      ChPrelevementUniteFonds:=RParc.Parcours+'\'+Exercice+'FPrelevementUniteFonds';
      assignfile(FPrelevementUniteFonds,ChPrelevementUniteFonds);
      try
      if FileExists(ChPrelevementUniteFonds)then
      Reset(FPrelevementUniteFonds)
      else Rewrite(FPrelevementUniteFonds);
      Seek(FPrelevementUniteFonds,0);
      Truncate(FPrelevementUniteFonds);
      i:=0;

      /////////////////////////Chargement Competrus UNITE DE FONDS...................................
      OpenFParc(RParc);
      ChUniteFonds:=RParc.Parcours+'\'+Exercice+'FUniteFonds';
      assignfile(FUniteFonds,ChUniteFonds);
      try
      if FileExists(ChUniteFonds)then
      Reset(FUniteFonds)
      else Rewrite(FUniteFonds);
      Seek(FUniteFonds,0);
      while not eof(FUniteFonds)do
      begin
           read(FUniteFonds,RUniteFonds);
           RPrelevementUniteFonds.NumPrelevementUniteFonds:=i;
           RPrelevementUniteFonds.NumPrelevement:=strtointeger(NumPrelevement);
           RPrelevementUniteFonds.CodeUtilisateur:=FSNowPrelevement.EditCodeUtilisateur.Text;
           RPrelevementUniteFonds.DatePrelevement:=datetostr(FSNowPrelevement.EditDatePrelevement.Date);
           RPrelevementUniteFonds.HeurePrelevement:=Timetostr(FSNowPrelevement.EditHeurePrelevement.Time);
           RPrelevementUniteFonds.NumEquipe:=strtointeger(FSNowPrelevement.EditNumEquipe.Text);
           RPrelevementUniteFonds.Matricule:='';
           RPrelevementUniteFonds.NumUniteFonds:=RUniteFonds.NumUniteFonds;
           RPrelevementUniteFonds.ValeurPrecise:=RUniteFonds.ValeurPrecise;
           RPrelevementUniteFonds.TypeProces:=RUniteFonds.TypeProces;
           RPrelevementUniteFonds.FichierConcerne:=RUniteFonds.FichierConcerne;
           RPrelevementUniteFonds.CodeTiers:='';
           RPrelevementUniteFonds.ModePaiement:=RUniteFonds.TypePiece;
           RPrelevementUniteFonds.NumPiece:='';
           RPrelevementUniteFonds.Domiciliation:='';
           RPrelevementUniteFonds.ValeurPrelevement:=0;
           Seek(FPrelevementUniteFonds,i);
           write(FPrelevementUniteFonds,RPrelevementUniteFonds);
           i:=i+1;
      end;
      finally
      CloseFile(FUniteFonds);
      end;

      finally
      CloseFile(FPrelevementUniteFonds);
      end;

      /////////////////////////Chargement Effectifs Equipe...................................
      OpenFParc(RParc);
      ChPrelevementEffectifEquipe:=RParc.Parcours+'\'+Exercice+'FPrelevementEffectifEquipe';
      assignfile(FPrelevementEffectifEquipe,ChPrelevementEffectifEquipe);
      try
      if FileExists(ChPrelevementEffectifEquipe)then
      Reset(FPrelevementEffectifEquipe)
      else Rewrite(FPrelevementEffectifEquipe);
      Seek(FPrelevementEffectifEquipe,0);
      Truncate(FPrelevementEffectifEquipe);
      i:=0;
      for R:=1 to FSNowPrelevement.TableauEffectifEquipe.RowCount-1 do
      begin
           if(FSNowPrelevement.TableauEffectifEquipe.Cells[1,R]='OK')then
           begin
                RPrelevementEffectifEquipe.NumPrelevementEffectifEquipe:=i;
                RPrelevementEffectifEquipe.NumPrelevement:=strtointeger(NumPrelevement);
                RPrelevementEffectifEquipe.CodeUtilisateur:=FSNowPrelevement.EditCodeUtilisateur.Text;
                RPrelevementEffectifEquipe.DatePrelevement:=datetostr(FSNowPrelevement.EditDatePrelevement.Date);
                RPrelevementEffectifEquipe.HeurePrelevement:=Timetostr(FSNowPrelevement.EditHeurePrelevement.Time);
                RPrelevementEffectifEquipe.NumEquipe:=strtointeger(FSNowPrelevement.TableauEffectifEquipe.Cells[2,R]);
                RPrelevementEffectifEquipe.Matricule:=FSNowPrelevement.TableauEffectifEquipe.Cells[3,R];

                Seek(FPrelevementEffectifEquipe,i);
                write(FPrelevementEffectifEquipe,RPrelevementEffectifEquipe);
                i:=i+1;
           end;
      end;
      finally
      CloseFile(FPrelevementEffectifEquipe);
      end;
end
else
begin
     AfficherMessage('Affectation Compteur non achevé !');
     Exit;
end;

FSNowPrelevement.Close;

ControleCompteur;
ControleUniteFonds;
FSPrelevement.PagePrelevementCompteursUniteFonds.Show;
FSPrelevement.Show;
FSPrelevement.AfficheDetailCompteurs.Left:=40;
FSPrelevement.AfficheDetailCompteurs.Top:=40;

AfficherPrelevement(FSPrelevement.OKEffectifEquipe.Checked,FSPrelevement.OKAffectationEffectifEquipe.Checked,FSPrelevement.OKPrelevementUniteFonds.Checked,FSPrelevement.OKDetailArticle.Checked,FSPrelevement.OKArborescenceArticle.Checked,FSPrelevement.OKDetailTypeUniteFonds.Checked,FSPrelevement.OKDetailTiers.Checked,FSPrelevement.OKEtatStockPrelevement.Checked,FSPrelevement.OKRecapitulatif.Checked,FSPrelevement.TableauPrelevementCompteur,FSPrelevement.TableauTitrePrelevementCompteur,FSPrelevement.TableauDetailArticle,FSPrelevement.TableauTitreDetailArticle,FSPrelevement.TableauPrelevementUniteFonds,FSPrelevement.TableauTitrePrelevementUniteFonds,FSPrelevement.TableauDetailTypeUniteFonds,FSPrelevement.TableauTitreDetailTypeUniteFonds,FSPrelevement.TableauDetailTiers,FSPrelevement.TableauTitreDetailTiers,
FSPrelevement.TableauEquipe,FSPrelevement.TableauTitreEquipe,FSPrelevement.TableauEffectifEquipe,FSPrelevement.TableauTitreEffectifEquipe,FSPrelevement.TableauUtilisateur,FSPrelevement.TableauTitreUtilisateur,FSPrelevement.EditMontantCompteur,FSPrelevement.EditFondRoulement,FSPrelevement.EditMontantArticle,FSPrelevement.EditMontantUniteFonds,FSPrelevement.EditMontatntDetailTypeUniteFonds,FSPrelevement.EditCumuleSelectionTypeUniteFonds,FSPrelevement.EditMontatntDetailTiers,FSPrelevement.EditSoldePrelevement,FSPrelevement.EditNumPrelevementCompteur,FSPrelevement.EditNumPrelevementUF,NumPrelevement,NumPrelevementFin,'',NumStructure);
FSPrelevement.EditModifierPrelevement.Text:='';

FSPrelevement.EditNumStructure.Text:=NumStructure;
FSPrelevement.EditStructure.Text:=ChercherProjetFinance(NumStructure,PositionProjetFinancesRecherche).DesignationProjetFinance;
ListeEffectifEquipePrelevement(FSPrelevement.TableauEffectifEquipeArchivage,FSPrelevement.EditNumPrelevementCompteur.Text);

ExecuterMiseAJourDetailArticleDiversTiers;
end;

procedure TFSNowPrelevement.BitBtn2Click(Sender: TObject);
begin
FSNowPrelevement.Close;
end;

procedure TFSNowPrelevement.TableauEquipeDblClick(Sender: TObject);
var  NumStructure:string;
begin
FSNowPrelevement.EditNumEquipe.Text:=FSNowPrelevement.TableauEquipe.Cells[1,FSNowPrelevement.TableauEquipe.Row];
FSNowPrelevement.EditDesignationEquipe.Text:=FSNowPrelevement.TableauEquipe.Cells[3,FSNowPrelevement.TableauEquipe.Row];
FSNowPrelevement.EditHeurePrelevement.Time:=strtotime(FSNowPrelevement.TableauEquipe.Cells[5,FSNowPrelevement.TableauEquipe.Row]);
ListeEffectifEquipe(FSNowPrelevement.TableauEffectifEquipe,FSNowPrelevement.TableauEquipe.Cells[1,FSNowPrelevement.TableauEquipe.Row],false);
FSNowPrelevement.TableauEquipe.Visible:=false;
FSNowPrelevement.BitNowPrelevement.SetFocus;

ListeAffectationEffectifEquipe(FSNowPrelevement.TableauAffectationEffectifEquipe,FSPrelevement.TableauTitreAffectationEffectifEquipe,FSNowPrelevement.EditNumPrelevement.Text,FSNowPrelevement.EditNumEquipe.Text,'',FSPrelevement.EditFondRoulement,NumStructure);

FSNowPrelevement.TimerControle.Enabled:=true;
end;

procedure TFSNowPrelevement.TableauEffectifEquipeDblClick(Sender: TObject);
begin

if(FSNowPrelevement.TableauEffectifEquipe.Cells[1,FSNowPrelevement.TableauEffectifEquipe.Row]='OK')then
begin
     if not(ExisteNumInTexte(inttostr(FSNowPrelevement.TableauEffectifEquipe.Row),FSNowPrelevement.EditListeRowSelect.Text))then
     begin
          FSNowPrelevement.TableauEffectifEquipe.Cells[1,FSNowPrelevement.TableauEffectifEquipe.Row]:='';
          FSNowPrelevement.TableauEffectifEquipe.Cells[2,FSNowPrelevement.TableauEffectifEquipe.Row]:='';
     end
     else
     begin
          showmessage('Veuillez supprimer l''affectation avant de désactiver l''effectif !');
     end;
end
else
begin
     FSNowPrelevement.TableauEffectifEquipe.Cells[1,FSNowPrelevement.TableauEffectifEquipe.Row]:='OK';
     FSNowPrelevement.TableauEffectifEquipe.Cells[2,FSNowPrelevement.TableauEffectifEquipe.Row]:=FSNowPrelevement.EditNumEquipe.Text;
     FSNowPrelevement.AfficheAffectationEffectifEquipe.Enabled:=true;
end;

end;

procedure TFSNowPrelevement.TableauAffectationEffectifEquipeClick(
  Sender: TObject);
begin
     FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=false;
     FSNowPrelevement.TableauSelection.Visible:=false;
end;

procedure TFSNowPrelevement.BitBtn1Click(Sender: TObject);
begin
     FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=false;
     FSNowPrelevement.TableauSelection.Visible:=false;
end;

procedure TFSNowPrelevement.BitAffectationEffectifEquipeClick(
  Sender: TObject);
var   i,iSelect:integer;   OKAffectation:boolean;  NumStructure:string;
begin
     if(FSNowPrelevement.BitAffectationEffectifEquipe.Caption='Valider')then
     begin
          OpenFParc(RParc);
          ChRegistreAffectationEffectifEquipe:=RParc.Parcours+'\'+Exercice+'FRegistreAffectationEffectifEquipe';
          assignfile(FRegistreAffectationEffectifEquipe,ChRegistreAffectationEffectifEquipe);
          try
          if FileExists(ChRegistreAffectationEffectifEquipe)then
          Reset(FRegistreAffectationEffectifEquipe)
          else Rewrite(FRegistreAffectationEffectifEquipe);
          Seek(FRegistreAffectationEffectifEquipe,0);
          i:=0;
          OKAffectation:=false;
          while not eof(FRegistreAffectationEffectifEquipe)and(OKAffectation=false)do
          begin
               read(FRegistreAffectationEffectifEquipe,RRegistreAffectationEffectifEquipe);

               if(inttostr(RRegistreAffectationEffectifEquipe.NumAffectationEffectifEquipe)=FSNowPrelevement.EditNumAffectationEffectifEquipe.Text)then
               begin
                    OKAffectation:=true;
                    iSelect:=i;
               end;
          i:=i+1;
          end;

          if(OKAffectation=true)then i:=iSelect;

          Seek(FRegistreAffectationEffectifEquipe,i);
          RRegistreAffectationEffectifEquipe.NumAffectationEffectifEquipe:=i;
          RRegistreAffectationEffectifEquipe.NumPrelevement:=strtointeger(FSNowPrelevement.EditNumPrelevement.Text);
          RRegistreAffectationEffectifEquipe.CodeUtilisateur:=FSMenuPrincipal.EditCodeUtilisateur.Text;
          RRegistreAffectationEffectifEquipe.NumEquipe:=strtointeger(FSNowPrelevement.TableauEffectifEquipe.Cells[2,FSNowPrelevement.TableauEffectifEquipe.Row]);
          RRegistreAffectationEffectifEquipe.Matricule:=FSNowPrelevement.TableauEffectifEquipe.Cells[3,FSNowPrelevement.TableauEffectifEquipe.Row];

          RRegistreAffectationEffectifEquipe.RCompteurAffecter:=ChercherCompteur(strtointeger(FSNowPrelevement.EditNumCompteurAffecter.Text));
          RRegistreAffectationEffectifEquipe.RUniteFondsAffecter:=ChercherUniteFonds(FSNowPrelevement.EditNumUniteFonds.Text);
          RRegistreAffectationEffectifEquipe.ValeurAffecter:=strtoreal(FSNowPrelevement.EditValeurAffecter.Text);
          
          Write(FRegistreAffectationEffectifEquipe,RRegistreAffectationEffectifEquipe);

          finally
          CloseFile(FRegistreAffectationEffectifEquipe);
          end;
     end;

     if(FSNowPrelevement.BitAffectationEffectifEquipe.Caption='Supprimer')then
     begin
          DeleteFRegistreAffectationEffectifEquipe(strtointeger(FSNowPrelevement.EditNumPrelevement.Text),FSNowPrelevement.TableauEffectifEquipe.Cells[3,FSNowPrelevement.TableauEffectifEquipe.Row],FSNowPrelevement.EditNumAffectationEffectifEquipe.Text,'','',OKAffectation);
     end;

     ListeAffectationEffectifEquipe(FSNowPrelevement.TableauAffectationEffectifEquipe,FSPrelevement.TableauTitreAffectationEffectifEquipe,FSNowPrelevement.EditNumPrelevement.Text,FSNowPrelevement.TableauEffectifEquipe.Cells[2,FSNowPrelevement.TableauEffectifEquipe.Row],FSNowPrelevement.TableauEffectifEquipe.Cells[3,FSNowPrelevement.TableauEffectifEquipe.Row],FSPrelevement.EditFondRoulement,NumStructure);
     TrierTableauARowSpecial(FSNowPrelevement.TableauAffectationEffectifEquipe,1,FSNowPrelevement.TableauAffectationEffectifEquipe.RowCount-3,1,FSNowPrelevement.EditTrierAffectationEffectifEquipe.Text,'','+');
     FSNowPrelevement.TableauAffectationEffectifEquipe.SetFocus;
     FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=false;

     FSNowPrelevement.TimerControle.Enabled:=true;
end;

procedure TFSNowPrelevement.TableauAffectationEffectifEquipeKeyPress(
  Sender: TObject; var Key: Char);
var  R:integer;  OKValeurUF:boolean;
begin
     if key in['n','N']then
     begin
          FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=true;
          FSNowPrelevement.BitAffectationEffectifEquipe.Kind:=bkAll;
          FSNowPrelevement.BitAffectationEffectifEquipe.Caption:='Valider';

          FSNowPrelevement.EditNumAffectationEffectifEquipe.Text:='';
          FSNowPrelevement.EditNumCompteurAffecter.Text:='';
          FSNowPrelevement.EditNumUniteFonds.Text:='';
          FSNowPrelevement.EditValeurAffecter.Text:='';

          FSNowPrelevement.EditNumAffectationCompteur.Text:='';
          FSNowPrelevement.EditDesignationAffectationCompteur.Text:='';
          FSNowPrelevement.EditNumUniteFondsAffectationCompteur.Text:='';
          FSNowPrelevement.EditUniteFondsAffecterAffectationCompteur.Text:='';
          FSNowPrelevement.EditValeurAffecterAffectationCompteur.Text:='';

          if(FSNowPrelevement.RBGroupeCompteurs.Checked=true)then
          begin
               FSNowPrelevement.PageGroupeCompteurs.Show;
               FSNowPrelevement.EditDesignationAffectationCompteur.SetFocus;
          end
          else
          begin
               FSNowPrelevement.PageCompteurs.Show;
               FSNowPrelevement.EditNumCompteurAffecter.SetFocus;
          end;
     end;

     if key in['m','M']then
     begin
          FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=true;
          FSNowPrelevement.BitAffectationEffectifEquipe.Kind:=bkAll;
          FSNowPrelevement.BitAffectationEffectifEquipe.Caption:='Valider';

          FSNowPrelevement.EditNumAffectationEffectifEquipe.Text:=FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[1,FSNowPrelevement.TableauAffectationEffectifEquipe.Row];
          FSNowPrelevement.EditNumCompteurAffecter.Text:=FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[4,FSNowPrelevement.TableauAffectationEffectifEquipe.Row];
          FSNowPrelevement.EditNumUniteFonds.Text:=FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[6,FSNowPrelevement.TableauAffectationEffectifEquipe.Row];
          FSNowPrelevement.EditValeurAffecter.Text:=FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[9,FSNowPrelevement.TableauAffectationEffectifEquipe.Row];

          RCompteurCopie:=ChercherCompteur(strtointeger(FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[4,FSNowPrelevement.TableauAffectationEffectifEquipe.Row]));
          FSNowPrelevement.EditNumAffectationCompteur.Text:=RCompteurCopie.NumAffectationCompteur;
          FSNowPrelevement.EditDesignationAffectationCompteur.Text:=ChercherAffectationCompteur(strtointeger(RCompteurCopie.NumAffectationCompteur)).DesignationAffectationCompteur;
          FSNowPrelevement.EditNumUniteFondsAffectationCompteur.Text:=FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[6,FSNowPrelevement.TableauAffectationEffectifEquipe.Row];
          FSNowPrelevement.EditUniteFondsAffecterAffectationCompteur.Text:=FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[7,FSNowPrelevement.TableauAffectationEffectifEquipe.Row];

          FSNowPrelevement.EditValeurAffecterAffectationCompteur.Text:='';
          R:=1;
          OKValeurUF:=false;
          while(R<=FSNowPrelevement.TableauAffectationEffectifEquipe.RowCount-3)and(OKValeurUF=false)do
          begin
               if(strtoreal(FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[9,R])>0)then
               begin
                    OKValeurUF:=true;
                    FSNowPrelevement.EditValeurAffecterAffectationCompteur.Text:=FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[9,R];
               end;
          R:=R+1;
          end;

          if(FSNowPrelevement.RBGroupeCompteurs.Checked=true)then
          begin
               FSNowPrelevement.PageGroupeCompteurs.Show;
               FSNowPrelevement.EditDesignationAffectationCompteur.SetFocus;
          end
          else
          begin
               FSNowPrelevement.PageCompteurs.Show;
               FSNowPrelevement.EditNumCompteurAffecter.SetFocus;
          end;
     end;

     if key in['s','S']then
     begin
          FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=true;
          FSNowPrelevement.BitAffectationEffectifEquipe.Kind:=bkCancel;
          FSNowPrelevement.BitAffectationEffectifEquipe.Caption:='Supprimer';

          FSNowPrelevement.EditNumAffectationEffectifEquipe.Text:=FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[1,FSNowPrelevement.TableauAffectationEffectifEquipe.Row];
          FSNowPrelevement.EditNumCompteurAffecter.Text:=FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[4,FSNowPrelevement.TableauAffectationEffectifEquipe.Row];;
          FSNowPrelevement.EditNumUniteFonds.Text:=FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[6,FSNowPrelevement.TableauAffectationEffectifEquipe.Row];;
          FSNowPrelevement.EditValeurAffecter.Text:=FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[9,FSNowPrelevement.TableauAffectationEffectifEquipe.Row];;

          RCompteurCopie:=ChercherCompteur(strtointeger(FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[4,FSNowPrelevement.TableauAffectationEffectifEquipe.Row]));
          FSNowPrelevement.EditNumAffectationCompteur.Text:=RCompteurCopie.NumAffectationCompteur;
          FSNowPrelevement.EditDesignationAffectationCompteur.Text:=ChercherAffectationCompteur(strtointeger(RCompteurCopie.NumAffectationCompteur)).DesignationAffectationCompteur;
          FSNowPrelevement.EditNumUniteFondsAffectationCompteur.Text:=FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[6,FSNowPrelevement.TableauAffectationEffectifEquipe.Row];
          FSNowPrelevement.EditUniteFondsAffecterAffectationCompteur.Text:=FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[7,FSNowPrelevement.TableauAffectationEffectifEquipe.Row];

          FSNowPrelevement.EditValeurAffecterAffectationCompteur.Text:='';
          R:=1;
          OKValeurUF:=false;
          while(R<=FSNowPrelevement.TableauAffectationEffectifEquipe.RowCount-3)and(OKValeurUF=false)do
          begin
               if(strtoreal(FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[9,R])>0)then
               begin
                    OKValeurUF:=true;
                    FSNowPrelevement.EditValeurAffecterAffectationCompteur.Text:=FSNowPrelevement.TableauAffectationEffectifEquipe.Cells[9,R];
               end;
          R:=R+1;
          end;

          if(FSNowPrelevement.RBGroupeCompteurs.Checked=true)then
          begin
               FSNowPrelevement.PageGroupeCompteurs.Show;
               FSNowPrelevement.BitAffectationCompteurs.SetFocus;
          end
          else
          begin
               FSNowPrelevement.PageCompteurs.Show;
               FSNowPrelevement.BitAffectationEffectifEquipe.SetFocus;
          end;
     end;

     FSNowPrelevement.BitAffectationCompteurs.Kind:=FSNowPrelevement.BitAffectationEffectifEquipe.Kind;
     FSNowPrelevement.BitAffectationCompteurs.Caption:=FSNowPrelevement.BitAffectationEffectifEquipe.Caption;
end;

Procedure ListeAffectationEffectifEquipe(TableauAffectationEffectifEquipe,TableauTitreAffectationEffectifEquipe:TStringGrid; NumPrelevement,NumEquipe,Matricule:string; MemoFondRoulement:TMemo; var NumStructure:string);
var  i,R,C,PBegin,PEnd,NumAffectationCompteurBegin,NumAffectationCompteurEnd:integer;  OKAffectation:boolean;    NotRow,NotCol,FichierConcerne,NumAffectationCompteur,PositionPrelevement:string;  MontantGlobal:real;
begin
     try
     FSNowPrelevement.TableauEffectifEquipe.Cells[0,0]:='...';
     PBegin:=0;
     PEnd:=999999999;
     
     TableauTitreAffectationEffectifEquipe.Rows[0].Text:='';
     TableauTitreAffectationEffectifEquipe.Cells[0,0]:='Détail Fonds de roulement';

     TableauAffectationEffectifEquipe.ColCount:=11;
     TableauAffectationEffectifEquipe.Cols[0].Text:='Ordre';
     TableauAffectationEffectifEquipe.Cols[1].Text:='N°Affectation';
     TableauAffectationEffectifEquipe.Cols[2].Text:='NumPrelevement';
     TableauAffectationEffectifEquipe.Cols[3].Text:='CodeUtilisateur';
     TableauAffectationEffectifEquipe.Cols[4].Text:='N° Compteur';
     TableauAffectationEffectifEquipe.Cols[5].Text:='Compteur';
     TableauAffectationEffectifEquipe.Cols[6].Text:='NumUniteFonds';
     TableauAffectationEffectifEquipe.Cols[7].Text:='UniteFonds';
     TableauAffectationEffectifEquipe.Cols[8].Text:='Valeur UF';
     TableauAffectationEffectifEquipe.Cols[9].Text:='ValeurAffecter';
     TableauAffectationEffectifEquipe.Cols[10].Text:='Montant';

     TableauAffectationEffectifEquipe.RowCount:=2;
     TableauAffectationEffectifEquipe.Rows[1].Text:='';

     MemoFondRoulement.Text:='';

     FichierConcerne:='FRegistreAffectationEffectifEquipe';

     if(NumPrelevement<>'')then
     begin
          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);
          if(RPrelevement.Archiver=false)then
          begin
               FichierConcerne:='FRegistreAffectationEffectifEquipe';
               PBegin:=0;
               PEnd:=999999999;
          end
          else
          begin
               FichierConcerne:='FArchiveRegistreAffectationEffectifEquipe';
               if(FSListePrelevement.RBUtiliserPositionArchive.Checked=true)then
               begin
                    PBegin:=RPrelevement.RegistrePositionRegistreAffectationEffectifEquipe.PositionArchiveBegin;
                    PEnd:=RPrelevement.RegistrePositionRegistreAffectationEffectifEquipe.PositionArchiveEnd;
               end
               else
               begin
                    PBegin:=0;
                    PEnd:=999999999;
               end;
          end;
     end;

     OpenFParc(RParc);
     ChRegistreAffectationEffectifEquipe:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FRegistreAffectationEffectifEquipe,ChRegistreAffectationEffectifEquipe);
     try
     if FileExists(ChRegistreAffectationEffectifEquipe)then
     Reset(FRegistreAffectationEffectifEquipe)
     else Rewrite(FRegistreAffectationEffectifEquipe);
     Seek(FRegistreAffectationEffectifEquipe,PBegin);
     R:=0;
     MontantGlobal:=0;
     NumAffectationCompteur:='';
     i:=PBegin;
     while not eof(FRegistreAffectationEffectifEquipe)and(i<=PEnd)do
     begin
          read(FRegistreAffectationEffectifEquipe,RRegistreAffectationEffectifEquipe);
          i:=i+1;
          OKAffectation:=true;

          if(OKAffectation=true)then
          begin
               if(NumPrelevement<>'')then
               begin
                    if(RRegistreAffectationEffectifEquipe.NumPrelevement=strtointeger(NumPrelevement))
                    then OKAffectation:=true
                    else OKAffectation:=false;
               end;
          end;

          if(OKAffectation=true)then
          begin
               if(NumEquipe<>'')then
               begin
                    if(RRegistreAffectationEffectifEquipe.NumEquipe=strtointeger(NumEquipe))
                    then OKAffectation:=true
                    else OKAffectation:=false;
               end;
          end;

          if(OKAffectation=true)then
          begin
               if(Matricule<>'')then
               begin
                    if(RRegistreAffectationEffectifEquipe.Matricule=Matricule)
                    then OKAffectation:=true
                    else OKAffectation:=false;
               end;
          end;

          if(OKAffectation=true)then
          begin
               R:=R+1;
               TableauAffectationEffectifEquipe.Rows[R].Text:=inttostr(R);
               TableauAffectationEffectifEquipe.Cells[1,R]:=inttostr(RRegistreAffectationEffectifEquipe.NumAffectationEffectifEquipe);
               TableauAffectationEffectifEquipe.Cells[2,R]:=inttostr(RRegistreAffectationEffectifEquipe.NumPrelevement);
               TableauAffectationEffectifEquipe.Cells[3,R]:=RRegistreAffectationEffectifEquipe.CodeUtilisateur;
               TableauAffectationEffectifEquipe.Cells[4,R]:=inttostr(RRegistreAffectationEffectifEquipe.RCompteurAffecter.NumCompteur);
               TableauAffectationEffectifEquipe.Cells[5,R]:=RRegistreAffectationEffectifEquipe.RCompteurAffecter.DesignationCompteur;
               TableauAffectationEffectifEquipe.Cells[6,R]:=inttostr(RRegistreAffectationEffectifEquipe.RUniteFondsAffecter.NumUniteFonds);
               TableauAffectationEffectifEquipe.Cells[7,R]:=RRegistreAffectationEffectifEquipe.RUniteFondsAffecter.DesignationUniteFonds;
               TableauAffectationEffectifEquipe.Cells[8,R]:=Vergule(floattostr(RRegistreAffectationEffectifEquipe.RUniteFondsAffecter.ValeurMonetaireUnitaire),'2','C','');
               TableauAffectationEffectifEquipe.Cells[9,R]:=Vergule(floattostr(RRegistreAffectationEffectifEquipe.ValeurAffecter),'2','C','');
               TableauAffectationEffectifEquipe.Cells[10,R]:=Vergule(floattostr(RRegistreAffectationEffectifEquipe.ValeurAffecter*RRegistreAffectationEffectifEquipe.RUniteFondsAffecter.ValeurMonetaireUnitaire),'2','C','');
               MontantGlobal:=MontantGlobal+RRegistreAffectationEffectifEquipe.ValeurAffecter*RRegistreAffectationEffectifEquipe.RUniteFondsAffecter.ValeurMonetaireUnitaire;

               if(NumAffectationCompteur='')
               then NumAffectationCompteur:=RRegistreAffectationEffectifEquipe.RCompteurAffecter.NumAffectationCompteur
               else
               begin
                    if not existenumintexte(RRegistreAffectationEffectifEquipe.RCompteurAffecter.NumAffectationCompteur,NumAffectationCompteur)then NumAffectationCompteur:=NumAffectationCompteur+';'+RRegistreAffectationEffectifEquipe.RCompteurAffecter.NumAffectationCompteur
               end;
          end;
     end;
     finally
     CloseFile(FRegistreAffectationEffectifEquipe);
     end;

     if(R>0)then
            begin
                 TableauAffectationEffectifEquipe.RowCount:=R+3;
                 TableauAffectationEffectifEquipe.Rows[R+1].Text:='';
                 TableauAffectationEffectifEquipe.Rows[R+2].Text:='';
                 TableauAffectationEffectifEquipe.Cells[9,R+2]:='Montant Fonds';
                 TableauAffectationEffectifEquipe.Cells[10,R+2]:=Vergule(floattostr(MontantGlobal),'2','C','');
                 MemoFondRoulement.Text:=Vergule(floattostr(MontantGlobal),'2','C','');
            end
            else TableauAffectationEffectifEquipe.RowCount:=2;

     NotRow:='';
     NotCol:='1-4;6;8';

     for C:=1 to TableauAffectationEffectifEquipe.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol) then TableauAffectationEffectifEquipe.ColWidths[C]:=0;

     AjusterColWidth(TableauAffectationEffectifEquipe,NotRow,NotCol);

     OpenFParc(RParc);
     ChAffectationCompteur:=RParc.Parcours+'\'+Exercice+'FAffectationCompteur';
     assignfile(FAffectationCompteur,ChAffectationCompteur);
     try
     if FileExists(ChAffectationCompteur)then
     Reset(FAffectationCompteur)
     else Rewrite(FAffectationCompteur);
     Seek(FAffectationCompteur,0);
     NumAffectationCompteurBegin:=999999999;
     NumAffectationCompteurEnd:=0;
     while not eof(FAffectationCompteur)do
     begin
          Read(FAffectationCompteur,RAffectationCompteur);
          if(NumAffectationCompteurBegin>RAffectationCompteur.NumAffectationCompteur)then NumAffectationCompteurBegin:=RAffectationCompteur.NumAffectationCompteur;
          if(NumAffectationCompteurEnd<RAffectationCompteur.NumAffectationCompteur)then NumAffectationCompteurEnd:=RAffectationCompteur.NumAffectationCompteur;
     end;
     finally
     CloseFile(FAffectationCompteur);
     end;

     if(NumAffectationCompteurBegin=999999999)then NumAffectationCompteur:='?';

     if(NumAffectationCompteur<>'')and(NumAffectationCompteur<>'?')then
     begin
          if(NumAffectationCompteurBegin<>NumAffectationCompteurEnd)then
          begin
               OKAffectation:=true;
               i:=NumAffectationCompteurBegin;
               while(i<=NumAffectationCompteurEnd)and(OKAffectation=true)do
               begin
                    if existenumintexte(inttostr(i),NumAffectationCompteur)then
                    begin
                         if(NumStructure='')then
                         begin
                              NumStructure:=ChercherAffectationCompteur(i).NumProjetFinance;
                         end
                         else
                         begin
                              if(NumStructure<>ChercherAffectationCompteur(i).NumProjetFinance)then OKAffectation:=false;
                         end;
                    end;
               i:=i+1;
               end;

               if(OKAffectation=false)then NumStructure:='';
          end
          else
          if(strtointeger(NumAffectationCompteur)=NumAffectationCompteurBegin)then
          begin
               NumStructure:=ChercherAffectationCompteur(strtointeger(NumAffectationCompteur)).NumProjetFinance;
          end
          else NumStructure:='';
     end
     else NumStructure:='';

     if(FunctStockSpecifierParStructure(false)=false)then NumStructure:='';
     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);

     except
     
     end;
     FSNowPrelevement.TableauEffectifEquipe.Cells[0,0]:='';
end;

procedure TFSNowPrelevement.EditNumAffectationEffectifEquipeKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSNowPrelevement.EditNumCompteurAffecter.SetFocus;
     end;
end;

procedure TFSNowPrelevement.EditNumCompteurAffecterKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSNowPrelevement.EditNumUniteFonds.SetFocus;
     end;
end;

procedure TFSNowPrelevement.EditNumUniteFondsKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSNowPrelevement.EditValeurAffecter.SetFocus;
     end;
end;

procedure TFSNowPrelevement.EditValeurAffecterKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSNowPrelevement.BitAffectationEffectifEquipe.SetFocus;
     end;
end;

procedure TFSNowPrelevement.TableauSelectionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(FSNowPrelevement.TableauSelection.Cells[0,0]='U.F')then
          begin
               FSNowPrelevement.EditNumUniteFonds.Text:=FSNowPrelevement.TableauSelection.Cells[1,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.EditUniteFondsAffecter.Text:=FSNowPrelevement.TableauSelection.Cells[4,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.TableauSelection.Visible:=false;
               FSNowPrelevement.EditValeurAffecter.SetFocus;
          end;

          if(FSNowPrelevement.TableauSelection.Cells[0,0]='C.A')then
          begin
               FSNowPrelevement.EditNumCompteurAffecter.Text:=FSNowPrelevement.TableauSelection.Cells[1,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.EditCompteurAffecter.Text:=FSNowPrelevement.TableauSelection.Cells[3,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.TableauSelection.Visible:=false;
               FSNowPrelevement.EditNumUniteFonds.SetFocus;
          end;

          if(FSNowPrelevement.TableauSelection.Cells[0,0]='U.F.AC')then
          begin
               FSNowPrelevement.EditNumUniteFondsAffectationCompteur.Text:=FSNowPrelevement.TableauSelection.Cells[1,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.EditUniteFondsAffecterAffectationCompteur.Text:=FSNowPrelevement.TableauSelection.Cells[4,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.TableauSelection.Visible:=false;
               FSNowPrelevement.EditValeurAffecterAffectationCompteur.SetFocus;
          end;

          if(FSNowPrelevement.TableauSelection.Cells[0,0]='A.C')then
          begin
               FSNowPrelevement.EditNumAffectationCompteur.Text:=FSNowPrelevement.TableauSelection.Cells[1,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.EditDesignationAffectationCompteur.Text:=FSNowPrelevement.TableauSelection.Cells[2,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.TableauSelection.Visible:=false;
               FSNowPrelevement.EditNumUniteFondsAffectationCompteur.SetFocus;
          end;
     end;
end;

procedure TFSNowPrelevement.EditNumCompteurAffecterEnter(Sender: TObject);
var  R,RowSelect:integer;
begin
     FSNowPrelevement.TableauSelection.Visible:=true;
     FSNowPrelevement.TableauSelection.Left:=FSNowPrelevement.PageAffectationCompteur.Left
                                            +FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Left
                                            +FSNowPrelevement.EditNumCompteurAffecter.Left+4;
     FSNowPrelevement.TableauSelection.Top:=FSNowPrelevement.PageAffectationCompteur.Top
                                           +FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Top
                                           +FSNowPrelevement.EditNumCompteurAffecter.Top
                                           +FSNowPrelevement.EditNumCompteurAffecter.Height+27;
     FSNowPrelevement.TableauSelection.SetFocus;

     ProcAfficheListeCompteur(FSNowPrelevement.TableauSelection,'','');

     R:=1;
     RowSelect:=0;
     while(R<=FSNowPrelevement.TableauSelection.RowCount-1)and(RowSelect=0)do
     begin
          if(FSNowPrelevement.TableauSelection.Cells[1,R]=FSNowPrelevement.EditNumCompteurAffecter.Text)then RowSelect:=R;
     R:=R+1;
     end;

     if(RowSelect>0)then FSNowPrelevement.TableauSelection.Row:=RowSelect;

     FSNowPrelevement.TableauSelection.Cells[0,0]:='C.A';
end;

procedure TFSNowPrelevement.EditNumUniteFondsEnter(Sender: TObject);
var  R,RowSelect:integer;
begin
     FSNowPrelevement.TableauSelection.Visible:=true;
     FSNowPrelevement.TableauSelection.Left:=FSNowPrelevement.PageAffectationCompteur.Left
                                            +FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Left
                                            +FSNowPrelevement.EditNumUniteFonds.Left+4;
     FSNowPrelevement.TableauSelection.Top:=FSNowPrelevement.PageAffectationCompteur.Top
                                           +FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Top
                                           +FSNowPrelevement.EditNumUniteFonds.Top
                                           +FSNowPrelevement.EditNumUniteFonds.Height+27;
     FSNowPrelevement.TableauSelection.SetFocus;

     ListeUniteFonds(FSNowPrelevement.TableauSelection,'');

     R:=1;
     RowSelect:=0;
     while(R<=FSNowPrelevement.TableauSelection.RowCount-1)and(RowSelect=0)do
     begin
          if(FSNowPrelevement.TableauSelection.Cells[1,R]=FSNowPrelevement.EditNumUniteFonds.Text)then RowSelect:=R;
     R:=R+1;
     end;

     if(RowSelect>0)then FSNowPrelevement.TableauSelection.Row:=RowSelect;

     FSNowPrelevement.TableauSelection.Cells[0,0]:='U.F';
end;


procedure TFSNowPrelevement.TableauEffectifEquipeClick(Sender: TObject);
var  NumStructure:string;
begin
     if(FSNowPrelevement.TableauEffectifEquipe.Cells[1,FSNowPrelevement.TableauEffectifEquipe.Row]='OK')
     then FSNowPrelevement.AfficheAffectationEffectifEquipe.Enabled:=true
     else FSNowPrelevement.AfficheAffectationEffectifEquipe.Enabled:=false;

     if(FSNowPrelevement.TableauEffectifEquipe.Cells[0,0]='')
     then ListeAffectationEffectifEquipe(FSNowPrelevement.TableauAffectationEffectifEquipe,FSPrelevement.TableauTitreAffectationEffectifEquipe,FSNowPrelevement.EditNumPrelevement.Text,FSNowPrelevement.TableauEffectifEquipe.Cells[2,FSNowPrelevement.TableauEffectifEquipe.Row],FSNowPrelevement.TableauEffectifEquipe.Cells[3,FSNowPrelevement.TableauEffectifEquipe.Row],FSPrelevement.EditFondRoulement,NumStructure);

     FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=false;
     FSNowPrelevement.TableauSelection.Visible:=false;
end;

procedure TFSNowPrelevement.TableauAffectationEffectifEquipeKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          ProTableauEffectifEquipeKeyDown;
     end;
end;

Function ExisteAffctationPrelevement(Matricule,NumCompteur:string):boolean;
var   OKAMatricule,OKCompteur:boolean;
begin
     OpenFParc(RParc);
     ChRegistreAffectationEffectifEquipe:=RParc.Parcours+'\'+Exercice+'FRegistreAffectationEffectifEquipe';
     assignfile(FRegistreAffectationEffectifEquipe,ChRegistreAffectationEffectifEquipe);
     try
     if FileExists(ChRegistreAffectationEffectifEquipe)then
     Reset(FRegistreAffectationEffectifEquipe)
     else Rewrite(FRegistreAffectationEffectifEquipe);
     Seek(FRegistreAffectationEffectifEquipe,0);
     OKAMatricule:=false;
     OKCompteur:=false;
     while not eof(FRegistreAffectationEffectifEquipe)and(OKAMatricule=false)and(OKCompteur=false)do
     begin
          read(FRegistreAffectationEffectifEquipe,RRegistreAffectationEffectifEquipe);

          if(Matricule<>'')then
          begin
               if(RRegistreAffectationEffectifEquipe.Matricule=Matricule)then OKAMatricule:=true;
          end;
     end;
     finally
     CloseFile(FRegistreAffectationEffectifEquipe);
     end;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
end;

Function ControleTotalAffectationCompteur(NumPrelevement:string; var NbrCompteurPlanifier,NbrCompteurAffecter:integer):boolean;
var  i,PBegin,PEnd:integer; OKAffectation:boolean;  FichierConcerne,PositionPrelevement:string;
begin
     PBegin:=0;
     PEnd:=999999999;
     RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,'',PositionPrelevement);
     if(RPrelevement.Archiver=false)then
     begin
          FichierConcerne:='FRegistreAffectationEffectifEquipe';
          PBegin:=0;
          PEnd:=999999999;
     end
     else
     begin
          FichierConcerne:='FArchiveRegistreAffectationEffectifEquipe';
          if(FSListePrelevement.RBUtiliserPositionArchive.Checked=true)then
          begin
               PBegin:=RPrelevement.RegistrePositionPrelevementUniteFonds.PositionArchiveBegin;
               PEnd:=RPrelevement.RegistrePositionPrelevementUniteFonds.PositionArchiveEnd;
          end
          else
          begin
               PBegin:=0;
               PEnd:=999999999;
          end;
     end;

     OpenFParc(RParc);
     ChRegistreAffectationEffectifEquipe:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FRegistreAffectationEffectifEquipe,ChRegistreAffectationEffectifEquipe);
     try
     if FileExists(ChRegistreAffectationEffectifEquipe)then
     Reset(FRegistreAffectationEffectifEquipe)
     else Rewrite(FRegistreAffectationEffectifEquipe);
     Seek(FRegistreAffectationEffectifEquipe,PBegin);
     NbrCompteurAffecter:=0;
     i:=PBegin;
     while not eof(FRegistreAffectationEffectifEquipe)and(i<=PEnd)do
     begin
          read(FRegistreAffectationEffectifEquipe,RRegistreAffectationEffectifEquipe);
          i:=i+1;
          if(RRegistreAffectationEffectifEquipe.NumPrelevement=strtointeger(NumPrelevement))then NbrCompteurAffecter:=NbrCompteurAffecter+1;
     end;

     OpenFParc(RParc);
     ChCompteur:=RParc.Parcours+'\'+Exercice+'FCompteur';
     assignfile(FCompteur,ChCompteur);
     try
     if FileExists(ChCompteur)then
     Reset(FCompteur)
     else Rewrite(FCompteur);
     Seek(FCompteur,0);
     NbrCompteurPlanifier:=0;
     while not eof(FCompteur)do
     begin
          read(FCompteur,RCompteur);
          NbrCompteurPlanifier:=NbrCompteurPlanifier+1;
     end;


     Seek(FCompteur,0);
     OKAffectation:=true;
     while not eof(FCompteur)and(OKAffectation=true)do
     begin
          read(FCompteur,RCompteur);
          OKAffectation:=false;
          Seek(FRegistreAffectationEffectifEquipe,0);
          while not eof(FRegistreAffectationEffectifEquipe)and(OKAffectation=false)do
          begin
               read(FRegistreAffectationEffectifEquipe,RRegistreAffectationEffectifEquipe);
               if(RRegistreAffectationEffectifEquipe.NumPrelevement=strtointeger(NumPrelevement))
               and(RRegistreAffectationEffectifEquipe.RCompteurAffecter.NumCompteur=RCompteur.NumCompteur)then
               begin
                    OKAffectation:=true;
               end;
          end;          
     end;
     finally
     CloseFile(FCompteur);
     end;

     finally
     CloseFile(FRegistreAffectationEffectifEquipe);
     end;

     ControleTotalAffectationCompteur:=OKAffectation;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
end;

Function ControleEffectifAffectationCompteur(NumPrelevement,Matricule,NumCompteur:string; var NbrCompteurAffecter:integer):boolean;
var  i,PBegin,PEnd:integer; OKAffectation:boolean;  ListeNumCompteur,FichierConcerne,PositionPrelevement:string;
begin
     PBegin:=0;
     PEnd:=999999999;
     ControleEffectifAffectationCompteur:=false;

     RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,'',PositionPrelevement);
     if(RPrelevement.Archiver=false)then
     begin
          FichierConcerne:='FRegistreAffectationEffectifEquipe';
          PBegin:=0;
          PEnd:=999999999;
     end
     else
     begin
          FichierConcerne:='FArchiveRegistreAffectationEffectifEquipe';
          if(FSListePrelevement.RBUtiliserPositionArchive.Checked=true)then
          begin
               PBegin:=RPrelevement.RegistrePositionPrelevementUniteFonds.PositionArchiveBegin;
               PEnd:=RPrelevement.RegistrePositionPrelevementUniteFonds.PositionArchiveEnd;
          end
          else
          begin
               PBegin:=0;
               PEnd:=999999999;
          end;
     end;

     OpenFParc(RParc);
     ChRegistreAffectationEffectifEquipe:=RParc.Parcours+'\'+Exercice+FichierConcerne;
     assignfile(FRegistreAffectationEffectifEquipe,ChRegistreAffectationEffectifEquipe);
     try
     if FileExists(ChRegistreAffectationEffectifEquipe)then
     Reset(FRegistreAffectationEffectifEquipe)
     else Rewrite(FRegistreAffectationEffectifEquipe);
     Seek(FRegistreAffectationEffectifEquipe,PBegin);
     NbrCompteurAffecter:=0;
     ListeNumCompteur:='';
     i:=PBegin;
     while not eof(FRegistreAffectationEffectifEquipe)and(i<=PEnd)do
     begin
          read(FRegistreAffectationEffectifEquipe,RRegistreAffectationEffectifEquipe);
          i:=i+1;
          if(RRegistreAffectationEffectifEquipe.NumPrelevement=strtointeger(NumPrelevement))
          and(RRegistreAffectationEffectifEquipe.Matricule=Matricule)
          and(RRegistreAffectationEffectifEquipe.RCompteurAffecter.NumCompteur=strtointeger(NumCompteur))then ControleEffectifAffectationCompteur:=true;

          if(RRegistreAffectationEffectifEquipe.NumPrelevement=strtointeger(NumPrelevement))
          and(RRegistreAffectationEffectifEquipe.Matricule=Matricule)
          and not(ExisteNumInTexte(inttostr(RRegistreAffectationEffectifEquipe.RCompteurAffecter.NumCompteur),ListeNumCompteur))then
          begin
               NbrCompteurAffecter:=NbrCompteurAffecter+1;
               ListeNumCompteur:=ListeNumCompteur+inttostr(RRegistreAffectationEffectifEquipe.RCompteurAffecter.NumCompteur);
          end;
     end;
     finally
     CloseFile(FRegistreAffectationEffectifEquipe);
     end;

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
end;

procedure TFSNowPrelevement.EditDesignationAffectationCompteurEnter(
  Sender: TObject);
var  R,RowSelect:integer;
begin
     FSNowPrelevement.TableauSelection.Visible:=true;
     FSNowPrelevement.TableauSelection.Left:=FSNowPrelevement.PageAffectationCompteur.Left
                                            +FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Left
                                            +FSNowPrelevement.EditDesignationAffectationCompteur.Left+4;
     FSNowPrelevement.TableauSelection.Top:=FSNowPrelevement.PageAffectationCompteur.Top
                                           +FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Top
                                           +FSNowPrelevement.EditDesignationAffectationCompteur.Top
                                           +FSNowPrelevement.EditDesignationAffectationCompteur.Height+27;

     ProcAfficheListeAffectationCompteur(FSNowPrelevement.TableauSelection,FSNowPrelevement.EditNumAffectationCompteur.Text);

     R:=1;
     RowSelect:=0;
     while(R<=FSNowPrelevement.TableauSelection.RowCount-1)and(RowSelect=0)do
     begin
          if(FSNowPrelevement.TableauSelection.Cells[1,R]=FSNowPrelevement.EditNumAffectationCompteur.Text)then RowSelect:=R;
     R:=R+1;
     end;

     if(RowSelect>0)then FSNowPrelevement.TableauSelection.Row:=RowSelect;

     FSNowPrelevement.TableauSelection.Cells[0,0]:='A.C';

     FSNowPrelevement.TableauSelection.SetFocus;
end;

procedure TFSNowPrelevement.EditDesignationAffectationCompteurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSNowPrelevement.EditNumCompteurAffecter.SetFocus;
     end;
end;

procedure TFSNowPrelevement.EditValeurAffecterAffectationCompteurKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          FSNowPrelevement.BitAffectationCompteurs.SetFocus;
     end;
end;

procedure TFSNowPrelevement.BitBtn4Click(Sender: TObject);
begin
     FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=false;
     FSNowPrelevement.TableauSelection.Visible:=false;
end;

procedure TFSNowPrelevement.BitAffectationCompteursClick(Sender: TObject);
var   i,iSelect:integer;  OKAffectation:boolean; NumStructure:string;
begin
     if(FSNowPrelevement.BitAffectationCompteurs.Caption='Valider')then
     begin
           OpenFParc(RParc);
           ChCompteur:=RParc.Parcours+'\'+Exercice+'FCompteur';
           assignfile(FCompteur,ChCompteur);
           try
           if FileExists(ChCompteur)then
           Reset(FCompteur)
           else Rewrite(FCompteur);
           Seek(FCompteur,0);
           while not eof(FCompteur)do
           begin
                Read(FCompteur,RCompteur);
                if(RCompteur.NumAffectationCompteur=FSNowPrelevement.EditNumAffectationCompteur.Text)then
                begin
                      OpenFParc(RParc);
                      ChRegistreAffectationEffectifEquipe:=RParc.Parcours+'\'+Exercice+'FRegistreAffectationEffectifEquipe';
                      assignfile(FRegistreAffectationEffectifEquipe,ChRegistreAffectationEffectifEquipe);
                      try
                      if FileExists(ChRegistreAffectationEffectifEquipe)then
                      Reset(FRegistreAffectationEffectifEquipe)
                      else Rewrite(FRegistreAffectationEffectifEquipe);
                      Seek(FRegistreAffectationEffectifEquipe,0);
                      i:=0;
                      OKAffectation:=false;
                      while not eof(FRegistreAffectationEffectifEquipe)and(OKAffectation=false)do
                      begin
                           read(FRegistreAffectationEffectifEquipe,RRegistreAffectationEffectifEquipe);

                           if(inttostr(RRegistreAffectationEffectifEquipe.NumPrelevement)=FSNowPrelevement.EditNumPrelevement.Text)
                           and(inttostr(RRegistreAffectationEffectifEquipe.NumEquipe)=FSNowPrelevement.EditNumEquipe.Text)
                           and(RRegistreAffectationEffectifEquipe.Matricule=FSNowPrelevement.TableauEffectifEquipe.Cells[3,FSNowPrelevement.TableauEffectifEquipe.Row])
                           and(RRegistreAffectationEffectifEquipe.RCompteurAffecter.NumCompteur=RCompteur.NumCompteur)
                           then
                           begin
                                OKAffectation:=true;
                                iSelect:=i;
                           end;
                      i:=i+1;
                      end;

                      if(OKAffectation=true)then i:=iSelect;     

                      Seek(FRegistreAffectationEffectifEquipe,i);
                      RRegistreAffectationEffectifEquipe.NumAffectationEffectifEquipe:=i;
                      RRegistreAffectationEffectifEquipe.NumPrelevement:=strtointeger(FSNowPrelevement.EditNumPrelevement.Text);
                      RRegistreAffectationEffectifEquipe.CodeUtilisateur:=FSMenuPrincipal.EditCodeUtilisateur.Text;
                      RRegistreAffectationEffectifEquipe.NumEquipe:=strtointeger(FSNowPrelevement.TableauEffectifEquipe.Cells[2,FSNowPrelevement.TableauEffectifEquipe.Row]);
                      RRegistreAffectationEffectifEquipe.Matricule:=FSNowPrelevement.TableauEffectifEquipe.Cells[3,FSNowPrelevement.TableauEffectifEquipe.Row];
                      RRegistreAffectationEffectifEquipe.RCompteurAffecter:=RCompteur;
                      RRegistreAffectationEffectifEquipe.RUniteFondsAffecter:=ChercherUniteFonds(FSNowPrelevement.EditNumUniteFondsAffectationCompteur.Text);
                      RRegistreAffectationEffectifEquipe.ValeurAffecter:=strtoreal(FSNowPrelevement.EditValeurAffecterAffectationCompteur.Text);
                      FSNowPrelevement.EditValeurAffecterAffectationCompteur.Text:='';
                      Write(FRegistreAffectationEffectifEquipe,RRegistreAffectationEffectifEquipe);

                      finally
                      CloseFile(FRegistreAffectationEffectifEquipe);
                      end;
                end;
           end;
           finally
           CloseFile(FCompteur);
           end;
     end;

     if(FSNowPrelevement.BitAffectationCompteurs.Caption='Supprimer')then
     begin
          DeleteFRegistreAffectationEffectifEquipe(strtointeger(FSNowPrelevement.EditNumPrelevement.Text),FSNowPrelevement.TableauEffectifEquipe.Cells[3,FSNowPrelevement.TableauEffectifEquipe.Row],'','',FSNowPrelevement.EditNumAffectationCompteur.Text,OKAffectation);
     end;

     ListeAffectationEffectifEquipe(FSNowPrelevement.TableauAffectationEffectifEquipe,FSPrelevement.TableauTitreAffectationEffectifEquipe,FSNowPrelevement.EditNumPrelevement.Text,FSNowPrelevement.TableauEffectifEquipe.Cells[2,FSNowPrelevement.TableauEffectifEquipe.Row],FSNowPrelevement.TableauEffectifEquipe.Cells[3,FSNowPrelevement.TableauEffectifEquipe.Row],FSPrelevement.EditFondRoulement,NumStructure);
     TrierTableauARowSpecial(FSNowPrelevement.TableauAffectationEffectifEquipe,1,FSNowPrelevement.TableauAffectationEffectifEquipe.RowCount-3,1,FSNowPrelevement.EditTrierAffectationEffectifEquipe.Text,'','+');
     FSNowPrelevement.TableauAffectationEffectifEquipe.SetFocus;
     FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=false;
     FSNowPrelevement.TableauSelection.Visible:=false;

     FSNowPrelevement.TimerControle.Enabled:=true;
end;

procedure TFSNowPrelevement.PageAffectationCompteurChange(Sender: TObject);
begin
     FSNowPrelevement.TableauSelection.Visible:=false;
end;

procedure TFSNowPrelevement.EditNumUniteFondsAffectationCompteurEnter(
  Sender: TObject);
var  R,RowSelect:integer;
begin
     FSNowPrelevement.TableauSelection.Visible:=true;
     FSNowPrelevement.TableauSelection.Left:=FSNowPrelevement.PageAffectationCompteur.Left
                                            +FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Left
                                            +FSNowPrelevement.EditNumUniteFondsAffectationCompteur.Left+4;
     FSNowPrelevement.TableauSelection.Top:=FSNowPrelevement.PageAffectationCompteur.Top
                                           +FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Top
                                           +FSNowPrelevement.EditNumUniteFondsAffectationCompteur.Top
                                           +FSNowPrelevement.EditNumUniteFondsAffectationCompteur.Height+27;
     FSNowPrelevement.TableauSelection.SetFocus;

     ListeUniteFonds(FSNowPrelevement.TableauSelection,'');

     R:=1;
     RowSelect:=0;
     while(R<=FSNowPrelevement.TableauSelection.RowCount-1)and(RowSelect=0)do
     begin
          if(FSNowPrelevement.TableauSelection.Cells[1,R]=FSNowPrelevement.EditNumUniteFondsAffectationCompteur.Text)then RowSelect:=R;
     R:=R+1;
     end;

     if(RowSelect>0)then FSNowPrelevement.TableauSelection.Row:=RowSelect;

     FSNowPrelevement.TableauSelection.Cells[0,0]:='U.F.AC';
end;

Procedure AfficheArborescenceArticle(TableauArborescenceArticle,TableauArticle,TableauTitreArborescenceArticle:TStringGrid; FichierConcerne:string);
var   R,l,M:integer; OKCompte:boolean; NumCompteArborescence,CompteArborescence,TypeProces,Adresse:string; Montant,CoutTotal,ValeurAjouter:real;
begin
     TableauTitreArborescenceArticle.Cells[0,0]:='Détail Arborescence Article';

     TableauArborescenceArticle.ColCount:=10;
     TableauArborescenceArticle.Cols[0].Text:='N°';
     TableauArborescenceArticle.Cols[1].Text:='Code';
     TableauArborescenceArticle.Cols[2].Text:='Désignation';
     TableauArborescenceArticle.Cols[3].Text:='UM';
     TableauArborescenceArticle.Cols[4].Text:='Prix';
     TableauArborescenceArticle.Cols[5].Text:='Quantité';
     TableauArborescenceArticle.Cols[6].Text:='Montant';
     TableauArborescenceArticle.Cols[7].Text:='   ';
     TableauArborescenceArticle.Cols[8].Text:='Coût total';
     TableauArborescenceArticle.Cols[9].Text:='Valeur Ajouter';

     TableauArborescenceArticle.RowCount:=2;
     TableauArborescenceArticle.Rows[1].Text:='';

     R:=1;
     m:=0;
     Montant:=0;
     CoutTotal:=0;
     ValeurAjouter:=0;
     while(R<=TableauArticle.RowCount-3)do
     begin
          NumCompteArborescence:='???';
          CompteArborescence:='???';

          TypeProces:='Comptabilité';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
                AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerne+' recherché !');
          end;

          OpenFParc(RParc);
          ChRegistreCompte:=Adresse;
          assignfile(FRegistreCompte,ChRegistreCompte);
          try
          if FileExists(ChRegistreCompte)
          then Reset(FRegistreCompte)else Rewrite(FRegistreCompte);
          Seek(FRegistreCompte,0);
          OKCompte:=false;
          while not eof(FRegistreCompte)and(OKCompte=false)do
          begin
               Read(FRegistreCompte,RRegistreCompte);

               if(RRegistreCompte.CodeCompte=firstlaters(TableauArticle.Cells[1,R],longueur(RRegistreCompte.CodeCompte)))then
               begin
                    OKCompte:=true;
                    NumCompteArborescence:=RRegistreCompte.CodeCompte;
                    CompteArborescence:=RRegistreCompte.Designation;
               end;
          end;
          finally
          CloseFile(FRegistreCompte);
          end;

          l:=1;
          OKCompte:=false;
          while(l<=m)and(OKCompte=false)do
          begin
               if(TableauArborescenceArticle.Cells[1,l]=NumCompteArborescence)then
               begin
                    OKCompte:=true;
                    if((strtoreal(TableauArborescenceArticle.Cells[5,l])<>0)or(strtoreal(TableauArticle.Cells[6,R])<>0))
                    then TableauArborescenceArticle.Cells[4,l]:=Vergule(floattostr(((strtoreal(TableauArborescenceArticle.Cells[4,l])*strtoreal(TableauArborescenceArticle.Cells[5,l]))+(strtoreal(TableauArticle.Cells[6,R])*strtoreal(TableauArticle.Cells[7,R])))/(strtoreal(TableauArborescenceArticle.Cells[5,l])+strtoreal(TableauArticle.Cells[6,R]))),'2','C','')
                    else TableauArborescenceArticle.Cells[4,l]:='0';
                    TableauArborescenceArticle.Cells[5,l]:=Vergule(floattostr(strtoreal(TableauArborescenceArticle.Cells[5,l])+strtoreal(TableauArticle.Cells[6,R])),'2','C','');
                    TableauArborescenceArticle.Cells[6,l]:=Vergule(floattostr(strtoreal(TableauArborescenceArticle.Cells[6,l])+strtoreal(TableauArticle.Cells[8,R])),'2','C','');
                    TableauArborescenceArticle.Cells[8,l]:=Vergule(floattostr(strtoreal(TableauArborescenceArticle.Cells[8,l])+strtoreal(TableauArticle.Cells[11,R])),'2','C','');
                    TableauArborescenceArticle.Cells[9,l]:=Vergule(floattostr(strtoreal(TableauArborescenceArticle.Cells[9,l])+strtoreal(TableauArticle.Cells[12,R])),'2','C','');
                    Montant:=Montant+strtoreal(TableauArticle.Cells[8,R]);
                    CoutTotal:=CoutTotal+strtoreal(TableauArticle.Cells[20,R]);
                    ValeurAjouter:=ValeurAjouter+strtoreal(TableauArticle.Cells[21,R]);
               end;
          l:=l+1;
          end;

          if(OKCompte=false)then
          begin
               m:=m+1;
               TableauArborescenceArticle.Rows[m].Text:=inttostr(m);
               TableauArborescenceArticle.Cells[1,m]:=NumCompteArborescence;
               TableauArborescenceArticle.Cells[2,m]:=CompteArborescence;
               TableauArborescenceArticle.Cells[3,m]:='';
               TableauArborescenceArticle.Cells[4,m]:=TableauArticle.Cells[3,R];
               TableauArborescenceArticle.Cells[5,m]:=TableauArticle.Cells[6,R];
               TableauArborescenceArticle.Cells[6,m]:=Vergule(TableauArticle.Cells[8,R],'2','C','');
               TableauArborescenceArticle.Cells[8,m]:=Vergule(TableauArticle.Cells[11,R],'2','C','');
               TableauArborescenceArticle.Cells[9,m]:=Vergule(TableauArticle.Cells[12,R],'2','C','');
               Montant:=Montant+strtoreal(TableauArticle.Cells[8,R]);
               CoutTotal:=CoutTotal+strtoreal(TableauArticle.Cells[11,R]);
               ValeurAjouter:=ValeurAjouter+strtoreal(TableauArticle.Cells[12,R]);
          end;
     R:=R+1;
     end;

     if(m>0)then
            begin
                 TableauArborescenceArticle.RowCount:=m+3;
                 TableauArborescenceArticle.Rows[m+2].Text:='';
                 TableauArborescenceArticle.Rows[m+1].Text:='';

                 TableauArborescenceArticle.Cells[5,m+2]:='Total';
                 TableauArborescenceArticle.Cells[6,m+2]:=Vergule(floattostr(Montant),'2','C','');
                 TableauArborescenceArticle.Cells[8,m+2]:=Vergule(floattostr(CoutTotal),'2','C','');
                 TableauArborescenceArticle.Cells[9,m+2]:=Vergule(floattostr(ValeurAjouter),'2','C','');
            end
            else TableauArborescenceArticle.RowCount:=2;

     Ajustercolwidth(TableauArborescenceArticle,'','');

     LibererMemoireProcessus('BusinessProces.exe',FSMenuPrincipal.RBOptimisation.Checked);
end;

Procedure AfficherRecapitulatif(TableauRecapitulatif:TStringGrid; MemoCummulCompteur,MemoFondRoulement,MemoMontantArticle,MemoCummulUniteFonds,MemoDetailTypeUniteFonds,MemoCumuleSelectTypeUniteFonds,MemoMontantTiers,MemoSolde:TMemo);
begin
     TableauRecapitulatif.ColCount:=3;
     TableauRecapitulatif.Cols[0].Text:='N°';
     TableauRecapitulatif.Cols[1].Text:='Désignation';
     TableauRecapitulatif.Cols[2].Text:='Montant';

     TableauRecapitulatif.RowCount:=5;
     TableauRecapitulatif.Rows[1].Text:='1';
     TableauRecapitulatif.Rows[2].Text:='2';
     TableauRecapitulatif.Rows[3].Text:='3';
     TableauRecapitulatif.Rows[4].Text:='4';

     TableauRecapitulatif.Cells[1,1]:='Compteurs';
     TableauRecapitulatif.Cells[1,2]:='Unité de Fonds';
     TableauRecapitulatif.Cells[1,3]:='Fond de Roulement';
     TableauRecapitulatif.Cells[1,4]:='Solde';

     TableauRecapitulatif.Cells[2,1]:=MemoCummulCompteur.Lines.Text;
     TableauRecapitulatif.Cells[2,2]:=MemoCummulUniteFonds.Lines.Text;
     TableauRecapitulatif.Cells[2,3]:=MemoFondRoulement.Lines.Text;

     if(strtoreal(MemoSolde.Lines.Text)=0)then TableauRecapitulatif.Cells[2,4]:=MemoSolde.Lines.Text;
     if(strtoreal(MemoSolde.Lines.Text)<0)then TableauRecapitulatif.Cells[2,4]:=MemoSolde.Lines.Text;
     if(strtoreal(MemoSolde.Lines.Text)>0)then TableauRecapitulatif.Cells[2,4]:='+'+MemoSolde.Lines.Text;

     AjusterColWidth(TableauRecapitulatif,'','');

     //MiseAJourPrelevement(FSPrelevement.EditNumPrelevementCompteur.Text,FSPrelevement.EditMatricule.Text,strtoreal(FSPrelevement.EditMontantCompteur.Text),strtoreal(FSPrelevement.EditFondRoulement.Text),strtoreal(FSPrelevement.EditMontantUniteFonds.Text),strtoreal(FSPrelevement.EditSoldePrelevement.Text),false);
end;

procedure TFSNowPrelevement.FormShow(Sender: TObject);
begin
ActiverNomForm(1,(Sender as TComponent).Name);
     TitreFicheSaisie(FSNowPrelevement,'Nouveau Prélèvement');
end;

procedure TFSNowPrelevement.TimerControleTimer(Sender: TObject);
var R:integer; ListeRowSelect:string;
begin
     FSNowPrelevement.TimerControle.Enabled:=false;

     OpenFParc(RParc);
     ChRegistreAffectationEffectifEquipe:=RParc.Parcours+'\'+Exercice+'FRegistreAffectationEffectifEquipe';
     assignfile(FRegistreAffectationEffectifEquipe,ChRegistreAffectationEffectifEquipe);
     try
     if FileExists(ChRegistreAffectationEffectifEquipe)then
     Reset(FRegistreAffectationEffectifEquipe)
     else Rewrite(FRegistreAffectationEffectifEquipe);
     Seek(FRegistreAffectationEffectifEquipe,0);
     ListeRowSelect:='';
     while not eof(FRegistreAffectationEffectifEquipe)do
     begin
          read(FRegistreAffectationEffectifEquipe,RRegistreAffectationEffectifEquipe);

          R:=1;
          while(R<=FSNowPrelevement.TableauEffectifEquipe.RowCount-1)do
          begin
               if(inttostr(RRegistreAffectationEffectifEquipe.NumPrelevement)=FSNowPrelevement.EditNumPrelevement.Text)
               and(RRegistreAffectationEffectifEquipe.Matricule=FSNowPrelevement.TableauEffectifEquipe.Cells[3,R])
               then
               begin
                    if not(ExisteNumInTexte(inttostr(R),ListeRowSelect))then
                    begin
                         if(ListeRowSelect='')
                         then ListeRowSelect:=inttostr(R)
                         else ListeRowSelect:=ListeRowSelect+';'+inttostr(R);
                    end;

                    if(FSNowPrelevement.EditNumEquipe.Text='')then
                    begin
                         FSNowPrelevement.EditNumEquipe.Text:=inttostr(RRegistreAffectationEffectifEquipe.NumEquipe);
                    end
                    else
                    begin
                         if(FSNowPrelevement.EditNumEquipe.Text<>inttostr(RRegistreAffectationEffectifEquipe.NumEquipe))then
                         begin
                              afficherMessage('Anomalie ! Affectation erroné !');
                         end;
                    end;
               end;
          R:=R+1;
          end;

     end;
     finally
     CloseFile(FRegistreAffectationEffectifEquipe);
     end;

     FSNowPrelevement.EditListeRowSelect.Text:=ListeRowSelect;

     if(ListeRowSelect<>'')then
     begin
          R:=1;
          while(R<=FSNowPrelevement.TableauEffectifEquipe.RowCount-1)do
          begin
               if(ExisteNumInTexte(inttostr(R),ListeRowSelect))then
               begin
                    FSNowPrelevement.TableauEffectifEquipe.Cells[1,R]:='OK';
                    FSNowPrelevement.TableauEffectifEquipe.Cells[2,R]:=FSNowPrelevement.EditNumEquipe.Text;
               end
               else
               begin
                    FSNowPrelevement.TableauEffectifEquipe.Cells[1,R]:='';
                    FSNowPrelevement.TableauEffectifEquipe.Cells[2,R]:='';
               end;
          R:=R+1;
          end;
     end;
end;

procedure TFSNowPrelevement.TableauEffectifEquipeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if(key in[VK_RETURN])and(FSNowPrelevement.AfficheAffectationEffectifEquipe.Enabled=true)then
     begin
          ProTableauEffectifEquipeKeyDown;
     end;
end;

procedure TFSNowPrelevement.TableauAffectationEffectifEquipeDblClick(
  Sender: TObject);
begin
     if(FSNowPrelevement.TableauAffectationEffectifEquipe.Visible=true)then
     begin
          if(FSNowPrelevement.TableauEffectifEquipe.Cells[1,FSNowPrelevement.TableauEffectifEquipe.Row]='OK')
          and(FSNowPrelevement.AfficheAffectationEffectifEquipe.Enabled=true)
          then
          begin
                FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=true;
                FSNowPrelevement.BitAffectationEffectifEquipe.Kind:=bkAll;
                FSNowPrelevement.BitAffectationEffectifEquipe.Caption:='Valider';

                FSNowPrelevement.EditNumAffectationEffectifEquipe.Text:='';
                FSNowPrelevement.EditNumCompteurAffecter.Text:='';
                FSNowPrelevement.EditNumUniteFonds.Text:='';
                FSNowPrelevement.EditValeurAffecter.Text:='';

                FSNowPrelevement.EditNumAffectationCompteur.Text:='';
                FSNowPrelevement.EditDesignationAffectationCompteur.Text:='';
                FSNowPrelevement.EditNumUniteFondsAffectationCompteur.Text:='';
                FSNowPrelevement.EditUniteFondsAffecterAffectationCompteur.Text:='';
                FSNowPrelevement.EditValeurAffecterAffectationCompteur.Text:='';

                if(FSNowPrelevement.RBGroupeCompteurs.Checked=true)then
                begin
                     FSNowPrelevement.PageGroupeCompteurs.Show;
                     FSNowPrelevement.EditDesignationAffectationCompteur.SetFocus;
                end
                else
                begin
                     FSNowPrelevement.PageCompteurs.Show;
                     FSNowPrelevement.EditNumCompteurAffecter.SetFocus;
                end;
          end;

          FSNowPrelevement.BitAffectationCompteurs.Kind:=FSNowPrelevement.BitAffectationEffectifEquipe.Kind;
          FSNowPrelevement.BitAffectationCompteurs.Caption:=FSNowPrelevement.BitAffectationEffectifEquipe.Caption;
     end;
end;

procedure TFSNowPrelevement.TableauSelectionDblClick(Sender: TObject);
begin
     if(FSNowPrelevement.TableauSelection.Visible=true)then
     begin
          if(FSNowPrelevement.TableauSelection.Cells[0,0]='U.F')then
          begin
               FSNowPrelevement.EditNumUniteFonds.Text:=FSNowPrelevement.TableauSelection.Cells[1,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.EditUniteFondsAffecter.Text:=FSNowPrelevement.TableauSelection.Cells[4,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.TableauSelection.Visible:=false;
               FSNowPrelevement.EditValeurAffecter.SetFocus;
          end;

          if(FSNowPrelevement.TableauSelection.Cells[0,0]='C.A')then
          begin
               FSNowPrelevement.EditNumCompteurAffecter.Text:=FSNowPrelevement.TableauSelection.Cells[1,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.EditCompteurAffecter.Text:=FSNowPrelevement.TableauSelection.Cells[3,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.TableauSelection.Visible:=false;
               FSNowPrelevement.EditNumUniteFonds.SetFocus;
          end;

          if(FSNowPrelevement.TableauSelection.Cells[0,0]='U.F.AC')then
          begin
               FSNowPrelevement.EditNumUniteFondsAffectationCompteur.Text:=FSNowPrelevement.TableauSelection.Cells[1,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.EditUniteFondsAffecterAffectationCompteur.Text:=FSNowPrelevement.TableauSelection.Cells[4,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.TableauSelection.Visible:=false;
               FSNowPrelevement.EditValeurAffecterAffectationCompteur.SetFocus;
          end;

          if(FSNowPrelevement.TableauSelection.Cells[0,0]='A.C')then
          begin
               FSNowPrelevement.EditNumAffectationCompteur.Text:=FSNowPrelevement.TableauSelection.Cells[1,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.EditDesignationAffectationCompteur.Text:=FSNowPrelevement.TableauSelection.Cells[2,FSNowPrelevement.TableauSelection.Row];
               FSNowPrelevement.TableauSelection.Visible:=false;
               FSNowPrelevement.EditNumUniteFondsAffectationCompteur.SetFocus;
          end;
     end;
end;

procedure TFSNowPrelevement.EditValeurAffecterAffectationCompteurDblClick(
  Sender: TObject);
begin
     FSNowPrelevement.EditValeurAffecterAffectationCompteur.Text:=inttostr(strtointeger(FSNowPrelevement.EditValeurAffecterAffectationCompteur.Text)+1)
end;

Procedure CalculeCompteurPrelevement(TypeIndicePrelevement:string; PrixPrelevement,ValeurInitiale,ValeurMouvement,ValeurPrelevement:real; var QteOperation,MontantOperation:real);
begin
     QteOperation:=0;
     MontantOperation:=0;

     if(TypeIndicePrelevement='Stock restant.')then
     begin
          QteOperation:=ValeurInitiale+ValeurMouvement-ValeurPrelevement;
     end
     else
     if(TypeIndicePrelevement='Cumul des Sorties.')then
     begin
          QteOperation:=ValeurPrelevement-ValeurInitiale;
     end
     else
     if(TypeIndicePrelevement='Stock Sortant.')then
     begin
          QteOperation:=ValeurPrelevement;
     end;

     MontantOperation:=QteOperation*PrixPrelevement;
end;

procedure TFSNowPrelevement.EditNumPrelevementDblClick(Sender: TObject);
var   i,R,RowControle,l,NumPrelvementMax,NumEquipe,MaxNumEquipe,MinNumEquipe:integer;
      OKNumPrelevementExiste:boolean;  LastDate,LastHeure,TypeProcesPrelevement,FichierConcernePrelevement,AdressePrelevement:string;
begin
     FSNowPrelevement.AfficheListePrelevementManquants.Visible:=true;

     FSNowPrelevement.TableauListePrelevementManquants.ColCount:=6;
     FSNowPrelevement.TableauListePrelevementManquants.Cols[0].Text:='Ordre';
     FSNowPrelevement.TableauListePrelevementManquants.Cols[1].Text:='N°Pr';
     FSNowPrelevement.TableauListePrelevementManquants.Cols[2].Text:='N°Eq';
     FSNowPrelevement.TableauListePrelevementManquants.Cols[3].Text:='Date';
     FSNowPrelevement.TableauListePrelevementManquants.Cols[4].Text:='Heure';
     FSNowPrelevement.TableauListePrelevementManquants.Cols[5].Text:='Etat';

     FSNowPrelevement.TableauListePrelevementManquants.RowCount:=2;
     FSNowPrelevement.TableauListePrelevementManquants.Rows[1].Text:='';

     TypeProcesPrelevement:='Business';
     FichierConcernePrelevement:='FPrelevement';
     AdressePrelevement:='';
     if not(FunctionAdresseProces(TypeProcesPrelevement,FichierConcernePrelevement,'',AdressePrelevement,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcernePrelevement+' recherché !');
     end;

     ChPrelevement:=AdressePrelevement;
     assignfile(FPrelevement,ChPrelevement);
     try
     if FileExists(ChPrelevement)then
     Reset(FPrelevement)
     else Rewrite(FPrelevement);
     Seek(FPrelevement,0);
     R:=0;
     NumPrelvementMax:=0;
     while not eof(FPrelevement)do
     begin
          read(FPrelevement,RPrelevement);
          R:=R+1;
          FSNowPrelevement.TableauListePrelevementManquants.Rows[R].Text:=inttostr(R);
          FSNowPrelevement.TableauListePrelevementManquants.Cells[1,R]:=inttostr(RPrelevement.NumPrelevement);
          FSNowPrelevement.TableauListePrelevementManquants.Cells[2,R]:=inttostr(RPrelevement.NumEquipe);
          FSNowPrelevement.TableauListePrelevementManquants.Cells[3,R]:=RPrelevement.DatePrelevement;
          FSNowPrelevement.TableauListePrelevementManquants.Cells[4,R]:=RPrelevement.HeurePrelevement;
          FSNowPrelevement.TableauListePrelevementManquants.Cells[5,R]:='ZZExiste';

          if(NumPrelvementMax<RPrelevement.NumPrelevement)then NumPrelvementMax:=RPrelevement.NumPrelevement;
     end;
     finally
     CloseFile(FPrelevement);
     end;

     RowControle:=R;
     for i:=1 to NumPrelvementMax do
     begin
          l:=1;
          OKNumPrelevementExiste:=false;
          while(l<=RowControle)and(OKNumPrelevementExiste=false)do
          begin
               if(i=strtointeger(FSNowPrelevement.TableauListePrelevementManquants.Cells[1,l]))then OKNumPrelevementExiste:=true;
          l:=l+1;
          end;

          if(OKNumPrelevementExiste=false)then
          begin
               R:=R+1;
               FSNowPrelevement.TableauListePrelevementManquants.Rows[R].Text:=inttostr(R);
               FSNowPrelevement.TableauListePrelevementManquants.Cells[1,R]:=inttostr(i);
               FSNowPrelevement.TableauListePrelevementManquants.Cells[2,R]:='';
               FSNowPrelevement.TableauListePrelevementManquants.Cells[3,R]:=datetostr(date);
               FSNowPrelevement.TableauListePrelevementManquants.Cells[4,R]:=timetostr(time);
               FSNowPrelevement.TableauListePrelevementManquants.Cells[5,R]:='Insérer';
          end;
     end;

     R:=R+1;
     FSNowPrelevement.TableauListePrelevementManquants.Rows[R].Text:=inttostr(R);
     FSNowPrelevement.TableauListePrelevementManquants.Cells[1,R]:=inttostr(NumPrelvementMax+1);
     FSNowPrelevement.TableauListePrelevementManquants.Cells[2,R]:=FSNowPrelevement.EditNumEquipe.Text;
     FSNowPrelevement.TableauListePrelevementManquants.Cells[3,R]:=datetostr(FSNowPrelevement.EditDatePrelevement.Date);
     FSNowPrelevement.TableauListePrelevementManquants.Cells[4,R]:=timetostr(FSNowPrelevement.EditHeurePrelevement.Time);
     FSNowPrelevement.TableauListePrelevementManquants.Cells[5,R]:='Nouveau';

     if(R>0)then FSNowPrelevement.TableauListePrelevementManquants.RowCount:=R+1
            else FSNowPrelevement.TableauListePrelevementManquants.RowCount:=2;

     AjusterColWidth(FSNowPrelevement.TableauListePrelevementManquants,'','');

     TrierTableauARowSpecial(FSNowPrelevement.TableauListePrelevementManquants,1,FSNowPrelevement.TableauListePrelevementManquants.RowCount-1,1,'1','Num','+');

     OpenFParc(RParc);
     ChEquipe:=RParc.Parcours+'\'+Exercice+'FEquipe';
     assignfile(FEquipe,ChEquipe);
     try
     if FileExists(ChEquipe)then
     Reset(FEquipe)
     else Rewrite(FEquipe);
     Seek(FEquipe,0);
     MaxNumEquipe:=0;
     MinNumEquipe:=999999999;
     while not eof(FEquipe)do
     begin
          read(FEquipe,REquipe);
          if(MaxNumEquipe<REquipe.NumEquipe)then MaxNumEquipe:=REquipe.NumEquipe;
          if(MinNumEquipe>REquipe.NumEquipe)then MinNumEquipe:=REquipe.NumEquipe;
     end;
     finally
     CloseFile(FEquipe);
     end;

     for R:=1 to FSNowPrelevement.TableauListePrelevementManquants.RowCount-1 do
     begin
          if(FSNowPrelevement.TableauListePrelevementManquants.Cells[5,R]='Insérer')and(R>1)then
          begin
               NumEquipe:=strtointeger(FSNowPrelevement.TableauListePrelevementManquants.Cells[2,R-1]);
               LastDate:=FSNowPrelevement.TableauListePrelevementManquants.Cells[3,R-1];
               LastHeure:=FSNowPrelevement.TableauListePrelevementManquants.Cells[4,R-1];

               Division(NumEquipe,MaxNumEquipe,MaxNumEquipe,NumEquipe);

               NumEquipe:=NumEquipe+1;

               REquipe:=ChercherEquipe(inttostr(NumEquipe));

               if(strtotime(REquipe.HeureFin)<strtotime(LastHeure))
               then FSNowPrelevement.TableauListePrelevementManquants.Cells[3,R]:=datetostr(strtodate(LastDate)+1)
               else FSNowPrelevement.TableauListePrelevementManquants.Cells[3,R]:=LastDate;

               FSNowPrelevement.TableauListePrelevementManquants.Cells[2,R]:=inttostr(NumEquipe);
          end;
     end;

     TrierTableauARowSpecial(FSNowPrelevement.TableauListePrelevementManquants,1,FSNowPrelevement.TableauListePrelevementManquants.RowCount-1,1,'5','','+');
     FSNowPrelevement.TableauListePrelevementManquants.RowCount:=FSNowPrelevement.TableauListePrelevementManquants.RowCount-RowControle;

     for R:=1 to FSNowPrelevement.TableauListePrelevementManquants.RowCount-1 do
     begin
          FSNowPrelevement.TableauListePrelevementManquants.Cells[0,R]:=inttostr(R);

          if(FSNowPrelevement.TableauListePrelevementManquants.Cells[5,R]='Existe')then FSNowPrelevement.TableauListePrelevementManquants.RowHeights[R]:=0;
     end;           
     FSNowPrelevement.TableauListePrelevementManquants.SetFocus;
end;

procedure TFSNowPrelevement.TableauListePrelevementManquantsDblClick(
  Sender: TObject);
begin
     FSNowPrelevement.EditNumPrelevement.Text:=FSNowPrelevement.TableauListePrelevementManquants.Cells[1,FSNowPrelevement.TableauListePrelevementManquants.Row];

     FSNowPrelevement.EditDatePrelevement.Date:=strtodate(FSNowPrelevement.TableauListePrelevementManquants.Cells[3,FSNowPrelevement.TableauListePrelevementManquants.Row]);
     FSNowPrelevement.EditHeurePrelevement.Time:=strtotime(FSNowPrelevement.TableauListePrelevementManquants.Cells[4,FSNowPrelevement.TableauListePrelevementManquants.Row]);

     REquipe:=ChercherEquipe(FSNowPrelevement.TableauListePrelevementManquants.Cells[2,FSNowPrelevement.TableauListePrelevementManquants.Row]);
     FSNowPrelevement.EditHeurePrelevement.Time:=strtotime(REquipe.HeureFin);
     FSNowPrelevement.EditNumEquipe.Text:=inttostr(REquipe.NumEquipe);
     FSNowPrelevement.EditDesignationEquipe.Text:=REquipe.DesignationEquipe;


     FSNowPrelevement.AfficheListePrelevementManquants.Visible:=false;
end;

procedure TFSNowPrelevement.BitBtn3Click(Sender: TObject);
begin
     FSNowPrelevement.AfficheListePrelevementManquants.Visible:=false;
end;

Function NatureOperationPrelevement(NumPrelevement,Matricule,NumPrelevementUniteFonds:string; InclureQuantite:boolean):string;
var  i,PBegin,PEnd:integer;  NatureMouvement,PositionPrelevement,TypeProcesInt,FichierConcerneInt,Adresse,NumStructure,QuantiteTexte:string;  OKDetailArticlePrelevementUniteFonds:boolean;
begin
     if(strtointeger(NumPrelevement)<>0)then
     begin
          RPrelevement:=ChercherPrelevement(strtointeger(NumPrelevement),ExerciceAnnee,Matricule,PositionPrelevement);
          if(RPrelevement.Archiver=false)then
          begin
               FichierConcerneInt:='FDetailArticlePrelevementUniteFonds';
               PBegin:=0;
               PEnd:=999999999;
          end
          else
          begin
               FichierConcerneInt:='FArchiveDetailArticlePrelevementUniteFonds';
               PBegin:=RPrelevement.RegistrePositionDetailArticlePrelevementUniteFonds.PositionArchiveBegin;
               PEnd:=RPrelevement.RegistrePositionDetailArticlePrelevementUniteFonds.PositionArchiveEnd;
          end;
     end
     else
     begin
          FichierConcerneInt:='FArchiveDetailArticlePrelevementUniteFonds';
          PBegin:=0;
          PEnd:=999999999;
     end;

     TypeProcesInt:='Business';
     Adresse:='';
     if not(FunctionAdresseProces(TypeProcesInt,FichierConcerneInt,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier '+FichierConcerneInt+' recherché !');
     end;

     ChDetailArticlePrelevementUniteFonds:=Adresse;
     assignfile(FDetailArticlePrelevementUniteFonds,ChDetailArticlePrelevementUniteFonds);
     try
     if FileExists(ChDetailArticlePrelevementUniteFonds)then
     Reset(FDetailArticlePrelevementUniteFonds)
     else Rewrite(FDetailArticlePrelevementUniteFonds);
     i:=PBegin;
     Seek(FDetailArticlePrelevementUniteFonds,i);
     NatureMouvement:='';
     while not eof(FDetailArticlePrelevementUniteFonds)and(i<=PEnd)do
     begin
          read(FDetailArticlePrelevementUniteFonds,RDetailArticlePrelevementUniteFonds);
          i:=i+1;

          if(NumPrelevement<>'')then
          begin
               if(inttostr(RDetailArticlePrelevementUniteFonds.NumPrelevement)=NumPrelevement)
               then OKDetailArticlePrelevementUniteFonds:=true
               else OKDetailArticlePrelevementUniteFonds:=false;
          end
          else OKDetailArticlePrelevementUniteFonds:=false;

          if(OKDetailArticlePrelevementUniteFonds=true)then
          begin
               if(Matricule<>'')then
               begin
                    if(RDetailArticlePrelevementUniteFonds.Matricule=Matricule)
                    then OKDetailArticlePrelevementUniteFonds:=true
                    else OKDetailArticlePrelevementUniteFonds:=false;
               end
               else OKDetailArticlePrelevementUniteFonds:=false;
          end;

          if(OKDetailArticlePrelevementUniteFonds=true)then
          begin
               if(NumPrelevementUniteFonds<>'')then
               begin
                    if(inttostr(RDetailArticlePrelevementUniteFonds.NumPrelevementUniteFonds)=NumPrelevementUniteFonds)
                    then OKDetailArticlePrelevementUniteFonds:=true
                    else OKDetailArticlePrelevementUniteFonds:=false;
               end
               else OKDetailArticlePrelevementUniteFonds:=false;
          end;

          if(OKDetailArticlePrelevementUniteFonds=true)then
          begin
               NumStructure:='';
               RStockArticleCopie:=ChercherStockArticle('Article',NumStructure,RDetailArticlePrelevementUniteFonds.CodeArticle,'',OKStockRecherche,RubriqueRecherche);

               if(InclureQuantite=true)
               then QuantiteTexte:=Vergule(floattostr(RDetailArticlePrelevementUniteFonds.QuantiteJustifier),'2','C','')+' '+RStockArticleCopie.UM+' '
               else QuantiteTexte:='';

               if(NatureMouvement='')then
               begin
                    NatureMouvement:=QuantiteTexte+RStockArticleCopie.Design+' '+RStockArticleCopie.Ref;
               end
               else
               begin
                    NatureMouvement:=NatureMouvement+'; '+QuantiteTexte+RStockArticleCopie.Design+' '+RStockArticleCopie.Ref;
               end;
          end;

     end;
     finally
     CloseFile(FDetailArticlePrelevementUniteFonds);
     end;

     NatureOperationPrelevement:=NatureMouvement;
end;

procedure TFSNowPrelevement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ActiverNomForm(0,(Sender as TComponent).Name);
end;

Procedure ControleEtatPrelevement;
var  SoldeEcart:real; OKAutorisationEcart:boolean;
begin
     FSPrelevement.EditSoldeCompteur.Lines.Text:='';
     FSPrelevement.EditSoldeUnitesFonds.Lines.Text:='';
     FSPrelevement.EditSoldedesSoldes.Lines.Text:='';

     FSPrelevement.BitImprimeEtatPrelevement.Enabled:=false;
     FSPrelevement.BitValiderEcart.Visible:=true;
     FSPrelevement.AfficheValiderEcart.Color:=clRed;

     FSPrelevement.AfficheDataCompteur.Color:=clRed;
     FSPrelevement.AfficheDataUnitesFonds.Color:=clRed;
     FSPrelevement.AfficheSolde.Color:=clRed;

     OKAutorisationEcart:=true;

     SoldeEcart:=Strtoreal(FSPrelevement.EditControleMontantCompteurTableauPrelevementCompteur.Text)-Strtoreal(FSPrelevement.EditControleMontantCompteurTableauDetailTiers.Text);
     if(SoldeEcart<0)then SoldeEcart:=SoldeEcart*(-1);
     if(SoldeEcart>Strtoreal(FSPrelevement.EditEcartAutorise.Text))then OKAutorisationEcart:=false else FSPrelevement.AfficheDataCompteur.Color:=clLime;
     FSPrelevement.EditSoldeCompteur.Lines.Text:=Vergule(floattostr(SoldeEcart),'2','C','');

     SoldeEcart:=Strtoreal(FSPrelevement.EditControleMontantUFTableauPrelevementUniteFonds.Text)-Strtoreal(FSPrelevement.EditControleMontantUFTableauDetailTiers.Text);
     if(SoldeEcart<0)then SoldeEcart:=SoldeEcart*(-1);
     if(SoldeEcart>Strtoreal(FSPrelevement.EditEcartAutorise.Text))then OKAutorisationEcart:=false else FSPrelevement.AfficheDataUnitesFonds.Color:=clLime;;
     FSPrelevement.EditSoldeUnitesFonds.Lines.Text:=Vergule(floattostr(SoldeEcart),'2','C','');

     SoldeEcart:=Strtoreal(FSPrelevement.EditControleSoldeTableauEffectifEquipe.Text)-Strtoreal(FSPrelevement.EditControleSoldeAfficherPrelevement.Text);
     if(SoldeEcart<0)then SoldeEcart:=SoldeEcart*(-1);
     if(SoldeEcart>Strtoreal(FSPrelevement.EditEcartAutorise.Text))then OKAutorisationEcart:=false else FSPrelevement.AfficheSolde.Color:=clLime;;
     FSPrelevement.EditSoldedesSoldes.Lines.Text:=Vergule(floattostr(SoldeEcart),'2','C','');

     if(OKAutorisationEcart=true)
     then
     begin
          FSPrelevement.BitImprimeEtatPrelevement.Enabled:=true;
          FSPrelevement.BitValiderEcart.Visible:=false;
          FSPrelevement.AfficheValiderEcart.Color:=clLime;
     end
     else
     begin
          FSPrelevement.BitImprimeEtatPrelevement.Enabled:=false;
          FSPrelevement.BitValiderEcart.Visible:=true;
          FSPrelevement.AfficheValiderEcart.Color:=clRed;
     end;
end;

procedure TFSNowPrelevement.TableauListePrelevementManquantsDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSNowPrelevement.TableauEffectifEquipeDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSNowPrelevement.TableauAffectationEffectifEquipeDrawCell(
  Sender: TObject; ACol, ARow: Integer; Rect: TRect;
  State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSNowPrelevement.TableauEquipeDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

procedure TFSNowPrelevement.TableauSelectionDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
     TableauCouleursLignes(Sender,ACol,ARow,Rect,State);
end;

Procedure ProTableauEffectifEquipeKeyDown;
begin
      if(FSNowPrelevement.TableauEffectifEquipe.Cells[1,FSNowPrelevement.TableauEffectifEquipe.Row]='OK')then
      begin
            FSNowPrelevement.AfficherOperationAffectationEffectifEquipe.Visible:=true;
            FSNowPrelevement.BitAffectationEffectifEquipe.Kind:=bkAll;
            FSNowPrelevement.BitAffectationEffectifEquipe.Caption:='Valider';

            FSNowPrelevement.EditNumAffectationEffectifEquipe.Text:='';
            FSNowPrelevement.EditNumCompteurAffecter.Text:='';
            FSNowPrelevement.EditNumUniteFonds.Text:='';
            FSNowPrelevement.EditValeurAffecter.Text:='';

            FSNowPrelevement.EditNumAffectationCompteur.Text:='';
            FSNowPrelevement.EditDesignationAffectationCompteur.Text:='';
            FSNowPrelevement.EditNumUniteFondsAffectationCompteur.Text:='';
            FSNowPrelevement.EditUniteFondsAffecterAffectationCompteur.Text:='';
            FSNowPrelevement.EditValeurAffecterAffectationCompteur.Text:='';

            if(FSNowPrelevement.RBGroupeCompteurs.Checked=true)then
            begin
                 FSNowPrelevement.PageGroupeCompteurs.Show;
                 FSNowPrelevement.EditDesignationAffectationCompteur.SetFocus;
            end
            else
            begin
                 FSNowPrelevement.PageCompteurs.Show;
                 FSNowPrelevement.EditNumCompteurAffecter.SetFocus;
            end;
      end;

      FSNowPrelevement.BitAffectationCompteurs.Kind:=FSNowPrelevement.BitAffectationEffectifEquipe.Kind;
      FSNowPrelevement.BitAffectationCompteurs.Caption:=FSNowPrelevement.BitAffectationEffectifEquipe.Caption;
end;

end.
