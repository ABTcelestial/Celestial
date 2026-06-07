unit UnitFSDetailMarche;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, Buttons, ComCtrls;

type
  TFSDetailMarche = class(TForm)
    AfficheMarche: TPanel;
    LabelNatureProjet: TLabel;
    Label1: TLabel;
    Label25: TLabel;
    Label4: TLabel;
    EditNSMarche: TEdit;
    EditMarche: TEdit;
    EditNStructureMarche: TEdit;
    EditStructureMarche: TEdit;
    EditNStatistiqueMarche: TEdit;
    EditStatistiqueMarche: TEdit;
    EditTypeProjet: TComboBox;
    Panel1: TPanel;
    Label46: TLabel;
    Label14: TLabel;
    EditCodeMaitreOuvrage: TEdit;
    EditMaitreOuvrage: TEdit;
    TableauSelection: TStringGrid;
    Panel3: TPanel;
    TableauDetailMarche: TStringGrid;
    AfficheOperationDetailMarche: TPanel;
    BitBtn1: TBitBtn;
    Bevel9: TBevel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label2: TLabel;
    Label26: TLabel;
    DESING: TMemo;
    EditQuantite: TMemo;
    EditPrixUnitaire: TMemo;
    BitValideDetailMarche: TBitBtn;
    EditCodeArticle: TMemo;
    EditUnitM: TMemo;
    EditTrie: TEdit;
    EditDesignationArticle: TMemo;
    Bevel1: TBevel;
    AfficheDesignationArticles: TPanel;
    BitBtn20: TBitBtn;
    TableauDesignationArticles: TStringGrid;
    TrackBar1: TTrackBar;
    CaptionNbrChar: TLabel;
    CaptionNbrCharLigne: TLabel;
    EditDesignationArticleTeste: TMemo;
    EditDesignationArticleTesteListe: TMemo;
    EditCodeProduit: TEdit;
    IndiceAfficheStructure: TEdit;
    IndiceAfficheStatistique: TEdit;
    EditNumLot: TEdit;
    EditSauvegardeDetailMarche: TEdit;
    EditStructuresDOptions: TEdit;
    AfficheOptionFormule: TPanel;
    Bevel36: TBevel;
    BitValiderFormule: TBitBtn;
    Panel14: TPanel;
    RadioGroup6: TRadioGroup;
    RBFormuleGlobale: TRadioButton;
    RBFormuleDistincte: TRadioButton;
    Panel15: TPanel;
    RadioGroup8: TRadioGroup;
    RBFormuleParStructure: TRadioButton;
    RBFormuleParStatistique: TRadioButton;
    AfficheRecapitulationParStructure: TPanel;
    Bevel41: TBevel;
    TestePrintDevis: TMemo;
    TableauRecapitulationParStructure: TStringGrid;
    BitBtn84: TBitBtn;
    BitBtn85: TBitBtn;
    AfficheDetailleParClasse: TPanel;
    TableauDetailleParClasse: TStringGrid;
    OptionDetailleParClasse: TPanel;
    Bevel37: TBevel;
    RadioGroup10: TRadioGroup;
    RBDetailGlobal: TRadioButton;
    RBDetailParFamille: TRadioButton;
    RBDetailParSFamille: TRadioButton;
    BitBtn81: TBitBtn;
    RBDetailParArticle: TRadioButton;
    AfficheSauvegarderDetailMarche: TPanel;
    Bevel10: TBevel;
    EditOptionSauvegarde: TEdit;
    BitOuiSauvegardeDetailMarche: TBitBtn;
    BitNonSauvegardeDetailMarche: TBitBtn;
    MemoDetailMarche: TMemo;
    AfficheStructureMarche: TPanel;
    Edit1: TEdit;
    TableauStructureMarche: TStringGrid;
    BitBtn36: TBitBtn;
    AfficheStatistiqueMarche: TPanel;
    EditStatistiquesDOptions: TEdit;
    TableauStatistiqueMarche: TStringGrid;
    BitBtn77: TBitBtn;
    Panel2: TPanel;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    EditTypeDecision: TEdit;
    Panel4: TPanel;
    BitBtn18: TBitBtn;
    BitBtn16: TBitBtn;
    Panel5: TPanel;
    BitBtn2: TBitBtn;
    RBAutoriserSautLigneDesignation: TCheckBox;
    AfficheOptionsDevisQE: TPanel;
    Bevel44: TBevel;
    Bevel45: TBevel;
    Label60: TLabel;
    Label61: TLabel;
    Bevel40: TBevel;
    LabelTypeDevis: TLabel;
    RadioGroup12: TRadioGroup;
    RBOptionsDevisQEGlobal: TRadioButton;
    RBOptionsDevisQEDetailAffiche: TRadioButton;
    RBListelots: TCheckBox;
    RBRemplireQuantite: TCheckBox;
    RBRemplirePrixU: TCheckBox;
    RBRemplireMontantG: TCheckBox;
    BitValiderOptionsDevisQE: TBitBtn;
    RBAfficherSousTotaux: TCheckBox;
    RBAfficherTotaux: TCheckBox;
    RBAfficherTotalStructure: TCheckBox;
    RBArticlesDisponible: TCheckBox;
    EditPourcentageQte: TEdit;
    UpDown2: TUpDown;
    EditPourcentagePrix: TEdit;
    UpDown3: TUpDown;
    RBCumuleArticle: TCheckBox;
    AfficheChoixLots: TPanel;
    BitBtn3: TBitBtn;
    TableauChoixLots: TStringGrid;
    TableauDevisQE: TStringGrid;
    TableauDevisRestant: TStringGrid;
    AffichePCNDetailMarche: TStringGrid;
    AfficheOperationsDM: TPanel;
    Bevel28: TBevel;
    BitBtn71: TBitBtn;
    BitBtn68: TBitBtn;
    BitBtn61: TBitBtn;
    BitBtn65: TBitBtn;
    BitBtn76: TBitBtn;
    BitBtn82: TBitBtn;
    BitBtn83: TBitBtn;
    BitBtn89: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    EditMaxColWidth: TEdit;
    IncrimentEditMaxColWidth: TUpDown;
    BitBtn6: TBitBtn;
    EditTitreParClasse: TEdit;
    BitBtn7: TBitBtn;
    EditMarcheControle: TMemo;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    EditNumMarcheReference: TEdit;
    Label3: TLabel;
    RBMarcheReference: TCheckBox;
    TableauNotNumArticle: TStringGrid;
    TableauAvenantMarche: TStringGrid;
    BitBtn10: TBitBtn;
    AfficheOptionPrintDetailMarche: TPanel;
    Bevel32: TBevel;
    RadioGroup5: TRadioGroup;
    StaticText2: TStaticText;
    RBOrientationPapierDetailMarche: TComboBox;
    RBAjustementDetailMarche: TCheckBox;
    BitBtn11: TBitBtn;
    TableauDevisRestantCumule: TStringGrid;
    EditMaxLetreDesignation: TEdit;
    UpDown1: TUpDown;
    Panel6: TPanel;
    RadioGroup1: TRadioGroup;
    RBUtiliseFamilleMarche: TRadioButton;
    RBUtiliseDetailMarche: TRadioButton;
    Panel7: TPanel;
    RadioGroup2: TRadioGroup;
    RBUtiliseFamilleMarcheDM: TRadioButton;
    RBUtiliseDetailMarcheDM: TRadioButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    BRefaireMarche: TCheckBox;
    MontantMarcheHT: TLabel;
    AdresseDetailMarche: TPanel;
    RBSuspendePrint: TCheckBox;
    procedure EditTypeProjetChange(Sender: TObject);
    procedure EditTypeProjetKeyPress(Sender: TObject; var Key: Char);
    procedure EditTypeProjetEnter(Sender: TObject);
    procedure EditNSMarcheEnter(Sender: TObject);
    procedure EditMarcheEnter(Sender: TObject);
    procedure EditNStructureMarcheEnter(Sender: TObject);
    procedure EditStructureMarcheEnter(Sender: TObject);
    procedure EditNStatistiqueMarcheEnter(Sender: TObject);
    procedure EditStatistiqueMarcheEnter(Sender: TObject);
    procedure TableauSelectionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauDetailMarcheClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditCodeArticleExit(Sender: TObject);
    procedure EditCodeArticleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDesignationArticleChange(Sender: TObject);
    procedure EditDesignationArticleEnter(Sender: TObject);
    procedure EditDesignationArticleExit(Sender: TObject);
    procedure EditDesignationArticleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDesignationArticleKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditDesignationArticleKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauDesignationArticlesClick(Sender: TObject);
    procedure TableauDesignationArticlesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure TableauDesignationArticlesKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitValideDetailMarcheClick(Sender: TObject);
    procedure TableauDetailMarcheKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableauDetailMarcheKeyPress(Sender: TObject; var Key: Char);
    procedure BitNonSauvegardeDetailMarcheClick(Sender: TObject);
    procedure TableauStructureMarcheKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn77Click(Sender: TObject);
    procedure TableauStatistiqueMarcheKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtn36Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure EditUnitMKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditQuantiteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditQuantiteKeyPress(Sender: TObject; var Key: Char);
    procedure EditPrixUnitaireKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPrixUnitaireKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitOuiSauvegardeDetailMarcheClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitValiderFormuleClick(Sender: TObject);
    procedure BitBtn71Click(Sender: TObject);
    procedure BitBtn61Click(Sender: TObject);
    procedure BitBtn65Click(Sender: TObject);
    procedure BitBtn82Click(Sender: TObject);
    procedure BitBtn83Click(Sender: TObject);
    procedure BitBtn89Click(Sender: TObject);
    procedure BitBtn68Click(Sender: TObject);
    procedure BitBtn76Click(Sender: TObject);
    procedure BitValiderOptionsDevisQEClick(Sender: TObject);
    procedure RBListelotsClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure TableauChoixLotsContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TableauChoixLotsDblClick(Sender: TObject);
    procedure BitBtn81Click(Sender: TObject);
    procedure BitBtn84Click(Sender: TObject);
    procedure BitBtn85Click(Sender: TObject);
    procedure AffichePCNDetailMarcheClick(Sender: TObject);
    procedure AffichePCNDetailMarcheContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure AffichePCNDetailMarcheDblClick(Sender: TObject);
    procedure AffichePCNDetailMarcheKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AffichePCNDetailMarcheKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure TableauSelectionClick(Sender: TObject);
    procedure TableauSelectionKeyPress(Sender: TObject; var Key: Char);
    procedure IncrimentEditMaxColWidthClick(Sender: TObject;
      Button: TUDBtnType);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure AfficheOperationDetailMarcheEnter(Sender: TObject);
    procedure EditCodeArticleKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn10Click(Sender: TObject);
    procedure AfficheOptionPrintDetailMarcheClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure TableauDevisRestantDblClick(Sender: TObject);
    procedure TableauDevisRestantContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure TableauDevisRestantCumuleDblClick(Sender: TObject);
    procedure TableauDevisRestantCumuleContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure RBSuspendePrintClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FSDetailMarche: TFSDetailMarche;

Procedure TrierArticleDetailMarche(Indice:integer);
Function NewArticle(Source,CodeArticlePrior,CodeArticle,DesignationArticle,UMArticle,PrixArticle,CodeProduit:string):string;
Procedure ProcAfficheDetailMarche(TableauDetailMarche,TableauNotNumArticle:TStringGrid; Mode,CodeArticle,DesignationArticle:String; NSMarche,NStructureMarche,NStatistiqueMarche:integer);
Procedure InitialeAfficheDetailMarche;
Function FunctAfficheStructureMarche(NSMarche,NStructureMarche:integer):boolean;
Function FunctAfficheStatistiqueMarche(NSMarche,NSructureMarche,NStatistiqueMarche:integer):boolean;
Procedure ProcAfficheFormuleMarche(FormuleCodeProduit:string);
Procedure ProcAfficheDevisQE(Mode:String; NSMarche,NStructureMarche,NStatistiqueMarche,NAvenantMarche:integer; CumuleArticle:boolean);
Procedure ProcAfficheStatistiqueRecapitulation(NSMarche,ARow:integer);
Procedure ProcAfficheTravauxRestant(Mode:String; NSMarche,NStructureMarche,NStatistiqueMarche,NAvenantMarche:integer);
Procedure ClearDevisRestant(Indice:integer; Visible:boolean);
Procedure HeightDevisRestant(Indice:integer; var Position:integer);
Procedure ClearDevisQE(Indice:integer; Visible:boolean);
Procedure HeightDevisQE(Indice:integer; var Position:integer);
Procedure ClearRecapitulationParStructure(Indice:integer; Visible:boolean);
Procedure InitialisationRecapitulationParStructure(ARow,Indice:integer);
Procedure TotalRecapitulationParStructure(Visible:boolean);
Function ExisteArticle(Fichier,Operation,CodeArticle,DesignationArticle,FirstCodeTrie,NAttachement:string):boolean;
Procedure RemplireFirstLigneDetailMarche(TableauDetailMarche:TStringGrid);
Procedure ListeStructureStatistique(TableauSelection:TStringGrid;  NSMarche:integer);
Function ControleCodeArticleMarche(CodeArticleMarche:string; LongueurCodeArticleMarche:integer):boolean;
Function RechercheDetailMarche(NSMarche,T:integer; E:char; CodeArticleMarche:string; var UniTeMesure:string):string;

implementation

Uses   UnitInitialisation, UnitSuppression ,UnitFSMarche,
       UnitFSMenuPrincipal, UnitFSFormuleComposition, UnitFSApprovisionnement,
       UnitFSAuthentificationMarche, UnitPrintDevisRestant,
       UnitPrintDevisMarche, UnitPrintRecapitulationParStructure, UnitFSSituations,
  UnitFSAttachements, UnitFSImporteDetailMarcheExcel;

var

RFamille:RRegistreComptes;
FFamille:FRegistreComptes;
ChFamille:string250;

RSousFamille:RRegistreComptes;
FSousFamille:FRegistreComptes;
ChSousFamille:string250;

{$R *.dfm}

procedure TFSDetailMarche.EditTypeProjetChange(Sender: TObject);
begin
     FSDetailMarche.EditNSMarche.Text:='';
     FSDetailMarche.EditMarche.Text:='';
     FSDetailMarche.EditNStructureMarche.Text:='';
     FSDetailMarche.EditStructureMarche.Text:='';
     FSDetailMarche.EditNStatistiqueMarche.Text:='';
     FSDetailMarche.EditStatistiqueMarche.Text:='';
     FSDetailMarche.EditCodeMaitreOuvrage.Text:='';
     FSDetailMarche.EditMaitreOuvrage.Text:='';

     FSDetailMarche.LabelNatureProjet.Caption:=FSDetailMarche.EditTypeProjet.Text;

     FSDetailMarche.TableauDetailMarche.RowCount:=2;
     FSDetailMarche.TableauDetailMarche.Rows[1].Text:='';
end;

procedure TFSDetailMarche.EditTypeProjetKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSDetailMarche.EditTypeProjetEnter(Sender: TObject);
begin
     FSDetailMarche.TableauSelection.Visible:=false;
end;

procedure TFSDetailMarche.EditNSMarcheEnter(Sender: TObject);
begin
     InitialeAfficheDetailMarche;
     FSDetailMarche.AffichePCNDetailMarche.Visible:=false;
     FSDetailMarche.TableauDevisRestant.Visible:=false;
     FSDetailMarche.TableauDevisQE.Visible:=false;
     FSDetailMarche.AfficheOptionsDevisQE.Visible:=false;

     FSDetailMarche.TableauSelection.Visible:=true;
     FSDetailMarche.TableauSelection.Top:=FSDetailMarche.AfficheMarche.Top+FSDetailMarche.EditNSMarche.Top+FSDetailMarche.EditNSMarche.Height+2;
     FSDetailMarche.TableauSelection.Left:=FSDetailMarche.AfficheMarche.Left+FSDetailMarche.EditNSMarche.Left;
     ProcAfficheMarche(FSDetailMarche.TableauSelection,FSDetailMarche.EditTypeProjet.Text,'');
     FSDetailMarche.TableauSelection.Cells[0,0]:='Mch';
     FSDetailMarche.TableauSelection.SetFocus;
end;

procedure TFSDetailMarche.EditMarcheEnter(Sender: TObject);
begin
     FSDetailMarche.TableauSelection.Visible:=true;
     FSDetailMarche.TableauSelection.Top:=FSDetailMarche.AfficheMarche.Top+FSDetailMarche.EditMarche.Top+FSDetailMarche.EditMarche.Height+2;
     FSDetailMarche.TableauSelection.Left:=FSDetailMarche.AfficheMarche.Left+FSDetailMarche.EditMarche.Left+1;
     ProcAfficheMarche(FSDetailMarche.TableauSelection,FSDetailMarche.EditTypeProjet.Text,'');
     FSDetailMarche.TableauSelection.Cells[0,0]:='Mch';
     FSDetailMarche.TableauSelection.SetFocus;
end;

procedure TFSDetailMarche.EditNStructureMarcheEnter(Sender: TObject);
begin
     InitialeAfficheDetailMarche;
     FSDetailMarche.AffichePCNDetailMarche.Visible:=false;
     FSDetailMarche.TableauDevisRestant.Visible:=false;
     FSDetailMarche.TableauDevisQE.Visible:=false;
     FSDetailMarche.AfficheOptionsDevisQE.Visible:=false;
     
     FSDetailMarche.TableauSelection.Visible:=true;
     FSDetailMarche.TableauSelection.Top:=FSDetailMarche.AfficheMarche.Top+FSDetailMarche.EditNStructureMarche.Top+FSDetailMarche.EditNStructureMarche.Height+2;
     FSDetailMarche.TableauSelection.Left:=FSDetailMarche.AfficheMarche.Left+FSDetailMarche.EditNStructureMarche.Left;
     ProcAfficheStructureMarche(FSDetailMarche.TableauSelection,FSDetailMarche.EditNSMarche.Text);
     FSDetailMarche.TableauSelection.Cells[0,0]:='Str';
     FSDetailMarche.TableauSelection.SetFocus;
end;

procedure TFSDetailMarche.EditStructureMarcheEnter(Sender: TObject);
begin
     FSDetailMarche.TableauSelection.Visible:=true;
     FSDetailMarche.TableauSelection.Top:=FSDetailMarche.AfficheMarche.Top+FSDetailMarche.EditStructureMarche.Top+FSDetailMarche.EditStructureMarche.Height+2;
     FSDetailMarche.TableauSelection.Left:=FSDetailMarche.AfficheMarche.Left+FSDetailMarche.EditStructureMarche.Left;
     ProcAfficheStructureMarche(FSDetailMarche.TableauSelection,FSDetailMarche.EditNSMarche.Text);
     FSDetailMarche.TableauSelection.Cells[0,0]:='Str';
     FSDetailMarche.TableauSelection.SetFocus;
end;

procedure TFSDetailMarche.EditNStatistiqueMarcheEnter(Sender: TObject);
begin
     InitialeAfficheDetailMarche;
     FSDetailMarche.AffichePCNDetailMarche.Visible:=false;
     FSDetailMarche.TableauDevisRestant.Visible:=false;
     FSDetailMarche.TableauDevisQE.Visible:=false;
     FSDetailMarche.AfficheOptionsDevisQE.Visible:=false;

     FSDetailMarche.TableauSelection.Visible:=true;
     FSDetailMarche.TableauSelection.Top:=FSDetailMarche.AfficheMarche.Top+FSDetailMarche.EditNStatistiqueMarche.Top+FSDetailMarche.EditNStatistiqueMarche.Height+2;
     FSDetailMarche.TableauSelection.Left:=FSDetailMarche.AfficheMarche.Left+FSDetailMarche.EditNStatistiqueMarche.Left;
     ProcAfficheStatistiqueMarche(FSDetailMarche.TableauSelection,FSDetailMarche.EditNSMarche.Text,FSDetailMarche.EditNStructureMarche.Text);
     FSDetailMarche.TableauSelection.Cells[0,0]:='Stq';
     FSDetailMarche.TableauSelection.SetFocus;
end;

procedure TFSDetailMarche.EditStatistiqueMarcheEnter(Sender: TObject);
begin
     FSDetailMarche.TableauSelection.Visible:=true;
     FSDetailMarche.TableauSelection.Top:=FSDetailMarche.AfficheMarche.Top+FSDetailMarche.EditStatistiqueMarche.Top+FSDetailMarche.EditStatistiqueMarche.Height+2;
     FSDetailMarche.TableauSelection.Left:=FSDetailMarche.AfficheMarche.Left+FSDetailMarche.EditStatistiqueMarche.Left;
     ProcAfficheStatistiqueMarche(FSDetailMarche.TableauSelection,FSDetailMarche.EditNSMarche.Text,FSDetailMarche.EditNStructureMarche.Text);
     FSDetailMarche.TableauSelection.Cells[0,0]:='Stq';
     FSDetailMarche.TableauSelection.SetFocus;
end;

procedure TFSDetailMarche.TableauSelectionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  NSMarche,NStructureMarche,NStatistiqueMarche:integer;  TypeProces,FichierConcerne:string;
begin
     if key in[VK_ESCAPE]then
     begin
          FSDetailMarche.TableauSelection.Visible:=false;
          FSDetailMarche.TableauDetailMarche.SetFocus;
     end;

     if key in[VK_RETURN]then
     begin
          if(FSDetailMarche.TableauSelection.Cells[0,0]='Stq')then
          begin
               FSDetailMarche.IndiceAfficheStructure.Text:='1';
               FSDetailMarche.IndiceAfficheStatistique.Text:='1';
               FSDetailMarche.EditNStatistiqueMarche.Text:=FSDetailMarche.TableauSelection.Cells[3,FSDetailMarche.TableauSelection.Row];
               FSDetailMarche.EditStatistiqueMarche.Text:=FSDetailMarche.TableauSelection.Cells[4,FSDetailMarche.TableauSelection.Row];
               FSDetailMarche.TableauSelection.Visible:=false;
               FSDetailMarche.TableauDetailMarche.SetFocus;
          end
          else
          if(FSDetailMarche.TableauSelection.Cells[0,0]='Str')then
          begin
               FSDetailMarche.IndiceAfficheStructure.Text:='1';
               FSDetailMarche.IndiceAfficheStatistique.Text:='0';
               FSDetailMarche.EditNStructureMarche.Text:=FSDetailMarche.TableauSelection.Cells[2,FSDetailMarche.TableauSelection.Row];
               FSDetailMarche.EditStructureMarche.Text:=FSDetailMarche.TableauSelection.Cells[3,FSDetailMarche.TableauSelection.Row];
               FSDetailMarche.TableauSelection.Visible:=false;
               FSDetailMarche.EditNStatistiqueMarche.SetFocus;
               FSDetailMarche.EditNStatistiqueMarche.Text:='';
               FSDetailMarche.EditStatistiqueMarche.Text:='';
          end
          else
          if(FSDetailMarche.TableauSelection.Cells[0,0]='Mch')then
          begin
               FSDetailMarche.IndiceAfficheStructure.Text:='0';
               FSDetailMarche.IndiceAfficheStatistique.Text:='0';
               FSDetailMarche.EditNSMarche.Text:=FSDetailMarche.TableauSelection.Cells[1,FSDetailMarche.TableauSelection.Row];
               FSDetailMarche.EditMarche.Text:=FSDetailMarche.TableauSelection.Cells[4,FSDetailMarche.TableauSelection.Row];
               FSDetailMarche.EditNumMarcheReference.Text:=FSDetailMarche.TableauSelection.Cells[20,FSDetailMarche.TableauSelection.Row];

               TypeProces:='Commercial'; FichierConcerne:='FClient';
               RTiers:=ChercherTiers(TypeProces,FichierConcerne,FSDetailMarche.TableauSelection.Cells[5,FSDetailMarche.TableauSelection.Row],'');
               FSDetailMarche.EditCodeMaitreOuvrage.Text:=RTiers.CodeTiers;
               FSDetailMarche.EditMaitreOuvrage.Text:=RTiers.NomTiers+' '+RTiers.PrenomTiers;
               FSDetailMarche.TableauSelection.Visible:=false;
               FSDetailMarche.EditNStructureMarche.SetFocus;

               ListeAvenantMarche(FSDetailMarche.TableauAvenantMarche,FSDetailMarche.EditNSMarche.Text);

               FSDetailMarche.EditNStructureMarche.Text:='';
               FSDetailMarche.EditStructureMarche.Text:='';
               FSDetailMarche.EditNStatistiqueMarche.Text:='';
               FSDetailMarche.EditStatistiqueMarche.Text:='';
          end;

          NSMarche:=strtointeger(FSDetailMarche.EditNSMarche.Text);
          NStructureMarche:=strtointeger(FSDetailMarche.EditNStructureMarche.Text)*strtointeger(FSDetailMarche.IndiceAfficheStructure.Text);
          NStatistiqueMarche:=strtointeger(FSDetailMarche.EditNStructureMarche.Text)*strtointeger(FSDetailMarche.IndiceAfficheStatistique.Text);
          ProcAfficheDetailMarche(FSDetailMarche.TableauDetailMarche,TableauNotNumArticle,'Importer','','',NSMarche,NStructureMarche,NStatistiqueMarche);
     end;
end;

procedure TFSDetailMarche.TableauDetailMarcheClick(Sender: TObject);
var ARow,NSMarche,NStructureMarche,NStatistiqueMarche:integer;
begin
InitialeAfficheDetailMarche;

if(FSDetailMarche.EditNumLot.Visible=true)then FSDetailMarche.EditNumLot.Text:=Lastlaters(FSDetailMarche.TableauDetailMarche.Cells[7,FSDetailMarche.TableauDetailMarche.Row],11);

ARow:=FSDetailMarche.TableauDetailMarche.Row;

FSDetailMarche.TableauDetailMarche.DefaultRowHeight:=18;
FSDetailMarche.EditDesignationArticleTeste.Lines.Text:=FSDetailMarche.TableauDetailMarche.Cells[FSDetailMarche.TableauDetailMarche.Col,FSDetailMarche.TableauDetailMarche.Row];
if(FSDetailMarche.EditDesignationArticleTeste.Lines.Count>0)
then FSDetailMarche.TableauDetailMarche.RowHeights[FSDetailMarche.TableauDetailMarche.Row]:=FSDetailMarche.EditDesignationArticleTeste.Lines.Count*18;

if(FSDetailMarche.TableauDetailMarche.Cells[7,ARow]<>'')and(Firstlaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],3)<>'ZZZ')
then
begin
     NSMarche:=strtointeger(DTrie('M',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]));
     NStructureMarche:=strtointeger(DTrie('S',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]));
     NStatistiqueMarche:=strtointeger(DTrie('T',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]));

     FSDetailMarche.EditNStructureMarche.Text:=DTrie('S',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]);
     RStructureMarche:=ChercherStructureMarche(NSMarche,NStructureMarche);
     FSDetailMarche.EditStructureMarche.Text:=RStructureMarche.StructureMarche;

     FSDetailMarche.EditNStatistiqueMarche.Text:=DTrie('T',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]);
     RStatistiqueMarche:=ChercherStatistiqueMarche(NSMarche,NStatistiqueMarche);
     FSDetailMarche.EditStatistiqueMarche.Text:=RStatistiqueMarche.StatistiqueMarche;
end;

end;

procedure TFSDetailMarche.BitBtn1Click(Sender: TObject);
begin
     FSDetailMarche.TableauDetailMarche.SetFocus;
     FSDetailMarche.AfficheOperationDetailMarche.Visible:=false;
end;

procedure TFSDetailMarche.EditCodeArticleExit(Sender: TObject);
var    OKCode:boolean;
begin

if(FSDetailMarche.RBMarcheReference.Checked=false)then
begin
      OKCode:=true;
      if(FSDetailMarche.EditCodeArticle.Text<>'')then
      begin
           if(Longueur(FSDetailMarche.EditCodeArticle.Text)=8)then
           begin
                if(not(FSDetailMarche.EditCodeArticle.Text[1]in['0'..'9']))
                or(not(FSDetailMarche.EditCodeArticle.Text[2]in['0'..'9']))
                or(not(FSDetailMarche.EditCodeArticle.Text[4]in['0'..'9']))
                or(not(FSDetailMarche.EditCodeArticle.Text[5]in['0'..'9']))
                or(not(FSDetailMarche.EditCodeArticle.Text[7]in['0'..'9']))
                or(not(FSDetailMarche.EditCodeArticle.Text[8]in['0'..'9']))
                or(not(FSDetailMarche.EditCodeArticle.Text[3]in['.']))
                or(not(FSDetailMarche.EditCodeArticle.Text[6]in['.']))
                then OKCode:=false;
           end
           else OKCode:=false;
      end;

      if(OKCode=false)then
      begin
           showmessage('Le Code est incorrect !');
           FSDetailMarche.EditCodeArticle.Text:='';
           FSDetailMarche.EditCodeArticle.SetFocus;
      end;
end;
end;

procedure TFSDetailMarche.EditCodeArticleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key in[VK_RETURN]then
     begin
          if(FSDetailMarche.AfficheDesignationArticles.Visible=true)then
          begin
               FSDetailMarche.TableauDesignationArticles.SetFocus;
               FSDetailMarche.TableauDesignationArticles.Col:=2;
          end
          else
          begin
               FSDetailMarche.EditDesignationArticle.SetFocus;
               FSDetailMarche.EditDesignationArticle.SelectAll;
          end;
     end;
end;

procedure TFSDetailMarche.EditDesignationArticleChange(Sender: TObject);
begin
     FSDetailMarche.TrackBar1.Position:=0;
     if(FSDetailMarche.EditDesignationArticle.Lines.Count>2)then
     FSDetailMarche.TrackBar1.Position:=FSDetailMarche.EditDesignationArticle.Lines.Count-2;
     FSDetailMarche.CaptionNbrChar.Caption:=inttostr(Longueur(FSDetailMarche.EditDesignationArticle.Lines.Text));
end;

procedure TFSDetailMarche.EditDesignationArticleEnter(Sender: TObject);
begin
     FSDetailMarche.TrackBar1.Position:=0;
     if(FSDetailMarche.EditDesignationArticle.Lines.Count>2)then
     FSDetailMarche.TrackBar1.Position:=FSDetailMarche.EditDesignationArticle.Lines.Count-2;
     FSDetailMarche.CaptionNbrChar.Caption:=inttostr(Longueur(FSDetailMarche.EditDesignationArticle.Lines.Text));
     FSDetailMarche.CaptionNbrCharLigne.Caption:='0';

     FSDetailMarche.EditDesignationArticle.WantReturns:=FSDetailMarche.RBAutoriserSautLigneDesignation.Checked;
end;

procedure TFSDetailMarche.EditDesignationArticleExit(Sender: TObject);
begin
     FSDetailMarche.TrackBar1.Position:=0;
end;

procedure TFSDetailMarche.EditDesignationArticleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  OK:boolean; IntExt:string[2]; IntExtCodeArticle:string[20];
begin

if key in[VK_RETURN]then
begin
     if((FSDetailMarche.AfficheDesignationArticles.Visible=true)
     and(FSDetailMarche.TableauDesignationArticles.Cells[1,1]<>''))
     then
     begin
          FSDetailMarche.EditDesignationArticle.Height:=43;
          FSDetailMarche.TrackBar1.Position:=0;
          FSDetailMarche.EditDesignationArticle.WantReturns:=FSDetailMarche.RBAutoriserSautLigneDesignation.Checked;
          FSDetailMarche.TableauDesignationArticles.SetFocus;
          FSDetailMarche.TableauDesignationArticles.Col:=2;
     end
     else
     if((strtointeger(FSDetailMarche.CaptionNbrCharLigne.Caption)=0)
     or(Longueur(FSDetailMarche.EditDesignationArticle.Lines.Text)=255))
     then
         FSDetailMarche.EditDesignationArticle.WantReturns:=FSDetailMarche.RBAutoriserSautLigneDesignation.Checked;

     if(FSDetailMarche.EditDesignationArticle.WantReturns=false)then
     begin
          FSDetailMarche.EditDesignationArticle.Height:=43;
          FSDetailMarche.TrackBar1.Position:=0;
     {*******************************************}

     if((FSDetailMarche.AfficheDesignationArticles.Visible=true)
     and(FSDetailMarche.TableauDesignationArticles.Cells[1,1]<>''))
     then
     begin
          FSDetailMarche.TableauDesignationArticles.SetFocus;
     end
     else
     if(FSDetailMarche.EditDesignationArticle.Text<>'')
     then
     begin
          FSDetailMarche.AfficheDesignationArticles.Visible:=false;
          FSDetailMarche.EditUnitM.SetFocus;
          FSDetailMarche.EditUnitM.SelectAll;
     end
     else
     begin
          FSDetailMarche.AfficheDesignationArticles.Visible:=false;
          showmessage('Veuillez saisire un article SVP !');
     end;
          {*******************************************}
     end;

     FSDetailMarche.CaptionNbrCharLigne.Caption:='0';

end;
end;

procedure TFSDetailMarche.EditDesignationArticleKeyPress(Sender: TObject;
  var Key: Char);
begin
     if(Longueur(FSDetailMarche.EditDesignationArticle.Lines.Text)>255)then
     begin
          key:=#0;
     end;

     if key<>#13 then
     FSDetailMarche.CaptionNbrCharLigne.Caption:=inttostr(strtointeger(FSDetailMarche.CaptionNbrCharLigne.Caption)+1);
end;

procedure TFSDetailMarche.EditDesignationArticleKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  i,R,NSMarche,NStructureMarche,NStatistiqueMarche:integer; OK:boolean;  IntExt:string[2];IntExtCodeArticle:string[20];
     TypeProces,FichierConcerne,Adresse:string;
begin

FSDetailMarche.CaptionNbrChar.Caption:=inttostr(Longueur(FSDetailMarche.EditDesignationArticle.Lines.Text));
if(Longueur(FSDetailMarche.EditDesignationArticle.Lines.Text)>255)then
begin
     showmessage('Dépassement de la taille de la Rubrique "255 Caractéres"');
     FSDetailMarche.EditDesignationArticle.Lines.Text:=FirstLaters(FSDetailMarche.EditDesignationArticle.Lines.Text,255);
     Exit;
end;

if( FSDetailMarche.AfficheDesignationArticles.Visible=false)
then
begin
     FSDetailMarche.AfficheDesignationArticles.Visible:=true;
     FSDetailMarche.TableauDesignationArticles.Cols[1].Text:='Désignation Article';
     FSDetailMarche.TableauDesignationArticles.Cols[2].Text:='Unité M.';
     FSDetailMarche.TableauDesignationArticles.Cols[3].Text:='Prix U.';
     FSDetailMarche.TableauDesignationArticles.Cols[4].Text:='Trie';
     FSDetailMarche.TableauDesignationArticles.Cols[5].Text:='I/E';
     FSDetailMarche.TableauDesignationArticles.Cols[6].Text:='Produit';
end;

if(FSDetailMarche.RBMarcheReference.Checked=true)then
begin
      NSMarche:=strtointeger(FSDetailMarche.EditNumMarcheReference.Text);
      NStructureMarche:=strtointeger(FSDetailMarche.EditNStructureMarche.Text)*strtointeger(FSDetailMarche.IndiceAfficheStructure.Text);
      NStatistiqueMarche:=strtointeger(FSDetailMarche.EditNStructureMarche.Text)*strtointeger(FSDetailMarche.IndiceAfficheStatistique.Text);

      ProcAfficheDetailMarche(FSDetailMarche.TableauDesignationArticles,FSDetailMarche.TableauDetailMarche,'Importer','',FSDetailMarche.EditDesignationArticle.Text,NSMarche,NStructureMarche,NStatistiqueMarche);
      TrierArticleDetailMarche(7);
end
else
begin
//********************************FAMILLE***************************************
TypeProces:='Business'; FichierConcerne:='FFamilleMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChFamille:=Adresse;
assignfile(FFamille,ChFamille);
if FileExists(ChFamille)then
Reset(FFamille)
else Rewrite(FFamille);
Seek(FFamille,0);
i:=0;
while not eof(FFamille) do
begin
Read(FFamille,RFamille);
if(Firstlaters(RFamille.CodeCompte,2)='72')then
begin
     R:=1;
     OK:=false;
     while(R<=i)and(OK=false)do
     begin
          if((FSDetailMarche.TableauDesignationArticles.Cells[1,R]=RFamille.Designation)
          and(FSDetailMarche.TableauDesignationArticles.Cells[6,R]=RFamille.CodeCompte))
          then
          begin
               OK:=true;
          end;
     R:=R+1;
     end;

     if((OK=false)
     and(FirstLaters(RFamille.Designation,Longueur(FSDetailMarche.EditDesignationArticle.Text))=FSDetailMarche.EditDesignationArticle.Text))
     then
     begin
          i:=i+1;
          FSDetailMarche.TableauDesignationArticles.Rows[i].Text:=IntExtCodeArticle;
          FSDetailMarche.TableauDesignationArticles.Cells[1,i]:=RFamille.Designation;
          FSDetailMarche.TableauDesignationArticles.Cells[2,i]:=RFamille.ContrePartie.TypeUses;
          FSDetailMarche.TableauDesignationArticles.Cells[3,i]:=RFamille.Specificite;
          FSDetailMarche.TableauDesignationArticles.Cells[4,i]:='';
          FSDetailMarche.TableauDesignationArticles.Cells[5,i]:=IntExt;
          FSDetailMarche.TableauDesignationArticles.Cells[6,i]:=RFamille.CodeCompte;
     end;
end;
end;
CloseFile(FFamille);
{********************************FAMILLE***************************************}

//********************************SOUS FAMILLE***************************************
TypeProces:='Business'; FichierConcerne:='FSousFamilleMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChSousFamille:=Adresse;
assignfile(FSousFamille,ChSousFamille);
if FileExists(ChSousFamille)then
Reset(FSousFamille)
else Rewrite(FSousFamille);
Seek(FSousFamille,0);
while not eof(FSousFamille) do
begin
Read(FSousFamille,RSousFamille);
if(Firstlaters(RSousFamille.CodeCompte,2)='72')then
begin
     R:=1;
     OK:=false;
     while(R<=i)and(OK=false)do
     begin
          if((FSDetailMarche.TableauDesignationArticles.Cells[1,R]=RSousFamille.Designation)
          and(FSDetailMarche.TableauDesignationArticles.Cells[6,R]=RSousFamille.CodeCompte))
          then
          begin
               OK:=true;
          end;
     R:=R+1;
     end;

     if((OK=false)
     and(FirstLaters(RSousFamille.Designation,Longueur(FSDetailMarche.EditDesignationArticle.Text))=FSDetailMarche.EditDesignationArticle.Text))
     then
     begin
          i:=i+1;
          FSDetailMarche.TableauDesignationArticles.Rows[i].Text:=IntExtCodeArticle;
          FSDetailMarche.TableauDesignationArticles.Cells[1,i]:=RSousFamille.Designation;
          FSDetailMarche.TableauDesignationArticles.Cells[2,i]:=RSousFamille.ContrePartie.TypeUses;
          FSDetailMarche.TableauDesignationArticles.Cells[3,i]:=RSousFamille.Specificite;
          FSDetailMarche.TableauDesignationArticles.Cells[4,i]:='';
          FSDetailMarche.TableauDesignationArticles.Cells[5,i]:=IntExt;
          FSDetailMarche.TableauDesignationArticles.Cells[6,i]:=RSousFamille.CodeCompte;
     end;
end;
end;
CloseFile(FSousFamille);
{********************************SOUS FAMILLE***************************************}

//********************************PRODUIT***************************************
TypeProces:='Business'; FichierConcerne:='FStockMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChStock:=Adresse;
assignfile(FStock,ChStock);
if FileExists(ChStock)then
Reset(FStock)
else Rewrite(FStock);
Seek(FStock,0);
while not eof(FStock) do
begin
Read(FStock,RStock);
if(Firstlaters(RStock.Code,2)='72')then
begin
     R:=1;
     OK:=false;
     while(R<=i)and(OK=false)do
     begin
          if((FSDetailMarche.TableauDesignationArticles.Cells[1,R]=RStock.Design)
          and(FSDetailMarche.TableauDesignationArticles.Cells[6,R]=RStock.Code))
          then
          begin
               OK:=true;
          end;
     R:=R+1;
     end;

     if((OK=false)
     and(FirstLaters(RStock.Design,Longueur(FSDetailMarche.EditDesignationArticle.Text))=FSDetailMarche.EditDesignationArticle.Text))
     then
     begin
          i:=i+1;
          FSDetailMarche.TableauDesignationArticles.Rows[i].Text:=IntExtCodeArticle;
          FSDetailMarche.TableauDesignationArticles.Cells[1,i]:=RStock.Design;
          FSDetailMarche.TableauDesignationArticles.Cells[2,i]:=RStock.UM;

          if(RStock.PrixVenteDetaille<>0)
          then FSDetailMarche.TableauDesignationArticles.Cells[3,i]:=floattostr(RStock.PrixVenteDetaille)
          else FSDetailMarche.TableauDesignationArticles.Cells[3,i]:=floattostr(RStock.PrixVenteGros);

          FSDetailMarche.TableauDesignationArticles.Cells[4,i]:='';
          FSDetailMarche.TableauDesignationArticles.Cells[5,i]:=IntExt;
          FSDetailMarche.TableauDesignationArticles.Cells[6,i]:=RStock.Code;
     end;
end;
end;
CloseFile(FStock);
{********************************PRODUIT***************************************}

if(i>0)then
       begin
            FSDetailMarche.TableauDesignationArticles.RowCount:=i+1;
       end
       else
       begin
            FSDetailMarche.TableauDesignationArticles.RowCount:=2;
            FSDetailMarche.TableauDesignationArticles.Rows[1].Text:='';
       end;
TrierArticleDetailMarche(6);
end;
end;

Procedure TrierArticleDetailMarche(Indice:integer);
var OK:boolean; i,R,m,j,ARow,VarA,VarB:integer;
begin
if(FSDetailMarche.AfficheDesignationArticles.Visible=true)then
begin
R:=FSDetailMarche.TableauDesignationArticles.RowCount;
FSDetailMarche.TableauDesignationArticles.Rows[R].Text:='';
OK:=true;
while(OK=true)do
begin
OK:=false;
for i:=1 to FSDetailMarche.TableauDesignationArticles.RowCount-3 do
begin
     if(FSDetailMarche.TableauDesignationArticles.Cells[Indice,i]>FSDetailMarche.TableauDesignationArticles.Cells[Indice,i+1])then
     begin
          OK:=true;
          for m:=1 to 3 do
          begin
               if m=1 then begin VarA:=R; VarB:=i;end;
               if m=2 then begin VarA:=i; VarB:=i+1;end;
               if m=3 then begin VarA:=i+1; VarB:=R;end;
               for j:=0 to FSDetailMarche.TableauDesignationArticles.ColCount-1 do
               begin
                    FSDetailMarche.TableauDesignationArticles.Cells[j,VarA]:=FSDetailMarche.TableauDesignationArticles.Cells[j,VarB];
               end;
          end;
          FSDetailMarche.TableauDesignationArticles.Rows[R].Text:='';
     end;
end;
end;
end;
end;

procedure TFSDetailMarche.TableauDesignationArticlesClick(Sender: TObject);
begin
FSDetailMarche.TableauDesignationArticles.DefaultRowHeight:=18;
FSDetailMarche.EditDesignationArticleTesteListe.Lines.Text:=FSDetailMarche.TableauDesignationArticles.Cells[FSDetailMarche.TableauDesignationArticles.Col,FSDetailMarche.TableauDesignationArticles.Row];
if(FSDetailMarche.EditDesignationArticleTesteListe.Lines.Count>0)
then FSDetailMarche.TableauDesignationArticles.RowHeights[FSDetailMarche.TableauDesignationArticles.Row]:=FSDetailMarche.EditDesignationArticleTesteListe.Lines.Count*18;
end;

procedure TFSDetailMarche.TableauDesignationArticlesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if key in[VK_RETURN]then
begin
     if(FSDetailMarche.RBMarcheReference.Checked=true)then
     begin
           FSDetailMarche.EditCodeArticle.Text:=FSDetailMarche.TableauDesignationArticles.Cells[2,FSDetailMarche.TableauDesignationArticles.Row];
           FSDetailMarche.EditDesignationArticle.Text:=FSDetailMarche.TableauDesignationArticles.Cells[3,FSDetailMarche.TableauDesignationArticles.Row];
           FSDetailMarche.EditUnitM.Text:=FSDetailMarche.TableauDesignationArticles.Cells[4,FSDetailMarche.TableauDesignationArticles.Row];
           if(FSDetailMarche.TableauDesignationArticles.Cells[6,FSDetailMarche.TableauDesignationArticles.Row]<>'0')then
           FSDetailMarche.EditPrixUnitaire.Text:=FSDetailMarche.TableauDesignationArticles.Cells[6,FSDetailMarche.TableauDesignationArticles.Row];
           if(FSDetailMarche.TableauDesignationArticles.Cells[6,FSDetailMarche.TableauDesignationArticles.Row]<>'')
           then FSDetailMarche.EditQuantite.SetFocus
           else FSDetailMarche.BitValideDetailMarche.SetFocus;
           FSDetailMarche.EditCodeProduit.Text:=FSDetailMarche.TableauDesignationArticles.Cells[8,FSDetailMarche.TableauDesignationArticles.Row];
           FSDetailMarche.EditTrie.Text:=Completezerogauche(FSDetailMarche.EditNSMarche.Text,'5')+Lastlaters(FSDetailMarche.TableauDesignationArticles.Cells[7,FSDetailMarche.TableauDesignationArticles.Row],longueur(FSDetailMarche.TableauDesignationArticles.Cells[7,FSDetailMarche.TableauDesignationArticles.Row])-5);
     end
     else
     begin
           if(FSDetailMarche.TableauDesignationArticles.Cells[5,FSDetailMarche.TableauDesignationArticles.Row]='OK')
           and(FSDetailMarche.EditCodeArticle.Text='')
           then FSDetailMarche.EditCodeArticle.Text:=FSDetailMarche.TableauDesignationArticles.Cells[0,FSDetailMarche.TableauDesignationArticles.Row];
           FSDetailMarche.EditDesignationArticle.Text:=FSDetailMarche.TableauDesignationArticles.Cells[1,FSDetailMarche.TableauDesignationArticles.Row];
           FSDetailMarche.EditUnitM.Text:=FSDetailMarche.TableauDesignationArticles.Cells[2,FSDetailMarche.TableauDesignationArticles.Row];
           if(FSDetailMarche.TableauDesignationArticles.Cells[3,FSDetailMarche.TableauDesignationArticles.Row]<>'0')then
           FSDetailMarche.EditPrixUnitaire.Text:=FSDetailMarche.TableauDesignationArticles.Cells[3,FSDetailMarche.TableauDesignationArticles.Row];
           if(FSDetailMarche.TableauDesignationArticles.Cells[3,FSDetailMarche.TableauDesignationArticles.Row]<>'')
           then FSDetailMarche.EditQuantite.SetFocus
           else FSDetailMarche.BitValideDetailMarche.SetFocus;
           if(longueur(FSDetailMarche.TableauDesignationArticles.Cells[6,FSDetailMarche.TableauDesignationArticles.Row])=10)
           then FSDetailMarche.EditCodeProduit.Text:=FSDetailMarche.TableauDesignationArticles.Cells[6,FSDetailMarche.TableauDesignationArticles.Row]
           else FSDetailMarche.EditCodeProduit.Text:='';
     end;
     FSDetailMarche.AfficheDesignationArticles.Visible:=false;
end;
end;

procedure TFSDetailMarche.TableauDesignationArticlesKeyPress(
  Sender: TObject; var Key: Char);
begin
key:=#0;
end;

procedure TFSDetailMarche.BitValideDetailMarcheClick(Sender: TObject);
var  i,ARow,CodeF:integer; OK,OKCode:boolean;
     NSMarche,NStructureMarche,NStatistiqueMarche:integer;
begin
OKCode:=true;
if(FSDetailMarche.EditCodeArticle.Text<>'')then
begin
     if(Longueur(FSDetailMarche.EditCodeArticle.Text)=8)then
     begin
          if(not(FSDetailMarche.EditCodeArticle.Text[1]in['0'..'9']))
          or(not(FSDetailMarche.EditCodeArticle.Text[2]in['0'..'9']))
          or(not(FSDetailMarche.EditCodeArticle.Text[4]in['0'..'9']))
          or(not(FSDetailMarche.EditCodeArticle.Text[5]in['0'..'9']))
          or(not(FSDetailMarche.EditCodeArticle.Text[7]in['0'..'9']))
          or(not(FSDetailMarche.EditCodeArticle.Text[8]in['0'..'9']))
          or(not(FSDetailMarche.EditCodeArticle.Text[3]in['.']))
          or(not(FSDetailMarche.EditCodeArticle.Text[6]in['.']))
          then OKCode:=false;
     end
     else OKCode:=false;
end;

if(OKCode=false)then
begin
     showmessage('Le Code est incorrect !');
     FSDetailMarche.EditCodeArticle.Text:='';
     FSDetailMarche.EditCodeArticle.SetFocus;
     Exit;
end;
ARow:=FSDetailMarche.TableauDetailMarche.Row;

i:=1;
OK:=false;
while(i<=FSDetailMarche.TableauDetailMarche.RowCount-1)and(OK=false)do
begin
     if((DTrie('S',FSDetailMarche.TableauDetailMarche.Cells[7,i])=FSDetailMarche.EditNStructureMarche.Text)
     and(DTrie('T',FSDetailMarche.TableauDetailMarche.Cells[7,i])=FSDetailMarche.EditNStatistiqueMarche.Text)
     and(((DTrie('P',FSDetailMarche.TableauDetailMarche.Cells[7,i])=DTrie('P',FSDetailMarche.EditTrie.Text)))
     and((FSDetailMarche.TableauDetailMarche.Cells[3,i]=FSDetailMarche.EditDesignationArticle.Text)and(FSDetailMarche.TableauDetailMarche.Cells[3,i]<>''))))
     then
     begin
          if((FSDetailMarche.BitValideDetailMarche.Kind=bkCancel)and(FSDetailMarche.BitValideDetailMarche.Caption='Supprimer'))
          then i:=FSDetailMarche.TableauDetailMarche.RowCount-1
          else
          if((FSDetailMarche.BitValideDetailMarche.Kind=bkAll)and(FSDetailMarche.BitValideDetailMarche.Caption='Valider'))
          then OK:=true
          else
          if((FSDetailMarche.BitValideDetailMarche.Kind=bkRetry)and(FSDetailMarche.BitValideDetailMarche.Caption='Modifier'))
          then if(i<>ARow)then OK:=true;

          if(OK=true)then
          begin
          showmessage('L''article est déja utilisé ! ');
          FSDetailMarche.EditCodeArticle.SetFocus;
          Exit;
          end;
     end;
i:=i+1;
end;

if((FSDetailMarche.BitValideDetailMarche.Kind=bkAll)
and(FSDetailMarche.BitValideDetailMarche.Caption='Valider'))
then
begin
if(FSDetailMarche.EditCodeArticle.Text<>'')
then FSDetailMarche.EditTrie.Text:=completezerogauche(FSDetailMarche.EditNSMarche.Text,'5')+
                               completezerogauche(FSDetailMarche.EditNStructureMarche.Text,'5')+
                               completezerogauche(FSDetailMarche.EditNStatistiqueMarche.Text,'5')+
                               FSDetailMarche.EditCodeArticle.Text+'.00'
else
if(FSDetailMarche.EditTrie.Text='')
then
begin
     TypeProces:='Business'; FichierConcerne:='FFamilleMarche';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChFamille:=Adresse;
     assignfile(FFamille,ChFamille);
     if FileExists(ChFamille)then
     Reset(FFamille)
     else Rewrite(FFamille);
     Seek(FFamille,0);
     CodeF:=1;
     while not eof(FFamille)do
     begin
          Read(FFamille,RFamille);
          if(Firstlaters(RFamille.CodeCompte,2)='72')then
          if(strtointeger(RFamille.CodeCompte[3]+RFamille.CodeCompte[4])>=CodeF)
          then CodeF:=strtointeger(RFamille.CodeCompte[3]+RFamille.CodeCompte[4])+1;
     end;
     CloseFile(FFamille);
     FSDetailMarche.EditCodeArticle.Text:=Completezerogauche(inttostr(CodeF),'2')+'.00.00';
     FSDetailMarche.EditTrie.Text:=completezerogauche(FSDetailMarche.EditNSMarche.Text,'5')+
                               completezerogauche(FSDetailMarche.EditNStructureMarche.Text,'5')+
                               completezerogauche(FSDetailMarche.EditNStatistiqueMarche.Text,'5')+
                               FSDetailMarche.EditCodeArticle.Text+'.00';
end;

FSDetailMarche.EditCodeProduit.Text:=NewArticle('72',Lastlaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],11),Lastlaters(FSDetailMarche.EditTrie.Text,11),FSDetailMarche.EditDesignationArticle.Text,FSDetailMarche.EditUnitM.Text,FSDetailMarche.EditPrixUnitaire.Text,FSDetailMarche.EditCodeProduit.Text);

if(FSDetailMarche.TableauDetailMarche.Cells[3,ARow]<>'')then
FSDetailMarche.TableauDetailMarche.RowCount:=FSDetailMarche.TableauDetailMarche.RowCount+1;
ARow:=FSDetailMarche.TableauDetailMarche.RowCount-1;
FSDetailMarche.TableauDetailMarche.Rows[ARow].Text:='';
FSDetailMarche.TableauDetailMarche.Cells[1,ARow]:='';
FSDetailMarche.TableauDetailMarche.Cells[2,ARow]:=FSDetailMarche.EditCodeArticle.Text;
FSDetailMarche.TableauDetailMarche.Cells[3,ARow]:=FSDetailMarche.EditDesignationArticle.Text;
FSDetailMarche.TableauDetailMarche.Cells[4,ARow]:=FSDetailMarche.EditUnitM.Text;
FSDetailMarche.TableauDetailMarche.Cells[5,ARow]:=FSDetailMarche.EditQuantite.Text;
FSDetailMarche.TableauDetailMarche.Cells[6,ARow]:=FSDetailMarche.EditPrixUnitaire.Text;
FSDetailMarche.TableauDetailMarche.Cells[7,ARow]:=FSDetailMarche.EditTrie.Text;
FSDetailMarche.TableauDetailMarche.Cells[8,ARow]:=FSDetailMarche.EditCodeProduit.Text;

end;

if((FSDetailMarche.BitValideDetailMarche.Kind=bkRetry)
and(FSDetailMarche.BitValideDetailMarche.Caption='Modifier'))
then
begin

FSDetailMarche.EditCodeProduit.Text:=NewArticle('72',Lastlaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],11),Lastlaters(FSDetailMarche.EditTrie.Text,11),FSDetailMarche.EditDesignationArticle.Text,FSDetailMarche.EditUnitM.Text,FSDetailMarche.EditPrixUnitaire.Text,FSDetailMarche.EditCodeProduit.Text);

FSDetailMarche.TableauDetailMarche.Cells[2,ARow]:=FSDetailMarche.EditCodeArticle.Text;
FSDetailMarche.TableauDetailMarche.Cells[3,ARow]:=FSDetailMarche.EditDesignationArticle.Text;
FSDetailMarche.TableauDetailMarche.Cells[4,ARow]:=FSDetailMarche.EditUnitM.Text;
FSDetailMarche.TableauDetailMarche.Cells[5,ARow]:=FSDetailMarche.EditQuantite.Text;
FSDetailMarche.TableauDetailMarche.Cells[6,ARow]:=FSDetailMarche.EditPrixUnitaire.Text;
if((FSDetailMarche.EditCodeArticle.Text<>'')
and(FSDetailMarche.EditCodeArticle.Text<>FirstLaters(LastLaters(FSDetailMarche.EditTrie.Text,11),8)))
then
FSDetailMarche.TableauDetailMarche.Cells[7,ARow]:=completezerogauche(FSDetailMarche.EditNSMarche.Text,'5')+
                                              completezerogauche(FSDetailMarche.EditNStructureMarche.Text,'5')+
                                              completezerogauche(FSDetailMarche.EditNStatistiqueMarche.Text,'5')+
                                              FSDetailMarche.EditCodeArticle.Text+'.00';
FSDetailMarche.TableauDetailMarche.Cells[8,ARow]:=FSDetailMarche.EditCodeProduit.Text;

end;

if((FSDetailMarche.BitValideDetailMarche.Kind=bkCancel)
and(FSDetailMarche.BitValideDetailMarche.Caption='Supprimer'))
then
begin
     FSDetailMarche.EditCodeArticle.Text:='';
     FSDetailMarche.EditDesignationArticle.Text:='';
     FSDetailMarche.EditUnitM.Text:='';
     FSDetailMarche.EditQuantite.Text:='';
     FSDetailMarche.EditPrixUnitaire.Text:='';
     FSDetailMarche.EditTrie.Text:='';
     FSDetailMarche.EditCodeProduit.Text:='';

     FSDetailMarche.TableauDetailMarche.Cells[2,ARow]:='';
     FSDetailMarche.TableauDetailMarche.Cells[3,ARow]:='';
     FSDetailMarche.TableauDetailMarche.Cells[4,ARow]:='';
     FSDetailMarche.TableauDetailMarche.Cells[5,ARow]:='';
     FSDetailMarche.TableauDetailMarche.Cells[6,ARow]:='';
     FSDetailMarche.TableauDetailMarche.Cells[7,ARow]:='ZZZ'+FSDetailMarche.TableauDetailMarche.Cells[7,ARow];
     FSDetailMarche.TableauDetailMarche.Cells[8,ARow]:='';
end;

FSDetailMarche.TableauDetailMarche.Row:=ARow;
FSDetailMarche.TableauDetailMarche.Col:=2;
FSDetailMarche.TableauDetailMarche.SetFocus;


NSMarche:=strtointeger(FSDetailMarche.EditNSMarche.Text);
NStructureMarche:=strtointeger(FSDetailMarche.IndiceAfficheStructure.Text)*strtointeger(FSDetailMarche.EditNStructureMarche.Text);
NStatistiqueMarche:=strtointeger(FSDetailMarche.EditNStatistiqueMarche.Text)*strtointeger(FSDetailMarche.IndiceAfficheStatistique.Text);
ProcAfficheDetailMarche(FSDetailMarche.TableauDetailMarche,TableauNotNumArticle,'Charger','','',NSMarche,NStructureMarche,NStatistiqueMarche);

FSDetailMarche.AfficheOperationDetailMarche.Visible:=false;
end;

Function NewArticle(Source,CodeArticlePrior,CodeArticle,DesignationArticle,UMArticle,PrixArticle,CodeProduit:string):string;
var OKFamille,OKSFamille,OKFamilleMatiere,OKSFamilleMatiere,OKProduit,OKMatiere:boolean;
    CFamille,CSFamille,CProduit,MatiereCFamille,MatiereCSFamille,MatiereCProduit:string[10];
    i,Code,l:integer;
begin
     NewArticle:=CodeProduit;

     CFamille:='';
     CSFamille:='';
     CProduit:='';

     MatiereCFamille:='';
     MatiereCSFamille:='';
     MatiereCProduit:='';

     if((CodeArticlePrior<>'')
     and(CodeArticlePrior<>CodeArticle))
     then
     begin
          if((UMArticle='')and(PrixArticle=''))
          then
          begin
               if(CodeArticlePrior[7]+CodeArticlePrior[8]<>'00')
               or(CodeArticlePrior[10]+CodeArticlePrior[11]<>'00')
               then
               begin
                    OKFamille:=false;
                    OKSFamille:=false;
                    OKProduit:=true;
                    CProduit:=Source+CodeArticlePrior[1]+CodeArticlePrior[2]+CodeArticlePrior[4]+CodeArticlePrior[5]+CodeArticlePrior[7]+CodeArticlePrior[8]+CodeArticlePrior[10]+CodeArticlePrior[11];
                    MatiereCProduit:='31'+CodeArticlePrior[1]+CodeArticlePrior[2]+CodeArticlePrior[4]+CodeArticlePrior[5]+CodeArticlePrior[7]+CodeArticlePrior[8]+CodeArticlePrior[10]+CodeArticlePrior[11];
               end
               else
               begin
                    if(CodeArticlePrior[4]+CodeArticlePrior[5]='00')then
                    begin
                         OKFamille:=true;
                         OKSFamille:=false;
                         OKProduit:=false;
                         CFamille:=Source+CodeArticlePrior[1]+CodeArticlePrior[2]+CodeArticlePrior[4];
                         MatiereCFamille:='31'+CodeArticlePrior[1]+CodeArticlePrior[2]+CodeArticlePrior[4];
                    end
                    else
                    begin
                         OKFamille:=false;
                         OKSFamille:=true;
                         OKProduit:=false;
                         CSFamille:=Source+CodeArticlePrior[1]+CodeArticlePrior[2]+CodeArticlePrior[4]+CodeArticlePrior[5];
                         MatiereCSFamille:='31'+CodeArticlePrior[1]+CodeArticlePrior[2]+CodeArticlePrior[4]+CodeArticlePrior[5];
                    end;
               end;
          end
          else
          begin
               OKFamille:=false;
               OKSFamille:=false;
               OKProduit:=true;
               CProduit:=Source+CodeArticlePrior[1]+CodeArticlePrior[2]+CodeArticlePrior[4]+CodeArticlePrior[5]+CodeArticlePrior[7]+CodeArticlePrior[8]+CodeArticlePrior[10]+CodeArticlePrior[11];
               MatiereCProduit:='31'+CodeArticlePrior[1]+CodeArticlePrior[2]+CodeArticlePrior[4]+CodeArticlePrior[5]+CodeArticlePrior[7]+CodeArticlePrior[8]+CodeArticlePrior[10]+CodeArticlePrior[11];
          end;
     end;

     if((CodeArticle<>'')
     and(Longueur(CodeArticle)=11))
     then
     begin
          if((UMArticle='')and(PrixArticle=''))
          then
          begin
               if(CodeArticle[7]+CodeArticle[8]<>'00')
               or(CodeArticle[10]+CodeArticle[11]<>'00')
               then
               begin
                    OKFamille:=false;
                    OKSFamille:=false;
                    OKProduit:=true;
                    CProduit:=Source+CodeArticle[1]+CodeArticle[2]+CodeArticle[4]+CodeArticle[5]+CodeArticle[7]+CodeArticle[8]+CodeArticle[10]+CodeArticle[11];
                    MatiereCProduit:='31'+CodeArticle[1]+CodeArticle[2]+CodeArticle[4]+CodeArticle[5]+CodeArticle[7]+CodeArticle[8]+CodeArticle[10]+CodeArticle[11];
               end
               else
               begin
                    if(CodeArticle[4]+CodeArticle[5]='00')then
                    begin
                         OKFamille:=true;
                         OKSFamille:=false;
                         OKProduit:=false;
                         CFamille:=Source+CodeArticle[1]+CodeArticle[2]+CodeArticle[4];
                         MatiereCFamille:='31'+CodeArticle[1]+CodeArticle[2]+CodeArticle[4];
                    end
                    else
                    begin
                         OKFamille:=false;
                         OKSFamille:=true;
                         OKProduit:=false;
                         CSFamille:=Source+CodeArticle[1]+CodeArticle[2]+CodeArticle[4]+CodeArticle[5];
                         MatiereCSFamille:='31'+CodeArticle[1]+CodeArticle[2]+CodeArticle[4]+CodeArticle[5];
                    end;
               end;
          end
          else
          begin
               OKFamille:=false;
               OKSFamille:=false;
               OKProduit:=true;
               CProduit:=Source+CodeArticle[1]+CodeArticle[2]+CodeArticle[4]+CodeArticle[5]+CodeArticle[7]+CodeArticle[8]+CodeArticle[10]+CodeArticle[11];
               MatiereCProduit:='31'+CodeArticle[1]+CodeArticle[2]+CodeArticle[4]+CodeArticle[5]+CodeArticle[7]+CodeArticle[8]+CodeArticle[10]+CodeArticle[11];
          end;
     end
     else
     begin
          CodeArticle:='01.00.00';
          OKFamille:=true;
          OKSFamille:=false;
          OKProduit:=false;
          CFamille:=Source+CodeArticle[1]+CodeArticle[2]+CodeArticle[4];
          MatiereCFamille:='31'+CodeArticle[1]+CodeArticle[2]+CodeArticle[4];
     end;

     if(OKFamille=true)then
     begin
          OKFamilleMatiere:=true;
          TypeProces:='Business'; FichierConcerne:='FFamilleMarche';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChFamille:=Adresse;
          assignfile(FFamille,ChFamille);
          if FileExists(ChFamille)then
          Reset(FFamille)
          else Rewrite(FFamille);
          Seek(FFamille,0);
          i:=0;
          while not eof(FFamille)and((OKFamille=true)or(OKFamilleMatiere=true))do
          begin
               Read(FFamille,RFamille);
               if((CFamille<>'')
               and(RFamille.CodeCompte=CFamille))then
               begin
                    OKFamille:=false;
                    {Famille Produit}
                    Seek(FFamille,i);
                    RFamille.CodeCompte:=Source+CodeArticle[1]+CodeArticle[2]+CodeArticle[4];
                    RFamille.ContrePartie.TypeUses:=UMArticle;
                    NewArticle:='';
                    RFamille.Designation:=DesignationArticle;
                    Write(FFamille,RFamille);
                    Seek(FFamille,i+1);
               end;
               if((MatiereCFamille<>'')
               and(RFamille.CodeCompte=MatiereCFamille))then
               begin
                    OKFamilleMatiere:=false;
                    {Famille Matière}
                    Seek(FFamille,i);
                    RFamille.CodeCompte:='31'+CodeArticle[1]+CodeArticle[2]+CodeArticle[4];
                    NewArticle:='';
                    RFamille.Designation:='Matières: '+DesignationArticle;
                    RFamille.ContrePartie.TypeUses:=UMArticle;
                    RFamille.Specificite:='';
                    Write(FFamille,RFamille);
                    Seek(FFamille,i+1);
               end;
               i:=i+1;
          end;

          {Famille Produit}
          if(OKFamille=true)then
          begin
          Seek(FFamille,i);
          Truncate(FFamille);
          RFamille.CodeCompte:=Source+CodeArticle[1]+CodeArticle[2]+CodeArticle[4];
          RFamille.ContrePartie.TypeUses:=UMArticle;
          NewArticle:='';
          RFamille.Designation:=DesignationArticle;
          RFamille.ContrePartie.TypeUses:=UMArticle;
          Write(FFamille,RFamille);
          end;

          {Famille Matière}
          if(OKFamilleMatiere=true)then
          begin
          i:=i+1;
          Seek(FFamille,i);
          Truncate(FFamille);
          RFamille.CodeCompte:='31'+CodeArticle[1]+CodeArticle[2]+CodeArticle[4];
          NewArticle:='';
          RFamille.Designation:='Matières: '+DesignationArticle;
          RFamille.ContrePartie.TypeUses:=UMArticle;
          Write(FFamille,RFamille);
          end;

          Closefile(FFamille);
     end
     else
     if(OKSFamille=true)then
     begin
          OKSFamilleMatiere:=true;
          TypeProces:='Business'; FichierConcerne:='FSousFamilleMarche';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChSousFamille:=Adresse;
          assignfile(FSousFamille,ChSousFamille);
          if FileExists(ChSousFamille)then
          Reset(FSousFamille)
          else Rewrite(FSousFamille);
          Seek(FSousFamille,0);
          i:=0;
          while not eof(FSousFamille)and((OKSFamille=true)or(OKSFamilleMatiere=true))do
          begin
               Read(FSousFamille,RSousFamille);
               if((CSFamille<>'')
               and(RSousFamille.CodeCompte=CSFamille))then
               begin
                    OKSFamille:=false;
                    Seek(FSousFamille,i);
                    RSousFamille.CodeCompte:=Source+CodeArticle[1]+CodeArticle[2]+CodeArticle[4]+CodeArticle[5];
                    RSousFamille.ContrePartie.TypeUses:=UMArticle;
                    NewArticle:='';
                    RSousFamille.Designation:=DesignationArticle;
                    Write(FSousFamille,RSousFamille);
                    Seek(FSousFamille,i+1);
               end;

               if((MatiereCSFamille<>'')
               and(RSousFamille.CodeCompte=MatiereCSFamille))then
               begin
                    OKSFamilleMatiere:=false;
                    Seek(FSousFamille,i);
                    RSousFamille.CodeCompte:='31'+CodeArticle[1]+CodeArticle[2]+CodeArticle[4]+CodeArticle[5];
                    NewArticle:='';
                    RSousFamille.Designation:='Matières: '+DesignationArticle;
                    RSousFamille.ContrePartie.TypeUses:=UMArticle;
                    Write(FSousFamille,RSousFamille);
                    Seek(FSousFamille,i+1);
               end;

               i:=i+1;
          end;

          {Sous Famille Produit}
          if(OKSFamille=true)then
          begin
          Seek(FSousFamille,i);
          Truncate(FSousFamille);
          RSousFamille.CodeCompte:=Source+CodeArticle[1]+CodeArticle[2]+CodeArticle[4]+CodeArticle[5];
          RSousFamille.ContrePartie.TypeUses:=UMArticle;
          NewArticle:='';
          RSousFamille.Designation:=DesignationArticle;
          Write(FSousFamille,RSousFamille);
          end;

          {Sous Famille Matière}
          if(OKSFamilleMatiere=true)then
          begin
          i:=i+1;
          Seek(FSousFamille,i);
          Truncate(FSousFamille);
          RSousFamille.CodeCompte:='31'+CodeArticle[1]+CodeArticle[2]+CodeArticle[4]+CodeArticle[5];
          NewArticle:='';
          RSousFamille.Designation:='Matières: '+DesignationArticle;
          RSousFamille.ContrePartie.TypeUses:=UMArticle;
          Write(FSousFamille,RSousFamille);
          end;

          Closefile(FSousFamille);
     end
     else
     if(OKProduit=true)then
     begin
          OKMatiere:=true;
          {Produit}////////////////////////////////////////////////////////////
          TypeProces:='Business'; FichierConcerne:='FStockMarche';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChStock:=Adresse;
          assignfile(FStock,ChStock);
          if FileExists(ChStock)then
          Reset(FStock)
          else Rewrite(FStock);
          Seek(FStock,0);
          i:=0;
          Code:=1;
          while not eof(FStock)and(OKProduit=true)do
          begin
               Read(FStock,RStock);
               if((CProduit<>'')
               and(RStock.Code=CProduit))then
               begin
                    OKProduit:=false;
                    Seek(FStock,i);
                    RStock.Code:=Source+CodeArticle[1]+CodeArticle[2]+CodeArticle[4]+CodeArticle[5]+CodeArticle[7]+CodeArticle[8]+CodeArticle[10]+CodeArticle[11];
                    NewArticle:=RStock.Code;
                    RStock.Design:=DesignationArticle;
                    RStock.UM:=UMArticle;
                    RStock.PrixVenteDetaille:=strtoreal(PrixArticle);
                    RStock.QteEntree:=0;
                    RStock.QteSortie:=0;
                    RStock.QteStock:=0;
                    RStock.QteInitial:=0;
                    RStock.QteLimite:=0;
                    RStock.CoutUnitaire:=0;
                    RStock.PrixVenteGros:=0;
                    RStock.Ref:='';
                    RStock.Observ:='';
                    RStock.Emplace:='';
                    RStock.CodeBarre:=Lastlaters(RStock.Code,8);
                    RStock.Formule:='';
                    RStock.enregistrement:='';
                    Write(FStock,RStock);
                    Seek(FStock,i+1);
               end;
               i:=i+1;
          end;

          if(OKProduit=true)then
          begin
          Seek(FStock,i);
          Truncate(FStock);
          RStock.Code:=Source+CodeArticle[1]+CodeArticle[2]+CodeArticle[4]+CodeArticle[5]+CodeArticle[7]+CodeArticle[8]+CodeArticle[10]+CodeArticle[11];
          NewArticle:=RStock.Code;
          RStock.Design:=DesignationArticle;
          RStock.UM:=UMArticle;
          RStock.PrixVenteDetaille:=strtoreal(PrixArticle);
          RStock.QteEntree:=0;
          RStock.QteSortie:=0;
          RStock.QteStock:=0;
          RStock.QteInitial:=0;
          RStock.QteLimite:=0;
          RStock.CoutUnitaire:=0;
          RStock.PrixVenteGros:=0;
          RStock.Ref:='';
          RStock.Observ:='';
          RStock.Emplace:='';
          RStock.CodeBarre:=Lastlaters(RStock.Code,8);
          RStock.Formule:='';
          RStock.enregistrement:='';
          Write(FStock,RStock);
          end;
          Closefile(FStock);
     end;

end;

Procedure ProcAfficheDetailMarche(TableauDetailMarche,TableauNotNumArticle:TStringGrid; Mode,CodeArticle,DesignationArticle:String; NSMarche,NStructureMarche,NStatistiqueMarche:integer);
var i,JT,RT,TA,RowCount:integer;   NotRow,NotCol:String;   OKNArticle:boolean;
begin
NotRow:='';
NotCol:='';
TA:=0;
i:=0;
RT:=0;
if(Mode='Importer')then TA:=ImporterDetailMarche(NSMarche,NStructureMarche,NStatistiqueMarche,CodeArticle,DesignationArticle,TDetailMarche);
if(Mode='Charger')then TA:=ChargementDetailMarche(TDetailMarche);

RowCount:=TA;
if(RowCount>0)then
for i:=1 to RowCount do
begin
     jT:=1;
     OKNArticle:=false;
     while(jT<=TableauNotNumArticle.RowCount-1)and(OKNArticle=false)do
     begin
          if(TableauNotNumArticle.Cells[7,jT]=TDetailMarche[i-1].CodeTrie)then OKNArticle:=true;
     jT:=jT+1;
     end;

     if(OKNArticle=false)then
     begin
           RT:=RT+1;
           TableauDetailMarche.Rows[RT].Text:='';
           TableauDetailMarche.DefaultRowHeight:=18;
           TableauDetailMarche.Cells[0,RT]:=inttostr(RT);
           TableauDetailMarche.Cells[1,RT]:=inttostr(TDetailMarche[i-1].NDetailMarche);
           TableauDetailMarche.Cells[2,RT]:=TDetailMarche[i-1].NArticle;
           TableauDetailMarche.Cells[3,RT]:=TDetailMarche[i-1].DesignationArticle;
           TableauDetailMarche.Cells[4,RT]:=TDetailMarche[i-1].UniteM;
           if(TDetailMarche[i-1].QuantiteGlobale<>0)
           then TableauDetailMarche.Cells[5,RT]:=Vergule(floattostr(TDetailMarche[i-1].QuantiteGlobale),'3','C','')
           else TableauDetailMarche.Cells[5,RT]:='';
           if(TDetailMarche[i-1].PrixUnitaire<>0)
           then TableauDetailMarche.Cells[6,RT]:=vergule(floattostr(TDetailMarche[i-1].PrixUnitaire),'2','C','')
           else TableauDetailMarche.Cells[6,RT]:='';
           TableauDetailMarche.Cells[7,RT]:=TDetailMarche[i-1].CodeTrie;
           TableauDetailMarche.Cells[8,RT]:=TDetailMarche[i-1].CodeStock;
     end;
end;

if(RT>0)then TableauDetailMarche.RowCount:=RT+1
       else
       begin
            TableauDetailMarche.RowCount:=2;
            TableauDetailMarche.Rows[1].Text:='';
       end;

       NotRow:='';
       NotCol:='1;7;8';
       for i:=1 to TableauDetailMarche.ColCount-1 do if existenumintexte(inttostr(i),NotCol)then TableauDetailMarche.ColWidths[i]:=0;
       AjusterColWidth(TableauDetailMarche,NotRow,NotCol);

       for i:=1 to TableauDetailMarche.ColCount-1 do
       begin
            if(TableauDetailMarche.ColWidths[i]>strtointeger(FSDetailMarche.EditMaxColWidth.Text))then TableauDetailMarche.ColWidths[i]:=strtointeger(FSDetailMarche.EditMaxColWidth.Text);
       end;
end;

procedure TFSDetailMarche.TableauDetailMarcheKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var i,ARow,NSMarche,NStructureMarche,NStatistiqueMarche,Num:integer;
begin

ARow:=FSDetailMarche.TableauDetailMarche.Row;

if(FSDetailMarche.TableauDetailMarche.Cells[7,ARow]<>'')and(Firstlaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],3)<>'ZZZ')
then
begin
     NSMarche:=strtointeger(DTrie('M',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]));
     NStructureMarche:=strtointeger(DTrie('S',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]));
     NStatistiqueMarche:=strtointeger(DTrie('T',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]));

     FSDetailMarche.EditNStructureMarche.Text:=inttostr(NStructureMarche);
     RStructureMarche:=ChercherStructureMarche(NSMarche,NStructureMarche);
     FSDetailMarche.EditStructureMarche.Text:=RStructureMarche.StructureMarche;

     FSDetailMarche.EditNStatistiqueMarche.Text:=inttostr(NStatistiqueMarche);
     RStatistiqueMarche:=ChercherStatistiqueMarche(NSMarche,NStatistiqueMarche);
     FSDetailMarche.EditStatistiqueMarche.Text:=RStatistiqueMarche.StatistiqueMarche;
end;

FSDetailMarche.EditSauvegardeDetailMarche.Text:='OK';

NStructureMarche:=strtointeger(FSDetailMarche.EditNStructureMarche.Text);

if key in[VK_RETURN]then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true) then exit;

     if((Lastlaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],11)<>'00.00.00.00')
     and(FSDetailMarche.TableauDetailMarche.Cells[5,ARow]='')
     and((FSDetailMarche.TableauDetailMarche.Cells[4,ARow]<>'')
     or(FSDetailMarche.TableauDetailMarche.Cells[6,ARow]<>'')))
     then
     begin//////////////// QUANTIT2 = 0 ////////////////////////////////
          FSDetailMarche.AfficheOperationDetailMarche.Visible:=true;
          FSDetailMarche.BitValideDetailMarche.Kind:=bkRetry;
          FSDetailMarche.BitValideDetailMarche.Caption:='Modifier';
          FSDetailMarche.EditCodeArticle.Text:=FSDetailMarche.TableauDetailMarche.Cells[2,ARow];
          FSDetailMarche.EditDesignationArticle.Text:=FSDetailMarche.TableauDetailMarche.Cells[3,ARow];
          FSDetailMarche.EditUnitM.Text:=FSDetailMarche.TableauDetailMarche.Cells[4,ARow];
          FSDetailMarche.EditQuantite.Text:=FSDetailMarche.TableauDetailMarche.Cells[5,ARow];
          FSDetailMarche.EditPrixUnitaire.Text:=FSDetailMarche.TableauDetailMarche.Cells[6,ARow];
          FSDetailMarche.EditTrie.Text:=FSDetailMarche.TableauDetailMarche.Cells[7,ARow];
          FSDetailMarche.EditCodeProduit.Text:=FSDetailMarche.TableauDetailMarche.Cells[8,ARow];
          FSDetailMarche.EditQuantite.SetFocus;
     end
     else
     begin //////////////// QUANTIT2 <> 0 ////////////////////////////////
     FSDetailMarche.AfficheOperationDetailMarche.Visible:=true;
     FSDetailMarche.BitValideDetailMarche.Kind:=bkAll;
     FSDetailMarche.BitValideDetailMarche.Caption:='Valider';
     FSDetailMarche.AfficheStructureMarche.Visible:=true;
     FSDetailMarche.EditStructuresDOptions.Text:='Chargement';
     FSDetailMarche.TableauStructureMarche.SetFocus;
     if not FunctAfficheStructureMarche(strtointeger(FSDetailMarche.EditNSMarche.Text),NStructureMarche)then
     begin
          FSDetailMarche.AfficheStructureMarche.Visible:=false;
          FSDetailMarche.EditCodeArticle.SetFocus;
     end;

     ARow:=FSDetailMarche.TableauDetailMarche.Row;

     FSDetailMarche.EditCodeArticle.Text:='';
     FSDetailMarche.EditDesignationArticle.Text:='';
     FSDetailMarche.EditUnitM.Text:='';
     FSDetailMarche.EditQuantite.Text:='';
     FSDetailMarche.EditPrixUnitaire.Text:='';
     FSDetailMarche.EditTrie.Text:='';
     FSDetailMarche.EditCodeProduit.Text:='';

     if(FSDetailMarche.TableauDetailMarche.Cells[2,ARow]<>'')
     then
     begin
          Num:=1;
          for i:=1 to FSDetailMarche.TableauDetailMarche.RowCount-1 do
          begin
               if(FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[2,i],Longueur(FSDetailMarche.TableauDetailMarche.Cells[2,i])-2)=
                  FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[2,ARow],Longueur(FSDetailMarche.TableauDetailMarche.Cells[2,ARow])-2))
                  then
                  if(strtoInteger(LastLaters(FSDetailMarche.TableauDetailMarche.Cells[2,i],2))>=Num)
                  then Num:=strtoInteger(LastLaters(FSDetailMarche.TableauDetailMarche.Cells[2,i],2))+1;
          end;
          FSDetailMarche.EditCodeArticle.Text:=FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[2,ARow],Longueur(FSDetailMarche.TableauDetailMarche.Cells[2,ARow])-2)
          +completezeroGauche(inttostr(Num),'2');
     end
     else
     if(ARow=1)then
     begin
          FSDetailMarche.EditCodeArticle.Text:='01.00.00';
     end
     else
     begin
          FSDetailMarche.EditCodeArticle.Text:='';
     end;

     if(FSDetailMarche.TableauDetailMarche.Cells[7,ARow]<>'')then
     begin
          Num:=1;
          for i:=1 to FSDetailMarche.TableauDetailMarche.RowCount-1 do
          begin
               if(FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[7,i],Longueur(FSDetailMarche.TableauDetailMarche.Cells[7,i])-2)=
                  FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],Longueur(FSDetailMarche.TableauDetailMarche.Cells[7,ARow])-2))
                  then
                  if(strtoInteger(LastLaters(FSDetailMarche.TableauDetailMarche.Cells[7,i],2))>=Num)
                  then Num:=strtoInteger(LastLaters(FSDetailMarche.TableauDetailMarche.Cells[7,i],2))+1;
          end;
          FSDetailMarche.EditTrie.Text:=FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],Longueur(FSDetailMarche.TableauDetailMarche.Cells[7,ARow])-2)
          +completezeroGauche(inttostr(Num),'2');
     end;
     end;
end;

if key in[VK_DELETE]then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true) then exit;

if(Lastlaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],11)='00.00.00.00')
then
begin
     key:=VK_RETURN;
     Exit;
end;
     FSDetailMarche.AfficheOperationDetailMarche.Visible:=true;
     FSDetailMarche.BitValideDetailMarche.Kind:=bkCancel;
     FSDetailMarche.BitValideDetailMarche.Caption:='Supprimer';
     FSDetailMarche.AfficheStructureMarche.Visible:=false;

     FSDetailMarche.EditCodeArticle.Text:=FSDetailMarche.TableauDetailMarche.Cells[2,ARow];
     FSDetailMarche.EditDesignationArticle.Text:=FSDetailMarche.TableauDetailMarche.Cells[3,ARow];
     FSDetailMarche.EditUnitM.Text:=FSDetailMarche.TableauDetailMarche.Cells[4,ARow];
     FSDetailMarche.EditQuantite.Text:=FSDetailMarche.TableauDetailMarche.Cells[5,ARow];
     FSDetailMarche.EditPrixUnitaire.Text:=FSDetailMarche.TableauDetailMarche.Cells[6,ARow];
     FSDetailMarche.EditTrie.Text:=FSDetailMarche.TableauDetailMarche.Cells[7,ARow];
     FSDetailMarche.EditCodeProduit.Text:=FSDetailMarche.TableauDetailMarche.Cells[8,ARow];

     FSDetailMarche.BitValideDetailMarche.SetFocus;
     key:=VK_RETURN;
end;
end;

procedure TFSDetailMarche.TableauDetailMarcheKeyPress(Sender: TObject;
  var Key: Char);
var R,ARow,NSMarche,NStructureMarche,NAvenant:integer;
begin

ARow:=FSDetailMarche.TableauDetailMarche.Row;

if(Firstlaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],3)='ZZZ')
or(Lastlaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],11)='00.00.00.00')
then
begin
     key:=#0;
     Exit;
end;

FSDetailMarche.EditSauvegardeDetailMarche.Text:='OK';

NSMarche:=strtointeger(DTrie('M',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]));
NStructureMarche:=strtointeger(DTrie('S',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]));

if key in['m','M']then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true) then begin key:=#0; exit; end;

     FSDetailMarche.AfficheOperationDetailMarche.Visible:=true;
     FSDetailMarche.BitValideDetailMarche.Kind:=bkRetry;
     FSDetailMarche.BitValideDetailMarche.Caption:='Modifier';
     FSDetailMarche.AfficheStructureMarche.Visible:=true;
     FSDetailMarche.EditStructuresDOptions.Text:='Chargement';
     FSDetailMarche.TableauStructureMarche.SetFocus;
     if not FunctAfficheStructureMarche(strtointeger(FSDetailMarche.EditNSMarche.Text),NStructureMarche)then
     begin
          FSDetailMarche.AfficheStructureMarche.Visible:=false;
          FSDetailMarche.EditCodeArticle.SetFocus;
          FSDetailMarche.EditCodeArticle.SelectAll;
     end;

     FSDetailMarche.EditCodeArticle.Text:=FSDetailMarche.TableauDetailMarche.Cells[2,ARow];
     FSDetailMarche.EditDesignationArticle.Text:=FSDetailMarche.TableauDetailMarche.Cells[3,ARow];
     FSDetailMarche.EditUnitM.Text:=FSDetailMarche.TableauDetailMarche.Cells[4,ARow];
     FSDetailMarche.EditQuantite.Text:=FSDetailMarche.TableauDetailMarche.Cells[5,ARow];
     FSDetailMarche.EditPrixUnitaire.Text:=FSDetailMarche.TableauDetailMarche.Cells[6,ARow];
     FSDetailMarche.EditTrie.Text:=FSDetailMarche.TableauDetailMarche.Cells[7,ARow];
     FSDetailMarche.EditCodeProduit.Text:=FSDetailMarche.TableauDetailMarche.Cells[8,ARow];
end;

if key in['s','S']then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true) then begin key:=#0; exit; end;

     FSDetailMarche.AfficheOperationDetailMarche.Visible:=true;
     FSDetailMarche.BitValideDetailMarche.Kind:=bkCancel;
     FSDetailMarche.BitValideDetailMarche.Caption:='Supprimer';
     FSDetailMarche.AfficheStructureMarche.Visible:=false;

     FSDetailMarche.EditCodeArticle.Text:=FSDetailMarche.TableauDetailMarche.Cells[2,ARow];
     FSDetailMarche.EditDesignationArticle.Text:=FSDetailMarche.TableauDetailMarche.Cells[3,ARow];
     FSDetailMarche.EditUnitM.Text:=FSDetailMarche.TableauDetailMarche.Cells[4,ARow];
     FSDetailMarche.EditQuantite.Text:=FSDetailMarche.TableauDetailMarche.Cells[5,ARow];
     FSDetailMarche.EditPrixUnitaire.Text:=FSDetailMarche.TableauDetailMarche.Cells[6,ARow];
     FSDetailMarche.EditTrie.Text:=FSDetailMarche.TableauDetailMarche.Cells[7,ARow];
     FSDetailMarche.EditCodeProduit.Text:=FSDetailMarche.TableauDetailMarche.Cells[8,ARow];

     FSDetailMarche.BitValideDetailMarche.SetFocus;
end;

if key in['f','F']then
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true) then begin key:=#0; exit; end;

FSDetailMarche.AfficheOptionFormule.Visible:=true;

RMarche:=ChercherMarche(strtointeger(FSDetailMarche.EditNSMarche.Text));

if(RMarche.TypeFormulation='')
then
begin
     FSDetailMarche.RBFormuleGlobale.Enabled:=true;
     FSDetailMarche.RBFormuleDistincte.Enabled:=true;
     FSDetailMarche.RBFormuleParStructure.Enabled:=true;
     FSDetailMarche.RBFormuleParStatistique.Enabled:=true;
     FSDetailMarche.RBFormuleGlobale.Checked:=true;
     FSDetailMarche.RBFormuleGlobale.SetFocus;
end
else
begin
FSDetailMarche.RBFormuleGlobale.Enabled:=false;
FSDetailMarche.RBFormuleDistincte.Enabled:=false;
FSDetailMarche.RBFormuleParStructure.Enabled:=false;
FSDetailMarche.RBFormuleParStatistique.Enabled:=false;

     if(Firstlaters(RMarche.TypeFormulation,1)='G')then
     begin
          FSDetailMarche.RBFormuleGlobale.Enabled:=true;
          FSDetailMarche.RBFormuleGlobale.Checked:=true;
     end
     else
     if(Firstlaters(RMarche.TypeFormulation,1)='D')then
     begin
          FSDetailMarche.RBFormuleDistincte.Enabled:=true;
          FSDetailMarche.RBFormuleDistincte.Checked:=true;
     end;

     if(Lastlaters(RMarche.TypeFormulation,1)='')then
     begin
          FSDetailMarche.RBFormuleParStructure.Checked:=false;
          FSDetailMarche.RBFormuleParStatistique.Checked:=false
     end
     else
     if(Lastlaters(RMarche.TypeFormulation,1)='S')then
     begin
          FSDetailMarche.RBFormuleParStructure.Enabled:=true;
          FSDetailMarche.RBFormuleParStructure.Checked:=true;
     end
     else
     if(Lastlaters(RMarche.TypeFormulation,1)='T')then
     begin
          FSDetailMarche.RBFormuleParStatistique.Enabled:=true;
          FSDetailMarche.RBFormuleParStatistique.Checked:=true;
     end;

FSDetailMarche.BitValiderFormule.SetFocus;
end;

end;

if(key in['c','C'])then
begin
     for R:=1 to FSDetailMarche.TableauDetailMarche.RowCount-1 do
     begin
           showmessage(NewArticle('72',Lastlaters(FSDetailMarche.TableauDetailMarche.Cells[7,R],11),Lastlaters(FSDetailMarche.TableauDetailMarche.Cells[7,R],11),FSDetailMarche.TableauDetailMarche.Cells[3,R],FSDetailMarche.TableauDetailMarche.Cells[4,R],FSDetailMarche.TableauDetailMarche.Cells[6,R],FSDetailMarche.TableauDetailMarche.Cells[8,R]));
     end;
end;


key:=#0;
end;

Procedure InitialeAfficheDetailMarche;
begin
FSDetailMarche.TableauDevisRestantCumule.Visible:=false;
FSDetailMarche.TableauSelection.Visible:=false;
FSDetailMarche.AfficheChoixLots.Visible:=false;
FSDetailMarche.AfficheRecapitulationParStructure.Visible:=false;
//FSDetailMarche.AfficheOptionsDevisQE.Visible:=false;
//FSDetailMarche.TableauDevisQE.Visible:=false;
FSDetailMarche.AfficheDetailleParClasse.Visible:=false;
FSDetailMarche.OptionDetailleParClasse.Visible:=false;
FSDetailMarche.AfficheStructureMarche.Visible:=false;
FSDetailMarche.AfficheOperationDetailMarche.Visible:=false;
//FSDetailMarche.AfficheSaisieNewAvenant.Visible:=false;
//FSDetailMarche.AfficheAvenant.Visible:=false;
FSDetailMarche.AfficheDesignationArticles.Visible:=false;
FSDetailMarche.AfficheSauvegarderDetailMarche.Visible:=false;
FSDetailMarche.MemoDetailMarche.Visible:=false;
//FSDetailMarche.AffichePCNDetailMarche.Visible:=false;
FSDetailMarche.AfficheOptionFormule.Visible:=false;
FSDetailMarche.AfficheOperationsDM.Height:=35;
FSDetailMarche.AfficheOptionPrintDetailMarche.Height:=25;
FSDetailMarche.AfficheOptionsDevisQE.Visible:=false;
end;

Function FunctAfficheStructureMarche(NSMarche,NStructureMarche:integer):boolean;
var i,ARow:integer;
begin
FSDetailMarche.TableauStructureMarche.Cols[1].Text:='';
FSDetailMarche.TableauStructureMarche.Cols[2].Text:='';
FSDetailMarche.TableauStructureMarche.Cols[3].Text:='Structures du Marché';
FSDetailMarche.TableauStructureMarche.RowCount:=2;
FSDetailMarche.TableauStructureMarche.Rows[1].Text:='';

          TypeProces:='Business'; FichierConcerne:='FStructureMarche';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChStructureMarche:=Adresse;
          assignfile(FStructureMarche,ChStructureMarche);
          if FileExists(ChStructureMarche)then
          Reset(FStructureMarche)
          else Rewrite(FStructureMarche);
          Seek(FStructureMarche,0);
          i:=0;
          ARow:=0;
          FunctAfficheStructureMarche:=false;
          while not eof(FStructureMarche) do
          begin
               Read(FStructureMarche,RStructureMarche);
               if(RStructureMarche.NSMarche=NSMarche)then
               begin
                    i:=i+1;
                    FSDetailMarche.TableauStructureMarche.Rows[i].Text:=inttostr(i);
                    FSDetailMarche.TableauStructureMarche.Cells[1,i]:=inttostr(RStructureMarche.NSMarche);
                    FSDetailMarche.TableauStructureMarche.Cells[2,i]:=inttostr(RStructureMarche.NStructureMarche);
                    FSDetailMarche.TableauStructureMarche.Cells[3,i]:=RStructureMarche.StructureMarche;

               if((NStructureMarche<>0)
               and(RStructureMarche.NStructureMarche=NStructureMarche))then ARow:=i;
               end;
          end;
          if(i>0)then
                 begin
                     FSDetailMarche.TableauStructureMarche.RowCount:=i+1;
                     FunctAfficheStructureMarche:=true;
                     if ARow>0 then FSDetailMarche.TableauStructureMarche.Row:=ARow;
                 end
                 else FSDetailMarche.TableauStructureMarche.RowCount:=2;
end;

procedure TFSDetailMarche.BitNonSauvegardeDetailMarcheClick(
  Sender: TObject);
var NSMarche,NAvenant,NStructureMarche,NStatistiqueMarche:integer;
begin

if(FSDetailMarche.EditOptionSauvegarde.Text<>'Quitter')then
begin
     NSMarche:=strtointeger(FSDetailMarche.EditNSMarche.Text);
     NStructureMarche:=strtointeger(FSDetailMarche.IndiceAfficheStructure.Text)*strtointeger(FSDetailMarche.EditNStructureMarche.Text);
     NStatistiqueMarche:=strtointeger(FSDetailMarche.EditNStatistiqueMarche.Text)*strtointeger(FSDetailMarche.IndiceAfficheStatistique.Text);
     ProcAfficheDetailMarche(FSDetailMarche.TableauDetailMarche,TableauNotNumArticle,'Importer','','',NSMarche,NStructureMarche,NStatistiqueMarche);
end;

FSDetailMarche.EditSauvegardeDetailMarche.Text:='';
FSDetailMarche.AfficheSauvegarderDetailMarche.Visible:=false;
end;

procedure TFSDetailMarche.TableauStructureMarcheKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var i,ARow,Num,NSMarche,NStructureMarche,NStatistiqueMarche,NAvenant:integer; OK:boolean;
begin

if key in[VK_RETURN]then
begin
     if FunctAfficheStatistiqueMarche(strtointeger(FSDetailMarche.EditNSMarche.Text),strtointeger(FSDetailMarche.TableauStructureMarche.Cells[2,FSDetailMarche.TableauStructureMarche.Row]),strtointeger(FSDetailMarche.EditNStatistiqueMarche.Text))then
     begin
          FSDetailMarche.AfficheStatistiqueMarche.Visible:=true;
          FSDetailMarche.TableauStatistiqueMarche.SetFocus;
          FSDetailMarche.EditStatistiquesDOptions.Text:=FSDetailMarche.EditStructuresDOptions.Text;

     end
     else
     begin
     FSDetailMarche.AfficheStatistiqueMarche.Visible:=false;
     if(FSDetailMarche.EditStructuresDOptions.Text='Chargement')then
     begin
          if((FSDetailMarche.EditNStructureMarche.Text<>'')
          and(FSDetailMarche.TableauStructureMarche.Cells[2,FSDetailMarche.TableauStructureMarche.Row]<>FSDetailMarche.EditNStructureMarche.Text))
          then
          begin
          ARow:=1;
          i:=FSDetailMarche.TableauDetailMarche.ColCount-1;
          OK:=false;
          while(i>=1)and(OK=false)do
          begin
               if(DTrie('S',FSDetailMarche.TableauDetailMarche.Cells[7,i])=FSDetailMarche.TableauStructureMarche.Cells[2,FSDetailMarche.TableauStructureMarche.Row])then
               begin
                    OK:=true;
                    ARow:=i;
               end;
          i:=i-1;
          end;

          if(FSDetailMarche.TableauDetailMarche.Cells[2,ARow]<>'')
          then
          begin
               Num:=1;
               for i:=1 to FSDetailMarche.TableauDetailMarche.RowCount-1 do
               begin
                    if(FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[2,i],Longueur(FSDetailMarche.TableauDetailMarche.Cells[2,i])-2)=
                       FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[2,ARow],Longueur(FSDetailMarche.TableauDetailMarche.Cells[2,ARow])-2))
                       then
                       if(strtoInteger(LastLaters(FSDetailMarche.TableauDetailMarche.Cells[2,i],2))>=Num)
                       then Num:=strtoInteger(LastLaters(FSDetailMarche.TableauDetailMarche.Cells[2,i],2))+1;
               end;
               FSDetailMarche.EditCodeArticle.Text:=FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[2,ARow],Longueur(FSDetailMarche.TableauDetailMarche.Cells[2,ARow])-2)
               +completezeroGauche(inttostr(Num),'2');
          end
          else
          if(ARow=1)then
          begin
               FSDetailMarche.EditCodeArticle.Text:='01.00.00';
          end
          else
          begin
               FSDetailMarche.EditCodeArticle.Text:='';
          end;

          if(FSDetailMarche.TableauDetailMarche.Cells[7,ARow]<>'')then
          begin
               Num:=1;
               for i:=1 to FSDetailMarche.TableauDetailMarche.RowCount-1 do
               begin
                    if(FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[7,i],Longueur(FSDetailMarche.TableauDetailMarche.Cells[7,i])-2)=
                       FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],Longueur(FSDetailMarche.TableauDetailMarche.Cells[7,ARow])-2))
                       then
                       if(strtoInteger(LastLaters(FSDetailMarche.TableauDetailMarche.Cells[7,i],2))>=Num)
                       then Num:=strtoInteger(LastLaters(FSDetailMarche.TableauDetailMarche.Cells[7,i],2))+1;
               end;
               FSDetailMarche.EditTrie.Text:=FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],Longueur(FSDetailMarche.TableauDetailMarche.Cells[7,ARow])-2)
               +completezeroGauche(inttostr(Num),'2');
          end;

          end;

     FSDetailMarche.EditNStructureMarche.Text:=FSDetailMarche.TableauStructureMarche.Cells[2,FSDetailMarche.TableauStructureMarche.Row];
     FSDetailMarche.EditStructureMarche.Text:=FSDetailMarche.TableauStructureMarche.Cells[3,FSDetailMarche.TableauStructureMarche.Row];
     FSDetailMarche.EditNStatistiqueMarche.Text:='';
     FSDetailMarche.EditStatistiqueMarche.Text:='';
     FSDetailMarche.EditCodeArticle.SetFocus;
     FSDetailMarche.EditCodeArticle.SelectAll;
     FSDetailMarche.AfficheStructureMarche.Visible:=false;
     end
     else
     if(FSDetailMarche.EditStructuresDOptions.Text='Affichage')then
     begin
          FSDetailMarche.EditNStructureMarche.Text:=FSDetailMarche.TableauStructureMarche.Cells[2,FSDetailMarche.TableauStructureMarche.Row];
          FSDetailMarche.EditStructureMarche.Text:=FSDetailMarche.TableauStructureMarche.Cells[3,FSDetailMarche.TableauStructureMarche.Row];
          NSMarche:=strtointeger(FSDetailMarche.EditNSMarche.Text);
          NStructureMarche:=strtointeger(FSDetailMarche.TableauStructureMarche.Cells[2,FSDetailMarche.TableauStructureMarche.Row])*strtointeger(FSDetailMarche.IndiceAfficheStructure.Text);
          NStatistiqueMarche:=0;
          ProcAfficheDetailMarche(FSDetailMarche.TableauDetailMarche,TableauNotNumArticle,'Importer','','',NSMarche,NStructureMarche,NStatistiqueMarche);
          FSDetailMarche.TableauDetailMarche.SetFocus;
          FSDetailMarche.AfficheStructureMarche.Visible:=false;
          FSDetailMarche.AfficheOperationDetailMarche.Visible:=false;
     end;
     end;

end;
end;

Function FunctAfficheStatistiqueMarche(NSMarche,NSructureMarche,NStatistiqueMarche:integer):boolean;
var i,ARow:integer;
begin
FSDetailMarche.TableauStatistiqueMarche.Cols[1].Text:='';
FSDetailMarche.TableauStatistiqueMarche.Cols[2].Text:='';
FSDetailMarche.TableauStatistiqueMarche.Cols[3].Text:='     Statistiques du Marché';
FSDetailMarche.TableauStatistiqueMarche.RowCount:=2;
FSDetailMarche.TableauStatistiqueMarche.Rows[1].Text:='';

FSDetailMarche.TableauStatistiqueMarche.Cells[1,1]:=FSDetailMarche.EditNSMarche.Text;
FSDetailMarche.TableauStatistiqueMarche.Cells[2,1]:='';
FSDetailMarche.TableauStatistiqueMarche.Cells[3,1]:=FSDetailMarche.TableauStructureMarche.Cells[3,FSDetailMarche.TableauStructureMarche.Row];

          TypeProces:='Business'; FichierConcerne:='FStatistiqueMarche';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChStatistiqueMarche:=Adresse;
          assignfile(FStatistiqueMarche,ChStatistiqueMarche);
          if FileExists(ChStatistiqueMarche)then
          Reset(FStatistiqueMarche)
          else Rewrite(FStatistiqueMarche);
          Seek(FStatistiqueMarche,0);
          i:=1;
          ARow:=0;
          FunctAfficheStatistiqueMarche:=false;
          while not eof(FStatistiqueMarche) do
          begin
               Read(FStatistiqueMarche,RStatistiqueMarche);
               if(RStatistiqueMarche.NSMarche=NSMarche)
               and(RStatistiqueMarche.NStructureMarche=inttostr(NSructureMarche))
               then
               begin
                    i:=i+1;
                    FSDetailMarche.TableauStatistiqueMarche.Rows[i].Text:=inttostr(i);
                    FSDetailMarche.TableauStatistiqueMarche.Cells[1,i]:=inttostr(RStatistiqueMarche.NSMarche);
                    FSDetailMarche.TableauStatistiqueMarche.Cells[2,i]:=inttostr(RStatistiqueMarche.NStatistiqueMarche);
                    FSDetailMarche.TableauStatistiqueMarche.Cells[3,i]:=RStatistiqueMarche.StatistiqueMarche;

               if((NStatistiqueMarche<>0)
               and(RStatistiqueMarche.NStatistiqueMarche=NStatistiqueMarche))then ARow:=i;
               end;
          end;
          if(i>1)then
                 begin
                     FSDetailMarche.TableauStatistiqueMarche.RowCount:=i+1;
                     FunctAfficheStatistiqueMarche:=true;
                     if ARow>0 then FSDetailMarche.TableauStatistiqueMarche.Row:=ARow;
                 end
                 else
                 begin
                      FSDetailMarche.TableauStatistiqueMarche.RowCount:=2;
                      FSDetailMarche.TableauStatistiqueMarche.Rows[1].Text:='';
                 end;
end;

procedure TFSDetailMarche.BitBtn77Click(Sender: TObject);
begin
FSDetailMarche.AfficheStatistiqueMarche.Visible:=false;
end;

procedure TFSDetailMarche.TableauStatistiqueMarcheKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var i,ARow,Num,NSMarche,NStructureMarche,NStatistiqueMarche,NAvenant:integer; OK:boolean;
begin

if key in[VK_RETURN]then
begin
     if(FSDetailMarche.EditStatistiquesDOptions.Text='Chargement')then
     begin
          if(((FSDetailMarche.EditNStructureMarche.Text+FSDetailMarche.EditNStatistiqueMarche.Text)<>'')
          and((FSDetailMarche.TableauStructureMarche.Cells[2,FSDetailMarche.TableauStructureMarche.Row]+FSDetailMarche.TableauStatistiqueMarche.Cells[2,FSDetailMarche.TableauStatistiqueMarche.Row])<>(FSDetailMarche.EditNStructureMarche.Text+FSDetailMarche.EditNStatistiqueMarche.Text)))
          then
          begin
          ARow:=1;
          i:=FSDetailMarche.TableauDetailMarche.RowCount-1;
          OK:=false;
          while(i>=1)and(OK=false)do
          begin
               if((DTrie('S',FSDetailMarche.TableauDetailMarche.Cells[7,i])+DTrie('T',FSDetailMarche.TableauDetailMarche.Cells[7,i]))=
                   (FSDetailMarche.TableauStructureMarche.Cells[2,FSDetailMarche.TableauStructureMarche.Row]+
                    FSDetailMarche.TableauStatistiqueMarche.Cells[2,FSDetailMarche.TableauStatistiqueMarche.Row]))then
               begin
                    OK:=true;
                    ARow:=i;
               end;
          i:=i-1;
          end;

          if(FSDetailMarche.TableauDetailMarche.Cells[2,ARow]<>'')
          then
          begin
               Num:=1;
               for i:=1 to FSDetailMarche.TableauDetailMarche.RowCount-1 do
               begin
                    if(FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[2,i],Longueur(FSDetailMarche.TableauDetailMarche.Cells[2,i])-2)=
                       FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[2,ARow],Longueur(FSDetailMarche.TableauDetailMarche.Cells[2,ARow])-2))
                       then
                       if(strtoInteger(LastLaters(FSDetailMarche.TableauDetailMarche.Cells[2,i],2))>=Num)
                       then Num:=strtoInteger(LastLaters(FSDetailMarche.TableauDetailMarche.Cells[2,i],2))+1;
               end;
               FSDetailMarche.EditCodeArticle.Text:=FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[2,ARow],Longueur(FSDetailMarche.TableauDetailMarche.Cells[2,ARow])-2)
               +completezeroGauche(inttostr(Num),'2');
          end
          else
          if(ARow=1)then
          begin
               FSDetailMarche.EditCodeArticle.Text:='01.00.00';
          end
          else
          begin
               FSDetailMarche.EditCodeArticle.Text:='';
          end;

          if(FSDetailMarche.TableauDetailMarche.Cells[7,ARow]<>'')then
          begin
               Num:=1;
               for i:=1 to FSDetailMarche.TableauDetailMarche.RowCount-1 do
               begin
                    if(FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[7,i],Longueur(FSDetailMarche.TableauDetailMarche.Cells[7,i])-2)=
                       FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],Longueur(FSDetailMarche.TableauDetailMarche.Cells[7,ARow])-2))
                       then
                       if(strtoInteger(LastLaters(FSDetailMarche.TableauDetailMarche.Cells[7,i],2))>=Num)
                       then Num:=strtoInteger(LastLaters(FSDetailMarche.TableauDetailMarche.Cells[7,i],2))+1;
               end;
               FSDetailMarche.EditTrie.Text:=FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],Longueur(FSDetailMarche.TableauDetailMarche.Cells[7,ARow])-2)
               +completezeroGauche(inttostr(Num),'2');
          end;

          end;

     FSDetailMarche.EditNStructureMarche.Text:=FSDetailMarche.TableauStructureMarche.Cells[2,FSDetailMarche.TableauStructureMarche.Row];
     FSDetailMarche.EditStructureMarche.Text:=FSDetailMarche.TableauStructureMarche.Cells[3,FSDetailMarche.TableauStructureMarche.Row];
     FSDetailMarche.EditNStatistiqueMarche.Text:=FSDetailMarche.TableauStatistiqueMarche.Cells[2,FSDetailMarche.TableauStatistiqueMarche.Row];
     if(FSDetailMarche.EditNStatistiqueMarche.Text<>'')
     then
     begin
          FSDetailMarche.IndiceAfficheStatistique.Text:='1';
          FSDetailMarche.EditStatistiqueMarche.Text:=FSDetailMarche.TableauStatistiqueMarche.Cells[3,FSDetailMarche.TableauStatistiqueMarche.Row];
     end
     else
     begin
          FSDetailMarche.IndiceAfficheStatistique.Text:='0';
          FSDetailMarche.EditStatistiqueMarche.Text:='';
     end;
     FSDetailMarche.EditCodeArticle.SetFocus;
     FSDetailMarche.EditCodeArticle.SelectAll;
     FSDetailMarche.AfficheStatistiqueMarche.Visible:=false;
     FSDetailMarche.AfficheStructureMarche.Visible:=false;
     end
     else
     if(FSDetailMarche.EditStructuresDOptions.Text='Affichage')then
     begin
          FSDetailMarche.EditNStructureMarche.Text:=FSDetailMarche.TableauStructureMarche.Cells[2,FSDetailMarche.TableauStructureMarche.Row];
          FSDetailMarche.EditStructureMarche.Text:=FSDetailMarche.TableauStructureMarche.Cells[3,FSDetailMarche.TableauStructureMarche.Row];
          FSDetailMarche.EditNStatistiqueMarche.Text:=FSDetailMarche.TableauStatistiqueMarche.Cells[2,FSDetailMarche.TableauStatistiqueMarche.Row];
          if(FSDetailMarche.EditNStatistiqueMarche.Text<>'')
          then
          begin
               FSDetailMarche.IndiceAfficheStatistique.Text:='1';
               FSDetailMarche.EditStatistiqueMarche.Text:=FSDetailMarche.TableauStatistiqueMarche.Cells[3,FSDetailMarche.TableauStatistiqueMarche.Row];
          end
          else
          begin
               FSDetailMarche.IndiceAfficheStatistique.Text:='0';
               FSDetailMarche.EditStatistiqueMarche.Text:='';
          end;
          NSMarche:=strtointeger(FSDetailMarche.EditNSMarche.Text);
          NStructureMarche:=strtointeger(FSDetailMarche.TableauStructureMarche.Cells[2,FSDetailMarche.TableauStructureMarche.Row])*strtointeger(FSDetailMarche.IndiceAfficheStructure.Text);
          NStatistiqueMarche:=strtointeger(FSDetailMarche.TableauStatistiqueMarche.Cells[2,FSDetailMarche.TableauStatistiqueMarche.Row])*strtointeger(FSDetailMarche.IndiceAfficheStatistique.Text);
          ProcAfficheDetailMarche(FSDetailMarche.TableauDetailMarche,TableauNotNumArticle,'Importer','','',NSMarche,NStructureMarche,NStatistiqueMarche);
          FSDetailMarche.TableauDetailMarche.SetFocus;
          FSDetailMarche.AfficheStatistiqueMarche.Visible:=false;
          FSDetailMarche.AfficheStructureMarche.Visible:=false;
          FSDetailMarche.AfficheOperationDetailMarche.Visible:=false;
     end;

end;
end;

procedure TFSDetailMarche.BitBtn36Click(Sender: TObject);
begin
FSDetailMarche.TableauDetailMarche.SetFocus;
FSDetailMarche.AfficheStructureMarche.Visible:=false;
FSDetailMarche.AfficheOperationDetailMarche.Visible:=false;
end;

procedure TFSDetailMarche.BitBtn20Click(Sender: TObject);
begin
FSDetailMarche.AfficheDesignationArticles.Visible:=false;
end;

procedure TFSDetailMarche.EditUnitMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key in[VK_RETURN]then
begin
     FSDetailMarche.EditQuantite.SetFocus;
     FSDetailMarche.EditQuantite.SelectAll;
end;
end;

procedure TFSDetailMarche.EditQuantiteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key in[VK_RETURN]then
begin
     FSDetailMarche.EditPrixUnitaire.SetFocus;
     FSDetailMarche.EditPrixUnitaire.SelectAll;
end;
end;

procedure TFSDetailMarche.EditQuantiteKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key in['0'..'9','.',','])then key:=#0;
if key='.' then key:=',';
end;

procedure TFSDetailMarche.EditPrixUnitaireKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key in[VK_RETURN]then
begin
     FSDetailMarche.BitValideDetailMarche.SetFocus;
end;
end;

procedure TFSDetailMarche.EditPrixUnitaireKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key in['0'..'9','.',','])then key:=#0;
if key='.' then key:=',';
end;

procedure TFSDetailMarche.BitBtn21Click(Sender: TObject);
var  NSMarche,NAvenant,NStructureMarche,NStatistiqueMarche:integer;
begin
InitialeAfficheDetailMarche;

if(FSDetailMarche.EditSauvegardeDetailMarche.Text='OK')then
begin
     FSDetailMarche.AfficheSauvegarderDetailMarche.Visible:=true;
     FSDetailMarche.BitOuiSauvegardeDetailMarche.SetFocus;
     FSDetailMarche.EditOptionSauvegarde.Text:='';
     Exit;
end;

FSDetailMarche.EditTypeDecision.Text:='Marche';
FSDetailMarche.IndiceAfficheStructure.Text:='0';
FSDetailMarche.IndiceAfficheStatistique.Text:='0';
FSDetailMarche.EditNStructureMarche.Text:='';
FSDetailMarche.EditStructureMarche.Text:='';
FSDetailMarche.EditNStatistiqueMarche.Text:='';
FSDetailMarche.EditStatistiqueMarche.Text:='';
NSMarche:=strtointeger(FSDetailMarche.EditNSMarche.Text);
NStructureMarche:=strtointeger(FSDetailMarche.IndiceAfficheStructure.Text)*strtointeger(FSDetailMarche.EditNStructureMarche.Text);
NStatistiqueMarche:=strtointeger(FSDetailMarche.EditNStatistiqueMarche.Text)*strtointeger(FSDetailMarche.IndiceAfficheStatistique.Text);
ProcAfficheDetailMarche(FSDetailMarche.TableauDetailMarche,TableauNotNumArticle,'Importer','','',NSMarche,NStructureMarche,NStatistiqueMarche);
FSDetailMarche.TableauDetailMarche.SetFocus;
end;

procedure TFSDetailMarche.BitBtn22Click(Sender: TObject);
var  NSMarche,NAvenant,NStructureMarche:integer;
begin
InitialeAfficheDetailMarche;

if(FSDetailMarche.EditSauvegardeDetailMarche.Text='OK')then
begin
     FSDetailMarche.AfficheSauvegarderDetailMarche.Visible:=true;
     FSDetailMarche.BitOuiSauvegardeDetailMarche.SetFocus;
     FSDetailMarche.EditOptionSauvegarde.Text:='';
     Exit;
end;

if FunctAfficheStructureMarche(strtointeger(FSDetailMarche.EditNSMarche.Text),strtointeger(FSDetailMarche.EditNStructureMarche.Text))then
begin
FSDetailMarche.IndiceAfficheStructure.Text:='1';
FSDetailMarche.IndiceAfficheStatistique.Text:='0';
FSDetailMarche.AfficheOperationDetailMarche.Visible:=true;
FSDetailMarche.AfficheStructureMarche.Visible:=true;
FSDetailMarche.EditStructuresDOptions.Text:='Affichage';
FSDetailMarche.TableauStructureMarche.SetFocus;
end;
end;

procedure TFSDetailMarche.BitBtn18Click(Sender: TObject);
begin
InitialeAfficheDetailMarche;

if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

FSDetailMarche.AfficheSauvegarderDetailMarche.Visible:=true;
FSDetailMarche.BitOuiSauvegardeDetailMarche.SetFocus;
end;

procedure TFSDetailMarche.BitBtn16Click(Sender: TObject);
begin
InitialeAfficheDetailMarche;

if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

FSDetailMarche.AfficheSauvegarderDetailMarche.Visible:=true;
BitNonSauvegardeDetailMarche.SetFocus;
end;

procedure TFSDetailMarche.BitOuiSauvegardeDetailMarcheClick(
  Sender: TObject);
var i,ARow,NSMarche,NAvenant,NDetailMarche,NStructureMarche,NStatistiqueMarche:integer;  OK,Confirme:boolean;
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

NSMarche:=strtointeger(FSDetailMarche.EditNSMarche.Text);
NStructureMarche:=strtointeger(FSDetailMarche.IndiceAfficheStructure.Text)*strtointeger(FSDetailMarche.EditNStructureMarche.Text);
NStatistiqueMarche:=strtointeger(FSDetailMarche.EditNStatistiqueMarche.Text)*strtointeger(FSDetailMarche.IndiceAfficheStatistique.Text);


if(FSDetailMarche.BRefaireMarche.Checked=true)then
begin
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
     Truncate(FDetailMarche);
     CloseFile(FDetailMarche);
     FSDetailMarche.BRefaireMarche.Checked:=false;
end;

for ARow:=1 to FSDetailMarche.TableauDetailMarche.RowCount-1 do
begin
     if(strtointeger(FSDetailMarche.TableauDetailMarche.Cells[1,ARow])=0)
     then
     begin
     if(Firstlaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],3)<>'ZZZ')
     and(Lastlaters(FSDetailMarche.TableauDetailMarche.Cells[7,ARow],11)<>'00.00.00.00')
     then
     begin {***** Ajout *****}
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
          NDetailMarche:=1;
          while not eof(FDetailMarche) do
          begin
               Read(FDetailMarche,RDetailMarche);
               if(strtointeger(DTrie('M',RDetailMarche.CodeTrie))=NSMarche)then
               begin
                    if(RDetailMarche.NDetailMarche>=NDetailMarche)then NDetailMarche:=RDetailMarche.NDetailMarche+1;
               end;
               i:=i+1;
          end;
     Seek(FDetailMarche,i);
     Truncate(FDetailMarche);
     RDetailMarche.NDetailMarche:=NDetailMarche;
     RDetailMarche.NArticle:=FSDetailMarche.TableauDetailMarche.Cells[2,ARow];
     RDetailMarche.DesignationArticle:=FSDetailMarche.TableauDetailMarche.Cells[3,ARow];
     RDetailMarche.UniteM:=FSDetailMarche.TableauDetailMarche.Cells[4,ARow];
     RDetailMarche.QuantiteGlobale:=strtoreal(FSDetailMarche.TableauDetailMarche.Cells[5,ARow]);
     RDetailMarche.PrixUnitaire:=strtoreal(FSDetailMarche.TableauDetailMarche.Cells[6,ARow]);
     RDetailMarche.CodeTrie:=FSDetailMarche.TableauDetailMarche.Cells[7,ARow];
     RDetailMarche.CodeStock:=FSDetailMarche.TableauDetailMarche.Cells[8,ARow];
     Write(FDetailMarche,RDetailMarche);
     Closefile(FDetailMarche);
     end;
     end
     else
     if((FSDetailMarche.TableauDetailMarche.Cells[2,ARow]='')
     and(FSDetailMarche.TableauDetailMarche.Cells[3,ARow]='')
     and(FSDetailMarche.TableauDetailMarche.Cells[4,ARow]='')
     and(FSDetailMarche.TableauDetailMarche.Cells[5,ARow]='')
     and(FSDetailMarche.TableauDetailMarche.Cells[6,ARow]=''))
     then
     begin {***** Supprimer *****}
          NDetailMarche:=strtoint(FSDetailMarche.TableauDetailMarche.Cells[1,ARow]);
          Confirme:=false;
          DeleteFDetailMarche(NSMarche,NDetailMarche,Confirme);
     end
     else
     begin {***** Modification *****}
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
          OK:=false;
          while not eof(FDetailMarche)and(OK=false)do
          begin
               Read(FDetailMarche,RDetailMarche);
               if(RDetailMarche.NDetailMarche=strtointeger(FSDetailMarche.TableauDetailMarche.Cells[1,ARow]))
               then
               begin
                    OK:=true;
                    Seek(FDetailMarche,i);
                    RDetailMarche.NDetailMarche:=strtointeger(FSDetailMarche.TableauDetailMarche.Cells[1,ARow]);
                    RDetailMarche.NArticle:=FSDetailMarche.TableauDetailMarche.Cells[2,ARow];
                    RDetailMarche.DesignationArticle:=FSDetailMarche.TableauDetailMarche.Cells[3,ARow];
                    RDetailMarche.UniteM:=FSDetailMarche.TableauDetailMarche.Cells[4,ARow];
                    RDetailMarche.QuantiteGlobale:=strtoreal(FSDetailMarche.TableauDetailMarche.Cells[5,ARow]);
                    RDetailMarche.PrixUnitaire:=strtoreal(FSDetailMarche.TableauDetailMarche.Cells[6,ARow]);
                    RDetailMarche.CodeTrie:=FSDetailMarche.TableauDetailMarche.Cells[7,ARow];
                    RDetailMarche.CodeStock:=FSDetailMarche.TableauDetailMarche.Cells[8,ARow];
                    Write(FDetailMarche,RDetailMarche);
               end;
          i:=i+1;
          end;
          Closefile(FDetailMarche);
     end;
end;

FSDetailMarche.EditSauvegardeDetailMarche.Text:='';
ProcAfficheDetailMarche(FSDetailMarche.TableauDetailMarche,TableauNotNumArticle,'Importer','','',NSMarche,NStructureMarche,NStatistiqueMarche);
FSDetailMarche.AfficheSauvegarderDetailMarche.Visible:=false;
end;

procedure TFSDetailMarche.BitBtn2Click(Sender: TObject);
begin
InitialeAfficheDetailMarche;

if FileExists('C:\WinF.File')then
begin
assignfile(FRegistre,'C:\WinF.File');
reset(FRegistre);
Read(FRegistre,RRegistre);
ChEnregistrement:=RRegistre.Adresse;
FSDetailMarche.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Données Marché';
end;

if(FSDetailMarche.EditSauvegardeDetailMarche.Text='OK')
and AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)
then
begin
     FSDetailMarche.AfficheSauvegarderDetailMarche.Visible:=true;
     FSDetailMarche.BitOuiSauvegardeDetailMarche.SetFocus;
     FSDetailMarche.EditOptionSauvegarde.Text:='Quitter';
end
else FSDetailMarche.Close;
end;

procedure TFSDetailMarche.FormShow(Sender: TObject);
var  EcartHorizontal,EcartVertical:string;
begin
     FSDetailMarche.Caption:=RRegistre.Repertoire+' - Exercice '+RRegistre.Exercice+' - Détail quantitatif et éstimatif du marché';

     InitialeAfficheDetailMarche;
     
     EcartHorizontal:='';
     EcartVertical:='';
     PositionAffichage(FSDetailMarche,FSDetailMarche.AfficheOperationDetailMarche,'Midel','Midel',EcartHorizontal,EcartVertical);

     EcartHorizontal:=inttostr(FSDetailMarche.EditDesignationArticle.Left);
     EcartVertical:=inttostr(ValeAbsolue(FSDetailMarche.AfficheOperationDetailMarche.Top-FSDetailMarche.AfficheDesignationArticles.Top)+FSDetailMarche.EditDesignationArticle.Top+FSDetailMarche.EditDesignationArticle.Height+8);
     PositionAffichage(FSDetailMarche,FSDetailMarche.AfficheDesignationArticles,'Midel','Midel',EcartHorizontal,EcartVertical);

     EcartHorizontal:='';
     EcartVertical:='';
     PositionAffichage(FSDetailMarche,FSDetailMarche.AfficheStructureMarche,'Midel','Midel',EcartHorizontal,EcartVertical);
     PositionAffichage(FSDetailMarche,FSDetailMarche.AfficheStatistiqueMarche,'Midel','Midel',EcartHorizontal,EcartVertical);
     PositionAffichage(FSDetailMarche,FSDetailMarche.AfficheSauvegarderDetailMarche,'Midel','Midel',EcartHorizontal,EcartVertical);

     FSDetailMarche.AfficheDetailleParClasse.Left:=8;
     FSDetailMarche.AfficheDetailleParClasse.Top:=8;
     FSDetailMarche.MemoDetailMarche.Left:=8;
     FSDetailMarche.MemoDetailMarche.Top:=8;
     FSDetailMarche.AfficheRecapitulationParStructure.Left:=8;
     FSDetailMarche.AfficheRecapitulationParStructure.Top:=8;
     
     FSDetailMarche.TableauDevisQE.Top:=FSDetailMarche.TableauDetailMarche.Top;
     FSDetailMarche.TableauDevisQE.Left:=FSDetailMarche.TableauDetailMarche.Left;

     FSDetailMarche.TableauDevisRestant.Top:=FSDetailMarche.TableauDetailMarche.Top;
     FSDetailMarche.TableauDevisRestant.Left:=FSDetailMarche.TableauDetailMarche.Left;

     FSDetailMarche.AffichePCNDetailMarche.Top:=FSDetailMarche.TableauDetailMarche.Top;
     FSDetailMarche.AffichePCNDetailMarche.Left:=FSDetailMarche.TableauDetailMarche.Left;
end;

procedure TFSDetailMarche.BitValiderFormuleClick(Sender: TObject);
var  i:integer;  OK:boolean;  NSMarche,NStructure,NStatistique:string[5]; 
begin

if((FSDetailMarche.RBFormuleGlobale.Checked=false)
and(FSDetailMarche.RBFormuleDistincte.Checked=false))
then
begin
     showmessage('Veuillez choisir le type de formulation du projet SVP !');
     Exit;
end;

if((FSDetailMarche.RBFormuleGlobale.Enabled=true)
and(FSDetailMarche.RBFormuleDistincte.Enabled=true)
and(FSDetailMarche.RBFormuleParStructure.Enabled=true)
and(FSDetailMarche.RBFormuleParStatistique.Enabled=true))
then
begin
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
     read(FMarche,RMarche);
     if(RMarche.NSMarche=strtointeger(FSDetailMarche.EditNSMarche.Text))then
     begin
          OK:=true;
          RMarche.TypeFormulation:='';
          if(FSDetailMarche.RBFormuleGlobale.Checked=true)then RMarche.TypeFormulation:='G'
          else
          if(FSDetailMarche.RBFormuleDistincte.Checked=true)then RMarche.TypeFormulation:='D';

          if(FSDetailMarche.RBFormuleParStructure.Checked=true)then RMarche.TypeFormulation:=RMarche.TypeFormulation+'S'
          else
          if(FSDetailMarche.RBFormuleParStatistique.Checked=true)then RMarche.TypeFormulation:=RMarche.TypeFormulation+'T';
          Seek(FMarche,i);
          write(FMarche,RMarche);
     end;
i:=i+1;
end;
CloseFile(FMarche);
end;

NSMarche:='00000';
NStructure:='00000';
NStatistique:='00000';

NSMarche:=Completezerogauche(FSDetailMarche.EditNSMarche.Text,'5');

if(FSDetailMarche.RBFormuleParStructure.Checked=true)then
begin
     NStructure:=Completezerogauche(FSDetailMarche.EditNStructureMarche.Text,'5');
end
else
if(FSDetailMarche.RBFormuleParStatistique.Checked=true)then
begin
     NStatistique:=Completezerogauche(FSDetailMarche.EditNStatistiqueMarche.Text,'5');
end;

FSFormuleComposition.Show;
FSFormuleComposition.EditExtentionCodeProduit.Text:=NSMarche+NStructure+NStatistique;
ProcAfficheFormuleComposition(NSMarche+NStructure+NStatistique,FSDetailMarche.TableauDetailMarche.Cells[8,FSDetailMarche.TableauDetailMarche.Row],FSDetailMarche.TableauDetailMarche.Cells[3,FSDetailMarche.TableauDetailMarche.Row],FSDetailMarche.TableauDetailMarche.Cells[4,FSDetailMarche.TableauDetailMarche.Row]);

FSDetailMarche.AfficheOptionFormule.Visible:=false;
end;

Procedure ProcAfficheFormuleMarche(FormuleCodeProduit:string);
var l:integer;  OK:boolean;
begin
FSFormuleComposition.Show;

FSFormuleComposition.TableauFormuleComposition.Cols[1].Text:='Code Prod';
FSFormuleComposition.TableauFormuleComposition.Cols[2].Text:='Désignation Prod';
FSFormuleComposition.TableauFormuleComposition.Cols[3].Text:='UM Prod';
FSFormuleComposition.TableauFormuleComposition.Cols[4].Text:='Nbr Prod';
FSFormuleComposition.TableauFormuleComposition.Cols[5].Text:='Nbr Mat';
FSFormuleComposition.TableauFormuleComposition.Cols[6].Text:='Coefficient Comp.';
FSFormuleComposition.TableauFormuleComposition.Cols[7].Text:='Code Mat';
FSFormuleComposition.TableauFormuleComposition.Cols[8].Text:='Désignation Mat';
FSFormuleComposition.TableauFormuleComposition.Cols[9].Text:='UM Mat';
FSFormuleComposition.TableauFormuleComposition.Cols[10].Text:='Coefficient Perte';
FSFormuleComposition.TableauFormuleComposition.RowCount:=2;
FSFormuleComposition.TableauFormuleComposition.Rows[1].Text:='';

FSFormuleComposition.EditFCodeProd.Text:=FormuleCodeProduit;
FSFormuleComposition.EditFDesignProd.Text:=FSDetailMarche.TableauDetailMarche.Cells[3,FSDetailMarche.TableauDetailMarche.Row];
FSFormuleComposition.EditFUMProd.Text:=FSDetailMarche.TableauDetailMarche.Cells[4,FSDetailMarche.TableauDetailMarche.Row];

TypeProces:='Business'; FichierConcerne:='FFormuleComposition';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChFormuleComposition:=Adresse;
assignfile(FFormuleComposition,ChFormuleComposition);
if FileExists(ChFormuleComposition)then
Reset(FFormuleComposition)
else Rewrite(FFormuleComposition);
Seek(FFormuleComposition,0);
l:=0;
while not eof(FFormuleComposition)do
begin
     OK:=true;
     read(FFormuleComposition,RFormuleComposition);
     if(RFormuleComposition.CodeProd=FormuleCodeProduit)
     then
     begin
          l:=l+1;
          FSFormuleComposition.TableauFormuleComposition.Rows[l].Text:=inttostr(l);
          FSFormuleComposition.TableauFormuleComposition.Cells[1,l]:=RFormuleComposition.CodeProd;
          FSFormuleComposition.TableauFormuleComposition.Cells[2,l]:=RFormuleComposition.DesignProd;
          FSFormuleComposition.TableauFormuleComposition.Cells[3,l]:=RFormuleComposition.UMProd;
          FSFormuleComposition.TableauFormuleComposition.Cells[4,l]:=floattostr(RFormuleComposition.NbProd);
          FSFormuleComposition.TableauFormuleComposition.Cells[5,l]:=floattostr(RFormuleComposition.NbMat);
          FSFormuleComposition.TableauFormuleComposition.Cells[6,l]:=floattostr(RFormuleComposition.CoefficientComposition);
          FSFormuleComposition.TableauFormuleComposition.Cells[7,l]:=RFormuleComposition.CodeMat;
          FSFormuleComposition.TableauFormuleComposition.Cells[8,l]:=RFormuleComposition.DesignMat;
          FSFormuleComposition.TableauFormuleComposition.Cells[9,l]:=RFormuleComposition.UMMat;
          FSFormuleComposition.TableauFormuleComposition.Cells[10,l]:=floattostr(RFormuleComposition.CoefficientPerte);
     end;
end;
if(l>0)then FSFormuleComposition.TableauFormuleComposition.RowCount:=l+1
       else FSFormuleComposition.TableauFormuleComposition.RowCount:=2;

FSFormuleComposition.TableauFormuleComposition.SetFocus;
end;

procedure TFSDetailMarche.BitBtn71Click(Sender: TObject);
begin

if(FSDetailMarche.AfficheOperationsDM.Height=35)
then
begin
     InitialeAfficheDetailMarche;
     FSDetailMarche.AfficheOperationsDM.Height:=350;
end
else
begin
     InitialeAfficheDetailMarche;
     FSDetailMarche.AfficheOperationsDM.Height:=35;
end;

FSDetailMarche.AffichePCNDetailMarche.Visible:=false;
FSDetailMarche.TableauDevisRestant.Visible:=false;
FSDetailMarche.TableauDevisQE.Visible:=false;
FSDetailMarche.AfficheOptionsDevisQE.Visible:=false;
end;

procedure TFSDetailMarche.BitBtn61Click(Sender: TObject);
begin
InitialeAfficheDetailMarche;

FSDetailMarche.OptionDetailleParClasse.Left:=450;
FSDetailMarche.OptionDetailleParClasse.Top:=250;
FSDetailMarche.OptionDetailleParClasse.Visible:=true;
FSDetailMarche.RBDetailGlobal.Checked:=true;
FSDetailMarche.RBDetailGlobal.SetFocus;
end;

procedure TFSDetailMarche.BitBtn65Click(Sender: TObject);
var   R,k,l:integer;  CProduit:string[30];  OKProd:boolean; Extention:string;
begin
InitialeAfficheDetailMarche;

FSApprovisionnement.EditNSMarche.Text:=FSDetailMarche.EditNSMarche.Text;
FSApprovisionnement.EditMarche.Text:=FSDetailMarche.EditMarche.Text;
FSApprovisionnement.EditNStructure.Text:=FSDetailMarche.EditNStructureMarche.Text;
FSApprovisionnement.EditStructure.Text:=FSDetailMarche.EditStructureMarche.Text;

Extention:=ExtentionFormuleCodeProduit(FSDetailMarche.EditNSMarche.Text,FSDetailMarche.EditNStructureMarche.Text,FSDetailMarche.EditNStatistiqueMarche.Text);

R:=1;
k:=0;
while(R<=FSDetailMarche.TableauDetailMarche.RowCount-1)do
begin
     if((FSDetailMarche.TableauDetailMarche.Cells[5,R]<>'')
     and(FSDetailMarche.TableauDetailMarche.Cells[8,R]<>''))
     then
     begin
          CProduit:=Extention+FSDetailMarche.TableauDetailMarche.Cells[8,R];

          OKProd:=false;
          if(k>0)then
          begin
               l:=0;
               while(l<=K-1)and(OKProd=false)do
               begin
                    if(TApprovisionnement[l].CodeStock=CProduit)then
                    begin
                         OKProd:=true;
                         TApprovisionnement[l].Quantite:=TApprovisionnement[l].Quantite+strtoreal(FSDetailMarche.TableauDetailMarche.Cells[5,R])
                    end;
               l:=l+1;
               end;
          end;

          if(OKProd=false)then
          begin
               k:=k+1;
               setlength(TApprovisionnement,k);
               TApprovisionnement[k-1].CodeStock:=CProduit;
               TApprovisionnement[k-1].Quantite:=strtoreal(FSDetailMarche.TableauDetailMarche.Cells[5,R]);
          end;
     end;
R:=R+1;
end;

CalculeApprovisionnement(TApprovisionnement,k);
end;

procedure TFSDetailMarche.BitBtn82Click(Sender: TObject);
var  OKRow:boolean;  i,R,l,m,j,RowErreur:integer;
begin
InitialeAfficheDetailMarche;

FSAuthentificationMarche.Show;

FSAuthentificationMarche.TableauAuthentificationMarche.Cols[0].Text:='N°';
FSAuthentificationMarche.TableauAuthentificationMarche.Cols[1].Text:='NDetailMarche';
FSAuthentificationMarche.TableauAuthentificationMarche.Cols[2].Text:='Code';
FSAuthentificationMarche.TableauAuthentificationMarche.Cols[3].Text:='         Désignation';
FSAuthentificationMarche.TableauAuthentificationMarche.Cols[4].Text:='U.M.';
FSAuthentificationMarche.TableauAuthentificationMarche.Cols[5].Text:='Quantité';
FSAuthentificationMarche.TableauAuthentificationMarche.Cols[6].Text:='Prix U.';
FSAuthentificationMarche.TableauAuthentificationMarche.Cols[7].Text:='CodeTrie';
FSAuthentificationMarche.TableauAuthentificationMarche.Cols[8].Text:='Code Produit';
FSAuthentificationMarche.TableauAuthentificationMarche.Cols[9].Text:='     Erreurs';

FSAuthentificationMarche.TableauAuthentificationMarche.RowCount:=2;
FSAuthentificationMarche.TableauAuthentificationMarche.Rows[1].Text:='';
FSAuthentificationMarche.TableauAuthentificationMarche.SetFocus;
i:=0;
m:=0;
RowErreur:=0;
R:=1;
while(R<=FSDetailMarche.TableauDetailMarche.RowCount-2)do
begin
     m:=0;
     l:=R+1;
     OKRow:=false;
     while(l<=FSDetailMarche.TableauDetailMarche.RowCount-1)do
     begin

          {******************** Erreur Désignation! ********************}
          if((FSDetailMarche.TableauDetailMarche.Cells[2,l]<>'')
          and(FSDetailMarche.TableauDetailMarche.Cells[2,l]=FSDetailMarche.TableauDetailMarche.Cells[2,R])
          and(FSDetailMarche.TableauDetailMarche.Cells[3,l]<>FSDetailMarche.TableauDetailMarche.Cells[3,R]))
          then
          begin
               if(OKRow=false)then
               begin
                    OKRow:=true;
                    i:=i+1;
                    FSAuthentificationMarche.TableauAuthentificationMarche.Rows[i].Text:='';
                    for j:=0 to 7 do
                    begin
                         FSAuthentificationMarche.TableauAuthentificationMarche.Cells[j,i]:=FSDetailMarche.TableauDetailMarche.Cells[j,R];
                    end;
                    RowErreur:=i;
                    FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:='0';
               end;

               i:=i+1;
               m:=m+1;
               FSAuthentificationMarche.TableauAuthentificationMarche.Rows[i].Text:='';
               for j:=0 to 7 do
               begin
                    FSAuthentificationMarche.TableauAuthentificationMarche.Cells[j,i]:=FSDetailMarche.TableauDetailMarche.Cells[j,l];
               end;
               FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,i]:='Erreur Désignation!'+', Ligne N°: '+inttostr(l);
               FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:=
               inttostr(strtointeger(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur])+1);
          end
          else
          {******************** Erreur U.M.! ********************}
          if((FSDetailMarche.TableauDetailMarche.Cells[2,l]<>'')
          and(FSDetailMarche.TableauDetailMarche.Cells[2,l]=FSDetailMarche.TableauDetailMarche.Cells[2,R])
          and(FSDetailMarche.TableauDetailMarche.Cells[4,l]<>FSDetailMarche.TableauDetailMarche.Cells[4,R]))
          then
          begin
               if(OKRow=false)then
               begin
                    OKRow:=true;
                    i:=i+1;
                    FSAuthentificationMarche.TableauAuthentificationMarche.Rows[i].Text:='';
                    for j:=0 to 7 do
                    begin
                         FSAuthentificationMarche.TableauAuthentificationMarche.Cells[j,i]:=FSDetailMarche.TableauDetailMarche.Cells[j,R];
                    end;
                    RowErreur:=i;
                    FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:='0';
               end;

               i:=i+1;
               m:=m+1;
               FSAuthentificationMarche.TableauAuthentificationMarche.Rows[i].Text:='';
               for j:=0 to 7 do
               begin
                    FSAuthentificationMarche.TableauAuthentificationMarche.Cells[j,i]:=FSDetailMarche.TableauDetailMarche.Cells[j,l];
               end;
               FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,i]:='Erreur U.M.!'+', Ligne N°: '+inttostr(l);
               FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:=
               inttostr(strtointeger(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur])+1);
          end
          else
          {******************** Erreur Prix U.! ********************}
          if((FSDetailMarche.TableauDetailMarche.Cells[2,l]<>'')
          and(FSDetailMarche.TableauDetailMarche.Cells[2,l]=FSDetailMarche.TableauDetailMarche.Cells[2,R])
          and(FSDetailMarche.TableauDetailMarche.Cells[6,l]<>FSDetailMarche.TableauDetailMarche.Cells[6,R]))
          then
          begin
               if(OKRow=false)then
               begin
                    OKRow:=true;
                    i:=i+1;
                    FSAuthentificationMarche.TableauAuthentificationMarche.Rows[i].Text:='';
                    for j:=0 to 7 do
                    begin
                         FSAuthentificationMarche.TableauAuthentificationMarche.Cells[j,i]:=FSDetailMarche.TableauDetailMarche.Cells[j,R];
                    end;
                    RowErreur:=i;
                    FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:='0';
               end;

               i:=i+1;
               m:=m+1;
               FSAuthentificationMarche.TableauAuthentificationMarche.Rows[i].Text:='';
               for j:=0 to 7 do
               begin
                    FSAuthentificationMarche.TableauAuthentificationMarche.Cells[j,i]:=FSDetailMarche.TableauDetailMarche.Cells[j,l];
               end;
               FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,i]:='Erreur Prix U.!'+', Ligne N°: '+inttostr(l);
               FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:=
               inttostr(strtointeger(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur])+1);
          end
          else
          {******************** Erreur Codification! ********************}
          if((FSDetailMarche.TableauDetailMarche.Cells[3,l]<>'')
          and(FSDetailMarche.TableauDetailMarche.Cells[3,l]=FSDetailMarche.TableauDetailMarche.Cells[3,R])
          and(FSDetailMarche.TableauDetailMarche.Cells[2,l]<>FSDetailMarche.TableauDetailMarche.Cells[2,R]))
          then
          begin
               if(OKRow=false)then
               begin
                    OKRow:=true;
                    i:=i+1;
                    FSAuthentificationMarche.TableauAuthentificationMarche.Rows[i].Text:='';
                    for j:=0 to 7 do
                    begin
                         FSAuthentificationMarche.TableauAuthentificationMarche.Cells[j,i]:=FSDetailMarche.TableauDetailMarche.Cells[j,R];
                    end;
                    RowErreur:=i;
                    FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:='0';
               end;

               i:=i+1;
               m:=m+1;
               FSAuthentificationMarche.TableauAuthentificationMarche.Rows[i].Text:='';
               for j:=0 to 7 do
               begin
                    FSAuthentificationMarche.TableauAuthentificationMarche.Cells[j,i]:=FSDetailMarche.TableauDetailMarche.Cells[j,l];
               end;
               FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,i]:='Erreur Codification!'+', Ligne N°: '+inttostr(l);
               FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:=
               inttostr(strtointeger(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur])+1);
          end
          else
          {******************** Erreur U.M! ********************}
          if((FSDetailMarche.TableauDetailMarche.Cells[3,l]<>'')
          and(FSDetailMarche.TableauDetailMarche.Cells[3,l]=FSDetailMarche.TableauDetailMarche.Cells[3,R])
          and(FSDetailMarche.TableauDetailMarche.Cells[4,l]<>FSDetailMarche.TableauDetailMarche.Cells[4,R]))
          then
          begin
               if(OKRow=false)then
               begin
                    OKRow:=true;
                    i:=i+1;
                    FSAuthentificationMarche.TableauAuthentificationMarche.Rows[i].Text:='';
                    for j:=0 to 7 do
                    begin
                         FSAuthentificationMarche.TableauAuthentificationMarche.Cells[j,i]:=FSDetailMarche.TableauDetailMarche.Cells[j,R];
                    end;
                    RowErreur:=i;
                    FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:='0';
               end;

               i:=i+1;
               m:=m+1;
               FSAuthentificationMarche.TableauAuthentificationMarche.Rows[i].Text:='';
               for j:=0 to 7 do
               begin
                    FSAuthentificationMarche.TableauAuthentificationMarche.Cells[j,i]:=FSDetailMarche.TableauDetailMarche.Cells[j,l];
               end;
               FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,i]:='Erreur U.M!'+', Ligne N°: '+inttostr(l);
               FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:=
               inttostr(strtointeger(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur])+1);
          end
          else
          {******************** Erreur Prix U.! ********************}
          if((FSDetailMarche.TableauDetailMarche.Cells[3,l]<>'')
          and(FSDetailMarche.TableauDetailMarche.Cells[3,l]=FSDetailMarche.TableauDetailMarche.Cells[3,R])
          and(FSDetailMarche.TableauDetailMarche.Cells[6,l]<>FSDetailMarche.TableauDetailMarche.Cells[6,R]))
          then
          begin
               if(OKRow=false)then
               begin
                    OKRow:=true;
                    i:=i+1;
                    FSAuthentificationMarche.TableauAuthentificationMarche.Rows[i].Text:='';
                    for j:=0 to 7 do
                    begin
                         FSAuthentificationMarche.TableauAuthentificationMarche.Cells[j,i]:=FSDetailMarche.TableauDetailMarche.Cells[j,R];
                    end;
                    RowErreur:=i;
                    FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:='0';
               end;

               i:=i+1;
               m:=m+1;
               FSAuthentificationMarche.TableauAuthentificationMarche.Rows[i].Text:='';
               for j:=0 to 7 do
               begin
                    FSAuthentificationMarche.TableauAuthentificationMarche.Cells[j,i]:=FSDetailMarche.TableauDetailMarche.Cells[j,l];
               end;
               FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,i]:='Erreur Prix U.!'+', Ligne N°: '+inttostr(l);
               FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:=
               inttostr(strtointeger(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur])+1);
          end
          else
          {******************** Article en double! ********************}
          if(FSDetailMarche.TableauDetailMarche.Cells[7,l]=FSDetailMarche.TableauDetailMarche.Cells[7,R])
          then
          begin
               if(OKRow=false)then
               begin
                    OKRow:=true;
                    i:=i+1;
                    FSAuthentificationMarche.TableauAuthentificationMarche.Rows[i].Text:='';
                    for j:=0 to 7 do
                    begin
                         FSAuthentificationMarche.TableauAuthentificationMarche.Cells[j,i]:=FSDetailMarche.TableauDetailMarche.Cells[j,R];
                    end;
                    RowErreur:=i;
                    FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:='0';
               end;

               i:=i+1;
               m:=m+1;
               FSAuthentificationMarche.TableauAuthentificationMarche.Rows[i].Text:='';
               for j:=0 to 7 do
               begin
                    FSAuthentificationMarche.TableauAuthentificationMarche.Cells[j,i]:=FSDetailMarche.TableauDetailMarche.Cells[j,l];
               end;
               FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,i]:='Article en double!'+', Ligne N°: '+inttostr(l);
               FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:=
               inttostr(strtointeger(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur])+1);
          end;
     l:=l+1;
     end;

     if(OKRow=true)then
     begin
          if(strtointeger(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur])=1)then
          FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:=
          FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]+' Erreur, pour la ligne N°: '+inttostr(R)
          else
          if(strtointeger(FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur])>1)then
          FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]:=
          FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,RowErreur]+' Erreurs, pour la ligne N°: '+inttostr(R);

          FSAuthentificationMarche.TableauAuthentificationMarche.Cells[10,RowErreur]:=
          FSAuthentificationMarche.TableauAuthentificationMarche.Cells[0,RowErreur];
     end;
R:=R+1;
end;

if(i>0)then FSAuthentificationMarche.TableauAuthentificationMarche.RowCount:=i+1
       else
       begin
            FSAuthentificationMarche.TableauAuthentificationMarche.RowCount:=2;
            FSAuthentificationMarche.TableauAuthentificationMarche.Rows[1].Text:='';
            FSAuthentificationMarche.TableauAuthentificationMarche.Cells[7,1]:=completezerogauche(FSDetailMarche.EditNSMarche.Text,'5')+
                                                                               completezerogauche(FSDetailMarche.EditNStructureMarche.Text,'5')+
                                                                               completezerogauche(FSDetailMarche.EditNStatistiqueMarche.Text,'5')+'00.00.00.00';
            FSAuthentificationMarche.TableauAuthentificationMarche.Cells[9,1]:='Pas d''erreur!';
       end;
end;

procedure TFSDetailMarche.BitBtn83Click(Sender: TObject);
begin
InitialeAfficheDetailMarche;

FSDetailMarche.AfficheOptionsDevisQE.Visible:=true;
FSDetailMarche.RBOptionsDevisQEGlobal.Checked:=true;
FSDetailMarche.LabelTypeDevis.Caption:='DEQ.';
FSDetailMarche.RBArticlesDisponible.Visible:=false;

FSDetailMarche.RBListelots.Checked:=false;
FSDetailMarche.RBRemplireQuantite.Checked:=true;
FSDetailMarche.RBRemplirePrixU.Checked:=true;
FSDetailMarche.RBRemplireMontantG.Checked:=true;

FSDetailMarche.RBAfficherSousTotaux.Checked:=true;
FSDetailMarche.RBAfficherTotaux.Checked:=true;
FSDetailMarche.RBAfficherTotalStructure.Checked:=true;

FSDetailMarche.AfficheChoixLots.Visible:=false;
FSDetailMarche.RBOptionsDevisQEGlobal.SetFocus;
end;

procedure TFSDetailMarche.BitBtn89Click(Sender: TObject);
begin
InitialeAfficheDetailMarche;

FSDetailMarche.AfficheOptionsDevisQE.Visible:=true;
FSDetailMarche.RBOptionsDevisQEGlobal.Checked:=true;
FSDetailMarche.LabelTypeDevis.Caption:='DQR.';
FSDetailMarche.RBArticlesDisponible.Visible:=true;
FSDetailMarche.RBArticlesDisponible.Checked:=false;

FSDetailMarche.RBListelots.Checked:=false;
FSDetailMarche.RBRemplireQuantite.Checked:=true;
FSDetailMarche.RBRemplirePrixU.Checked:=true;
FSDetailMarche.RBRemplireMontantG.Checked:=true;

FSDetailMarche.RBAfficherSousTotaux.Checked:=false;
FSDetailMarche.RBAfficherTotaux.Checked:=false;
FSDetailMarche.RBAfficherTotalStructure.Checked:=false;

FSDetailMarche.AfficheChoixLots.Visible:=false;
FSDetailMarche.RBOptionsDevisQEGlobal.SetFocus;
end;

procedure TFSDetailMarche.BitBtn68Click(Sender: TObject);
var  i,l:integer;
begin

InitialeAfficheDetailMarche;

if(FSDetailMarche.AffichePCNDetailMarche.Visible=true)
then FSDetailMarche.AffichePCNDetailMarche.Visible:=false
else
begin
FSDetailMarche.AffichePCNDetailMarche.Visible:=true;

FSDetailMarche.AffichePCNDetailMarche.Cols[0].Text:='S';
FSDetailMarche.AffichePCNDetailMarche.Cols[1].Text:='Code Famille';
FSDetailMarche.AffichePCNDetailMarche.Cols[2].Text:='     Famille';
FSDetailMarche.AffichePCNDetailMarche.Cols[3].Text:='S';
FSDetailMarche.AffichePCNDetailMarche.Cols[4].Text:='Code Sous Famille';
FSDetailMarche.AffichePCNDetailMarche.Cols[5].Text:='   Sous Famille';
FSDetailMarche.AffichePCNDetailMarche.Cols[6].Text:='S';
FSDetailMarche.AffichePCNDetailMarche.Cols[7].Text:='Code Article';
FSDetailMarche.AffichePCNDetailMarche.Cols[8].Text:='          Article';
FSDetailMarche.AffichePCNDetailMarche.Cols[9].Text:='UM';
FSDetailMarche.AffichePCNDetailMarche.Cols[10].Text:='  Prix';

{********** FAMILLE **********}
TypeProces:='Business'; FichierConcerne:='FFamilleMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChFamille:=Adresse;
assignfile(FFamille,ChFamille);
if FileExists(ChFamille)then
Reset(FFamille)
else Rewrite(FFamille);
Seek(FFamille,0);
i:=0;
while not eof(FFamille)do
begin
     Read(FFamille,RFamille);
     l:=i;
     if(Firstlaters(RFamille.CodeCompte,2)='72')
     then
     begin
          i:=i+1;
          FSDetailMarche.AffichePCNDetailMarche.Rows[i].Text:='';
          FSDetailMarche.AffichePCNDetailMarche.Cells[1,i]:=RFamille.CodeCompte[3]+RFamille.CodeCompte[4]+'.00.00';
          FSDetailMarche.AffichePCNDetailMarche.Cells[2,i]:=RFamille.Designation;
          FSDetailMarche.AffichePCNDetailMarche.Cells[12,i]:=completezerogauche(FSDetailMarche.EditNSMarche.Text,'5')+completezerogauche(FSDetailMarche.EditNStructureMarche.Text,'5')+completezerogauche(FSDetailMarche.AffichePCNDetailMarche.Cells[1,i],'11')+'.00';
     end;
end;
CloseFile(FFamille);
if(i>0)then FSDetailMarche.AffichePCNDetailMarche.RowCount:=i+1
       else
       begin
            FSDetailMarche.AffichePCNDetailMarche.RowCount:=2;
            FSDetailMarche.AffichePCNDetailMarche.Rows[1].Text:='';
       end;
end;
end;

procedure TFSDetailMarche.BitBtn76Click(Sender: TObject);
begin
     InitialeAfficheDetailMarche;
end;

procedure TFSDetailMarche.BitValiderOptionsDevisQEClick(Sender: TObject);
var   i,R,l,NSMarche,NStructureMarche,NStatistiqueMarche,NAvenant,ARow,T,C:integer; Mode,CodeStructureSituation,NotCol:string;
      Montant,TVA:real; OKClasse,OKCharge,OK,ParStructure,ParStatistique:boolean; E:char;
begin

FSDetailMarche.AfficheRecapitulationParStructure.Visible:=true;
NSMarche:=strtointeger(FSDetailMarche.EditNSMarche.Text);
NStructureMarche:=strtointeger(FSDetailMarche.IndiceAfficheStructure.Text)*strtointeger(FSDetailMarche.EditNStructureMarche.Text);
NStatistiqueMarche:=strtointeger(FSDetailMarche.EditNStatistiqueMarche.Text)*strtointeger(FSDetailMarche.IndiceAfficheStatistique.Text);
ParStructure:=True;
ParStatistique:=True;
ProcAfficheStructureStatistique(FSDetailMarche.TableauRecapitulationParStructure,NSMarche,ParStructure,ParStatistique);

if(FSDetailMarche.LabelTypeDevis.Caption='DEQ.')then
begin

if(FSDetailMarche.RBOptionsDevisQEGlobal.Checked=true)then
begin
     Mode:='Importer';
     FSDetailMarche.EditNStructureMarche.Text:='0';
     FSDetailMarche.IndiceAfficheStatistique.Text:='0';
end;

if(FSDetailMarche.RBOptionsDevisQEDetailAffiche.Checked=true)then
begin
     Mode:='Charger';

end;

FSDetailMarche.TableauDevisQE.Visible:=true;
FSDetailMarche.TableauDevisQE.Cols[1].Text:='N°';
FSDetailMarche.TableauDevisQE.Cols[2].Text:='C.Article';
FSDetailMarche.TableauDevisQE.Cols[3].Text:='         Désignation';
FSDetailMarche.TableauDevisQE.Cols[4].Text:='U.M.';
FSDetailMarche.TableauDevisQE.Cols[5].Text:='Qte.Marché';
FSDetailMarche.TableauDevisQE.Cols[6].Text:='Prix U.';
FSDetailMarche.TableauDevisQE.Cols[7].Text:='Trie';
FSDetailMarche.TableauDevisQE.Cols[8].Text:='C.Produit';
FSDetailMarche.TableauDevisQE.Cols[9].Text:='M.Marché';
ProcAfficheDevisQE(Mode,NSMarche,NStructureMarche,NStatistiqueMarche,NAvenant,FSDetailMarche.RBCumuleArticle.Checked);

{************************* STATISTIQUES ****************************}
for ARow:=1 to FSDetailMarche.TableauDevisQE.RowCount-1 do
begin
     if(Longueur(FSDetailMarche.TableauDevisQE.Cells[7,ARow])>15)
     then
     begin
          if(FSDetailMarche.TableauDevisQE.Cells[7,ARow][16]='Z')
          then
          begin
               R:=1;
               while(R<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
               begin
                    if(FSDetailMarche.TableauRecapitulationParStructure.Cells[0,R]=Firstlaters(FSDetailMarche.TableauDevisQE.Cells[7,ARow],5))then
                    begin
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[8,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[9,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[10,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[12,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                    end
                    else
                    if(FSDetailMarche.TableauRecapitulationParStructure.Cells[0,R]=Firstlaters(FSDetailMarche.TableauDevisQE.Cells[7,ARow],10))then
                    begin
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R])+strtoreal(FSDetailMarche.TableauDevisQE.Cells[8,ARow]));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R])+strtoreal(FSDetailMarche.TableauDevisQE.Cells[9,ARow]));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R])+strtoreal(FSDetailMarche.TableauDevisQE.Cells[10,ARow]));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R])+strtoreal(FSDetailMarche.TableauDevisQE.Cells[12,ARow]));
                    end
                    else
                    if(FSDetailMarche.TableauRecapitulationParStructure.Cells[0,R]=Firstlaters(FSDetailMarche.TableauDevisQE.Cells[7,ARow],15))then
                    begin
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[8,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[9,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[10,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[12,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                    end;

               R:=R+1;
               end;
          end;
     end;
end;

R:=1;
while(R<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
begin
     if(FSDetailMarche.TableauRecapitulationParStructure.Cells[8,R]<>'')then
     begin
          l:=R;
          while(l<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
          begin
               if(FSDetailMarche.TableauRecapitulationParStructure.Cells[8,R]=FSDetailMarche.TableauRecapitulationParStructure.Cells[0,l])then
               begin
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[3,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[4,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[5,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[6,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[7,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[7,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[7,R]));
               end;
          l:=l+1;
          end;
     end;
R:=R+1;
end;
R:=1;
while(R<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
begin
     FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[7,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[7,R],'2','C','');
R:=R+1;
end;
FSDetailMarche.TableauRecapitulationParStructure.Cells[4,0]:='Montant';
NotCol:='0;1;3;5-8';
for C:=0 to FSDetailMarche.TableauRecapitulationParStructure.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSDetailMarche.TableauRecapitulationParStructure.ColWidths[C]:=0;
AjusterColWidth(FSDetailMarche.TableauRecapitulationParStructure,'',NotCol);
end;

if(FSDetailMarche.LabelTypeDevis.Caption='DQR.')then
begin

if(FSDetailMarche.RBOptionsDevisQEGlobal.Checked=true)then
begin
     Mode:='Importer';
     FSDetailMarche.EditNStructureMarche.Text:='0';
     FSDetailMarche.IndiceAfficheStatistique.Text:='0';
end;

if(FSDetailMarche.RBOptionsDevisQEDetailAffiche.Checked=true)then
begin
     Mode:='Charger';
end;

FSDetailMarche.TableauDevisRestant.Visible:=true;
FSDetailMarche.TableauDevisRestant.RowCount:=2;
FSDetailMarche.TableauDevisRestant.Rows[1].Text:='';

FSDetailMarche.TableauDevisRestant.Cols[1].Text:='N°';
FSDetailMarche.TableauDevisRestant.Cols[2].Text:='C.Article';
FSDetailMarche.TableauDevisRestant.Cols[3].Text:='         Désignation';
FSDetailMarche.TableauDevisRestant.Cols[4].Text:='U.M.';
FSDetailMarche.TableauDevisRestant.Cols[5].Text:='Qte.Marché';
FSDetailMarche.TableauDevisRestant.Cols[6].Text:='Qte.Réalisée';
FSDetailMarche.TableauDevisRestant.Cols[7].Text:='Qte.Restantes';
FSDetailMarche.TableauDevisRestant.Cols[8].Text:='Prix U.';
FSDetailMarche.TableauDevisRestant.Cols[9].Text:='M.Marché';
FSDetailMarche.TableauDevisRestant.Cols[10].Text:='M.Réalisé';
FSDetailMarche.TableauDevisRestant.Cols[11].Text:='M.Restant';
FSDetailMarche.TableauDevisRestant.Cols[12].Text:='Trie';
FSDetailMarche.TableauDevisRestant.Cols[13].Text:='C.Produit';
ProcAfficheTravauxRestant(Mode,NSMarche,NStructureMarche,NStatistiqueMarche,NAvenant);

{************************* STATISTIQUES ****************************}
for ARow:=1 to FSDetailMarche.TableauDevisRestant.RowCount-1 do
begin
     if(Longueur(FSDetailMarche.TableauDevisRestant.Cells[12,ARow])>15)
     then
     begin
          if(FSDetailMarche.TableauDevisRestant.Cells[12,ARow][16]='Z')
          then
          begin
               R:=1;
               while(R<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
               begin
                    if(FSDetailMarche.TableauRecapitulationParStructure.Cells[0,R]=Firstlaters(FSDetailMarche.TableauDevisRestant.Cells[12,ARow],5))then
                    begin
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[11,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[11,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[10,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[9,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                    end
                    else
                    if(FSDetailMarche.TableauRecapitulationParStructure.Cells[0,R]=Firstlaters(FSDetailMarche.TableauDevisRestant.Cells[12,ARow],10))then
                    begin
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R])+strtoreal(FSDetailMarche.TableauDevisRestant.Cells[11,ARow]));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R])+strtoreal(FSDetailMarche.TableauDevisRestant.Cells[11,ARow]));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R])+strtoreal(FSDetailMarche.TableauDevisRestant.Cells[10,ARow]));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R])+strtoreal(FSDetailMarche.TableauDevisRestant.Cells[9,ARow]));
                    end
                    else
                    if(FSDetailMarche.TableauRecapitulationParStructure.Cells[0,R]=Firstlaters(FSDetailMarche.TableauDevisRestant.Cells[12,ARow],15))then
                    begin
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[11,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[11,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[10,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[9,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                    end;

               R:=R+1;
               end;
          end;
     end;
end;

R:=1;
while(R<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
begin
     if(FSDetailMarche.TableauRecapitulationParStructure.Cells[8,R]<>'')then
     begin
          l:=R;
          while(l<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
          begin
               if(FSDetailMarche.TableauRecapitulationParStructure.Cells[8,R]=FSDetailMarche.TableauRecapitulationParStructure.Cells[0,l])then
               begin
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[3,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[4,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[5,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[6,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[7,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[7,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[7,R]));
               end;
          l:=l+1;
          end;
     end;
R:=R+1;
end;
R:=1;
while(R<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
begin
     FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[7,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[7,R],'2','C','');
R:=R+1;
end;
FSDetailMarche.TableauRecapitulationParStructure.Cells[4,0]:='Montant Restant';
FSDetailMarche.TableauRecapitulationParStructure.Cells[5,0]:='Montant Réalisé';
FSDetailMarche.TableauRecapitulationParStructure.Cells[6,0]:='Montant Marché';

NotCol:='0;1;3;7-8';
for C:=0 to FSDetailMarche.TableauRecapitulationParStructure.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSDetailMarche.TableauRecapitulationParStructure.ColWidths[C]:=0;
AjusterColWidth(FSDetailMarche.TableauRecapitulationParStructure,'',NotCol);
end;


FSDetailMarche.TableauRecapitulationParStructure.SetFocus;
FSDetailMarche.AfficheChoixLots.Visible:=false;
FSDetailMarche.AfficheOptionsDevisQE.Visible:=false;
end;

procedure TFSDetailMarche.RBListelotsClick(Sender: TObject);
var  i,l,NSMarche:integer;  OKArticleMarche:boolean;
begin

if(FSDetailMarche.RBListelots.Checked=true)then
begin
      FSDetailMarche.AfficheChoixLots.Visible:=true;
      FSDetailMarche.AfficheChoixLots.Left:=FSDetailMarche.AfficheOptionsDevisQE.Left+FSDetailMarche.AfficheOptionsDevisQE.Width+2;
      FSDetailMarche.AfficheChoixLots.Top:=FSDetailMarche.AfficheOptionsDevisQE.Top+FSDetailMarche.RBListelots.Top;

      FSDetailMarche.TableauChoixLots.Cols[0].Text:='N°';
      FSDetailMarche.TableauChoixLots.Cols[1].Text:='Code';
      FSDetailMarche.TableauChoixLots.Cols[2].Text:='Désignation';
      FSDetailMarche.TableauChoixLots.Cols[3].Text:='Sélect.';
      FSDetailMarche.TableauChoixLots.RowCount:=2;
      FSDetailMarche.TableauChoixLots.Rows[1].Text:='';

      if(FSDetailMarche.RBUtiliseFamilleMarche.Checked=true)then
      begin
            {********** FAMILLE **********}
            TypeProces:='Business'; FichierConcerne:='FFamilleMarche';
            if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
            begin
                 //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
            end;
            ChFamille:=Adresse;
            assignfile(FFamille,ChFamille);
            if FileExists(ChFamille)then
            Reset(FFamille)
            else Rewrite(FFamille);
            Seek(FFamille,0);
            i:=0;
            while not eof(FFamille)do
            begin
                 Read(FFamille,RFamille);
                 l:=i;
                 if(Firstlaters(RFamille.CodeCompte,2)='72')
                 then
                 begin
                      i:=i+1;
                      FSDetailMarche.TableauChoixLots.Rows[i].Text:='';
                      FSDetailMarche.TableauChoixLots.Cells[0,i]:=inttostr(i);
                      FSDetailMarche.TableauChoixLots.Cells[1,i]:=RFamille.CodeCompte[3]+RFamille.CodeCompte[4]+'.00.00';
                      FSDetailMarche.TableauChoixLots.Cells[2,i]:=RFamille.Designation;
                      FSDetailMarche.TableauChoixLots.Cells[3,i]:='';
                 end;
            end;
            CloseFile(FFamille);
      end
      else
      if(FSDetailMarche.RBUtiliseDetailMarche.Checked=true)then
      begin
           NSMarche:=strtointeger(FSDetailMarche.EditNSMarche.Text);
           
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
           while not eof(FDetailMarche)do
           begin
                Read(FDetailMarche,RDetailMarche);
                
                if(MidelLaters(RDetailMarche.NArticle,4,8)='00.00')then
                begin
                      l:=1;
                      OKArticleMarche:=false;
                      while(l<i)and(OKArticleMarche=false)do
                      begin
                           if(FSDetailMarche.TableauChoixLots.Cells[1,l]=RDetailMarche.NArticle)then
                           begin
                                OKArticleMarche:=true;
                           end;
                      l:=l+1;
                      end;

                      if(OKArticleMarche=false)then
                      begin
                           i:=i+1;
                           FSDetailMarche.TableauChoixLots.Rows[i].Text:='';
                           FSDetailMarche.TableauChoixLots.Cells[0,i]:=inttostr(i);
                           FSDetailMarche.TableauChoixLots.Cells[1,i]:=RDetailMarche.NArticle;
                           FSDetailMarche.TableauChoixLots.Cells[2,i]:=RDetailMarche.DesignationArticle;
                           FSDetailMarche.TableauChoixLots.Cells[3,i]:='';
                      end;
                end;
           end;
           CloseFile(FDetailMarche);
      end;

      if(i>0)then FSDetailMarche.TableauChoixLots.RowCount:=i+1
             else
             begin
                  FSDetailMarche.TableauChoixLots.RowCount:=2;
                  FSDetailMarche.TableauChoixLots.Rows[1].Text:='';
             end;

      FSDetailMarche.TableauChoixLots.SetFocus;

      TrierTableauARowSpecial(FSDetailMarche.TableauChoixLots,1,FSDetailMarche.TableauChoixLots.RowCount-1,1,'1','','+');
end
else FSDetailMarche.AfficheChoixLots.Visible:=false;

end;

procedure TFSDetailMarche.BitBtn3Click(Sender: TObject);
begin
FSDetailMarche.RBListelots.Checked:=false;
FSDetailMarche.AfficheChoixLots.Visible:=false;
end;

procedure TFSDetailMarche.TableauChoixLotsContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
if(FSDetailMarche.TableauChoixLots.Cells[3,FSDetailMarche.TableauChoixLots.Row]='')
then FSDetailMarche.TableauChoixLots.Cells[3,FSDetailMarche.TableauChoixLots.Row]:='OK'
else FSDetailMarche.TableauChoixLots.Cells[3,FSDetailMarche.TableauChoixLots.Row]:=''
end;

procedure TFSDetailMarche.TableauChoixLotsDblClick(Sender: TObject);
begin
if(FSDetailMarche.TableauChoixLots.Cells[3,FSDetailMarche.TableauChoixLots.Row]='')
then FSDetailMarche.TableauChoixLots.Cells[3,FSDetailMarche.TableauChoixLots.Row]:='OK'
else FSDetailMarche.TableauChoixLots.Cells[3,FSDetailMarche.TableauChoixLots.Row]:=''
end;

Procedure ProcAfficheDevisQE(Mode:String; NSMarche,NStructureMarche,NStatistiqueMarche,NAvenantMarche:integer; CumuleArticle:boolean);
var i,TA,RowCount:integer; TauxQte,TauxPrix:real;
begin
TA:=0;
i:=0;
if(Mode='Importer')then TA:=ImporterDevisQE(NSMarche,NStructureMarche,NStatistiqueMarche,NAvenantMarche,CumuleArticle,TDevisQE);
if(Mode='Charger')then TA:=ChargementDevisQE(CumuleArticle,TDevisQE);

RowCount:=0;
if(TA>0)then
for i:=1 to TA do
begin
          RowCount:=RowCount+1;
          FSDetailMarche.TableauDevisQE.Rows[RowCount].Text:='';
          FSDetailMarche.TableauDevisQE.DefaultRowHeight:=18;
          FSDetailMarche.TableauDevisQE.Cells[0,RowCount]:=inttostr(RowCount);
          FSDetailMarche.TableauDevisQE.Cells[1,RowCount]:=inttostr(TDevisQE[i-1].NDetailMarche);
          FSDetailMarche.TableauDevisQE.Cells[2,RowCount]:=TDevisQE[i-1].NArticle;
          FSDetailMarche.TableauDevisQE.Cells[3,RowCount]:=' '+TDevisQE[i-1].DesignationArticle;
          FSDetailMarche.TableauDevisQE.Cells[4,RowCount]:=TDevisQE[i-1].UniteM;

          TauxQte:=strtoreal(FSDetailMarche.EditPourcentageQte.Text)/100;
          TauxPrix:=strtoreal(FSDetailMarche.EditPourcentagePrix.Text)/100;

          if(TDevisQE[i-1].QuantiteGlobale<>0)
          then FSDetailMarche.TableauDevisQE.Cells[5,RowCount]:=vergule(floattostr(TDevisQE[i-1].QuantiteGlobale*TauxQte),'3','C','')
          else FSDetailMarche.TableauDevisQE.Cells[5,RowCount]:='';

          if(TDevisQE[i-1].PrixUnitaire<>0)
          then FSDetailMarche.TableauDevisQE.Cells[6,RowCount]:=vergule(floattostr(TDevisQE[i-1].PrixUnitaire*TauxPrix),'2','C','')
          else FSDetailMarche.TableauDevisQE.Cells[6,RowCount]:='';

          FSDetailMarche.TableauDevisQE.Cells[7,RowCount]:=TDevisQE[i-1].CodeTrie;
          FSDetailMarche.TableauDevisQE.Cells[8,RowCount]:=TDevisQE[i-1].NArticle;
          if(TDevisQE[i-1].Montant<>0)
          then FSDetailMarche.TableauDevisQE.Cells[9,RowCount]:=vergule(floattostr(TDevisQE[i-1].Montant*TauxQte*TauxPrix),'2','C','')
          else FSDetailMarche.TableauDevisQE.Cells[9,RowCount]:='';
end;

if(RowCount>0)then FSDetailMarche.TableauDevisQE.RowCount:=RowCount+1
       else
       begin
            FSDetailMarche.TableauDevisQE.RowCount:=2;
            FSDetailMarche.TableauDevisQE.Rows[1].Text:='';
       end;

end;

Procedure ProcAfficheStatistiqueRecapitulation(NSMarche,ARow:integer);
var  i,m,l:integer;  TVA:real; NbrTVA,NbrTTC,Plus,TexteTVA,TexteTTC:string;
begin
TVA:=0;  NbrTVA:='';  NbrTTC:='';  Plus:='';  TexteTVA:='';  TexteTTC:='';

          TypeProces:='Business'; FichierConcerne:='FStatistiqueMarche';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChStatistiqueMarche:=Adresse;
          assignfile(FStatistiqueMarche,ChStatistiqueMarche);
          if FileExists(ChStatistiqueMarche)then
          Reset(FStatistiqueMarche)
          else Rewrite(FStatistiqueMarche);
          Seek(FStatistiqueMarche,0);
          m:=0;
          i:=ARow+1;
          while not eof(FStatistiqueMarche) do
          begin
               Read(FStatistiqueMarche,RStatistiqueMarche);
               if(RStatistiqueMarche.NSMarche=NSMarche)then
               begin
                    m:=m+1;
                    TVA:=TVA+(RStatistiqueMarche.PourcentageStatistiqueMarche*RStatistiqueMarche.TVAStatistiqueMarche)/100
               end;
          end;

          if(m=0)then
          begin
               TVA:=17;
               i:=i+1;
               FSDetailMarche.TableauRecapitulationParStructure.Rows[i].Text:='';
               FSDetailMarche.TableauRecapitulationParStructure.Cells[0,i]:='';
               FSDetailMarche.TableauRecapitulationParStructure.Cells[1,i]:='100';
               FSDetailMarche.TableauRecapitulationParStructure.Cells[3,i]:=' '+'MONTANT GENERAL EN HT';
               i:=i+1;
               FSDetailMarche.TableauRecapitulationParStructure.Cells[0,i]:='';
               FSDetailMarche.TableauRecapitulationParStructure.Cells[1,i]:=floattostr(TVA);
               FSDetailMarche.TableauRecapitulationParStructure.Cells[3,i]:='TVA '+floattostr(TVA)+' %';
               i:=i+1;
               FSDetailMarche.TableauRecapitulationParStructure.Cells[0,i]:='';
               FSDetailMarche.TableauRecapitulationParStructure.Cells[1,i]:=floattostr(100+TVA);
               FSDetailMarche.TableauRecapitulationParStructure.Cells[3,i]:=' '+'MONTANT TOTAL EN TTC';
          end
          else
          if(m>1)then
          begin
               i:=i+1;
               FSDetailMarche.TableauRecapitulationParStructure.Rows[i].Text:='';
               FSDetailMarche.TableauRecapitulationParStructure.Cells[0,i]:='';
               FSDetailMarche.TableauRecapitulationParStructure.Cells[1,i]:='100';
               FSDetailMarche.TableauRecapitulationParStructure.Cells[3,i]:=' '+'MONTANT GENERAL EN HT';
          end;

          TypeProces:='Business'; FichierConcerne:='FStatistiqueMarche';
          if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
          begin
               //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
          end;
          ChStatistiqueMarche:=Adresse;
          assignfile(FStatistiqueMarche,ChStatistiqueMarche);
          if FileExists(ChStatistiqueMarche)then
          Reset(FStatistiqueMarche)
          else Rewrite(FStatistiqueMarche);
          Seek(FStatistiqueMarche,0);
          l:=0;
          while not eof(FStatistiqueMarche) do
          begin
               Read(FStatistiqueMarche,RStatistiqueMarche);
               if(RStatistiqueMarche.NSMarche=NSMarche)then
               begin
                    l:=l+1;
                    if(l>1)then Plus:='+' else Plus:='';
                    i:=i+1;
                    FSDetailMarche.TableauRecapitulationParStructure.Rows[i].Text:='';
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[0,i]:='';
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[1,i]:=floattostr(RStatistiqueMarche.PourcentageStatistiqueMarche);
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[3,i]:=' '+'MONTANT '+RStatistiqueMarche.StatistiqueMarche+' ('+floattostr(RStatistiqueMarche.PourcentageStatistiqueMarche)+'%) EN HT';
                    i:=i+1;
                    FSDetailMarche.TableauRecapitulationParStructure.Rows[i].Text:='';
                    if(m>1)then TexteTVA:=' ..........'+inttostr(l) else TexteTVA:='';
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[0,i]:='';
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[1,i]:=floattostr(RStatistiqueMarche.TVAStatistiqueMarche*RStatistiqueMarche.PourcentageStatistiqueMarche/100);
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[3,i]:=' '+'TVA '+floattostr(RStatistiqueMarche.TVAStatistiqueMarche)+' %'+TexteTVA;
                    NbrTVA:=NbrTVA+Plus+'('+inttostr(l)+')';
                    i:=i+1;
                    FSDetailMarche.TableauRecapitulationParStructure.Rows[i].Text:='';
                    if(m>1)then TexteTTC:=' ..........'+inttostr(m+l+1) else TexteTTC:='';
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[0,i]:='';
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[1,i]:=floattostr(RStatistiqueMarche.PourcentageStatistiqueMarche*((100+RStatistiqueMarche.TVAStatistiqueMarche)/100));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[3,i]:=' '+'MONTANT '+RStatistiqueMarche.StatistiqueMarche+' EN TTC'+TexteTTC;
                    NbrTTC:=NbrTTC+Plus+'('+inttostr(m+l+1)+')';
               end;
          end;
          if(l>1)then
          begin
               i:=i+1;
               FSDetailMarche.TableauRecapitulationParStructure.Rows[i].Text:='';
               FSDetailMarche.TableauRecapitulationParStructure.Cells[0,i]:='';
               FSDetailMarche.TableauRecapitulationParStructure.Cells[1,i]:=floattostr(TVA);
               FSDetailMarche.TableauRecapitulationParStructure.Cells[3,i]:=' '+'TOTAL TVA ..........'+inttostr(l+1)+' = '+NbrTVA;
               i:=i+1;
               FSDetailMarche.TableauRecapitulationParStructure.Rows[i].Text:='';
               FSDetailMarche.TableauRecapitulationParStructure.Cells[0,i]:='';
               FSDetailMarche.TableauRecapitulationParStructure.Cells[1,i]:=floattostr(100+TVA);
               FSDetailMarche.TableauRecapitulationParStructure.Cells[3,i]:=' '+'MONTANT TOTAL EN TTC ..........'+inttostr(m+l+2)+' = '+NbrTTC;
          end;

          if(i>0)then FSDetailMarche.TableauRecapitulationParStructure.RowCount:=i+1
                 else FSDetailMarche.TableauRecapitulationParStructure.RowCount:=2;
end;

Procedure ProcAfficheTravauxRestant(Mode:String; NSMarche,NStructureMarche,NStatistiqueMarche,NAvenantMarche:integer);
var i,TA,RowCount:integer;
begin
TA:=0;
i:=0;
if(Mode='Importer')then TA:=ImporterTravauxRestant(NSMarche,NStructureMarche,NStatistiqueMarche,TTravauxRestant);
if(Mode='Charger')then TA:=ChargementTravauxRestant(TTravauxRestant);

RowCount:=TA;
if(RowCount>0)then
for i:=1 to RowCount do
begin
     FSDetailMarche.TableauDevisRestant.Rows[i].Text:='';
     FSDetailMarche.TableauDevisRestant.DefaultRowHeight:=18;
     FSDetailMarche.TableauDevisRestant.Cells[0,i]:=inttostr(i);
     FSDetailMarche.TableauDevisRestant.Cells[1,i]:=inttostr(TTravauxRestant[i-1].NDetailMarche);
     FSDetailMarche.TableauDevisRestant.Cells[2,i]:=TTravauxRestant[i-1].NArticle;
     FSDetailMarche.TableauDevisRestant.Cells[3,i]:=' '+TTravauxRestant[i-1].DesignationArticle;
     FSDetailMarche.TableauDevisRestant.Cells[4,i]:=TTravauxRestant[i-1].UniteM;

     if(TTravauxRestant[i-1].QuantiteMarcheAvenant<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[5,i]:=vergule(floattostr(TTravauxRestant[i-1].QuantiteMarcheAvenant),'3','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[5,i]:='';
     if(TTravauxRestant[i-1].QuantiteRealiser<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[6,i]:=vergule(floattostr(TTravauxRestant[i-1].QuantiteRealiser),'3','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[6,i]:='';
     if(TTravauxRestant[i-1].QuantiteRestant<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[7,i]:=vergule(floattostr(TTravauxRestant[i-1].QuantiteRestant),'3','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[7,i]:='';

     if(TTravauxRestant[i-1].PrixUnitaire<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[8,i]:=vergule(floattostr(TTravauxRestant[i-1].PrixUnitaire),'2','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[8,i]:='';

     if(TTravauxRestant[i-1].MontantMarche<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[9,i]:=vergule(floattostr(TTravauxRestant[i-1].MontantMarche),'2','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[9,i]:='';
     if(TTravauxRestant[i-1].MontantRealiser<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[10,i]:=vergule(floattostr(TTravauxRestant[i-1].MontantRealiser),'2','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[10,i]:='';
     if(TTravauxRestant[i-1].MontantRestant<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[11,i]:=vergule(floattostr(TTravauxRestant[i-1].MontantRestant),'2','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[11,i]:='';


     FSDetailMarche.TableauDevisRestant.Cells[12,i]:=TTravauxRestant[i-1].CodeTrie;
     FSDetailMarche.TableauDevisRestant.Cells[13,i]:=TTravauxRestant[i-1].CodeProduit;
end;

if(TA>0)then FSDetailMarche.TableauDevisRestant.RowCount:=TA+1
       else
       begin
            FSDetailMarche.TableauDevisRestant.RowCount:=2;
            FSDetailMarche.TableauDevisRestant.Rows[1].Text:='';
       end;

end;

Procedure ProcAfficheTravauxRestantMarcheAvenant(Mode:String; NSMarche,NStructureMarche,NStatistiqueMarche,NAvenantMarche:integer);
var i,TA,RowCount,NbrPourcentagePositive:integer; CummulPourcentage,CummulCoef:real;
begin
if(Mode='Importer')or(Mode='Charger')then
begin
FSDetailMarche.TableauDevisRestant.ColCount:=29;
FSDetailMarche.TableauDevisRestant.Cols[1].Text:='N°';
FSDetailMarche.TableauDevisRestant.Cols[2].Text:='C.Article';
FSDetailMarche.TableauDevisRestant.Cols[3].Text:='Désignation';
FSDetailMarche.TableauDevisRestant.Cols[4].Text:='U.M.';
FSDetailMarche.TableauDevisRestant.Cols[5].Text:='Q.Marché';
FSDetailMarche.TableauDevisRestant.Cols[6].Text:='Q.Avenant';
FSDetailMarche.TableauDevisRestant.Cols[7].Text:='Q.Globale';
FSDetailMarche.TableauDevisRestant.Cols[8].Text:='Q.Réal.OM';
FSDetailMarche.TableauDevisRestant.Cols[9].Text:='Q.Réal.OA';
FSDetailMarche.TableauDevisRestant.Cols[10].Text:='Q.Réal.Gle';
FSDetailMarche.TableauDevisRestant.Cols[11].Text:='Q.Rest.OM';
FSDetailMarche.TableauDevisRestant.Cols[12].Text:='Q.Rest.OA';
FSDetailMarche.TableauDevisRestant.Cols[13].Text:='Q.Rest.Gle';
FSDetailMarche.TableauDevisRestant.Cols[14].Text:='Prix U.';
FSDetailMarche.TableauDevisRestant.Cols[15].Text:='M.Marché';
FSDetailMarche.TableauDevisRestant.Cols[16].Text:='M.Avenant';
FSDetailMarche.TableauDevisRestant.Cols[17].Text:='M.Global';
FSDetailMarche.TableauDevisRestant.Cols[18].Text:='M.Réal.OM';
FSDetailMarche.TableauDevisRestant.Cols[19].Text:='M.Réal.OA';
FSDetailMarche.TableauDevisRestant.Cols[20].Text:='M.Réal.Gle';
FSDetailMarche.TableauDevisRestant.Cols[21].Text:='M.Rest.OM';
FSDetailMarche.TableauDevisRestant.Cols[22].Text:='M.Rest.OA';
FSDetailMarche.TableauDevisRestant.Cols[23].Text:='M.Rest.Gle';
FSDetailMarche.TableauDevisRestant.Cols[24].Text:='Trie';
FSDetailMarche.TableauDevisRestant.Cols[25].Text:='C.Produit';
FSDetailMarche.TableauDevisRestant.Cols[26].Text:='Avancement Article %';
FSDetailMarche.TableauDevisRestant.Cols[27].Text:='Coef.%';
FSDetailMarche.TableauDevisRestant.Cols[28].Text:='Avancement Projet.%';
end;

TA:=0;
i:=0;
if(Mode='Importer')then TA:=ImporterTravauxRestant(NSMarche,NStructureMarche,NStatistiqueMarche,TTravauxRestant);
if(Mode='Charger')then TA:=ChargementTravauxRestant(TTravauxRestant);

NbrPourcentagePositive:=0;
CummulPourcentage:=0;
CummulCoef:=0;

RowCount:=TA;
if(RowCount>0)then
for i:=1 to RowCount do
begin
     FSDetailMarche.TableauDevisRestant.Rows[i].Text:='';
     FSDetailMarche.TableauDevisRestant.DefaultRowHeight:=18;
     FSDetailMarche.TableauDevisRestant.Cells[0,i]:=inttostr(i);
     FSDetailMarche.TableauDevisRestant.Cells[1,i]:=inttostr(TTravauxRestant[i-1].NDetailMarche);
     FSDetailMarche.TableauDevisRestant.Cells[2,i]:=TTravauxRestant[i-1].NArticle;
     FSDetailMarche.TableauDevisRestant.Cells[3,i]:=Firstlaters(TTravauxRestant[i-1].DesignationArticle,strtointeger(FSDetailMarche.EditMaxLetreDesignation.Text));
     FSDetailMarche.TableauDevisRestant.Cells[4,i]:=TTravauxRestant[i-1].UniteM;

     if(TTravauxRestant[i-1].QuantiteOM<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[5,i]:=vergule(floattostr(TTravauxRestant[i-1].QuantiteOM),'3','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[5,i]:='';

     if(TTravauxRestant[i-1].QuantiteOA<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[6,i]:=vergule(floattostr(TTravauxRestant[i-1].QuantiteOA),'3','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[6,i]:='';

     if((TTravauxRestant[i-1].QuantiteOM+TTravauxRestant[i-1].QuantiteOA)<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[7,i]:=vergule(floattostr(TTravauxRestant[i-1].QuantiteOM+TTravauxRestant[i-1].QuantiteOA),'3','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[7,i]:='';

     if(TTravauxRestant[i-1].QuantiteRealiserOM<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[8,i]:=vergule(floattostr(TTravauxRestant[i-1].QuantiteRealiserOM),'3','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[8,i]:='';

     if(TTravauxRestant[i-1].QuantiteRealiserOA<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[9,i]:=vergule(floattostr(TTravauxRestant[i-1].QuantiteRealiserOA),'3','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[9,i]:='';

     if(TTravauxRestant[i-1].QuantiteRealiser<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[10,i]:=vergule(floattostr(TTravauxRestant[i-1].QuantiteRealiser),'3','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[10,i]:='';

     if(TTravauxRestant[i-1].QuantiteRestantOM<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[11,i]:=vergule(floattostr(TTravauxRestant[i-1].QuantiteRestantOM),'3','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[11,i]:='';

     if(TTravauxRestant[i-1].QuantiteRestantOA<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[12,i]:=vergule(floattostr(TTravauxRestant[i-1].QuantiteRestantOA),'3','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[12,i]:='';

     if(TTravauxRestant[i-1].QuantiteRestant<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[13,i]:=vergule(floattostr(TTravauxRestant[i-1].QuantiteRestant),'3','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[13,i]:='';

     if(TTravauxRestant[i-1].PrixUnitaire<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[14,i]:=vergule(floattostr(TTravauxRestant[i-1].PrixUnitaire),'2','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[14,i]:='';

     if(TTravauxRestant[i-1].MontantMarche<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[15,i]:=vergule(floattostr(TTravauxRestant[i-1].MontantMarche),'2','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[15,i]:='';

     if(TTravauxRestant[i-1].MontantAvenant<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[16,i]:=vergule(floattostr(TTravauxRestant[i-1].MontantAvenant),'2','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[16,i]:='';

     if((TTravauxRestant[i-1].MontantMarche+TTravauxRestant[i-1].MontantAvenant)<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[17,i]:=vergule(floattostr(TTravauxRestant[i-1].MontantMarche+TTravauxRestant[i-1].MontantAvenant),'2','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[17,i]:='';

     if(TTravauxRestant[i-1].MontantRealiserOM<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[18,i]:=vergule(floattostr(TTravauxRestant[i-1].MontantRealiserOM),'2','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[18,i]:='';

     if(TTravauxRestant[i-1].MontantRealiserOA<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[19,i]:=vergule(floattostr(TTravauxRestant[i-1].MontantRealiserOA),'2','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[19,i]:='';

     if(TTravauxRestant[i-1].MontantRealiser<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[20,i]:=vergule(floattostr(TTravauxRestant[i-1].MontantRealiser),'2','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[20,i]:='';

     if(TTravauxRestant[i-1].MontantRestantOM<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[21,i]:=vergule(floattostr(TTravauxRestant[i-1].MontantRestantOM),'2','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[21,i]:='';

     if(TTravauxRestant[i-1].MontantRestantOA<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[22,i]:=vergule(floattostr(TTravauxRestant[i-1].MontantRestantOA),'2','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[22,i]:='';

     if(TTravauxRestant[i-1].MontantRestant<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[23,i]:=vergule(floattostr(TTravauxRestant[i-1].MontantRestant),'2','C','')
     else FSDetailMarche.TableauDevisRestant.Cells[23,i]:='';


     FSDetailMarche.TableauDevisRestant.Cells[24,i]:=TTravauxRestant[i-1].CodeTrie;
     FSDetailMarche.TableauDevisRestant.Cells[25,i]:=TTravauxRestant[i-1].CodeProduit;

     if(TTravauxRestant[i-1].PourcentagePhysique<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[26,i]:=vergule(floattostr(TTravauxRestant[i-1].PourcentagePhysique),'2','C','%')
     else FSDetailMarche.TableauDevisRestant.Cells[26,i]:='';

     if(TTravauxRestant[i-1].CoefficientParticipation<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[27,i]:=vergule(floattostr(TTravauxRestant[i-1].CoefficientParticipation),'6','C','%')
     else FSDetailMarche.TableauDevisRestant.Cells[27,i]:='';

     if(TTravauxRestant[i-1].PourcentageGlobal<>0)
     then FSDetailMarche.TableauDevisRestant.Cells[28,i]:=vergule(floattostr(TTravauxRestant[i-1].PourcentageGlobal),'6','C','%')
     else FSDetailMarche.TableauDevisRestant.Cells[28,i]:=''; 

     if(TTravauxRestant[i-1].PourcentageGlobal<>0)then
     begin
          NbrPourcentagePositive:=NbrPourcentagePositive+1;
          CummulPourcentage:=CummulPourcentage+(TTravauxRestant[i-1].PourcentageGlobal);
     end;

     if(TTravauxRestant[i-1].CoefficientParticipation<>0)then
     begin
          CummulCoef:=CummulCoef+(TTravauxRestant[i-1].CoefficientParticipation);
     end;
end;

if(TA>0)then
        begin
             FSDetailMarche.TableauDevisRestant.RowCount:=TA+1;
             FSDetailMarche.TableauDevisRestant.Cells[27,FSDetailMarche.TableauDevisRestant.RowCount-1]:=Vergule(floattostr(CummulCoef),'2','C','%');
             FSDetailMarche.TableauDevisRestant.Cells[28,FSDetailMarche.TableauDevisRestant.RowCount-1]:=Vergule(floattostr(CummulPourcentage),'2','C','%');
        end
        else
        begin
             FSDetailMarche.TableauDevisRestant.RowCount:=2;
             FSDetailMarche.TableauDevisRestant.Rows[1].Text:='';
        end;

FSDetailMarche.TableauDevisRestant.ColWidths[3]:=300;
FSDetailMarche.TableauDevisRestant.ColWidths[24]:=0;
FSDetailMarche.TableauDevisRestant.ColWidths[25]:=0;
AjusterColWidth(FSDetailMarche.TableauDevisRestant,'','3;24;25');

end;

Function ImporterDevisQE(NSMarche,NStructureMarche,NStatistiqueMarche,NAvenantMarche:integer; CumuleArticle:boolean; var TDevisQE:TDevisQEs):integer;
var OK:boolean;   TI,RChoix,icumule:integer;
begin
          SetLength(TDevisQE,0);
          TI:=0;

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
          while not eof(FDetailMarche) do
          begin
               Read(FDetailMarche,RDetailMarche);

               {***** Chois par Lots *****}
               if(FSDetailMarche.RBListelots.Checked=true)then
               begin
                    OK:=false;
                    RChoix:=1;
                    while(RChoix<=FSDetailMarche.TableauChoixLots.RowCount-1)and(OK=false)do
                    begin
                         if((FSDetailMarche.TableauChoixLots.Cells[3,RChoix]='OK')
                         and(firstlaters(Lastlaters(RDetailMarche.CodeTrie,11),2)=firstlaters(FSDetailMarche.TableauChoixLots.Cells[1,RChoix],2)))
                         then
                         begin
                              OK:=true;
                         end;
                    RChoix:=RChoix+1;
                    end;
               end
               else OK:=true;
               {***** Chois par Lots *****}

               if(strtointeger(DTrie('M',RDetailMarche.CodeTrie))=NSMarche)then
               begin
                    if(strtointeger(DTrie('A',RDetailMarche.CodeTrie))=NAvenantMarche)then
                    begin
                         if(NStructureMarche<>0)then
                         begin
                              if(strtointeger(DTrie('S',RDetailMarche.CodeTrie))=NStructureMarche)then
                              begin
                                   OK:=true;
                              end
                              else OK:=false;
                         end
                         else OK:=true;

                         if(OK=true)then
                         begin
                         if(NStatistiqueMarche<>0)then
                         begin
                              if(strtointeger(DTrie('T',RDetailMarche.CodeTrie))=NStatistiqueMarche)then
                              begin
                                   OK:=true;
                              end
                              else OK:=false;
                         end
                         else
                         OK:=true;
                         end;
                    end
                    else OK:=false;
               end
               else OK:=false;

               if(OK=true)then
               begin
                    if(CumuleArticle=true)then
                    begin
                         icumule:=1;
                         while(icumule<=TI)and(OK=true)do
                         begin
                              if(RDetailMarche.CodeStock=TDevisQE[icumule-1].CodeProduit)then
                              begin
                                   OK:=false;
                                   if(FSDetailMarche.RBRemplirePrixU.Checked=true)and(RDetailMarche.PrixUnitaire<>0)
                                   then
                                   begin
                                        TDevisQE[icumule-1].PrixUnitaire:=((TDevisQE[icumule-1].PrixUnitaire*TDevisQE[icumule-1].QuantiteGlobale)+(RDetailMarche.PrixUnitaire*RDetailMarche.QuantiteGlobale))/(TDevisQE[icumule-1].QuantiteGlobale+RDetailMarche.QuantiteGlobale);
                                   end;

                                   if(FSDetailMarche.RBRemplireQuantite.Checked=true)and(RDetailMarche.QuantiteGlobale<>0)
                                   then TDevisQE[icumule-1].QuantiteGlobale:=TDevisQE[icumule-1].QuantiteGlobale+RDetailMarche.QuantiteGlobale;
                              end;
                         icumule:=icumule+1;
                         end;
                    end;
               end;

               if(OK=true)then
               begin
                         TI:=TI+1;
                         SetLength(TDevisQE,TI);
                         TDevisQE[TI-1].NDetailMarche:=RDetailMarche.NDetailMarche;
                         TDevisQE[TI-1].NArticle:=RDetailMarche.NArticle;
                         TDevisQE[TI-1].DesignationArticle:=RDetailMarche.DesignationArticle;
                         TDevisQE[TI-1].UniteM:=RDetailMarche.UniteM;

                         if(FSDetailMarche.RBRemplireQuantite.Checked=true)
                         then TDevisQE[TI-1].QuantiteGlobale:=RDetailMarche.QuantiteGlobale
                         else TDevisQE[TI-1].QuantiteGlobale:=0;

                         if(FSDetailMarche.RBRemplirePrixU.Checked=true)
                         then TDevisQE[TI-1].PrixUnitaire:=RDetailMarche.PrixUnitaire
                         else TDevisQE[TI-1].PrixUnitaire:=0;

                         if(FSDetailMarche.RBRemplireMontantG.Checked=true)
                         then TDevisQE[TI-1].Montant:=TDevisQE[TI-1].QuantiteGlobale*TDevisQE[TI-1].PrixUnitaire
                         else TDevisQE[TI-1].Montant:=0;

                         TDevisQE[TI-1].CodeTrie:=RDetailMarche.CodeTrie;
                         TDevisQE[TI-1].CodeProduit:=RDetailMarche.CodeStock;
               end;
          end;
          TDevisQE:=OrganiseDevisQE(TDevisQE,TI,CumuleArticle,TI);
          ImporterDevisQE:=TI;
end;

procedure TFSDetailMarche.BitBtn81Click(Sender: TObject);
var Montant,TVA:real; i,R,ARow,T,C:integer; OKClasse,OKCharge:boolean; E:char;
    NotCol,UniM:string;
begin

if(FSDetailMarche.RBDetailGlobal.Checked=true)then
begin
     if(FSDetailMarche.MemoDetailMarche.Visible=false)
     then FSDetailMarche.MemoDetailMarche.Visible:=true
     else FSDetailMarche.MemoDetailMarche.Visible:=false;

     Montant:=0;
     for R:=1 to FSDetailMarche.TableauDetailMarche.RowCount-1 do
     begin
          Montant:=Montant+strtoreal(FSDetailMarche.TableauDetailMarche.Cells[5,R])*
                   strtoreal(FSDetailMarche.TableauDetailMarche.Cells[6,R]);
     end;

     FSDetailMarche.MemoDetailMarche.Lines.Clear;

     FSDetailMarche.MemoDetailMarche.Lines.Add('Détail:');
     FSDetailMarche.MemoDetailMarche.Lines.Add('...............');
     FSDetailMarche.MemoDetailMarche.Lines.Add('');

     if(strtointeger(FSDetailMarche.IndiceAfficheStructure.Text)<>0)then
     begin
          FSDetailMarche.MemoDetailMarche.Lines.Add('Structure: '+FSDetailMarche.EditStructureMarche.Text);
          FSDetailMarche.MemoDetailMarche.Lines.Add('');
     end;
     FSDetailMarche.MemoDetailMarche.Lines.Add('Marché N°: ( '+Completezerogauche(FSDetailMarche.EditNSMarche.Text,'2')+' ) '+FSDetailMarche.EditMarche.Text);
     FSDetailMarche.MemoDetailMarche.Lines.Add('');
     FSDetailMarche.MemoDetailMarche.Lines.Add('........................');
     FSDetailMarche.MemoDetailMarche.Lines.Add('');

     FSDetailMarche.MemoDetailMarche.Lines.Add('Montant HT =          '+vergule(floattostr(Montant),'2','C','')+' DA');
     FSDetailMarche.MemoDetailMarche.Lines.Add('');

     TypeProces:='Business'; FichierConcerne:='FStatistiqueMarche';
     if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
     begin
          //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
     end;
     ChStatistiqueMarche:=Adresse;
     assignfile(FStatistiqueMarche,ChStatistiqueMarche);
     if FileExists(ChStatistiqueMarche)then
     Reset(FStatistiqueMarche)
     else Rewrite(FStatistiqueMarche);
     Seek(FStatistiqueMarche,0);
     TVA:=0;
     i:=0;
     while not eof(FStatistiqueMarche) do
     begin
          Read(FStatistiqueMarche,RStatistiqueMarche);
          if(RStatistiqueMarche.NSMarche=strtointeger(FSDetailMarche.EditNSMarche.Text))then
          begin
               TVA:=TVA+RStatistiqueMarche.PourcentageStatistiqueMarche*RStatistiqueMarche.TVAStatistiqueMarche/100;
               FSDetailMarche.MemoDetailMarche.Lines.Add(RStatistiqueMarche.StatistiqueMarche+' ( '+floattostr(RStatistiqueMarche.PourcentageStatistiqueMarche)+' % ) =          '+vergule(floattostr(Montant*RStatistiqueMarche.PourcentageStatistiqueMarche/100),'2','C','')+' DA');
               FSDetailMarche.MemoDetailMarche.Lines.Add('');
          end;
     end;

     FSDetailMarche.MemoDetailMarche.Lines.Add('Montant TVA ( '+vergule(floattostr(TVA),'2','C','')+' %) =          '+vergule(floattostr(Montant*TVA/100),'2','C','')+' DA');
     FSDetailMarche.MemoDetailMarche.Lines.Add('');
     FSDetailMarche.MemoDetailMarche.Lines.Add('Montant TTC =          '+vergule(floattostr(Montant*(1+(TVA/100))),'2','C','')+' DA');
     FSDetailMarche.MemoDetailMarche.Lines.Add('');
     FSDetailMarche.MemoDetailMarche.Height:=FSDetailMarche.MemoDetailMarche.Lines.Capacity*15;
end
else
begin
     FSDetailMarche.TableauDetailleParClasse.ColCount:=7;
     FSDetailMarche.AfficheDetailleParClasse.Visible:=true;
     FSDetailMarche.TableauDetailleParClasse.Cols[0].Text:='N°';
     FSDetailMarche.TableauDetailleParClasse.Cols[1].Text:='Code';
     FSDetailMarche.TableauDetailleParClasse.Cols[2].Text:='Désignation';
     FSDetailMarche.TableauDetailleParClasse.Cols[3].Text:='U.M';
     FSDetailMarche.TableauDetailleParClasse.Cols[4].Text:='Quantité';
     FSDetailMarche.TableauDetailleParClasse.Cols[5].Text:='Prix U.';
     FSDetailMarche.TableauDetailleParClasse.Cols[6].Text:='Montant';

     if(FSDetailMarche.RBDetailParFamille.Checked=true)then begin T:=2; E:='5'; C:=4; FSDetailMarche.EditTitreParClasse.Text:='Détail par Familles'; end;
     if(FSDetailMarche.RBDetailParSFamille.Checked=true)then begin T:=4; E:='0'; C:=5; FSDetailMarche.EditTitreParClasse.Text:='Détail par Sous-Familles'; end;
     if(FSDetailMarche.RBDetailParArticle.Checked=true)then begin T:=8; E:='0'; C:=6; FSDetailMarche.EditTitreParClasse.Text:='Détail par Articles'; end;

     i:=0;
     for ARow:=1 to FSDetailMarche.TableauDetailMarche.RowCount-1 do
     begin
          if(T=2)then
          begin
               if(Firstlaters(DTrie('P',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]),2)<>'00')
               then OKCharge:=true
               else OKCharge:=false;
          end;

          if(T=4)then
          begin
               if(Firstlaters(DTrie('P',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]),2)<>'00')
               then
               begin
                    if(Lastlaters(Firstlaters(DTrie('P',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]),4),2)<>'00')
                    then OKCharge:=true
                    else OKCharge:=false;
               end
               else OKCharge:=false;
          end;

          if(T=8)then
          begin
               if(Lastlaters(DTrie('P',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]),4)<>'0000')
               then OKCharge:=true
               else OKCharge:=false;
          end;


     if(OKCharge=true)
     then
     begin
          R:=1;
          OKClasse:=false;
          while(R<=i)and(OKClasse=false)do
          begin
               if(FSDetailMarche.TableauDetailleParClasse.Cells[1,R]=Completezerodroite('72'+Firstlaters(DTrie('P',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]),T),E))
               then
               begin
                    OKClasse:=true;
                    Montant:=strtoreal(FSDetailMarche.TableauDetailMarche.Cells[5,ARow])*
                             strtoreal(FSDetailMarche.TableauDetailMarche.Cells[6,ARow]);
                    FSDetailMarche.TableauDetailleParClasse.Cells[4,R]:=Vergule(floattostr(strtoreal(FSDetailMarche.TableauDetailleParClasse.Cells[4,R])+strtoreal(FSDetailMarche.TableauDetailMarche.Cells[5,ARow])),'2','C','');
                    FSDetailMarche.TableauDetailleParClasse.Cells[6,R]:=Vergule(floattostr(strtoreal(FSDetailMarche.TableauDetailleParClasse.Cells[6,R])+Montant),'2','C','');
               end;
          R:=R+1;
          end;

          if(OKClasse=false)then
          begin
               i:=i+1;
               FSDetailMarche.TableauDetailleParClasse.Rows[i].Text:='';
               FSDetailMarche.TableauDetailleParClasse.Cells[0,i]:=inttostr(i);
               FSDetailMarche.TableauDetailleParClasse.Cells[1,i]:=Completezerodroite('72'+Firstlaters(DTrie('P',FSDetailMarche.TableauDetailMarche.Cells[7,ARow]),T),E);
               Montant:=strtoreal(FSDetailMarche.TableauDetailMarche.Cells[5,ARow])*
                        strtoreal(FSDetailMarche.TableauDetailMarche.Cells[6,ARow]);
               FSDetailMarche.TableauDetailleParClasse.Cells[4,R]:=FSDetailMarche.TableauDetailMarche.Cells[5,ARow];
               FSDetailMarche.TableauDetailleParClasse.Cells[6,i]:=floattostr(Montant);
          end;
     end;
     end;
     if(i>0)then
            begin
                 FSDetailMarche.TableauDetailleParClasse.RowCount:=i+1;
                 FSDetailMarche.TableauDetailleParClasse.Height:=MinInt(((i+1)*20),510);
                 FSDetailMarche.AfficheDetailleParClasse.Height:=FSDetailMarche.TableauDetailleParClasse.Height+19;
            end
            else
            begin
                 FSDetailMarche.TableauDetailleParClasse.RowCount:=2;
                 FSDetailMarche.TableauDetailleParClasse.Rows[1].Text:='';
                 FSDetailMarche.TableauDetailleParClasse.Height:=89;
                 FSDetailMarche.AfficheDetailleParClasse.Height:=105;
            end;
for R:=1 to FSDetailMarche.TableauDetailleParClasse.RowCount-1 do
begin
     if(DesigCompte('Marche',FSDetailMarche.TableauDetailleParClasse.Cells[1,R],UniM)='???')
     then
     begin
          i:=0;
          while(C-i>0)and(DesigCompte('Marche',Firstlaters(FSDetailMarche.TableauDetailleParClasse.Cells[1,R],C-i),UniM)='???')do
          begin
               i:=i+1;
          end;

          if(FSDetailMarche.RBUtiliseFamilleMarcheDM.Checked=true)then FSDetailMarche.TableauDetailleParClasse.Cells[2,R]:=DesigCompte('Marche',Firstlaters(FSDetailMarche.TableauDetailleParClasse.Cells[1,R],C-i),UniM)
          else
          if(FSDetailMarche.RBUtiliseDetailMarcheDM.Checked=true)then FSDetailMarche.TableauDetailleParClasse.Cells[2,R]:=RechercheDetailMarche(strtointeger(FSDetailMarche.EditNSMarche.Text),T,E,Firstlaters(FSDetailMarche.TableauDetailleParClasse.Cells[1,R],C-i),UniM);
          FSDetailMarche.TableauDetailleParClasse.Cells[3,R]:=UniM;
          FSDetailMarche.TableauDetailleParClasse.Cells[1,R]:=FSDetailMarche.TableauDetailleParClasse.Cells[1,R]+' (Classe '+inttostr(C-i)+')';
     end
     else
     begin
          if(FSDetailMarche.RBUtiliseFamilleMarcheDM.Checked=true)then FSDetailMarche.TableauDetailleParClasse.Cells[2,R]:=DesigCompte('Marche',FSDetailMarche.TableauDetailleParClasse.Cells[1,R],UniM)
          else
          if(FSDetailMarche.RBUtiliseDetailMarcheDM.Checked=true)then FSDetailMarche.TableauDetailleParClasse.Cells[2,R]:=RechercheDetailMarche(strtointeger(FSDetailMarche.EditNSMarche.Text),T,E,FSDetailMarche.TableauDetailleParClasse.Cells[1,R],UniM);
          FSDetailMarche.TableauDetailleParClasse.Cells[3,R]:=UniM;
     end;

     if strtoreal(FSDetailMarche.TableauDetailleParClasse.Cells[4,R])>0
     then FSDetailMarche.TableauDetailleParClasse.Cells[5,R]:=Vergule(floattostr(strtoreal(FSDetailMarche.TableauDetailleParClasse.Cells[6,R])/strtoreal(FSDetailMarche.TableauDetailleParClasse.Cells[4,R])),'2','C','')
     else FSDetailMarche.TableauDetailleParClasse.Cells[5,R]:='';

     if strtoreal(FSDetailMarche.TableauDetailleParClasse.Cells[4,R])=0 then  FSDetailMarche.TableauDetailleParClasse.Cells[4,R]:='';
     if strtoreal(FSDetailMarche.TableauDetailleParClasse.Cells[5,R])=0 then  FSDetailMarche.TableauDetailleParClasse.Cells[5,R]:='';
     if strtoreal(FSDetailMarche.TableauDetailleParClasse.Cells[6,R])=0 then  FSDetailMarche.TableauDetailleParClasse.Cells[6,R]:='';
end;

if(FSDetailMarche.RBDetailParArticle.Checked=true)then NotCol:='' else NotCol:='3;4';
for i:=1 to FSDetailMarche.TableauDetailleParClasse.ColCount-1 do if existenumintexte(inttostr(i),NotCol) then FSDetailMarche.TableauDetailleParClasse.ColWidths[i]:=0;
AjusterColWidth(FSDetailMarche.TableauDetailleParClasse,'',NotCol);
for i:=1 to FSDetailMarche.TableauDetailleParClasse.ColCount-1 do
begin
     if(FSDetailMarche.TableauDetailleParClasse.ColWidths[i]>strtointeger(FSDetailMarche.EditMaxColWidth.Text))then FSDetailMarche.TableauDetailleParClasse.ColWidths[i]:=strtointeger(FSDetailMarche.EditMaxColWidth.Text);
end; 

FSDetailMarche.TableauDetailleParClasse.SetFocus;
end;

FSDetailMarche.OptionDetailleParClasse.Visible:=false;
end;

procedure TFSDetailMarche.BitBtn84Click(Sender: TObject);
var   R,m,l,NSMarche,Position,HeightRow,HeightMax:integer; OKHeightMax:boolean;
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MI',true)then exit;

if(FSDetailMarche.TableauDevisRestant.Visible=true)then
begin
NSMarche:=strtointeger(FSDetailMarche.EditNSMarche.Text);
RMarche:=ChercherMarche(NSMarche);
OpenFParc(RParc);
PrintDevisRestant.EtatEntreprise.Caption:=RParc.Text1;
PrintDevisRestant.EtatMarche.Caption:=RMarche.Marche;
PrintDevisRestant.EtatTitre.Caption:='DEVIS QUANTITATIF ET ESTIMATIF (R.A.R)';

HeightMax:=600;

for l:=1 to 30 do ClearDevisRestant(l,false);

R:=1;
m:=1;
l:=0;
Position:=32;
while(R<=FSDetailMarche.TableauDevisRestant.RowCount-1)do
begin
     if(FSDetailMarche.RBSuspendePrint.Checked=true)then Exit;

l:=l+1;
FSDetailMarche.TestePrintDevis.Lines.Text:=FSDetailMarche.TableauDevisRestant.Cells[3,R];
HeightRow:=FSDetailMarche.TestePrintDevis.Lines.Count*20;
OKHeightMax:=true;
if((Position+HeightRow)<HeightMax)then
begin
     OKHeightMax:=false;
     ClearDevisRestant(l,true);

     if(l=1)then
     begin
          PrintDevisRestant.Code1.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig1.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um1.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche1.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser1.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante1.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix1.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche1.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser1.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant1.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=2)then
     begin
          PrintDevisRestant.Code2.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig2.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um2.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche2.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser2.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante2.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix2.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche2.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser2.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant2.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=3)then
     begin
          PrintDevisRestant.Code3.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig3.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um3.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche3.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser3.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante3.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix3.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche3.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser3.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant3.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=4)then
     begin
          PrintDevisRestant.Code4.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig4.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um4.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche4.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser4.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante4.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix4.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche4.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser4.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant4.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=5)then
     begin
          PrintDevisRestant.Code5.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig5.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um5.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche5.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser5.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante5.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix5.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche5.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser5.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant5.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=6)then
     begin
          PrintDevisRestant.Code6.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig6.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um6.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche6.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser6.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante6.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix6.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche6.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser6.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant6.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=7)then
     begin
          PrintDevisRestant.Code7.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig7.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um7.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche7.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser7.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante7.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix7.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche7.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser7.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant7.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=8)then
     begin
          PrintDevisRestant.Code8.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig8.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um8.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche8.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser8.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante8.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix8.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche8.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser8.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant8.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=9)then
     begin
          PrintDevisRestant.Code9.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig9.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um9.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche9.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser9.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante9.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix9.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche9.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser9.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant9.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=10)then
     begin
          PrintDevisRestant.Code10.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig10.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um10.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche10.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser10.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante10.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix10.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche10.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser10.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant10.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=11)then
     begin
          PrintDevisRestant.Code11.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig11.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um11.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche11.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser11.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante11.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix11.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche11.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser11.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant11.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=12)then
     begin
          PrintDevisRestant.Code12.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig12.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um12.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche12.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser12.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante12.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix12.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche12.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser12.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant12.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=13)then
     begin
          PrintDevisRestant.Code13.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig13.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um13.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche13.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser13.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante13.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix13.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche13.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser13.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant13.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=14)then
     begin
          PrintDevisRestant.Code14.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig14.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um14.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche14.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser14.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante14.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix14.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche14.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser14.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant14.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=15)then
     begin
          PrintDevisRestant.Code15.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig15.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um15.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche15.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser15.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante15.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix15.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche15.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser15.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant15.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=16)then
     begin
          PrintDevisRestant.Code16.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig16.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um16.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche16.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser16.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante16.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix16.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche16.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser16.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant16.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=17)then
     begin
          PrintDevisRestant.Code17.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig17.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um17.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche17.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser17.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante17.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix17.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche17.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser17.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant17.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=18)then
     begin
          PrintDevisRestant.Code18.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig18.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um18.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche18.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser18.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante18.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix18.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche18.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser18.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant18.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=19)then
     begin
          PrintDevisRestant.Code19.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig19.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um19.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche19.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser19.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante19.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix19.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche19.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser19.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant19.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=20)then
     begin
          PrintDevisRestant.Code20.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig20.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um20.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche20.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser20.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante20.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix20.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche20.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser20.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant20.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=21)then
     begin
          PrintDevisRestant.Code21.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig21.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um21.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche21.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser21.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante21.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix21.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche21.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser21.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant21.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=22)then
     begin
          PrintDevisRestant.Code22.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig22.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um22.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche22.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser22.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante22.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix22.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche22.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser22.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant22.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=23)then
     begin
          PrintDevisRestant.Code23.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig23.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um23.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche23.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser23.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante23.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix23.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche23.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser23.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant23.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=24)then
     begin
          PrintDevisRestant.Code24.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig24.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um24.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche24.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser24.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante24.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix24.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche24.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser24.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant24.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=25)then
     begin
          PrintDevisRestant.Code25.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig25.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um25.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche25.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser25.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante25.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix25.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche25.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser25.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant25.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=26)then
     begin
          PrintDevisRestant.Code26.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig26.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um26.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche26.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser26.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante26.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix26.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche26.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser26.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant26.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=27)then
     begin
          PrintDevisRestant.Code27.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig27.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um27.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche27.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser27.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante27.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix27.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche27.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser27.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant27.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=28)then
     begin
          PrintDevisRestant.Code28.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig28.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um28.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche28.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser28.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante28.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix28.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche28.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser28.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant28.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=29)then
     begin
          PrintDevisRestant.Code29.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig29.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um29.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche29.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser29.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante29.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix29.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche29.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser29.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant29.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;
     if(l=30)then
     begin
          PrintDevisRestant.Code30.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[2,R]);
          PrintDevisRestant.Desig30.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[3,R]);
          PrintDevisRestant.Um30.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[4,R]);
          PrintDevisRestant.QMarche30.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[7,R]);
          PrintDevisRestant.QRealiser30.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[10,R]);
          PrintDevisRestant.Qrestante30.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[13,R]);
          PrintDevisRestant.Prix30.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[14,R]);
          PrintDevisRestant.MMarche30.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[17,R]);
          PrintDevisRestant.MRealiser30.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[20,R]);
          PrintDevisRestant.MRestant30.Lines.Add(FSDetailMarche.TableauDevisRestant.Cells[23,R]);
     end;

     HeightDevisRestant(l,Position);

end
else R:=R-1;

if(l=30)or(R=FSDetailMarche.TableauDevisRestant.RowCount-1)or(OKHeightMax=true)then
     begin
          PrintDevisRestant.NumPage.Caption:='Page N°: '+Completezerogauche(inttostr(m),'2');
          PrintDevisRestant.Preview;
          for l:=1 to 30 do ClearDevisRestant(l,false);
          Position:=32;
          m:=m+1;
          l:=0;
     end;

R:=R+1;
end;
end;//DQR

if(FSDetailMarche.TableauDevisQE.Visible=true)then
begin
NSMarche:=strtointeger(FSDetailMarche.EditNSMarche.Text);
RMarche:=ChercherMarche(NSMarche);
OpenFParc(RParc);
PrintDevisMarche.EtatEntreprise.Caption:=RParc.Text1;
PrintDevisMarche.EtatMarche.Caption:=RMarche.Marche;
PrintDevisMarche.EtatTitre.Caption:='DEVIS QUANTITATIF ET ESTIMATIF';

HeightMax:=990;

for l:=1 to 50 do ClearDevisQE(l,false);

R:=1;
m:=1;
l:=0;
Position:=32;
while(R<=FSDetailMarche.TableauDevisQE.RowCount-1)do
begin
l:=l+1;
FSDetailMarche.TestePrintDevis.Lines.Text:=FSDetailMarche.TableauDevisQE.Cells[3,R];
HeightRow:=FSDetailMarche.TestePrintDevis.Lines.Count*20;
OKHeightMax:=true;
if((Position+HeightRow)<HeightMax)then
begin
     OKHeightMax:=false;
     ClearDevisQE(l,true);

     if(l=1)then
     begin
          PrintDevisMarche.Code1.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig1.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um1.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite1.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix1.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant1.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=2)then
     begin
          PrintDevisMarche.Code2.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig2.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um2.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite2.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix2.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant2.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=3)then
     begin
          PrintDevisMarche.Code3.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig3.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um3.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite3.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix3.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant3.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=4)then
     begin
          PrintDevisMarche.Code4.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig4.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um4.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite4.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix4.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant4.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=5)then
     begin
          PrintDevisMarche.Code5.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig5.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um5.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite5.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix5.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant5.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=6)then
     begin
          PrintDevisMarche.Code6.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig6.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um6.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite6.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix6.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant6.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=7)then
     begin
          PrintDevisMarche.Code7.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig7.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um7.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite7.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix7.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant7.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=8)then
     begin
          PrintDevisMarche.Code8.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig8.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um8.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite8.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix8.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant8.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=9)then
     begin
          PrintDevisMarche.Code9.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig9.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um9.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite9.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix9.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant9.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=10)then
     begin
          PrintDevisMarche.Code10.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig10.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um10.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite10.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix10.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant10.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=11)then
     begin
          PrintDevisMarche.Code11.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig11.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um11.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite11.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix11.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant11.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=12)then
     begin
          PrintDevisMarche.Code12.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig12.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um12.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite12.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix12.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant12.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=13)then
     begin
          PrintDevisMarche.Code13.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig13.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um13.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite13.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix13.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant13.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=14)then
     begin
          PrintDevisMarche.Code14.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig14.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um14.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite14.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix14.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant14.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=15)then
     begin
          PrintDevisMarche.Code15.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig15.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um15
          .Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite15.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix15.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant15.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=16)then
     begin
          PrintDevisMarche.Code16.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig16.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um16.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite16.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix16.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant16.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=17)then
     begin
          PrintDevisMarche.Code17.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig17.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um17.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite17.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix17.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant17.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=18)then
     begin
          PrintDevisMarche.Code18.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig18.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um18.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite18.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix18.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant18.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=19)then
     begin
          PrintDevisMarche.Code19.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig19.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um19.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite19.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix19.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant19.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=20)then
     begin
          PrintDevisMarche.Code20.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig20.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um20.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite20.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix20.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant20.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=21)then
     begin
          PrintDevisMarche.Code21.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig21.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um21.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite21.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix21.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant21.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=22)then
     begin
          PrintDevisMarche.Code22.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig22.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um22.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite22.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix22.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant22.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=23)then
     begin
          PrintDevisMarche.Code23.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig23.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um23.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite23.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix23.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant23.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=24)then
     begin
          PrintDevisMarche.Code24.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig24.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um24.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite24.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix24.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant24.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=25)then
     begin
          PrintDevisMarche.Code25.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig25.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um25.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite25.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix25.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant25.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=26)then
     begin
          PrintDevisMarche.Code26.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig26.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um26.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite26.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix26.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant26.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=27)then
     begin
          PrintDevisMarche.Code27.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig27.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um27.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite27.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix27.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant27.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=28)then
     begin
          PrintDevisMarche.Code28.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig28.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um28.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite28.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix28.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant28.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=29)then
     begin
          PrintDevisMarche.Code29.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig29.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um29.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite29.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix29.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant29.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=30)then
     begin
          PrintDevisMarche.Code30.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig30.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um30.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite30.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix30.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant30.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=31)then
     begin
          PrintDevisMarche.Code31.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig31.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um31.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite31.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix31.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant31.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=32)then
     begin
          PrintDevisMarche.Code32.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig32.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um32.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite32.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix32.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant32.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=33)then
     begin
          PrintDevisMarche.Code33.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig33.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um33.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite33.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix33.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant33.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=34)then
     begin
          PrintDevisMarche.Code34.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig34.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um34.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite34.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix34.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant34.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=35)then
     begin
          PrintDevisMarche.Code35.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig35.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um35.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite35.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix35.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant35.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=36)then
     begin
          PrintDevisMarche.Code36.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig36.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um36.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite36.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix36.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant36.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=37)then
     begin
          PrintDevisMarche.Code37.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig37.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um37.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite37.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix37.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant37.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=38)then
     begin
          PrintDevisMarche.Code38.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig38.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um38.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite38.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix38.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant38.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=39)then
     begin
          PrintDevisMarche.Code39.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig39.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um39.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite39.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix39.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant39.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=40)then
     begin
          PrintDevisMarche.Code40.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig40.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um40.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite40.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix40.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant40.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=41)then
     begin
          PrintDevisMarche.Code41.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig41.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um41.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite41.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix41.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant41.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=42)then
     begin
          PrintDevisMarche.Code42.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig42.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um42.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite42.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix42.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant42.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=43)then
     begin
          PrintDevisMarche.Code43.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig43.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um43.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite43.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix43.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant43.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=44)then
     begin
          PrintDevisMarche.Code44.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig44.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um44.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite44.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix44.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant44.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=45)then
     begin
          PrintDevisMarche.Code45.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig45.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um45.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite45.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix45.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant45.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=46)then
     begin
          PrintDevisMarche.Code46.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig46.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um46.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite46.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix46.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant46.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=47)then
     begin
          PrintDevisMarche.Code47.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig47.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um47.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite47.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix47.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant47.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=48)then
     begin
          PrintDevisMarche.Code48.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig48.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um48.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite48.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix48.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant48.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=49)then
     begin
          PrintDevisMarche.Code49.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig49.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um49.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite49.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix49.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant49.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;
     if(l=50)then
     begin
          PrintDevisMarche.Code50.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[2,R]);
          PrintDevisMarche.Desig50.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[3,R]);
          PrintDevisMarche.Um50.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[4,R]);
          PrintDevisMarche.Quantite50.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[5,R]);
          PrintDevisMarche.Prix50.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[6,R]);
          PrintDevisMarche.Montant50.Lines.Add(FSDetailMarche.TableauDevisQE.Cells[9,R]);
     end;

     HeightDevisQE(l,Position);

end
else R:=R-1;

if(l=50)or(R=FSDetailMarche.TableauDevisQE.RowCount-1)or(OKHeightMax=true)then
     begin
          PrintDevisMarche.NumPage.Caption:='Page N°: '+Completezerogauche(inttostr(m),'2');
          PrintDevisMarche.Preview;
          for l:=1 to 50 do ClearDevisQE(l,false);
          Position:=32;
          m:=m+1;
          l:=0;
     end;

R:=R+1;
end;
end;//DQE
end;

procedure TFSDetailMarche.BitBtn85Click(Sender: TObject);
var OKPrint,OK:boolean;  R,l,m,n,AjoutLigne,NSMarche,NStructureMarche,NStatistiqueMarche:integer;
    MontantMarcheFixe,MontantMarche,TVAMarche:real; TitreRecape:string;
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MI',true)then exit;

NSMarche:=strtointeger(FSDetailMarche.EditNSMarche.Text);
NStructureMarche:=strtointeger(FSDetailMarche.IndiceAfficheStructure.Text)*strtointeger(FSDetailMarche.EditNStructureMarche.Text);
NStatistiqueMarche:=strtointeger(FSDetailMarche.EditNStatistiqueMarche.Text)*strtointeger(FSDetailMarche.IndiceAfficheStatistique.Text);

RStructureMarche:=ChercherStructureMarche(NSMarche,NStructureMarche);
RStatistiqueMarche:=ChercherStatistiqueMarche(NSMarche,NStatistiqueMarche);
RMarche:=ChercherMarche(NSMarche);

TitreRecape:='';
if(RStructureMarche.StructureMarche<>'')then TitreRecape:=TitreRecape+RStructureMarche.StructureMarche;
if(RStatistiqueMarche.StatistiqueMarche<>'')then TitreRecape:=TitreRecape+': '+RStatistiqueMarche.StatistiqueMarche;

if((RStructureMarche.StructureMarche='')
and(RStatistiqueMarche.StatistiqueMarche=''))
then TitreRecape:='Marché Global';

OpenFParc(RParc);
PrintRecapitulationParStructure.EtatEntreprise.Caption:=RParc.Text1;
PrintRecapitulationParStructure.EtatMarche.Caption:=RMarche.Marche;
PrintRecapitulationParStructure.EtatTitre.Caption:='RECAPITULATION DU '+TitreRecape;

for l:=1 to 25 do ClearRecapitulationParStructure(l,false);
for l:=1 to 25 do InitialisationRecapitulationParStructure(l,l);

R:=1;
m:=1;
L:=0;
PrintRecapitulationParStructure.Designation.Lines.Text:=FSDetailMarche.TableauRecapitulationParStructure.Cells[2,0];
PrintRecapitulationParStructure.Montant.Lines.Text:=FSDetailMarche.TableauRecapitulationParStructure.Cells[4,0];
while(R<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
begin
     l:=l+1;
     ClearRecapitulationParStructure(l,true);
     InitialisationRecapitulationParStructure(R,l);

     if(R=((m-1)*25)+1)then
     begin
          PrintRecapitulationParStructure.Designation1.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant1.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+2)then
     begin
          PrintRecapitulationParStructure.Designation2.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant2.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+3)then
     begin
          PrintRecapitulationParStructure.Designation3.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant3.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+4)then
     begin
          PrintRecapitulationParStructure.Designation4.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant4.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+5)then
     begin
          PrintRecapitulationParStructure.Designation5.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant5.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+6)then
     begin
          PrintRecapitulationParStructure.Designation6.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant6.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+7)then
     begin
          PrintRecapitulationParStructure.Designation7.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant7.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+8)then
     begin
          PrintRecapitulationParStructure.Designation8.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant8.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+9)then
     begin
          PrintRecapitulationParStructure.Designation9.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant9.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+10)then
     begin
          PrintRecapitulationParStructure.Designation10.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant10.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+11)then
     begin
          PrintRecapitulationParStructure.Designation11.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant11.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+12)then
     begin
          PrintRecapitulationParStructure.Designation12.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant12.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+13)then
     begin
          PrintRecapitulationParStructure.Designation13.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant13.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+14)then
     begin
          PrintRecapitulationParStructure.Designation14.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant14.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+15)then
     begin
          PrintRecapitulationParStructure.Designation15.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant15.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+16)then
     begin
          PrintRecapitulationParStructure.Designation16.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant16.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+17)then
     begin
          PrintRecapitulationParStructure.Designation17.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant17.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+18)then
     begin
          PrintRecapitulationParStructure.Designation18.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant18.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+19)then
     begin
          PrintRecapitulationParStructure.Designation19.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant19.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+20)then
     begin
          PrintRecapitulationParStructure.Designation20.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant20.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+21)then
     begin
          PrintRecapitulationParStructure.Designation21.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant21.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+22)then
     begin
          PrintRecapitulationParStructure.Designation22.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant22.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+23)then
     begin
          PrintRecapitulationParStructure.Designation23.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant23.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+24)then
     begin
          PrintRecapitulationParStructure.Designation24.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant24.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;
     if(R=((m-1)*25)+25)then
     begin
          PrintRecapitulationParStructure.Designation25.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[2,R]);
          PrintRecapitulationParStructure.Montant25.Lines.Add(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]);
     end;

     if(l=25)or(R=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)then
     begin
          PrintRecapitulationParStructure.LigneFin.Top:=(l*19)+21;
          PrintRecapitulationParStructure.ColonneFin.Height:=(l*19)+27;
          if(R=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)
          then TotalRecapitulationParStructure(true)
          else TotalRecapitulationParStructure(false);
          PrintRecapitulationParStructure.Preview;
          l:=0;
          for n:=(R+1)to MinInt((R+25),FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
          begin
               l:=l+1;
               InitialisationRecapitulationParStructure(n,l);
          end;

          for l:=1 to 25 do ClearRecapitulationParStructure(l,false);
          m:=m+1;
          l:=0;
     end;

R:=R+1;
end;

end;

Procedure ClearDevisRestant(Indice:integer; Visible:boolean);
begin
     if(Indice=1)then
     begin
          PrintDevisRestant.Code1.Lines.Clear;       PrintDevisRestant.Code1.Enabled:=Visible;
          PrintDevisRestant.Desig1.Lines.Clear;      PrintDevisRestant.Desig1.Enabled:=Visible;
          PrintDevisRestant.Um1.Lines.Clear;         PrintDevisRestant.Um1.Enabled:=Visible;
          PrintDevisRestant.QMarche1.Lines.Clear;    PrintDevisRestant.QMarche1.Enabled:=Visible;
          PrintDevisRestant.QRealiser1.Lines.Clear;  PrintDevisRestant.QRealiser1.Enabled:=Visible;
          PrintDevisRestant.Qrestante1.Lines.Clear;  PrintDevisRestant.Qrestante1.Enabled:=Visible;
          PrintDevisRestant.Prix1.Lines.Clear;       PrintDevisRestant.Prix1.Enabled:=Visible;
          PrintDevisRestant.MMarche1.Lines.Clear;    PrintDevisRestant.MMarche1.Enabled:=Visible;
          PrintDevisRestant.MRealiser1.Lines.Clear;  PrintDevisRestant.MRealiser1.Enabled:=Visible;
          PrintDevisRestant.MRestant1.Lines.Clear;   PrintDevisRestant.MRestant1.Enabled:=Visible;
     end;
     if(Indice=2)then
     begin
          PrintDevisRestant.Code2.Lines.Clear;       PrintDevisRestant.Code2.Enabled:=Visible;
          PrintDevisRestant.Desig2.Lines.Clear;      PrintDevisRestant.Desig2.Enabled:=Visible;
          PrintDevisRestant.Um2.Lines.Clear;         PrintDevisRestant.Um2.Enabled:=Visible;
          PrintDevisRestant.QMarche2.Lines.Clear;    PrintDevisRestant.QMarche2.Enabled:=Visible;
          PrintDevisRestant.QRealiser2.Lines.Clear;  PrintDevisRestant.QRealiser2.Enabled:=Visible;
          PrintDevisRestant.Qrestante2.Lines.Clear;  PrintDevisRestant.Qrestante2.Enabled:=Visible;
          PrintDevisRestant.Prix2.Lines.Clear;       PrintDevisRestant.Prix2.Enabled:=Visible;
          PrintDevisRestant.MMarche2.Lines.Clear;    PrintDevisRestant.MMarche2.Enabled:=Visible;
          PrintDevisRestant.MRealiser2.Lines.Clear;  PrintDevisRestant.MRealiser2.Enabled:=Visible;
          PrintDevisRestant.MRestant2.Lines.Clear;   PrintDevisRestant.MRestant2.Enabled:=Visible;
     end;
     if(Indice=3)then
     begin
          PrintDevisRestant.Code3.Lines.Clear;       PrintDevisRestant.Code3.Enabled:=Visible;
          PrintDevisRestant.Desig3.Lines.Clear;      PrintDevisRestant.Desig3.Enabled:=Visible;
          PrintDevisRestant.Um3.Lines.Clear;         PrintDevisRestant.Um3.Enabled:=Visible;
          PrintDevisRestant.QMarche3.Lines.Clear;    PrintDevisRestant.QMarche3.Enabled:=Visible;
          PrintDevisRestant.QRealiser3.Lines.Clear;  PrintDevisRestant.QRealiser3.Enabled:=Visible;
          PrintDevisRestant.Qrestante3.Lines.Clear;  PrintDevisRestant.Qrestante3.Enabled:=Visible;
          PrintDevisRestant.Prix3.Lines.Clear;       PrintDevisRestant.Prix3.Enabled:=Visible;
          PrintDevisRestant.MMarche3.Lines.Clear;    PrintDevisRestant.MMarche3.Enabled:=Visible;
          PrintDevisRestant.MRealiser3.Lines.Clear;  PrintDevisRestant.MRealiser3.Enabled:=Visible;
          PrintDevisRestant.MRestant3.Lines.Clear;   PrintDevisRestant.MRestant3.Enabled:=Visible;
     end;
     if(Indice=4)then
     begin
          PrintDevisRestant.Code4.Lines.Clear;       PrintDevisRestant.Code4.Enabled:=Visible;
          PrintDevisRestant.Desig4.Lines.Clear;      PrintDevisRestant.Desig4.Enabled:=Visible;
          PrintDevisRestant.Um4.Lines.Clear;         PrintDevisRestant.Um4.Enabled:=Visible;
          PrintDevisRestant.QMarche4.Lines.Clear;    PrintDevisRestant.QMarche4.Enabled:=Visible;
          PrintDevisRestant.QRealiser4.Lines.Clear;  PrintDevisRestant.QRealiser4.Enabled:=Visible;
          PrintDevisRestant.Qrestante4.Lines.Clear;  PrintDevisRestant.Qrestante4.Enabled:=Visible;
          PrintDevisRestant.Prix4.Lines.Clear;       PrintDevisRestant.Prix4.Enabled:=Visible;
          PrintDevisRestant.MMarche4.Lines.Clear;    PrintDevisRestant.MMarche4.Enabled:=Visible;
          PrintDevisRestant.MRealiser4.Lines.Clear;  PrintDevisRestant.MRealiser4.Enabled:=Visible;
          PrintDevisRestant.MRestant4.Lines.Clear;   PrintDevisRestant.MRestant4.Enabled:=Visible;
     end;
     if(Indice=5)then
     begin
          PrintDevisRestant.Code5.Lines.Clear;       PrintDevisRestant.Code5.Enabled:=Visible;
          PrintDevisRestant.Desig5.Lines.Clear;      PrintDevisRestant.Desig5.Enabled:=Visible;
          PrintDevisRestant.Um5.Lines.Clear;         PrintDevisRestant.Um5.Enabled:=Visible;
          PrintDevisRestant.QMarche5.Lines.Clear;    PrintDevisRestant.QMarche5.Enabled:=Visible;
          PrintDevisRestant.QRealiser5.Lines.Clear;  PrintDevisRestant.QRealiser5.Enabled:=Visible;
          PrintDevisRestant.Qrestante5.Lines.Clear;  PrintDevisRestant.Qrestante5.Enabled:=Visible;
          PrintDevisRestant.Prix5.Lines.Clear;       PrintDevisRestant.Prix5.Enabled:=Visible;
          PrintDevisRestant.MMarche5.Lines.Clear;    PrintDevisRestant.MMarche5.Enabled:=Visible;
          PrintDevisRestant.MRealiser5.Lines.Clear;  PrintDevisRestant.MRealiser5.Enabled:=Visible;
          PrintDevisRestant.MRestant5.Lines.Clear;   PrintDevisRestant.MRestant5.Enabled:=Visible;
     end;
     if(Indice=6)then
     begin
          PrintDevisRestant.Code6.Lines.Clear;       PrintDevisRestant.Code6.Enabled:=Visible;
          PrintDevisRestant.Desig6.Lines.Clear;      PrintDevisRestant.Desig6.Enabled:=Visible;
          PrintDevisRestant.Um6.Lines.Clear;         PrintDevisRestant.Um6.Enabled:=Visible;
          PrintDevisRestant.QMarche6.Lines.Clear;    PrintDevisRestant.QMarche6.Enabled:=Visible;
          PrintDevisRestant.QRealiser6.Lines.Clear;  PrintDevisRestant.QRealiser6.Enabled:=Visible;
          PrintDevisRestant.Qrestante6.Lines.Clear;  PrintDevisRestant.Qrestante6.Enabled:=Visible;
          PrintDevisRestant.Prix6.Lines.Clear;       PrintDevisRestant.Prix6.Enabled:=Visible;
          PrintDevisRestant.MMarche6.Lines.Clear;    PrintDevisRestant.MMarche6.Enabled:=Visible;
          PrintDevisRestant.MRealiser6.Lines.Clear;  PrintDevisRestant.MRealiser6.Enabled:=Visible;
          PrintDevisRestant.MRestant6.Lines.Clear;   PrintDevisRestant.MRestant6.Enabled:=Visible;
     end;
     if(Indice=7)then
     begin
          PrintDevisRestant.Code7.Lines.Clear;       PrintDevisRestant.Code7.Enabled:=Visible;
          PrintDevisRestant.Desig7.Lines.Clear;      PrintDevisRestant.Desig7.Enabled:=Visible;
          PrintDevisRestant.Um7.Lines.Clear;         PrintDevisRestant.Um7.Enabled:=Visible;
          PrintDevisRestant.QMarche7.Lines.Clear;    PrintDevisRestant.QMarche7.Enabled:=Visible;
          PrintDevisRestant.QRealiser7.Lines.Clear;  PrintDevisRestant.QRealiser7.Enabled:=Visible;
          PrintDevisRestant.Qrestante7.Lines.Clear;  PrintDevisRestant.Qrestante7.Enabled:=Visible;
          PrintDevisRestant.Prix7.Lines.Clear;       PrintDevisRestant.Prix7.Enabled:=Visible;
          PrintDevisRestant.MMarche7.Lines.Clear;    PrintDevisRestant.MMarche7.Enabled:=Visible;
          PrintDevisRestant.MRealiser7.Lines.Clear;  PrintDevisRestant.MRealiser7.Enabled:=Visible;
          PrintDevisRestant.MRestant7.Lines.Clear;   PrintDevisRestant.MRestant7.Enabled:=Visible;
     end;
     if(Indice=8)then
     begin
          PrintDevisRestant.Code8.Lines.Clear;       PrintDevisRestant.Code8.Enabled:=Visible;
          PrintDevisRestant.Desig8.Lines.Clear;      PrintDevisRestant.Desig8.Enabled:=Visible;
          PrintDevisRestant.Um8.Lines.Clear;         PrintDevisRestant.Um8.Enabled:=Visible;
          PrintDevisRestant.QMarche8.Lines.Clear;    PrintDevisRestant.QMarche8.Enabled:=Visible;
          PrintDevisRestant.QRealiser8.Lines.Clear;  PrintDevisRestant.QRealiser8.Enabled:=Visible;
          PrintDevisRestant.Qrestante8.Lines.Clear;  PrintDevisRestant.Qrestante8.Enabled:=Visible;
          PrintDevisRestant.Prix8.Lines.Clear;       PrintDevisRestant.Prix8.Enabled:=Visible;
          PrintDevisRestant.MMarche8.Lines.Clear;    PrintDevisRestant.MMarche8.Enabled:=Visible;
          PrintDevisRestant.MRealiser8.Lines.Clear;  PrintDevisRestant.MRealiser8.Enabled:=Visible;
          PrintDevisRestant.MRestant8.Lines.Clear;   PrintDevisRestant.MRestant8.Enabled:=Visible;
     end;
     if(Indice=9)then
     begin
          PrintDevisRestant.Code9.Lines.Clear;       PrintDevisRestant.Code9.Enabled:=Visible;
          PrintDevisRestant.Desig9.Lines.Clear;      PrintDevisRestant.Desig9.Enabled:=Visible;
          PrintDevisRestant.Um9.Lines.Clear;         PrintDevisRestant.Um9.Enabled:=Visible;
          PrintDevisRestant.QMarche9.Lines.Clear;    PrintDevisRestant.QMarche9.Enabled:=Visible;
          PrintDevisRestant.QRealiser9.Lines.Clear;  PrintDevisRestant.QRealiser9.Enabled:=Visible;
          PrintDevisRestant.Qrestante9.Lines.Clear;  PrintDevisRestant.Qrestante9.Enabled:=Visible;
          PrintDevisRestant.Prix9.Lines.Clear;       PrintDevisRestant.Prix9.Enabled:=Visible;
          PrintDevisRestant.MMarche9.Lines.Clear;    PrintDevisRestant.MMarche9.Enabled:=Visible;
          PrintDevisRestant.MRealiser9.Lines.Clear;  PrintDevisRestant.MRealiser9.Enabled:=Visible;
          PrintDevisRestant.MRestant9.Lines.Clear;   PrintDevisRestant.MRestant9.Enabled:=Visible;
     end;
     if(Indice=10)then
     begin
          PrintDevisRestant.Code10.Lines.Clear;       PrintDevisRestant.Code10.Enabled:=Visible;
          PrintDevisRestant.Desig10.Lines.Clear;      PrintDevisRestant.Desig10.Enabled:=Visible;
          PrintDevisRestant.Um10.Lines.Clear;         PrintDevisRestant.Um10.Enabled:=Visible;
          PrintDevisRestant.QMarche10.Lines.Clear;    PrintDevisRestant.QMarche10.Enabled:=Visible;
          PrintDevisRestant.QRealiser10.Lines.Clear;  PrintDevisRestant.QRealiser10.Enabled:=Visible;
          PrintDevisRestant.Qrestante10.Lines.Clear;  PrintDevisRestant.Qrestante10.Enabled:=Visible;
          PrintDevisRestant.Prix10.Lines.Clear;       PrintDevisRestant.Prix10.Enabled:=Visible;
          PrintDevisRestant.MMarche10.Lines.Clear;    PrintDevisRestant.MMarche10.Enabled:=Visible;
          PrintDevisRestant.MRealiser10.Lines.Clear;  PrintDevisRestant.MRealiser10.Enabled:=Visible;
          PrintDevisRestant.MRestant10.Lines.Clear;   PrintDevisRestant.MRestant10.Enabled:=Visible;
     end;
     if(Indice=11)then
     begin
          PrintDevisRestant.Code11.Lines.Clear;       PrintDevisRestant.Code11.Enabled:=Visible;
          PrintDevisRestant.Desig11.Lines.Clear;      PrintDevisRestant.Desig11.Enabled:=Visible;
          PrintDevisRestant.Um11.Lines.Clear;         PrintDevisRestant.Um11.Enabled:=Visible;
          PrintDevisRestant.QMarche11.Lines.Clear;    PrintDevisRestant.QMarche11.Enabled:=Visible;
          PrintDevisRestant.QRealiser11.Lines.Clear;  PrintDevisRestant.QRealiser11.Enabled:=Visible;
          PrintDevisRestant.Qrestante11.Lines.Clear;  PrintDevisRestant.Qrestante11.Enabled:=Visible;
          PrintDevisRestant.Prix11.Lines.Clear;       PrintDevisRestant.Prix11.Enabled:=Visible;
          PrintDevisRestant.MMarche11.Lines.Clear;    PrintDevisRestant.MMarche11.Enabled:=Visible;
          PrintDevisRestant.MRealiser11.Lines.Clear;  PrintDevisRestant.MRealiser11.Enabled:=Visible;
          PrintDevisRestant.MRestant11.Lines.Clear;   PrintDevisRestant.MRestant11.Enabled:=Visible;
     end;
     if(Indice=12)then
     begin
          PrintDevisRestant.Code12.Lines.Clear;       PrintDevisRestant.Code12.Enabled:=Visible;
          PrintDevisRestant.Desig12.Lines.Clear;      PrintDevisRestant.Desig12.Enabled:=Visible;
          PrintDevisRestant.Um12.Lines.Clear;         PrintDevisRestant.Um12.Enabled:=Visible;
          PrintDevisRestant.QMarche12.Lines.Clear;    PrintDevisRestant.QMarche12.Enabled:=Visible;
          PrintDevisRestant.QRealiser12.Lines.Clear;  PrintDevisRestant.QRealiser12.Enabled:=Visible;
          PrintDevisRestant.Qrestante12.Lines.Clear;  PrintDevisRestant.Qrestante12.Enabled:=Visible;
          PrintDevisRestant.Prix12.Lines.Clear;       PrintDevisRestant.Prix12.Enabled:=Visible;
          PrintDevisRestant.MMarche12.Lines.Clear;    PrintDevisRestant.MMarche12.Enabled:=Visible;
          PrintDevisRestant.MRealiser12.Lines.Clear;  PrintDevisRestant.MRealiser12.Enabled:=Visible;
          PrintDevisRestant.MRestant12.Lines.Clear;   PrintDevisRestant.MRestant12.Enabled:=Visible;
     end;
     if(Indice=13)then
     begin
          PrintDevisRestant.Code13.Lines.Clear;       PrintDevisRestant.Code13.Enabled:=Visible;
          PrintDevisRestant.Desig13.Lines.Clear;      PrintDevisRestant.Desig13.Enabled:=Visible;
          PrintDevisRestant.Um13.Lines.Clear;         PrintDevisRestant.Um13.Enabled:=Visible;
          PrintDevisRestant.QMarche13.Lines.Clear;    PrintDevisRestant.QMarche13.Enabled:=Visible;
          PrintDevisRestant.QRealiser13.Lines.Clear;  PrintDevisRestant.QRealiser13.Enabled:=Visible;
          PrintDevisRestant.Qrestante13.Lines.Clear;  PrintDevisRestant.Qrestante13.Enabled:=Visible;
          PrintDevisRestant.Prix13.Lines.Clear;       PrintDevisRestant.Prix13.Enabled:=Visible;
          PrintDevisRestant.MMarche13.Lines.Clear;    PrintDevisRestant.MMarche13.Enabled:=Visible;
          PrintDevisRestant.MRealiser13.Lines.Clear;  PrintDevisRestant.MRealiser13.Enabled:=Visible;
          PrintDevisRestant.MRestant13.Lines.Clear;   PrintDevisRestant.MRestant13.Enabled:=Visible;
     end;
     if(Indice=14)then
     begin
          PrintDevisRestant.Code14.Lines.Clear;       PrintDevisRestant.Code14.Enabled:=Visible;
          PrintDevisRestant.Desig14.Lines.Clear;      PrintDevisRestant.Desig14.Enabled:=Visible;
          PrintDevisRestant.Um14.Lines.Clear;         PrintDevisRestant.Um14.Enabled:=Visible;
          PrintDevisRestant.QMarche14.Lines.Clear;    PrintDevisRestant.QMarche14.Enabled:=Visible;
          PrintDevisRestant.QRealiser14.Lines.Clear;  PrintDevisRestant.QRealiser14.Enabled:=Visible;
          PrintDevisRestant.Qrestante14.Lines.Clear;  PrintDevisRestant.Qrestante14.Enabled:=Visible;
          PrintDevisRestant.Prix14.Lines.Clear;       PrintDevisRestant.Prix14.Enabled:=Visible;
          PrintDevisRestant.MMarche14.Lines.Clear;    PrintDevisRestant.MMarche14.Enabled:=Visible;
          PrintDevisRestant.MRealiser14.Lines.Clear;  PrintDevisRestant.MRealiser14.Enabled:=Visible;
          PrintDevisRestant.MRestant14.Lines.Clear;   PrintDevisRestant.MRestant14.Enabled:=Visible;
     end;
     if(Indice=15)then
     begin
          PrintDevisRestant.Code15.Lines.Clear;       PrintDevisRestant.Code15.Enabled:=Visible;
          PrintDevisRestant.Desig15.Lines.Clear;      PrintDevisRestant.Desig15.Enabled:=Visible;
          PrintDevisRestant.Um15.Lines.Clear;         PrintDevisRestant.Um15.Enabled:=Visible;
          PrintDevisRestant.QMarche15.Lines.Clear;    PrintDevisRestant.QMarche15.Enabled:=Visible;
          PrintDevisRestant.QRealiser15.Lines.Clear;  PrintDevisRestant.QRealiser15.Enabled:=Visible;
          PrintDevisRestant.Qrestante15.Lines.Clear;  PrintDevisRestant.Qrestante15.Enabled:=Visible;
          PrintDevisRestant.Prix15.Lines.Clear;       PrintDevisRestant.Prix15.Enabled:=Visible;
          PrintDevisRestant.MMarche15.Lines.Clear;    PrintDevisRestant.MMarche15.Enabled:=Visible;
          PrintDevisRestant.MRealiser15.Lines.Clear;  PrintDevisRestant.MRealiser15.Enabled:=Visible;
          PrintDevisRestant.MRestant15.Lines.Clear;   PrintDevisRestant.MRestant15.Enabled:=Visible;
     end;
     if(Indice=16)then
     begin
          PrintDevisRestant.Code16.Lines.Clear;       PrintDevisRestant.Code16.Enabled:=Visible;
          PrintDevisRestant.Desig16.Lines.Clear;      PrintDevisRestant.Desig16.Enabled:=Visible;
          PrintDevisRestant.Um16.Lines.Clear;         PrintDevisRestant.Um16.Enabled:=Visible;
          PrintDevisRestant.QMarche16.Lines.Clear;    PrintDevisRestant.QMarche16.Enabled:=Visible;
          PrintDevisRestant.QRealiser16.Lines.Clear;  PrintDevisRestant.QRealiser16.Enabled:=Visible;
          PrintDevisRestant.Qrestante16.Lines.Clear;  PrintDevisRestant.Qrestante16.Enabled:=Visible;
          PrintDevisRestant.Prix16.Lines.Clear;       PrintDevisRestant.Prix16.Enabled:=Visible;
          PrintDevisRestant.MMarche16.Lines.Clear;    PrintDevisRestant.MMarche16.Enabled:=Visible;
          PrintDevisRestant.MRealiser16.Lines.Clear;  PrintDevisRestant.MRealiser16.Enabled:=Visible;
          PrintDevisRestant.MRestant16.Lines.Clear;   PrintDevisRestant.MRestant16.Enabled:=Visible;
     end;
     if(Indice=17)then
     begin
          PrintDevisRestant.Code17.Lines.Clear;       PrintDevisRestant.Code17.Enabled:=Visible;
          PrintDevisRestant.Desig17.Lines.Clear;      PrintDevisRestant.Desig17.Enabled:=Visible;
          PrintDevisRestant.Um17.Lines.Clear;         PrintDevisRestant.Um17.Enabled:=Visible;
          PrintDevisRestant.QMarche17.Lines.Clear;    PrintDevisRestant.QMarche17.Enabled:=Visible;
          PrintDevisRestant.QRealiser17.Lines.Clear;  PrintDevisRestant.QRealiser17.Enabled:=Visible;
          PrintDevisRestant.Qrestante17.Lines.Clear;  PrintDevisRestant.Qrestante17.Enabled:=Visible;
          PrintDevisRestant.Prix17.Lines.Clear;       PrintDevisRestant.Prix17.Enabled:=Visible;
          PrintDevisRestant.MMarche17.Lines.Clear;    PrintDevisRestant.MMarche17.Enabled:=Visible;
          PrintDevisRestant.MRealiser17.Lines.Clear;  PrintDevisRestant.MRealiser17.Enabled:=Visible;
          PrintDevisRestant.MRestant17.Lines.Clear;   PrintDevisRestant.MRestant17.Enabled:=Visible;
     end;
     if(Indice=18)then
     begin
          PrintDevisRestant.Code18.Lines.Clear;       PrintDevisRestant.Code18.Enabled:=Visible;
          PrintDevisRestant.Desig18.Lines.Clear;      PrintDevisRestant.Desig18.Enabled:=Visible;
          PrintDevisRestant.Um18.Lines.Clear;         PrintDevisRestant.Um18.Enabled:=Visible;
          PrintDevisRestant.QMarche18.Lines.Clear;    PrintDevisRestant.QMarche18.Enabled:=Visible;
          PrintDevisRestant.QRealiser18.Lines.Clear;  PrintDevisRestant.QRealiser18.Enabled:=Visible;
          PrintDevisRestant.Qrestante18.Lines.Clear;  PrintDevisRestant.Qrestante18.Enabled:=Visible;
          PrintDevisRestant.Prix18.Lines.Clear;       PrintDevisRestant.Prix18.Enabled:=Visible;
          PrintDevisRestant.MMarche18.Lines.Clear;    PrintDevisRestant.MMarche18.Enabled:=Visible;
          PrintDevisRestant.MRealiser18.Lines.Clear;  PrintDevisRestant.MRealiser18.Enabled:=Visible;
          PrintDevisRestant.MRestant18.Lines.Clear;   PrintDevisRestant.MRestant18.Enabled:=Visible;
     end;
     if(Indice=19)then
     begin
          PrintDevisRestant.Code19.Lines.Clear;       PrintDevisRestant.Code19.Enabled:=Visible;
          PrintDevisRestant.Desig19.Lines.Clear;      PrintDevisRestant.Desig19.Enabled:=Visible;
          PrintDevisRestant.Um19.Lines.Clear;         PrintDevisRestant.Um19.Enabled:=Visible;
          PrintDevisRestant.QMarche19.Lines.Clear;    PrintDevisRestant.QMarche19.Enabled:=Visible;
          PrintDevisRestant.QRealiser19.Lines.Clear;  PrintDevisRestant.QRealiser19.Enabled:=Visible;
          PrintDevisRestant.Qrestante19.Lines.Clear;  PrintDevisRestant.Qrestante19.Enabled:=Visible;
          PrintDevisRestant.Prix19.Lines.Clear;       PrintDevisRestant.Prix19.Enabled:=Visible;
          PrintDevisRestant.MMarche19.Lines.Clear;    PrintDevisRestant.MMarche19.Enabled:=Visible;
          PrintDevisRestant.MRealiser19.Lines.Clear;  PrintDevisRestant.MRealiser19.Enabled:=Visible;
          PrintDevisRestant.MRestant19.Lines.Clear;   PrintDevisRestant.MRestant19.Enabled:=Visible;
     end;
     if(Indice=20)then
     begin
          PrintDevisRestant.Code20.Lines.Clear;       PrintDevisRestant.Code20.Enabled:=Visible;
          PrintDevisRestant.Desig20.Lines.Clear;      PrintDevisRestant.Desig20.Enabled:=Visible;
          PrintDevisRestant.Um20.Lines.Clear;         PrintDevisRestant.Um20.Enabled:=Visible;
          PrintDevisRestant.QMarche20.Lines.Clear;    PrintDevisRestant.QMarche20.Enabled:=Visible;
          PrintDevisRestant.QRealiser20.Lines.Clear;  PrintDevisRestant.QRealiser20.Enabled:=Visible;
          PrintDevisRestant.Qrestante20.Lines.Clear;  PrintDevisRestant.Qrestante20.Enabled:=Visible;
          PrintDevisRestant.Prix20.Lines.Clear;       PrintDevisRestant.Prix20.Enabled:=Visible;
          PrintDevisRestant.MMarche20.Lines.Clear;    PrintDevisRestant.MMarche20.Enabled:=Visible;
          PrintDevisRestant.MRealiser20.Lines.Clear;  PrintDevisRestant.MRealiser20.Enabled:=Visible;
          PrintDevisRestant.MRestant20.Lines.Clear;   PrintDevisRestant.MRestant20.Enabled:=Visible;
     end;
     if(Indice=21)then
     begin
          PrintDevisRestant.Code21.Lines.Clear;       PrintDevisRestant.Code21.Enabled:=Visible;
          PrintDevisRestant.Desig21.Lines.Clear;      PrintDevisRestant.Desig21.Enabled:=Visible;
          PrintDevisRestant.Um21.Lines.Clear;         PrintDevisRestant.Um21.Enabled:=Visible;
          PrintDevisRestant.QMarche21.Lines.Clear;    PrintDevisRestant.QMarche21.Enabled:=Visible;
          PrintDevisRestant.QRealiser21.Lines.Clear;  PrintDevisRestant.QRealiser21.Enabled:=Visible;
          PrintDevisRestant.Qrestante21.Lines.Clear;  PrintDevisRestant.Qrestante21.Enabled:=Visible;
          PrintDevisRestant.Prix21.Lines.Clear;       PrintDevisRestant.Prix21.Enabled:=Visible;
          PrintDevisRestant.MMarche21.Lines.Clear;    PrintDevisRestant.MMarche21.Enabled:=Visible;
          PrintDevisRestant.MRealiser21.Lines.Clear;  PrintDevisRestant.MRealiser21.Enabled:=Visible;
          PrintDevisRestant.MRestant21.Lines.Clear;   PrintDevisRestant.MRestant21.Enabled:=Visible;
     end;
     if(Indice=22)then
     begin
          PrintDevisRestant.Code22.Lines.Clear;       PrintDevisRestant.Code22.Enabled:=Visible;
          PrintDevisRestant.Desig22.Lines.Clear;      PrintDevisRestant.Desig22.Enabled:=Visible;
          PrintDevisRestant.Um22.Lines.Clear;         PrintDevisRestant.Um22.Enabled:=Visible;
          PrintDevisRestant.QMarche22.Lines.Clear;    PrintDevisRestant.QMarche22.Enabled:=Visible;
          PrintDevisRestant.QRealiser22.Lines.Clear;  PrintDevisRestant.QRealiser22.Enabled:=Visible;
          PrintDevisRestant.Qrestante22.Lines.Clear;  PrintDevisRestant.Qrestante22.Enabled:=Visible;
          PrintDevisRestant.Prix22.Lines.Clear;       PrintDevisRestant.Prix22.Enabled:=Visible;
          PrintDevisRestant.MMarche22.Lines.Clear;    PrintDevisRestant.MMarche22.Enabled:=Visible;
          PrintDevisRestant.MRealiser22.Lines.Clear;  PrintDevisRestant.MRealiser22.Enabled:=Visible;
          PrintDevisRestant.MRestant22.Lines.Clear;   PrintDevisRestant.MRestant22.Enabled:=Visible;
     end;
     if(Indice=23)then
     begin
          PrintDevisRestant.Code23.Lines.Clear;       PrintDevisRestant.Code23.Enabled:=Visible;
          PrintDevisRestant.Desig23.Lines.Clear;      PrintDevisRestant.Desig23.Enabled:=Visible;
          PrintDevisRestant.Um23.Lines.Clear;         PrintDevisRestant.Um23.Enabled:=Visible;
          PrintDevisRestant.QMarche23.Lines.Clear;    PrintDevisRestant.QMarche23.Enabled:=Visible;
          PrintDevisRestant.QRealiser23.Lines.Clear;  PrintDevisRestant.QRealiser23.Enabled:=Visible;
          PrintDevisRestant.Qrestante23.Lines.Clear;  PrintDevisRestant.Qrestante23.Enabled:=Visible;
          PrintDevisRestant.Prix23.Lines.Clear;       PrintDevisRestant.Prix23.Enabled:=Visible;
          PrintDevisRestant.MMarche23.Lines.Clear;    PrintDevisRestant.MMarche23.Enabled:=Visible;
          PrintDevisRestant.MRealiser23.Lines.Clear;  PrintDevisRestant.MRealiser23.Enabled:=Visible;
          PrintDevisRestant.MRestant23.Lines.Clear;   PrintDevisRestant.MRestant23.Enabled:=Visible;
     end;
     if(Indice=24)then
     begin
          PrintDevisRestant.Code24.Lines.Clear;       PrintDevisRestant.Code24.Enabled:=Visible;
          PrintDevisRestant.Desig24.Lines.Clear;      PrintDevisRestant.Desig24.Enabled:=Visible;
          PrintDevisRestant.Um24.Lines.Clear;         PrintDevisRestant.Um24.Enabled:=Visible;
          PrintDevisRestant.QMarche24.Lines.Clear;    PrintDevisRestant.QMarche24.Enabled:=Visible;
          PrintDevisRestant.QRealiser24.Lines.Clear;  PrintDevisRestant.QRealiser24.Enabled:=Visible;
          PrintDevisRestant.Qrestante24.Lines.Clear;  PrintDevisRestant.Qrestante24.Enabled:=Visible;
          PrintDevisRestant.Prix24.Lines.Clear;       PrintDevisRestant.Prix24.Enabled:=Visible;
          PrintDevisRestant.MMarche24.Lines.Clear;    PrintDevisRestant.MMarche24.Enabled:=Visible;
          PrintDevisRestant.MRealiser24.Lines.Clear;  PrintDevisRestant.MRealiser24.Enabled:=Visible;
          PrintDevisRestant.MRestant24.Lines.Clear;   PrintDevisRestant.MRestant24.Enabled:=Visible;
     end;
     if(Indice=25)then
     begin
          PrintDevisRestant.Code25.Lines.Clear;       PrintDevisRestant.Code25.Enabled:=Visible;
          PrintDevisRestant.Desig25.Lines.Clear;      PrintDevisRestant.Desig25.Enabled:=Visible;
          PrintDevisRestant.Um25.Lines.Clear;         PrintDevisRestant.Um25.Enabled:=Visible;
          PrintDevisRestant.QMarche25.Lines.Clear;    PrintDevisRestant.QMarche25.Enabled:=Visible;
          PrintDevisRestant.QRealiser25.Lines.Clear;  PrintDevisRestant.QRealiser25.Enabled:=Visible;
          PrintDevisRestant.Qrestante25.Lines.Clear;  PrintDevisRestant.Qrestante25.Enabled:=Visible;
          PrintDevisRestant.Prix25.Lines.Clear;       PrintDevisRestant.Prix25.Enabled:=Visible;
          PrintDevisRestant.MMarche25.Lines.Clear;    PrintDevisRestant.MMarche25.Enabled:=Visible;
          PrintDevisRestant.MRealiser25.Lines.Clear;  PrintDevisRestant.MRealiser25.Enabled:=Visible;
          PrintDevisRestant.MRestant25.Lines.Clear;   PrintDevisRestant.MRestant25.Enabled:=Visible;
     end;
     if(Indice=26)then
     begin
          PrintDevisRestant.Code26.Lines.Clear;       PrintDevisRestant.Code26.Enabled:=Visible;
          PrintDevisRestant.Desig26.Lines.Clear;      PrintDevisRestant.Desig26.Enabled:=Visible;
          PrintDevisRestant.Um26.Lines.Clear;         PrintDevisRestant.Um26.Enabled:=Visible;
          PrintDevisRestant.QMarche26.Lines.Clear;    PrintDevisRestant.QMarche26.Enabled:=Visible;
          PrintDevisRestant.QRealiser26.Lines.Clear;  PrintDevisRestant.QRealiser26.Enabled:=Visible;
          PrintDevisRestant.Qrestante26.Lines.Clear;  PrintDevisRestant.Qrestante26.Enabled:=Visible;
          PrintDevisRestant.Prix26.Lines.Clear;       PrintDevisRestant.Prix26.Enabled:=Visible;
          PrintDevisRestant.MMarche26.Lines.Clear;    PrintDevisRestant.MMarche26.Enabled:=Visible;
          PrintDevisRestant.MRealiser26.Lines.Clear;  PrintDevisRestant.MRealiser26.Enabled:=Visible;
          PrintDevisRestant.MRestant26.Lines.Clear;   PrintDevisRestant.MRestant26.Enabled:=Visible;
     end;
     if(Indice=27)then
     begin
          PrintDevisRestant.Code27.Lines.Clear;       PrintDevisRestant.Code27.Enabled:=Visible;
          PrintDevisRestant.Desig27.Lines.Clear;      PrintDevisRestant.Desig27.Enabled:=Visible;
          PrintDevisRestant.Um27.Lines.Clear;         PrintDevisRestant.Um27.Enabled:=Visible;
          PrintDevisRestant.QMarche27.Lines.Clear;    PrintDevisRestant.QMarche27.Enabled:=Visible;
          PrintDevisRestant.QRealiser27.Lines.Clear;  PrintDevisRestant.QRealiser27.Enabled:=Visible;
          PrintDevisRestant.Qrestante27.Lines.Clear;  PrintDevisRestant.Qrestante27.Enabled:=Visible;
          PrintDevisRestant.Prix27.Lines.Clear;       PrintDevisRestant.Prix27.Enabled:=Visible;
          PrintDevisRestant.MMarche27.Lines.Clear;    PrintDevisRestant.MMarche27.Enabled:=Visible;
          PrintDevisRestant.MRealiser27.Lines.Clear;  PrintDevisRestant.MRealiser27.Enabled:=Visible;
          PrintDevisRestant.MRestant27.Lines.Clear;   PrintDevisRestant.MRestant27.Enabled:=Visible;
     end;
     if(Indice=28)then
     begin
          PrintDevisRestant.Code28.Lines.Clear;       PrintDevisRestant.Code28.Enabled:=Visible;
          PrintDevisRestant.Desig28.Lines.Clear;      PrintDevisRestant.Desig28.Enabled:=Visible;
          PrintDevisRestant.Um28.Lines.Clear;         PrintDevisRestant.Um28.Enabled:=Visible;
          PrintDevisRestant.QMarche28.Lines.Clear;    PrintDevisRestant.QMarche28.Enabled:=Visible;
          PrintDevisRestant.QRealiser28.Lines.Clear;  PrintDevisRestant.QRealiser28.Enabled:=Visible;
          PrintDevisRestant.Qrestante28.Lines.Clear;  PrintDevisRestant.Qrestante28.Enabled:=Visible;
          PrintDevisRestant.Prix28.Lines.Clear;       PrintDevisRestant.Prix28.Enabled:=Visible;
          PrintDevisRestant.MMarche28.Lines.Clear;    PrintDevisRestant.MMarche28.Enabled:=Visible;
          PrintDevisRestant.MRealiser28.Lines.Clear;  PrintDevisRestant.MRealiser28.Enabled:=Visible;
          PrintDevisRestant.MRestant28.Lines.Clear;   PrintDevisRestant.MRestant28.Enabled:=Visible;
     end;
     if(Indice=29)then
     begin
          PrintDevisRestant.Code29.Lines.Clear;       PrintDevisRestant.Code29.Enabled:=Visible;
          PrintDevisRestant.Desig29.Lines.Clear;      PrintDevisRestant.Desig29.Enabled:=Visible;
          PrintDevisRestant.Um29.Lines.Clear;         PrintDevisRestant.Um29.Enabled:=Visible;
          PrintDevisRestant.QMarche29.Lines.Clear;    PrintDevisRestant.QMarche29.Enabled:=Visible;
          PrintDevisRestant.QRealiser29.Lines.Clear;  PrintDevisRestant.QRealiser29.Enabled:=Visible;
          PrintDevisRestant.Qrestante29.Lines.Clear;  PrintDevisRestant.Qrestante29.Enabled:=Visible;
          PrintDevisRestant.Prix29.Lines.Clear;       PrintDevisRestant.Prix29.Enabled:=Visible;
          PrintDevisRestant.MMarche29.Lines.Clear;    PrintDevisRestant.MMarche29.Enabled:=Visible;
          PrintDevisRestant.MRealiser29.Lines.Clear;  PrintDevisRestant.MRealiser29.Enabled:=Visible;
          PrintDevisRestant.MRestant29.Lines.Clear;   PrintDevisRestant.MRestant29.Enabled:=Visible;
     end;
     if(Indice=30)then
     begin
          PrintDevisRestant.Code30.Lines.Clear;       PrintDevisRestant.Code30.Enabled:=Visible;
          PrintDevisRestant.Desig30.Lines.Clear;      PrintDevisRestant.Desig30.Enabled:=Visible;
          PrintDevisRestant.Um30.Lines.Clear;         PrintDevisRestant.Um30.Enabled:=Visible;
          PrintDevisRestant.QMarche30.Lines.Clear;    PrintDevisRestant.QMarche30.Enabled:=Visible;
          PrintDevisRestant.QRealiser30.Lines.Clear;  PrintDevisRestant.QRealiser30.Enabled:=Visible;
          PrintDevisRestant.Qrestante30.Lines.Clear;  PrintDevisRestant.Qrestante30.Enabled:=Visible;
          PrintDevisRestant.Prix30.Lines.Clear;       PrintDevisRestant.Prix30.Enabled:=Visible;
          PrintDevisRestant.MMarche30.Lines.Clear;    PrintDevisRestant.MMarche30.Enabled:=Visible;
          PrintDevisRestant.MRealiser30.Lines.Clear;  PrintDevisRestant.MRealiser30.Enabled:=Visible;
          PrintDevisRestant.MRestant30.Lines.Clear;   PrintDevisRestant.MRestant30.Enabled:=Visible;
     end;
end;

Procedure HeightDevisRestant(Indice:integer; var Position:integer);
var  LigneR,PositionInt,PositionMax:integer;
begin
PositionMax:=990;
     if(Indice=1)then
     begin
          PrintDevisRestant.Code1.Top:=32;
          PrintDevisRestant.Desig1.Top:=32;
          PrintDevisRestant.Um1.Top:=32;
          PrintDevisRestant.QMarche1.Top:=32;
          PrintDevisRestant.QRealiser1.Top:=32;
          PrintDevisRestant.Qrestante1.Top:=32;
          PrintDevisRestant.Prix1.Top:=32;
          PrintDevisRestant.MMarche1.Top:=32;
          PrintDevisRestant.MRealiser1.Top:=32;
          PrintDevisRestant.MRestant1.Top:=32;

          PrintDevisRestant.Desig1.Height:=PrintDevisRestant.Desig1.Lines.Capacity*20;
          PrintDevisRestant.Code1.Height:=PrintDevisRestant.Desig1.Height;
          PrintDevisRestant.Um1.Height:=PrintDevisRestant.Desig1.Height;
          PrintDevisRestant.QMarche1.Height:=PrintDevisRestant.Desig1.Height;
          PrintDevisRestant.QRealiser1.Height:=PrintDevisRestant.Desig1.Height;
          PrintDevisRestant.Qrestante1.Height:=PrintDevisRestant.Desig1.Height;
          PrintDevisRestant.Prix1.Height:=PrintDevisRestant.Desig1.Height;
          PrintDevisRestant.MMarche1.Height:=PrintDevisRestant.Desig1.Height;
          PrintDevisRestant.MRealiser1.Height:=PrintDevisRestant.Desig1.Height;
          PrintDevisRestant.MRestant1.Height:=PrintDevisRestant.Desig1.Height;
     Position:=PrintDevisRestant.Desig1.Top+PrintDevisRestant.Desig1.Height-1;
     end;
     if(Indice=2)then
     begin
          PrintDevisRestant.Desig2.Height:=PrintDevisRestant.Desig2.Lines.Capacity*20;
          PrintDevisRestant.Code2.Height:=PrintDevisRestant.Desig2.Height;
          PrintDevisRestant.Um2.Height:=PrintDevisRestant.Desig2.Height;
          PrintDevisRestant.QMarche2.Height:=PrintDevisRestant.Desig2.Height;
          PrintDevisRestant.QRealiser2.Height:=PrintDevisRestant.Desig2.Height;
          PrintDevisRestant.Qrestante2.Height:=PrintDevisRestant.Desig2.Height;
          PrintDevisRestant.Prix2.Height:=PrintDevisRestant.Desig2.Height;
          PrintDevisRestant.MMarche2.Height:=PrintDevisRestant.Desig2.Height;
          PrintDevisRestant.MRealiser2.Height:=PrintDevisRestant.Desig2.Height;
          PrintDevisRestant.MRestant2.Height:=PrintDevisRestant.Desig2.Height;
     Position:=PrintDevisRestant.Desig2.Top+PrintDevisRestant.Desig2.Height-1;
     end;
     if(Indice=3)then
     begin
          PrintDevisRestant.Desig3.Height:=PrintDevisRestant.Desig3.Lines.Capacity*20;
          PrintDevisRestant.Code3.Height:=PrintDevisRestant.Desig3.Height;
          PrintDevisRestant.Um3.Height:=PrintDevisRestant.Desig3.Height;
          PrintDevisRestant.QMarche3.Height:=PrintDevisRestant.Desig3.Height;
          PrintDevisRestant.QRealiser3.Height:=PrintDevisRestant.Desig3.Height;
          PrintDevisRestant.Qrestante3.Height:=PrintDevisRestant.Desig3.Height;
          PrintDevisRestant.Prix3.Height:=PrintDevisRestant.Desig3.Height;
          PrintDevisRestant.MMarche3.Height:=PrintDevisRestant.Desig3.Height;
          PrintDevisRestant.MRealiser3.Height:=PrintDevisRestant.Desig3.Height;
          PrintDevisRestant.MRestant3.Height:=PrintDevisRestant.Desig3.Height;
     Position:=PrintDevisRestant.Desig3.Top+PrintDevisRestant.Desig3.Height-1;
     end;
     if(Indice=4)then
     begin
          PrintDevisRestant.Desig4.Height:=PrintDevisRestant.Desig4.Lines.Capacity*20;
          PrintDevisRestant.Code4.Height:=PrintDevisRestant.Desig4.Height;
          PrintDevisRestant.Um4.Height:=PrintDevisRestant.Desig4.Height;
          PrintDevisRestant.QMarche4.Height:=PrintDevisRestant.Desig4.Height;
          PrintDevisRestant.QRealiser4.Height:=PrintDevisRestant.Desig4.Height;
          PrintDevisRestant.Qrestante4.Height:=PrintDevisRestant.Desig4.Height;
          PrintDevisRestant.Prix4.Height:=PrintDevisRestant.Desig4.Height;
          PrintDevisRestant.MMarche4.Height:=PrintDevisRestant.Desig4.Height;
          PrintDevisRestant.MRealiser4.Height:=PrintDevisRestant.Desig4.Height;
          PrintDevisRestant.MRestant4.Height:=PrintDevisRestant.Desig4.Height;
     Position:=PrintDevisRestant.Desig4.Top+PrintDevisRestant.Desig4.Height-1;
     end;
     if(Indice=5)then
     begin
          PrintDevisRestant.Desig5.Height:=PrintDevisRestant.Desig5.Lines.Capacity*20;
          PrintDevisRestant.Code5.Height:=PrintDevisRestant.Desig5.Height;
          PrintDevisRestant.Um5.Height:=PrintDevisRestant.Desig5.Height;
          PrintDevisRestant.QMarche5.Height:=PrintDevisRestant.Desig5.Height;
          PrintDevisRestant.QRealiser5.Height:=PrintDevisRestant.Desig5.Height;
          PrintDevisRestant.Qrestante5.Height:=PrintDevisRestant.Desig5.Height;
          PrintDevisRestant.Prix5.Height:=PrintDevisRestant.Desig5.Height;
          PrintDevisRestant.MMarche5.Height:=PrintDevisRestant.Desig5.Height;
          PrintDevisRestant.MRealiser5.Height:=PrintDevisRestant.Desig5.Height;
          PrintDevisRestant.MRestant5.Height:=PrintDevisRestant.Desig5.Height;
     Position:=PrintDevisRestant.Desig5.Top+PrintDevisRestant.Desig5.Height-1;
     end;
     if(Indice=6)then
     begin
          PrintDevisRestant.Desig6.Height:=PrintDevisRestant.Desig6.Lines.Capacity*20;
          PrintDevisRestant.Code6.Height:=PrintDevisRestant.Desig6.Height;
          PrintDevisRestant.Um6.Height:=PrintDevisRestant.Desig6.Height;
          PrintDevisRestant.QMarche6.Height:=PrintDevisRestant.Desig6.Height;
          PrintDevisRestant.QRealiser6.Height:=PrintDevisRestant.Desig6.Height;
          PrintDevisRestant.Qrestante6.Height:=PrintDevisRestant.Desig6.Height;
          PrintDevisRestant.Prix6.Height:=PrintDevisRestant.Desig6.Height;
          PrintDevisRestant.MMarche6.Height:=PrintDevisRestant.Desig6.Height;
          PrintDevisRestant.MRealiser6.Height:=PrintDevisRestant.Desig6.Height;
          PrintDevisRestant.MRestant6.Height:=PrintDevisRestant.Desig6.Height;
     Position:=PrintDevisRestant.Desig6.Top+PrintDevisRestant.Desig6.Height-1;
     end;
     if(Indice=7)then
     begin
          PrintDevisRestant.Desig7.Height:=PrintDevisRestant.Desig7.Lines.Capacity*20;
          PrintDevisRestant.Code7.Height:=PrintDevisRestant.Desig7.Height;
          PrintDevisRestant.Um7.Height:=PrintDevisRestant.Desig7.Height;
          PrintDevisRestant.QMarche7.Height:=PrintDevisRestant.Desig7.Height;
          PrintDevisRestant.QRealiser7.Height:=PrintDevisRestant.Desig7.Height;
          PrintDevisRestant.Qrestante7.Height:=PrintDevisRestant.Desig7.Height;
          PrintDevisRestant.Prix7.Height:=PrintDevisRestant.Desig7.Height;
          PrintDevisRestant.MMarche7.Height:=PrintDevisRestant.Desig7.Height;
          PrintDevisRestant.MRealiser7.Height:=PrintDevisRestant.Desig7.Height;
          PrintDevisRestant.MRestant7.Height:=PrintDevisRestant.Desig7.Height;
     Position:=PrintDevisRestant.Desig7.Top+PrintDevisRestant.Desig7.Height-1;
     end;
     if(Indice=8)then
     begin
          PrintDevisRestant.Desig8.Height:=PrintDevisRestant.Desig8.Lines.Capacity*20;
          PrintDevisRestant.Code8.Height:=PrintDevisRestant.Desig8.Height;
          PrintDevisRestant.Um8.Height:=PrintDevisRestant.Desig8.Height;
          PrintDevisRestant.QMarche8.Height:=PrintDevisRestant.Desig8.Height;
          PrintDevisRestant.QRealiser8.Height:=PrintDevisRestant.Desig8.Height;
          PrintDevisRestant.Qrestante8.Height:=PrintDevisRestant.Desig8.Height;
          PrintDevisRestant.Prix8.Height:=PrintDevisRestant.Desig8.Height;
          PrintDevisRestant.MMarche8.Height:=PrintDevisRestant.Desig8.Height;
          PrintDevisRestant.MRealiser8.Height:=PrintDevisRestant.Desig8.Height;
          PrintDevisRestant.MRestant8.Height:=PrintDevisRestant.Desig8.Height;
     Position:=PrintDevisRestant.Desig8.Top+PrintDevisRestant.Desig8.Height-1;
     end;
     if(Indice=9)then
     begin
          PrintDevisRestant.Desig9.Height:=PrintDevisRestant.Desig9.Lines.Capacity*20;
          PrintDevisRestant.Code9.Height:=PrintDevisRestant.Desig9.Height;
          PrintDevisRestant.Um9.Height:=PrintDevisRestant.Desig9.Height;
          PrintDevisRestant.QMarche9.Height:=PrintDevisRestant.Desig9.Height;
          PrintDevisRestant.QRealiser9.Height:=PrintDevisRestant.Desig9.Height;
          PrintDevisRestant.Qrestante9.Height:=PrintDevisRestant.Desig9.Height;
          PrintDevisRestant.Prix9.Height:=PrintDevisRestant.Desig9.Height;
          PrintDevisRestant.MMarche9.Height:=PrintDevisRestant.Desig9.Height;
          PrintDevisRestant.MRealiser9.Height:=PrintDevisRestant.Desig9.Height;
          PrintDevisRestant.MRestant9.Height:=PrintDevisRestant.Desig9.Height;
     Position:=PrintDevisRestant.Desig9.Top+PrintDevisRestant.Desig9.Height-1;
     end;
     if(Indice=10)then
     begin
          PrintDevisRestant.Desig10.Height:=PrintDevisRestant.Desig10.Lines.Capacity*20;
          PrintDevisRestant.Code10.Height:=PrintDevisRestant.Desig10.Height;
          PrintDevisRestant.Um10.Height:=PrintDevisRestant.Desig10.Height;
          PrintDevisRestant.QMarche10.Height:=PrintDevisRestant.Desig10.Height;
          PrintDevisRestant.QRealiser10.Height:=PrintDevisRestant.Desig10.Height;
          PrintDevisRestant.Qrestante10.Height:=PrintDevisRestant.Desig10.Height;
          PrintDevisRestant.Prix10.Height:=PrintDevisRestant.Desig10.Height;
          PrintDevisRestant.MMarche10.Height:=PrintDevisRestant.Desig10.Height;
          PrintDevisRestant.MRealiser10.Height:=PrintDevisRestant.Desig10.Height;
          PrintDevisRestant.MRestant10.Height:=PrintDevisRestant.Desig10.Height;
     Position:=PrintDevisRestant.Desig10.Top+PrintDevisRestant.Desig10.Height-1;
     end;
     if(Indice=11)then
     begin
          PrintDevisRestant.Desig11.Height:=PrintDevisRestant.Desig11.Lines.Capacity*20;
          PrintDevisRestant.Code11.Height:=PrintDevisRestant.Desig11.Height;
          PrintDevisRestant.Um11.Height:=PrintDevisRestant.Desig11.Height;
          PrintDevisRestant.QMarche11.Height:=PrintDevisRestant.Desig11.Height;
          PrintDevisRestant.QRealiser11.Height:=PrintDevisRestant.Desig11.Height;
          PrintDevisRestant.Qrestante11.Height:=PrintDevisRestant.Desig11.Height;
          PrintDevisRestant.Prix11.Height:=PrintDevisRestant.Desig11.Height;
          PrintDevisRestant.MMarche11.Height:=PrintDevisRestant.Desig11.Height;
          PrintDevisRestant.MRealiser11.Height:=PrintDevisRestant.Desig11.Height;
          PrintDevisRestant.MRestant11.Height:=PrintDevisRestant.Desig11.Height;
     Position:=PrintDevisRestant.Desig11.Top+PrintDevisRestant.Desig11.Height-1;
     end;
     if(Indice=12)then
     begin
          PrintDevisRestant.Desig12.Height:=PrintDevisRestant.Desig12.Lines.Capacity*20;
          PrintDevisRestant.Code12.Height:=PrintDevisRestant.Desig12.Height;
          PrintDevisRestant.Um12.Height:=PrintDevisRestant.Desig12.Height;
          PrintDevisRestant.QMarche12.Height:=PrintDevisRestant.Desig12.Height;
          PrintDevisRestant.QRealiser12.Height:=PrintDevisRestant.Desig12.Height;
          PrintDevisRestant.Qrestante12.Height:=PrintDevisRestant.Desig12.Height;
          PrintDevisRestant.Prix12.Height:=PrintDevisRestant.Desig12.Height;
          PrintDevisRestant.MMarche12.Height:=PrintDevisRestant.Desig12.Height;
          PrintDevisRestant.MRealiser12.Height:=PrintDevisRestant.Desig12.Height;
          PrintDevisRestant.MRestant12.Height:=PrintDevisRestant.Desig12.Height;
     Position:=PrintDevisRestant.Desig12.Top+PrintDevisRestant.Desig12.Height-1;
     end;
     if(Indice=13)then
     begin
          PrintDevisRestant.Desig13.Height:=PrintDevisRestant.Desig13.Lines.Capacity*20;
          PrintDevisRestant.Code13.Height:=PrintDevisRestant.Desig13.Height;
          PrintDevisRestant.Um13.Height:=PrintDevisRestant.Desig13.Height;
          PrintDevisRestant.QMarche13.Height:=PrintDevisRestant.Desig13.Height;
          PrintDevisRestant.QRealiser13.Height:=PrintDevisRestant.Desig13.Height;
          PrintDevisRestant.Qrestante13.Height:=PrintDevisRestant.Desig13.Height;
          PrintDevisRestant.Prix13.Height:=PrintDevisRestant.Desig13.Height;
          PrintDevisRestant.MMarche13.Height:=PrintDevisRestant.Desig13.Height;
          PrintDevisRestant.MRealiser13.Height:=PrintDevisRestant.Desig13.Height;
          PrintDevisRestant.MRestant13.Height:=PrintDevisRestant.Desig13.Height;
     Position:=PrintDevisRestant.Desig13.Top+PrintDevisRestant.Desig13.Height-1;
     end;
     if(Indice=14)then
     begin
          PrintDevisRestant.Desig14.Height:=PrintDevisRestant.Desig14.Lines.Capacity*20;
          PrintDevisRestant.Code14.Height:=PrintDevisRestant.Desig14.Height;
          PrintDevisRestant.Um14.Height:=PrintDevisRestant.Desig14.Height;
          PrintDevisRestant.QMarche14.Height:=PrintDevisRestant.Desig14.Height;
          PrintDevisRestant.QRealiser14.Height:=PrintDevisRestant.Desig14.Height;
          PrintDevisRestant.Qrestante14.Height:=PrintDevisRestant.Desig14.Height;
          PrintDevisRestant.Prix14.Height:=PrintDevisRestant.Desig14.Height;
          PrintDevisRestant.MMarche14.Height:=PrintDevisRestant.Desig14.Height;
          PrintDevisRestant.MRealiser14.Height:=PrintDevisRestant.Desig14.Height;
          PrintDevisRestant.MRestant14.Height:=PrintDevisRestant.Desig14.Height;
     Position:=PrintDevisRestant.Desig14.Top+PrintDevisRestant.Desig14.Height-1;
     end;
     if(Indice=15)then
     begin
          PrintDevisRestant.Desig15.Height:=PrintDevisRestant.Desig15.Lines.Capacity*20;
          PrintDevisRestant.Code15.Height:=PrintDevisRestant.Desig15.Height;
          PrintDevisRestant.Um15.Height:=PrintDevisRestant.Desig15.Height;
          PrintDevisRestant.QMarche15.Height:=PrintDevisRestant.Desig15.Height;
          PrintDevisRestant.QRealiser15.Height:=PrintDevisRestant.Desig15.Height;
          PrintDevisRestant.Qrestante15.Height:=PrintDevisRestant.Desig15.Height;
          PrintDevisRestant.Prix15.Height:=PrintDevisRestant.Desig15.Height;
          PrintDevisRestant.MMarche15.Height:=PrintDevisRestant.Desig15.Height;
          PrintDevisRestant.MRealiser15.Height:=PrintDevisRestant.Desig15.Height;
          PrintDevisRestant.MRestant15.Height:=PrintDevisRestant.Desig15.Height;
     Position:=PrintDevisRestant.Desig15.Top+PrintDevisRestant.Desig15.Height-1;
     end;
     if(Indice=16)then
     begin
          PrintDevisRestant.Desig16.Height:=PrintDevisRestant.Desig16.Lines.Capacity*20;
          PrintDevisRestant.Code16.Height:=PrintDevisRestant.Desig16.Height;
          PrintDevisRestant.Um16.Height:=PrintDevisRestant.Desig16.Height;
          PrintDevisRestant.QMarche16.Height:=PrintDevisRestant.Desig16.Height;
          PrintDevisRestant.QRealiser16.Height:=PrintDevisRestant.Desig16.Height;
          PrintDevisRestant.Qrestante16.Height:=PrintDevisRestant.Desig16.Height;
          PrintDevisRestant.Prix16.Height:=PrintDevisRestant.Desig16.Height;
          PrintDevisRestant.MMarche16.Height:=PrintDevisRestant.Desig16.Height;
          PrintDevisRestant.MRealiser16.Height:=PrintDevisRestant.Desig16.Height;
          PrintDevisRestant.MRestant16.Height:=PrintDevisRestant.Desig16.Height;
     Position:=PrintDevisRestant.Desig16.Top+PrintDevisRestant.Desig16.Height-1;
     end;
     if(Indice=17)then
     begin
          PrintDevisRestant.Desig17.Height:=PrintDevisRestant.Desig17.Lines.Capacity*20;
          PrintDevisRestant.Code17.Height:=PrintDevisRestant.Desig17.Height;
          PrintDevisRestant.Um17.Height:=PrintDevisRestant.Desig17.Height;
          PrintDevisRestant.QMarche17.Height:=PrintDevisRestant.Desig17.Height;
          PrintDevisRestant.QRealiser17.Height:=PrintDevisRestant.Desig17.Height;
          PrintDevisRestant.Qrestante17.Height:=PrintDevisRestant.Desig17.Height;
          PrintDevisRestant.Prix17.Height:=PrintDevisRestant.Desig17.Height;
          PrintDevisRestant.MMarche17.Height:=PrintDevisRestant.Desig17.Height;
          PrintDevisRestant.MRealiser17.Height:=PrintDevisRestant.Desig17.Height;
          PrintDevisRestant.MRestant17.Height:=PrintDevisRestant.Desig17.Height;
     Position:=PrintDevisRestant.Desig17.Top+PrintDevisRestant.Desig17.Height-1;
     end;
     if(Indice=18)then
     begin
          PrintDevisRestant.Desig18.Height:=PrintDevisRestant.Desig18.Lines.Capacity*20;
          PrintDevisRestant.Code18.Height:=PrintDevisRestant.Desig18.Height;
          PrintDevisRestant.Um18.Height:=PrintDevisRestant.Desig18.Height;
          PrintDevisRestant.QMarche18.Height:=PrintDevisRestant.Desig18.Height;
          PrintDevisRestant.QRealiser18.Height:=PrintDevisRestant.Desig18.Height;
          PrintDevisRestant.Qrestante18.Height:=PrintDevisRestant.Desig18.Height;
          PrintDevisRestant.Prix18.Height:=PrintDevisRestant.Desig18.Height;
          PrintDevisRestant.MMarche18.Height:=PrintDevisRestant.Desig18.Height;
          PrintDevisRestant.MRealiser18.Height:=PrintDevisRestant.Desig18.Height;
          PrintDevisRestant.MRestant18.Height:=PrintDevisRestant.Desig18.Height;
     Position:=PrintDevisRestant.Desig18.Top+PrintDevisRestant.Desig18.Height-1;
     end;
     if(Indice=19)then
     begin
          PrintDevisRestant.Desig19.Height:=PrintDevisRestant.Desig19.Lines.Capacity*20;
          PrintDevisRestant.Code19.Height:=PrintDevisRestant.Desig19.Height;
          PrintDevisRestant.Um19.Height:=PrintDevisRestant.Desig19.Height;
          PrintDevisRestant.QMarche19.Height:=PrintDevisRestant.Desig19.Height;
          PrintDevisRestant.QRealiser19.Height:=PrintDevisRestant.Desig19.Height;
          PrintDevisRestant.Qrestante19.Height:=PrintDevisRestant.Desig19.Height;
          PrintDevisRestant.Prix19.Height:=PrintDevisRestant.Desig19.Height;
          PrintDevisRestant.MMarche19.Height:=PrintDevisRestant.Desig19.Height;
          PrintDevisRestant.MRealiser19.Height:=PrintDevisRestant.Desig19.Height;
          PrintDevisRestant.MRestant19.Height:=PrintDevisRestant.Desig19.Height;
     Position:=PrintDevisRestant.Desig19.Top+PrintDevisRestant.Desig19.Height-1;
     end;
     if(Indice=20)then
     begin
          PrintDevisRestant.Desig20.Height:=PrintDevisRestant.Desig20.Lines.Capacity*20;
          PrintDevisRestant.Code20.Height:=PrintDevisRestant.Desig20.Height;
          PrintDevisRestant.Um20.Height:=PrintDevisRestant.Desig20.Height;
          PrintDevisRestant.QMarche20.Height:=PrintDevisRestant.Desig20.Height;
          PrintDevisRestant.QRealiser20.Height:=PrintDevisRestant.Desig20.Height;
          PrintDevisRestant.Qrestante20.Height:=PrintDevisRestant.Desig20.Height;
          PrintDevisRestant.Prix20.Height:=PrintDevisRestant.Desig20.Height;
          PrintDevisRestant.MMarche20.Height:=PrintDevisRestant.Desig20.Height;
          PrintDevisRestant.MRealiser20.Height:=PrintDevisRestant.Desig20.Height;
          PrintDevisRestant.MRestant20.Height:=PrintDevisRestant.Desig20.Height;
     Position:=PrintDevisRestant.Desig20.Top+PrintDevisRestant.Desig20.Height-1;
     end;
     if(Indice=21)then
     begin
          PrintDevisRestant.Desig21.Height:=PrintDevisRestant.Desig21.Lines.Capacity*20;
          PrintDevisRestant.Code21.Height:=PrintDevisRestant.Desig21.Height;
          PrintDevisRestant.Um21.Height:=PrintDevisRestant.Desig21.Height;
          PrintDevisRestant.QMarche21.Height:=PrintDevisRestant.Desig21.Height;
          PrintDevisRestant.QRealiser21.Height:=PrintDevisRestant.Desig21.Height;
          PrintDevisRestant.Qrestante21.Height:=PrintDevisRestant.Desig21.Height;
          PrintDevisRestant.Prix21.Height:=PrintDevisRestant.Desig21.Height;
          PrintDevisRestant.MMarche21.Height:=PrintDevisRestant.Desig21.Height;
          PrintDevisRestant.MRealiser21.Height:=PrintDevisRestant.Desig21.Height;
          PrintDevisRestant.MRestant21.Height:=PrintDevisRestant.Desig21.Height;
     Position:=PrintDevisRestant.Desig21.Top+PrintDevisRestant.Desig21.Height-1;
     end;
     if(Indice=22)then
     begin
          PrintDevisRestant.Desig22.Height:=PrintDevisRestant.Desig22.Lines.Capacity*20;
          PrintDevisRestant.Code22.Height:=PrintDevisRestant.Desig22.Height;
          PrintDevisRestant.Um22.Height:=PrintDevisRestant.Desig22.Height;
          PrintDevisRestant.QMarche22.Height:=PrintDevisRestant.Desig22.Height;
          PrintDevisRestant.QRealiser22.Height:=PrintDevisRestant.Desig22.Height;
          PrintDevisRestant.Qrestante22.Height:=PrintDevisRestant.Desig22.Height;
          PrintDevisRestant.Prix22.Height:=PrintDevisRestant.Desig22.Height;
          PrintDevisRestant.MMarche22.Height:=PrintDevisRestant.Desig22.Height;
          PrintDevisRestant.MRealiser22.Height:=PrintDevisRestant.Desig22.Height;
          PrintDevisRestant.MRestant22.Height:=PrintDevisRestant.Desig22.Height;
     Position:=PrintDevisRestant.Desig22.Top+PrintDevisRestant.Desig22.Height-1;
     end;
     if(Indice=23)then
     begin
          PrintDevisRestant.Desig23.Height:=PrintDevisRestant.Desig23.Lines.Capacity*20;
          PrintDevisRestant.Code23.Height:=PrintDevisRestant.Desig23.Height;
          PrintDevisRestant.Um23.Height:=PrintDevisRestant.Desig23.Height;
          PrintDevisRestant.QMarche23.Height:=PrintDevisRestant.Desig23.Height;
          PrintDevisRestant.QRealiser23.Height:=PrintDevisRestant.Desig23.Height;
          PrintDevisRestant.Qrestante23.Height:=PrintDevisRestant.Desig23.Height;
          PrintDevisRestant.Prix23.Height:=PrintDevisRestant.Desig23.Height;
          PrintDevisRestant.MMarche23.Height:=PrintDevisRestant.Desig23.Height;
          PrintDevisRestant.MRealiser23.Height:=PrintDevisRestant.Desig23.Height;
          PrintDevisRestant.MRestant23.Height:=PrintDevisRestant.Desig23.Height;
     Position:=PrintDevisRestant.Desig23.Top+PrintDevisRestant.Desig23.Height-1;
     end;
     if(Indice=24)then
     begin
          PrintDevisRestant.Desig24.Height:=PrintDevisRestant.Desig24.Lines.Capacity*20;
          PrintDevisRestant.Code24.Height:=PrintDevisRestant.Desig24.Height;
          PrintDevisRestant.Um24.Height:=PrintDevisRestant.Desig24.Height;
          PrintDevisRestant.QMarche24.Height:=PrintDevisRestant.Desig24.Height;
          PrintDevisRestant.QRealiser24.Height:=PrintDevisRestant.Desig24.Height;
          PrintDevisRestant.Qrestante24.Height:=PrintDevisRestant.Desig24.Height;
          PrintDevisRestant.Prix24.Height:=PrintDevisRestant.Desig24.Height;
          PrintDevisRestant.MMarche24.Height:=PrintDevisRestant.Desig24.Height;
          PrintDevisRestant.MRealiser24.Height:=PrintDevisRestant.Desig24.Height;
          PrintDevisRestant.MRestant24.Height:=PrintDevisRestant.Desig24.Height;
     Position:=PrintDevisRestant.Desig24.Top+PrintDevisRestant.Desig24.Height-1;
     end;
     if(Indice=25)then
     begin
          PrintDevisRestant.Desig25.Height:=PrintDevisRestant.Desig25.Lines.Capacity*20;
          PrintDevisRestant.Code25.Height:=PrintDevisRestant.Desig25.Height;
          PrintDevisRestant.Um25.Height:=PrintDevisRestant.Desig25.Height;
          PrintDevisRestant.QMarche25.Height:=PrintDevisRestant.Desig25.Height;
          PrintDevisRestant.QRealiser25.Height:=PrintDevisRestant.Desig25.Height;
          PrintDevisRestant.Qrestante25.Height:=PrintDevisRestant.Desig25.Height;
          PrintDevisRestant.Prix25.Height:=PrintDevisRestant.Desig25.Height;
          PrintDevisRestant.MMarche25.Height:=PrintDevisRestant.Desig25.Height;
          PrintDevisRestant.MRealiser25.Height:=PrintDevisRestant.Desig25.Height;
          PrintDevisRestant.MRestant25.Height:=PrintDevisRestant.Desig25.Height;
     Position:=PrintDevisRestant.Desig25.Top+PrintDevisRestant.Desig25.Height-1;
     end;
     if(Indice=26)then
     begin
          PrintDevisRestant.Desig26.Height:=PrintDevisRestant.Desig26.Lines.Capacity*20;
          PrintDevisRestant.Code26.Height:=PrintDevisRestant.Desig26.Height;
          PrintDevisRestant.Um26.Height:=PrintDevisRestant.Desig26.Height;
          PrintDevisRestant.QMarche26.Height:=PrintDevisRestant.Desig26.Height;
          PrintDevisRestant.QRealiser26.Height:=PrintDevisRestant.Desig26.Height;
          PrintDevisRestant.Qrestante26.Height:=PrintDevisRestant.Desig26.Height;
          PrintDevisRestant.Prix26.Height:=PrintDevisRestant.Desig26.Height;
          PrintDevisRestant.MMarche26.Height:=PrintDevisRestant.Desig26.Height;
          PrintDevisRestant.MRealiser26.Height:=PrintDevisRestant.Desig26.Height;
          PrintDevisRestant.MRestant26.Height:=PrintDevisRestant.Desig26.Height;
     Position:=PrintDevisRestant.Desig26.Top+PrintDevisRestant.Desig26.Height-1;
     end;
     if(Indice=27)then
     begin
          PrintDevisRestant.Desig27.Height:=PrintDevisRestant.Desig27.Lines.Capacity*20;
          PrintDevisRestant.Code27.Height:=PrintDevisRestant.Desig27.Height;
          PrintDevisRestant.Um27.Height:=PrintDevisRestant.Desig27.Height;
          PrintDevisRestant.QMarche27.Height:=PrintDevisRestant.Desig27.Height;
          PrintDevisRestant.QRealiser27.Height:=PrintDevisRestant.Desig27.Height;
          PrintDevisRestant.Qrestante27.Height:=PrintDevisRestant.Desig27.Height;
          PrintDevisRestant.Prix27.Height:=PrintDevisRestant.Desig27.Height;
          PrintDevisRestant.MMarche27.Height:=PrintDevisRestant.Desig27.Height;
          PrintDevisRestant.MRealiser27.Height:=PrintDevisRestant.Desig27.Height;
          PrintDevisRestant.MRestant27.Height:=PrintDevisRestant.Desig27.Height;
     Position:=PrintDevisRestant.Desig27.Top+PrintDevisRestant.Desig27.Height-1;
     end;
     if(Indice=28)then
     begin
          PrintDevisRestant.Desig28.Height:=PrintDevisRestant.Desig28.Lines.Capacity*20;
          PrintDevisRestant.Code28.Height:=PrintDevisRestant.Desig28.Height;
          PrintDevisRestant.Um28.Height:=PrintDevisRestant.Desig28.Height;
          PrintDevisRestant.QMarche28.Height:=PrintDevisRestant.Desig28.Height;
          PrintDevisRestant.QRealiser28.Height:=PrintDevisRestant.Desig28.Height;
          PrintDevisRestant.Qrestante28.Height:=PrintDevisRestant.Desig28.Height;
          PrintDevisRestant.Prix28.Height:=PrintDevisRestant.Desig28.Height;
          PrintDevisRestant.MMarche28.Height:=PrintDevisRestant.Desig28.Height;
          PrintDevisRestant.MRealiser28.Height:=PrintDevisRestant.Desig28.Height;
          PrintDevisRestant.MRestant28.Height:=PrintDevisRestant.Desig28.Height;
     Position:=PrintDevisRestant.Desig28.Top+PrintDevisRestant.Desig28.Height-1;
     end;
     if(Indice=29)then
     begin
          PrintDevisRestant.Desig29.Height:=PrintDevisRestant.Desig29.Lines.Capacity*20;
          PrintDevisRestant.Code29.Height:=PrintDevisRestant.Desig29.Height;
          PrintDevisRestant.Um29.Height:=PrintDevisRestant.Desig29.Height;
          PrintDevisRestant.QMarche29.Height:=PrintDevisRestant.Desig29.Height;
          PrintDevisRestant.QRealiser29.Height:=PrintDevisRestant.Desig29.Height;
          PrintDevisRestant.Qrestante29.Height:=PrintDevisRestant.Desig29.Height;
          PrintDevisRestant.Prix29.Height:=PrintDevisRestant.Desig29.Height;
          PrintDevisRestant.MMarche29.Height:=PrintDevisRestant.Desig29.Height;
          PrintDevisRestant.MRealiser29.Height:=PrintDevisRestant.Desig29.Height;
          PrintDevisRestant.MRestant29.Height:=PrintDevisRestant.Desig29.Height;
     Position:=PrintDevisRestant.Desig29.Top+PrintDevisRestant.Desig29.Height-1;
     end;
     if(Indice=30)then
     begin
          PrintDevisRestant.Desig30.Height:=PrintDevisRestant.Desig30.Lines.Capacity*20;
          PrintDevisRestant.Code30.Height:=PrintDevisRestant.Desig30.Height;
          PrintDevisRestant.Um30.Height:=PrintDevisRestant.Desig30.Height;
          PrintDevisRestant.QMarche30.Height:=PrintDevisRestant.Desig30.Height;
          PrintDevisRestant.QRealiser30.Height:=PrintDevisRestant.Desig30.Height;
          PrintDevisRestant.Qrestante30.Height:=PrintDevisRestant.Desig30.Height;
          PrintDevisRestant.Prix30.Height:=PrintDevisRestant.Desig30.Height;
          PrintDevisRestant.MMarche30.Height:=PrintDevisRestant.Desig30.Height;
          PrintDevisRestant.MRealiser30.Height:=PrintDevisRestant.Desig30.Height;
          PrintDevisRestant.MRestant30.Height:=PrintDevisRestant.Desig30.Height;
     Position:=PrintDevisRestant.Desig30.Top+PrintDevisRestant.Desig30.Height-1;
     end;
     {********************* SUITE *********************************************}
     PositionInt:=Position;
     for LigneR:=Indice+1 to 50 do
     begin
          if(LigneR=2)then
          begin
               PrintDevisRestant.Code2.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig2.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um2.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche2.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser2.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante2.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix2.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche2.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser2.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant2.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig2.Top+PrintDevisRestant.Desig2.Height-1;
          end;
          if(LigneR=3)then
          begin
               PrintDevisRestant.Code3.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig3.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um3.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche3.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser3.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante3.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix3.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche3.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser3.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant3.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig3.Top+PrintDevisRestant.Desig3.Height-1;
          end;
          if(LigneR=4)then
          begin
               PrintDevisRestant.Code4.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig4.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um4.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche4.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser4.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante4.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix4.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche4.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser4.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant4.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig4.Top+PrintDevisRestant.Desig4.Height-1;
          end;
          if(LigneR=5)then
          begin
               PrintDevisRestant.Code5.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig5.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um5.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche5.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser5.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante5.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix5.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche5.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser5.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant5.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig5.Top+PrintDevisRestant.Desig5.Height-1;
          end;
          if(LigneR=6)then
          begin
               PrintDevisRestant.Code6.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig6.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um6.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche6.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser6.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante6.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix6.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche6.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser6.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant6.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig6.Top+PrintDevisRestant.Desig6.Height-1;
          end;
          if(LigneR=7)then
          begin
               PrintDevisRestant.Code7.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig7.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um7.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche7.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser7.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante7.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix7.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche7.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser7.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant7.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig7.Top+PrintDevisRestant.Desig7.Height-1;
          end;
          if(LigneR=8)then
          begin
               PrintDevisRestant.Code8.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig8.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um8.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche8.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser8.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante8.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix8.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche8.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser8.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant8.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig8.Top+PrintDevisRestant.Desig8.Height-1;
          end;
          if(LigneR=9)then
          begin
               PrintDevisRestant.Code9.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig9.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um9.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche9.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser9.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante9.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix9.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche9.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser9.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant9.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig9.Top+PrintDevisRestant.Desig9.Height-1;
          end;
          if(LigneR=10)then
          begin
               PrintDevisRestant.Code10.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig10.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um10.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche10.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser10.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante10.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix10.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche10.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser10.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant10.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig10.Top+PrintDevisRestant.Desig10.Height-1;
          end;
          if(LigneR=11)then
          begin
               PrintDevisRestant.Code11.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig11.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um11.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche11.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser11.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante11.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix11.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche11.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser11.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant11.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig11.Top+PrintDevisRestant.Desig11.Height-1;
          end;
          if(LigneR=12)then
          begin
               PrintDevisRestant.Code12.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig12.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um12.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche12.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser12.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante12.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix12.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche12.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser12.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant12.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig12.Top+PrintDevisRestant.Desig12.Height-1;
          end;
          if(LigneR=13)then
          begin
               PrintDevisRestant.Code13.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig13.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um13.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche13.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser13.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante13.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix13.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche13.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser13.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant13.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig13.Top+PrintDevisRestant.Desig13.Height-1;
          end;
          if(LigneR=14)then
          begin
               PrintDevisRestant.Code14.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig14.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um14.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche14.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser14.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante14.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix14.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche14.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser14.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant14.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig14.Top+PrintDevisRestant.Desig14.Height-1;
          end;
          if(LigneR=15)then
          begin
               PrintDevisRestant.Code15.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig15.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um15.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche15.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser15.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante15.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix15.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche15.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser15.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant15.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig15.Top+PrintDevisRestant.Desig15.Height-1;
          end;
          if(LigneR=16)then
          begin
               PrintDevisRestant.Code16.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig16.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um16.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche16.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser16.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante16.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix16.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche16.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser16.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant16.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig16.Top+PrintDevisRestant.Desig16.Height-1;
          end;
          if(LigneR=17)then
          begin
               PrintDevisRestant.Code17.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig17.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um17.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche17.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser17.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante17.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix17.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche17.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser17.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant17.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig17.Top+PrintDevisRestant.Desig17.Height-1;
          end;
          if(LigneR=18)then
          begin
               PrintDevisRestant.Code18.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig18.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um18.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche18.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser18.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante18.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix18.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche18.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser18.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant18.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig18.Top+PrintDevisRestant.Desig18.Height-1;
          end;
          if(LigneR=19)then
          begin
               PrintDevisRestant.Code19.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig19.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um19.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche19.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser19.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante19.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix19.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche19.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser19.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant19.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig19.Top+PrintDevisRestant.Desig19.Height-1;
          end;
          if(LigneR=20)then
          begin
               PrintDevisRestant.Code20.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig20.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um20.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche20.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser20.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante20.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix20.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche20.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser20.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant20.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig20.Top+PrintDevisRestant.Desig20.Height-1;
          end;
          if(LigneR=21)then
          begin
               PrintDevisRestant.Code21.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig21.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um21.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche21.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser21.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante21.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix21.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche21.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser21.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant21.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig21.Top+PrintDevisRestant.Desig21.Height-1;
          end;
          if(LigneR=22)then
          begin
               PrintDevisRestant.Code22.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig22.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um22.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche22.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser22.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante22.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix22.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche22.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser22.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant22.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig22.Top+PrintDevisRestant.Desig22.Height-1;
          end;
          if(LigneR=23)then
          begin
               PrintDevisRestant.Code23.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig23.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um23.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche23.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser23.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante23.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix23.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche23.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser23.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant23.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig23.Top+PrintDevisRestant.Desig23.Height-1;
          end;
          if(LigneR=24)then
          begin
               PrintDevisRestant.Code24.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig24.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um24.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche24.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser24.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante24.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix24.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche24.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser24.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant24.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig24.Top+PrintDevisRestant.Desig24.Height-1;
          end;
          if(LigneR=25)then
          begin
               PrintDevisRestant.Code25.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig25.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um25.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche25.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser25.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante25.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix25.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche25.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser25.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant25.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig25.Top+PrintDevisRestant.Desig25.Height-1;
          end;
          if(LigneR=26)then
          begin
               PrintDevisRestant.Code26.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig26.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um26.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche26.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser26.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante26.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix26.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche26.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser26.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant26.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig26.Top+PrintDevisRestant.Desig26.Height-1;
          end;
          if(LigneR=27)then
          begin
               PrintDevisRestant.Code27.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig27.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um27.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche27.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser27.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante27.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix27.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche27.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser27.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant27.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig27.Top+PrintDevisRestant.Desig27.Height-1;
          end;
          if(LigneR=28)then
          begin
               PrintDevisRestant.Code28.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig28.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um28.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche28.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser28.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante28.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix28.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche28.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser28.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant28.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig28.Top+PrintDevisRestant.Desig28.Height-1;
          end;
          if(LigneR=29)then
          begin
               PrintDevisRestant.Code29.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig29.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um29.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche29.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser29.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante29.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix29.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche29.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser29.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant29.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig29.Top+PrintDevisRestant.Desig29.Height-1;
          end;
          if(LigneR=30)then
          begin
               PrintDevisRestant.Code30.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Desig30.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Um30.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QMarche30.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.QRealiser30.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Qrestante30.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.Prix30.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MMarche30.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRealiser30.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisRestant.MRestant30.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisRestant.Desig30.Top+PrintDevisRestant.Desig30.Height-1;
          end;
     end;
end;

Procedure ClearDevisQE(Indice:integer; Visible:boolean);
begin
     if(Indice=1)then
     begin
          PrintDevisMarche.Code1.Lines.Clear;      PrintDevisMarche.Code1.Enabled:=Visible;
          PrintDevisMarche.Desig1.Lines.Clear;     PrintDevisMarche.Desig1.Enabled:=Visible;
          PrintDevisMarche.Um1.Lines.Clear;        PrintDevisMarche.Um1.Enabled:=Visible;
          PrintDevisMarche.Quantite1.Lines.Clear;  PrintDevisMarche.Quantite1.Enabled:=Visible;
          PrintDevisMarche.Prix1.Lines.Clear;      PrintDevisMarche.Prix1.Enabled:=Visible;
          PrintDevisMarche.Montant1.Lines.Clear;   PrintDevisMarche.Montant1.Enabled:=Visible;
     end;
     if(Indice=2)then
     begin
          PrintDevisMarche.Code2.Lines.Clear;      PrintDevisMarche.Code2.Enabled:=Visible;
          PrintDevisMarche.Desig2.Lines.Clear;     PrintDevisMarche.Desig2.Enabled:=Visible;
          PrintDevisMarche.Um2.Lines.Clear;        PrintDevisMarche.Um2.Enabled:=Visible;
          PrintDevisMarche.Quantite2.Lines.Clear;  PrintDevisMarche.Quantite2.Enabled:=Visible;
          PrintDevisMarche.Prix2.Lines.Clear;      PrintDevisMarche.Prix2.Enabled:=Visible;
          PrintDevisMarche.Montant2.Lines.Clear;   PrintDevisMarche.Montant2.Enabled:=Visible;
     end;
     if(Indice=3)then
     begin
          PrintDevisMarche.Code3.Lines.Clear;      PrintDevisMarche.Code3.Enabled:=Visible;
          PrintDevisMarche.Desig3.Lines.Clear;     PrintDevisMarche.Desig3.Enabled:=Visible;
          PrintDevisMarche.Um3.Lines.Clear;        PrintDevisMarche.Um3.Enabled:=Visible;
          PrintDevisMarche.Quantite3.Lines.Clear;  PrintDevisMarche.Quantite3.Enabled:=Visible;
          PrintDevisMarche.Prix3.Lines.Clear;      PrintDevisMarche.Prix3.Enabled:=Visible;
          PrintDevisMarche.Montant3.Lines.Clear;   PrintDevisMarche.Montant3.Enabled:=Visible;
     end;
     if(Indice=4)then
     begin
          PrintDevisMarche.Code4.Lines.Clear;      PrintDevisMarche.Code4.Enabled:=Visible;
          PrintDevisMarche.Desig4.Lines.Clear;     PrintDevisMarche.Desig4.Enabled:=Visible;
          PrintDevisMarche.Um4.Lines.Clear;        PrintDevisMarche.Um4.Enabled:=Visible;
          PrintDevisMarche.Quantite4.Lines.Clear;  PrintDevisMarche.Quantite4.Enabled:=Visible;
          PrintDevisMarche.Prix4.Lines.Clear;      PrintDevisMarche.Prix4.Enabled:=Visible;
          PrintDevisMarche.Montant4.Lines.Clear;   PrintDevisMarche.Montant4.Enabled:=Visible;
     end;
     if(Indice=5)then
     begin
          PrintDevisMarche.Code5.Lines.Clear;      PrintDevisMarche.Code5.Enabled:=Visible;
          PrintDevisMarche.Desig5.Lines.Clear;     PrintDevisMarche.Desig5.Enabled:=Visible;
          PrintDevisMarche.Um5.Lines.Clear;        PrintDevisMarche.Um5.Enabled:=Visible;
          PrintDevisMarche.Quantite5.Lines.Clear;  PrintDevisMarche.Quantite5.Enabled:=Visible;
          PrintDevisMarche.Prix5.Lines.Clear;      PrintDevisMarche.Prix5.Enabled:=Visible;
          PrintDevisMarche.Montant5.Lines.Clear;   PrintDevisMarche.Montant5.Enabled:=Visible;
     end;
     if(Indice=6)then
     begin
          PrintDevisMarche.Code6.Lines.Clear;      PrintDevisMarche.Code6.Enabled:=Visible;
          PrintDevisMarche.Desig6.Lines.Clear;     PrintDevisMarche.Desig6.Enabled:=Visible;
          PrintDevisMarche.Um6.Lines.Clear;        PrintDevisMarche.Um6.Enabled:=Visible;
          PrintDevisMarche.Quantite6.Lines.Clear;  PrintDevisMarche.Quantite6.Enabled:=Visible;
          PrintDevisMarche.Prix6.Lines.Clear;      PrintDevisMarche.Prix6.Enabled:=Visible;
          PrintDevisMarche.Montant6.Lines.Clear;   PrintDevisMarche.Montant6.Enabled:=Visible;
     end;
     if(Indice=7)then
     begin
          PrintDevisMarche.Code7.Lines.Clear;      PrintDevisMarche.Code7.Enabled:=Visible;
          PrintDevisMarche.Desig7.Lines.Clear;     PrintDevisMarche.Desig7.Enabled:=Visible;
          PrintDevisMarche.Um7.Lines.Clear;        PrintDevisMarche.Um7.Enabled:=Visible;
          PrintDevisMarche.Quantite7.Lines.Clear;  PrintDevisMarche.Quantite7.Enabled:=Visible;
          PrintDevisMarche.Prix7.Lines.Clear;      PrintDevisMarche.Prix7.Enabled:=Visible;
          PrintDevisMarche.Montant7.Lines.Clear;   PrintDevisMarche.Montant7.Enabled:=Visible;
     end;
     if(Indice=8)then
     begin
          PrintDevisMarche.Code8.Lines.Clear;      PrintDevisMarche.Code8.Enabled:=Visible;
          PrintDevisMarche.Desig8.Lines.Clear;     PrintDevisMarche.Desig8.Enabled:=Visible;
          PrintDevisMarche.Um8.Lines.Clear;        PrintDevisMarche.Um8.Enabled:=Visible;
          PrintDevisMarche.Quantite8.Lines.Clear;  PrintDevisMarche.Quantite8.Enabled:=Visible;
          PrintDevisMarche.Prix8.Lines.Clear;      PrintDevisMarche.Prix8.Enabled:=Visible;
          PrintDevisMarche.Montant8.Lines.Clear;   PrintDevisMarche.Montant8.Enabled:=Visible;
     end;
     if(Indice=9)then
     begin
          PrintDevisMarche.Code9.Lines.Clear;      PrintDevisMarche.Code9.Enabled:=Visible;
          PrintDevisMarche.Desig9.Lines.Clear;     PrintDevisMarche.Desig9.Enabled:=Visible;
          PrintDevisMarche.Um9.Lines.Clear;        PrintDevisMarche.Um9.Enabled:=Visible;
          PrintDevisMarche.Quantite9.Lines.Clear;  PrintDevisMarche.Quantite9.Enabled:=Visible;
          PrintDevisMarche.Prix9.Lines.Clear;      PrintDevisMarche.Prix9.Enabled:=Visible;
          PrintDevisMarche.Montant9.Lines.Clear;   PrintDevisMarche.Montant9.Enabled:=Visible;
     end;
     if(Indice=10)then
     begin
          PrintDevisMarche.Code10.Lines.Clear;      PrintDevisMarche.Code10.Enabled:=Visible;
          PrintDevisMarche.Desig10.Lines.Clear;     PrintDevisMarche.Desig10.Enabled:=Visible;
          PrintDevisMarche.Um10.Lines.Clear;        PrintDevisMarche.Um10.Enabled:=Visible;
          PrintDevisMarche.Quantite10.Lines.Clear;  PrintDevisMarche.Quantite10.Enabled:=Visible;
          PrintDevisMarche.Prix10.Lines.Clear;      PrintDevisMarche.Prix10.Enabled:=Visible;
          PrintDevisMarche.Montant10.Lines.Clear;   PrintDevisMarche.Montant10.Enabled:=Visible;
     end;
     if(Indice=11)then
     begin
          PrintDevisMarche.Code11.Lines.Clear;      PrintDevisMarche.Code11.Enabled:=Visible;
          PrintDevisMarche.Desig11.Lines.Clear;     PrintDevisMarche.Desig11.Enabled:=Visible;
          PrintDevisMarche.Um11.Lines.Clear;        PrintDevisMarche.Um11.Enabled:=Visible;
          PrintDevisMarche.Quantite11.Lines.Clear;  PrintDevisMarche.Quantite11.Enabled:=Visible;
          PrintDevisMarche.Prix11.Lines.Clear;      PrintDevisMarche.Prix11.Enabled:=Visible;
          PrintDevisMarche.Montant11.Lines.Clear;   PrintDevisMarche.Montant11.Enabled:=Visible;
     end;
     if(Indice=12)then
     begin
          PrintDevisMarche.Code12.Lines.Clear;      PrintDevisMarche.Code12.Enabled:=Visible;
          PrintDevisMarche.Desig12.Lines.Clear;     PrintDevisMarche.Desig12.Enabled:=Visible;
          PrintDevisMarche.Um12.Lines.Clear;        PrintDevisMarche.Um12.Enabled:=Visible;
          PrintDevisMarche.Quantite12.Lines.Clear;  PrintDevisMarche.Quantite12.Enabled:=Visible;
          PrintDevisMarche.Prix12.Lines.Clear;      PrintDevisMarche.Prix12.Enabled:=Visible;
          PrintDevisMarche.Montant12.Lines.Clear;   PrintDevisMarche.Montant12.Enabled:=Visible;
     end;
     if(Indice=13)then
     begin
          PrintDevisMarche.Code13.Lines.Clear;      PrintDevisMarche.Code13.Enabled:=Visible;
          PrintDevisMarche.Desig13.Lines.Clear;     PrintDevisMarche.Desig13.Enabled:=Visible;
          PrintDevisMarche.Um13.Lines.Clear;        PrintDevisMarche.Um13.Enabled:=Visible;
          PrintDevisMarche.Quantite13.Lines.Clear;  PrintDevisMarche.Quantite13.Enabled:=Visible;
          PrintDevisMarche.Prix13.Lines.Clear;      PrintDevisMarche.Prix13.Enabled:=Visible;
          PrintDevisMarche.Montant13.Lines.Clear;   PrintDevisMarche.Montant13.Enabled:=Visible;
     end;
     if(Indice=14)then
     begin
          PrintDevisMarche.Code14.Lines.Clear;      PrintDevisMarche.Code14.Enabled:=Visible;
          PrintDevisMarche.Desig14.Lines.Clear;     PrintDevisMarche.Desig14.Enabled:=Visible;
          PrintDevisMarche.Um14.Lines.Clear;        PrintDevisMarche.Um14.Enabled:=Visible;
          PrintDevisMarche.Quantite14.Lines.Clear;  PrintDevisMarche.Quantite14.Enabled:=Visible;
          PrintDevisMarche.Prix14.Lines.Clear;      PrintDevisMarche.Prix14.Enabled:=Visible;
          PrintDevisMarche.Montant14.Lines.Clear;   PrintDevisMarche.Montant14.Enabled:=Visible;
     end;
     if(Indice=15)then
     begin
          PrintDevisMarche.Code15.Lines.Clear;      PrintDevisMarche.Code15.Enabled:=Visible;
          PrintDevisMarche.Desig15.Lines.Clear;     PrintDevisMarche.Desig15.Enabled:=Visible;
          PrintDevisMarche.Um15.Lines.Clear;        PrintDevisMarche.Um15.Enabled:=Visible;
          PrintDevisMarche.Quantite15.Lines.Clear;  PrintDevisMarche.Quantite15.Enabled:=Visible;
          PrintDevisMarche.Prix15.Lines.Clear;      PrintDevisMarche.Prix15.Enabled:=Visible;
          PrintDevisMarche.Montant15.Lines.Clear;   PrintDevisMarche.Montant15.Enabled:=Visible;
     end;
     if(Indice=16)then
     begin
          PrintDevisMarche.Code16.Lines.Clear;      PrintDevisMarche.Code16.Enabled:=Visible;
          PrintDevisMarche.Desig16.Lines.Clear;     PrintDevisMarche.Desig16.Enabled:=Visible;
          PrintDevisMarche.Um16.Lines.Clear;        PrintDevisMarche.Um16.Enabled:=Visible;
          PrintDevisMarche.Quantite16.Lines.Clear;  PrintDevisMarche.Quantite16.Enabled:=Visible;
          PrintDevisMarche.Prix16.Lines.Clear;      PrintDevisMarche.Prix16.Enabled:=Visible;
          PrintDevisMarche.Montant16.Lines.Clear;   PrintDevisMarche.Montant16.Enabled:=Visible;
     end;
     if(Indice=17)then
     begin
          PrintDevisMarche.Code17.Lines.Clear;      PrintDevisMarche.Code17.Enabled:=Visible;
          PrintDevisMarche.Desig17.Lines.Clear;     PrintDevisMarche.Desig17.Enabled:=Visible;
          PrintDevisMarche.Um17.Lines.Clear;        PrintDevisMarche.Um17.Enabled:=Visible;
          PrintDevisMarche.Quantite17.Lines.Clear;  PrintDevisMarche.Quantite17.Enabled:=Visible;
          PrintDevisMarche.Prix17.Lines.Clear;      PrintDevisMarche.Prix17.Enabled:=Visible;
          PrintDevisMarche.Montant17.Lines.Clear;   PrintDevisMarche.Montant17.Enabled:=Visible;
     end;
     if(Indice=18)then
     begin
          PrintDevisMarche.Code18.Lines.Clear;      PrintDevisMarche.Code18.Enabled:=Visible;
          PrintDevisMarche.Desig18.Lines.Clear;     PrintDevisMarche.Desig18.Enabled:=Visible;
          PrintDevisMarche.Um18.Lines.Clear;        PrintDevisMarche.Um18.Enabled:=Visible;
          PrintDevisMarche.Quantite18.Lines.Clear;  PrintDevisMarche.Quantite18.Enabled:=Visible;
          PrintDevisMarche.Prix18.Lines.Clear;      PrintDevisMarche.Prix18.Enabled:=Visible;
          PrintDevisMarche.Montant18.Lines.Clear;   PrintDevisMarche.Montant18.Enabled:=Visible;
     end;
     if(Indice=19)then
     begin
          PrintDevisMarche.Code19.Lines.Clear;      PrintDevisMarche.Code19.Enabled:=Visible;
          PrintDevisMarche.Desig19.Lines.Clear;     PrintDevisMarche.Desig19.Enabled:=Visible;
          PrintDevisMarche.Um19.Lines.Clear;        PrintDevisMarche.Um19.Enabled:=Visible;
          PrintDevisMarche.Quantite19.Lines.Clear;  PrintDevisMarche.Quantite19.Enabled:=Visible;
          PrintDevisMarche.Prix19.Lines.Clear;      PrintDevisMarche.Prix19.Enabled:=Visible;
          PrintDevisMarche.Montant19.Lines.Clear;   PrintDevisMarche.Montant19.Enabled:=Visible;
     end;
     if(Indice=20)then
     begin
          PrintDevisMarche.Code20.Lines.Clear;      PrintDevisMarche.Code20.Enabled:=Visible;
          PrintDevisMarche.Desig20.Lines.Clear;     PrintDevisMarche.Desig20.Enabled:=Visible;
          PrintDevisMarche.Um20.Lines.Clear;        PrintDevisMarche.Um20.Enabled:=Visible;
          PrintDevisMarche.Quantite20.Lines.Clear;  PrintDevisMarche.Quantite20.Enabled:=Visible;
          PrintDevisMarche.Prix20.Lines.Clear;      PrintDevisMarche.Prix20.Enabled:=Visible;
          PrintDevisMarche.Montant20.Lines.Clear;   PrintDevisMarche.Montant20.Enabled:=Visible;
     end;
     if(Indice=21)then
     begin
          PrintDevisMarche.Code21.Lines.Clear;      PrintDevisMarche.Code21.Enabled:=Visible;
          PrintDevisMarche.Desig21.Lines.Clear;     PrintDevisMarche.Desig21.Enabled:=Visible;
          PrintDevisMarche.Um21.Lines.Clear;        PrintDevisMarche.Um21.Enabled:=Visible;
          PrintDevisMarche.Quantite21.Lines.Clear;  PrintDevisMarche.Quantite21.Enabled:=Visible;
          PrintDevisMarche.Prix21.Lines.Clear;      PrintDevisMarche.Prix21.Enabled:=Visible;
          PrintDevisMarche.Montant21.Lines.Clear;   PrintDevisMarche.Montant21.Enabled:=Visible;
     end;
     if(Indice=22)then
     begin
          PrintDevisMarche.Code22.Lines.Clear;      PrintDevisMarche.Code22.Enabled:=Visible;
          PrintDevisMarche.Desig22.Lines.Clear;     PrintDevisMarche.Desig22.Enabled:=Visible;
          PrintDevisMarche.Um22.Lines.Clear;        PrintDevisMarche.Um22.Enabled:=Visible;
          PrintDevisMarche.Quantite22.Lines.Clear;  PrintDevisMarche.Quantite22.Enabled:=Visible;
          PrintDevisMarche.Prix22.Lines.Clear;      PrintDevisMarche.Prix22.Enabled:=Visible;
          PrintDevisMarche.Montant22.Lines.Clear;   PrintDevisMarche.Montant22.Enabled:=Visible;
     end;
     if(Indice=23)then
     begin
          PrintDevisMarche.Code23.Lines.Clear;      PrintDevisMarche.Code23.Enabled:=Visible;
          PrintDevisMarche.Desig23.Lines.Clear;     PrintDevisMarche.Desig23.Enabled:=Visible;
          PrintDevisMarche.Um23.Lines.Clear;        PrintDevisMarche.Um23.Enabled:=Visible;
          PrintDevisMarche.Quantite23.Lines.Clear;  PrintDevisMarche.Quantite23.Enabled:=Visible;
          PrintDevisMarche.Prix23.Lines.Clear;      PrintDevisMarche.Prix23.Enabled:=Visible;
          PrintDevisMarche.Montant23.Lines.Clear;   PrintDevisMarche.Montant23.Enabled:=Visible;
     end;
     if(Indice=24)then
     begin
          PrintDevisMarche.Code24.Lines.Clear;      PrintDevisMarche.Code24.Enabled:=Visible;
          PrintDevisMarche.Desig24.Lines.Clear;     PrintDevisMarche.Desig24.Enabled:=Visible;
          PrintDevisMarche.Um24.Lines.Clear;        PrintDevisMarche.Um24.Enabled:=Visible;
          PrintDevisMarche.Quantite24.Lines.Clear;  PrintDevisMarche.Quantite24.Enabled:=Visible;
          PrintDevisMarche.Prix24.Lines.Clear;      PrintDevisMarche.Prix24.Enabled:=Visible;
          PrintDevisMarche.Montant24.Lines.Clear;   PrintDevisMarche.Montant24.Enabled:=Visible;
     end;
     if(Indice=25)then
     begin
          PrintDevisMarche.Code25.Lines.Clear;      PrintDevisMarche.Code25.Enabled:=Visible;
          PrintDevisMarche.Desig25.Lines.Clear;     PrintDevisMarche.Desig25.Enabled:=Visible;
          PrintDevisMarche.Um25.Lines.Clear;        PrintDevisMarche.Um25.Enabled:=Visible;
          PrintDevisMarche.Quantite25.Lines.Clear;  PrintDevisMarche.Quantite25.Enabled:=Visible;
          PrintDevisMarche.Prix25.Lines.Clear;      PrintDevisMarche.Prix25.Enabled:=Visible;
          PrintDevisMarche.Montant25.Lines.Clear;   PrintDevisMarche.Montant25.Enabled:=Visible;
     end;
     if(Indice=26)then
     begin
          PrintDevisMarche.Code26.Lines.Clear;      PrintDevisMarche.Code26.Enabled:=Visible;
          PrintDevisMarche.Desig26.Lines.Clear;     PrintDevisMarche.Desig26.Enabled:=Visible;
          PrintDevisMarche.Um26.Lines.Clear;        PrintDevisMarche.Um26.Enabled:=Visible;
          PrintDevisMarche.Quantite26.Lines.Clear;  PrintDevisMarche.Quantite26.Enabled:=Visible;
          PrintDevisMarche.Prix26.Lines.Clear;      PrintDevisMarche.Prix26.Enabled:=Visible;
          PrintDevisMarche.Montant26.Lines.Clear;   PrintDevisMarche.Montant26.Enabled:=Visible;
     end;
     if(Indice=27)then
     begin
          PrintDevisMarche.Code27.Lines.Clear;      PrintDevisMarche.Code27.Enabled:=Visible;
          PrintDevisMarche.Desig27.Lines.Clear;     PrintDevisMarche.Desig27.Enabled:=Visible;
          PrintDevisMarche.Um27.Lines.Clear;        PrintDevisMarche.Um27.Enabled:=Visible;
          PrintDevisMarche.Quantite27.Lines.Clear;  PrintDevisMarche.Quantite27.Enabled:=Visible;
          PrintDevisMarche.Prix27.Lines.Clear;      PrintDevisMarche.Prix27.Enabled:=Visible;
          PrintDevisMarche.Montant27.Lines.Clear;   PrintDevisMarche.Montant27.Enabled:=Visible;
     end;
     if(Indice=28)then
     begin
          PrintDevisMarche.Code28.Lines.Clear;      PrintDevisMarche.Code28.Enabled:=Visible;
          PrintDevisMarche.Desig28.Lines.Clear;     PrintDevisMarche.Desig28.Enabled:=Visible;
          PrintDevisMarche.Um28.Lines.Clear;        PrintDevisMarche.Um28.Enabled:=Visible;
          PrintDevisMarche.Quantite28.Lines.Clear;  PrintDevisMarche.Quantite28.Enabled:=Visible;
          PrintDevisMarche.Prix28.Lines.Clear;      PrintDevisMarche.Prix28.Enabled:=Visible;
          PrintDevisMarche.Montant28.Lines.Clear;   PrintDevisMarche.Montant28.Enabled:=Visible;
     end;
     if(Indice=29)then
     begin
          PrintDevisMarche.Code29.Lines.Clear;      PrintDevisMarche.Code29.Enabled:=Visible;
          PrintDevisMarche.Desig29.Lines.Clear;     PrintDevisMarche.Desig29.Enabled:=Visible;
          PrintDevisMarche.Um29.Lines.Clear;        PrintDevisMarche.Um29.Enabled:=Visible;
          PrintDevisMarche.Quantite29.Lines.Clear;  PrintDevisMarche.Quantite29.Enabled:=Visible;
          PrintDevisMarche.Prix29.Lines.Clear;      PrintDevisMarche.Prix29.Enabled:=Visible;
          PrintDevisMarche.Montant29.Lines.Clear;   PrintDevisMarche.Montant29.Enabled:=Visible;
     end;
     if(Indice=30)then
     begin
          PrintDevisMarche.Code30.Lines.Clear;      PrintDevisMarche.Code30.Enabled:=Visible;
          PrintDevisMarche.Desig30.Lines.Clear;     PrintDevisMarche.Desig30.Enabled:=Visible;
          PrintDevisMarche.Um30.Lines.Clear;        PrintDevisMarche.Um30.Enabled:=Visible;
          PrintDevisMarche.Quantite30.Lines.Clear;  PrintDevisMarche.Quantite30.Enabled:=Visible;
          PrintDevisMarche.Prix30.Lines.Clear;      PrintDevisMarche.Prix30.Enabled:=Visible;
          PrintDevisMarche.Montant30.Lines.Clear;   PrintDevisMarche.Montant30.Enabled:=Visible;
     end;
     if(Indice=31)then
     begin
          PrintDevisMarche.Code31.Lines.Clear;      PrintDevisMarche.Code31.Enabled:=Visible;
          PrintDevisMarche.Desig31.Lines.Clear;     PrintDevisMarche.Desig31.Enabled:=Visible;
          PrintDevisMarche.Um31.Lines.Clear;        PrintDevisMarche.Um31.Enabled:=Visible;
          PrintDevisMarche.Quantite31.Lines.Clear;  PrintDevisMarche.Quantite31.Enabled:=Visible;
          PrintDevisMarche.Prix31.Lines.Clear;      PrintDevisMarche.Prix31.Enabled:=Visible;
          PrintDevisMarche.Montant31.Lines.Clear;   PrintDevisMarche.Montant31.Enabled:=Visible;
     end;
     if(Indice=32)then
     begin
          PrintDevisMarche.Code32.Lines.Clear;      PrintDevisMarche.Code32.Enabled:=Visible;
          PrintDevisMarche.Desig32.Lines.Clear;     PrintDevisMarche.Desig32.Enabled:=Visible;
          PrintDevisMarche.Um32.Lines.Clear;        PrintDevisMarche.Um32.Enabled:=Visible;
          PrintDevisMarche.Quantite32.Lines.Clear;  PrintDevisMarche.Quantite32.Enabled:=Visible;
          PrintDevisMarche.Prix32.Lines.Clear;      PrintDevisMarche.Prix32.Enabled:=Visible;
          PrintDevisMarche.Montant32.Lines.Clear;   PrintDevisMarche.Montant32.Enabled:=Visible;
     end;
     if(Indice=33)then
     begin
          PrintDevisMarche.Code33.Lines.Clear;      PrintDevisMarche.Code33.Enabled:=Visible;
          PrintDevisMarche.Desig33.Lines.Clear;     PrintDevisMarche.Desig33.Enabled:=Visible;
          PrintDevisMarche.Um33.Lines.Clear;        PrintDevisMarche.Um33.Enabled:=Visible;
          PrintDevisMarche.Quantite33.Lines.Clear;  PrintDevisMarche.Quantite33.Enabled:=Visible;
          PrintDevisMarche.Prix33.Lines.Clear;      PrintDevisMarche.Prix33.Enabled:=Visible;
          PrintDevisMarche.Montant33.Lines.Clear;   PrintDevisMarche.Montant33.Enabled:=Visible;
     end;
     if(Indice=34)then
     begin
          PrintDevisMarche.Code34.Lines.Clear;      PrintDevisMarche.Code34.Enabled:=Visible;
          PrintDevisMarche.Desig34.Lines.Clear;     PrintDevisMarche.Desig34.Enabled:=Visible;
          PrintDevisMarche.Um34.Lines.Clear;        PrintDevisMarche.Um34.Enabled:=Visible;
          PrintDevisMarche.Quantite34.Lines.Clear;  PrintDevisMarche.Quantite34.Enabled:=Visible;
          PrintDevisMarche.Prix34.Lines.Clear;      PrintDevisMarche.Prix34.Enabled:=Visible;
          PrintDevisMarche.Montant34.Lines.Clear;   PrintDevisMarche.Montant34.Enabled:=Visible;
     end;
     if(Indice=35)then
     begin
          PrintDevisMarche.Code35.Lines.Clear;      PrintDevisMarche.Code35.Enabled:=Visible;
          PrintDevisMarche.Desig35.Lines.Clear;     PrintDevisMarche.Desig35.Enabled:=Visible;
          PrintDevisMarche.Um35.Lines.Clear;        PrintDevisMarche.Um35.Enabled:=Visible;
          PrintDevisMarche.Quantite35.Lines.Clear;  PrintDevisMarche.Quantite35.Enabled:=Visible;
          PrintDevisMarche.Prix35.Lines.Clear;      PrintDevisMarche.Prix35.Enabled:=Visible;
          PrintDevisMarche.Montant35.Lines.Clear;   PrintDevisMarche.Montant35.Enabled:=Visible;
     end;
     if(Indice=36)then
     begin
          PrintDevisMarche.Code36.Lines.Clear;      PrintDevisMarche.Code36.Enabled:=Visible;
          PrintDevisMarche.Desig36.Lines.Clear;     PrintDevisMarche.Desig36.Enabled:=Visible;
          PrintDevisMarche.Um36.Lines.Clear;        PrintDevisMarche.Um36.Enabled:=Visible;
          PrintDevisMarche.Quantite36.Lines.Clear;  PrintDevisMarche.Quantite36.Enabled:=Visible;
          PrintDevisMarche.Prix36.Lines.Clear;      PrintDevisMarche.Prix36.Enabled:=Visible;
          PrintDevisMarche.Montant36.Lines.Clear;   PrintDevisMarche.Montant36.Enabled:=Visible;
     end;
     if(Indice=37)then
     begin
          PrintDevisMarche.Code37.Lines.Clear;      PrintDevisMarche.Code37.Enabled:=Visible;
          PrintDevisMarche.Desig37.Lines.Clear;     PrintDevisMarche.Desig37.Enabled:=Visible;
          PrintDevisMarche.Um37.Lines.Clear;        PrintDevisMarche.Um37.Enabled:=Visible;
          PrintDevisMarche.Quantite37.Lines.Clear;  PrintDevisMarche.Quantite37.Enabled:=Visible;
          PrintDevisMarche.Prix37.Lines.Clear;      PrintDevisMarche.Prix37.Enabled:=Visible;
          PrintDevisMarche.Montant37.Lines.Clear;   PrintDevisMarche.Montant37.Enabled:=Visible;
     end;
     if(Indice=38)then
     begin
          PrintDevisMarche.Code38.Lines.Clear;      PrintDevisMarche.Code38.Enabled:=Visible;
          PrintDevisMarche.Desig38.Lines.Clear;     PrintDevisMarche.Desig38.Enabled:=Visible;
          PrintDevisMarche.Um38.Lines.Clear;        PrintDevisMarche.Um38.Enabled:=Visible;
          PrintDevisMarche.Quantite38.Lines.Clear;  PrintDevisMarche.Quantite38.Enabled:=Visible;
          PrintDevisMarche.Prix38.Lines.Clear;      PrintDevisMarche.Prix38.Enabled:=Visible;
          PrintDevisMarche.Montant38.Lines.Clear;   PrintDevisMarche.Montant38.Enabled:=Visible;
     end;
     if(Indice=39)then
     begin
          PrintDevisMarche.Code39.Lines.Clear;      PrintDevisMarche.Code39.Enabled:=Visible;
          PrintDevisMarche.Desig39.Lines.Clear;     PrintDevisMarche.Desig39.Enabled:=Visible;
          PrintDevisMarche.Um39.Lines.Clear;        PrintDevisMarche.Um39.Enabled:=Visible;
          PrintDevisMarche.Quantite39.Lines.Clear;  PrintDevisMarche.Quantite39.Enabled:=Visible;
          PrintDevisMarche.Prix39.Lines.Clear;      PrintDevisMarche.Prix39.Enabled:=Visible;
          PrintDevisMarche.Montant39.Lines.Clear;   PrintDevisMarche.Montant39.Enabled:=Visible;
     end;
     if(Indice=40)then
     begin
          PrintDevisMarche.Code40.Lines.Clear;      PrintDevisMarche.Code40.Enabled:=Visible;
          PrintDevisMarche.Desig40.Lines.Clear;     PrintDevisMarche.Desig40.Enabled:=Visible;
          PrintDevisMarche.Um40.Lines.Clear;        PrintDevisMarche.Um40.Enabled:=Visible;
          PrintDevisMarche.Quantite40.Lines.Clear;  PrintDevisMarche.Quantite40.Enabled:=Visible;
          PrintDevisMarche.Prix40.Lines.Clear;      PrintDevisMarche.Prix40.Enabled:=Visible;
          PrintDevisMarche.Montant40.Lines.Clear;   PrintDevisMarche.Montant40.Enabled:=Visible;
     end;
     if(Indice=41)then
     begin
          PrintDevisMarche.Code41.Lines.Clear;      PrintDevisMarche.Code41.Enabled:=Visible;
          PrintDevisMarche.Desig41.Lines.Clear;     PrintDevisMarche.Desig41.Enabled:=Visible;
          PrintDevisMarche.Um41.Lines.Clear;        PrintDevisMarche.Um41.Enabled:=Visible;
          PrintDevisMarche.Quantite41.Lines.Clear;  PrintDevisMarche.Quantite41.Enabled:=Visible;
          PrintDevisMarche.Prix41.Lines.Clear;      PrintDevisMarche.Prix41.Enabled:=Visible;
          PrintDevisMarche.Montant41.Lines.Clear;   PrintDevisMarche.Montant41.Enabled:=Visible;
     end;
     if(Indice=42)then
     begin
          PrintDevisMarche.Code42.Lines.Clear;      PrintDevisMarche.Code42.Enabled:=Visible;
          PrintDevisMarche.Desig42.Lines.Clear;     PrintDevisMarche.Desig42.Enabled:=Visible;
          PrintDevisMarche.Um42.Lines.Clear;        PrintDevisMarche.Um42.Enabled:=Visible;
          PrintDevisMarche.Quantite42.Lines.Clear;  PrintDevisMarche.Quantite42.Enabled:=Visible;
          PrintDevisMarche.Prix42.Lines.Clear;      PrintDevisMarche.Prix42.Enabled:=Visible;
          PrintDevisMarche.Montant42.Lines.Clear;   PrintDevisMarche.Montant42.Enabled:=Visible;
     end;
     if(Indice=43)then
     begin
          PrintDevisMarche.Code43.Lines.Clear;      PrintDevisMarche.Code43.Enabled:=Visible;
          PrintDevisMarche.Desig43.Lines.Clear;     PrintDevisMarche.Desig43.Enabled:=Visible;
          PrintDevisMarche.Um43.Lines.Clear;        PrintDevisMarche.Um43.Enabled:=Visible;
          PrintDevisMarche.Quantite43.Lines.Clear;  PrintDevisMarche.Quantite43.Enabled:=Visible;
          PrintDevisMarche.Prix43.Lines.Clear;      PrintDevisMarche.Prix43.Enabled:=Visible;
          PrintDevisMarche.Montant43.Lines.Clear;   PrintDevisMarche.Montant43.Enabled:=Visible;
     end;
     if(Indice=44)then
     begin
          PrintDevisMarche.Code44.Lines.Clear;      PrintDevisMarche.Code44.Enabled:=Visible;
          PrintDevisMarche.Desig44.Lines.Clear;     PrintDevisMarche.Desig44.Enabled:=Visible;
          PrintDevisMarche.Um44.Lines.Clear;        PrintDevisMarche.Um44.Enabled:=Visible;
          PrintDevisMarche.Quantite44.Lines.Clear;  PrintDevisMarche.Quantite44.Enabled:=Visible;
          PrintDevisMarche.Prix44.Lines.Clear;      PrintDevisMarche.Prix44.Enabled:=Visible;
          PrintDevisMarche.Montant44.Lines.Clear;   PrintDevisMarche.Montant44.Enabled:=Visible;
     end;
     if(Indice=45)then
     begin
          PrintDevisMarche.Code45.Lines.Clear;      PrintDevisMarche.Code45.Enabled:=Visible;
          PrintDevisMarche.Desig45.Lines.Clear;     PrintDevisMarche.Desig45.Enabled:=Visible;
          PrintDevisMarche.Um45.Lines.Clear;        PrintDevisMarche.Um45.Enabled:=Visible;
          PrintDevisMarche.Quantite45.Lines.Clear;  PrintDevisMarche.Quantite45.Enabled:=Visible;
          PrintDevisMarche.Prix45.Lines.Clear;      PrintDevisMarche.Prix45.Enabled:=Visible;
          PrintDevisMarche.Montant45.Lines.Clear;   PrintDevisMarche.Montant45.Enabled:=Visible;
     end;
     if(Indice=46)then
     begin
          PrintDevisMarche.Code46.Lines.Clear;      PrintDevisMarche.Code46.Enabled:=Visible;
          PrintDevisMarche.Desig46.Lines.Clear;     PrintDevisMarche.Desig46.Enabled:=Visible;
          PrintDevisMarche.Um46.Lines.Clear;        PrintDevisMarche.Um46.Enabled:=Visible;
          PrintDevisMarche.Quantite46.Lines.Clear;  PrintDevisMarche.Quantite46.Enabled:=Visible;
          PrintDevisMarche.Prix46.Lines.Clear;      PrintDevisMarche.Prix46.Enabled:=Visible;
          PrintDevisMarche.Montant46.Lines.Clear;   PrintDevisMarche.Montant46.Enabled:=Visible;
     end;
     if(Indice=47)then
     begin
          PrintDevisMarche.Code47.Lines.Clear;      PrintDevisMarche.Code47.Enabled:=Visible;
          PrintDevisMarche.Desig47.Lines.Clear;     PrintDevisMarche.Desig47.Enabled:=Visible;
          PrintDevisMarche.Um47.Lines.Clear;        PrintDevisMarche.Um47.Enabled:=Visible;
          PrintDevisMarche.Quantite47.Lines.Clear;  PrintDevisMarche.Quantite47.Enabled:=Visible;
          PrintDevisMarche.Prix47.Lines.Clear;      PrintDevisMarche.Prix47.Enabled:=Visible;
          PrintDevisMarche.Montant47.Lines.Clear;   PrintDevisMarche.Montant47.Enabled:=Visible;
     end;
     if(Indice=48)then
     begin
          PrintDevisMarche.Code48.Lines.Clear;      PrintDevisMarche.Code48.Enabled:=Visible;
          PrintDevisMarche.Desig48.Lines.Clear;     PrintDevisMarche.Desig48.Enabled:=Visible;
          PrintDevisMarche.Um48.Lines.Clear;        PrintDevisMarche.Um48.Enabled:=Visible;
          PrintDevisMarche.Quantite48.Lines.Clear;  PrintDevisMarche.Quantite48.Enabled:=Visible;
          PrintDevisMarche.Prix48.Lines.Clear;      PrintDevisMarche.Prix48.Enabled:=Visible;
          PrintDevisMarche.Montant48.Lines.Clear;   PrintDevisMarche.Montant48.Enabled:=Visible;
     end;
     if(Indice=49)then
     begin
          PrintDevisMarche.Code49.Lines.Clear;      PrintDevisMarche.Code49.Enabled:=Visible;
          PrintDevisMarche.Desig49.Lines.Clear;     PrintDevisMarche.Desig49.Enabled:=Visible;
          PrintDevisMarche.Um49.Lines.Clear;        PrintDevisMarche.Um49.Enabled:=Visible;
          PrintDevisMarche.Quantite49.Lines.Clear;  PrintDevisMarche.Quantite49.Enabled:=Visible;
          PrintDevisMarche.Prix49.Lines.Clear;      PrintDevisMarche.Prix49.Enabled:=Visible;
          PrintDevisMarche.Montant49.Lines.Clear;   PrintDevisMarche.Montant49.Enabled:=Visible;
     end;
     if(Indice=50)then
     begin
          PrintDevisMarche.Code50.Lines.Clear;      PrintDevisMarche.Code50.Enabled:=Visible;
          PrintDevisMarche.Desig50.Lines.Clear;     PrintDevisMarche.Desig50.Enabled:=Visible;
          PrintDevisMarche.Um50.Lines.Clear;        PrintDevisMarche.Um50.Enabled:=Visible;
          PrintDevisMarche.Quantite50.Lines.Clear;  PrintDevisMarche.Quantite50.Enabled:=Visible;
          PrintDevisMarche.Prix50.Lines.Clear;      PrintDevisMarche.Prix50.Enabled:=Visible;
          PrintDevisMarche.Montant50.Lines.Clear;   PrintDevisMarche.Montant50.Enabled:=Visible;
     end;
end;

Procedure HeightDevisQE(Indice:integer; var Position:integer);
var  LigneR,PositionInt,PositionMax:integer;
begin
PositionMax:=990;
     if(Indice=1)then
     begin
          PrintDevisMarche.Code1.Top:=32;
          PrintDevisMarche.Desig1.Top:=32;
          PrintDevisMarche.Um1.Top:=32;
          PrintDevisMarche.Quantite1.Top:=32;
          PrintDevisMarche.Prix1.Top:=32;
          PrintDevisMarche.Montant1.Top:=32;

          PrintDevisMarche.Desig1.Height:=PrintDevisMarche.Desig1.Lines.Capacity*20;
          PrintDevisMarche.Code1.Height:=PrintDevisMarche.Desig1.Height;
          PrintDevisMarche.Um1.Height:=PrintDevisMarche.Desig1.Height;
          PrintDevisMarche.Quantite1.Height:=PrintDevisMarche.Desig1.Height;
          PrintDevisMarche.Prix1.Height:=PrintDevisMarche.Desig1.Height;
          PrintDevisMarche.Montant1.Height:=PrintDevisMarche.Desig1.Height;
     Position:=PrintDevisMarche.Desig1.Top+PrintDevisMarche.Desig1.Height-1;
     end;
     if(Indice=2)then
     begin
          PrintDevisMarche.Desig2.Height:=PrintDevisMarche.Desig2.Lines.Capacity*20;
          PrintDevisMarche.Code2.Height:=PrintDevisMarche.Desig2.Height;
          PrintDevisMarche.Um2.Height:=PrintDevisMarche.Desig2.Height;
          PrintDevisMarche.Quantite2.Height:=PrintDevisMarche.Desig2.Height;
          PrintDevisMarche.Prix2.Height:=PrintDevisMarche.Desig2.Height;
          PrintDevisMarche.Montant2.Height:=PrintDevisMarche.Desig2.Height;
     Position:=PrintDevisMarche.Desig2.Top+PrintDevisMarche.Desig2.Height-1;
     end;
     if(Indice=3)then
     begin
          PrintDevisMarche.Desig3.Height:=PrintDevisMarche.Desig3.Lines.Capacity*20;
          PrintDevisMarche.Code3.Height:=PrintDevisMarche.Desig3.Height;
          PrintDevisMarche.Um3.Height:=PrintDevisMarche.Desig3.Height;
          PrintDevisMarche.Quantite3.Height:=PrintDevisMarche.Desig3.Height;
          PrintDevisMarche.Prix3.Height:=PrintDevisMarche.Desig3.Height;
          PrintDevisMarche.Montant3.Height:=PrintDevisMarche.Desig3.Height;
     Position:=PrintDevisMarche.Desig3.Top+PrintDevisMarche.Desig3.Height-1;
     end;
     if(Indice=4)then
     begin
          PrintDevisMarche.Desig4.Height:=PrintDevisMarche.Desig4.Lines.Capacity*20;
          PrintDevisMarche.Code4.Height:=PrintDevisMarche.Desig4.Height;
          PrintDevisMarche.Um4.Height:=PrintDevisMarche.Desig4.Height;
          PrintDevisMarche.Quantite4.Height:=PrintDevisMarche.Desig4.Height;
          PrintDevisMarche.Prix4.Height:=PrintDevisMarche.Desig4.Height;
          PrintDevisMarche.Montant4.Height:=PrintDevisMarche.Desig4.Height;
     Position:=PrintDevisMarche.Desig4.Top+PrintDevisMarche.Desig4.Height-1;
     end;
     if(Indice=5)then
     begin
          PrintDevisMarche.Desig5.Height:=PrintDevisMarche.Desig5.Lines.Capacity*20;
          PrintDevisMarche.Code5.Height:=PrintDevisMarche.Desig5.Height;
          PrintDevisMarche.Um5.Height:=PrintDevisMarche.Desig5.Height;
          PrintDevisMarche.Quantite5.Height:=PrintDevisMarche.Desig5.Height;
          PrintDevisMarche.Prix5.Height:=PrintDevisMarche.Desig5.Height;
          PrintDevisMarche.Montant5.Height:=PrintDevisMarche.Desig5.Height;
     Position:=PrintDevisMarche.Desig5.Top+PrintDevisMarche.Desig5.Height-1;
     end;
     if(Indice=6)then
     begin
          PrintDevisMarche.Desig6.Height:=PrintDevisMarche.Desig6.Lines.Capacity*20;
          PrintDevisMarche.Code6.Height:=PrintDevisMarche.Desig6.Height;
          PrintDevisMarche.Um6.Height:=PrintDevisMarche.Desig6.Height;
          PrintDevisMarche.Quantite6.Height:=PrintDevisMarche.Desig6.Height;
          PrintDevisMarche.Prix6.Height:=PrintDevisMarche.Desig6.Height;
          PrintDevisMarche.Montant6.Height:=PrintDevisMarche.Desig6.Height;
     Position:=PrintDevisMarche.Desig6.Top+PrintDevisMarche.Desig6.Height-1;
     end;
     if(Indice=7)then
     begin
          PrintDevisMarche.Desig7.Height:=PrintDevisMarche.Desig7.Lines.Capacity*20;
          PrintDevisMarche.Code7.Height:=PrintDevisMarche.Desig7.Height;
          PrintDevisMarche.Um7.Height:=PrintDevisMarche.Desig7.Height;
          PrintDevisMarche.Quantite7.Height:=PrintDevisMarche.Desig7.Height;
          PrintDevisMarche.Prix7.Height:=PrintDevisMarche.Desig7.Height;
          PrintDevisMarche.Montant7.Height:=PrintDevisMarche.Desig7.Height;
     Position:=PrintDevisMarche.Desig7.Top+PrintDevisMarche.Desig7.Height-1;
     end;
     if(Indice=8)then
     begin
          PrintDevisMarche.Desig8.Height:=PrintDevisMarche.Desig8.Lines.Capacity*20;
          PrintDevisMarche.Code8.Height:=PrintDevisMarche.Desig8.Height;
          PrintDevisMarche.Um8.Height:=PrintDevisMarche.Desig8.Height;
          PrintDevisMarche.Quantite8.Height:=PrintDevisMarche.Desig8.Height;
          PrintDevisMarche.Prix8.Height:=PrintDevisMarche.Desig8.Height;
          PrintDevisMarche.Montant8.Height:=PrintDevisMarche.Desig8.Height;
     Position:=PrintDevisMarche.Desig8.Top+PrintDevisMarche.Desig8.Height-1;
     end;
     if(Indice=9)then
     begin
          PrintDevisMarche.Desig9.Height:=PrintDevisMarche.Desig9.Lines.Capacity*20;
          PrintDevisMarche.Code9.Height:=PrintDevisMarche.Desig9.Height;
          PrintDevisMarche.Um9.Height:=PrintDevisMarche.Desig9.Height;
          PrintDevisMarche.Quantite9.Height:=PrintDevisMarche.Desig9.Height;
          PrintDevisMarche.Prix9.Height:=PrintDevisMarche.Desig9.Height;
          PrintDevisMarche.Montant9.Height:=PrintDevisMarche.Desig9.Height;
     Position:=PrintDevisMarche.Desig9.Top+PrintDevisMarche.Desig9.Height-1;
     end;
     if(Indice=10)then
     begin
          PrintDevisMarche.Desig10.Height:=PrintDevisMarche.Desig10.Lines.Capacity*20;
          PrintDevisMarche.Code10.Height:=PrintDevisMarche.Desig10.Height;
          PrintDevisMarche.Um10.Height:=PrintDevisMarche.Desig10.Height;
          PrintDevisMarche.Quantite10.Height:=PrintDevisMarche.Desig10.Height;
          PrintDevisMarche.Prix10.Height:=PrintDevisMarche.Desig10.Height;
          PrintDevisMarche.Montant10.Height:=PrintDevisMarche.Desig10.Height;
     Position:=PrintDevisMarche.Desig10.Top+PrintDevisMarche.Desig10.Height-1;
     end;
     if(Indice=11)then
     begin
          PrintDevisMarche.Desig11.Height:=PrintDevisMarche.Desig11.Lines.Capacity*20;
          PrintDevisMarche.Code11.Height:=PrintDevisMarche.Desig11.Height;
          PrintDevisMarche.Um11.Height:=PrintDevisMarche.Desig11.Height;
          PrintDevisMarche.Quantite11.Height:=PrintDevisMarche.Desig11.Height;
          PrintDevisMarche.Prix11.Height:=PrintDevisMarche.Desig11.Height;
          PrintDevisMarche.Montant11.Height:=PrintDevisMarche.Desig11.Height;
     Position:=PrintDevisMarche.Desig11.Top+PrintDevisMarche.Desig11.Height-1;
     end;
     if(Indice=12)then
     begin
          PrintDevisMarche.Desig12.Height:=PrintDevisMarche.Desig12.Lines.Capacity*20;
          PrintDevisMarche.Code12.Height:=PrintDevisMarche.Desig12.Height;
          PrintDevisMarche.Um12.Height:=PrintDevisMarche.Desig12.Height;
          PrintDevisMarche.Quantite12.Height:=PrintDevisMarche.Desig12.Height;
          PrintDevisMarche.Prix12.Height:=PrintDevisMarche.Desig12.Height;
          PrintDevisMarche.Montant12.Height:=PrintDevisMarche.Desig12.Height;
     Position:=PrintDevisMarche.Desig12.Top+PrintDevisMarche.Desig12.Height-1;
     end;
     if(Indice=13)then
     begin
          PrintDevisMarche.Desig13.Height:=PrintDevisMarche.Desig13.Lines.Capacity*20;
          PrintDevisMarche.Code13.Height:=PrintDevisMarche.Desig13.Height;
          PrintDevisMarche.Um13.Height:=PrintDevisMarche.Desig13.Height;
          PrintDevisMarche.Quantite13.Height:=PrintDevisMarche.Desig13.Height;
          PrintDevisMarche.Prix13.Height:=PrintDevisMarche.Desig13.Height;
          PrintDevisMarche.Montant13.Height:=PrintDevisMarche.Desig13.Height;
     Position:=PrintDevisMarche.Desig13.Top+PrintDevisMarche.Desig13.Height-1;
     end;
     if(Indice=14)then
     begin
          PrintDevisMarche.Desig14.Height:=PrintDevisMarche.Desig14.Lines.Capacity*20;
          PrintDevisMarche.Code14.Height:=PrintDevisMarche.Desig14.Height;
          PrintDevisMarche.Um14.Height:=PrintDevisMarche.Desig14.Height;
          PrintDevisMarche.Quantite14.Height:=PrintDevisMarche.Desig14.Height;
          PrintDevisMarche.Prix14.Height:=PrintDevisMarche.Desig14.Height;
          PrintDevisMarche.Montant14.Height:=PrintDevisMarche.Desig14.Height;
     Position:=PrintDevisMarche.Desig14.Top+PrintDevisMarche.Desig14.Height-1;
     end;
     if(Indice=15)then
     begin
          PrintDevisMarche.Desig15.Height:=PrintDevisMarche.Desig15.Lines.Capacity*20;
          PrintDevisMarche.Code15.Height:=PrintDevisMarche.Desig15.Height;
          PrintDevisMarche.Um15.Height:=PrintDevisMarche.Desig15.Height;
          PrintDevisMarche.Quantite15.Height:=PrintDevisMarche.Desig15.Height;
          PrintDevisMarche.Prix15.Height:=PrintDevisMarche.Desig15.Height;
          PrintDevisMarche.Montant15.Height:=PrintDevisMarche.Desig15.Height;
     Position:=PrintDevisMarche.Desig15.Top+PrintDevisMarche.Desig15.Height-1;
     end;
     if(Indice=16)then
     begin
          PrintDevisMarche.Desig16.Height:=PrintDevisMarche.Desig16.Lines.Capacity*20;
          PrintDevisMarche.Code16.Height:=PrintDevisMarche.Desig16.Height;
          PrintDevisMarche.Um16.Height:=PrintDevisMarche.Desig16.Height;
          PrintDevisMarche.Quantite16.Height:=PrintDevisMarche.Desig16.Height;
          PrintDevisMarche.Prix16.Height:=PrintDevisMarche.Desig16.Height;
          PrintDevisMarche.Montant16.Height:=PrintDevisMarche.Desig16.Height;
     Position:=PrintDevisMarche.Desig16.Top+PrintDevisMarche.Desig16.Height-1;
     end;
     if(Indice=17)then
     begin
          PrintDevisMarche.Desig17.Height:=PrintDevisMarche.Desig17.Lines.Capacity*20;
          PrintDevisMarche.Code17.Height:=PrintDevisMarche.Desig17.Height;
          PrintDevisMarche.Um17.Height:=PrintDevisMarche.Desig17.Height;
          PrintDevisMarche.Quantite17.Height:=PrintDevisMarche.Desig17.Height;
          PrintDevisMarche.Prix17.Height:=PrintDevisMarche.Desig17.Height;
          PrintDevisMarche.Montant17.Height:=PrintDevisMarche.Desig17.Height;
     Position:=PrintDevisMarche.Desig17.Top+PrintDevisMarche.Desig17.Height-1;
     end;
     if(Indice=18)then
     begin
          PrintDevisMarche.Desig18.Height:=PrintDevisMarche.Desig18.Lines.Capacity*20;
          PrintDevisMarche.Code18.Height:=PrintDevisMarche.Desig18.Height;
          PrintDevisMarche.Um18.Height:=PrintDevisMarche.Desig18.Height;
          PrintDevisMarche.Quantite18.Height:=PrintDevisMarche.Desig18.Height;
          PrintDevisMarche.Prix18.Height:=PrintDevisMarche.Desig18.Height;
          PrintDevisMarche.Montant18.Height:=PrintDevisMarche.Desig18.Height;
     Position:=PrintDevisMarche.Desig18.Top+PrintDevisMarche.Desig18.Height-1;
     end;
     if(Indice=19)then
     begin
          PrintDevisMarche.Desig19.Height:=PrintDevisMarche.Desig19.Lines.Capacity*20;
          PrintDevisMarche.Code19.Height:=PrintDevisMarche.Desig19.Height;
          PrintDevisMarche.Um19.Height:=PrintDevisMarche.Desig19.Height;
          PrintDevisMarche.Quantite19.Height:=PrintDevisMarche.Desig19.Height;
          PrintDevisMarche.Prix19.Height:=PrintDevisMarche.Desig19.Height;
          PrintDevisMarche.Montant19.Height:=PrintDevisMarche.Desig19.Height;
     Position:=PrintDevisMarche.Desig19.Top+PrintDevisMarche.Desig19.Height-1;
     end;
     if(Indice=20)then
     begin
          PrintDevisMarche.Desig20.Height:=PrintDevisMarche.Desig20.Lines.Capacity*20;
          PrintDevisMarche.Code20.Height:=PrintDevisMarche.Desig20.Height;
          PrintDevisMarche.Um20.Height:=PrintDevisMarche.Desig20.Height;
          PrintDevisMarche.Quantite20.Height:=PrintDevisMarche.Desig20.Height;
          PrintDevisMarche.Prix20.Height:=PrintDevisMarche.Desig20.Height;
          PrintDevisMarche.Montant20.Height:=PrintDevisMarche.Desig20.Height;
     Position:=PrintDevisMarche.Desig20.Top+PrintDevisMarche.Desig20.Height-1;
     end;
     if(Indice=21)then
     begin
          PrintDevisMarche.Desig21.Height:=PrintDevisMarche.Desig21.Lines.Capacity*20;
          PrintDevisMarche.Code21.Height:=PrintDevisMarche.Desig21.Height;
          PrintDevisMarche.Um21.Height:=PrintDevisMarche.Desig21.Height;
          PrintDevisMarche.Quantite21.Height:=PrintDevisMarche.Desig21.Height;
          PrintDevisMarche.Prix21.Height:=PrintDevisMarche.Desig21.Height;
          PrintDevisMarche.Montant21.Height:=PrintDevisMarche.Desig21.Height;
     Position:=PrintDevisMarche.Desig21.Top+PrintDevisMarche.Desig21.Height-1;
     end;
     if(Indice=22)then
     begin
          PrintDevisMarche.Desig22.Height:=PrintDevisMarche.Desig22.Lines.Capacity*20;
          PrintDevisMarche.Code22.Height:=PrintDevisMarche.Desig22.Height;
          PrintDevisMarche.Um22.Height:=PrintDevisMarche.Desig22.Height;
          PrintDevisMarche.Quantite22.Height:=PrintDevisMarche.Desig22.Height;
          PrintDevisMarche.Prix22.Height:=PrintDevisMarche.Desig22.Height;
          PrintDevisMarche.Montant22.Height:=PrintDevisMarche.Desig22.Height;
     Position:=PrintDevisMarche.Desig22.Top+PrintDevisMarche.Desig22.Height-1;
     end;
     if(Indice=23)then
     begin
          PrintDevisMarche.Desig23.Height:=PrintDevisMarche.Desig23.Lines.Capacity*20;
          PrintDevisMarche.Code23.Height:=PrintDevisMarche.Desig23.Height;
          PrintDevisMarche.Um23.Height:=PrintDevisMarche.Desig23.Height;
          PrintDevisMarche.Quantite23.Height:=PrintDevisMarche.Desig23.Height;
          PrintDevisMarche.Prix23.Height:=PrintDevisMarche.Desig23.Height;
          PrintDevisMarche.Montant23.Height:=PrintDevisMarche.Desig23.Height;
     Position:=PrintDevisMarche.Desig23.Top+PrintDevisMarche.Desig23.Height-1;
     end;
     if(Indice=24)then
     begin
          PrintDevisMarche.Desig24.Height:=PrintDevisMarche.Desig24.Lines.Capacity*20;
          PrintDevisMarche.Code24.Height:=PrintDevisMarche.Desig24.Height;
          PrintDevisMarche.Um24.Height:=PrintDevisMarche.Desig24.Height;
          PrintDevisMarche.Quantite24.Height:=PrintDevisMarche.Desig24.Height;
          PrintDevisMarche.Prix24.Height:=PrintDevisMarche.Desig24.Height;
          PrintDevisMarche.Montant24.Height:=PrintDevisMarche.Desig24.Height;
     Position:=PrintDevisMarche.Desig24.Top+PrintDevisMarche.Desig24.Height-1;
     end;
     if(Indice=25)then
     begin
          PrintDevisMarche.Desig25.Height:=PrintDevisMarche.Desig25.Lines.Capacity*20;
          PrintDevisMarche.Code25.Height:=PrintDevisMarche.Desig25.Height;
          PrintDevisMarche.Um25.Height:=PrintDevisMarche.Desig25.Height;
          PrintDevisMarche.Quantite25.Height:=PrintDevisMarche.Desig25.Height;
          PrintDevisMarche.Prix25.Height:=PrintDevisMarche.Desig25.Height;
          PrintDevisMarche.Montant25.Height:=PrintDevisMarche.Desig25.Height;
     Position:=PrintDevisMarche.Desig25.Top+PrintDevisMarche.Desig25.Height-1;
     end;
     if(Indice=26)then
     begin
          PrintDevisMarche.Desig26.Height:=PrintDevisMarche.Desig26.Lines.Capacity*20;
          PrintDevisMarche.Code26.Height:=PrintDevisMarche.Desig26.Height;
          PrintDevisMarche.Um26.Height:=PrintDevisMarche.Desig26.Height;
          PrintDevisMarche.Quantite26.Height:=PrintDevisMarche.Desig26.Height;
          PrintDevisMarche.Prix26.Height:=PrintDevisMarche.Desig26.Height;
          PrintDevisMarche.Montant26.Height:=PrintDevisMarche.Desig26.Height;
     Position:=PrintDevisMarche.Desig26.Top+PrintDevisMarche.Desig26.Height-1;
     end;
     if(Indice=27)then
     begin
          PrintDevisMarche.Desig27.Height:=PrintDevisMarche.Desig27.Lines.Capacity*20;
          PrintDevisMarche.Code27.Height:=PrintDevisMarche.Desig27.Height;
          PrintDevisMarche.Um27.Height:=PrintDevisMarche.Desig27.Height;
          PrintDevisMarche.Quantite27.Height:=PrintDevisMarche.Desig27.Height;
          PrintDevisMarche.Prix27.Height:=PrintDevisMarche.Desig27.Height;
          PrintDevisMarche.Montant27.Height:=PrintDevisMarche.Desig27.Height;
     Position:=PrintDevisMarche.Desig27.Top+PrintDevisMarche.Desig27.Height-1;
     end;
     if(Indice=28)then
     begin
          PrintDevisMarche.Desig28.Height:=PrintDevisMarche.Desig28.Lines.Capacity*20;
          PrintDevisMarche.Code28.Height:=PrintDevisMarche.Desig28.Height;
          PrintDevisMarche.Um28.Height:=PrintDevisMarche.Desig28.Height;
          PrintDevisMarche.Quantite28.Height:=PrintDevisMarche.Desig28.Height;
          PrintDevisMarche.Prix28.Height:=PrintDevisMarche.Desig28.Height;
          PrintDevisMarche.Montant28.Height:=PrintDevisMarche.Desig28.Height;
     Position:=PrintDevisMarche.Desig28.Top+PrintDevisMarche.Desig28.Height-1;
     end;
     if(Indice=29)then
     begin
          PrintDevisMarche.Desig29.Height:=PrintDevisMarche.Desig29.Lines.Capacity*20;
          PrintDevisMarche.Code29.Height:=PrintDevisMarche.Desig29.Height;
          PrintDevisMarche.Um29.Height:=PrintDevisMarche.Desig29.Height;
          PrintDevisMarche.Quantite29.Height:=PrintDevisMarche.Desig29.Height;
          PrintDevisMarche.Prix29.Height:=PrintDevisMarche.Desig29.Height;
          PrintDevisMarche.Montant29.Height:=PrintDevisMarche.Desig29.Height;
     Position:=PrintDevisMarche.Desig29.Top+PrintDevisMarche.Desig29.Height-1;
     end;
     if(Indice=30)then
     begin
          PrintDevisMarche.Desig30.Height:=PrintDevisMarche.Desig30.Lines.Capacity*20;
          PrintDevisMarche.Code30.Height:=PrintDevisMarche.Desig30.Height;
          PrintDevisMarche.Um30.Height:=PrintDevisMarche.Desig30.Height;
          PrintDevisMarche.Quantite30.Height:=PrintDevisMarche.Desig30.Height;
          PrintDevisMarche.Prix30.Height:=PrintDevisMarche.Desig30.Height;
          PrintDevisMarche.Montant30.Height:=PrintDevisMarche.Desig30.Height;
     Position:=PrintDevisMarche.Desig30.Top+PrintDevisMarche.Desig30.Height-1;
     end;
     if(Indice=31)then
     begin
          PrintDevisMarche.Desig31.Height:=PrintDevisMarche.Desig31.Lines.Capacity*20;
          PrintDevisMarche.Code31.Height:=PrintDevisMarche.Desig31.Height;
          PrintDevisMarche.Um31.Height:=PrintDevisMarche.Desig31.Height;
          PrintDevisMarche.Quantite31.Height:=PrintDevisMarche.Desig31.Height;
          PrintDevisMarche.Prix31.Height:=PrintDevisMarche.Desig31.Height;
          PrintDevisMarche.Montant31.Height:=PrintDevisMarche.Desig31.Height;
     Position:=PrintDevisMarche.Desig31.Top+PrintDevisMarche.Desig31.Height-1;
     end;
     if(Indice=32)then
     begin
          PrintDevisMarche.Desig32.Height:=PrintDevisMarche.Desig32.Lines.Capacity*20;
          PrintDevisMarche.Code32.Height:=PrintDevisMarche.Desig32.Height;
          PrintDevisMarche.Um32.Height:=PrintDevisMarche.Desig32.Height;
          PrintDevisMarche.Quantite32.Height:=PrintDevisMarche.Desig32.Height;
          PrintDevisMarche.Prix32.Height:=PrintDevisMarche.Desig32.Height;
          PrintDevisMarche.Montant32.Height:=PrintDevisMarche.Desig32.Height;
     Position:=PrintDevisMarche.Desig32.Top+PrintDevisMarche.Desig32.Height-1;
     end;
     if(Indice=33)then
     begin
          PrintDevisMarche.Desig33.Height:=PrintDevisMarche.Desig33.Lines.Capacity*20;
          PrintDevisMarche.Code33.Height:=PrintDevisMarche.Desig33.Height;
          PrintDevisMarche.Um33.Height:=PrintDevisMarche.Desig33.Height;
          PrintDevisMarche.Quantite33.Height:=PrintDevisMarche.Desig33.Height;
          PrintDevisMarche.Prix33.Height:=PrintDevisMarche.Desig33.Height;
          PrintDevisMarche.Montant33.Height:=PrintDevisMarche.Desig33.Height;
     Position:=PrintDevisMarche.Desig33.Top+PrintDevisMarche.Desig33.Height-1;
     end;
     if(Indice=34)then
     begin
          PrintDevisMarche.Desig34.Height:=PrintDevisMarche.Desig34.Lines.Capacity*20;
          PrintDevisMarche.Code34.Height:=PrintDevisMarche.Desig34.Height;
          PrintDevisMarche.Um34.Height:=PrintDevisMarche.Desig34.Height;
          PrintDevisMarche.Quantite34.Height:=PrintDevisMarche.Desig34.Height;
          PrintDevisMarche.Prix34.Height:=PrintDevisMarche.Desig34.Height;
          PrintDevisMarche.Montant34.Height:=PrintDevisMarche.Desig34.Height;
     Position:=PrintDevisMarche.Desig34.Top+PrintDevisMarche.Desig34.Height-1;
     end;
     if(Indice=35)then
     begin
          PrintDevisMarche.Desig35.Height:=PrintDevisMarche.Desig35.Lines.Capacity*20;
          PrintDevisMarche.Code35.Height:=PrintDevisMarche.Desig35.Height;
          PrintDevisMarche.Um35.Height:=PrintDevisMarche.Desig35.Height;
          PrintDevisMarche.Quantite35.Height:=PrintDevisMarche.Desig35.Height;
          PrintDevisMarche.Prix35.Height:=PrintDevisMarche.Desig35.Height;
          PrintDevisMarche.Montant35.Height:=PrintDevisMarche.Desig35.Height;
     Position:=PrintDevisMarche.Desig35.Top+PrintDevisMarche.Desig35.Height-1;
     end;
     if(Indice=36)then
     begin
          PrintDevisMarche.Desig36.Height:=PrintDevisMarche.Desig36.Lines.Capacity*20;
          PrintDevisMarche.Code36.Height:=PrintDevisMarche.Desig36.Height;
          PrintDevisMarche.Um36.Height:=PrintDevisMarche.Desig36.Height;
          PrintDevisMarche.Quantite36.Height:=PrintDevisMarche.Desig36.Height;
          PrintDevisMarche.Prix36.Height:=PrintDevisMarche.Desig36.Height;
          PrintDevisMarche.Montant36.Height:=PrintDevisMarche.Desig36.Height;
     Position:=PrintDevisMarche.Desig36.Top+PrintDevisMarche.Desig36.Height-1;
     end;
     if(Indice=37)then
     begin
          PrintDevisMarche.Desig37.Height:=PrintDevisMarche.Desig37.Lines.Capacity*20;
          PrintDevisMarche.Code37.Height:=PrintDevisMarche.Desig37.Height;
          PrintDevisMarche.Um37.Height:=PrintDevisMarche.Desig37.Height;
          PrintDevisMarche.Quantite37.Height:=PrintDevisMarche.Desig37.Height;
          PrintDevisMarche.Prix37.Height:=PrintDevisMarche.Desig37.Height;
          PrintDevisMarche.Montant37.Height:=PrintDevisMarche.Desig37.Height;
     Position:=PrintDevisMarche.Desig37.Top+PrintDevisMarche.Desig37.Height-1;
     end;
     if(Indice=38)then
     begin
          PrintDevisMarche.Desig38.Height:=PrintDevisMarche.Desig38.Lines.Capacity*20;
          PrintDevisMarche.Code38.Height:=PrintDevisMarche.Desig38.Height;
          PrintDevisMarche.Um38.Height:=PrintDevisMarche.Desig38.Height;
          PrintDevisMarche.Quantite38.Height:=PrintDevisMarche.Desig38.Height;
          PrintDevisMarche.Prix38.Height:=PrintDevisMarche.Desig38.Height;
          PrintDevisMarche.Montant38.Height:=PrintDevisMarche.Desig38.Height;
     Position:=PrintDevisMarche.Desig38.Top+PrintDevisMarche.Desig38.Height-1;
     end;
     if(Indice=39)then
     begin
          PrintDevisMarche.Desig39.Height:=PrintDevisMarche.Desig39.Lines.Capacity*20;
          PrintDevisMarche.Code39.Height:=PrintDevisMarche.Desig39.Height;
          PrintDevisMarche.Um39.Height:=PrintDevisMarche.Desig39.Height;
          PrintDevisMarche.Quantite39.Height:=PrintDevisMarche.Desig39.Height;
          PrintDevisMarche.Prix39.Height:=PrintDevisMarche.Desig39.Height;
          PrintDevisMarche.Montant39.Height:=PrintDevisMarche.Desig39.Height;
     Position:=PrintDevisMarche.Desig39.Top+PrintDevisMarche.Desig39.Height-1;
     end;
     if(Indice=40)then
     begin
          PrintDevisMarche.Desig40.Height:=PrintDevisMarche.Desig40.Lines.Capacity*20;
          PrintDevisMarche.Code40.Height:=PrintDevisMarche.Desig40.Height;
          PrintDevisMarche.Um40.Height:=PrintDevisMarche.Desig40.Height;
          PrintDevisMarche.Quantite40.Height:=PrintDevisMarche.Desig40.Height;
          PrintDevisMarche.Prix40.Height:=PrintDevisMarche.Desig40.Height;
          PrintDevisMarche.Montant40.Height:=PrintDevisMarche.Desig40.Height;
     Position:=PrintDevisMarche.Desig40.Top+PrintDevisMarche.Desig40.Height-1;
     end;
     if(Indice=41)then
     begin
          PrintDevisMarche.Desig41.Height:=PrintDevisMarche.Desig41.Lines.Capacity*20;
          PrintDevisMarche.Code41.Height:=PrintDevisMarche.Desig41.Height;
          PrintDevisMarche.Um41.Height:=PrintDevisMarche.Desig41.Height;
          PrintDevisMarche.Quantite41.Height:=PrintDevisMarche.Desig41.Height;
          PrintDevisMarche.Prix41.Height:=PrintDevisMarche.Desig41.Height;
          PrintDevisMarche.Montant41.Height:=PrintDevisMarche.Desig41.Height;
     Position:=PrintDevisMarche.Desig41.Top+PrintDevisMarche.Desig41.Height-1;
     end;
     if(Indice=42)then
     begin
          PrintDevisMarche.Desig42.Height:=PrintDevisMarche.Desig42.Lines.Capacity*20;
          PrintDevisMarche.Code42.Height:=PrintDevisMarche.Desig42.Height;
          PrintDevisMarche.Um42.Height:=PrintDevisMarche.Desig42.Height;
          PrintDevisMarche.Quantite42.Height:=PrintDevisMarche.Desig42.Height;
          PrintDevisMarche.Prix42.Height:=PrintDevisMarche.Desig42.Height;
          PrintDevisMarche.Montant42.Height:=PrintDevisMarche.Desig42.Height;
     Position:=PrintDevisMarche.Desig42.Top+PrintDevisMarche.Desig42.Height-1;
     end;
     if(Indice=43)then
     begin
          PrintDevisMarche.Desig43.Height:=PrintDevisMarche.Desig43.Lines.Capacity*20;
          PrintDevisMarche.Code43.Height:=PrintDevisMarche.Desig43.Height;
          PrintDevisMarche.Um43.Height:=PrintDevisMarche.Desig43.Height;
          PrintDevisMarche.Quantite43.Height:=PrintDevisMarche.Desig43.Height;
          PrintDevisMarche.Prix43.Height:=PrintDevisMarche.Desig43.Height;
          PrintDevisMarche.Montant43.Height:=PrintDevisMarche.Desig43.Height;
     Position:=PrintDevisMarche.Desig43.Top+PrintDevisMarche.Desig43.Height-1;
     end;
     if(Indice=44)then
     begin
          PrintDevisMarche.Desig44.Height:=PrintDevisMarche.Desig44.Lines.Capacity*20;
          PrintDevisMarche.Code44.Height:=PrintDevisMarche.Desig44.Height;
          PrintDevisMarche.Um44.Height:=PrintDevisMarche.Desig44.Height;
          PrintDevisMarche.Quantite44.Height:=PrintDevisMarche.Desig44.Height;
          PrintDevisMarche.Prix44.Height:=PrintDevisMarche.Desig44.Height;
          PrintDevisMarche.Montant44.Height:=PrintDevisMarche.Desig44.Height;
     Position:=PrintDevisMarche.Desig44.Top+PrintDevisMarche.Desig44.Height-1;
     end;
     if(Indice=45)then
     begin
          PrintDevisMarche.Desig45.Height:=PrintDevisMarche.Desig45.Lines.Capacity*20;
          PrintDevisMarche.Code45.Height:=PrintDevisMarche.Desig45.Height;
          PrintDevisMarche.Um45.Height:=PrintDevisMarche.Desig45.Height;
          PrintDevisMarche.Quantite45.Height:=PrintDevisMarche.Desig45.Height;
          PrintDevisMarche.Prix45.Height:=PrintDevisMarche.Desig45.Height;
          PrintDevisMarche.Montant45.Height:=PrintDevisMarche.Desig45.Height;
     Position:=PrintDevisMarche.Desig45.Top+PrintDevisMarche.Desig45.Height-1;
     end;
     if(Indice=46)then
     begin
          PrintDevisMarche.Desig46.Height:=PrintDevisMarche.Desig46.Lines.Capacity*20;
          PrintDevisMarche.Code46.Height:=PrintDevisMarche.Desig46.Height;
          PrintDevisMarche.Um46.Height:=PrintDevisMarche.Desig46.Height;
          PrintDevisMarche.Quantite46.Height:=PrintDevisMarche.Desig46.Height;
          PrintDevisMarche.Prix46.Height:=PrintDevisMarche.Desig46.Height;
          PrintDevisMarche.Montant46.Height:=PrintDevisMarche.Desig46.Height;
     Position:=PrintDevisMarche.Desig46.Top+PrintDevisMarche.Desig46.Height-1;
     end;
     if(Indice=47)then
     begin
          PrintDevisMarche.Desig47.Height:=PrintDevisMarche.Desig47.Lines.Capacity*20;
          PrintDevisMarche.Code47.Height:=PrintDevisMarche.Desig47.Height;
          PrintDevisMarche.Um47.Height:=PrintDevisMarche.Desig47.Height;
          PrintDevisMarche.Quantite47.Height:=PrintDevisMarche.Desig47.Height;
          PrintDevisMarche.Prix47.Height:=PrintDevisMarche.Desig47.Height;
          PrintDevisMarche.Montant47.Height:=PrintDevisMarche.Desig47.Height;
     Position:=PrintDevisMarche.Desig47.Top+PrintDevisMarche.Desig47.Height-1;
     end;
     if(Indice=48)then
     begin
          PrintDevisMarche.Desig48.Height:=PrintDevisMarche.Desig48.Lines.Capacity*20;
          PrintDevisMarche.Code48.Height:=PrintDevisMarche.Desig48.Height;
          PrintDevisMarche.Um48.Height:=PrintDevisMarche.Desig48.Height;
          PrintDevisMarche.Quantite48.Height:=PrintDevisMarche.Desig48.Height;
          PrintDevisMarche.Prix48.Height:=PrintDevisMarche.Desig48.Height;
          PrintDevisMarche.Montant48.Height:=PrintDevisMarche.Desig48.Height;
     Position:=PrintDevisMarche.Desig48.Top+PrintDevisMarche.Desig48.Height-1;
     end;
     if(Indice=49)then
     begin
          PrintDevisMarche.Desig49.Height:=PrintDevisMarche.Desig49.Lines.Capacity*20;
          PrintDevisMarche.Code49.Height:=PrintDevisMarche.Desig49.Height;
          PrintDevisMarche.Um49.Height:=PrintDevisMarche.Desig49.Height;
          PrintDevisMarche.Quantite49.Height:=PrintDevisMarche.Desig49.Height;
          PrintDevisMarche.Prix49.Height:=PrintDevisMarche.Desig49.Height;
          PrintDevisMarche.Montant49.Height:=PrintDevisMarche.Desig49.Height;
     Position:=PrintDevisMarche.Desig49.Top+PrintDevisMarche.Desig49.Height-1;
     end;
     if(Indice=50)then
     begin
          PrintDevisMarche.Desig50.Height:=PrintDevisMarche.Desig50.Lines.Capacity*20;
          PrintDevisMarche.Code50.Height:=PrintDevisMarche.Desig50.Height;
          PrintDevisMarche.Um50.Height:=PrintDevisMarche.Desig50.Height;
          PrintDevisMarche.Quantite50.Height:=PrintDevisMarche.Desig50.Height;
          PrintDevisMarche.Prix50.Height:=PrintDevisMarche.Desig50.Height;
          PrintDevisMarche.Montant50.Height:=PrintDevisMarche.Desig50.Height;
     Position:=PrintDevisMarche.Desig50.Top+PrintDevisMarche.Desig50.Height-1;
     end;
     {********************* SUITE *********************************************}
     PositionInt:=Position;
     for LigneR:=Indice+1 to 50 do
     begin
          if(LigneR=2)then
          begin
               PrintDevisMarche.Code2.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig2.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um2.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite2.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix2.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant2.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig2.Top+PrintDevisMarche.Desig2.Height-1;
          end;
          if(LigneR=3)then
          begin
               PrintDevisMarche.Code3.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig3.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um3.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite3.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix3.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant3.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig3.Top+PrintDevisMarche.Desig3.Height-1;
          end;
          if(LigneR=4)then
          begin
               PrintDevisMarche.Code4.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig4.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um4.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite4.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix4.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant4.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig4.Top+PrintDevisMarche.Desig4.Height-1;
          end;
          if(LigneR=5)then
          begin
               PrintDevisMarche.Code5.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig5.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um5.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite5.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix5.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant5.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig5.Top+PrintDevisMarche.Desig5.Height-1;
          end;
          if(LigneR=6)then
          begin
               PrintDevisMarche.Code6.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig6.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um6.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite6.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix6.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant6.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig6.Top+PrintDevisMarche.Desig6.Height-1;
          end;
          if(LigneR=7)then
          begin
               PrintDevisMarche.Code7.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig7.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um7.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite7.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix7.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant7.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig7.Top+PrintDevisMarche.Desig7.Height-1;
          end;
          if(LigneR=8)then
          begin
               PrintDevisMarche.Code8.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig8.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um8.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite8.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix8.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant8.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig8.Top+PrintDevisMarche.Desig8.Height-1;
          end;
          if(LigneR=9)then
          begin
               PrintDevisMarche.Code9.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig9.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um9.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite9.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix9.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant9.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig9.Top+PrintDevisMarche.Desig9.Height-1;
          end;
          if(LigneR=10)then
          begin
               PrintDevisMarche.Code10.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig10.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um10.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite10.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix10.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant10.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig10.Top+PrintDevisMarche.Desig10.Height-1;
          end;
          if(LigneR=11)then
          begin
               PrintDevisMarche.Code11.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig11.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um11.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite11.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix11.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant11.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig11.Top+PrintDevisMarche.Desig11.Height-1;
          end;
          if(LigneR=12)then
          begin
               PrintDevisMarche.Code12.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig12.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um12.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite12.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix12.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant12.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig12.Top+PrintDevisMarche.Desig12.Height-1;
          end;
          if(LigneR=13)then
          begin
               PrintDevisMarche.Code13.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig13.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um13.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite13.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix13.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant13.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig13.Top+PrintDevisMarche.Desig13.Height-1;
          end;
          if(LigneR=14)then
          begin
               PrintDevisMarche.Code14.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig14.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um14.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite14.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix14.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant14.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig14.Top+PrintDevisMarche.Desig14.Height-1;
          end;
          if(LigneR=15)then
          begin
               PrintDevisMarche.Code15.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig15.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um15.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite15.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix15.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant15.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig15.Top+PrintDevisMarche.Desig15.Height-1;
          end;
          if(LigneR=16)then
          begin
               PrintDevisMarche.Code16.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig16.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um16.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite16.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix16.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant16.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig16.Top+PrintDevisMarche.Desig16.Height-1;
          end;
          if(LigneR=17)then
          begin
               PrintDevisMarche.Code17.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig17.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um17.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite17.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix17.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant17.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig17.Top+PrintDevisMarche.Desig17.Height-1;
          end;
          if(LigneR=18)then
          begin
               PrintDevisMarche.Code18.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig18.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um18.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite18.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix18.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant18.Top:=MinInt
               (PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig18.Top+PrintDevisMarche.Desig18.Height-1;
          end;
          if(LigneR=19)then
          begin
               PrintDevisMarche.Code19.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig19.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um19.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite19.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix19.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant19.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig19.Top+PrintDevisMarche.Desig19.Height-1;
          end;
          if(LigneR=20)then
          begin
               PrintDevisMarche.Code20.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig20.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um20.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite20.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix20.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant20.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig20.Top+PrintDevisMarche.Desig20.Height-1;
          end;
          if(LigneR=21)then
          begin
               PrintDevisMarche.Code21.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig21.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um21.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite21.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix21.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant21.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig21.Top+PrintDevisMarche.Desig21.Height-1;
          end;
          if(LigneR=22)then
          begin
               PrintDevisMarche.Code22.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig22.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um22.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite22.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix22.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant22.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig22.Top+PrintDevisMarche.Desig22.Height-1;
          end;
          if(LigneR=23)then
          begin
               PrintDevisMarche.Code23.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig23.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um23.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite23.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix23.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant23.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig23.Top+PrintDevisMarche.Desig23.Height-1;
          end;
          if(LigneR=24)then
          begin
               PrintDevisMarche.Code24.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig24.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um24.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite24.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix24.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant24.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig24.Top+PrintDevisMarche.Desig24.Height-1;
          end;
          if(LigneR=25)then
          begin
               PrintDevisMarche.Code25.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig25.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um25.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite25.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix25.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant25.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig25.Top+PrintDevisMarche.Desig25.Height-1;
          end;
          if(LigneR=26)then
          begin
               PrintDevisMarche.Code26.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig26.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um26.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite26.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix26.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant26.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig26.Top+PrintDevisMarche.Desig26.Height-1;
          end;
          if(LigneR=27)then
          begin
               PrintDevisMarche.Code27.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig27.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um27.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite27.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix27.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant27.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig27.Top+PrintDevisMarche.Desig27.Height-1;
          end;
          if(LigneR=28)then
          begin
               PrintDevisMarche.Code28.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig28.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um28.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite28.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix28.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant28.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig28.Top+PrintDevisMarche.Desig28.Height-1;
          end;
          if(LigneR=29)then
          begin
               PrintDevisMarche.Code29.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig29.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um29.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite29.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix29.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant29.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig29.Top+PrintDevisMarche.Desig29.Height-1;
          end;
          if(LigneR=30)then
          begin
               PrintDevisMarche.Code30.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig30.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um30.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite30.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix30.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant30.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig30.Top+PrintDevisMarche.Desig30.Height-1;
          end;
          if(LigneR=31)then
          begin
               PrintDevisMarche.Code31.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig31.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um31.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite31.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix31.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant31.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig31.Top+PrintDevisMarche.Desig31.Height-1;
          end;
          if(LigneR=32)then
          begin
               PrintDevisMarche.Code32.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig32.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um32.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite32.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix32.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant32.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig32.Top+PrintDevisMarche.Desig32.Height-1;
          end;
          if(LigneR=33)then
          begin
               PrintDevisMarche.Code33.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig33.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um33.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite33.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix33.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant33.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig33.Top+PrintDevisMarche.Desig33.Height-1;
          end;
          if(LigneR=34)then
          begin
               PrintDevisMarche.Code34.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig34.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um34.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite34.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix34.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant34.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig34.Top+PrintDevisMarche.Desig34.Height-1;
          end;
          if(LigneR=35)then
          begin
               PrintDevisMarche.Code35.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig35.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um35.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite35.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix35.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant35.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig35.Top+PrintDevisMarche.Desig35.Height-1;
          end;
          if(LigneR=36)then
          begin
               PrintDevisMarche.Code36.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig36.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um36.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite36.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix36.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant36.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig36.Top+PrintDevisMarche.Desig36.Height-1;
          end;
          if(LigneR=37)then
          begin
               PrintDevisMarche.Code37.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig37.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um37.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite37.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix37.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant37.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig37.Top+PrintDevisMarche.Desig37.Height-1;
          end;
          if(LigneR=38)then
          begin
               PrintDevisMarche.Code38.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig38.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um38.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite38.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix38.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant38.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig38.Top+PrintDevisMarche.Desig38.Height-1;
          end;
          if(LigneR=39)then
          begin
               PrintDevisMarche.Code39.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig39.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um39.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite39.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix39.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant39.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig39.Top+PrintDevisMarche.Desig39.Height-1;
          end;
          if(LigneR=40)then
          begin
               PrintDevisMarche.Code40.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig40.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um40.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite40.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix40.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant40.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig40.Top+PrintDevisMarche.Desig40.Height-1;
          end;
          if(LigneR=41)then
          begin
               PrintDevisMarche.Code41.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig41.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um41.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite41.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix41.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant41.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig41.Top+PrintDevisMarche.Desig41.Height-1;
          end;
          if(LigneR=42)then
          begin
               PrintDevisMarche.Code42.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig42.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um42.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite42.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix42.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant42.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig42.Top+PrintDevisMarche.Desig42.Height-1;
          end;
          if(LigneR=43)then
          begin
               PrintDevisMarche.Code43.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig43.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um43.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite43.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix43.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant43.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig43.Top+PrintDevisMarche.Desig43.Height-1;
          end;
          if(LigneR=44)then
          begin
               PrintDevisMarche.Code44.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig44.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um44.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite44.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix44.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant44.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig44.Top+PrintDevisMarche.Desig44.Height-1;
          end;
          if(LigneR=45)then
          begin
               PrintDevisMarche.Code45.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig45.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um45.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite45.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix45.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant45.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig45.Top+PrintDevisMarche.Desig45.Height-1;
          end;
          if(LigneR=46)then
          begin
               PrintDevisMarche.Code46.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig46.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um46.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite46.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix46.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant46.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig46.Top+PrintDevisMarche.Desig46.Height-1;
          end;
          if(LigneR=47)then
          begin
               PrintDevisMarche.Code47.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig47.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um47.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite47.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix47.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant47.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig47.Top+PrintDevisMarche.Desig47.Height-1;
          end;
          if(LigneR=48)then
          begin
               PrintDevisMarche.Code48.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig48.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um48.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite48.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix48.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant48.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig48.Top+PrintDevisMarche.Desig48.Height-1;
          end;
          if(LigneR=49)then
          begin
               PrintDevisMarche.Code49.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig49.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um49.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite49.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix49.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant49.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig49.Top+PrintDevisMarche.Desig49.Height-1;
          end;
          if(LigneR=50)then
          begin
               PrintDevisMarche.Code50.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Desig50.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Um50.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Quantite50.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Prix50.Top:=MinInt(PositionInt,PositionMax);
               PrintDevisMarche.Montant50.Top:=MinInt(PositionInt,PositionMax);
          PositionInt:=PrintDevisMarche.Desig50.Top+PrintDevisMarche.Desig50.Height-1;
          end;
     end;
end;

Procedure ClearRecapitulationParStructure(Indice:integer; Visible:boolean);
begin
     if(Indice=1)then
     begin
          PrintRecapitulationParStructure.Designation1.Lines.Clear;   PrintRecapitulationParStructure.Designation1.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant1.Lines.Clear;       PrintRecapitulationParStructure.Montant1.Enabled:=Visible;
     end;
     if(Indice=2)then
     begin
          PrintRecapitulationParStructure.Designation2.Lines.Clear;   PrintRecapitulationParStructure.Designation2.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant2.Lines.Clear;       PrintRecapitulationParStructure.Montant2.Enabled:=Visible;
     end;
     if(Indice=3)then
     begin
          PrintRecapitulationParStructure.Designation3.Lines.Clear;   PrintRecapitulationParStructure.Designation3.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant3.Lines.Clear;       PrintRecapitulationParStructure.Montant3.Enabled:=Visible;
     end;
     if(Indice=4)then
     begin
          PrintRecapitulationParStructure.Designation4.Lines.Clear;   PrintRecapitulationParStructure.Designation4.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant4.Lines.Clear;   PrintRecapitulationParStructure.Montant4.Enabled:=Visible;
     end;
     if(Indice=5)then
     begin
          PrintRecapitulationParStructure.Designation5.Lines.Clear;   PrintRecapitulationParStructure.Designation5.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant5.Lines.Clear;   PrintRecapitulationParStructure.Montant5.Enabled:=Visible;
     end;
     if(Indice=6)then
     begin
          PrintRecapitulationParStructure.Designation6.Lines.Clear;   PrintRecapitulationParStructure.Designation6.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant6.Lines.Clear;   PrintRecapitulationParStructure.Montant6.Enabled:=Visible;
     end;
     if(Indice=7)then
     begin
          PrintRecapitulationParStructure.Designation7.Lines.Clear;   PrintRecapitulationParStructure.Designation7.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant7.Lines.Clear;   PrintRecapitulationParStructure.Montant7.Enabled:=Visible;
     end;
     if(Indice=8)then
     begin
          PrintRecapitulationParStructure.Designation8.Lines.Clear;   PrintRecapitulationParStructure.Designation8.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant8.Lines.Clear;   PrintRecapitulationParStructure.Montant8.Enabled:=Visible;
     end;
     if(Indice=9)then
     begin
          PrintRecapitulationParStructure.Designation9.Lines.Clear;   PrintRecapitulationParStructure.Designation9.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant9.Lines.Clear;   PrintRecapitulationParStructure.Montant9.Enabled:=Visible;
     end;
     if(Indice=10)then
     begin
          PrintRecapitulationParStructure.Designation10.Lines.Clear;   PrintRecapitulationParStructure.Designation10.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant10.Lines.Clear;   PrintRecapitulationParStructure.Montant10.Enabled:=Visible;
     end;
     if(Indice=11)then
     begin
          PrintRecapitulationParStructure.Designation11.Lines.Clear;   PrintRecapitulationParStructure.Designation11.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant11.Lines.Clear;   PrintRecapitulationParStructure.Montant11.Enabled:=Visible;
     end;
     if(Indice=12)then
     begin
          PrintRecapitulationParStructure.Designation12.Lines.Clear;   PrintRecapitulationParStructure.Designation12.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant12.Lines.Clear;   PrintRecapitulationParStructure.Montant12.Enabled:=Visible;
     end;
     if(Indice=13)then
     begin
          PrintRecapitulationParStructure.Designation13.Lines.Clear;   PrintRecapitulationParStructure.Designation13.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant13.Lines.Clear;   PrintRecapitulationParStructure.Montant13.Enabled:=Visible;
     end;
     if(Indice=14)then
     begin
          PrintRecapitulationParStructure.Designation14.Lines.Clear;   PrintRecapitulationParStructure.Designation14.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant14.Lines.Clear;   PrintRecapitulationParStructure.Montant14.Enabled:=Visible;
     end;
     if(Indice=15)then
     begin
          PrintRecapitulationParStructure.Designation15.Lines.Clear;   PrintRecapitulationParStructure.Designation15.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant15.Lines.Clear;   PrintRecapitulationParStructure.Montant15.Enabled:=Visible;
     end;
     if(Indice=16)then
     begin
          PrintRecapitulationParStructure.Designation16.Lines.Clear;   PrintRecapitulationParStructure.Designation16.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant16.Lines.Clear;   PrintRecapitulationParStructure.Montant16.Enabled:=Visible;
     end;
     if(Indice=17)then
     begin
          PrintRecapitulationParStructure.Designation17.Lines.Clear;   PrintRecapitulationParStructure.Designation17.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant17.Lines.Clear;   PrintRecapitulationParStructure.Montant17.Enabled:=Visible;
     end;
     if(Indice=18)then
     begin
          PrintRecapitulationParStructure.Designation18.Lines.Clear;   PrintRecapitulationParStructure.Designation18.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant18.Lines.Clear;   PrintRecapitulationParStructure.Montant18.Enabled:=Visible;
     end;
     if(Indice=19)then
     begin
          PrintRecapitulationParStructure.Designation19.Lines.Clear;   PrintRecapitulationParStructure.Designation19.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant19.Lines.Clear;   PrintRecapitulationParStructure.Montant19.Enabled:=Visible;
     end;
     if(Indice=20)then
     begin
          PrintRecapitulationParStructure.Designation20.Lines.Clear;   PrintRecapitulationParStructure.Designation20.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant20.Lines.Clear;   PrintRecapitulationParStructure.Montant20.Enabled:=Visible;
     end;
     if(Indice=21)then
     begin
          PrintRecapitulationParStructure.Designation21.Lines.Clear;   PrintRecapitulationParStructure.Designation21.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant21.Lines.Clear;   PrintRecapitulationParStructure.Montant21.Enabled:=Visible;
     end;
     if(Indice=22)then
     begin
          PrintRecapitulationParStructure.Designation22.Lines.Clear;   PrintRecapitulationParStructure.Designation22.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant22.Lines.Clear;   PrintRecapitulationParStructure.Montant22.Enabled:=Visible;
     end;
     if(Indice=23)then
     begin
          PrintRecapitulationParStructure.Designation23.Lines.Clear;   PrintRecapitulationParStructure.Designation23.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant23.Lines.Clear;   PrintRecapitulationParStructure.Montant23.Enabled:=Visible;
     end;
     if(Indice=24)then
     begin
          PrintRecapitulationParStructure.Designation24.Lines.Clear;   PrintRecapitulationParStructure.Designation24.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant24.Lines.Clear;   PrintRecapitulationParStructure.Montant24.Enabled:=Visible;
     end;
     if(Indice=25)then
     begin
          PrintRecapitulationParStructure.Designation25.Lines.Clear;   PrintRecapitulationParStructure.Designation25.Enabled:=Visible;
          PrintRecapitulationParStructure.Montant25.Lines.Clear;   PrintRecapitulationParStructure.Montant25.Enabled:=Visible;
     end;
end;

Procedure InitialisationRecapitulationParStructure(ARow,Indice:integer);
begin

if(FSDetailMarche.TableauRecapitulationParStructure.Cells[0,ARow]='')
then
begin
     PrintRecapitulationParStructure.TitreExemple.Font.Style:=[fsBold];
end
else
begin
     PrintRecapitulationParStructure.TitreExemple.Font.Style:=[];
end;

     if(Indice=1)then
     begin
          PrintRecapitulationParStructure.Designation1.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation1.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant1.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=2)then
     begin
          PrintRecapitulationParStructure.Designation2.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation2.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant2.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=3)then
     begin
          PrintRecapitulationParStructure.Designation3.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation3.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant3.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=4)then
     begin
          PrintRecapitulationParStructure.Designation4.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation4.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant4.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=5)then
     begin
          PrintRecapitulationParStructure.Designation5.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation5.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant5.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=6)then
     begin
          PrintRecapitulationParStructure.Designation6.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation6.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant6.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=7)then
     begin
          PrintRecapitulationParStructure.Designation7.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation7.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant7.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=8)then
     begin
          PrintRecapitulationParStructure.Designation8.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation8.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant8.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=9)then
     begin
          PrintRecapitulationParStructure.Designation9.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation9.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant9.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=10)then
     begin
          PrintRecapitulationParStructure.Designation10.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation10.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant10.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=11)then
     begin
          PrintRecapitulationParStructure.Designation11.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation11.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant11.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=12)then
     begin
          PrintRecapitulationParStructure.Designation12.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation12.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant12.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=13)then
     begin
          PrintRecapitulationParStructure.Designation13.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation13.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant13.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=14)then
     begin
          PrintRecapitulationParStructure.Designation14.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation14.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant14.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=15)then
     begin
          PrintRecapitulationParStructure.Designation15.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation15.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant15.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=16)then
     begin
          PrintRecapitulationParStructure.Designation16.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation16.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant16.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=17)then
     begin
          PrintRecapitulationParStructure.Designation17.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation17.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant17.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=18)then
     begin
          PrintRecapitulationParStructure.Designation18.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation18.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant18.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=19)then
     begin
          PrintRecapitulationParStructure.Designation19.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation19.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant19.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=20)then
     begin
          PrintRecapitulationParStructure.Designation20.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation20.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant20.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=21)then
     begin
          PrintRecapitulationParStructure.Designation21.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation21.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant21.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=22)then
     begin
          PrintRecapitulationParStructure.Designation22.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation22.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant22.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=23)then
     begin
          PrintRecapitulationParStructure.Designation23.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation23.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant23.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=24)then
     begin
          PrintRecapitulationParStructure.Designation24.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation24.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant24.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
     if(Indice=25)then
     begin
          PrintRecapitulationParStructure.Designation25.Alignment:=PrintRecapitulationParStructure.TitreExemple.Alignment;
          PrintRecapitulationParStructure.Designation25.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
          PrintRecapitulationParStructure.Montant25.Font.Style:=PrintRecapitulationParStructure.TitreExemple.Font.Style;
     end;
end;

Procedure TotalRecapitulationParStructure(Visible:boolean);
begin
     PrintRecapitulationParStructure.TitreMontantPayer.Enabled:=Visible;
     PrintRecapitulationParStructure.MontantPayer.Enabled:=Visible;
     PrintRecapitulationParStructure.MaitreOuvrage01.Enabled:=Visible;
     PrintRecapitulationParStructure.MaitreOuvrage02.Enabled:=Visible;
     PrintRecapitulationParStructure.MaitreOuvrage03.Enabled:=Visible;
     PrintRecapitulationParStructure.MaitreOuvrage04.Enabled:=Visible;
     PrintRecapitulationParStructure.MaitreOuvrage05.Enabled:=Visible;
     PrintRecapitulationParStructure.Entreprise01.Enabled:=Visible;
     PrintRecapitulationParStructure.Entreprise02.Enabled:=Visible;
     PrintRecapitulationParStructure.Entreprise03.Enabled:=Visible;

     if(Visible=true)then
     begin
          PrintRecapitulationParStructure.TitreMontantPayer.Top:=PrintRecapitulationParStructure.LigneFin.Top+56;
          PrintRecapitulationParStructure.MontantPayer.Top:=PrintRecapitulationParStructure.TitreMontantPayer.Top+25;
          PrintRecapitulationParStructure.MaitreOuvrage01.Top:=PrintRecapitulationParStructure.MontantPayer.Height+
                                                              PrintRecapitulationParStructure.MontantPayer.Top+23;
          PrintRecapitulationParStructure.MaitreOuvrage02.Top:=PrintRecapitulationParStructure.MaitreOuvrage01.Top+(16*1);
          PrintRecapitulationParStructure.MaitreOuvrage03.Top:=PrintRecapitulationParStructure.MaitreOuvrage01.Top+(16*2);
          PrintRecapitulationParStructure.MaitreOuvrage04.Top:=PrintRecapitulationParStructure.MaitreOuvrage01.Top+(16*8);
          PrintRecapitulationParStructure.MaitreOuvrage05.Top:=PrintRecapitulationParStructure.MaitreOuvrage01.Top+(16*9);

          PrintRecapitulationParStructure.Entreprise01.Top:=PrintRecapitulationParStructure.MaitreOuvrage01.Top;
          PrintRecapitulationParStructure.Entreprise02.Top:=PrintRecapitulationParStructure.Entreprise01.Top+(16*1);
          PrintRecapitulationParStructure.Entreprise03.Top:=PrintRecapitulationParStructure.Entreprise01.Top+(16*8);

          PrintRecapitulationParStructure.MontantPayer.Lines.Clear;
          PrintRecapitulationParStructure.MontantPayer.Lines.Text:=ChiffreEnLettre(VerguletoNum(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,FSDetailMarche.TableauRecapitulationParStructure.RowCount-1]));
          PrintRecapitulationParStructure.MontantPayer.Height:=PrintRecapitulationParStructure.MontantPayer.Lines.Capacity*20;
     end;
end;

procedure TFSDetailMarche.AffichePCNDetailMarcheClick(Sender: TObject);
begin
FSDetailMarche.AffichePCNDetailMarche.DefaultRowHeight:=18;
FSDetailMarche.EditDesignationArticleTesteListe.Lines.Text:=FSDetailMarche.AffichePCNDetailMarche.Cells[FSDetailMarche.AffichePCNDetailMarche.Col,FSDetailMarche.AffichePCNDetailMarche.Row];
if(FSDetailMarche.EditDesignationArticleTesteListe.Lines.Count>0)
then FSDetailMarche.AffichePCNDetailMarche.RowHeights[FSDetailMarche.AffichePCNDetailMarche.Row]:=FSDetailMarche.EditDesignationArticleTesteListe.Lines.Count*18;
end;

procedure TFSDetailMarche.AffichePCNDetailMarcheContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
var   R,k,l,m,n,ARow,ACol,SelecteCol,Result3,Reste3,Result6,Reste6,T,TInf:integer; Select,Selection,SelectionSup,SelectionInf:string[1];
      FirstCodeTrie,NAttachement:string;
      OK:boolean;
begin
ARow:=FSDetailMarche.AffichePCNDetailMarche.Row;
ACol:=FSDetailMarche.AffichePCNDetailMarche.Col;

FirstCodeTrie:=Completezerogauche(FSDetailMarche.EditNSMarche.Text,'5')+
               Completezerogauche(FSDetailMarche.EditNStructureMarche.Text,'5')+
               Completezerogauche(FSDetailMarche.EditNStatistiqueMarche.Text,'5');
NAttachement:='';

if(FSDetailMarche.AffichePCNDetailMarche.Cells[Acol,ARow]<>'')
then
begin
     Division(ACol,6,Result6,Reste6);
     Division(Reste6,3,Result3,Reste3);
     SelecteCol:=MinInt((Result6*6)+(Result3*3),6);

     if(FSDetailMarche.AffichePCNDetailMarche.Cells[SelecteCol,ARow]='')
     then
     begin
          Selection:='X';
          SelectionInf:='X';
          SelectionSup:='X';
          Select:='X';
     end
     else
     begin
          Selection:='';
          SelectionInf:='';
          SelectionSup:='';
          Select:='';
     end;

     if(not ExisteArticle('DetailMarche','',FSDetailMarche.AffichePCNDetailMarche.Cells[SelecteCol+1,ARow],FSDetailMarche.AffichePCNDetailMarche.Cells[SelecteCol+2,ARow],FirstCodeTrie,NAttachement))then
     FSDetailMarche.AffichePCNDetailMarche.Cells[SelecteCol,ARow]:=Select;

     l:=6;
     while(l>=0)do
     begin
     //////////////////////////////////////
          k:=l+3;
          while((k<=SelecteCol)and(SelectionInf=''))do
          begin
          case l of
          0:begin
                 m:=2;
            end;
          3:begin
                 m:=5;
            end;
          end;
               n:=1;
               while(n<=FSDetailMarche.AffichePCNDetailMarche.RowCount-1)and(SelectionInf='')do
               begin
                    if((Firstlaters(FSDetailMarche.AffichePCNDetailMarche.Cells[k+1,n],m)=Firstlaters(FSDetailMarche.AffichePCNDetailMarche.Cells[SelecteCol+1,ARow],m))
                    and(FSDetailMarche.AffichePCNDetailMarche.Cells[k,n]='X'))
                    then SelectionInf:='X';
               n:=n+1;
               end;
          k:=k+3;
          end;
     /////////////////////////////////////

     T:=2;
     case SelecteCol of
     0: begin
             if(l=0)then
             begin
                  T:=8;
                  Select:=Selection;
             end
             else
             if(l>0)then
             begin
                  T:=2;
                  Select:=SelectionSup;
             end;
        end;
     3: begin
             if(l=0)then
             begin
                  T:=2;
                  Select:=SelectionInf;
             end
             else
             if(l=3)then
             begin
                  T:=8;
                  Select:=Selection;
             end
             else
             if(l=6)then
             begin
                  T:=5;
                  Select:=SelectionSup;
             end;
        end;
     6: begin
             if(l=0)then
             begin
                  T:=2;
                  Select:=SelectionInf;
             end
             else
             if(l=3)then
             begin
                  T:=5;
                  Select:=SelectionInf;
             end
             else
             if(l=6)then
             begin
                  T:=11;
                  Select:=Selection;
             end;
        end;
     end;

          for R:=1 to FSDetailMarche.AffichePCNDetailMarche.RowCount-1 do
          begin
               if((not ExisteArticle('DetailMarche','',FSDetailMarche.AffichePCNDetailMarche.Cells[l+1,R],FSDetailMarche.AffichePCNDetailMarche.Cells[l+2,R],FirstCodeTrie,NAttachement))
               and(Firstlaters(FSDetailMarche.AffichePCNDetailMarche.Cells[l+1,R],T)=
                   Firstlaters(FSDetailMarche.AffichePCNDetailMarche.Cells[SelecteCol+1,ARow],T)))
               then
               FSDetailMarche.AffichePCNDetailMarche.Cells[l,R]:=Select;
          end;
     l:=l-3;
     end;
end;
end;

procedure TFSDetailMarche.AffichePCNDetailMarcheDblClick(Sender: TObject);
var CodeF,CodeSF:string; CodeFamille:string[8]; CodeSousFamille:string[8]; CodeArticle:string[8];
    i,R,l,ARow,ACol,TSF,TP:integer; OKProduitFamille:boolean;
begin
ARow:=FSDetailMarche.AffichePCNDetailMarche.Row;
ACol:=FSDetailMarche.AffichePCNDetailMarche.Col;

if((ACol in[0,1,2,3,4,5])
and(FSDetailMarche.AffichePCNDetailMarche.Cells[ACol,ARow]<>''))
then
begin
if(ACol in[0,1,2])then
begin
     CodeFamille:='72'+Firstlaters(FSDetailMarche.AffichePCNDetailMarche.Cells[1,ARow],2)+'0';
     CodeSousFamille:='';
     TSF:=4;
     TP:=6;
end
else
if(ACol in[3,4,5])then
begin
     CodeFamille:='72'+Firstlaters(FSDetailMarche.AffichePCNDetailMarche.Cells[4,ARow],2)+'0';
     CodeSousFamille:='72'+FSDetailMarche.AffichePCNDetailMarche.Cells[4,ARow][1]+
                           FSDetailMarche.AffichePCNDetailMarche.Cells[4,ARow][2]+
                           FSDetailMarche.AffichePCNDetailMarche.Cells[4,ARow][4]+
                           FSDetailMarche.AffichePCNDetailMarche.Cells[4,ARow][5];
     TSF:=4;
     TP:=6;
end;

{********** FAMILLE **********}
TypeProces:='Business'; FichierConcerne:='FFamilleMarche';
if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
begin
     //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
end;
ChFamille:=Adresse;
assignfile(FFamille,ChFamille);
if FileExists(ChFamille)then
Reset(FFamille)
else Rewrite(FFamille);
Seek(FFamille,0);
i:=0;
while not eof(FFamille)do
begin
     Read(FFamille,RFamille);
     l:=i;
     if(Firstlaters(RFamille.CodeCompte,2)='72')
     then
     begin
          i:=i+1;
          FSDetailMarche.AffichePCNDetailMarche.Rows[i].Text:='';
          FSDetailMarche.AffichePCNDetailMarche.Cells[1,i]:=RFamille.CodeCompte[3]+RFamille.CodeCompte[4]+'.00.00';
          FSDetailMarche.AffichePCNDetailMarche.Cells[2,i]:=RFamille.Designation;
          FSDetailMarche.AffichePCNDetailMarche.Cells[9,i]:=RFamille.ContrePartie.TypeUses;
          FSDetailMarche.AffichePCNDetailMarche.Cells[10,i]:=RFamille.Specificite;
          FSDetailMarche.AffichePCNDetailMarche.Cells[12,i]:=completezerogauche(FSDetailMarche.EditNSMarche.Text,'5')+
                                                             completezerogauche(FSDetailMarche.EditNStructureMarche.Text,'5')+
                                                             completezerogauche(FSDetailMarche.EditNStatistiqueMarche.Text,'5')+
                                                             completezerogauche(FSDetailMarche.AffichePCNDetailMarche.Cells[1,i],'8')+'.00';
          {********** SOUS FAMILLE **********}
          if(RFamille.CodeCompte=CodeFamille)
          then
          begin
               TypeProces:='Business'; FichierConcerne:='FSousFamilleMarche';
               if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
               begin
                    //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
               end;
               ChSousFamille:=Adresse;
               assignfile(FSousFamille,ChSousFamille);
               if FileExists(ChSousFamille)
               then Reset(FSousFamille)else Rewrite(FSousFamille);
               Seek(FSousFamille,0);
               while not eof(FSousFamille)do
               begin
                    Read(FSousFamille,RSousFamille);
                    if(Firstlaters(RSousFamille.CodeCompte,TSF)=Firstlaters(RFamille.CodeCompte,TSF))
                    then
                    begin
                         i:=i+1;
                         FSDetailMarche.AffichePCNDetailMarche.Rows[i].Text:='';
                         FSDetailMarche.AffichePCNDetailMarche.Cells[4,i]:=RSousFamille.CodeCompte[3]+
                                                                       RSousFamille.CodeCompte[4]+'.'+
                                                                       RSousFamille.CodeCompte[5]+
                                                                       RSousFamille.CodeCompte[6]+'.00';
                         FSDetailMarche.AffichePCNDetailMarche.Cells[5,i]:=RSousFamille.Designation;
                         FSDetailMarche.AffichePCNDetailMarche.Cells[9,i]:=RSousFamille.ContrePartie.TypeUses;
                         FSDetailMarche.AffichePCNDetailMarche.Cells[10,i]:=RSousFamille.Specificite;
                         FSDetailMarche.AffichePCNDetailMarche.Cells[12,i]:=completezerogauche(FSDetailMarche.EditNSMarche.Text,'5')+
                                                                        completezerogauche(FSDetailMarche.EditNStructureMarche.Text,'5')+
                                                                        completezerogauche(FSDetailMarche.EditNStatistiqueMarche.Text,'5')+
                                                                        completezerogauche(FSDetailMarche.AffichePCNDetailMarche.Cells[4,i],'8')+'.00';
                         {********** ARTICLE **********}
                         if(ACol in[0,1,2])then CodeSousFamille:=RSousFamille.CodeCompte;
                         if(RSousFamille.CodeCompte=CodeSousFamille)
                         then
                         begin
                              TypeProces:='Business'; FichierConcerne:='FStockMarche';
                              if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                              begin
                                   //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
                              end;
                              ChStock:=Adresse;
                              assignfile(FStock,ChStock);
                              if FileExists(ChStock)then
                              Reset(FStock)
                              else Rewrite(FStock);
                              Seek(FStock,0);
                              while not eof(FStock)do
                              begin
                                   read(FStock,RStock);
                                   if(FirstLaters(RStock.Code,TP)=FirstLaters(RSousFamille.CodeCompte,TP))
                                   then
                                   begin
                                        i:=i+1;
                                        FSDetailMarche.AffichePCNDetailMarche.Rows[i].Text:='';
                                        FSDetailMarche.AffichePCNDetailMarche.Cells[7,i]:=RStock.Code[3]+
                                                                                      RStock.Code[4]+'.'+
                                                                                      RStock.Code[5]+
                                                                                      RStock.Code[6]+'.'+
                                                                                      RStock.Code[7]+
                                                                                      RStock.Code[8]+'.'+
                                                                                      RStock.Code[9]+
                                                                                      RStock.Code[10];
                                        FSDetailMarche.AffichePCNDetailMarche.Cells[8,i]:=RStock.Design;
                                        FSDetailMarche.AffichePCNDetailMarche.Cells[9,i]:=RStock.UM;
                                        if(RStock.PrixVenteDetaille<>0)
                                        then FSDetailMarche.AffichePCNDetailMarche.Cells[10,i]:=Floattostr(RStock.PrixVenteDetaille)
                                        else FSDetailMarche.AffichePCNDetailMarche.Cells[10,i]:=Floattostr(RStock.PrixVenteGros);
                                        FSDetailMarche.AffichePCNDetailMarche.Cells[11,i]:=RStock.Code;
                                        FSDetailMarche.AffichePCNDetailMarche.Cells[12,i]:=completezerogauche(FSDetailMarche.EditNSMarche.Text,'5')+
                                                                                           completezerogauche(FSDetailMarche.EditNStructureMarche.Text,'5')+
                                                                                           completezerogauche(FSDetailMarche.EditNStatistiqueMarche.Text,'5')+
                                                                                           Completezerogauche((RStock.Code[3]+
                                                                                                               RStock.Code[4]+'.'+
                                                                                                               RStock.Code[5]+
                                                                                                               RStock.Code[6]+'.'+
                                                                                                               RStock.Code[7]+
                                                                                                               RStock.Code[8]+'.'+
                                                                                                               RStock.Code[9]+
                                                                                                               RStock.Code[10]),'11');
                                   end;
                              end;
                              CloseFile(FStock);
                         end;
                         {********** FIN ARTICLE **********}
                    end;
               end;
               CloseFile(FSousFamille);
          end;
          {********** FIN SOUS FAMILLE **********}

                         {********** ARTICLE GENERE DE LA FAMILLE **********}
                         if(ACol in[0,1,2])
                         and(RFamille.CodeCompte=CodeFamille)
                         then
                         begin
                              TypeProces:='Business'; FichierConcerne:='FStockMarche';
                              if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
                              begin
                                   //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
                              end;
                              ChStock:=Adresse;
                              assignfile(FStock,ChStock);
                              if FileExists(ChStock)then
                              Reset(FStock)
                              else Rewrite(FStock);
                              Seek(FStock,0);
                              while not eof(FStock)do
                              begin
                                   read(FStock,RStock);
                                   R:=1;
                                   OKProduitFamille:=false;
                                   if(FirstLaters(RStock.Code,5)=FirstLaters(RFamille.CodeCompte,5))then
                                   begin
                                        while(R<i)and(OKProduitFamille=false)do
                                        begin
                                             if(FSDetailMarche.AffichePCNDetailMarche.Cells[4,R]<>'')then
                                             begin
                                                  if(FSDetailMarche.AffichePCNDetailMarche.Cells[4,R]=RStock.Code[3]+
                                                                                                      RStock.Code[4]+'.'+
                                                                                                      RStock.Code[5]+
                                                                                                      RStock.Code[6]+'.00')
                                                  then OKProduitFamille:=true;
                                             end;
                                        R:=R+1;
                                        end;
                                   end
                                   else OKProduitFamille:=true;

                                   if(OKProduitFamille=false)then
                                   begin
                                        i:=i+1;
                                        FSDetailMarche.AffichePCNDetailMarche.Rows[i].Text:='';
                                        FSDetailMarche.AffichePCNDetailMarche.Cells[7,i]:=RStock.Code[3]+
                                                                                          RStock.Code[4]+'.'+
                                                                                          RStock.Code[5]+
                                                                                          RStock.Code[6]+'.'+
                                                                                          RStock.Code[7]+
                                                                                          RStock.Code[8]+'.'+
                                                                                          RStock.Code[9]+
                                                                                          RStock.Code[10];
                                        FSDetailMarche.AffichePCNDetailMarche.Cells[8,i]:=RStock.Design;
                                        FSDetailMarche.AffichePCNDetailMarche.Cells[9,i]:=RStock.UM;
                                        if(RStock.PrixVenteDetaille<>0)
                                        then FSDetailMarche.AffichePCNDetailMarche.Cells[10,i]:=Floattostr(RStock.PrixVenteDetaille)
                                        else FSDetailMarche.AffichePCNDetailMarche.Cells[10,i]:=Floattostr(RStock.PrixVenteGros);
                                        FSDetailMarche.AffichePCNDetailMarche.Cells[11,i]:=RStock.Code;
                                        FSDetailMarche.AffichePCNDetailMarche.Cells[12,i]:=completezerogauche(FSDetailMarche.EditNSMarche.Text,'5')+
                                                                                           completezerogauche(FSDetailMarche.EditNStructureMarche.Text,'5')+
                                                                                           completezerogauche(FSDetailMarche.EditNStatistiqueMarche.Text,'5')+
                                                                                           Completezerogauche((RStock.Code[3]+
                                                                                                               RStock.Code[4]+'.'+
                                                                                                               RStock.Code[5]+
                                                                                                               RStock.Code[6]+'.'+
                                                                                                               RStock.Code[7]+
                                                                                                               RStock.Code[8]+'.'+
                                                                                                               RStock.Code[9]+
                                                                                                               RStock.Code[10]),'11');
                                   end;
                              end;
                              CloseFile(FStock);
                         end;
                         {********** FIN ARTICLE GENERE DE LA FAMILLE **********}
     end;
end;
CloseFile(FFamille);
{********** FIN FAMILLE **********}

if(i>0)then FSDetailMarche.AffichePCNDetailMarche.RowCount:=i+1
       else
       begin
            FSDetailMarche.AffichePCNDetailMarche.RowCount:=2;
            FSDetailMarche.AffichePCNDetailMarche.Rows[1].Text:='';
       end;
end;
end;

procedure TFSDetailMarche.AffichePCNDetailMarcheKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  l,R,RowMax,NSMarche,NStructureMarche,NStatistiqueMarche:integer;
begin
if not AccesPrivilegies('FS Marche',FSMenuPrincipal.EditCodeUtilisateur.Text,'MM',true)then exit;

if key in[VK_RETURN]then
begin
     if((FSDetailMarche.TableauDetailMarche.RowCount=2)
     and(FSDetailMarche.TableauDetailMarche.Cells[3,1]=''))
     then RowMax:=0
     else RowMax:=FSDetailMarche.TableauDetailMarche.RowCount-1;

     l:=0;
     while(l<=6)do
     begin
          for R:=1 to FSDetailMarche.AffichePCNDetailMarche.RowCount-1 do
          begin
               if(FSDetailMarche.AffichePCNDetailMarche.Cells[l,R]='X')then
               begin
               RowMax:=RowMax+1;
               FSDetailMarche.TableauDetailMarche.Rows[RowMax].Text:='';
               FSDetailMarche.TableauDetailMarche.Cells[1,RowMax]:='';
               if(longueur(FSDetailMarche.AffichePCNDetailMarche.Cells[l+1,R])=8)then
               FSDetailMarche.TableauDetailMarche.Cells[2,RowMax]:=FSDetailMarche.AffichePCNDetailMarche.Cells[l+1,R];//Code Article
               FSDetailMarche.TableauDetailMarche.Cells[3,RowMax]:=FSDetailMarche.AffichePCNDetailMarche.Cells[l+2,R];//Designation
               FSDetailMarche.TableauDetailMarche.Cells[5,RowMax]:='';//Quantité
               FSDetailMarche.TableauDetailMarche.Cells[7,RowMax]:=FSDetailMarche.AffichePCNDetailMarche.Cells[12,R];//Trie
               FSDetailMarche.TableauDetailMarche.Cells[8,RowMax]:=FSDetailMarche.AffichePCNDetailMarche.Cells[11,R];//CodeProdiut
               FSDetailMarche.TableauDetailMarche.Cells[4,RowMax]:=FSDetailMarche.AffichePCNDetailMarche.Cells[9,R];//UM
               if((FSDetailMarche.AffichePCNDetailMarche.Cells[9,R]<>'')
               or(strtointeger(FSDetailMarche.AffichePCNDetailMarche.Cells[10,R])<>0))
               then FSDetailMarche.TableauDetailMarche.Cells[6,RowMax]:=FSDetailMarche.AffichePCNDetailMarche.Cells[10,R]//PrixU
               else FSDetailMarche.TableauDetailMarche.Cells[6,RowMax]:='';//PrixU

               if(l=6)then
               begin
                    if(longueur(FSDetailMarche.AffichePCNDetailMarche.Cells[l+1,R])=11)then
                    if(Lastlaters(FSDetailMarche.AffichePCNDetailMarche.Cells[l+1,R],2)='00')
                    then FSDetailMarche.TableauDetailMarche.Cells[2,RowMax]:=Firstlaters(FSDetailMarche.AffichePCNDetailMarche.Cells[l+1,R],8)//Code Article
                    else FSDetailMarche.TableauDetailMarche.Cells[2,RowMax]:='';
               end;

               end;
          end;
     l:=l+3;
     end;
if(RowMax>0)then FSDetailMarche.TableauDetailMarche.RowCount:=RowMax+1
            else
            begin
                 FSDetailMarche.TableauDetailMarche.RowCount:=2;
                 FSDetailMarche.TableauDetailMarche.Rows[1].Text:='';
            end;

NSMarche:=strtointeger(FSDetailMarche.EditNSMarche.Text);
NStructureMarche:=strtointeger(FSDetailMarche.IndiceAfficheStructure.Text)*strtointeger(FSDetailMarche.EditNStructureMarche.Text);
NStatistiqueMarche:=strtointeger(FSDetailMarche.EditNStatistiqueMarche.Text)*strtointeger(FSDetailMarche.IndiceAfficheStatistique.Text);
ProcAfficheDetailMarche(FSDetailMarche.TableauDetailMarche,TableauNotNumArticle,'Charger','','',NSMarche,NStructureMarche,NStatistiqueMarche);

FSDetailMarche.TableauDetailMarche.SetFocus;
FSDetailMarche.AffichePCNDetailMarche.Visible:=false;
end;
end;

procedure TFSDetailMarche.AffichePCNDetailMarcheKeyPress(Sender: TObject;
  var Key: Char);
begin
key:=#0;
end;

Function ExisteArticle(Fichier,Operation,CodeArticle,DesignationArticle,FirstCodeTrie,NAttachement:string):boolean;
var OK,OKRow:boolean;  LigneR:integer;
begin
ExisteArticle:=false;

if(Fichier='Attachement')then
begin
     OKRow:=false;
     OK:=false;
     LigneR:=1;
     while(LigneR<=FSAttachements.TableauDetailAttachement.RowCount-1)and(OK=false)do
     begin
          if(Operation='Modifier')
          then
          begin
              if(LigneR=FSAttachements.TableauDetailAttachement.Row)
              then OKRow:=true
              else OK:=false;
          end;

          if((OKRow=false)
          and(FirstLaters(FSAttachements.TableauDetailAttachement.Cells[7,LigneR],Longueur(FirstCodeTrie))=FirstCodeTrie))
          then
          begin
          OK:=true;
                    ExisteArticle:=true;
               {if(FSAttachements.TableauDetailAttachement.Cells[3,LigneR]=DesignationArticle)
               then
               begin
                    OK:=true;
                    ExisteArticle:=true;
               end;}

               if((FSAttachements.TableauDetailAttachement.Cells[2,LigneR]<>'')
               and(FSAttachements.TableauDetailAttachement.Cells[2,LigneR]=CodeArticle))
               then
               begin
                    OK:=true;
                    ExisteArticle:=true;
               end;
          end;
     LigneR:=LigneR+1;
     end;
end; // FIN ATTACHEMENT.

if(Fichier='DetailMarche')then
begin
     LigneR:=1;
     OK:=false;
     while(LigneR<=FSDetailMarche.TableauDetailMarche.RowCount-1)and(OK=false)do
     begin
          if((FirstLaters(FSDetailMarche.TableauDetailMarche.Cells[7,LigneR],15)=FirstCodeTrie))
          then
          begin
               if(FSDetailMarche.TableauDetailMarche.Cells[3,LigneR]=DesignationArticle)
               then
               begin
                    OK:=true;
                    ExisteArticle:=true;
               end;

               if((FSDetailMarche.TableauDetailMarche.Cells[2,LigneR]<>'')
               and(FSDetailMarche.TableauDetailMarche.Cells[2,LigneR]=CodeArticle))
               then
               begin
                    OK:=true;
                    ExisteArticle:=true;
               end;
          end;
     LigneR:=LigneR+1;
     end;
end; // FIN DETAIL MARCHE.

end;

procedure TFSDetailMarche.BitBtn5Click(Sender: TObject);
begin
     InitialeAfficheDetailMarche;
     TableauToExcel(FSDetailMarche.TableauDetailMarche,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,'Détail du Marché',FSDetailMarche.EditMarche.Text,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

procedure TFSDetailMarche.BitBtn4Click(Sender: TObject);
begin
     if(FSDetailMarche.EditNSMarche.Text='')then
     begin
          affichermessage('Information manquantes !');
          FSDetailMarche.EditNSMarche.SetFocus
     end
     else
     begin
          InitialeAfficheDetailMarche;
          FSImporteDetailMarcheExcel.Show;
          RemplireFirstLigneDetailMarche(FSImporteDetailMarcheExcel.TableauDetailMarche);
          ListeStructureStatistique(FSImporteDetailMarcheExcel.TableauSelectionStructure,strtointeger(FSDetailMarche.EditNSMarche.Text));
     end;
end;

Procedure RemplireFirstLigneDetailMarche(TableauDetailMarche:TStringGrid);
begin
     TableauDetailMarche.ColCount:=9;
     TableauDetailMarche.Cols[0].Text:='N°Ord';
     TableauDetailMarche.Cols[1].Text:='N°DétailMarcher';
     TableauDetailMarche.Cols[2].Text:='C.Article';
     TableauDetailMarche.Cols[3].Text:='Désignation Article';
     TableauDetailMarche.Cols[4].Text:='Unité M.';
     TableauDetailMarche.Cols[5].Text:='Quantité';
     TableauDetailMarche.Cols[6].Text:='Prix Unit.';
     TableauDetailMarche.Cols[7].Text:='Code Trie';
     TableauDetailMarche.Cols[8].Text:='Produit';
     TableauDetailMarche.RowCount:=2;
     TableauDetailMarche.Rows[1].Text:='';

     AjusterColWidth(TableauDetailMarche,'','');
end;

procedure TFSDetailMarche.BitBtn6Click(Sender: TObject);
begin

     TableauToExcel(FSDetailMarche.TableauDetailleParClasse,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,FSDetailMarche.EditTitreParClasse.Text,FSDetailMarche.EditMarche.Text,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

Procedure ListeStructureStatistique(TableauSelection:TStringGrid;  NSMarche:integer);
var  R,NStructureMarche:integer;   OKMarche:boolean;
begin
     TableauSelection.ColCount:=9;
     TableauSelection.Cols[0].Text:='Num';
     TableauSelection.Cols[1].Text:='N°';
     TableauSelection.Cols[2].Text:='Marche';
     TableauSelection.Cols[3].Text:='N°';
     TableauSelection.Cols[4].Text:='Structure';
     TableauSelection.Cols[5].Text:='N°';
     TableauSelection.Cols[6].Text:='Statistique';
     TableauSelection.Cols[7].Text:='Codification';
     TableauSelection.Cols[8].Text:='Row Select';

     TableauSelection.RowCount:=2;
     TableauSelection.Rows[1].Text:='';

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
     OKMarche:=false;
     while not eof(FMarche)and(OKMarche=false)do
     begin
          Read(FMarche,RMarche);
          if(RMarche.NSMarche=NSMarche)then
          begin
               OKMarche:=true;
          end;
     end;
     CloseFile(FMarche);

     if(OKMarche=true)then
     begin
           TypeProces:='Business'; FichierConcerne:='FStatistiqueMarche';
           if not(FunctionAdresseProces(TypeProces,FichierConcerne,'',Adresse,TypeProcesReseaux,NomDossierPartageReseauxOut))then
           begin
                //if(<>'')then AfficherMessage('Veuillez indiquer l''adresse du Proces qui génére le fichier recherché !'+' {'+FichierConcerne+'}');
           end;
           ChStatistiqueMarche:=Adresse;
           assignfile(FStatistiqueMarche,ChStatistiqueMarche);
           if FileExists(ChStatistiqueMarche)then
           Reset(FStatistiqueMarche)
           else Rewrite(FStatistiqueMarche);
           Seek(FStatistiqueMarche,0);
           R:=0;
           while not eof(FStatistiqueMarche)do
           begin
                Read(FStatistiqueMarche,RStatistiqueMarche);
                if(RStatistiqueMarche.NSMarche=NSMarche)then
                begin
                      NStructureMarche:=strtointeger(RStatistiqueMarche.NStructureMarche);
                      R:=R+1;
                      TableauSelection.Rows[R].Text:=inttostr(R);
                      TableauSelection.Cells[1,R]:=inttostr(NSMarche);
                      TableauSelection.Cells[2,R]:=ChercherMarche(NSMarche).Marche;
                      TableauSelection.Cells[3,R]:=inttostr(NStructureMarche);
                      TableauSelection.Cells[4,R]:=ChercherStructureMarche(NSMarche,NStructureMarche).StructureMarche;
                      TableauSelection.Cells[5,R]:=inttostr(RStatistiqueMarche.NStatistiqueMarche);
                      TableauSelection.Cells[6,R]:=RStatistiqueMarche.StatistiqueMarche;
                      TableauSelection.Cells[7,R]:=CompleteZeroGauche(inttostr(NSMarche),'5')+CompleteZeroGauche(inttostr(NStructureMarche),'5')+CompleteZeroGauche(inttostr(RStatistiqueMarche.NStatistiqueMarche),'5');
                      TableauSelection.Cells[8,R]:='1';
                end;
           end;
           CloseFile(FStatistiqueMarche);
     end;

     if(R>0)then  TableauSelection.RowCount:=R+1
            else  TableauSelection.RowCount:=2;

      AjusterColWidth(TableauSelection,'','');
end;

Function ControleCodeArticleMarche(CodeArticleMarche:string; LongueurCodeArticleMarche:integer):boolean;
var   iC:integer; OKCode:boolean;
begin
      OKCode:=true;
      if(CodeArticleMarche<>'')and(CodeArticleMarche<>' ')then
      begin
           if(Longueur(CodeArticleMarche)=LongueurCodeArticleMarche)then
           begin
                for iC:=1 to LongueurCodeArticleMarche do
                if(not(CodeArticleMarche[iC]in['0'..'9','.']))then OKCode:=false;
           end
           else OKCode:=false;
      end
      else OKCode:=false;

      ControleCodeArticleMarche:=OKCode;
end;

procedure TFSDetailMarche.BitBtn7Click(Sender: TObject);
var   R,C:integer;
begin
     for R:=1 to FSDetailMarche.TableauDetailMarche.RowCount-1 do
     begin
          for C:=1 to FSDetailMarche.TableauDetailMarche.ColCount-1 do
          begin
               if ControleOKTexteVide(FSDetailMarche.TableauDetailMarche.Cells[C,R])then FSDetailMarche.TableauDetailMarche.Cells[C,R]:='';
          end;

          FSDetailMarche.TableauDetailMarche.Cells[8,R]:=NewArticle('72',Lastlaters(FSDetailMarche.TableauDetailMarche.Cells[7,R],11),Lastlaters(FSDetailMarche.TableauDetailMarche.Cells[7,R],11),FSDetailMarche.TableauDetailMarche.Cells[3,R],FSDetailMarche.TableauDetailMarche.Cells[4,R],FSDetailMarche.TableauDetailMarche.Cells[6,R],FSDetailMarche.TableauDetailMarche.Cells[8,R]);
     end;
end;

procedure TFSDetailMarche.TableauSelectionClick(Sender: TObject);
var  R:integer;
begin
     if(FSDetailMarche.TableauSelection.Cells[0,0]='Mch')then
     begin
           for R:=1 to FSDetailMarche.TableauSelection.RowCount-1 do
           begin
                if(R=FSDetailMarche.TableauSelection.Row)then
                begin
                     FSMarche.EditMarcheControle.Lines.Text:=FSDetailMarche.TableauSelection.Cells[4,R];
                     FSDetailMarche.TableauSelection.RowHeights[R]:=FSMarche.EditMarcheControle.Lines.Capacity*20;
                end
                else FSDetailMarche.TableauSelection.RowHeights[R]:=20;
           end;
     end;
end;

procedure TFSDetailMarche.TableauSelectionKeyPress(Sender: TObject;
  var Key: Char);
begin
     key:=#0;
end;

procedure TFSDetailMarche.IncrimentEditMaxColWidthClick(Sender: TObject;
  Button: TUDBtnType);
var C:integer;  NotRow,NotCol:string;
begin
     NotRow:='';
     NotCol:='1;7;8';
     for C:=1 to FSDetailMarche.TableauDetailMarche.ColCount-1 do if(existenumintexte(inttostr(C),NotCol))then FSDetailMarche.TableauDetailMarche.ColWidths[C]:=0;
     AjusterColWidth(FSDetailMarche.TableauDetailMarche,NotRow,NotCol);

     for C:=1 to FSDetailMarche.TableauDetailMarche.ColCount-1 do
     begin
            if(FSDetailMarche.TableauDetailMarche.ColWidths[C]>strtointeger(FSDetailMarche.EditMaxColWidth.Text))then FSDetailMarche.TableauDetailMarche.ColWidths[C]:=strtointeger(FSDetailMarche.EditMaxColWidth.Text);
     end;
end;

procedure TFSDetailMarche.BitBtn8Click(Sender: TObject);
var  R:integer;  TitreEtat,SousTitreEtat,TypeEtat:string;   Tableau:TStringGrid;
begin
     TypeEtat:='';
     if(FSDetailMarche.LabelTypeDevis.Caption='DEQ.')then begin TypeEtat:=''; Tableau:=FSDetailMarche.TableauDevisQE; end;
     if(FSDetailMarche.LabelTypeDevis.Caption='DQR.')then begin TypeEtat:=' reste à réaliser'; Tableau:=FSDetailMarche.TableauDevisRestant; end;

     TitreEtat:='Devis quantitatif et estimatifs'+TypeEtat;
     SousTitreEtat:='Projet: '+FSDetailMarche.EditMarche.Text;
     TableauToExcel(Tableau,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

procedure TFSDetailMarche.BitBtn9Click(Sender: TObject);
var  R:integer;  TitreEtat,SousTitreEtat,TypeEtat:string;  Tableau:TStringGrid;
begin
     TypeEtat:='';
     if(FSDetailMarche.LabelTypeDevis.Caption='DEQ.')then begin TypeEtat:='';end;
     if(FSDetailMarche.LabelTypeDevis.Caption='DQR.')then begin TypeEtat:=' reste à réaliser';end;

     Tableau:=FSDetailMarche.TableauRecapitulationParStructure;

     TitreEtat:='Récapitulatif Devis'+TypeEtat;
     SousTitreEtat:='Projet: '+FSDetailMarche.EditMarche.Text;
     TableauToExcel(Tableau,1,0,ColNum,ColDate,ColTexte,ColGauche,ColCentre,ColDroite,TitreEtat,SousTitreEtat,'',true,FSMenuPrincipal.RBInsertLogo.Checked,FSMenuPrincipal.RBAfficherLaSaisie.Checked);
end;

procedure TFSDetailMarche.AfficheOperationDetailMarcheEnter(
  Sender: TObject);
begin
     if(FSDetailMarche.EditNumMarcheReference.Text<>'')
     then FSDetailMarche.RBMarcheReference.Checked:=true
     else FSDetailMarche.RBMarcheReference.Checked:=false;
end;

procedure TFSDetailMarche.EditCodeArticleKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var NSMarche,NStructureMarche,NStatistiqueMarche:integer;
begin
     if( FSDetailMarche.AfficheDesignationArticles.Visible=false)
     then
     begin
          FSDetailMarche.AfficheDesignationArticles.Visible:=true;
          FSDetailMarche.TableauDesignationArticles.Cols[1].Text:='Désignation Article';
          FSDetailMarche.TableauDesignationArticles.Cols[2].Text:='Unité M.';
          FSDetailMarche.TableauDesignationArticles.Cols[3].Text:='Prix U.';
          FSDetailMarche.TableauDesignationArticles.Cols[4].Text:='Trie';
          FSDetailMarche.TableauDesignationArticles.Cols[5].Text:='I/E';
          FSDetailMarche.TableauDesignationArticles.Cols[6].Text:='Produit';
     end;

     if(FSDetailMarche.RBMarcheReference.Checked=true)then
     begin
          NSMarche:=strtointeger(FSDetailMarche.EditNumMarcheReference.Text);
          NStructureMarche:=strtointeger(FSDetailMarche.EditNStructureMarche.Text)*strtointeger(FSDetailMarche.IndiceAfficheStructure.Text);
          NStatistiqueMarche:=strtointeger(FSDetailMarche.EditNStructureMarche.Text)*strtointeger(FSDetailMarche.IndiceAfficheStatistique.Text);

          ProcAfficheDetailMarche(FSDetailMarche.TableauDesignationArticles,FSDetailMarche.TableauDetailMarche,'Importer',FSDetailMarche.EditCodeArticle.Text,'',NSMarche,NStructureMarche,NStatistiqueMarche);
          TrierArticleDetailMarche(7);
     end;
end;


procedure TFSDetailMarche.BitBtn10Click(Sender: TObject);
var   i,R,l,M,C,NSMarche,NStructureMarche,NStatistiqueMarche,NAvenant,ARow,T,ColTrie,ColMMarche,ColMRealise,ColMRestant:integer; Mode,CodeStructureSituation,NotCol:string;
      Montant,TVA:real; OKClasse,OKCharge,OK,ParStructure,ParStatistique,OKData:boolean; E:char;
begin
FSDetailMarche.AfficheRecapitulationParStructure.Visible:=true;
FSDetailMarche.RBSuspendePrint.Checked:=false;
NSMarche:=strtointeger(FSDetailMarche.EditNSMarche.Text);
NStructureMarche:=strtointeger(FSDetailMarche.IndiceAfficheStructure.Text)*strtointeger(FSDetailMarche.EditNStructureMarche.Text);
NStatistiqueMarche:=strtointeger(FSDetailMarche.EditNStatistiqueMarche.Text)*strtointeger(FSDetailMarche.IndiceAfficheStatistique.Text);
ParStructure:=True;
ParStatistique:=True;
ProcAfficheStructureStatistique(FSDetailMarche.TableauRecapitulationParStructure,NSMarche,ParStructure,ParStatistique);

if(FSDetailMarche.LabelTypeDevis.Caption='DEQ.')then
begin

if(FSDetailMarche.RBOptionsDevisQEGlobal.Checked=true)then
begin
     Mode:='Importer';
     FSDetailMarche.EditNStructureMarche.Text:='0';
     FSDetailMarche.IndiceAfficheStatistique.Text:='0';
end;

if(FSDetailMarche.RBOptionsDevisQEDetailAffiche.Checked=true)then
begin
     Mode:='Charger';

end;

FSDetailMarche.TableauDevisQE.Visible:=true;
FSDetailMarche.TableauDevisQE.Cols[1].Text:='N°';
FSDetailMarche.TableauDevisQE.Cols[2].Text:='C.Article';
FSDetailMarche.TableauDevisQE.Cols[3].Text:='         Désignation';
FSDetailMarche.TableauDevisQE.Cols[4].Text:='U.M.';
FSDetailMarche.TableauDevisQE.Cols[5].Text:='Qte.Marché';
FSDetailMarche.TableauDevisQE.Cols[6].Text:='Prix U.';
FSDetailMarche.TableauDevisQE.Cols[7].Text:='Trie';
FSDetailMarche.TableauDevisQE.Cols[8].Text:='C.Produit';
FSDetailMarche.TableauDevisQE.Cols[9].Text:='M.Marché';
ProcAfficheDevisQE(Mode,NSMarche,NStructureMarche,NStatistiqueMarche,NAvenant,FSDetailMarche.RBCumuleArticle.Checked);

{************************* STATISTIQUES ****************************}
for ARow:=1 to FSDetailMarche.TableauDevisQE.RowCount-1 do
begin
     if(Longueur(FSDetailMarche.TableauDevisQE.Cells[7,ARow])>15)
     then
     begin
          if(FSDetailMarche.TableauDevisQE.Cells[7,ARow][16]='Z')
          then
          begin
               R:=1;
               while(R<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
               begin
                    if(FSDetailMarche.TableauRecapitulationParStructure.Cells[0,R]=Firstlaters(FSDetailMarche.TableauDevisQE.Cells[7,ARow],5))then
                    begin
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[8,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[9,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[10,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[12,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                    end
                    else
                    if(FSDetailMarche.TableauRecapitulationParStructure.Cells[0,R]=Firstlaters(FSDetailMarche.TableauDevisQE.Cells[7,ARow],10))then
                    begin
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R])+strtoreal(FSDetailMarche.TableauDevisQE.Cells[8,ARow]));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R])+strtoreal(FSDetailMarche.TableauDevisQE.Cells[9,ARow]));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R])+strtoreal(FSDetailMarche.TableauDevisQE.Cells[10,ARow]));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R])+strtoreal(FSDetailMarche.TableauDevisQE.Cells[12,ARow]));
                    end
                    else
                    if(FSDetailMarche.TableauRecapitulationParStructure.Cells[0,R]=Firstlaters(FSDetailMarche.TableauDevisQE.Cells[7,ARow],15))then
                    begin
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[8,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[9,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[10,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R])+(strtoreal(FSDetailMarche.TableauDevisQE.Cells[12,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                    end;

               R:=R+1;
               end;
          end;
     end;
end;

R:=1;
while(R<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
begin
     if(FSDetailMarche.TableauRecapitulationParStructure.Cells[8,R]<>'')then
     begin
          l:=R;
          while(l<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
          begin
               if(FSDetailMarche.TableauRecapitulationParStructure.Cells[8,R]=FSDetailMarche.TableauRecapitulationParStructure.Cells[0,l])then
               begin
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[3,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[4,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[5,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[6,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[7,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[7,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[7,R]));
               end;
          l:=l+1;
          end;
     end;
R:=R+1;
end;
R:=1;
while(R<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
begin
     FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[7,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[7,R],'2','C','');
R:=R+1;
end;
FSDetailMarche.TableauRecapitulationParStructure.Cells[4,0]:='Montant';
NotCol:='0;1;3;5-8';
for C:=0 to FSDetailMarche.TableauRecapitulationParStructure.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSDetailMarche.TableauRecapitulationParStructure.ColWidths[C]:=0;
AjusterColWidth(FSDetailMarche.TableauRecapitulationParStructure,'',NotCol);
end;

if(FSDetailMarche.LabelTypeDevis.Caption='DQR.')then
begin

if(FSDetailMarche.RBOptionsDevisQEGlobal.Checked=true)then
begin
     Mode:='Importer';
     FSDetailMarche.EditNStructureMarche.Text:='0';
     FSDetailMarche.IndiceAfficheStatistique.Text:='0';
     ColTrie:=24;
     ColMMarche:=17;
     ColMRealise:=20;
     ColMRestant:=23;
end;

if(FSDetailMarche.RBOptionsDevisQEDetailAffiche.Checked=true)then
begin
     Mode:='Charger';
     ColTrie:=12;
     ColMMarche:=9;
     ColMRealise:=10;
     ColMRestant:=11;
end;

FSDetailMarche.TableauDevisRestant.Visible:=true;
FSDetailMarche.TableauDevisRestant.RowCount:=2;
FSDetailMarche.TableauDevisRestant.Rows[1].Text:='';

FSDetailMarche.TableauDevisRestant.Cols[1].Text:='N°';
FSDetailMarche.TableauDevisRestant.Cols[2].Text:='C.Article';
FSDetailMarche.TableauDevisRestant.Cols[3].Text:='         Désignation';
FSDetailMarche.TableauDevisRestant.Cols[4].Text:='U.M.';
FSDetailMarche.TableauDevisRestant.Cols[5].Text:='Qte.Marché';
FSDetailMarche.TableauDevisRestant.Cols[6].Text:='Qte.Réalisée';
FSDetailMarche.TableauDevisRestant.Cols[7].Text:='Qte.Restantes';
FSDetailMarche.TableauDevisRestant.Cols[8].Text:='Prix U.';
FSDetailMarche.TableauDevisRestant.Cols[9].Text:='M.Marché';
FSDetailMarche.TableauDevisRestant.Cols[10].Text:='M.Réalisé';
FSDetailMarche.TableauDevisRestant.Cols[11].Text:='M.Restant';
FSDetailMarche.TableauDevisRestant.Cols[12].Text:='Trie';
FSDetailMarche.TableauDevisRestant.Cols[13].Text:='C.Produit';
ProcAfficheTravauxRestantMarcheAvenant(Mode,NSMarche,NStructureMarche,NStatistiqueMarche,NAvenant);

{************************* STATISTIQUES ****************************}
for ARow:=1 to FSDetailMarche.TableauDevisRestant.RowCount-1 do
begin
     if(Longueur(FSDetailMarche.TableauDevisRestant.Cells[ColTrie,ARow])>15)
     then
     begin
          if(FSDetailMarche.TableauDevisRestant.Cells[ColTrie,ARow][16]='Z')
          then
          begin
               R:=1;
               while(R<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
               begin
                    if(FSDetailMarche.TableauRecapitulationParStructure.Cells[0,R]=Firstlaters(FSDetailMarche.TableauDevisRestant.Cells[ColTrie,ARow],5))then
                    begin
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[ColMRestant,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[ColMRestant,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[ColMRealise,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[ColMMarche,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                    end
                    else
                    if(FSDetailMarche.TableauRecapitulationParStructure.Cells[0,R]=Firstlaters(FSDetailMarche.TableauDevisRestant.Cells[ColTrie,ARow],10))then
                    begin
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R])+strtoreal(FSDetailMarche.TableauDevisRestant.Cells[ColMRestant,ARow]));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R])+strtoreal(FSDetailMarche.TableauDevisRestant.Cells[ColMRestant,ARow]));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R])+strtoreal(FSDetailMarche.TableauDevisRestant.Cells[ColMRealise,ARow]));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R])+strtoreal(FSDetailMarche.TableauDevisRestant.Cells[ColMMarche,ARow]));
                    end
                    else
                    if(FSDetailMarche.TableauRecapitulationParStructure.Cells[0,R]=Firstlaters(FSDetailMarche.TableauDevisRestant.Cells[ColTrie,ARow],15))then
                    begin
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[ColMRestant,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[ColMRestant,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[ColMRealise,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                         FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R])+(strtoreal(FSDetailMarche.TableauDevisRestant.Cells[ColMMarche,ARow])*strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[1,R])/100));
                    end;

               R:=R+1;
               end;
          end;
     end;
end;

R:=1;
while(R<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
begin
     if(FSDetailMarche.TableauRecapitulationParStructure.Cells[8,R]<>'')then
     begin
          l:=R;
          while(l<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
          begin
               if(FSDetailMarche.TableauRecapitulationParStructure.Cells[8,R]=FSDetailMarche.TableauRecapitulationParStructure.Cells[0,l])then
               begin
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[3,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[4,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[5,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[6,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]));
                    FSDetailMarche.TableauRecapitulationParStructure.Cells[7,l]:=floattostr(strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[7,l])+strtoreal(FSDetailMarche.TableauRecapitulationParStructure.Cells[7,R]));
               end;
          l:=l+1;
          end;
     end;
R:=R+1;
end;
R:=1;
while(R<=FSDetailMarche.TableauRecapitulationParStructure.RowCount-1)do
begin
     FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[3,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[4,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[5,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[6,R],'2','C','');
     FSDetailMarche.TableauRecapitulationParStructure.Cells[7,R]:=vergule(FSDetailMarche.TableauRecapitulationParStructure.Cells[7,R],'2','C','');
R:=R+1;
end;
FSDetailMarche.TableauRecapitulationParStructure.Cells[4,0]:='Montant Restant';
FSDetailMarche.TableauRecapitulationParStructure.Cells[5,0]:='Montant Réalisé';
FSDetailMarche.TableauRecapitulationParStructure.Cells[6,0]:='Montant Marché';

NotCol:='0;1;3;7-8';
for C:=0 to FSDetailMarche.TableauRecapitulationParStructure.ColCount-1 do if ExisteNumInTexte(inttostr(C),NotCol)then FSDetailMarche.TableauRecapitulationParStructure.ColWidths[C]:=0;
AjusterColWidth(FSDetailMarche.TableauRecapitulationParStructure,'',NotCol);

////////////////////////////////////////////////////////////////////////////////
if(FSDetailMarche.RBCumuleArticle.Checked=true)then
begin
     if(FSDetailMarche.TableauDevisRestant.Visible=true)then
     begin
          FSDetailMarche.TableauDevisRestantCumule.Left:=FSDetailMarche.TableauDevisRestant.Left;
          FSDetailMarche.TableauDevisRestantCumule.Top:=FSDetailMarche.TableauDevisRestant.Top;
          FSDetailMarche.TableauDevisRestantCumule.Visible:=true;
          FSDetailMarche.TableauDevisRestantCumule.RowCount:=2;
          FSDetailMarche.TableauDevisRestantCumule.Rows[1].Text:='';

          FSDetailMarche.TableauDevisRestantCumule.ColCount:=FSDetailMarche.TableauDevisRestant.ColCount+2;
          FSDetailMarche.TableauDevisRestantCumule.Rows[0].Text:=FSDetailMarche.TableauDevisRestant.Rows[0].Text;

          M:=0;
          R:=1;
          while(R<=FSDetailMarche.TableauDevisRestant.RowCount-1)do
          begin
               l:=1;
               OKData:=false;
               while(l<=M)and(OKData=false)do
               begin
                    if(DTrie('K',FSDetailMarche.TableauDevisRestantCumule.Cells[24,l])=DTrie('K',FSDetailMarche.TableauDevisRestant.Cells[24,R]))
                    then
                    begin
                         OKData:=true;
                         for C:=1 to FSDetailMarche.TableauDevisRestantCumule.ColCount-1 do
                         begin
                              if(C in[5,6,7,8,9,10,11,12,13,15,16,17,18,19,20,21,22,23,26,27,28])
                              then FSDetailMarche.TableauDevisRestantCumule.Cells[C,L]:=floattostr(strtoreal(FSDetailMarche.TableauDevisRestantCumule.Cells[C,L])+strtoreal(FSDetailMarche.TableauDevisRestant.Cells[C,R]));
                         end;
                    end;
               l:=l+1;
               end;

               if(OKData=false)then
               begin
                    M:=M+1;
                    FSDetailMarche.TableauDevisRestantCumule.Rows[M].Text:=FSDetailMarche.TableauDevisRestant.Rows[R].Text;
                    FSDetailMarche.TableauDevisRestantCumule.Cells[0,M]:=inttostr(M);
               end;
          R:=R+1;
          end;

          for l:=1 to M do
          begin
               for C:=1 to FSDetailMarche.TableauDevisRestant.ColCount-1 do
               begin
                    if(C in[5,6,7,8,9,10,11,12,13,15,16,17,18,19,20,21,22,23])
                    then FSDetailMarche.TableauDevisRestantCumule.Cells[C,l]:=Vergule(FSDetailMarche.TableauDevisRestantCumule.Cells[C,l],'2','C','');

                    if(strtoreal(FSDetailMarche.TableauDevisRestantCumule.Cells[5,l])+strtoreal(FSDetailMarche.TableauDevisRestantCumule.Cells[6,l])<>0)
                    then FSDetailMarche.TableauDevisRestantCumule.Cells[26,l]:=Vergule(floattostr(strtoreal(FSDetailMarche.TableauDevisRestantCumule.Cells[10,l])/(strtoreal(FSDetailMarche.TableauDevisRestantCumule.Cells[5,l])+strtoreal(FSDetailMarche.TableauDevisRestantCumule.Cells[6,l]))),'2','C','%')
                    else FSDetailMarche.TableauDevisRestantCumule.Cells[26,l]:='';

                    if(strtoreal(FSDetailMarche.TableauDevisRestantCumule.Cells[20,l])<>0)and(RMarcheCopie.MontantMarche<>0)
                    then FSDetailMarche.TableauDevisRestantCumule.Cells[27,l]:=Vergule(floattostr(strtoreal(FSDetailMarche.TableauDevisRestantCumule.Cells[20,l])/(RMarcheCopie.MontantMarche)),'2','C','%')
                    else FSDetailMarche.TableauDevisRestantCumule.Cells[27,l]:='';
               end;
          end;

          for R:=1 to M do
          begin
               for C:=1 to FSDetailMarche.TableauDevisRestantCumule.ColCount-1 do
               begin
                    if(C in[5,6,7,8,9,10,11,12,13,15,16,17,18,19,20,21,22,23,26,27,28])
                    then
                    if(strtoreal(FSDetailMarche.TableauDevisRestantCumule.Cells[C,R])=0)then FSDetailMarche.TableauDevisRestantCumule.Cells[C,R]:='';
               end;
          end;

          if(M>0)then FSDetailMarche.TableauDevisRestantCumule.RowCount:=M+1
                 else FSDetailMarche.TableauDevisRestantCumule.RowCount:=2;

          FSDetailMarche.TableauDevisRestantCumule.ColWidths[3]:=300;
          FSDetailMarche.TableauDevisRestantCumule.ColWidths[24]:=0;
          FSDetailMarche.TableauDevisRestantCumule.ColWidths[25]:=0;
          AjusterColWidth(FSDetailMarche.TableauDevisRestantCumule,'','3;24;25');
     end;
end;
////////////////////////////////////////////////////////////////////////////////
end;


FSDetailMarche.TableauRecapitulationParStructure.SetFocus;
FSDetailMarche.AfficheChoixLots.Visible:=false;
FSDetailMarche.AfficheOptionsDevisQE.Visible:=false;
end;

procedure TFSDetailMarche.AfficheOptionPrintDetailMarcheClick(
  Sender: TObject);
begin
     if(FSDetailMarche.AfficheOptionPrintDetailMarche.Height=25)
     then FSDetailMarche.AfficheOptionPrintDetailMarche.Height:=223
     else FSDetailMarche.AfficheOptionPrintDetailMarche.Height:=25;
end;

procedure TFSDetailMarche.BitBtn11Click(Sender: TObject);
var  R,C,L:integer;  TitreEtat,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol:string;  ImprimeTableau:boolean;
begin
     FSDetailMarche.AfficheOptionPrintDetailMarche.Height:=25;
     
     TitreEtat:='DEVIS QUANTITATIF ET ESTIMATIF (R.A.R)';

     GrasARow:='0';
     GrasACol:='0';
     CenterARow:='0';
     CenterACol:='0;4';
     RightARow:='';
     RightACol:='5-23;26';

     if(FSDetailMarche.TableauDevisRestantCumule.Visible=true)then
     begin
          C:=0;
          for l:=1 to FSDetailMarche.TableauDevisRestantCumule.ColCount-1 do if(FSDetailMarche.TableauDevisRestantCumule.ColWidths[l]>10)then C:=C+1;
          if(C>22)then FSDetailMarche.RBOrientationPapierDetailMarche.Text:='Paysage';
          OptionsImpression(FSDetailMarche.TableauDevisRestantCumule,'Center',R,1,TitreEtat,FSDetailMarche.RBAjustementDetailMarche.Checked,FSDetailMarche.RBOrientationPapierDetailMarche.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
     end
     else
     if(FSDetailMarche.TableauDevisRestant.Visible=true)then
     begin
          C:=0;
          for l:=1 to FSDetailMarche.TableauDevisRestant.ColCount-1 do if(FSDetailMarche.TableauDevisRestant.ColWidths[l]>10)then C:=C+1;
          if(C>22)then FSDetailMarche.RBOrientationPapierDetailMarche.Text:='Paysage';
          OptionsImpression(FSDetailMarche.TableauDevisRestant,'Center',R,1,TitreEtat,FSDetailMarche.RBAjustementDetailMarche.Checked,FSDetailMarche.RBOrientationPapierDetailMarche.Text,GrasARow,GrasACol,CenterARow,CenterACol,RightARow,RightACol,true,1,FSMenuPrincipal.ImageCodebarre,true,R);
     end;
end;

procedure TFSDetailMarche.TableauDevisRestantDblClick(Sender: TObject);
begin
     FSDetailMarche.TableauDevisRestant.ColWidths[FSDetailMarche.TableauDevisRestant.Col]:=0;
end;

procedure TFSDetailMarche.TableauDevisRestantContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
     FSDetailMarche.TableauDevisRestant.ColWidths[3]:=300;
     FSDetailMarche.TableauDevisRestant.ColWidths[24]:=0;
     FSDetailMarche.TableauDevisRestant.ColWidths[25]:=0;
     AjusterColWidth(FSDetailMarche.TableauDevisRestant,'','3;24;25');
end;

procedure TFSDetailMarche.TableauDevisRestantCumuleDblClick(
  Sender: TObject);
begin
     FSDetailMarche.TableauDevisRestantCumule.ColWidths[FSDetailMarche.TableauDevisRestantCumule.Col]:=0;
end;

procedure TFSDetailMarche.TableauDevisRestantCumuleContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
     FSDetailMarche.TableauDevisRestantCumule.ColWidths[3]:=300;
     FSDetailMarche.TableauDevisRestantCumule.ColWidths[24]:=0;
     FSDetailMarche.TableauDevisRestantCumule.ColWidths[25]:=0;
     AjusterColWidth(FSDetailMarche.TableauDevisRestantCumule,'','3;24;25');
end;

Function RechercheDetailMarche(NSMarche,T:integer; E:char; CodeArticleMarche:string; var UniTeMesure:string):string;
var  i:integer;  OKArticleDM:boolean;
begin
     RechercheDetailMarche:='';
     UniTeMesure:='';

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
     OKArticleDM:=false;
     while not eof(FDetailMarche)and(OKArticleDM=false)do
     begin
          Read(FDetailMarche,RDetailMarche);
                
          if(MidelLaters(RDetailMarche.NArticle,4,8)='00.00')then
          begin
               if(Completezerodroite('72'+Firstlaters(DTrie('P',RDetailMarche.CodeTrie),T),E)=CodeArticleMarche)then
               begin
                    OKArticleDM:=true;
                    RechercheDetailMarche:=RDetailMarche.DesignationArticle;
                    UniTeMesure:=RDetailMarche.UniteM;
               end;
          end;
     end;
     CloseFile(FDetailMarche);
end;

procedure TFSDetailMarche.RBSuspendePrintClick(Sender: TObject);
begin
     PrintDevisRestant.Preview;
end;

end.

